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

---

SELECT F_IS_COMPLAINT_OVERDUE(5)
FROM dual;

SELECT F_IS_COMPLAINT_OVERDUE(1)
FROM dual;

---

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

        INSERT INTO notifications (for_id, type, msg) VALUES ( Current_Record_Object.complaint_id, 'WARN', 'Complaint ' || Current_Record_Object.reference_no || ' escalated to level ' || (Current_Record_Object.escalation_level + 1) );

        V_COUNT := V_COUNT + 1;

    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE( V_COUNT || ' complaints escalated.' );

END;
/

---

SET SERVEROUTPUT ON;

BEGIN
    P_ESCALATE_OVERDUE_COMPLAINTS;
END;
/

---
SELECT * FROM notifications
WHERE type = 'WARN';

SELECT complaint_id, reference_no, escalation_level FROM complaints
ORDER BY complaint_id;