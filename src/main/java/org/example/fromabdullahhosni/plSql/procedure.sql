SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE run_complaint_watchdog
IS
    v_escalated_count PLS_INTEGER := 0;
    v_new_level       complaints.escalation_level%TYPE;
BEGIN
    FOR r IN (
        SELECT complaint_id,
               reference_no
        FROM complaints
    )
    LOOP
        IF needs_sla_escalation(r.complaint_id) THEN
            UPDATE complaints
            SET escalation_level = LEAST(NVL(escalation_level, 0) + 1, 3),
                updated_at       = SYSTIMESTAMP,
                updated_by       = USER
            WHERE complaint_id = r.complaint_id
              AND NVL(escalation_level, 0) < 3
              AND NVL(UPPER(TRIM(status)), 'OPEN') NOT IN ('RESOLVED', 'CLOSED', 'REJECTED')
            RETURNING escalation_level INTO v_new_level;

            IF SQL%ROWCOUNT = 1 THEN
                INSERT INTO notifications (
                    for_id,
                    type,
                    msg
                )
                VALUES (
                    r.complaint_id,
                    'WARN',
                    'Complaint ' || r.reference_no ||
                    ' escalated to level ' || v_new_level
                );

                v_escalated_count := v_escalated_count + 1;
            END IF;
        END IF;
    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(
        v_escalated_count || ' complaints escalated.'
    );
END;
/

SHOW ERRORS PROCEDURE run_complaint_watchdog;
