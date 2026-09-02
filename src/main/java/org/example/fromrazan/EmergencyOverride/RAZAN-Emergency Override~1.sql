begin
for signalObj in (select * from traffic_signals) loop
 dbms_output.put_line(signalObj.signal_name);
end loop;

end;
/



begin
for signalObj in (select * from traffic_signals) loop
update traffic_signals set last_changed_at = systimestamp where signal_id = signalObj.signal_id;
dbms_output.put_line(signalObj.signal_id || ' ' || signalObj.signal_id || ' ' || signalObj.signal_id );
end loop;

end;
/

CREATE OR REPLACE PROCEDURE reset_signals_implicit
IS
    v_count NUMBER := 0;
BEGIN
FOR signalObj IN (
        SELECT signal_id
        FROM traffic_signals  )
    LOOP

UPDATE traffic_signals
SET state = 'RED',
    last_changed_at = SYSTIMESTAMP
WHERE signal_id = signalObj.signal_id;

v_count := v_count + 1;

END LOOP;

COMMIT;

DBMS_OUTPUT.PUT_LINE( 'Implicit cursor - Signals reset: ' || v_count );

END reset_signals_implicit;
/




--part2:

SELECT signal_id, signal_name FROM traffic_signals;


CREATE OR REPLACE PROCEDURE reset_signals_explicit
IS
    v_cursor SYS_REFCURSOR;
    v_rec traffic_signals%ROWTYPE;
    v_count NUMBER := 0;
BEGIN
    get_next_signals(v_cursor);
    LOOP
FETCH v_cursor INTO v_rec;
        EXIT WHEN v_cursor%NOTFOUND;
UPDATE traffic_signals
SET state = 'RED',
    last_changed_at = SYSTIMESTAMP
WHERE signal_id = v_rec.signal_id;

v_count := v_count + 1;

END LOOP;
CLOSE v_cursor;
COMMIT;

DBMS_OUTPUT.PUT_LINE('Explicit cursor - Signals reset: ' || v_count);

END reset_signals_explicit;
/


DECLARE
v_cursor SYS_REFCURSOR;
    v_rec traffic_signals%ROWTYPE;

BEGIN
    get_next_signals(v_cursor);

    LOOP
FETCH v_cursor INTO v_rec;
        EXIT WHEN v_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE( v_rec.signal_id || ' ' ||v_rec.signal_name || ' ' || v_rec.state );
END LOOP;
CLOSE v_cursor;
END;
/


--p3Bullk:

CREATE OR REPLACE PROCEDURE reset_signals_bulk
IS
    TYPE signal_id_list IS
        TABLE OF traffic_signals.signal_id%TYPE;

    v_signal_ids signal_id_list;
    v_cursor SYS_REFCURSOR;
    v_count NUMBER := 0;

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
v_count := SQL%ROWCOUNT;
END IF;
COMMIT;
DBMS_OUTPUT.PUT_LINE('Bulk update - Signals reset: ' || v_count );

END reset_signals_bulk;
/


--test
SET SERVEROUTPUT ON;


BEGIN
    reset_signals_implicit;
END;
/


BEGIN
    reset_signals_explicit;
END;
/


BEGIN
    reset_signals_bulk;
END;
/

SELECT signal_id,
       signal_name,
       state,
       last_changed_at
FROM traffic_signals
ORDER BY signal_id;



---Then check all procedures:
SELECT object_name,
       object_type,
       status
FROM user_objects
WHERE object_name IN (
                      'RESET_SIGNALS_IMPLICIT',
                      'GET_NEXT_SIGNALS',
                      'RESET_SIGNALS_EXPLICIT',
                      'RESET_SIGNALS_BULK'
    )
ORDER BY object_name;