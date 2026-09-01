-- ============================================================
-- 1. LOOKUP / REFERENCE DATA
-- ============================================================

INSERT INTO departments (department_name, floor_no, status)
VALUES ('Cardiology', '2', 'Active');

INSERT INTO departments (department_name, floor_no, status)
VALUES ('Pediatrics', '3', 'Active');

INSERT INTO departments (department_name, floor_no, status)
VALUES ('Emergency', 'G', 'Active');

INSERT INTO departments (department_name, floor_no, status)
VALUES ('General Medicine', '1', 'Active');

INSERT INTO departments (department_name, floor_no, status)
VALUES ('Orthopedics', '4', 'Active');


INSERT INTO doctor_specialties (specialty_name, status)
VALUES ('Cardiologist', 'Active');

INSERT INTO doctor_specialties (specialty_name, status)
VALUES ('Pediatrician', 'Active');

INSERT INTO doctor_specialties (specialty_name, status)
VALUES ('Emergency Physician', 'Active');

INSERT INTO doctor_specialties (specialty_name, status)
VALUES ('General Practitioner', 'Active');

INSERT INTO doctor_specialties (specialty_name, status)
VALUES ('Orthopedic Surgeon', 'Active');

INSERT INTO doctor_specialties (specialty_name, status)
VALUES ('Internal Medicine Specialist', 'Active');

INSERT INTO doctor_specialties (specialty_name, status)
VALUES ('Family Medicine Physician', 'Active');

INSERT INTO doctor_specialties (specialty_name, status)
VALUES ('Trauma Specialist', 'Active');


INSERT INTO medicine_categories (category_name, status)
VALUES ('Antibiotic', 'Active');

INSERT INTO medicine_categories (category_name, status)
VALUES ('Painkiller', 'Active');

INSERT INTO medicine_categories (category_name, status)
VALUES ('Diabetes', 'Active');

INSERT INTO medicine_categories (category_name, status)
VALUES ('Cardiovascular', 'Active');

INSERT INTO medicine_categories (category_name, status)
VALUES ('Respiratory', 'Active');


INSERT INTO appointment_statuses (status_name)
VALUES ('Scheduled');

INSERT INTO appointment_statuses (status_name)
VALUES ('Completed');

INSERT INTO appointment_statuses (status_name)
VALUES ('Cancelled');

INSERT INTO appointment_statuses (status_name)
VALUES ('No Show');


-- ============================================================
-- 2. ROOMS
-- ============================================================

INSERT INTO rooms (room_no, room_type, daily_rate, status)
VALUES ('101', 'General', 45.00, 'Occupied');

INSERT INTO rooms (room_no, room_type, daily_rate, status)
VALUES ('102', 'General', 45.00, 'Occupied');

INSERT INTO rooms (room_no, room_type, daily_rate, status)
VALUES ('103', 'General', 45.00, 'Available');

INSERT INTO rooms (room_no, room_type, daily_rate, status)
VALUES ('104', 'General', 45.00, 'Available');

INSERT INTO rooms (room_no, room_type, daily_rate, status)
VALUES ('201', 'Private', 90.00, 'Occupied');

INSERT INTO rooms (room_no, room_type, daily_rate, status)
VALUES ('202', 'Private', 90.00, 'Available');

INSERT INTO rooms (room_no, room_type, daily_rate, status)
VALUES ('203', 'Private', 90.00, 'Maintenance');

INSERT INTO rooms (room_no, room_type, daily_rate, status)
VALUES ('ICU-01', 'ICU', 180.00, 'Occupied');

INSERT INTO rooms (room_no, room_type, daily_rate, status)
VALUES ('ICU-02', 'ICU', 180.00, 'Available');

INSERT INTO rooms (room_no, room_type, daily_rate, status)
VALUES ('ICU-03', 'ICU', 180.00, 'Available');


-- ============================================================
-- 3. DOCTORS
-- ============================================================

INSERT INTO doctors (
    full_name, department_id, specialty_id,
    mobile_no, email, consultation_fee, status
)
VALUES (
    'Dr. Ahmed Al Balushi',
    (SELECT department_id FROM departments WHERE department_name = 'Cardiology'),
    (SELECT specialty_id FROM doctor_specialties WHERE specialty_name = 'Cardiologist'),
    '92110001', 'ahmed.balushi@alnoor.example', 35.00, 'Active'
);

INSERT INTO doctors (
    full_name, department_id, specialty_id,
    mobile_no, email, consultation_fee, status
)
VALUES (
    'Dr. Fatma Al Hinai',
    (SELECT department_id FROM departments WHERE department_name = 'Pediatrics'),
    (SELECT specialty_id FROM doctor_specialties WHERE specialty_name = 'Pediatrician'),
    '92110002', 'fatma.hinai@alnoor.example', 30.00, 'Active'
);

INSERT INTO doctors (
    full_name, department_id, specialty_id,
    mobile_no, email, consultation_fee, status
)
VALUES (
    'Dr. Khalid Al Rawahi',
    (SELECT department_id FROM departments WHERE department_name = 'Emergency'),
    (SELECT specialty_id FROM doctor_specialties WHERE specialty_name = 'Emergency Physician'),
    '92110003', 'khalid.rawahi@alnoor.example', 25.00, 'Active'
);

INSERT INTO doctors (
    full_name, department_id, specialty_id,
    mobile_no, email, consultation_fee, status
)
VALUES (
    'Dr. Maryam Al Lawati',
    (SELECT department_id FROM departments WHERE department_name = 'General Medicine'),
    (SELECT specialty_id FROM doctor_specialties WHERE specialty_name = 'General Practitioner'),
    '92110004', 'maryam.lawati@alnoor.example', 22.00, 'Active'
);

INSERT INTO doctors (
    full_name, department_id, specialty_id,
    mobile_no, email, consultation_fee, status
)
VALUES (
    'Dr. Salim Al Maawali',
    (SELECT department_id FROM departments WHERE department_name = 'Orthopedics'),
    (SELECT specialty_id FROM doctor_specialties WHERE specialty_name = 'Orthopedic Surgeon'),
    '92110005', 'salim.maawali@alnoor.example', 40.00, 'Active'
);

INSERT INTO doctors (
    full_name, department_id, specialty_id,
    mobile_no, email, consultation_fee, status
)
VALUES (
    'Dr. Aisha Al Shukaili',
    (SELECT department_id FROM departments WHERE department_name = 'General Medicine'),
    (SELECT specialty_id FROM doctor_specialties WHERE specialty_name = 'Internal Medicine Specialist'),
    '92110006', 'aisha.shukaili@alnoor.example', 32.00, 'Active'
);

INSERT INTO doctors (
    full_name, department_id, specialty_id,
    mobile_no, email, consultation_fee, status
)
VALUES (
    'Dr. Nasser Al Habsi',
    (SELECT department_id FROM departments WHERE department_name = 'Cardiology'),
    (SELECT specialty_id FROM doctor_specialties WHERE specialty_name = 'Cardiologist'),
    '92110007', 'nasser.habsi@alnoor.example', 38.00, 'Active'
);

INSERT INTO doctors (
    full_name, department_id, specialty_id,
    mobile_no, email, consultation_fee, status
)
VALUES (
    'Dr. Sara Al Riyami',
    (SELECT department_id FROM departments WHERE department_name = 'Pediatrics'),
    (SELECT specialty_id FROM doctor_specialties WHERE specialty_name = 'Family Medicine Physician'),
    '92110008', 'sara.riyami@alnoor.example', 28.00, 'Active'
);

INSERT INTO doctors (
    full_name, department_id, specialty_id,
    mobile_no, email, consultation_fee, status
)
VALUES (
    'Dr. Hamad Al Amri',
    (SELECT department_id FROM departments WHERE department_name = 'Emergency'),
    (SELECT specialty_id FROM doctor_specialties WHERE specialty_name = 'Trauma Specialist'),
    '92110009', 'hamad.amri@alnoor.example', 30.00, 'Active'
);

INSERT INTO doctors (
    full_name, department_id, specialty_id,
    mobile_no, email, consultation_fee, status
)
VALUES (
    'Dr. Noor Al Kharusi',
    (SELECT department_id FROM departments WHERE department_name = 'Orthopedics'),
    (SELECT specialty_id FROM doctor_specialties WHERE specialty_name = 'Orthopedic Surgeon'),
    '92110010', 'noor.kharusi@alnoor.example', 42.00, 'Inactive'
);


-- ============================================================
-- 4. PATIENTS
-- ============================================================

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000001', 'Ali Hassan Al Farsi', 'Male', DATE '1988-04-12',
    '93120001', 'ali.farsi@example.com', 'O+',
    'Muscat', 'Hassan Al Farsi', '94120001'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000002', 'Maha Said Al Harthi', 'Female', DATE '1992-09-23',
    '93120002', 'maha.harthi@example.com', 'A+',
    'Sohar', 'Said Al Harthi', '94120002'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000003', 'Omar Rashid Al Balushi', 'Male', DATE '1977-01-30',
    '93120003', 'omar.balushi@example.com', 'B+',
    'Barka', 'Rashid Al Balushi', '94120003'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000004', 'Salma Ahmed Al Hinai', 'Female', DATE '1985-06-08',
    '93120004', 'salma.hinai@example.com', 'AB+',
    'Nizwa', 'Ahmed Al Hinai', '94120004'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000005', 'Yusuf Khalid Al Rawahi', 'Male', DATE '2014-03-17',
    '93120005', NULL, 'O-',
    'Muscat', 'Khalid Al Rawahi', '94120005'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000006', 'Layla Mohammed Al Lawati', 'Female', DATE '1999-11-02',
    '93120006', 'layla.lawati@example.com', 'A-',
    'Seeb', 'Mohammed Al Lawati', '94120006'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000007', 'Said Hamad Al Maawali', 'Male', DATE '1968-07-15',
    '93120007', 'said.maawali@example.com', 'B-',
    'Sohar', 'Hamad Al Maawali', '94120007'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000008', 'Amal Nasser Al Habsi', 'Female', DATE '1974-12-27',
    '93120008', 'amal.habsi@example.com', 'O+',
    'Ibri', 'Nasser Al Habsi', '94120008'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000009', 'Hamed Salim Al Amri', 'Male', DATE '2001-05-11',
    '93120009', 'hamed.amri@example.com', 'AB-',
    'Sur', 'Salim Al Amri', '94120009'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000010', 'Noor Ali Al Kharusi', 'Female', DATE '1995-08-19',
    '93120010', 'noor.kharusi@example.com', 'A+',
    'Muscat', 'Ali Al Kharusi', '94120010'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000011', 'Rashid Abdullah Al Riyami', 'Male', DATE '1982-02-14',
    '93120011', 'rashid.riyami@example.com', 'B+',
    'Rustaq', 'Abdullah Al Riyami', '94120011'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000012', 'Abeer Mahmood Al Shukaili', 'Female', DATE '2008-10-04',
    '93120012', NULL, 'O+',
    'Bahla', 'Mahmood Al Shukaili', '94120012'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000013', 'Majid Ibrahim Al Wahaibi', 'Male', DATE '1990-03-26',
    '93120013', 'majid.wahaibi@example.com', 'A-',
    'Saham', 'Ibrahim Al Wahaibi', '94120013'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000014', 'Huda Juma Al Busaidi', 'Female', DATE '1987-01-09',
    '93120014', 'huda.busaidi@example.com', 'B-',
    'Muscat', 'Juma Al Busaidi', '94120014'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000015', 'Khalfan Saleh Al Saadi', 'Male', DATE '1971-09-05',
    '93120015', 'khalfan.saadi@example.com', 'O-',
    'Suwaiq', 'Saleh Al Saadi', '94120015'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000016', 'Reem Talib Al Maskari', 'Female', DATE '2000-06-21',
    '93120016', 'reem.maskari@example.com', 'AB+',
    'Ibra', 'Talib Al Maskari', '94120016'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000017', 'Bader Naji Al Zadjali', 'Male', DATE '1997-12-12',
    '93120017', 'bader.zadjali@example.com', 'A+',
    'Muscat', 'Naji Al Zadjali', '94120017'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000018', 'Shatha Sami Al Jabri', 'Female', DATE '2012-04-29',
    '93120018', NULL, 'B+',
    'Sohar', 'Sami Al Jabri', '94120018'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000019', 'Zahir Hilal Al Ghafri', 'Male', DATE '1980-11-18',
    '93120019', 'zahir.ghafri@example.com', 'O+',
    'Buraimi', 'Hilal Al Ghafri', '94120019'
);

INSERT INTO patients (
    civil_id, full_name, gender, date_of_birth, mobile_no, email,
    blood_group, address, emergency_contact_name, emergency_contact_no
)
VALUES (
    '11000020', 'Wafa Khamis Al Siyabi', 'Female', DATE '1993-07-07',
    '93120020', 'wafa.siyabi@example.com', 'AB-',
    'Nizwa', 'Khamis Al Siyabi', '94120020'
);


-- ============================================================
-- 5. MEDICINES
-- Includes both Normal and Low Stock examples.
-- ============================================================

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Amoxicillin 500mg',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Antibiotic'),
     'Capsule', 120, 30, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Azithromycin 250mg',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Antibiotic'),
     'Tablet', 18, 25, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Cefuroxime 500mg',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Antibiotic'),
     'Tablet', 70, 20, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Metronidazole 400mg',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Antibiotic'),
     'Tablet', 14, 20, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Paracetamol 500mg',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Painkiller'),
     'Tablet', 300, 60, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Ibuprofen 400mg',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Painkiller'),
     'Tablet', 45, 40, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Diclofenac Gel',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Painkiller'),
     'Tube', 12, 15, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Tramadol 50mg',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Painkiller'),
     'Capsule', 10, 10, 'Inactive');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Metformin 500mg',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Diabetes'),
     'Tablet', 160, 40, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Gliclazide 80mg',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Diabetes'),
     'Tablet', 22, 30, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Insulin Rapid Acting',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Diabetes'),
     'Injection', 40, 15, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Insulin Long Acting',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Diabetes'),
     'Injection', 9, 12, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Amlodipine 5mg',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Cardiovascular'),
     'Tablet', 130, 30, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Atorvastatin 20mg',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Cardiovascular'),
     'Tablet', 95, 25, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Aspirin 81mg',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Cardiovascular'),
     'Tablet', 20, 25, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Bisoprolol 5mg',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Cardiovascular'),
     'Tablet', 55, 20, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Salbutamol Inhaler',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Respiratory'),
     'Inhaler', 75, 20, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Budesonide Inhaler',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Respiratory'),
     'Inhaler', 11, 15, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Montelukast 10mg',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Respiratory'),
     'Tablet', 65, 20, 'Active');

INSERT INTO medicines
    (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES
    ('Cough Syrup',
     (SELECT category_id FROM medicine_categories WHERE category_name = 'Respiratory'),
     'Syrup', 26, 25, 'Active');


-- ============================================================
-- 6. APPOINTMENTS
-- 10 past + 8 today + 12 future = 30 appointments.
-- ============================================================

-- Past appointments used for the 10 visit and prescription records.
INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000001'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Ahmed Al Balushi'),
    TRUNC(SYSDATE) - 30, '09:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Completed'),
    'Chest discomfort'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000002'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Maryam Al Lawati'),
    TRUNC(SYSDATE) - 27, '10:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Completed'),
    'Persistent headache'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000003'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Salim Al Maawali'),
    TRUNC(SYSDATE) - 24, '11:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Completed'),
    'Knee pain'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000004'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Aisha Al Shukaili'),
    TRUNC(SYSDATE) - 21, '12:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Completed'),
    'Fatigue and dizziness'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000005'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Fatma Al Hinai'),
    TRUNC(SYSDATE) - 18, '09:30',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Completed'),
    'Fever and sore throat'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000006'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Khalid Al Rawahi'),
    TRUNC(SYSDATE) - 15, '13:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Completed'),
    'Minor injury'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000007'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Nasser Al Habsi'),
    TRUNC(SYSDATE) - 12, '14:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Completed'),
    'Blood pressure review'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000008'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Aisha Al Shukaili'),
    TRUNC(SYSDATE) - 9, '10:30',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Completed'),
    'Diabetes follow-up'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000009'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Hamad Al Amri'),
    TRUNC(SYSDATE) - 6, '15:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Completed'),
    'Ankle injury'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000010'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Maryam Al Lawati'),
    TRUNC(SYSDATE) - 3, '11:30',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Completed'),
    'Cough and breathing discomfort'
);

-- Today's appointments.
INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000011'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Ahmed Al Balushi'),
    TRUNC(SYSDATE), '08:30',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'Cardiology consultation'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000012'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Sara Al Riyami'),
    TRUNC(SYSDATE), '09:15',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'Child wellness review'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000013'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Khalid Al Rawahi'),
    TRUNC(SYSDATE), '10:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'Sudden abdominal pain'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000014'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Maryam Al Lawati'),
    TRUNC(SYSDATE), '10:45',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Completed'),
    'General check-up'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000015'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Salim Al Maawali'),
    TRUNC(SYSDATE), '11:30',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'Back pain'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000016'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Aisha Al Shukaili'),
    TRUNC(SYSDATE), '13:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'Routine medical review'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000017'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Hamad Al Amri'),
    TRUNC(SYSDATE), '14:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Cancelled'),
    'Wrist injury'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000018'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Fatma Al Hinai'),
    TRUNC(SYSDATE), '15:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'No Show'),
    'Recurring fever'
);

-- Future appointments.
INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000019'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Nasser Al Habsi'),
    TRUNC(SYSDATE) + 1, '09:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'Heart health review'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000020'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Maryam Al Lawati'),
    TRUNC(SYSDATE) + 1, '10:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'General consultation'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000001'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Ahmed Al Balushi'),
    TRUNC(SYSDATE) + 2, '11:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'Cardiology follow-up'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000002'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Aisha Al Shukaili'),
    TRUNC(SYSDATE) + 3, '12:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'Health review'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000003'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Salim Al Maawali'),
    TRUNC(SYSDATE) + 4, '13:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'Knee follow-up'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000004'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Maryam Al Lawati'),
    TRUNC(SYSDATE) + 5, '14:00',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'General consultation'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000005'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Fatma Al Hinai'),
    TRUNC(SYSDATE) + 6, '09:30',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'Pediatric follow-up'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000006'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Khalid Al Rawahi'),
    TRUNC(SYSDATE) + 7, '10:30',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'Injury review'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000007'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Nasser Al Habsi'),
    TRUNC(SYSDATE) + 8, '11:30',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'Blood pressure follow-up'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000008'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Aisha Al Shukaili'),
    TRUNC(SYSDATE) + 9, '12:30',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'Diabetes review'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000009'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Hamad Al Amri'),
    TRUNC(SYSDATE) + 10, '13:30',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'Ankle follow-up'
);

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000010'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Maryam Al Lawati'),
    TRUNC(SYSDATE) + 12, '14:30',
    (SELECT status_id FROM appointment_statuses WHERE status_name = 'Scheduled'),
    'Respiratory follow-up'
);


-- ============================================================
-- 7. PATIENT VISITS
-- One visit for each of the first 10 completed appointments.
-- ============================================================

INSERT INTO patient_visits (
    appointment_id, patient_id, doctor_id, visit_date,
    symptoms, diagnosis, notes, follow_up_date
)
SELECT
    a.appointment_id, a.patient_id, a.doctor_id, a.appointment_date,
    'Chest discomfort and shortness of breath',
    'Mild hypertension',
    'Advised blood pressure monitoring and lifestyle changes',
    TRUNC(SYSDATE) + 14
FROM appointments a
JOIN patients p ON p.patient_id = a.patient_id
WHERE p.civil_id = '11000001'
  AND a.appointment_date = TRUNC(SYSDATE) - 30
  AND a.appointment_time = '09:00';

INSERT INTO patient_visits (
    appointment_id, patient_id, doctor_id, visit_date,
    symptoms, diagnosis, notes, follow_up_date
)
SELECT
    a.appointment_id, a.patient_id, a.doctor_id, a.appointment_date,
    'Persistent headache and tiredness',
    'Tension headache',
    'Rest, hydration, and pain management advised',
    TRUNC(SYSDATE) + 7
FROM appointments a
JOIN patients p ON p.patient_id = a.patient_id
WHERE p.civil_id = '11000002'
  AND a.appointment_date = TRUNC(SYSDATE) - 27
  AND a.appointment_time = '10:00';

INSERT INTO patient_visits (
    appointment_id, patient_id, doctor_id, visit_date,
    symptoms, diagnosis, notes, follow_up_date
)
SELECT
    a.appointment_id, a.patient_id, a.doctor_id, a.appointment_date,
    'Knee pain during movement',
    'Knee strain',
    'Avoid heavy activity and use prescribed gel',
    TRUNC(SYSDATE) + 21
FROM appointments a
JOIN patients p ON p.patient_id = a.patient_id
WHERE p.civil_id = '11000003'
  AND a.appointment_date = TRUNC(SYSDATE) - 24
  AND a.appointment_time = '11:00';

INSERT INTO patient_visits (
    appointment_id, patient_id, doctor_id, visit_date,
    symptoms, diagnosis, notes, follow_up_date
)
SELECT
    a.appointment_id, a.patient_id, a.doctor_id, a.appointment_date,
    'Fatigue and occasional dizziness',
    'Possible iron deficiency',
    'Laboratory tests requested',
    TRUNC(SYSDATE) + 10
FROM appointments a
JOIN patients p ON p.patient_id = a.patient_id
WHERE p.civil_id = '11000004'
  AND a.appointment_date = TRUNC(SYSDATE) - 21
  AND a.appointment_time = '12:00';

INSERT INTO patient_visits (
    appointment_id, patient_id, doctor_id, visit_date,
    symptoms, diagnosis, notes, follow_up_date
)
SELECT
    a.appointment_id, a.patient_id, a.doctor_id, a.appointment_date,
    'Fever, sore throat, and cough',
    'Upper respiratory infection',
    'Encourage fluids and monitor temperature',
    TRUNC(SYSDATE) + 5
FROM appointments a
JOIN patients p ON p.patient_id = a.patient_id
WHERE p.civil_id = '11000005'
  AND a.appointment_date = TRUNC(SYSDATE) - 18
  AND a.appointment_time = '09:30';

INSERT INTO patient_visits (
    appointment_id, patient_id, doctor_id, visit_date,
    symptoms, diagnosis, notes, follow_up_date
)
SELECT
    a.appointment_id, a.patient_id, a.doctor_id, a.appointment_date,
    'Minor arm injury and pain',
    'Soft tissue injury',
    'No fracture suspected; return if swelling increases',
    NULL
FROM appointments a
JOIN patients p ON p.patient_id = a.patient_id
WHERE p.civil_id = '11000006'
  AND a.appointment_date = TRUNC(SYSDATE) - 15
  AND a.appointment_time = '13:00';

INSERT INTO patient_visits (
    appointment_id, patient_id, doctor_id, visit_date,
    symptoms, diagnosis, notes, follow_up_date
)
SELECT
    a.appointment_id, a.patient_id, a.doctor_id, a.appointment_date,
    'Raised blood pressure readings',
    'Hypertension',
    'Continue medication and record daily readings',
    TRUNC(SYSDATE) + 30
FROM appointments a
JOIN patients p ON p.patient_id = a.patient_id
WHERE p.civil_id = '11000007'
  AND a.appointment_date = TRUNC(SYSDATE) - 12
  AND a.appointment_time = '14:00';

INSERT INTO patient_visits (
    appointment_id, patient_id, doctor_id, visit_date,
    symptoms, diagnosis, notes, follow_up_date
)
SELECT
    a.appointment_id, a.patient_id, a.doctor_id, a.appointment_date,
    'Elevated blood glucose',
    'Type 2 diabetes mellitus',
    'Diet and glucose monitoring reviewed',
    TRUNC(SYSDATE) + 30
FROM appointments a
JOIN patients p ON p.patient_id = a.patient_id
WHERE p.civil_id = '11000008'
  AND a.appointment_date = TRUNC(SYSDATE) - 9
  AND a.appointment_time = '10:30';

INSERT INTO patient_visits (
    appointment_id, patient_id, doctor_id, visit_date,
    symptoms, diagnosis, notes, follow_up_date
)
SELECT
    a.appointment_id, a.patient_id, a.doctor_id, a.appointment_date,
    'Ankle pain and swelling',
    'Mild ankle sprain',
    'Rest and limit weight-bearing activity',
    TRUNC(SYSDATE) + 14
FROM appointments a
JOIN patients p ON p.patient_id = a.patient_id
WHERE p.civil_id = '11000009'
  AND a.appointment_date = TRUNC(SYSDATE) - 6
  AND a.appointment_time = '15:00';

INSERT INTO patient_visits (
    appointment_id, patient_id, doctor_id, visit_date,
    symptoms, diagnosis, notes, follow_up_date
)
SELECT
    a.appointment_id, a.patient_id, a.doctor_id, a.appointment_date,
    'Cough and mild breathing discomfort',
    'Mild bronchospasm',
    'Use inhaler as instructed and avoid triggers',
    TRUNC(SYSDATE) + 14
FROM appointments a
JOIN patients p ON p.patient_id = a.patient_id
WHERE p.civil_id = '11000010'
  AND a.appointment_date = TRUNC(SYSDATE) - 3
  AND a.appointment_time = '11:30';


-- ============================================================
-- 8. PRESCRIPTIONS
-- One prescription for each visit.
-- ============================================================

INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
SELECT visit_id, patient_id, doctor_id, visit_date, 'Monitor blood pressure regularly'
FROM patient_visits
WHERE patient_id = (SELECT patient_id FROM patients WHERE civil_id = '11000001');

INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
SELECT visit_id, patient_id, doctor_id, visit_date, 'Use medicine only when needed'
FROM patient_visits
WHERE patient_id = (SELECT patient_id FROM patients WHERE civil_id = '11000002');

INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
SELECT visit_id, patient_id, doctor_id, visit_date, 'Apply topical treatment to the affected area'
FROM patient_visits
WHERE patient_id = (SELECT patient_id FROM patients WHERE civil_id = '11000003');

INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
SELECT visit_id, patient_id, doctor_id, visit_date, 'Complete laboratory tests before follow-up'
FROM patient_visits
WHERE patient_id = (SELECT patient_id FROM patients WHERE civil_id = '11000004');

INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
SELECT visit_id, patient_id, doctor_id, visit_date, 'Complete the full antibiotic course'
FROM patient_visits
WHERE patient_id = (SELECT patient_id FROM patients WHERE civil_id = '11000005');

INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
SELECT visit_id, patient_id, doctor_id, visit_date, 'Take after meals'
FROM patient_visits
WHERE patient_id = (SELECT patient_id FROM patients WHERE civil_id = '11000006');

INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
SELECT visit_id, patient_id, doctor_id, visit_date, 'Continue regular hypertension treatment'
FROM patient_visits
WHERE patient_id = (SELECT patient_id FROM patients WHERE civil_id = '11000007');

INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
SELECT visit_id, patient_id, doctor_id, visit_date, 'Record fasting glucose each morning'
FROM patient_visits
WHERE patient_id = (SELECT patient_id FROM patients WHERE civil_id = '11000008');

INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
SELECT visit_id, patient_id, doctor_id, visit_date, 'Rest the ankle and avoid strenuous exercise'
FROM patient_visits
WHERE patient_id = (SELECT patient_id FROM patients WHERE civil_id = '11000009');

INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
SELECT visit_id, patient_id, doctor_id, visit_date, 'Return if breathing symptoms worsen'
FROM patient_visits
WHERE patient_id = (SELECT patient_id FROM patients WHERE civil_id = '11000010');


-- ============================================================
-- 9. PRESCRIPTION ITEMS
-- Two medicine items per prescription = 20 items.
-- ============================================================

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000001'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Amlodipine 5mg'),
    '5mg', 'Once daily', 30, 'Take at the same time each day'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000001'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Aspirin 81mg'),
    '81mg', 'Once daily', 30, 'Take after food'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000002'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Paracetamol 500mg'),
    '500mg', 'Up to three times daily', 5, 'Take when required'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000002'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Ibuprofen 400mg'),
    '400mg', 'Twice daily', 3, 'Take after food'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000003'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Diclofenac Gel'),
    'Small amount', 'Twice daily', 7, 'Apply to the affected knee'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000003'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Paracetamol 500mg'),
    '500mg', 'Twice daily', 5, 'Take after food'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000004'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Paracetamol 500mg'),
    '500mg', 'Once daily', 3, 'Take only when needed'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000004'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Aspirin 81mg'),
    '81mg', 'Once daily', 7, 'Take after breakfast'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000005'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Amoxicillin 500mg'),
    '500mg', 'Three times daily', 7, 'Complete the full course'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000005'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Cough Syrup'),
    '5ml', 'Three times daily', 5, 'Shake well before use'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000006'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Ibuprofen 400mg'),
    '400mg', 'Twice daily', 5, 'Take after meals'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000006'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Diclofenac Gel'),
    'Small amount', 'Twice daily', 5, 'Apply gently to the injured area'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000007'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Bisoprolol 5mg'),
    '5mg', 'Once daily', 30, 'Take in the morning'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000007'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Atorvastatin 20mg'),
    '20mg', 'Once daily', 30, 'Take in the evening'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000008'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Metformin 500mg'),
    '500mg', 'Twice daily', 30, 'Take with meals'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000008'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Gliclazide 80mg'),
    '80mg', 'Once daily', 30, 'Take before breakfast'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000009'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Ibuprofen 400mg'),
    '400mg', 'Twice daily', 5, 'Take after food'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000009'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Diclofenac Gel'),
    'Small amount', 'Twice daily', 7, 'Apply to the ankle'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000010'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Salbutamol Inhaler'),
    'Two puffs', 'When required', 14, 'Use for breathing discomfort'
);

INSERT INTO prescription_items
    (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (
    (SELECT pr.prescription_id
       FROM prescriptions pr JOIN patients p ON p.patient_id = pr.patient_id
      WHERE p.civil_id = '11000010'),
    (SELECT medicine_id FROM medicines WHERE medicine_name = 'Montelukast 10mg'),
    '10mg', 'Once daily', 14, 'Take in the evening'
);


-- ============================================================
-- 10. ADMISSIONS
-- 4 current admissions and 2 discharged admissions.
-- Room statuses match the current admission state.
-- ============================================================

INSERT INTO admissions (
    patient_id, doctor_id, room_id,
    admission_date, discharge_date, admission_reason, status
)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000003'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Salim Al Maawali'),
    (SELECT room_id FROM rooms WHERE room_no = '101'),
    TRUNC(SYSDATE) - 2, NULL, 'Observation after orthopedic procedure', 'Admitted'
);

INSERT INTO admissions (
    patient_id, doctor_id, room_id,
    admission_date, discharge_date, admission_reason, status
)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000004'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Aisha Al Shukaili'),
    (SELECT room_id FROM rooms WHERE room_no = '102'),
    TRUNC(SYSDATE) - 1, NULL, 'Investigation of persistent dizziness', 'Admitted'
);

INSERT INTO admissions (
    patient_id, doctor_id, room_id,
    admission_date, discharge_date, admission_reason, status
)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000007'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Nasser Al Habsi'),
    (SELECT room_id FROM rooms WHERE room_no = '201'),
    TRUNC(SYSDATE) - 3, NULL, 'Cardiac monitoring', 'Admitted'
);

INSERT INTO admissions (
    patient_id, doctor_id, room_id,
    admission_date, discharge_date, admission_reason, status
)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000009'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Hamad Al Amri'),
    (SELECT room_id FROM rooms WHERE room_no = 'ICU-01'),
    TRUNC(SYSDATE) - 1, NULL, 'Emergency observation', 'Admitted'
);

INSERT INTO admissions (
    patient_id, doctor_id, room_id,
    admission_date, discharge_date, admission_reason, status
)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000005'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Fatma Al Hinai'),
    (SELECT room_id FROM rooms WHERE room_no = '103'),
    TRUNC(SYSDATE) - 20, TRUNC(SYSDATE) - 18,
    'Observation for fever and dehydration', 'Discharged'
);

INSERT INTO admissions (
    patient_id, doctor_id, room_id,
    admission_date, discharge_date, admission_reason, status
)
VALUES (
    (SELECT patient_id FROM patients WHERE civil_id = '11000010'),
    (SELECT doctor_id FROM doctors WHERE full_name = 'Dr. Maryam Al Lawati'),
    (SELECT room_id FROM rooms WHERE room_no = '202'),
    TRUNC(SYSDATE) - 14, TRUNC(SYSDATE) - 12,
    'Respiratory observation', 'Discharged'
);

COMMIT;
