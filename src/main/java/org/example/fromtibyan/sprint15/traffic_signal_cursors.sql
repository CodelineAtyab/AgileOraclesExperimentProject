SET SERVEROUTPUT ON;
---------- cursors ----------

-- PART 1:IMPLICIT CURSORS
-- server manages opening and closing the cursor
CREATE OR REPLACE PROCEDURE RESET_ALL_SIGNALS_TO_RED_IMPLICIT AS
  v_count NUMBER := 0;
BEGIN
FOR signal IN (SELECT signal_id FROM traffic_signals) LOOP
UPDATE traffic_signals SET STATE = 'RED', last_changed_at = systimestamp WHERE signal_id = signal.signal_id;
v_count := v_count + 1; -- TO DISPLAY THE NUMBER OF TRAFFIC SIGNALS RESET
END LOOP;
COMMIT;
DBMS_OUTPUT.PUT_LINE( v_count || ' signals were reset');
END;
/

-- RUNNING THE PROCEDURE
BEGIN
  RESET_ALL_SIGNALS_TO_RED_IMPLICIT();
END;
/

-- testing
SELECT * FROM TRAFFIC_SIGNALS;


-- PART 2: EXPLICIT CURSORS
-- manage opening and closing the cursor ourselves (maually)
create or replace procedure RESET_ALL_SIGNALS_TO_RED_EXPLICIT (p_cursor OUT SYS_REFCURSOR) -- 'out' is used to send data back to whoever calls the procedure
as
begin
open p_cursor for select signal_id, signal_name, state, last_changed_at from traffic_signals; -- opens cursor for this query
end RESET_ALL_SIGNALS_TO_RED_EXPLICIT;
/
 -- anonymous block
declare
v_cursor SYS_REFCURSOR;
  v_rec    traffic_signals%ROWTYPE; -- making sure it is the correct datatype
  v_count  NUMBER := 0;
begin
  RESET_ALL_SIGNALS_TO_RED_EXPLICIT(v_cursor); -- CALLING THE PROCEDURE

  loop
fetch v_cursor into v_rec;
    exit when v_cursor%NOTFOUND; -- STOP LOOP AFTER LAST RECORD
update traffic_signals set state = 'RED', last_changed_at = systimestamp where signal_id = v_rec.signal_id; -- V_REC.SIGNAL_ID GETS THE ENTIRE ROW FOR UPDATE
v_count := v_count + 1;
end loop;

close v_cursor;
commit;
DBMS_OUTPUT.PUT_LINE( v_count || ' signals were reset');
end;
/

-- testing
SELECT * FROM TRAFFIC_SIGNALS;


-- PART 3: BULK UPDATE
-- updating in bulk and not row by row
CREATE OR REPLACE PROCEDURE RESET_SIGNALS_TO_RED_IN_BULK AS
  TYPE t_ids IS TABLE OF NUMBER; -- defining a new collection type as a table of numbers (blueprint)
  -- number datatype beacuse it is holding the thing i am finding rows by
  v_ids t_ids; -- v_ids is a datatype
BEGIN
SELECT signal_id BULK COLLECT INTO v_ids FROM traffic_signals; -- this gets the query once and pulls every single signal_id from every row all at once

FORALL i IN 1 .. v_ids.COUNT -- takes the value of the count of v_ids and creates the update statement based on the count (bulk update)
UPDATE traffic_signals SET state = 'RED', last_changed_at = systimestamp WHERE signal_id = v_ids(i);

COMMIT;
DBMS_OUTPUT.PUT_LINE( v_ids.COUNT || ' signals were reset');
END;
/

-- RUNNING THE BULK PROCEDURE
BEGIN
  RESET_SIGNALS_TO_RED_IN_BULK();
END;
/

-- testing
SELECT * FROM TRAFFIC_SIGNALS;