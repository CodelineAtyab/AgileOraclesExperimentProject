CREATE OR REPLACE FUNCTION is_task_overdue(
    p_task_id NUMBER
) RETURN BOOLEAN
IS
    v_is_overdue VARCHAR2(1);
BEGIN

SELECT is_overdue
INTO v_is_overdue
FROM v_complaint_detail
WHERE complaint_ID = p_task_id;

IF v_is_overdue = 'Y'
    THEN
        RETURN TRUE;
ELSE
        RETURN FALSE;
END IF;

END;
/

create or replace procedure escalate_complaints
is
v_count number := 0;
begin
for r in(
select complaint_id,reference_no,escalation_level
from complaints
)
loop
if is_task_overdue(r.complaint_id)
and r.escalation_level < 3
then
update complaints
set escalation_level = r.escalation_level + 1
where complaint_id = r.complaint_id;

insert into notifications(for_id, type, msg)
values(r.complaint_id,'WARN', 'Complaint ' || r.reference_no ||
                              ' escalated to level ' || (r.escalation_level + 1));

v_count := v_count + 1;
end if;
end loop;
commit;
dbms_output.put_line(v_count || ' complaints escalated.'
    );
end;
/