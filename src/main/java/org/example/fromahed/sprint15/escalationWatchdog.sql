--create function:
CREATE OR REPLACE FUNCTION f_is_complaint_overdue
(
    p_complaint_id IN NUMBER
)
RETURN BOOLEAN
AS
    v_is_overdue VARCHAR2(1);
BEGIN

SELECT is_overdue
INTO v_is_overdue
FROM v_complaint_detail
WHERE complaint_id = p_complaint_id;

IF v_is_overdue = 'Y' THEN
        RETURN TRUE;
ELSE
        RETURN FALSE;
END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN FALSE;

END;

--test the function complaint 1,5,999:
BEGIN
    IF f_is_complaint_overdue(1) THEN
        DBMS_OUTPUT.PUT_LINE('TRUE');
ELSE
        DBMS_OUTPUT.PUT_LINE('FALSE');
END IF;
END;
------------
BEGIN
    IF f_is_complaint_overdue(5) THEN
        DBMS_OUTPUT.PUT_LINE('TRUE');
ELSE
        DBMS_OUTPUT.PUT_LINE('FALSE');
END IF;
END;
------------------------
BEGIN
    IF f_is_complaint_overdue(999) THEN
        DBMS_OUTPUT.PUT_LINE('TRUE');
ELSE
        DBMS_OUTPUT.PUT_LINE('FALSE');
END IF;
END;
----------------------------------
--create PROCEDURE "before I add the loop":
CREATE OR REPLACE PROCEDURE p_escalate_overdue_complaints
AS
    v_count NUMBER := 0;
BEGIN

    DBMS_OUTPUT.PUT_LINE(v_count || ' complaints escalated.');

END;
--test
BEGIN
    p_escalate_overdue_complaints;
END;
---------------------------------
--create PROCEDURE "after I add the loop":
CREATE OR REPLACE PROCEDURE p_escalate_overdue_complaints
AS
    v_count NUMBER := 0;
BEGIN

FOR curr_rec_obj IN (
        SELECT complaint_id, reference_no, escalation_level
        FROM complaints
    )
    LOOP

        IF f_is_complaint_overdue(curr_rec_obj.complaint_id)
           AND curr_rec_obj.escalation_level < 3 THEN

UPDATE complaints
SET escalation_level = escalation_level + 1
WHERE complaint_id = curr_rec_obj.complaint_id;

INSERT INTO notifications (for_id, type, msg)
VALUES (
           curr_rec_obj.complaint_id,
           'WARN',
           'Complaint ' || curr_rec_obj.reference_no ||
           ' escalated to level ' || (curr_rec_obj.escalation_level + 1)
       );

v_count := v_count + 1;

END IF;

END LOOP;

COMMIT;

DBMS_OUTPUT.PUT_LINE(v_count || ' complaints escalated.');

END;
--------
--test the procedure
BEGIN
    p_escalate_overdue_complaints();
END;
---------------------
--verify the escalation levels:
SELECT complaint_id, reference_no, escalation_level
FROM complaints
ORDER BY complaint_id;
------------------------
--check:
SELECT *
FROM notifications
WHERE type = 'WARN';