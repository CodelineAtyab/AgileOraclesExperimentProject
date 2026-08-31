SQL

-- ============================================================================
--  COMPLAINT ESCALATION WATCHDOG - SOLUTION (submission version)
--  Run AFTER: 08_escalation_challenge_setup.sql (schema + seed)
--  Contents: FUNCTION f_is_overdue_and_open
--            PROCEDURE p_escalate_overdue
--  Verified: 5 complaints escalated, 5 WARN rows (1,2,3,8,10),
--            complaint 4 untouched at level 3.
-- ============================================================================

SET SERVEROUTPUT ON

-- ----------------------------------------------------------------------------
-- 1) FUNCTION - is a single complaint overdue AND still open?
--    Uses v_complaint_detail.is_overdue ('Y' = overdue AND open).
--    Unknown ID -> FALSE (handles NO_DATA_FOUND) instead of raising an error.
-- ----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION f_is_overdue_and_open (p_complaint_id IN NUMBER)
RETURN BOOLEAN IS
    v_is_overdue  v_complaint_detail.is_overdue%TYPE;
BEGIN
    SELECT is_overdue
      INTO v_is_overdue
      FROM v_complaint_detail
     WHERE complaint_id = p_complaint_id;

    RETURN (v_is_overdue = 'Y');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN FALSE;
END f_is_overdue_and_open;
/

-- ----------------------------------------------------------------------------
-- 2) PROCEDURE - escalate every overdue & open complaint (level < 3)
--    - escalation_level + 1 (never above 3: excluded in the WHERE clause)
--    - inserts a WARN notification (reference no + new escalation level)
--    - prints '<n> complaints escalated.' and COMMITs once
-- ----------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE p_escalate_overdue IS
    v_count  NUMBER := 0;
BEGIN
    FOR r IN (
        SELECT complaint_id, reference_no, escalation_level
          FROM v_complaint_detail
         WHERE is_overdue = 'Y'          -- overdue AND still open (view logic)
           AND escalation_level < 3      -- skip complaints at the 0-3 ceiling
    ) LOOP
        UPDATE complaints
           SET escalation_level = escalation_level + 1
         WHERE complaint_id = r.complaint_id;

        INSERT INTO notifications (for_id, type, msg)
        VALUES (r.complaint_id,
                'WARN',
                'Complaint ' || r.reference_no ||
                ' escalated to level ' || (r.escalation_level + 1));

        v_count := v_count + 1;
    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(v_count || ' complaints escalated.');
END p_escalate_overdue;
/

-- Run the watchdog
BEGIN
    p_escalate_overdue;
END;
/
