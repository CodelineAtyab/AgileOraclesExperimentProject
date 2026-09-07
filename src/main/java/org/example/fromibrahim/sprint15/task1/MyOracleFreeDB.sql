-- Check the complaints

SELECT complaint_id,
       reference_no,
       status,
       escalation_level,
       is_overdue
FROM v_complaint_detail
ORDER BY complaint_id;


-- Functionn --

CREATE OR REPLACE FUNCTION f_is_complaint_overdue (
    p_complaint_id IN NUMBER
)
RETURN VARCHAR2
AS
    v_is_overdue VARCHAR2(1);
BEGIN

    SELECT is_overdue
    INTO v_is_overdue
    FROM v_complaint_detail
    WHERE complaint_id = p_complaint_id;

    RETURN v_is_overdue;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'N';

END;


-- Testing each complaint
SELECT f_is_complaint_overdue(1) AS result
FROM dual;

-- Testing all complaints 
SELECT complaint_id,
       f_is_complaint_overdue(complaint_id) AS overdue_open
FROM complaints
ORDER BY complaint_id;


-- Procedure --

CREATE OR REPLACE PROCEDURE process_overdue_complaints
AS
    v_escalated_count NUMBER := 0;
    v_new_level       NUMBER;
BEGIN

    FOR curr_rec_obj IN (
        SELECT complaint_id,
               reference_no,
               escalation_level
        FROM complaints
        ORDER BY complaint_id
    )
    LOOP

        IF f_is_complaint_overdue(curr_rec_obj.complaint_id) = 'Y'
           AND curr_rec_obj.escalation_level < 3
        THEN

            v_new_level := curr_rec_obj.escalation_level + 1;

            UPDATE complaints
            SET escalation_level = v_new_level
            WHERE complaint_id = curr_rec_obj.complaint_id;


            INSERT INTO notifications (
                for_id,
                type,
                msg
            )
            VALUES (
                curr_rec_obj.complaint_id,
                'WARN',
                'Complaint ' || curr_rec_obj.reference_no ||
                ' escalated to level ' || v_new_level
            );


            v_escalated_count := v_escalated_count + 1;

        END IF;

    END LOOP;


    COMMIT;


END;


-- Running the procedure

BEGIN
    process_overdue_complaints;
END;



-- check the notifications 

SELECT *
FROM notifications
WHERE type = 'WARN'
ORDER BY id;


-- checking the view 

SELECT complaint_id,
       status,
       escalation_level,
       is_overdue
FROM v_complaint_detail
ORDER BY complaint_id;