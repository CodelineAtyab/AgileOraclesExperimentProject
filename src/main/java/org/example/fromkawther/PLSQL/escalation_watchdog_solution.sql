SET SERVEROUTPUT ON;

-- ============================================================
-- Function: is_complaint_overdue_open
-- Checks a single complaint: is it overdue AND still open
-- (explicit status check per reviewer comment - not resolved/closed/rejected)
-- ============================================================
CREATE OR REPLACE FUNCTION is_complaint_overdue_open (
    p_complaint_id IN complaints.complaint_id%TYPE
) RETURN VARCHAR2
IS
    v_is_overdue v_complaint_detail.is_overdue%TYPE;
    v_status     v_complaint_detail.status%TYPE;
BEGIN
    SELECT is_overdue, status
    INTO   v_is_overdue, v_status
    FROM   v_complaint_detail
    WHERE  complaint_id = p_complaint_id;

    IF v_is_overdue = 'Y' AND v_status NOT IN ('RESOLVED', 'CLOSED', 'REJECTED') THEN
        RETURN 'Y';
    ELSE
        RETURN 'N';
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'N';
END is_complaint_overdue_open;
/

SHOW ERRORS FUNCTION is_complaint_overdue_open;

-- ============================================================
-- Procedure: run_complaint_watchdog
-- Loops all complaints, escalates the overdue+open ones (cap at level 3),
-- inserts one WARN notification per escalated complaint
-- ============================================================
CREATE OR REPLACE PROCEDURE run_complaint_watchdog
IS
    v_escalated_count NUMBER := 0;
    v_new_level       complaints.escalation_level%TYPE;
BEGIN
    FOR curr_rec_obj IN (
        SELECT complaint_id, reference_no, escalation_level
        FROM   complaints
        ORDER BY complaint_id
    )
    LOOP
        IF is_complaint_overdue_open(curr_rec_obj.complaint_id) = 'Y'
           AND curr_rec_obj.escalation_level < 3
        THEN
            UPDATE complaints
            SET    escalation_level = escalation_level + 1,
                   updated_at = SYSTIMESTAMP,
                   updated_by = USER
            WHERE  complaint_id = curr_rec_obj.complaint_id
            RETURNING escalation_level INTO v_new_level;

            INSERT INTO notifications (for_id, type, msg)
            VALUES (
                curr_rec_obj.complaint_id,
                'WARN',
                'Complaint ' || curr_rec_obj.reference_no ||
                ' is overdue - escalated to level ' || v_new_level
            );

            v_escalated_count := v_escalated_count + 1;
        END IF;
    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Watchdog finished. Complaints escalated: ' || v_escalated_count);
END run_complaint_watchdog;
/

SHOW ERRORS PROCEDURE run_complaint_watchdog;

-- Run the Procedure
BEGIN
    run_complaint_watchdog;
END;
/
-- Expected: 5 complaints escalated.

-- Verify the complaint levels
SELECT complaint_id, reference_no, status, escalation_level, is_overdue
FROM   v_complaint_detail
ORDER BY complaint_id;

-- Verify the WARN notifications
SELECT * FROM notifications WHERE type = 'WARN' ORDER BY id;
-- Expected: 5 rows -> complaints 1, 2, 3, 8, 10