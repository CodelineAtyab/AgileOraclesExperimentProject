CREATE OR REPLACE PROCEDURE RESET_ALL_TRAFFIC_SIGNALS 

AS 
    RESET_COUNT INTEGER := 0;
    
BEGIN 
    
    FOR REC IN (SELECT signal_id FROM traffic_signals)
    LOOP
        UPDATE traffic_signals
        SET state = 'RED',
        last_changed_at = SYSTIMESTAMP
        
        WHERE signal_id = REC.signal_id;
        
          RESET_COUNT := RESET_COUNT + 1;
        
    
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('RESET ' || RESET_COUNT || ' TRAFFIC SIGNALS TO RED STATE. ');
    
END RESET_ALL_TRAFFIC_SIGNALS;
/


-- RUN 
SET SERVEROUTPUT ON;

BEGIN
    reset_all_traffic_signals;
END;
/


SELECT * FROM traffic_signals;


UPDATE traffic_signals SET state = 'RED'    WHERE signal_id = 3;
UPDATE traffic_signals SET state = 'GREEN'  WHERE signal_id = 4;
UPDATE traffic_signals SET state = 'YELLOW' WHERE signal_id = 5;


--************************* PART 2 *********************

CREATE OR REPLACE PROCEDURE EXPLICIT_RESET_ALL_SIGNALS

AS 
    V_CURSOR SYS_REFCURSOR;
    v_rec traffic_signals%ROWTYPE;
    RESET_COUNT INTEGER := 0;
    
BEGIN 
    OPEN V_CURSOR FOR SELECT * FROM traffic_signals;
    
    LOOP 
    
        FETCH V_CURSOR INTO v_rec;
        
        EXIT WHEN V_CURSOR%NOTFOUND;
        
        UPDATE traffic_signals
        SET state = 'RED',
        last_changed_at = SYSTIMESTAMP
        
        WHERE signal_id = v_rec.signal_id;
        
        RESET_COUNT := RESET_COUNT + 1;
        
    END LOOP;
    
    CLOSE V_CURSOR;
    
    DBMS_OUTPUT.PUT_LINE('RESET ' || RESET_COUNT || ' TRAFFIC SIGNALS TO RED STATE');
    
END EXPLICIT_RESET_ALL_SIGNALS;
/

-- RUN 
SET SERVEROUTPUT ON;

BEGIN
    EXPLICIT_RESET_ALL_SIGNALS;
END;
/

-- ******************** PART 3 *****************

CREATE OR REPLACE PROCEDURE BULK_RESET_ALL_SIGNALS
AS
    TYPE t_rec_tab IS TABLE OF traffic_signals%ROWTYPE;
    v_rec t_rec_tab;
    RESET_COUNT INTEGER := 0;

BEGIN
SELECT * BULK COLLECT INTO v_rec
FROM traffic_signals;

FORALL i IN 1 .. v_rec.COUNT
UPDATE traffic_signals
SET state = 'RED',
    last_changed_at = SYSTIMESTAMP
WHERE signal_id = v_rec(i).signal_id;

RESET_COUNT := v_rec.COUNT;

    DBMS_OUTPUT.PUT_LINE('RESET ' || RESET_COUNT || ' TRAFFIC SIGNALS TO RED STATE');

END BULK_RESET_ALL_SIGNALS;
/

-- Run

SET SERVEROUTPUT ON;

BEGIN
    BULK_RESET_ALL_SIGNALS;
END;
/
    
    
-- Implicit cursor--> oracle engin will managed. also we use REC.signal_id for point to 
-- specific exact raw which insure that the update will happen to it.

-- Explicit cursor --> use it in springboot and it is managed by user.
-- it must follow certain steps to reach to same result for implicit which are 
-- (OPEN -> FETCH -> CLOSE), BUT here more flexible and responsible for control because I managed everythings when open and when end

-- Bulk --> it is like when I am telling  to oracle create for me  this TYPE (t_rec_tab) of data 
-- for containing collections of raws to gather and make update to this collections at once. 
    
