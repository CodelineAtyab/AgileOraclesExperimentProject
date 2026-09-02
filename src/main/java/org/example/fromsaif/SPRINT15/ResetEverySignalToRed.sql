SET SERVEROUTPUT ON;


------ Part 1 - Reset signals using an implicit cursor ------

CREATE OR REPLACE PROCEDURE reset_signals_implicit
AS
    v_reset_count NUMBER := 0;
BEGIN
FOR signal_record IN (
        SELECT signal_id
        FROM traffic_signals
    )
    LOOP
UPDATE traffic_signals
SET state = 'RED',
    last_changed_at =
        SYSTIMESTAMP AT TIME ZONE 'Asia/Muscat'
WHERE signal_id = signal_record.signal_id;

v_reset_count := v_reset_count + 1;
END LOOP;

    DBMS_OUTPUT.PUT_LINE(
        'Signals reset: ' || v_reset_count
    );
END;
/


------ Part 2 - Reset signals using an explicit SYS_REFCURSOR ------

CREATE OR REPLACE PROCEDURE reset_signals_refcursor
AS
    v_signal_cursor SYS_REFCURSOR;

    v_signal_id   traffic_signals.signal_id%TYPE;
    v_reset_count NUMBER := 0;
BEGIN
OPEN v_signal_cursor FOR
SELECT signal_id
FROM traffic_signals;

LOOP
FETCH v_signal_cursor
        INTO v_signal_id;

        EXIT WHEN v_signal_cursor%NOTFOUND;

UPDATE traffic_signals
SET state = 'RED',
    last_changed_at =
        SYSTIMESTAMP AT TIME ZONE 'Asia/Muscat'
WHERE signal_id = v_signal_id;

v_reset_count := v_reset_count + 1;
END LOOP;

CLOSE v_signal_cursor;

DBMS_OUTPUT.PUT_LINE(
        'Signals reset: ' || v_reset_count
    );

EXCEPTION
    WHEN OTHERS THEN
        IF v_signal_cursor%ISOPEN THEN
            CLOSE v_signal_cursor;
END IF;

        RAISE;
END;
/


------ Part 3 - Reset signals using bulk processing ------

CREATE OR REPLACE PROCEDURE reset_signals_bulk
AS
    v_signal_cursor SYS_REFCURSOR;

    TYPE t_signal_id_collection IS TABLE OF
        traffic_signals.signal_id%TYPE
        INDEX BY PLS_INTEGER;

    v_signal_ids t_signal_id_collection;

    v_batch_size  CONSTANT PLS_INTEGER := 100;
    v_reset_count NUMBER := 0;
BEGIN
OPEN v_signal_cursor FOR
SELECT signal_id
FROM traffic_signals;

LOOP
FETCH v_signal_cursor
        BULK COLLECT INTO v_signal_ids
        LIMIT v_batch_size;

        EXIT WHEN v_signal_ids.COUNT = 0;

        FORALL collection_index IN 1 .. v_signal_ids.COUNT
UPDATE traffic_signals
SET state = 'RED',
    last_changed_at =
        SYSTIMESTAMP AT TIME ZONE 'Asia/Muscat'
WHERE signal_id =
      v_signal_ids(collection_index);

v_reset_count :=
            v_reset_count + SQL%ROWCOUNT;
END LOOP;

CLOSE v_signal_cursor;

DBMS_OUTPUT.PUT_LINE(
        'Signals reset: ' || v_reset_count
    );

EXCEPTION
    WHEN OTHERS THEN
        IF v_signal_cursor%ISOPEN THEN
            CLOSE v_signal_cursor;
END IF;

        RAISE;
END;
/

