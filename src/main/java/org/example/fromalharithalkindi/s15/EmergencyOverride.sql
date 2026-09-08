-- Test data setup
INSERT INTO traffic_signals (signal_name) VALUES ('Test A');
INSERT INTO traffic_signals (signal_name) VALUES ('Test B');
INSERT INTO traffic_signals (signal_name) VALUES ('Test C');
COMMIT;

UPDATE traffic_signals SET state = 'YELLOW' WHERE signal_name = 'Test B';
UPDATE traffic_signals SET state = 'GREEN'  WHERE signal_name = 'Test C';
COMMIT;

-- Confirm mixed starting state
SELECT signal_id, signal_name, state, last_changed_at FROM traffic_signals ORDER BY signal_id;

-- Part 1 procedure
CREATE OR REPLACE PROCEDURE reset_all_signals_implicit IS
  v_count PLS_INTEGER := 0;
BEGIN
FOR rec IN ( SELECT signal_id FROM traffic_signals ) LOOP
UPDATE traffic_signals
SET state = 'RED',
    last_changed_at = SYSTIMESTAMP
WHERE signal_id = rec.signal_id;
v_count := v_count + 1;
END LOOP;
  DBMS_OUTPUT.PUT_LINE('Signals reset: ' || v_count);
END reset_all_signals_implicit;
/

-- Run and verify
SET SERVEROUTPUT ON;
EXEC reset_all_signals_implicit;
SELECT signal_id, signal_name, state, last_changed_at FROM traffic_signals ORDER BY signal_id;

-- ===== Part 2 test script: reset_all_signals_explicit =====

-- Step 1: Mix up states so the test actually proves something
UPDATE traffic_signals SET state = 'YELLOW' WHERE signal_id = 11;
UPDATE traffic_signals SET state = 'GREEN'  WHERE signal_id = 12;
COMMIT;

-- Step 2: Confirm mixed starting state
SELECT signal_id, signal_name, state, last_changed_at
FROM traffic_signals
ORDER BY signal_id;

-- Step 3: Part 2 procedure (explicit SYS_REFCURSOR)
CREATE OR REPLACE PROCEDURE reset_all_signals_explicit IS
  l_cur       SYS_REFCURSOR;
  l_signal_id traffic_signals.signal_id%TYPE;
  v_count     PLS_INTEGER := 0;
BEGIN
OPEN l_cur FOR SELECT signal_id FROM traffic_signals;

LOOP
FETCH l_cur INTO l_signal_id;
    EXIT WHEN l_cur%NOTFOUND;

UPDATE traffic_signals
SET state = 'RED',
    last_changed_at = SYSTIMESTAMP
WHERE signal_id = l_signal_id;

v_count := v_count + 1;
END LOOP;

CLOSE l_cur;

DBMS_OUTPUT.PUT_LINE('Signals reset: ' || v_count);
END reset_all_signals_explicit;
/

-- Step 4: Run it and verify
SET SERVEROUTPUT ON;
EXEC reset_all_signals_explicit;

SELECT signal_id, signal_name, state, last_changed_at
FROM traffic_signals
ORDER BY signal_id;


CREATE OR REPLACE PROCEDURE reset_all_signals_bulk IS
  TYPE t_signal_ids IS TABLE OF traffic_signals.signal_id%TYPE;
  l_ids t_signal_ids;
BEGIN

SELECT signal_id
           BULK COLLECT INTO l_ids
FROM traffic_signals;

FORALL i IN 1 .. l_ids.COUNT
UPDATE traffic_signals
SET state = 'RED',
    last_changed_at = SYSTIMESTAMP
WHERE signal_id = l_ids(i);

DBMS_OUTPUT.PUT_LINE('Signals reset: ' || SQL%ROWCOUNT);

END reset_all_signals_bulk;
/



-- Mix up states first
UPDATE traffic_signals SET state = 'YELLOW' WHERE signal_id = 11;
UPDATE traffic_signals SET state = 'GREEN'  WHERE signal_id = 12;
COMMIT;

SELECT signal_id, signal_name, state, last_changed_at FROM traffic_signals ORDER BY signal_id;

SET SERVEROUTPUT ON;
EXEC reset_all_signals_bulk;

SELECT signal_id, signal_name, state, last_changed_at FROM traffic_signals ORDER BY signal_id;