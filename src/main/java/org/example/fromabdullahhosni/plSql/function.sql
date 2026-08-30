CREATE OR REPLACE FUNCTION needs_sla_escalation (
    p_complaint_id IN NUMBER
)
RETURN BOOLEAN
IS
    v_match_count PLS_INTEGER;
BEGIN
    SELECT COUNT(*)
    INTO v_match_count
    FROM v_complaint_detail d
    JOIN complaints c
      ON c.complaint_id = d.complaint_id
    WHERE d.complaint_id = p_complaint_id
      AND NVL(UPPER(TRIM(d.is_overdue)), 'N') <> 'N'
      AND NVL(UPPER(TRIM(c.status)), 'OPEN') NOT IN ('RESOLVED', 'CLOSED', 'REJECTED');

    RETURN v_match_count > 0;
END;
/

SHOW ERRORS FUNCTION needs_sla_escalation;
