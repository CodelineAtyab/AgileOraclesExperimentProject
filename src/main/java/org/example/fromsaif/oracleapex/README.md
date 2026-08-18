# Al Noor Hospital — Oracle APEX

Oracle APEX hospital management application for patient registration, appointments,
clinical visits, prescriptions, medicines, rooms, admissions, reports, and dashboard KPIs.

## Live application

https://oracleapex.com/ords/r/alnoor_hospital_system/al-noor-hospital154615/home

## Exported files

- `apex/f154615.sql` — latest hosted APEX application export.
- `database/01_database_ddl.sql` — database objects and the Page 17 prescription-item safeguard.
- `database/02_sample_data.sql` — required hospital lookup and demonstration data.

## Installation order

1. Run `database/01_database_ddl.sql` in SQL Workshop → SQL Scripts.
2. Run `database/02_sample_data.sql`.
3. Import `apex/f154615.sql` through App Builder → Import.
4. Install and run the imported application.

## Main demonstration workflow

1. Log in as an end user.
2. Book a patient appointment.
3. Review and update the appointment as reception staff.
4. Open the patient profile and record a clinical visit.
5. Create a prescription and add medicine items.
6. Review prescription details as a pharmacist.
7. Review the complete workflow in Clinical Visit Workspace.
