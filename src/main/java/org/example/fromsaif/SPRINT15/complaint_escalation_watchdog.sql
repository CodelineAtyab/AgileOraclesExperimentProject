CREATE OR REPLACE FUNCTION is_complaint_overdue (
    p_complaint_id IN NUMBER
)
RETURN BOOLEAN
IS
    v_status      v_complaint_detail.status%TYPE;
    v_is_overdue  v_complaint_detail.is_overdue%TYPE;
BEGIN
SELECT status, is_overdue
INTO   v_status, v_is_overdue
FROM   v_complaint_detail
WHERE  complaint_id = p_complaint_id;

IF v_is_overdue = 'Y'
       AND v_status NOT IN ('RESOLVED', 'CLOSED', 'REJECTED')
    THEN
        RETURN TRUE;
ELSE
        RETURN FALSE;
END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN FALSE;
END;
/


CREATE OR REPLACE PROCEDURE escalate_overdue_complaints
IS
    v_escalated_count NUMBER := 0;
    v_new_level       complaints.escalation_level%TYPE;
BEGIN
FOR complaint_record IN (
        SELECT complaint_id,
               reference_no,
               escalation_level
        FROM complaints
    )
    LOOP
        IF is_complaint_overdue(complaint_record.complaint_id)
           AND complaint_record.escalation_level < 3
        THEN
            v_new_level := complaint_record.escalation_level + 1;

UPDATE complaints
SET escalation_level = v_new_level
WHERE complaint_id = complaint_record.complaint_id;

INSERT INTO notifications (
    for_id,
    type,
    msg
)
VALUES (
           complaint_record.complaint_id,
           'WARN',
           'Complaint '
               || complaint_record.reference_no
               || ' escalated to level '
               || v_new_level
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
