CREATE OR REPLACE PROCEDURE escalate_overdue_complaints
IS
    v_escalated_count NUMBER := 0;
BEGIN

FOR rec IN (
        SELECT complaint_id, reference_no, escalation_level
        FROM   complaints
        WHERE  escalation_level < 3
    ) LOOP

        IF is_complaint_overdue_open(rec.complaint_id) THEN

UPDATE complaints
SET    escalation_level = LEAST(escalation_level + 1, 3),
       updated_at       = SYSTIMESTAMP
WHERE  complaint_id = rec.complaint_id;

INSERT INTO notifications (for_id, type, msg)
VALUES (
           rec.complaint_id,
           'WARN',
           'Complaint ' || rec.reference_no ||
           ' escalated to level ' || (rec.escalation_level + 1)
       );

v_escalated_count := v_escalated_count + 1;

END IF;

END LOOP;

COMMIT;

DBMS_OUTPUT.PUT_LINE(v_escalated_count || ' complaints escalated.');

END escalate_overdue_complaints;
/