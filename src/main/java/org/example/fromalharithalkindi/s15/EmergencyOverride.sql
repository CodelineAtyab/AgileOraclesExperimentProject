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