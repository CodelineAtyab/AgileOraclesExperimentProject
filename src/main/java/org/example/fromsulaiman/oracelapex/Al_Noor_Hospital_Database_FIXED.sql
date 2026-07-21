-- Al Noor Hospital Management System
-- Supplemental database rules and safety fixes

-- One prescription per visit
begin
  execute immediate 'alter table prescriptions add constraint uq_prescription_visit unique (visit_id)';
exception
  when others then
    if sqlcode not in (-2261, -955) then raise; end if;
end;
/

-- Prevent negative medicine stock
begin
  execute immediate 'alter table medicines add constraint ck_medicine_stock_nonnegative check (current_stock >= 0)';
exception
  when others then
    if sqlcode not in (-2264, -955) then raise; end if;
end;
/

begin
  execute immediate 'alter table medicines add constraint ck_reorder_level_nonnegative check (reorder_level >= 0)';
exception
  when others then
    if sqlcode not in (-2264, -955) then raise; end if;
end;
/

-- Discharged admission must have a discharge date
begin
  execute immediate q'[alter table admissions add constraint ck_admission_discharge_date
    check (upper(status) <> 'DISCHARGED' or discharge_date is not null)]';
exception
  when others then
    if sqlcode not in (-2264, -955) then raise; end if;
end;
/

-- Visit must belong to an appointment and prescription item must belong to a prescription.
-- These should already be enforced by NOT NULL foreign keys. Use these checks to verify:
select table_name, column_name, nullable
from user_tab_columns
where (table_name = 'PATIENT_VISITS' and column_name = 'APPOINTMENT_ID')
   or (table_name = 'PRESCRIPTION_ITEMS' and column_name = 'PRESCRIPTION_ID');

-- Required sample-data counts
select 'PATIENTS' item, count(*) total, 20 required from patients
union all select 'DOCTORS', count(*), 10 from doctors
union all select 'DEPARTMENTS', count(*), 5 from departments
union all select 'MEDICINES', count(*), 20 from medicines
union all select 'APPOINTMENTS', count(*), 30 from appointments
union all select 'PATIENT_VISITS', count(*), 10 from patient_visits
union all select 'PRESCRIPTIONS', count(*), 10 from prescriptions;
