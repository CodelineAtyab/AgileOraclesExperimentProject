-- EMERGENCY OVERRIDE — RESET EVERY SIGNAL TO RED

CREATE OR REPLACE PROCEDURE emergency_reset_implicit
AS
    v_reset_count NUMBER := 0;
BEGIN
    FOR signal_row IN (
        SELECT signal_id
        FROM traffic_signals
    )
    LOOP
        UPDATE traffic_signals
        SET state = 'RED',
            last_changed_at = SYSTIMESTAMP
        WHERE signal_id = signal_row.signal_id;

        v_reset_count := v_reset_count + 1;

    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE( 'Signals reset: ' || v_reset_count);

END emergency_reset_implicit;
/

-- Test Part 1

BEGIN
    emergency_reset_implicit;
END;
/


-- Verify results

SELECT signal_id,
       signal_name,
       state,
       last_changed_at
FROM traffic_signals
ORDER BY signal_id;

-- PART 2 - EXPLICIT CURSOR 

CREATE OR REPLACE PROCEDURE emergency_reset_explicit
AS
    v_cursor      SYS_REFCURSOR;
    v_signal_id   traffic_signals.signal_id%TYPE;
    v_reset_count NUMBER := 0;

BEGIN
    OPEN v_cursor FOR
        SELECT signal_id
        FROM traffic_signals;

    LOOP
        FETCH v_cursor INTO v_signal_id;
        EXIT WHEN v_cursor%NOTFOUND;

        UPDATE traffic_signals SET state = 'RED', last_changed_at = SYSTIMESTAMP
        WHERE signal_id = v_signal_id;
        
        v_reset_count := v_reset_count + 1;
    END LOOP;

    CLOSE v_cursor;
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Signals reset: ' || v_reset_count);

END emergency_reset_explicit;
/

-- Test Part 2

BEGIN
    emergency_reset_explicit;
END;
/


-- Verify results

SELECT signal_id, signal_name, state, last_changed_at
FROM traffic_signals ORDER BY signal_id;

-- PART 3 - EXPLICIT SYS_REFCURSOR + BULK UPDATE

CREATE OR REPLACE PROCEDURE emergency_reset_bulk
AS
    v_cursor SYS_REFCURSOR;
    TYPE signal_id_list IS TABLE OF traffic_signals.signal_id%TYPE;
    v_signal_ids signal_id_list;

BEGIN

    OPEN v_cursor FOR SELECT signal_id FROM traffic_signals;
    FETCH v_cursor BULK COLLECT INTO v_signal_ids;
    
    CLOSE v_cursor;

    IF v_signal_ids.COUNT > 0 THEN
        FORALL i IN 1 .. v_signal_ids.COUNT
            UPDATE traffic_signals SET state = 'RED', last_changed_at = SYSTIMESTAMP
            WHERE signal_id = v_signal_ids(i);
    END IF;
    COMMIT;

    DBMS_OUTPUT.PUT_LINE( 'Signals reset using bulk processing: ' || v_signal_ids.COUNT);

END emergency_reset_bulk;
/
