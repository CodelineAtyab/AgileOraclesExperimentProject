SELECT signal_id, signal_name, signal_state FROM traffic_signals ORDER BY signal_id;

-- Part 1: Oracle handles opening/closing the cursor for us, we just loop
-- through the rows. Simple to write but still does one UPDATE per row.--
-- like the driver, and i give him instruction on where to go step by step.--

--implicit cursor--
CREATE OR REPLACE PROCEDURE reset_signals_implicit
AS
BEGIN
  DBMS_OUTPUT.PUT_LINE('To Do');
END reset_signals_implicit;
/
--3.add implicit cursor (red)--
CREATE OR REPLACE PROCEDURE reset_signals_implicit
AS
  v_count NUMBER := 0;
BEGIN
  FOR sig IN (SELECT signal_id FROM traffic_signals) LOOP
    UPDATE traffic_signals
       SET signal_state    = 'RED',
           last_changed_at = SYSTIMESTAMP
     WHERE signal_id = sig.signal_id;

    v_count := v_count + 1;
  END LOOP;

  DBMS_OUTPUT.PUT_LINE(v_count || ' signal(s) reset to RED (implicit cursor).');
  COMMIT;
END reset_signals_implicit;
/
--output:Procedure RESET_SIGNALS_IMPLICIT compiled--
--test it and run--
BEGIN
  reset_signals_implicit;
END;
/
SELECT signal_id, signal_state, last_changed_at FROM traffic_signals ORDER BY signal_id;
--output:1	RED	01-SEP-26 09.54.04.710000000 AM--
--3	RED	01-SEP-26 09.54.04.712000000 AM--
--4	RED	01-SEP-26 09.54.04.712000000 AM--
--5	RED	01-SEP-26 09.54.04.712000000 AM--
--6	RED	01-SEP-26 09.54.04.712000000 AM--
--7	RED	01-SEP-26 09.54.04.712000000 AM--

-- Part 2: same thing basically, but I open/fetch/close the cursor myself
-- instead of Oracle doing it. More lines of code, but it doesn't make it
-- faster - it's still one UPDATE per row, just now I control every step.--
--its like i'm driving it myself: OPEN,then FETCH step by step,EXIT WHEN NOTFOUND% to stop , and CLOSE to finsh--
--back the colors to part 2--
UPDATE traffic_signals SET signal_state = 'YELLOW' WHERE signal_id = 1;
UPDATE traffic_signals SET signal_state = 'GREEN'  WHERE signal_id = 3;
COMMIT;
--explicit cursor--
CREATE OR REPLACE PROCEDURE reset_signals_explicit
AS
BEGIN
  DBMS_OUTPUT.PUT_LINE('To Do');
END reset_signals_explicit;
/
--output--
--PL/SQL procedure successfully completed.--
-->>Query Run In:Query Result--
--1 row updated.--
--1 row updated.--
--Commit complete.--
--Procedure RESET_SIGNALS_EXPLICIT compiled--

--asign all SYS_REFCURSOR--
CREATE OR REPLACE PROCEDURE reset_signals_explicit
AS
  v_cursor SYS_REFCURSOR;
  v_id     traffic_signals.signal_id%TYPE;
  v_count  NUMBER := 0;
BEGIN
  OPEN v_cursor FOR SELECT signal_id FROM traffic_signals;

  LOOP
    FETCH v_cursor INTO v_id;
    EXIT WHEN v_cursor%NOTFOUND;

    UPDATE traffic_signals
       SET signal_state    = 'RED',
           last_changed_at = SYSTIMESTAMP
     WHERE signal_id = v_id;

    v_count := v_count + 1;
  END LOOP;

  CLOSE v_cursor;

  DBMS_OUTPUT.PUT_LINE(v_count || ' signal(s) reset to RED (explicit cursor).');
  COMMIT;
END reset_signals_explicit;
/
--output--
--Procedure RESET_SIGNALS_EXPLICIT compiled--
--test--
BEGIN
  reset_signals_explicit;
END;
/
SELECT signal_id, signal_state, last_changed_at FROM traffic_signals ORDER BY signal_id;
--output--
--1	RED	01-SEP-26 10.04.36.451000000 AM--
--3	RED	01-SEP-26 10.04.36.451000000 AM--
--4	RED	01-SEP-26 10.04.36.451000000 AM--
--5	RED	01-SEP-26 10.04.36.451000000 AM--
--6	RED	01-SEP-26 10.04.36.451000000 AM--
--7	RED	01-SEP-26 10.04.36.451000000 AM--

-- Part 3: instead of updating row by row, I grab all the ids first
-- (BULK COLLECT) then update them all in one shot with FORALL. This is
-- the fast one because it sends one batch to the database instead of
-- going back and forth for every single row.--
--is like giving the driver a list of instruction and telling him to do them all at once, insted of one by one--
--part 3 BULK--
UPDATE traffic_signals SET signal_state = 'YELLOW' WHERE signal_id = 1;
UPDATE traffic_signals SET signal_state = 'GREEN'  WHERE signal_id = 3;
COMMIT;
-- procedur 3--
CREATE OR REPLACE PROCEDURE reset_signals_bulk
AS
BEGIN
  DBMS_OUTPUT.PUT_LINE('To Do');
  COMMIT;
END reset_signals_bulk;
/
--output--
--PL/SQL procedure successfully completed.--
-->>Query Run In:Query Result 1--
--1 row updated.--
--1 row updated .--
--Commit complete.--
--Procedure RESET_SIGNALS_BULK compiled--

--BULK COLLECT and FORALL--
CREATE OR REPLACE PROCEDURE reset_signals_bulk
AS
  TYPE t_id_list IS TABLE OF traffic_signals.signal_id%TYPE;
  v_ids    t_id_list;
  v_cursor SYS_REFCURSOR;
BEGIN
  OPEN v_cursor FOR SELECT signal_id FROM traffic_signals;
  FETCH v_cursor BULK COLLECT INTO v_ids;
  CLOSE v_cursor;

  FORALL i IN 1 .. v_ids.COUNT
    UPDATE traffic_signals
       SET signal_state    = 'RED',
           last_changed_at = SYSTIMESTAMP
     WHERE signal_id = v_ids(i);

  DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' signal(s) reset to RED (bulk).');
  COMMIT;
END reset_signals_bulk;
/
--output:Procedure RESET_SIGNALS_BULK compiled--
--run:--
BEGIN
  reset_signals_bulk;
END;
/
SELECT signal_id, signal_state, last_changed_at FROM traffic_signals ORDER BY signal_id;
--output:--
--1	RED	01-SEP-26 10.13.22.123000000 AM--
--3	RED	01-SEP-26 10.13.22.123000000 AM--
--4	RED	01-SEP-26 10.13.22.123000000 AM--
--5	RED	01-SEP-26 10.13.22.123000000 AM--
--6	RED	01-SEP-26 10.13.22.123000000 AM--
--7	RED	01-SEP-26 10.13.22.123000000 AM--