CREATE OR REPLACE FUNCTION is_complaint_overdue (
    p_complaint_id IN NUMBER
)
RETURN NUMBER
IS
    v_is_overdue VARCHAR2(1);
BEGIN

SELECT is_overdue
INTO v_is_overdue
FROM v_complaint_detail
WHERE complaint_id = p_complaint_id;

IF v_is_overdue = 'Y' THEN
        RETURN 1;
ELSE
        RETURN 0;
END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
END;
/

---test the function

SELECT is_complaint_overdue(1) FROM dual;

SELECT is_complaint_overdue(5) FROM dual;

SELECT is_complaint_overdue(7) FROM dual;

SELECT is_complaint_overdue(999) FROM dual;
----

CREATE OR REPLACE PROCEDURE escalate_overdue_complaints
IS
    v_count NUMBER := 0;
BEGIN

FOR r IN (
        SELECT complaint_id,
               reference_no,
               escalation_level
        FROM complaints
    ) LOOP

        IF is_complaint_overdue(r.complaint_id) = 1
           AND r.escalation_level < 3
        THEN

UPDATE complaints
SET escalation_level = escalation_level + 1
WHERE complaint_id = r.complaint_id;

INSERT INTO notifications (for_id, type, msg)
VALUES (
           r.complaint_id,
           'WARN',
           'Complaint ' || r.reference_no ||
           ' escalated to level ' || (r.escalation_level + 1)
       );

v_count := v_count + 1;

END IF;

END LOOP;

COMMIT;

DBMS_OUTPUT.PUT_LINE(v_count || ' complaints escalated.');

END;
/

SELECT complaint_id,
       reference_no,
       escalation_level
FROM complaints
ORDER BY complaint_id;

BEGIN
    escalate_overdue_complaints;
END;
/

SELECT *
FROM notifications
WHERE type = 'WARN';