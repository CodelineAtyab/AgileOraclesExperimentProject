-- Function to check if a complaint is overdue and still open
CREATE OR REPLACE FUNCTION is_complaint_overdue (p_complaint_id NUMBER)
RETURN BOOLEAN
IS
    v_is_overdue VARCHAR2(1); -- Variable
BEGIN
    SELECT is_overdue
    INTO v_is_overdue -- Store the query result in the v_is_overdue variable
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
/
--------------------------------------------------------------------------------
-- Procedure to escalate overdue complaints and add warning notifications
CREATE OR REPLACE PROCEDURE escalate_overdue_complaints
IS
    v_count NUMBER := 0; -- Counter
    v_new_level NUMBER;
BEGIN
    -- For Loop
    FOR complaint_rec IN (
        SELECT complaint_id,
               reference_no,
               escalation_level
        FROM complaints
    )
    LOOP
        IF is_complaint_overdue(complaint_rec.complaint_id)
           AND complaint_rec.escalation_level < 3
        THEN
            v_new_level := complaint_rec.escalation_level + 1;

            UPDATE complaints
            SET escalation_level = v_new_level,
                updated_at = SYSTIMESTAMP,
                updated_by = USER
            WHERE complaint_id = complaint_rec.complaint_id;

            -- INSERT Notification
            INSERT INTO notifications (
                for_id,
                type,
                msg
            )
            VALUES (
                complaint_rec.complaint_id,
                'WARN',
                'Complaint ' || complaint_rec.reference_no ||
                ' escalated to level ' || v_new_level
            );

            v_count := v_count + 1; -- increase counter by 1
        END IF;
    END LOOP;

    COMMIT;

    -- Display Summary
    DBMS_OUTPUT.PUT_LINE(
        v_count || ' complaints escalated.'
    );
END;
/
--------------------------------------------------------------------------------
-- Run the escalation procedure
BEGIN
    escalate_overdue_complaints;
END;
/
--------------------------------------------------------------------------------
-- Check the complaints after escalation
SELECT complaint_id,
       reference_no,
       status,
       escalation_level,
       is_overdue,
       due_at
FROM v_complaint_detail
ORDER BY complaint_id;
--------------------------------------------------------------------------------
-- Check the warning notifications created by the procedure
SELECT *
FROM notifications
WHERE type = 'WARN'
ORDER BY id;






