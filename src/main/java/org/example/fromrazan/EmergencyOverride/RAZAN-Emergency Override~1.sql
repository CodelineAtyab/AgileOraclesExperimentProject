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


create or replace procedure get_next_signals (p_cursor OUT SYS_REFCURSOR )
as 
 begin
   open p_cursor for select signal_id, signal_name from traffic_signals;
 end get_next_signals;
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
    -- FETCH multiple rows at once
    FETCH v_cursor BULK COLLECT INTO v_signal_ids;
    -- CLOSE
    CLOSE v_cursor;
    -- BULK UPDATE
    IF v_signal_ids.COUNT > 0 THEN
        FORALL i IN 1 .. v_signal_ids.COUNT
            UPDATE traffic_signals
            SET state = 'RED',
                last_changed_at = SYSTIMESTAMP
            WHERE signal_id = v_signal_ids(i);
        v_count := SQL%ROWCOUNT;
    END IF;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE( 'Signals reset: ' || v_count);
END;
/

--test
SET SERVEROUTPUT ON;

BEGIN
    reset_signals_implicit;
END;
/

CREATE OR REPLACE PROCEDURE get_next_signals (
    p_cursor OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN p_cursor FOR
        SELECT *
        FROM traffic_signals;
END get_next_signals;
/

SHOW ERRORS PROCEDURE get_next_signals;


CREATE OR REPLACE PROCEDURE reset_signals_explicit
IS
    v_cursor SYS_REFCURSOR;
    v_rec traffic_signals%ROWTYPE;
    v_count NUMBER := 0;
BEGIN
    -- OPEN
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
    DBMS_OUTPUT.PUT_LINE( 'Signals reset: ' || v_count );

END reset_signals_explicit;
/

SHOW ERRORS PROCEDURE reset_signals_explicit;

SELECT object_name,
       object_type,
       status
FROM user_objects
WHERE object_name IN (
    'GET_NEXT_SIGNALS',
    'RESET_SIGNALS_EXPLICIT'
);



BEGIN
    reset_signals_explicit;
END;
/

SELECT object_name,
       status
FROM user_objects
WHERE object_name = 'RESET_SIGNALS_EXPLICIT';

SHOW ERRORS PROCEDURE reset_signals_explicit;






