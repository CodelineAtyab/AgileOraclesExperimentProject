CREATE OR REPLACE FUNCTION f_is_complaint_overdue (
    p_complaint_id IN NUMBER
)
RETURN VARCHAR2
IS
    v_is_overdue VARCHAR2(1);
BEGIN
SELECT is_overdue
INTO v_is_overdue
FROM v_complaint_detail
WHERE complaint_id = p_complaint_id;

RETURN v_is_overdue;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'N';
END;
/

SELECT f_is_complaint_overdue(1) AS result
FROM dual;

SELECT f_is_complaint_overdue(7) AS result
FROM dual;

CREATE OR REPLACE PROCEDURE p_escalate_overdue_complaints
IS
    v_count     NUMBER := 0;
    v_new_level NUMBER;
BEGIN
FOR rec IN (
        SELECT complaint_id, reference_no, escalation_level
        FROM complaints
        ORDER BY complaint_id
    ) LOOP

        IF f_is_complaint_overdue(rec.complaint_id) = 'Y'
           AND rec.escalation_level < 3 THEN

            v_new_level := rec.escalation_level + 1;

UPDATE complaints
SET escalation_level = v_new_level,
    updated_at       = SYSTIMESTAMP,
    updated_by       = USER
WHERE complaint_id = rec.complaint_id;

INSERT INTO notifications (for_id, type, msg)
VALUES (
           rec.complaint_id,
           'WARN',
           'Complaint ' || rec.reference_no ||
           ' escalated to level ' || v_new_level
       );

v_count := v_count + 1;
END IF;

END LOOP;

COMMIT;

DBMS_OUTPUT.PUT_LINE(v_count || ' complaints escalated.');
END;
/

SET SERVEROUTPUT ON;

BEGIN
    p_escalate_overdue_complaints;
END;
/

SELECT complaint_id, status, escalation_level
FROM complaints
ORDER BY complaint_id;


SELECT id, for_id, type, msg
FROM notifications
WHERE type = 'WARN'
ORDER BY id;