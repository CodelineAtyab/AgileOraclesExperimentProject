
-- Part.1: Implicit 
CREATE OR REPLACE PROCEDURE reset_signals_implicit
AS

    v_reset_count NUMBER := 0;
    v_reset_time TIMESTAMP WITH TIME ZONE;

BEGIN

    v_reset_time := SYSTIMESTAMP AT TIME ZONE 'Asia/Muscat';

    FOR signalObj IN (
        SELECT signal_id,
               signal_name,
               state,
               last_changed_at
        FROM traffic_signals
    )
    LOOP

        UPDATE traffic_signals
        SET state = 'RED',
            last_changed_at = v_reset_time
        WHERE signal_id = signalObj.signal_id;
        v_reset_count := v_reset_count + 1;

    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(v_reset_count || ' signals reset to RED.');

END;
/

-- Run the procedure
BEGIN
    reset_signals_implicit;
END;
/

-- Checking the table 
SELECT signal_id,
       signal_name,
       state,
       last_changed_at
FROM traffic_signals
ORDER BY signal_id;


-- Part.2: Explicit

-- Ceating procedure 
CREATE OR REPLACE PROCEDURE get_next_signals (p_cursor OUT SYS_REFCURSOR)
AS
BEGIN

    OPEN p_cursor FOR
        SELECT *
        FROM traffic_signals;

END;
/

CREATE OR REPLACE PROCEDURE reset_signals_explicit
AS

    v_cursor SYS_REFCURSOR;
    v_rec traffic_signals%ROWTYPE;
    v_reset_count NUMBER := 0;
    v_reset_time TIMESTAMP WITH TIME ZONE;

BEGIN
    v_reset_time := SYSTIMESTAMP AT TIME ZONE 'Asia/Muscat';
    get_next_signals(v_cursor);

    LOOP
        FETCH v_cursor
        INTO v_rec;
        EXIT WHEN v_cursor%NOTFOUND;
        UPDATE traffic_signals
        SET state = 'RED',
            last_changed_at = v_reset_time
        WHERE signal_id = v_rec.signal_id;
        v_reset_count := v_reset_count + 1;

    END LOOP;
    CLOSE v_cursor;
    COMMIT;

    DBMS_OUTPUT.PUT_LINE(v_reset_count ||' signals reset to RED.');

END;
/

-- Testing 
BEGIN
    reset_signals_explicit;
END;
/


-- Part.3: Bulk Processing
CREATE OR REPLACE PROCEDURE reset_signals_bulk
AS

    v_cursor SYS_REFCURSOR;

    TYPE t_signal_ids IS TABLE OF
        traffic_signals.signal_id%TYPE;

    v_signal_ids t_signal_ids;
    v_reset_count NUMBER := 0;
    v_reset_time TIMESTAMP WITH TIME ZONE;

BEGIN

    v_reset_time := SYSTIMESTAMP AT TIME ZONE 'Asia/Muscat';

    OPEN v_cursor FOR
        SELECT signal_id
        FROM traffic_signals;

    LOOP

        FETCH v_cursor
        BULK COLLECT INTO v_signal_ids
        LIMIT 100;

        EXIT WHEN v_signal_ids.COUNT = 0;

        -- Bulk update
        FORALL i IN 1 .. v_signal_ids.COUNT

            UPDATE traffic_signals
            SET state = 'RED',
                last_changed_at = v_reset_time
            WHERE signal_id =
                  v_signal_ids(i);


        -- Count rows affected by the bulk UPDATE
        v_reset_count := v_reset_count + SQL%ROWCOUNT;


    END LOOP;
    CLOSE v_cursor;
    COMMIT;

    DBMS_OUTPUT.PUT_LINE(v_reset_count ||' signals reset to RED using bulk processing.');

END;
/



-- The implicit cursor is simpler because Oracle automatically handles
-- opening the cursor, fetching each row, checking when there are no more
-- rows, and closing the cursor.

-- The explicit SYS_REFCURSOR version gives us more control because we
-- manually OPEN, FETCH, check %NOTFOUND, and CLOSE the cursor.

-- Bulk processing improves performance because it fetches
-- and updates groups of rows instead of processing one row at a time.