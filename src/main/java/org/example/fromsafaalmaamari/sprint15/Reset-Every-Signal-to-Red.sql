--Part one Implicit cursor

create or replace procedure reset_signals_implicit as v_count NUMBER := 0;
begin
for r_signal in ( select signal_id from traffic_signals) loop
update traffic_signals set state = 'RED', last_changed_at = SYSTIMESTAMP where signal_id = r_signal.signal_id;
v_count := v_count + 1;
end loop;
commit;
dbms_output.put_line( 'signals reset: ' || v_count );
end;
/


BEGIN
    reset_signals_implicit;
END;
/


--Part two Explicit cursor via 'SYS_REFCURSOR'

create or replace procedure reset_signals_refcursor as
  v_cursor SYS_REFCURSOR;
  v_signal_id traffic_signals.signal_id%TYPE;
  v_count NUMBER := 0;
begin
OPEN v_cursor for select signal_id from traffic_signals; loop
FETCH v_cursor into v_signal_id;
  EXIT when v_cursor%NOTFOUND;
UPDATE traffic_signals set state = 'RED', last_changed_at = SYSTIMESTAMP where signal_id = v_signal_id;
v_count := v_count +1;
end loop;
CLOSE v_cursor;
commit;
dbms_output.put_line( 'signals reset: ' || v_count);
end;
/



BEGIN
    reset_signals_refcursor;
END;
/

--part three Bulk update

create or replace procedure reset_signals_bulk as
  TYPE t_signal_ids is table of traffic_signals.signal_id%TYPE;
  v_signal_ids t_signal_ids;
  v_cursor SYS_REFCURSOR;
begin
OPEN v_cursor for select signal_id from traffic_signals;
FETCH v_cursor BULK COLLECT into v_signal_ids;
CLOSE v_cursor;
FORALL i in 1 .. v_signal_ids.COUNT
UPDATE traffic_signals set state = 'RED', last_changed_at = SYSTIMESTAMP where signal_id = v_signal_ids(i);
commit;
dbms_output.put_line( 'signals reset: ' || v_signal_ids.count);
end;
/

BEGIN
    reset_signals_bulk;
END;
/

--for testing

UPDATE traffic_signals
SET state = 'GREEN'
WHERE signal_id = 8;

UPDATE traffic_signals
SET state = 'YELLOW'
WHERE signal_id = 9;

UPDATE traffic_signals
SET state = 'GREEN'
WHERE signal_id = 10;

COMMIT;

SELECT signal_id,
       signal_name,
       state
FROM traffic_signals
ORDER BY signal_id;

--the is different between the two versions:
--using implicit cursor Oracle automatically opens, fetches, and closes the cursor.less code, less manual control.
--using explicit cursor (SYS_REFCURSOR), we manually open the cursor, fetch rows one by one, check %NOTFOUND, and close the cursor.
--it gives more control, but needs more codes.