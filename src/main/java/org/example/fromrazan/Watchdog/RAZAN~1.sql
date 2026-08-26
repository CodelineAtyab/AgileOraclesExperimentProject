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
