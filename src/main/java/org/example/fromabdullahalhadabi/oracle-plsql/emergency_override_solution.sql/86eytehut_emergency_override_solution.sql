SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE reset_signals_red_implicit
IS
    v_reset_count PLS_INTEGER := 0;
BEGIN
    FOR signal_rec IN (
        SELECT signal_id
        FROM traffic_signals
        ORDER BY signal_id
    ) LOOP
        UPDATE traffic_signals
        SET state = 'RED',
            last_changed_at = SYSTIMESTAMP
        WHERE signal_id = signal_rec.signal_id;

        v_reset_count := v_reset_count + SQL%ROWCOUNT;
    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(
        v_reset_count || ' signals reset using implicit cursor.'
    );
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END reset_signals_red_implicit;
/

CREATE OR REPLACE PROCEDURE reset_signals_red_explicit
IS
    v_cursor SYS_REFCURSOR;
    v_signal_id traffic_signals.signal_id%TYPE;
    v_reset_count PLS_INTEGER := 0;
    v_cursor_open BOOLEAN := FALSE;
BEGIN
    OPEN v_cursor FOR
        SELECT signal_id
        FROM traffic_signals
        ORDER BY signal_id;

    v_cursor_open := TRUE;

    LOOP
        FETCH v_cursor INTO v_signal_id;
        EXIT WHEN v_cursor%NOTFOUND;

        UPDATE traffic_signals
        SET state = 'RED',
            last_changed_at = SYSTIMESTAMP
        WHERE signal_id = v_signal_id;

        v_reset_count := v_reset_count + SQL%ROWCOUNT;
    END LOOP;

    CLOSE v_cursor;
    v_cursor_open := FALSE;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(
        v_reset_count || ' signals reset using explicit SYS_REFCURSOR.'
    );
EXCEPTION
    WHEN OTHERS THEN
        IF v_cursor_open THEN
            CLOSE v_cursor;
        END IF;

        ROLLBACK;
        RAISE;
END reset_signals_red_explicit;
/

CREATE OR REPLACE PROCEDURE reset_signals_red_bulk
IS
    v_cursor SYS_REFCURSOR;

    TYPE t_signal_ids IS TABLE OF traffic_signals.signal_id%TYPE;

    v_signal_ids t_signal_ids;
    v_reset_count PLS_INTEGER := 0;
    v_cursor_open BOOLEAN := FALSE;
BEGIN
    OPEN v_cursor FOR
        SELECT signal_id
        FROM traffic_signals
        ORDER BY signal_id;

    v_cursor_open := TRUE;

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
    v_cursor_open := FALSE;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(
        v_reset_count || ' signals reset using BULK COLLECT and FORALL.'
    );
EXCEPTION
    WHEN OTHERS THEN
        IF v_cursor_open THEN
            CLOSE v_cursor;
        END IF;

        ROLLBACK;
        RAISE;
END reset_signals_red_bulk;
/
