--Part 1: Implicit Cursor:
create or replace PROCEDURE reset_signals_implicit
AS
  v_count NUMBER :=0;
BEGIN

FOR signalobj IN (SELECT * FROM traffic_signals)
    LOOP
UPDATE traffic_signals
SET state = 'RED', last_changed_at = SYSTIMESTAMP
WHERE signal_id = signalobj.signal_id;

v_count := v_count +1;
END LOOP;
COMMIT;

DBMS_OUTPUT.PUT_LINE(
        v_count || ' signals reset to RED.'
    );

END reset_signals_implicit;
/
--RUN PROCEDURE
BEGIN
     reset_signals_implicit;
END;
/
--to see if all signals became RED:
SELECT signal_id, signal_name, state, last_changed_at
FROM traffic_signals;

--just to mix signals before part2:
UPDATE traffic_signals
SET state = 'YELLOW'
WHERE signal_id = 24;

UPDATE traffic_signals
SET state = 'GREEN'
WHERE signal_id = 25;

COMMIT;

--part2: Explicit Cursor using SYS_REFCURSOR
--this PROCEDURE open cursor
create or replace PROCEDURE get_all_signals
(
   p_cursor OUT SYS_REFCURSOR
)
AS
BEGIN
OPEN p_cursor FOR
SELECT signal_id
FROM traffic_signals;
END get_all_signals;
/
--this PROCEDURE use cursor to fetches from it and update the signals
create or replace PROCEDURE reset_signals_explicit
AS
  v_cursor  SYS_REFCURSOR;
  v_signal_id  traffic_signals.signal_id%type;
  v_count  NUMBER :=0;
BEGIN

    get_all_signals(v_cursor);
    LOOP
FETCH v_cursor INTO v_signal_id;
         EXIT WHEN v_cursor%NOTFOUND;

UPDATE traffic_signals
SET state = 'RED', last_changed_at = SYSTIMESTAMP
WHERE signal_id = v_signal_id;

v_count := v_count +1;
END LOOP;
CLOSE v_cursor;
COMMIT;

DBMS_OUTPUT.PUT_LINE(
        v_count || ' signals reset to RED.'
    );

END reset_signals_explicit;
/
--RUN PROCEDURE
BEGIN
     reset_signals_explicit;
END;
/
--to see if all signals became RED:
SELECT signal_id, signal_name, state, last_changed_at
FROM traffic_signals;

--part 3: bulk update instead of one by one update
create or replace PROCEDURE reset_signals_bulk
AS
  TYPE t_signal_ids IS TABLE OF traffic_signals.signal_id%type;
  v_cursor  SYS_REFCURSOR;
  v_signal_ids  t_signal_ids;
BEGIN

    get_all_signals(v_cursor);

FETCH v_cursor
    BULK COLLECT INTO v_signal_ids;

CLOSE v_cursor;
FORALL i IN 1 .. v_signal_ids.COUNT
UPDATE traffic_signals
SET state = 'RED', last_changed_at = SYSTIMESTAMP
WHERE signal_id = v_signal_ids(i);

COMMIT;

DBMS_OUTPUT.PUT_LINE(
        v_signal_ids.COUNT || ' signals reset to RED.'
    );

END reset_signals_bulk;
/
--test it
BEGIN
    reset_signals_bulk;
END;
/