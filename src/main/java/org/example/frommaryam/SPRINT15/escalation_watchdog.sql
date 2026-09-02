-- function
-- check if a complaint is overdue and still open
create or replace function is_complaint_overdue_open (p_complaint_id number) return boolean
as
  v_status  varchar2(20);
  v_due_at  date;
  v_answer  boolean;
begin
  -- get the status and due date of this complaint
  select status, due_at
  into   v_status, v_due_at
  from   complaints
  where  complaint_id = p_complaint_id;

  -- condition 1 is the complaint still open
  if v_status in ('RESOLVED', 'CLOSED', 'REJECTED') then
    v_answer := false;
    return v_answer;
  end if;

  -- condition 2 is the due date in the past
  if v_due_at < sysdate then
    v_answer := true;
  else
    v_answer := false;
  end if;

  return v_answer;
end;
/


-- procedure
-- loops through every complaint and escalates the overdue open ones
create or replace procedure p_escalate_overdue_complaints
as
  v_counter    number := 0;
  v_is_late    boolean;
  v_new_level  number;
begin
  -- go through complaints one by one
  for curr_rec_obj in (select complaint_id, reference_no, escalation_level from complaints) loop

    -- ask the function is this complaint late and open
    v_is_late := is_complaint_overdue_open(curr_rec_obj.complaint_id);

    -- only act if it is late and not already at the max level
    if v_is_late = true and curr_rec_obj.escalation_level < 3 then

      -- work out the new level
      v_new_level := curr_rec_obj.escalation_level + 1;

      -- save the new level on the complaint
      update complaints
      set    escalation_level = v_new_level
      where  complaint_id = curr_rec_obj.complaint_id;

      -- add a warning notification
      insert into notifications (for_id, type, msg)
      values (curr_rec_obj.complaint_id,
              'WARN',
              'complaint ' || curr_rec_obj.reference_no || ' escalated to level ' || v_new_level);

      -- add one to our counter
      v_counter := v_counter + 1;

    end if;

  end loop;
  
  commit;

  dbms_output.put_line(v_counter || ' complaints escalated.');
end;
/



-- try

begin
  p_escalate_overdue_complaints();
end;
/

select * from notifications where type = 'WARN';

select complaint_id, status, escalation_level from complaints order by complaint_id;