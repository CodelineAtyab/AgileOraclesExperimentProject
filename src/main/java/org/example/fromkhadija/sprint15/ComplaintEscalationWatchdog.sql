 
--A function that checks whether a single complaint (given its ID) is currently 
--overdue and still open (not resolved/closed/rejected).
--A complaint whose due date has passed and whose status is still IN_PROGRESS or NEW → this is a real problem, it needs escalation → 'Y'
--A complaint whose due date has passed but that's already finished (RESOLVED or CLOSED) → there's no problem, it's already closed → 'N'

CREATE OR REPLACE FUNCTION F_IS_OVERDUE_OPEN (P_COMPLAINT_ID IN NUMBER) RETURN VARCHAR2
AS
    V_IS_OVERDUE VARCHAR2(1) := 'N';
BEGIN
    FOR CURR_REC_OBJ IN (SELECT status, due_at
                          FROM   complaints
                          WHERE  complaint_id = P_COMPLAINT_ID) LOOP

        IF CURR_REC_OBJ.status NOT IN ('RESOLVED','CLOSED','REJECTED')
           AND CURR_REC_OBJ.due_at < SYSTIMESTAMP THEN

            V_IS_OVERDUE := 'Y';

        END IF;

    END LOOP;

    RETURN V_IS_OVERDUE;
END; 

-- This use to test function is the complain number one overdue and open?
SELECT F_IS_OVERDUE_OPEN(1) FROM dual;

--Goal: Loop through every complaint in the table one by one,
--and for each complaint check two conditions:

--1- Is it overdue and open? (uses the function F_IS_OVERDUE_OPEN to find out)
--2- Is the escalation level still less than 3? (i.e., it hasn't reached the maximum yet)
-- If both conditions are true together:
--Increase escalation_level by one (+1)
--Insert a new row into the notifications table with type WARN, 
--containing the complaint's reference number and the new escalation level it reached

CREATE OR REPLACE PROCEDURE P_ESCALATE_OVERDUE_COMPLAINTS
AS
    V_COUNT NUMBER := 0;
BEGIN
    FOR CURR_REC_OBJ IN (SELECT complaint_id, reference_no, escalation_level
                          FROM   complaints) LOOP

        IF F_IS_OVERDUE_OPEN(CURR_REC_OBJ.complaint_id) = 'Y'
           AND CURR_REC_OBJ.escalation_level < 3 THEN

            UPDATE complaints
            SET    escalation_level = escalation_level + 1
            WHERE  complaint_id = CURR_REC_OBJ.complaint_id;

            INSERT INTO notifications (for_id, type, msg)
            VALUES (CURR_REC_OBJ.complaint_id, 'WARN',
                    'Complaint ' || CURR_REC_OBJ.reference_no ||
                    ' escalated to level ' || (CURR_REC_OBJ.escalation_level + 1));

            V_COUNT := V_COUNT + 1;

        END IF;

    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(V_COUNT || ' complaints escalated.');
END;

-- THIS for test the procedure
BEGIN
    P_ESCALATE_OVERDUE_COMPLAINTS;
END;

--This is the first check — we look to see: did escalation_level actually go up for the right complaints?
SELECT complaint_id, status, escalation_level FROM complaints ORDER BY complaint_id;

--This is the second check — we look to see: was a WARN notification recorded for every complaint that got escalated?
SELECT * FROM notifications WHERE type = 'WARN' ORDER BY id;