-- Enable DBMS OUTPUT so the procedure will pring for example : " 5 complaints esclated "
SET SERVEROUTPUT ON; 

-- Understand the complaints table

DESC complaints;

--Output:

--Name              Null?    Type          
----------------- -------- ------------- 
--COMPLAINT_ID      NOT NULL NUMBER        
--REFERENCE_NO               VARCHAR2(20)  
--CUSTOMER_ID       NOT NULL NUMBER        
--CATEGORY_ID       NOT NULL NUMBER        
--DEPT_ID                    NUMBER        
--ASSIGNED_AGENT_ID          NUMBER        
--SUBJECT           NOT NULL VARCHAR2(200) 
--DESCRIPTION                CLOB          
--STATUS            NOT NULL VARCHAR2(20)  
--PRIORITY          NOT NULL VARCHAR2(10)  
--ESCALATION_LEVEL  NOT NULL NUMBER(1)     
--SOURCE_CHANNEL    NOT NULL VARCHAR2(20)  
--CREATED_AT        NOT NULL TIMESTAMP(6)  
--DUE_AT                     TIMESTAMP(6)  
--RESOLVED_AT                TIMESTAMP(6)  
--CLOSED_AT                  TIMESTAMP(6)  
--CREATED_BY        NOT NULL VARCHAR2(50)  
--UPDATED_AT                 TIMESTAMP(6)  
--UPDATED_BY                 VARCHAR2(50)

-- To see the Data of the complaints table:
SELECT * FROM complaints;
SELECT * FROM complaints ORDER BY complaint_id;
SELECT * FROM v_complaint_detail ORDER BY complaint_id;

-- Create the Function:

CREATE OR REPLACE FUNCTION is_complainT_overdue_open (
   p_complaint_id IN complaints.complaint_id%TYPE
)
RETURN VARCHAR2
IS
    v_is_overdue v_complaint_detail.is_overdue%TYPE;
    v_status     v_complaint_detail.status%TYPE;
BEGIN
    SELECT is_overdue,
           status
    INTO   v_is_overdue,
           v_status
    FROM   v_complaint_detail
    WHERE  complaint_id = p_complaint_id;

    IF v_is_overdue = 'Y'
       AND v_status NOT IN ('RESOLVED', 'CLOSED', 'REJECTED')
    THEN
        RETURN 'Y';
    ELSE
        RETURN 'N';
    END IF;

EXCEPTION -- handle an invalid complaint ID
    WHEN NO_DATA_FOUND THEN
        RETURN 'N';
END;
/

-- Function IS_COMPLAINT_OVERDUE_OPEN compiled 

SHOW ERRORS FUNCTION is_complaint_overdue_open;

-- No errors.

-- Test the Function

SELECT complaint_id,
       reference_no,
       status,
       escalation_level,
       is_overdue,
       is_complaint_overdue_open(complaint_id) AS overdue_and_open
FROM v_complaint_detail
ORDER BY complaint_id;

-- shows each complaint wheather its overdue and still open?


-- Check the data 

SELECT complaint_id, reference_no, status, escalation_level, is_overdue FROM v_complaint_detail
ORDER BY complaint_id;

-- Create the eatchdog procedure 

CREATE OR REPLACE PROCEDURE run_complaint_watchdog
IS
    v_escalated_count NUMBER := 0;
    v_new_level       complaints.escalation_level%TYPE;
BEGIN
    FOR rec IN (
        SELECT complaint_id,
               reference_no,
               escalation_level
        FROM complaints
        ORDER BY complaint_id
    )
    LOOP

        IF is_complaint_overdue_open(rec.complaint_id) = 'Y'
           AND rec.escalation_level < 3
        THEN

            UPDATE complaints
            SET escalation_level = escalation_level + 1,
                updated_at       = SYSTIMESTAMP,
                updated_by       = USER
            WHERE complaint_id = rec.complaint_id
            RETURNING escalation_level INTO v_new_level;

            INSERT INTO notifications (
                for_id,
                type,
                msg
            )
            VALUES (
                rec.complaint_id,
                'WARN',
                'Complaint ' || rec.reference_no ||
                ' escalated to level ' || v_new_level
            );

            v_escalated_count := v_escalated_count + 1;

        END IF;

    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(
        v_escalated_count || ' complaints escalated.'
    );
END;
/

-- Procedure RUN_COMPLAINT_WATCHDOG compiled

SHOW ERRORS PROCEDURE run_complaint_watchdog;

-- No errors.


-- Run the Procedure 

BEGIN
    run_complaint_watchdog;
END;
/
-- 5 complaints escalated.
-- PL/SQL procedure successfully completed.


-- Verify the complaint levels
SELECT complaint_id, reference_no, status, escalation_level, is_overdue FROM v_complaint_detail
ORDER BY complaint_id;


-- Verify the WARN notification 

select * from notifications;

SELECT * FROM notifications WHERE type = 'WARN' ORDER BY id;

-- 5 Rows appears 
-- complaint 1 , 2 , 3 , 8, 10 



