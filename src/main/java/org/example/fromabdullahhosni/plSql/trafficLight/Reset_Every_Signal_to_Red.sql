/*
  TRAFFIC SIGNAL EMERGENCY RESET - PARTS 1, 2, AND 3

  I built three procedures that reset every traffic signal to RED
  and refresh LAST_CHANGED_AT.

  Part 1: I use an implicit cursor.
  Part 2: I use an explicit SYS_REFCURSOR.
  Part 3: I use SYS_REFCURSOR with BULK COLLECT and FORALL.
*/


/* =========================================================
   PART 1 - IMPLICIT CURSOR RESET

   I use a cursor FOR loop here.
   Oracle automatically opens, fetches, and closes the cursor for me.
   ========================================================= */

--/
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

    DBMS_OUTPUT.PUT_LINE(
        'Signals reset: ' || v_reset_count
    );

END;
/

/*
  In this version, I let Oracle manage the cursor lifecycle
  automatically. My code is shorter and simpler, but I have
  less manual control over how rows are fetched.
*/


/* =========================================================
   PART 2 - EXPLICIT CURSOR USING SYS_REFCURSOR

   I write the cursor lifecycle manually:
   OPEN -> FETCH -> EXIT WHEN %NOTFOUND -> UPDATE -> CLOSE
   ========================================================= */

--/
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

    DBMS_OUTPUT.PUT_LINE(
        'Signals reset: ' || v_reset_count
    );

EXCEPTION
    WHEN OTHERS THEN

        IF v_cursor%ISOPEN THEN
            CLOSE v_cursor;
        END IF;

        ROLLBACK;
        RAISE;

END;
/

/*
  In this version, I manually control OPEN, FETCH, and CLOSE.
  This gives me more control over row retrieval, but it also
  means I must manage the cursor correctly myself.
*/


/* =========================================================
   PART 3 - EXPLICIT SYS_REFCURSOR + BULK UPDATE

   Instead of fetching and updating one row at a time, I:
   1. Open the SYS_REFCURSOR.
   2. Fetch all signal IDs into a collection using BULK COLLECT.
   3. Close the cursor.
   4. Update the collected rows using FORALL.
   ========================================================= */

--/
CREATE OR REPLACE PROCEDURE reset_signals_bulkcursor
AS
    v_cursor SYS_REFCURSOR;

    TYPE signal_id_list IS TABLE OF traffic_signals.signal_id%TYPE;

    v_signal_ids signal_id_list;
BEGIN

    OPEN v_cursor FOR
        SELECT signal_id
        FROM traffic_signals;

    FETCH v_cursor
        BULK COLLECT INTO v_signal_ids;

    CLOSE v_cursor;

    IF v_signal_ids.COUNT > 0 THEN

        FORALL i IN 1 .. v_signal_ids.COUNT

            UPDATE traffic_signals
            SET state = 'RED',
                last_changed_at = SYSTIMESTAMP
            WHERE signal_id = v_signal_ids(i);

    END IF;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(
        'Signals reset: ' || v_signal_ids.COUNT
    );

EXCEPTION
    WHEN OTHERS THEN

        IF v_cursor%ISOPEN THEN
            CLOSE v_cursor;
        END IF;

        ROLLBACK;
        RAISE;

END;
/

/*
  In Part 2, I fetch one row and update one row repeatedly.

  In Part 3, I fetch the signal IDs into a collection first
  and then use FORALL to send the updates to SQL in bulk.

  This reduces repeated switching between PL/SQL and SQL
  when I am processing many rows.
*/
