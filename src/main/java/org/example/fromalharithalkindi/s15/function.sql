CREATE OR REPLACE FUNCTION is_complaint_overdue_open (
    p_complaint_id IN complaints.complaint_id%TYPE
) RETURN BOOLEAN
IS
    v_is_overdue v_complaint_detail.is_overdue%TYPE;
BEGIN
SELECT is_overdue
INTO   v_is_overdue
FROM   v_complaint_detail
WHERE  complaint_id = p_complaint_id;

RETURN v_is_overdue = 'Y';
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        -- complaint_id doesn't exist -> treat as "not overdue/open"
        RETURN FALSE;
END is_complaint_overdue_open;
/