CREATE OR REPLACE FUNCTION is_complaint_overdue (
    p_complaint_id IN complaints.complaint_id%TYPE
)
RETURN BOOLEAN
IS
    v_is_overdue v_complaint_detail.is_overdue%TYPE;
BEGIN

    -- Get the overdue status of the complaint
    SELECT is_overdue
    INTO v_is_overdue
    FROM v_complaint_detail
    WHERE complaint_id = p_complaint_id;

    -- Return TRUE if the complaint is overdue and still open
    IF v_is_overdue = 'Y' THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;

EXCEPTION
    -- Complaint does not exist
    WHEN NO_DATA_FOUND THEN
        RETURN FALSE;

END is_complaint_overdue;
/
----------------------------------------------
-----test the function
--------------------------------------

SELECT is_complaint_overdue(1) FROM dual;

----------------------------------------------
----use an anonymous PL/SQL
--------------------------------------

SET SERVEROUTPUT ON;

BEGIN
    IF is_complaint_overdue(1) THEN
        DBMS_OUTPUT.PUT_LINE('Complaint 1 is overdue.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Complaint 1 is NOT overdue.');
    END IF;
END;
/

----------------------------------------------------
-----for test complaint 
--------------------------------------
BEGIN
    IF is_complaint_overdue(7) THEN
        DBMS_OUTPUT.PUT_LINE('Complaint 7 is overdue.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Complaint 7 is NOT overdue.');
    END IF;
END;
/
------------------------------------------------
------------------------------------------------
---Create the procedure structure
------------------------------------
CREATE OR REPLACE PROCEDURE ESCALATE_OVERDUE_COMPLAINTS
IS
BEGIN
UPDATE COMPLAINTS
SET ESCALATION_LEVEL = ESCALATION_LEVEL + 1,
    UPDATED_AT = SYSTIMESTAMP,
    UPDATED_BY = 'SYSTEM'
WHERE DUE_AT < SYSTIMESTAMP
  AND STATUS NOT IN ('RESOLVED', 'CLOSED', 'REJECTED');

COMMIT;
END ESCALATE_OVERDUE_COMPLAINTS;
/

DESC COMPLAINTS;

EXEC ESCALATE_OVERDUE_COMPLAINTS;

SET STATUS = 'ESCALATED'

SELECT constraint_name, search_condition
FROM user_constraints
WHERE constraint_name = 'CK_CMP_STATUS';

SELECT
    COMPLAINT_ID,
    REFERENCE_NO,
    STATUS,
    ESCALATION_LEVEL,
    DUE_AT
FROM COMPLAINTS
ORDER BY COMPLAINT_ID;

EXEC ESCALATE_OVERDUE_COMPLAINTS;

SELECT constraint_name, search_condition
FROM user_constraints
WHERE constraint_name = 'CK_CMP_ESC';

SELECT constraint_name, search_condition
FROM user_constraints
WHERE constraint_name = 'CK_CMP_ESC';

CREATE OR REPLACE PROCEDURE ESCALATE_OVERDUE_COMPLAINTS
IS
BEGIN
UPDATE COMPLAINTS
SET ESCALATION_LEVEL = ESCALATION_LEVEL + 1,
    UPDATED_AT = SYSTIMESTAMP,
    UPDATED_BY = 'SYSTEM'
WHERE DUE_AT < SYSTIMESTAMP
  AND STATUS NOT IN ('RESOLVED', 'CLOSED', 'REJECTED')
  AND ESCALATION_LEVEL < 3;

COMMIT;
END ESCALATE_OVERDUE_COMPLAINTS;
/

EXEC ESCALATE_OVERDUE_COMPLAINTS;

SELECT
    COMPLAINT_ID,
    REFERENCE_NO,
    STATUS,
    ESCALATION_LEVEL,
    DUE_AT,
    UPDATED_AT,
    UPDATED_BY
FROM COMPLAINTS
ORDER BY COMPLAINT_ID;

SELECT
    COMPLAINT_ID,
    REFERENCE_NO,
    STATUS,
    ESCALATION_LEVEL,
    DUE_AT
FROM COMPLAINTS
WHERE DUE_AT < SYSTIMESTAMP
  AND STATUS NOT IN ('RESOLVED', 'CLOSED', 'REJECTED')
ORDER BY DUE_AT;

SELECT
    COMPLAINT_ID,
    REFERENCE_NO,
    STATUS,
    ESCALATION_LEVEL,
    DUE_AT,
    UPDATED_AT,
    UPDATED_BY
FROM COMPLAINTS
ORDER BY COMPLAINT_ID;






