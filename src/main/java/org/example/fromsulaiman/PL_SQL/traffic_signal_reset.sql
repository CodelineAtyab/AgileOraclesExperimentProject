/*
  TRAFFIC SIGNAL EMERGENCY RESET - PARTS 1, 2, AND 3
  Three procedures that reset every traffic signal to RED
  and refresh LAST_CHANGED_AT.
  Part 1: implicit cursor.
  Part 2: explicit SYS_REFCURSOR.
  Part 3: SYS_REFCURSOR with BULK COLLECT and FORALL.
*/

-- Enable DBMS_OUTPUT so PUT_LINE messages are displayed
SET SERVEROUTPUT ON


/* =========================================================
   PART 1 - IMPLICIT CURSOR RESET
   ========================================================= */
CREATE OR REPLACE PROCEDURE reset_signals_implicitcursor
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
DBMS_OUTPUT.PUT_LINE('Signals reset: ' || v_reset_count);
END;
/


/* =========================================================
   PART 2 - EXPLICIT CURSOR USING SYS_REFCURSOR
   OPEN -> FETCH -> EXIT WHEN %NOTFOUND -> UPDATE -> CLOSE
   ========================================================= */
CREATE OR REPLACE PROCEDURE reset_signals_explicitcursor
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
UPDATE traffic_signals
SET state = 'RED',
    last_changed_at = SYSTIMESTAMP
WHERE signal_id = v_signal_id;
v_reset_count := v_reset_count + 1;
END LOOP;
CLOSE v_cursor;
COMMIT;
DBMS_OUTPUT.PUT_LINE('Signals reset: ' || v_reset_count);
EXCEPTION
    WHEN OTHERS THEN
        IF v_cursor%ISOPEN THEN
            CLOSE v_cursor;
END IF;
ROLLBACK;
RAISE;
END;
/


/* =========================================================
   PART 3 - EXPLICIT SYS_REFCURSOR + BULK UPDATE
   1. Open the cursor.
   2. BULK COLLECT all IDs into a collection.
   3. Close the cursor.
   4. Update them all with FORALL.
   ========================================================= */
CREATE OR REPLACE PROCEDURE reset_signals_bulkcursor
AS
    v_cursor SYS_REFCURSOR;
    TYPE signal_id_list IS TABLE OF traffic_signals.signal_id%TYPE;
    v_signal_ids signal_id_list;
BEGIN
OPEN v_cursor FOR
SELECT signal_id
FROM traffic_signals;
FETCH v_cursor BULK COLLECT INTO v_signal_ids;
CLOSE v_cursor;

IF v_signal_ids.COUNT > 0 THEN
        FORALL i IN 1 .. v_signal_ids.COUNT
UPDATE traffic_signals
SET state = 'RED',
    last_changed_at = SYSTIMESTAMP
WHERE signal_id = v_signal_ids(i);
END IF;
COMMIT;
DBMS_OUTPUT.PUT_LINE('Signals reset: ' || v_signal_ids.COUNT);
EXCEPTION
    WHEN OTHERS THEN
        IF v_cursor%ISOPEN THEN
            CLOSE v_cursor;
END IF;
ROLLBACK;
RAISE;
END;
/


/* =========================================================
   TEST - scramble states, run one procedure, verify all RED
   ========================================================= */

-- 1) mix up the states so the reset is visible
UPDATE traffic_signals
SET state = CASE MOD(signal_id, 3)
                WHEN 0 THEN 'GREEN'
                WHEN 1 THEN 'YELLOW'
                ELSE 'RED'
    END;
COMMIT;

-- before
SELECT signal_id, signal_name, state FROM traffic_signals ORDER BY signal_id;

-- 2) run ONE of these
EXEC reset_signals_implicitcursor;
-- EXEC reset_signals_explicitcursor;
-- EXEC reset_signals_bulkcursor;

-- after (should all be RED, time updated)
SELECT signal_id, signal_name, state, last_changed_at
FROM traffic_signals ORDER BY signal_id;

-- 3) check: result must be 0
SELECT COUNT(*) AS rows_not_red FROM traffic_signals WHERE state <> 'RED';
