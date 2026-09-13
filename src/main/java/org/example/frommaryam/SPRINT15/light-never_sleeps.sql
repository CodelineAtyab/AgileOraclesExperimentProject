-- function
-- check if enough time passed for this signal to change state
create or replace function is_signal_due_to_change (p_signal_id number) return boolean
as
  v_state       varchar2(10);
  v_last_change timestamp;
  v_seconds     number;
  v_needed      number;
  v_answer      boolean;
begin
  -- get the current state and when it last changed
select state, last_changed_at
into   v_state, v_last_change
from   traffic_signals
where  signal_id = p_signal_id;

-- condition 1 how many seconds since it last changed
v_seconds := (cast(systimestamp as date) - cast(v_last_change as date)) * 86400;

  -- condition 2 how many seconds does this state need before it changes
  if v_state = 'RED' then
    v_needed := 10;
  elsif v_state = 'YELLOW' then
    v_needed := 5;
else
    v_needed := 10;
end if;

  -- compare and answer
  if v_seconds >= v_needed then
    v_answer := true;
else
    v_answer := false;
end if;

return v_answer;
end;
/

-- procedure
-- moves one signal to its next state, only if it is due to change
create or replace procedure p_advance_signal (p_signal_id number)
as
  pragma autonomous_transaction;
  v_state     varchar2(10);
  v_new_state varchar2(10);
  v_is_due    boolean;
begin
  -- ask the function is this signal due to change
  v_is_due := is_signal_due_to_change(p_signal_id);

  -- only act if it is due
  if v_is_due = true then
    -- get the current state
select state
into   v_state
from   traffic_signals
where  signal_id = p_signal_id;

-- work out the next state
if v_state = 'RED' then
      v_new_state := 'YELLOW';
    elsif v_state = 'YELLOW' then
      v_new_state := 'GREEN';
else
      v_new_state := 'RED';
end if;

    -- save the new state
update traffic_signals
set    state = v_new_state,
       last_changed_at = systimestamp
where  signal_id = p_signal_id;

commit;
end if;
end;
/

-- trigger
-- fires once when a new signal is inserted, and schedules its own repeating job
create or replace trigger trg_signal_start_cycle
after insert on traffic_signals
for each row
begin
  dbms_scheduler.create_job(
    job_name        => 'SIGNAL_CYCLE_' || :new.signal_id,
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'begin p_advance_signal(' || :new.signal_id || '); end;',
    start_date      => systimestamp,
    repeat_interval => 'FREQ=SECONDLY;INTERVAL=1',
    enabled         => true
  );
end;
/

-- procedure
-- stops the cycle of one specific signal only
create or replace procedure p_stop_signal (p_signal_id number)
as
begin
  dbms_scheduler.stop_job('SIGNAL_CYCLE_' || p_signal_id, force => true);
  dbms_scheduler.drop_job('SIGNAL_CYCLE_' || p_signal_id, force => true);
end;
/

-- try
insert into traffic_signals (signal_name) values ('Main St & 1st Ave');
insert into traffic_signals (signal_name) values ('King Fahd Rd');
commit;

select signal_id, signal_name, state, last_changed_at from traffic_signals;

-- wait a few seconds then run this again to see the state change
select signal_id, signal_name, state, last_changed_at from traffic_signals;

-- stop only signal 1
exec p_stop_signal(1);