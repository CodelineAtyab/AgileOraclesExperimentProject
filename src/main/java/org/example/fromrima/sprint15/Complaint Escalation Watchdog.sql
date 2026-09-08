----- Function to check if a complaint is overdue

CREATE OR REPLACE FUNCTION F_IS_COMPLAINT_OVERDUE ( P_COMPLAINT_ID IN NUMBER ) RETURN VARCHAR2
AS
    V_IS_OVERDUE VARCHAR2(1);
BEGIN

    SELECT IS_OVERDUE
    INTO V_IS_OVERDUE
    FROM V_COMPLAINT_DETAIL
    WHERE COMPLAINT_ID = P_COMPLAINT_ID;

    RETURN V_IS_OVERDUE;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'N';
END;
/

----- Test the overdue function

SELECT F_IS_COMPLAINT_OVERDUE(5)
FROM dual;

SELECT F_IS_COMPLAINT_OVERDUE(1)
FROM dual;

----- Procedure to create a warning notification when a complaint is escalated

CREATE OR REPLACE PROCEDURE P_GENERATE_COMPLAINT_NOTIFICATION ( P_COMPLAINT_ID IN NUMBER, P_REFERENCE_NO IN VARCHAR2, P_NEW_LEVEL IN NUMBER )
AS
BEGIN

    INSERT INTO notifications (for_id, type, msg)
    VALUES ( P_COMPLAINT_ID, 'WARN', 'Complaint ' || P_REFERENCE_NO || ' escalated to level ' || P_NEW_LEVEL );

END;
/

----- Row-level trigger to create a notification after the escalation level increases

CREATE OR REPLACE TRIGGER TRG_COMPLAINT_ESCALATION_NOTIFICATION
AFTER UPDATE OF escalation_level ON complaints
FOR EACH ROW
WHEN (NEW.escalation_level > OLD.escalation_level)
BEGIN

    P_GENERATE_COMPLAINT_NOTIFICATION( :NEW.complaint_id, :NEW.reference_no, :NEW.escalation_level );
    
END;
/

----- Procedure to find overdue complaints and increase their escalation level

CREATE OR REPLACE PROCEDURE P_ESCALATE_OVERDUE_COMPLAINTS
AS
    V_COUNT NUMBER := 0;
BEGIN

    FOR Current_Record_Object IN (
        SELECT complaint_id, reference_no, escalation_level FROM complaints
        WHERE escalation_level < 3
          AND F_IS_COMPLAINT_OVERDUE(complaint_id) = 'Y'
    )
    LOOP

        UPDATE complaints SET escalation_level = escalation_level + 1
        WHERE complaint_id = Current_Record_Object.complaint_id;

        V_COUNT := V_COUNT + 1;

    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE( V_COUNT || ' complaints escalated.' );

END;
/

----- Enable procedure output

SET SERVEROUTPUT ON;

----- Execute the overdue complaint escalation procedure

BEGIN
    P_ESCALATE_OVERDUE_COMPLAINTS;
END;
/

----- Verify the warning notifications created by the trigger

SELECT * FROM notifications
WHERE type = 'WARN';

----- Verify the updated escalation levels

SELECT complaint_id, reference_no, escalation_level FROM complaints
ORDER BY complaint_id;