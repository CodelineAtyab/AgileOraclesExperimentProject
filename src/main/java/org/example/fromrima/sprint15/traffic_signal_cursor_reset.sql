--  Enable DBMS_OUTPUT to display procedure messages

SET SERVEROUTPUT ON;

--  Reset all traffic signals to RED using an implicit cursor

CREATE OR REPLACE PROCEDURE RESET_ALL_SIGNALS_IMPLICIT
AS
    V_RESET_COUNT NUMBER := 0;
BEGIN

    FOR CURRENT_SIGNAL IN (
        SELECT signal_id
        FROM traffic_signals
    )
    LOOP

        UPDATE traffic_signals SET state = 'RED', last_changed_at = SYSTIMESTAMP
        WHERE signal_id = CURRENT_SIGNAL.signal_id;

        V_RESET_COUNT := V_RESET_COUNT + 1;

    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE( V_RESET_COUNT || ' signals reset to RED.' );

END RESET_ALL_SIGNALS_IMPLICIT;
/

-- Temporarily disable all traffic signal scheduler jobs for testing
-- user_scheduler_jobs: it is an Oracle data dictionary view that shows the scheduler jobs owned by the current user.
BEGIN
    FOR job_record IN (
        SELECT job_name FROM user_scheduler_jobs
        WHERE job_name LIKE 'SIG_WATCH_%'
    )
    LOOP
        DBMS_SCHEDULER.DISABLE(job_record.job_name);
    END LOOP;
END;
/

--Verify that all scheduler jobs are disabled

SELECT job_name, enabled, state FROM user_scheduler_jobs
WHERE job_name LIKE 'SIG_WATCH_%'
ORDER BY job_name;

-- Execute the implicit cursor reset procedure

BEGIN
    RESET_ALL_SIGNALS_IMPLICIT;
END;
/

-- Verify that all traffic signals were reset to RED

SELECT signal_id, signal_name, state, last_changed_at FROM traffic_signals
ORDER BY signal_id;

-- Re-enable all traffic signal scheduler jobs after testing

BEGIN
    FOR job_record IN (
        SELECT job_name FROM user_scheduler_jobs
        WHERE job_name LIKE 'SIG_WATCH_%'
    )
    LOOP
        DBMS_SCHEDULER.enable(job_record.job_name);
    END LOOP;
END;
/

-- Verify that all scheduler jobs are enabled again

SELECT job_name, enabled, state FROM user_scheduler_jobs
WHERE job_name LIKE 'SIG_WATCH_%'
ORDER BY job_name;

-------------------------------------------- PART2 --------------------------
-- Reset all traffic signals to RED using an explicit SYS_REFCURSOR

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE RESET_ALL_SIGNALS_EXPLICIT
AS
    V_SIGNAL_CURSOR SYS_REFCURSOR;
    V_SIGNAL_ID     traffic_signals.signal_id%TYPE;
    V_RESET_COUNT   NUMBER := 0;
BEGIN

    OPEN V_SIGNAL_CURSOR FOR
        SELECT signal_id FROM traffic_signals;

    LOOP

        FETCH V_SIGNAL_CURSOR INTO V_SIGNAL_ID;

        EXIT WHEN V_SIGNAL_CURSOR%NOTFOUND;

        UPDATE traffic_signals SET state = 'RED',
            last_changed_at = SYSTIMESTAMP
        WHERE signal_id = V_SIGNAL_ID;

        V_RESET_COUNT := V_RESET_COUNT + 1;

    END LOOP;

    CLOSE V_SIGNAL_CURSOR;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE( V_RESET_COUNT || ' signals reset to RED.' );

END RESET_ALL_SIGNALS_EXPLICIT;
/

-- Execute the explicit cursor reset procedure

BEGIN
    RESET_ALL_SIGNALS_EXPLICIT;
END;
/

-- Verify that all traffic signals were reset to RED

SELECT signal_id, signal_name, state, last_changed_at FROM traffic_signals
ORDER BY signal_id;

-------------------------------PART3------------------------------
-- Reset all traffic signals to RED using bulk processing

CREATE OR REPLACE PROCEDURE RESET_ALL_SIGNALS_BULK
AS
    V_SIGNAL_CURSOR SYS_REFCURSOR;

    TYPE SIGNAL_ID_TABLE_TYPE IS TABLE OF traffic_signals.signal_id%TYPE;
    V_SIGNAL_IDS SIGNAL_ID_TABLE_TYPE;

BEGIN

    OPEN V_SIGNAL_CURSOR FOR
        SELECT signal_id FROM traffic_signals;

    FETCH V_SIGNAL_CURSOR
    BULK COLLECT INTO V_SIGNAL_IDS;

    CLOSE V_SIGNAL_CURSOR;

    FORALL I IN 1 .. V_SIGNAL_IDS.COUNT

        UPDATE traffic_signals SET state = 'RED',
            last_changed_at = SYSTIMESTAMP
        WHERE signal_id = V_SIGNAL_IDS(I);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE( V_SIGNAL_IDS.COUNT || ' signals reset to RED.' );

END RESET_ALL_SIGNALS_BULK;
/

-- Execute the bulk reset procedure

BEGIN
    RESET_ALL_SIGNALS_BULK;
END;
/

-- Verify that all traffic signals were reset to RED

SELECT signal_id, signal_name, state, last_changed_at FROM traffic_signals
ORDER BY signal_id;
