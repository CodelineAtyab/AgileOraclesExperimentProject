-- Al Noor Hospital Management System
-- Drop objects (run only if re-installing)

BEGIN
  FOR t IN (
    SELECT table_name FROM user_tables
    WHERE table_name IN (
      'PRESCRIPTION_ITEMS', 'PRESCRIPTIONS', 'PATIENT_VISITS', 'ADMISSIONS',
      'APPOINTMENTS', 'MEDICINES', 'DOCTORS', 'PATIENTS', 'ROOMS',
      'APPOINTMENT_STATUSES', 'MEDICINE_CATEGORIES', 'DOCTOR_SPECIALTIES', 'DEPARTMENTS'
    )
  ) LOOP
    EXECUTE IMMEDIATE 'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS';
  END LOOP;
END;
/
