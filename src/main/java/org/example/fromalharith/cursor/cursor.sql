SET SERVEROUTPUT ON;
-- implicit cursor
CREATE OR REPLACE PROCEDURE reset_signals_implicit
AS
  v_count NUMBER := 0;
BEGIN
FOR r IN (SELECT signal_id FROM traffic_signals) LOOP
UPDATE traffic_signals
SET state = 'RED',
    last_changed_at = SYSTIMESTAMP
WHERE signal_id = r.signal_id;

v_count := v_count + 1;
END LOOP;

COMMIT;
DBMS_OUTPUT.PUT_LINE(v_count || ' signals reset.');
END;
/

-- TEST implicit cursor
UPDATE traffic_signals SET state = 'YELLOW' WHERE MOD(signal_id, 3) = 1;
UPDATE traffic_signals SET state = 'GREEN'  WHERE MOD(signal_id, 3) = 2;
UPDATE traffic_signals SET state = 'RED'    WHERE MOD(signal_id, 3) = 0;
COMMIT;

SELECT signal_id, signal_name, state, last_changed_at
FROM traffic_signals
ORDER BY signal_id;

EXEC reset_signals_implicit;

SELECT signal_id, signal_name, state, last_changed_at
FROM traffic_signals
ORDER BY signal_id;


-- explicit cursor
CREATE OR REPLACE PROCEDURE reset_signals_explicit
AS
  v_cursor SYS_REFCURSOR;
  v_id     NUMBER;
  v_count  NUMBER := 0;
BEGIN
OPEN v_cursor FOR
SELECT signal_id FROM traffic_signals;

LOOP
FETCH v_cursor INTO v_id;
    EXIT WHEN v_cursor%NOTFOUND;

UPDATE traffic_signals
SET state = 'RED',
    last_changed_at = SYSTIMESTAMP
WHERE signal_id = v_id;

v_count := v_count + 1;
END LOOP;

CLOSE v_cursor;

COMMIT;
DBMS_OUTPUT.PUT_LINE(v_count || ' signals reset.');
END;
/


-- TEST explicit cursor
UPDATE traffic_signals SET state = 'YELLOW' WHERE MOD(signal_id, 3) = 1;
UPDATE traffic_signals SET state = 'GREEN'  WHERE MOD(signal_id, 3) = 2;
UPDATE traffic_signals SET state = 'RED'    WHERE MOD(signal_id, 3) = 0;
COMMIT;

SELECT signal_id, signal_name, state, last_changed_at
FROM traffic_signals
ORDER BY signal_id;

EXEC reset_signals_explicit;

SELECT signal_id, signal_name, state, last_changed_at
FROM traffic_signals
ORDER BY signal_id;


-- bulk update
CREATE OR REPLACE PROCEDURE reset_signals_bulk
AS
  TYPE t_ids IS TABLE OF NUMBER;
  v_ids   t_ids;
  v_count NUMBER := 0;
BEGIN
SELECT signal_id
           BULK COLLECT INTO v_ids
FROM traffic_signals;

FORALL i IN 1 .. v_ids.COUNT
UPDATE traffic_signals
SET state = 'RED',
    last_changed_at = SYSTIMESTAMP
WHERE signal_id = v_ids(i);

v_count := v_ids.COUNT;

COMMIT;
DBMS_OUTPUT.PUT_LINE(v_count || ' signals reset.');
END;
/


-- TEST bulk update
UPDATE traffic_signals SET state = 'YELLOW' WHERE MOD(signal_id, 3) = 1;
UPDATE traffic_signals SET state = 'GREEN'  WHERE MOD(signal_id, 3) = 2;
COMMIT;

SELECT signal_id, signal_name, state, last_changed_at
FROM traffic_signals
ORDER BY signal_id;

EXEC reset_signals_bulk;

SELECT signal_id, signal_name, state, last_changed_at
FROM traffic_signals
ORDER BY signal_id;
