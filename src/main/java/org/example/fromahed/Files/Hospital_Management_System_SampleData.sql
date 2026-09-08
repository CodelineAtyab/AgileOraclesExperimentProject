
-- 1. DEPARTMENTS (ids 1-7)
--------------------------------------------------------------------------
INSERT INTO departments (department_name, floor_no, status) VALUES ('Cardiology', '3', 'Active');
INSERT INTO departments (department_name, floor_no, status) VALUES ('Pediatrics', '2', 'Active');
INSERT INTO departments (department_name, floor_no, status) VALUES ('Emergency', '1', 'Active');
INSERT INTO departments (department_name, floor_no, status) VALUES ('Orthopedics', '4', 'Active');
INSERT INTO departments (department_name, floor_no, status) VALUES ('Neurology', '5', 'Active');
INSERT INTO departments (department_name, floor_no, status) VALUES ('General Medicine', '2', 'Active');
INSERT INTO departments (department_name, floor_no, status) VALUES ('Surgery', '6', 'Active');

--------------------------------------------------------------------------
-- 2. DOCTOR_SPECIALTIES (ids 1-7)
--------------------------------------------------------------------------
INSERT INTO doctor_specialties (specialty_name, status) VALUES ('Cardiologist', 'Active');
INSERT INTO doctor_specialties (specialty_name, status) VALUES ('Pediatrician', 'Active');
INSERT INTO doctor_specialties (specialty_name, status) VALUES ('Emergency Physician', 'Active');
INSERT INTO doctor_specialties (specialty_name, status) VALUES ('Orthopedic Surgeon', 'Active');
INSERT INTO doctor_specialties (specialty_name, status) VALUES ('Neurologist', 'Active');
INSERT INTO doctor_specialties (specialty_name, status) VALUES ('General Practitioner', 'Active');
INSERT INTO doctor_specialties (specialty_name, status) VALUES ('Surgeon', 'Active');

--------------------------------------------------------------------------
-- 3. MEDICINE_CATEGORIES (ids 1-8)
--------------------------------------------------------------------------
INSERT INTO medicine_categories (category_name, status) VALUES ('Antibiotic', 'Active');
INSERT INTO medicine_categories (category_name, status) VALUES ('Painkiller', 'Active');
INSERT INTO medicine_categories (category_name, status) VALUES ('Diabetes', 'Active');
INSERT INTO medicine_categories (category_name, status) VALUES ('Antihistamine', 'Active');
INSERT INTO medicine_categories (category_name, status) VALUES ('Antacid', 'Active');
INSERT INTO medicine_categories (category_name, status) VALUES ('Vitamin', 'Active');
INSERT INTO medicine_categories (category_name, status) VALUES ('Cardiac', 'Active');
INSERT INTO medicine_categories (category_name, status) VALUES ('Respiratory', 'Active');

--------------------------------------------------------------------------
-- 4. APPOINTMENT_STATUSES (ids 1-4)
--------------------------------------------------------------------------
INSERT INTO appointment_statuses (status_name) VALUES ('Scheduled');
INSERT INTO appointment_statuses (status_name) VALUES ('Completed');
INSERT INTO appointment_statuses (status_name) VALUES ('Cancelled');
INSERT INTO appointment_statuses (status_name) VALUES ('No Show');

--------------------------------------------------------------------------
-- 5. PATIENTS (ids 1-22)
--------------------------------------------------------------------------
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000001','Salim Al-Amri','Male',DATE '1985-03-12','92000001','A+','Muscat, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000002','Mona Al-Habsi','Female',DATE '1990-07-22','92000002','A-','Muscat, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000003','Rashid Al-Kindi','Male',DATE '1978-11-02','92000003','B+','Seeb, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000004','Huda Al-Balushi','Female',DATE '2001-01-15','92000004','B-','Muscat, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000005','Nasser Al-Riyami','Male',DATE '1965-05-30','92000005','O+','Barka, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000006','Layla Al-Saidi','Female',DATE '1995-09-09','92000006','O-','Muscat, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000007','Yousuf Al-Farsi','Male',DATE '1988-02-18','92000007','AB+','Sohar, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000008','Aisha Al-Hinai','Female',DATE '1992-12-25','92000008','AB-','Muscat, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000009','Khalid Al-Busaidi','Male',DATE '1975-06-06','92000009','A+','Nizwa, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000010','Fatima Al-Zadjali','Female',DATE '1983-08-14','92000010','A-','Muscat, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000011','Sultan Al-Mamari','Male',DATE '1998-04-27','92000011','B+','Rustaq, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000012','Noor Al-Abri','Female',DATE '2003-10-11','92000012','B-','Muscat, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000013','Hamed Al-Harthy','Male',DATE '1970-01-01','92000013','O+','Muscat, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000014','Zainab Al-Rashdi','Female',DATE '1987-03-19','92000014','O-','Salalah, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000015','Talal Al-Siyabi','Male',DATE '1993-07-07','92000015','AB+','Muscat, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000016','Amal Al-Lawati','Female',DATE '1980-05-05','92000016','AB-','Muscat, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000017','Marwan Al-Hosni','Male',DATE '1991-09-23','92000017','A+','Ibri, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000018','Shamsa Al-Ghafri','Female',DATE '1996-11-30','92000018','A-','Muscat, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000019','Adil Al-Shukaili','Male',DATE '1982-02-02','92000019','B+','Muscat, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000020','Wafa Al-Maskari','Female',DATE '1999-06-16','92000020','B-','Sur, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000021','Bader Al-Kalbani','Male',DATE '1973-12-12','92000021','O+','Muscat, Oman');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, blood_group, address) VALUES ('20000022','Reem Al-Jabri','Female',DATE '2000-08-08','92000022','O-','Muscat, Oman');

--------------------------------------------------------------------------
-- 6. DOCTORS (ids 1-12)
--------------------------------------------------------------------------
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status) VALUES ('Dr. Ahmed Al-Farsi', 1, 1, '93000001', 'ahmed.farsi@alnoor.com', 25, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status) VALUES ('Dr. Fatima Al-Balushi', 2, 2, '93000002', 'fatima.balushi@alnoor.com', 20, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status) VALUES ('Dr. Sultan Al-Harthy', 3, 3, '93000003', 'sultan.harthy@alnoor.com', 15, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status) VALUES ('Dr. Mariam Al-Saidi', 4, 4, '93000004', 'mariam.saidi@alnoor.com', 30, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status) VALUES ('Dr. Khalid Al-Rashdi', 5, 5, '93000005', 'khalid.rashdi@alnoor.com', 35, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status) VALUES ('Dr. Aisha Al-Kindi', 6, 6, '93000006', 'aisha.kindi@alnoor.com', 15, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status) VALUES ('Dr. Yousuf Al-Mamari', 7, 7, '93000007', 'yousuf.mamari@alnoor.com', 40, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status) VALUES ('Dr. Noor Al-Abri', 1, 1, '93000008', 'noor.abri@alnoor.com', 28, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status) VALUES ('Dr. Salim Al-Hinai', 2, 2, '93000009', 'salim.hinai@alnoor.com', 22, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status) VALUES ('Dr. Layla Al-Zadjali', 3, 3, '93000010', 'layla.zadjali@alnoor.com', 18, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status) VALUES ('Dr. Hamed Al-Busaidi', 4, 4, '93000011', 'hamed.busaidi@alnoor.com', 32, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status) VALUES ('Dr. Zainab Al-Riyami', 5, 5, '93000012', 'zainab.riyami@alnoor.com', 38, 'Active');

--------------------------------------------------------------------------
-- 7. MEDICINES (ids 1-22)
--------------------------------------------------------------------------
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Amoxicillin 500mg', 1, 'Tablet', 8, 20, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Paracetamol 500mg', 2, 'Tablet', 15, 30, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Metformin 500mg', 3, 'Tablet', 5, 25, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Cetirizine 10mg', 4, 'Tablet', 6, 20, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Omeprazole 20mg', 5, 'Capsule', 10, 20, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Vitamin C 1000mg', 6, 'Tablet', 100, 30, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Atorvastatin 20mg', 7, 'Tablet', 60, 20, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Salbutamol Inhaler', 8, 'Injection', 40, 15, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Azithromycin 250mg', 1, 'Tablet', 50, 20, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Ibuprofen 400mg', 2, 'Tablet', 70, 30, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Insulin Glargine', 3, 'Injection', 25, 10, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Loratadine 10mg', 4, 'Tablet', 45, 20, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Ranitidine 150mg', 5, 'Tablet', 55, 20, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Vitamin D3 1000IU', 6, 'Tablet', 90, 30, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Aspirin 75mg', 7, 'Tablet', 65, 20, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Montelukast 10mg', 8, 'Tablet', 35, 15, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Ciprofloxacin 500mg', 1, 'Tablet', 40, 20, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Diclofenac Gel', 2, 'Syrup', 30, 15, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Glibenclamide 5mg', 3, 'Tablet', 20, 10, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Fexofenadine 120mg', 4, 'Tablet', 28, 15, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Antacid Syrup', 5, 'Syrup', 33, 15, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status) VALUES ('Multivitamin Syrup', 6, 'Syrup', 48, 20, 'Active');

--------------------------------------------------------------------------
-- 8. ROOMS (ids 1-10)
--------------------------------------------------------------------------
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('101', 'General', 25, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('102', 'General', 25, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('103', 'General', 25, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('201', 'Private', 60, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('202', 'Private', 60, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('203', 'Private', 60, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('ICU-1', 'ICU', 150, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('ICU-2', 'ICU', 150, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('ICU-3', 'ICU', 150, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('104', 'General', 25, 'Available');

--------------------------------------------------------------------------
-- 9. APPOINTMENTS (ids 1-32)
--------------------------------------------------------------------------
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (1, 1, DATE '2026-06-01', '09:00', 2, 'Chest pain');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (2, 2, DATE '2026-06-02', '10:00', 2, 'Child fever');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (3, 3, DATE '2026-06-03', '11:00', 2, 'Minor injury');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (4, 4, DATE '2026-06-04', '09:30', 2, 'Knee pain');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (5, 5, DATE '2026-06-05', '13:00', 2, 'Headaches');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (6, 6, DATE '2026-06-08', '10:30', 2, 'General checkup');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (7, 7, DATE '2026-06-09', '14:00', 2, 'Pre-surgery consult');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (8, 8, DATE '2026-06-10', '09:00', 2, 'Follow-up cardiology');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (9, 9, DATE '2026-06-11', '11:30', 2, 'Child vaccination');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (10, 10, DATE '2026-06-12', '15:00', 2, 'Allergic reaction');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (11, 11, DATE '2026-06-15', '09:00', 2, 'Fracture follow-up');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (12, 12, DATE '2026-06-16', '10:00', 2, 'Migraine');

INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (13, 1, DATE '2026-07-14', '09:00', 1, 'Routine cardiac check');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (14, 2, DATE '2026-07-14', '10:00', 1, 'Fever');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (15, 3, DATE '2026-07-15', '11:00', 1, 'Sprained ankle');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (16, 4, DATE '2026-07-15', '13:00', 1, 'Back pain');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (17, 5, DATE '2026-07-16', '09:00', 1, 'Dizziness');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (18, 6, DATE '2026-07-16', '10:00', 1, 'Annual physical');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (19, 7, DATE '2026-07-17', '14:00', 1, 'Surgery follow-up');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (20, 8, DATE '2026-07-17', '09:30', 1, 'Chest tightness');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (21, 9, DATE '2026-07-18', '11:00', 1, 'Child checkup');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (22, 10, DATE '2026-07-18', '15:00', 1, 'Rash');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (1, 11, DATE '2026-07-19', '09:00', 1, 'Joint pain');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (2, 12, DATE '2026-07-19', '10:00', 1, 'Numbness');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (3, 1, DATE '2026-07-20', '09:00', 3, 'Cardiac review');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (4, 2, DATE '2026-07-20', '10:00', 4, 'Fever recheck');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (5, 3, DATE '2026-07-21', '11:00', 1, 'Minor burn');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (6, 4, DATE '2026-07-22', '13:00', 1, 'Shoulder pain');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (7, 5, DATE '2026-07-23', '09:00', 1, 'Migraine follow-up');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (8, 6, DATE '2026-07-24', '10:00', 1, 'General checkup');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (9, 7, DATE '2026-07-25', '14:00', 1, 'Pre-surgery consult');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit) VALUES (10, 8, DATE '2026-07-26', '09:00', 1, 'Cardiology follow-up');

--------------------------------------------------------------------------
-- 10. PATIENT_VISITS + PRESCRIPTIONS + PRESCRIPTION_ITEMS
--------------------------------------------------------------------------
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date) VALUES (1, 1, 1, DATE '2026-06-01', 'Chest pain, shortness of breath', 'Mild angina', 'Advised rest and follow-up ECG', DATE '2026-07-01');
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date) VALUES (2, 2, 2, DATE '2026-06-02', 'High fever, cough', 'Viral infection', 'Fluids and rest advised', DATE '2026-06-09');
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date) VALUES (3, 3, 3, DATE '2026-06-03', 'Cut on hand', 'Minor laceration', 'Wound cleaned and dressed', NULL);
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date) VALUES (4, 4, 4, DATE '2026-06-04', 'Knee swelling', 'Mild ligament strain', 'Physiotherapy recommended', DATE '2026-06-18');
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date) VALUES (5, 5, 5, DATE '2026-06-05', 'Recurring headaches', 'Tension headache', 'Stress management advised', DATE '2026-06-20');
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date) VALUES (6, 6, 6, DATE '2026-06-08', 'General fatigue', 'Vitamin D deficiency', 'Supplements prescribed', DATE '2026-07-08');
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date) VALUES (7, 7, 7, DATE '2026-06-09', 'Pre-surgical evaluation', 'Fit for surgery', 'Cleared for procedure next month', NULL);
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date) VALUES (8, 8, 8, DATE '2026-06-10', 'Occasional palpitations', 'Stable arrhythmia', 'Continue current medication', DATE '2026-09-10');
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date) VALUES (9, 9, 9, DATE '2026-06-11', 'Routine visit', 'Healthy, vaccination due', 'Vaccination administered', NULL);
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date) VALUES (10, 10, 10, DATE '2026-06-12', 'Skin rash, itching', 'Allergic reaction', 'Antihistamines prescribed', DATE '2026-06-19');
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date) VALUES (11, 11, 11, DATE '2026-06-15', 'Pain near old fracture site', 'Healing well', 'X-ray shows good progress', DATE '2026-07-15');
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date) VALUES (12, 12, 12, DATE '2026-06-16', 'Severe migraine with aura', 'Migraine', 'Prescribed pain relief, avoid triggers', DATE '2026-06-30');

INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes) VALUES (1, 1, 1, DATE '2026-06-01', 'Take with food');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes) VALUES (2, 2, 2, DATE '2026-06-02', 'Complete full course');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes) VALUES (3, 3, 3, DATE '2026-06-03', 'Apply topically as needed');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes) VALUES (4, 4, 4, DATE '2026-06-04', 'Take after meals');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes) VALUES (5, 5, 5, DATE '2026-06-05', 'Avoid caffeine');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes) VALUES (6, 6, 6, DATE '2026-06-08', 'Take daily with breakfast');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes) VALUES (7, 7, 7, DATE '2026-06-09', 'Pre-op medication');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes) VALUES (8, 8, 8, DATE '2026-06-10', 'Continue existing dosage');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes) VALUES (9, 9, 9, DATE '2026-06-11', 'No new medication needed');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes) VALUES (10, 10, 10, DATE '2026-06-12', 'Take at first sign of itching');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes) VALUES (11, 11, 11, DATE '2026-06-15', 'Continue physiotherapy');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes) VALUES (12, 12, 12, DATE '2026-06-16', 'Take at onset of symptoms');

INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (1, 7, '20mg', 'Once daily', 30, 'After food');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (1, 15, '75mg', 'Once daily', 30, 'After food');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (2, 2, '500mg', 'Three times daily', 5, 'After food');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (2, 9, '250mg', 'Once daily', 5, 'Complete full course');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (3, 18, 'Apply thin layer', 'Twice daily', 7, 'Do not cover with bandage');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (3, 2, '500mg', 'As needed', 5, 'For pain');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (4, 10, '400mg', 'Twice daily', 10, 'After food');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (4, 14, '1000IU', 'Once daily', 30, 'With breakfast');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (5, 2, '500mg', 'As needed', 7, 'For headache');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (5, 6, '1000mg', 'Once daily', 14, 'With breakfast');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (6, 14, '1000IU', 'Once daily', 60, 'With breakfast');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (6, 6, '1000mg', 'Once daily', 30, 'With breakfast');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (7, 5, '20mg', 'Once daily', 3, 'Before food, pre-op only');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (7, 2, '500mg', 'As needed', 3, 'For discomfort');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (8, 15, '75mg', 'Once daily', 90, 'After food, long term');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (8, 7, '20mg', 'Once daily', 90, 'After food, long term');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (9, 6, '1000mg', 'Once daily', 30, 'With breakfast');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (9, 14, '1000IU', 'Once daily', 30, 'With breakfast');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (10, 4, '10mg', 'Once daily', 7, 'At bedtime');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (10, 12, '10mg', 'Once daily', 7, 'At bedtime');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (11, 2, '500mg', 'As needed', 14, 'For pain');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (11, 10, '400mg', 'Twice daily', 14, 'After food');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (12, 2, '500mg', 'As needed', 10, 'At onset of migraine');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions) VALUES (12, 10, '400mg', 'As needed', 10, 'At onset of migraine');

--------------------------------------------------------------------------
-- 11. ADMISSIONS (ids 1-6) + ROOM STATUS UPDATES
--------------------------------------------------------------------------
INSERT INTO admissions (patient_id, doctor_id, room_id, admission_date, discharge_date, admission_reason, status) VALUES (3, 3, 1, DATE '2026-07-05', NULL, 'Observation after minor surgery', 'Admitted');
INSERT INTO admissions (patient_id, doctor_id, room_id, admission_date, discharge_date, admission_reason, status) VALUES (7, 7, 2, DATE '2026-07-08', NULL, 'Post-operative recovery', 'Admitted');
INSERT INTO admissions (patient_id, doctor_id, room_id, admission_date, discharge_date, admission_reason, status) VALUES (10, 10, 3, DATE '2026-07-10', NULL, 'Severe allergic reaction monitoring', 'Admitted');
INSERT INTO admissions (patient_id, doctor_id, room_id, admission_date, discharge_date, admission_reason, status) VALUES (14, 5, 4, DATE '2026-06-20', DATE '2026-06-25', 'Neurological observation', 'Discharged');
INSERT INTO admissions (patient_id, doctor_id, room_id, admission_date, discharge_date, admission_reason, status) VALUES (18, 6, 5, DATE '2026-06-15', DATE '2026-06-18', 'Dehydration treatment', 'Discharged');
INSERT INTO admissions (patient_id, doctor_id, room_id, admission_date, discharge_date, admission_reason, status) VALUES (21, 1, 6, DATE '2026-06-10', DATE '2026-06-14', 'Cardiac monitoring', 'Discharged');

-- Keep room status in sync with the admissions above
UPDATE rooms SET status = 'Occupied' WHERE room_id IN (1, 2, 3);
UPDATE rooms SET status = 'Available' WHERE room_id IN (4, 5, 6);



COMMIT;
