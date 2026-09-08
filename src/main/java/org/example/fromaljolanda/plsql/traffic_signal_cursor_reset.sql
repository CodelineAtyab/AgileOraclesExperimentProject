-- ************************* Insert sample data *************************
INSERT INTO traffic_signals (signal_name, state) VALUES ('SEEB', 'RED');
INSERT INTO traffic_signals (signal_name, state) VALUES ('BOWSHAR', 'YELLOW');
INSERT INTO traffic_signals (signal_name, state) VALUES ('MUSCAT', 'GREEN');
INSERT INTO traffic_signals (signal_name, state) VALUES ('AL KHOUDH', 'YELLOW');
COMMIT;

SELECT * FROM traffic_signals;

SET SERVEROUTPUT ON; -- Enable output from DBMS_OUTPUT.PUT_LINE

-- ************************* 1. Implicit Cursor *************************
CREATE OR REPLACE PROCEDURE reset_signals_implicit
AS
    v_count NUMBER := 0;
BEGIN
    FOR current_row IN (
        SELECT signal_id FROM traffic_signals
    )
    
    LOOP
        UPDATE traffic_signals
        SET state = 'RED', last_changed_at = SYSTIMESTAMP
        WHERE signal_id = current_row.signal_id;
        v_count := v_count + 1;
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('Signals reset using implicit cursor: ' || v_count);
    
END;
/
----------------------
-- Run 
BEGIN
    reset_signals_implicit;
END;
/
----------------------
-- Check result
SELECT * FROM traffic_signals;

--------------------------------------------------------------------------------
-- Reset sample data
UPDATE traffic_signals SET state = 'YELLOW' WHERE signal_id = 1;
UPDATE traffic_signals SET state = 'RED' WHERE signal_id = 2;
UPDATE traffic_signals SET state = 'GREEN' WHERE signal_id = 3;
UPDATE traffic_signals SET state = 'YELLOW' WHERE signal_id = 4;
COMMIT;
----------------------
SELECT * FROM traffic_signals;
--------------------------------------------------------------------------------

-- ************************* 2. Explicit Cursor *************************
CREATE OR REPLACE PROCEDURE reset_signals_explicit
AS
    v_cursor SYS_REFCURSOR;
    v_signal_id NUMBER;
    v_count NUMBER := 0;
BEGIN
    OPEN v_cursor FOR
        SELECT signal_id FROM traffic_signals;
        
    LOOP
        FETCH v_cursor INTO v_signal_id;
        EXIT WHEN v_cursor%NOTFOUND;
        UPDATE traffic_signals
        SET state = 'RED', last_changed_at = SYSTIMESTAMP
        WHERE signal_id = v_signal_id;
        v_count := v_count + 1;
    END LOOP;

    CLOSE v_cursor;

    DBMS_OUTPUT.PUT_LINE('Signals reset using explicit cursor: ' || v_count);

END;
/
----------------------
-- Run 
BEGIN
    reset_signals_explicit;
END;
/
----------------------
-- Check result
SELECT * FROM traffic_signals;

--------------------------------------------------------------------------------
-- Reset sample data
UPDATE traffic_signals SET state = 'YELLOW' WHERE signal_id = 1;
UPDATE traffic_signals SET state = 'RED' WHERE signal_id = 2;
UPDATE traffic_signals SET state = 'GREEN' WHERE signal_id = 3;
UPDATE traffic_signals SET state = 'YELLOW' WHERE signal_id = 4;
COMMIT;
----------------------
SELECT * FROM traffic_signals;
--------------------------------------------------------------------------------

-- ************************* 3. Bulk Processing *************************
CREATE OR REPLACE PROCEDURE reset_signals_bulk
AS
    v_cursor SYS_REFCURSOR;
    TYPE signal_id_list IS TABLE OF NUMBER;
    v_signal_ids signal_id_list;
    v_count NUMBER := 0;

BEGIN
    OPEN v_cursor FOR
        SELECT signal_id FROM traffic_signals;

    LOOP
        FETCH v_cursor
        BULK COLLECT INTO v_signal_ids
        LIMIT 100;
        EXIT WHEN v_signal_ids.COUNT = 0;

        FORALL i IN 1 .. v_signal_ids.COUNT
            UPDATE traffic_signals
            SET state = 'RED', last_changed_at = SYSTIMESTAMP
            WHERE signal_id = v_signal_ids(i);

        v_count := v_count + v_signal_ids.COUNT;
    END LOOP;

    CLOSE v_cursor;

    DBMS_OUTPUT.PUT_LINE('Signals reset using bulk processing: ' || v_count);

END;
/
----------------------
-- Run 
BEGIN
    reset_signals_bulk;
END;
/
----------------------
-- Check result
SELECT * FROM traffic_signals;


-- ************ Difference between Implicit and Explicit Cursor ************ 
/* 
=> Implicit cursor is easier because Oracle handles
opening, fetching and closing the cursor automatically.

=> With explicit cursor, we have to open, fetch and close
the cursor ourselves. This gives us more control,
but we need to write and manage more code.
*/