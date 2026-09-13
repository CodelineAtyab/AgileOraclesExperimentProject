-- procedure (part 1)
-- resets every signal to red using an implicit cursor
create or replace procedure p_reset_all_signals_implicit
as
  v_counter number := 0;
begin
  -- loop through every row
for curr_rec_obj in (select signal_id from traffic_signals) loop
update traffic_signals
set    state = 'RED',
       last_changed_at = systimestamp
where  signal_id = curr_rec_obj.signal_id;

v_counter := v_counter + 1;
end loop;

commit;
dbms_output.put_line(v_counter || ' signals reset (implicit cursor).');
end;
/

-- procedure (part 2)
-- resets every signal to red using an explicit sys_refcursor
create or replace procedure p_reset_all_signals_explicit
as
  v_cursor    sys_refcursor;
  v_signal_id number;
  v_counter   number := 0;
begin
  -- open cursor
open v_cursor for
select signal_id from traffic_signals;

loop
-- fetch one row
fetch v_cursor into v_signal_id;
    exit when v_cursor%notfound;

update traffic_signals
set    state = 'RED',
       last_changed_at = systimestamp
where  signal_id = v_signal_id;

v_counter := v_counter + 1;
end loop;

  -- close cursor
close v_cursor;

commit;
dbms_output.put_line(v_counter || ' signals reset (explicit cursor).');
end;
/

-- procedure (part 3)
-- resets every signal to red using bulk collect + forall
create or replace procedure p_reset_all_signals_bulk
as
  v_cursor  sys_refcursor;
  type t_id_tab is table of traffic_signals.signal_id%type;
  v_id_tab  t_id_tab;
  v_counter number := 0;
begin
open v_cursor for
select signal_id from traffic_signals;

-- pull all ids at once
fetch v_cursor bulk collect into v_id_tab;
close v_cursor;

if v_id_tab.count > 0 then
    -- one batch update instead of row by row
    forall i in 1 .. v_id_tab.count
update traffic_signals
set    state = 'RED',
       last_changed_at = systimestamp
where  signal_id = v_id_tab(i);

v_counter := v_id_tab.count;
end if;

commit;
dbms_output.put_line(v_counter || ' signals reset (bulk collect + forall).');
end;
/

-- try
insert into traffic_signals (signal_name, state) values ('Main St & 1st Ave', 'YELLOW');
insert into traffic_signals (signal_name, state) values ('King Fahd Rd', 'GREEN');
insert into traffic_signals (signal_name, state) values ('Al Khuwair Rd', 'RED');
commit;

exec p_reset_all_signals_implicit;
select signal_id, signal_name, state, last_changed_at from traffic_signals;

update traffic_signals set state = 'YELLOW' where signal_id = 1;
update traffic_signals set state = 'GREEN'  where signal_id = 2;
commit;

exec p_reset_all_signals_explicit;
select signal_id, signal_name, state, last_changed_at from traffic_signals;

update traffic_signals set state = 'YELLOW' where signal_id = 1;
update traffic_signals set state = 'GREEN'  where signal_id = 2;
commit;

exec p_reset_all_signals_bulk;
select signal_id, signal_name, state, last_changed_at from traffic_signals;