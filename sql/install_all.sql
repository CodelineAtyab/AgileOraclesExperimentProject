-- =============================================================================
-- Al Noor Hospital — Install all (run in SQL Workshop / SQL*Plus / SQLcl)
-- =============================================================================

@@00_drop_tables.sql
@@01_schema.sql
@@03_views.sql
@@04_triggers.sql
@@02_sample_data.sql

-- Done. Verify:
SELECT table_name FROM user_tables
WHERE table_name IN (
  'DEPARTMENTS','DOCTOR_SPECIALTIES','MEDICINE_CATEGORIES','APPOINTMENT_STATUSES',
  'PATIENTS','DOCTORS','MEDICINES','APPOINTMENTS','PATIENT_VISITS',
  'PRESCRIPTIONS','PRESCRIPTION_ITEMS','ROOMS','ADMISSIONS'
)
ORDER BY table_name;
