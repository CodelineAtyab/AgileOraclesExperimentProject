-- Part 1: Reset signals using implicit cursor

SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE reset_signals_implicit
AS
    v_reset_count NUMBER := 0;
BEGIN
    FOR rec IN (
        SELECT signal_id
        FROM traffic_signals
    ) LOOP
        UPDATE traffic_signals
        SET state = 'RED',
            last_changed_at = SYSTIMESTAMP
        WHERE signal_id = rec.signal_id;

        v_reset_count := v_reset_count + 1;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE(
        'Signals reset: ' || v_reset_count
    );
END;
/

-- Test Part 1

BEGIN
    reset_signals_implicit;
END;
/

COMMIT;

SELECT signal_id,
       signal_name,
       state,
       last_changed_at
FROM traffic_signals
ORDER BY signal_id;

-- Part 2: Reset signals using SYS_REFCURSOR

CREATE OR REPLACE PROCEDURE reset_signals_explicit
AS
    v_cursor SYS_REFCURSOR;
    v_signal_id traffic_signals.signal_id%TYPE;
    v_reset_count NUMBER := 0;
BEGIN
    OPEN v_cursor FOR
        SELECT signal_id
        FROM traffic_signals;

    LOOP
        FETCH v_cursor INTO v_signal_id;

        EXIT WHEN v_cursor%NOTFOUND;

        UPDATE traffic_signals
        SET state = 'RED',
            last_changed_at = SYSTIMESTAMP
        WHERE signal_id = v_signal_id;

        v_reset_count := v_reset_count + 1;
    END LOOP;

    CLOSE v_cursor;

    DBMS_OUTPUT.PUT_LINE(
        'Signals reset: ' || v_reset_count
    );
END;
/

-- Test Part 2

UPDATE traffic_signals
SET state =
        CASE signal_id
            WHEN 1 THEN 'RED'
            WHEN 2 THEN 'YELLOW'
            WHEN 21 THEN 'GREEN'
        END,
    last_changed_at = SYSTIMESTAMP
WHERE signal_id IN (1, 2, 21);

COMMIT;

BEGIN
    reset_signals_explicit;
END;
/

COMMIT;

SELECT signal_id,
       signal_name,
       state,
       last_changed_at
FROM traffic_signals
ORDER BY signal_id;

-- Part 3: Reset signals using bulk processing

CREATE OR REPLACE PROCEDURE reset_signals_bulk
AS
    v_cursor SYS_REFCURSOR;

    TYPE t_signal_ids IS TABLE OF traffic_signals.signal_id%TYPE;
    v_signal_ids t_signal_ids;

    v_reset_count NUMBER := 0;
BEGIN
    OPEN v_cursor FOR
        SELECT signal_id
        FROM traffic_signals;

    LOOP
        FETCH v_cursor
            BULK COLLECT INTO v_signal_ids
            LIMIT 100;

        EXIT WHEN v_signal_ids.COUNT = 0;

        FORALL i IN 1 .. v_signal_ids.COUNT
            UPDATE traffic_signals
            SET state = 'RED',
                last_changed_at = SYSTIMESTAMP
            WHERE signal_id = v_signal_ids(i);

        v_reset_count := v_reset_count + SQL%ROWCOUNT;
    END LOOP;

    CLOSE v_cursor;

    DBMS_OUTPUT.PUT_LINE(
        'Signals reset: ' || v_reset_count
    );
END;
/

-- Test Part 3

UPDATE traffic_signals
SET state =
        CASE signal_id
            WHEN 1 THEN 'RED'
            WHEN 2 THEN 'YELLOW'
            WHEN 21 THEN 'GREEN'
        END,
    last_changed_at = SYSTIMESTAMP
WHERE signal_id IN (1, 2, 21);

COMMIT;

BEGIN
    reset_signals_bulk;
END;
/

COMMIT;

SELECT signal_id,
       signal_name,
       state,
       last_changed_at
FROM traffic_signals
ORDER BY signal_id;

-- The implicit cursor is easier because Oracle handles it automatically.
-- The explicit cursor gives me more control, but I have to open, fetch,
-- and close it manually.
-- Bulk processing updates many rows together, so it is better for large data.