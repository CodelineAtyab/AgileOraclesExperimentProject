SET SERVEROUTPUT ON SIZE UNLIMITED

-- 1. Function: is this one complaint overdue AND still open?
CREATE OR REPLACE FUNCTION is_complaint_overdue_open (
  p_complaint_id IN complaints.complaint_id%TYPE
) RETURN VARCHAR2
IS
  v_is_overdue v_complaint_detail.is_overdue%TYPE;
BEGIN
  SELECT is_overdue
  INTO   v_is_overdue
  FROM   v_complaint_detail
  WHERE  complaint_id = p_complaint_id;

  RETURN v_is_overdue;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 'N';
END;
/

-- 2. Procedure: escalate every overdue, open complaint
CREATE OR REPLACE PROCEDURE escalate_overdue_complaints
IS
  v_escalated_count NUMBER := 0;
BEGIN
  FOR rec IN (
    SELECT complaint_id, reference_no, escalation_level
    FROM   complaints
  ) LOOP

    IF is_complaint_overdue_open(rec.complaint_id) = 'Y'
       AND rec.escalation_level < 3
    THEN
      UPDATE complaints
      SET    escalation_level = escalation_level + 1
      WHERE  complaint_id = rec.complaint_id;

      INSERT INTO notifications (for_id, type, msg)
      VALUES (
        rec.complaint_id,
        'WARN',
        'Complaint ' || rec.reference_no || ' escalated to level ' ||
          (rec.escalation_level + 1)
      );

      v_escalated_count := v_escalated_count + 1;
    END IF;

  END LOOP;

  COMMIT;
  DBMS_OUTPUT.PUT_LINE(v_escalated_count || ' complaints escalated.');
END;
/

-- 3. Run it
BEGIN
  escalate_overdue_complaints;
END;
/

-- 4. Check the results
SELECT * FROM notifications WHERE type = 'WARN' ORDER BY id;
SELECT complaint_id, status, escalation_level FROM complaints ORDER BY complaint_id;