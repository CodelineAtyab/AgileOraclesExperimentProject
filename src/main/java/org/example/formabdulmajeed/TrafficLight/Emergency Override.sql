CREATE OR REPLACE PROCEDURE reset_signals_proc
IS
    v_count NUMBER := 0;

BEGIN

FOR signal IN (
        SELECT signal_id
        FROM traffic_signals
    )
    LOOP

UPDATE traffic_signals
SET signal_state = 'RED',
    last_changed_at = SYSTIMESTAMP
WHERE signal_id = signal.signal_id;

v_count := v_count + 1;

END LOOP;

    DBMS_OUTPUT.PUT_LINE(
        'Total signals successfully reset: ' || v_count
    );

END;
/

SET SERVEROUTPUT ON;

BEGIN
    reset_signals_proc;
END;
/

CREATE OR REPLACE PROCEDURE reset_signals_explicit
IS
    v_cursor SYS_REFCURSOR;
    v_rec    traffic_signals%ROWTYPE;
    v_count  NUMBER := 0;

BEGIN
OPEN v_cursor FOR
SELECT *
FROM traffic_signals;

LOOP

FETCH v_cursor INTO v_rec;

    EXIT WHEN v_cursor%NOTFOUND;
UPDATE traffic_signals
SET signal_state = 'RED',
    last_changed_at = SYSTIMESTAMP
WHERE signal_id = v_rec.signal_id;

v_count := v_count + 1;

END LOOP;
CLOSE v_cursor;

DBMS_OUTPUT.PUT_LINE(
        'Total signals successfully reset: ' || v_count
    );

END;
/

SET SERVEROUTPUT ON;

BEGIN
    reset_signals_explicit;
END;
/

CREATE OR REPLACE PROCEDURE reset_signals_bulk
IS

    v_cursor SYS_REFCURSOR;

    TYPE t_signal_ids IS TABLE OF NUMBER;
    v_ids t_signal_ids;

    v_count NUMBER := 0;

BEGIN

OPEN v_cursor FOR
SELECT signal_id
FROM traffic_signals;
LOOP

FETCH v_cursor BULK COLLECT INTO v_ids LIMIT 100;

    IF v_ids.COUNT > 0 THEN

        FORALL i IN 1..v_ids.COUNT

UPDATE traffic_signals
SET signal_state = 'RED',
    last_changed_at = SYSTIMESTAMP
WHERE signal_id = v_ids(i);

v_count := v_count + v_ids.COUNT;
END IF;

    IF v_cursor%NOTFOUND THEN
    EXIT;
END IF;

END LOOP;
CLOSE v_cursor;
DBMS_OUTPUT.PUT_LINE(
        'Total signals successfully reset: ' || v_count
    );
END;
/

SET SERVEROUTPUT ON;

BEGIN
    reset_signals_bulk;
END;
/