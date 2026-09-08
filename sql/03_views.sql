-- =============================================================================
-- Al Noor Hospital — Views & reusable queries for Dashboard / Reports
-- Run after schema + sample data
-- =============================================================================

-- Patient age helper view
CREATE OR REPLACE VIEW v_patients AS
SELECT
    p.*,
    TRUNC(MONTHS_BETWEEN(SYSDATE, p.date_of_birth) / 12) AS age
FROM patients p;

-- Doctors with department & specialty names
CREATE OR REPLACE VIEW v_doctors AS
SELECT
    d.doctor_id,
    d.full_name,
    d.department_id,
    dep.department_name,
    d.specialty_id,
    s.specialty_name,
    d.mobile_no,
    d.email,
    d.consultation_fee,
    d.status
FROM doctors d
JOIN departments dep ON dep.department_id = d.department_id
JOIN doctor_specialties s ON s.specialty_id = d.specialty_id;

-- Medicines with stock status
CREATE OR REPLACE VIEW v_medicines AS
SELECT
    m.medicine_id,
    m.medicine_name,
    m.category_id,
    c.category_name,
    m.unit,
    m.current_stock,
    m.reorder_level,
    m.status,
    CASE
        WHEN m.current_stock < m.reorder_level THEN 'Low Stock'
        ELSE 'Normal'
    END AS stock_status
FROM medicines m
JOIN medicine_categories c ON c.category_id = m.category_id;

-- Appointments full report view
CREATE OR REPLACE VIEW v_appointments AS
SELECT
    a.appointment_id,
    a.patient_id,
    p.full_name AS patient_name,
    p.civil_id,
    a.doctor_id,
    d.full_name AS doctor_name,
    dep.department_id,
    dep.department_name,
    a.appointment_date,
    a.appointment_time,
    a.status_id,
    st.status_name,
    a.reason_for_visit,
    a.created_at
FROM appointments a
JOIN patients p ON p.patient_id = a.patient_id
JOIN doctors d ON d.doctor_id = a.doctor_id
JOIN departments dep ON dep.department_id = d.department_id
JOIN appointment_statuses st ON st.status_id = a.status_id;

-- Patient visits report view
CREATE OR REPLACE VIEW v_patient_visits AS
SELECT
    v.visit_id,
    v.appointment_id,
    v.patient_id,
    p.full_name AS patient_name,
    v.doctor_id,
    d.full_name AS doctor_name,
    dep.department_id,
    dep.department_name,
    v.visit_date,
    v.symptoms,
    v.diagnosis,
    v.notes,
    v.follow_up_date
FROM patient_visits v
JOIN patients p ON p.patient_id = v.patient_id
JOIN doctors d ON d.doctor_id = v.doctor_id
JOIN departments dep ON dep.department_id = d.department_id;

-- Admissions report view
CREATE OR REPLACE VIEW v_admissions AS
SELECT
    adm.admission_id,
    adm.patient_id,
    p.full_name AS patient_name,
    adm.doctor_id,
    d.full_name AS doctor_name,
    adm.room_id,
    r.room_no,
    r.room_type,
    r.daily_rate,
    adm.admission_date,
    adm.discharge_date,
    adm.admission_reason,
    adm.status
FROM admissions adm
JOIN patients p ON p.patient_id = adm.patient_id
JOIN doctors d ON d.doctor_id = adm.doctor_id
JOIN rooms r ON r.room_id = adm.room_id;

-- Prescription with items
CREATE OR REPLACE VIEW v_prescription_items AS
SELECT
    pi.prescription_item_id,
    pi.prescription_id,
    pr.visit_id,
    pr.patient_id,
    p.full_name AS patient_name,
    pr.doctor_id,
    d.full_name AS doctor_name,
    pr.prescription_date,
    pi.medicine_id,
    m.medicine_name,
    pi.dosage,
    pi.frequency,
    pi.duration_days,
    pi.instructions
FROM prescription_items pi
JOIN prescriptions pr ON pr.prescription_id = pi.prescription_id
JOIN patients p ON p.patient_id = pr.patient_id
JOIN doctors d ON d.doctor_id = pr.doctor_id
JOIN medicines m ON m.medicine_id = pi.medicine_id;

COMMIT;

-- =============================================================================
-- DASHBOARD KPI QUERIES (use in APEX Card / Classic Report regions)
-- =============================================================================

-- KPI: Total Patients
-- SELECT COUNT(*) AS total_patients FROM patients;

-- KPI: Today's Appointments
-- SELECT COUNT(*) AS todays_appointments
-- FROM appointments WHERE appointment_date = TRUNC(SYSDATE);

-- KPI: Active Doctors
-- SELECT COUNT(*) AS active_doctors FROM doctors WHERE status = 'Active';

-- KPI: Current Admissions
-- SELECT COUNT(*) AS current_admissions FROM admissions WHERE status = 'Admitted';

-- KPI: Low Stock Medicines
-- SELECT COUNT(*) AS low_stock
-- FROM medicines WHERE current_stock < reorder_level AND status = 'Active';

-- Chart 1: Appointments by department
-- SELECT dep.department_name AS label, COUNT(*) AS value
-- FROM appointments a
-- JOIN doctors d ON d.doctor_id = a.doctor_id
-- JOIN departments dep ON dep.department_id = d.department_id
-- GROUP BY dep.department_name
-- ORDER BY value DESC;

-- Chart 2: Patients by gender
-- SELECT gender AS label, COUNT(*) AS value
-- FROM patients GROUP BY gender;

-- Chart 3: Medicine stock status
-- SELECT
--   CASE WHEN current_stock < reorder_level THEN 'Low Stock' ELSE 'Normal' END AS label,
--   COUNT(*) AS value
-- FROM medicines WHERE status = 'Active'
-- GROUP BY CASE WHEN current_stock < reorder_level THEN 'Low Stock' ELSE 'Normal' END;

-- Chart 4: Admissions by room type
-- SELECT r.room_type AS label, COUNT(*) AS value
-- FROM admissions a
-- JOIN rooms r ON r.room_id = a.room_id
-- GROUP BY r.room_type;

-- Chart 5: Monthly patient visits
-- SELECT TO_CHAR(visit_date, 'YYYY-MM') AS label, COUNT(*) AS value
-- FROM patient_visits
-- GROUP BY TO_CHAR(visit_date, 'YYYY-MM')
-- ORDER BY label;

-- Available rooms LOV (for admissions)
-- SELECT room_no || ' (' || room_type || ')' AS d, room_id AS r
-- FROM rooms WHERE status = 'Available' ORDER BY room_no;
