--------------------------------------------------------------------------
-- SELF-DRIVING TRAFFIC SIGNAL
--
-- The idea:
--   Insert a signal -> it starts cycling on its own, forever:
--   RED (10s) -> YELLOW (5s) -> GREEN (10s) -> RED ...
--------------------------------------------------------------------------


--------------------------------------------------------------------------
-- STEP 0: Give permission to create scheduler jobs.
-- Run ONCE, logged in as SYS AS SYSDBA (not as SYSTEM).
--------------------------------------------------------------------------
-- GRANT CREATE JOB TO SYSTEM;
