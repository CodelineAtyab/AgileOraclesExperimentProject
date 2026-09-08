-- =============================================================================
-- Al Noor Hospital — Sample Data
-- Minima: 5+ departments, 10+ doctors, 20+ patients, 20+ medicines,
--         30+ appointments, 10+ visits with prescriptions
-- =============================================================================

-- Appointment statuses
INSERT INTO appointment_statuses (status_name) VALUES ('Scheduled');
INSERT INTO appointment_statuses (status_name) VALUES ('Completed');
INSERT INTO appointment_statuses (status_name) VALUES ('Cancelled');
INSERT INTO appointment_statuses (status_name) VALUES ('No Show');

-- Departments (5+)
INSERT INTO departments (department_name, floor_no, status) VALUES ('Cardiology', 2, 'Active');
INSERT INTO departments (department_name, floor_no, status) VALUES ('Pediatrics', 1, 'Active');
INSERT INTO departments (department_name, floor_no, status) VALUES ('Emergency', 0, 'Active');
INSERT INTO departments (department_name, floor_no, status) VALUES ('Orthopedics', 3, 'Active');
INSERT INTO departments (department_name, floor_no, status) VALUES ('Internal Medicine', 2, 'Active');
INSERT INTO departments (department_name, floor_no, status) VALUES ('Obstetrics & Gynecology', 4, 'Active');
INSERT INTO departments (department_name, floor_no, status) VALUES ('Neurology', 3, 'Active');

-- Doctor specialties
INSERT INTO doctor_specialties (specialty_name, status) VALUES ('Cardiologist', 'Active');
INSERT INTO doctor_specialties (specialty_name, status) VALUES ('Pediatrician', 'Active');
INSERT INTO doctor_specialties (specialty_name, status) VALUES ('Emergency Physician', 'Active');
INSERT INTO doctor_specialties (specialty_name, status) VALUES ('Orthopedic Surgeon', 'Active');
INSERT INTO doctor_specialties (specialty_name, status) VALUES ('Internist', 'Active');
INSERT INTO doctor_specialties (specialty_name, status) VALUES ('Gynecologist', 'Active');
INSERT INTO doctor_specialties (specialty_name, status) VALUES ('Neurologist', 'Active');
INSERT INTO doctor_specialties (specialty_name, status) VALUES ('General Surgeon', 'Active');

-- Medicine categories
INSERT INTO medicine_categories (category_name, status) VALUES ('Antibiotic', 'Active');
INSERT INTO medicine_categories (category_name, status) VALUES ('Painkiller', 'Active');
INSERT INTO medicine_categories (category_name, status) VALUES ('Diabetes', 'Active');
INSERT INTO medicine_categories (category_name, status) VALUES ('Cardiac', 'Active');
INSERT INTO medicine_categories (category_name, status) VALUES ('Vitamins', 'Active');
INSERT INTO medicine_categories (category_name, status) VALUES ('Respiratory', 'Active');
INSERT INTO medicine_categories (category_name, status) VALUES ('Gastrointestinal', 'Active');

-- Doctors (10+)
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status)
VALUES ('Dr. Ahmed Al-Balushi', 1, 1, '96891234501', 'ahmed.balushi@alnoor.om', 25.000, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status)
VALUES ('Dr. Fatima Al-Hinai', 2, 2, '96891234502', 'fatima.hinai@alnoor.om', 20.000, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status)
VALUES ('Dr. Omar Al-Riyami', 3, 3, '96891234503', 'omar.riyami@alnoor.om', 30.000, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status)
VALUES ('Dr. Sara Al-Harthy', 4, 4, '96891234504', 'sara.harthy@alnoor.om', 28.000, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status)
VALUES ('Dr. Khalid Al-Maawali', 5, 5, '96891234505', 'khalid.maawali@alnoor.om', 22.000, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status)
VALUES ('Dr. Maryam Al-Siyabi', 6, 6, '96891234506', 'maryam.siyabi@alnoor.om', 25.000, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status)
VALUES ('Dr. Yousuf Al-Kindi', 7, 7, '96891234507', 'yousuf.kindi@alnoor.om', 35.000, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status)
VALUES ('Dr. Nasser Al-Abri', 1, 1, '96891234508', 'nasser.abri@alnoor.om', 25.000, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status)
VALUES ('Dr. Aisha Al-Zadjali', 2, 2, '96891234509', 'aisha.zadjali@alnoor.om', 20.000, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status)
VALUES ('Dr. Hassan Al-Farsi', 5, 5, '96891234510', 'hassan.farsi@alnoor.om', 22.000, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status)
VALUES ('Dr. Layla Al-Amri', 3, 3, '96891234511', 'layla.amri@alnoor.om', 30.000, 'Active');
INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status)
VALUES ('Dr. Salim Al-Busaidi', 4, 4, '96891234512', 'salim.busaidi@alnoor.om', 28.000, 'Inactive');

-- Patients (20+)
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345671', 'Abdullah Al-Maskari', 'Male', DATE '1985-03-12', '96899110001', 'abdullah.m@email.om', 'O+', 'Al Khuwair, Muscat', 'Fatima Al-Maskari', '96899110002');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345672', 'Muna Al-Ghafri', 'Female', DATE '1990-07-22', '96899110003', 'muna.g@email.om', 'A+', 'Qurum, Muscat', 'Ali Al-Ghafri', '96899110004');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345673', 'Said Al-Shanfari', 'Male', DATE '1978-11-05', '96899110005', NULL, 'B+', 'Seeb, Muscat', 'Huda Al-Shanfari', '96899110006');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345674', 'Nadia Al-Toubi', 'Female', DATE '2001-01-18', '96899110007', 'nadia.t@email.om', 'AB+', 'Bawshar, Muscat', 'Rashid Al-Toubi', '96899110008');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345675', 'Ibrahim Al-Ajmi', 'Male', DATE '1965-09-30', '96899110009', 'ibrahim.a@email.om', 'O-', 'Al Amerat, Muscat', 'Salma Al-Ajmi', '96899110010');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345676', 'Hanan Al-Mahrouqi', 'Female', DATE '1995-04-08', '96899110011', 'hanan.m@email.om', 'A-', 'Muttrah, Muscat', 'Yahya Al-Mahrouqi', '96899110012');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345677', 'Rashid Al-Habsi', 'Male', DATE '1988-12-25', '96899110013', NULL, 'B-', 'Al Khoud, Muscat', 'Amal Al-Habsi', '96899110014');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345678', 'Amina Al-Rawahi', 'Female', DATE '2015-06-14', '96899110015', NULL, 'O+', 'Ruwi, Muscat', 'Khalifa Al-Rawahi', '96899110016');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345679', 'Tariq Al-Nabhani', 'Male', DATE '1972-02-28', '96899110017', 'tariq.n@email.om', 'A+', 'Sohar', 'Laila Al-Nabhani', '96899110018');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345680', 'Zainab Al-Saadi', 'Female', DATE '1998-08-03', '96899110019', 'zainab.s@email.om', 'AB-', 'Nizwa', 'Mohammed Al-Saadi', '96899110020');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345681', 'Hamad Al-Jabri', 'Male', DATE '1982-05-17', '96899110021', 'hamad.j@email.om', 'O+', 'Sur', 'Noor Al-Jabri', '96899110022');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345682', 'Latifa Al-Shehhi', 'Female', DATE '1993-10-09', '96899110023', 'latifa.s@email.om', 'B+', 'Salalah', 'Sultan Al-Shehhi', '96899110024');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345683', 'Majid Al-Kalbani', 'Male', DATE '2005-03-21', '96899110025', NULL, 'A+', 'Ibri', 'Wafa Al-Kalbani', '96899110026');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345684', 'Bushra Al-Omairi', 'Female', DATE '1987-07-11', '96899110027', 'bushra.o@email.om', 'O-', 'Barka', 'Fahad Al-Omairi', '96899110028');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345685', 'Waleed Al-Dhuhli', 'Male', DATE '1975-11-19', '96899110029', 'waleed.d@email.om', 'B+', 'Al Khuwair, Muscat', 'Rania Al-Dhuhli', '96899110030');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345686', 'Reem Al-Ismaili', 'Female', DATE '2010-01-30', '96899110031', NULL, 'A-', 'Qurum, Muscat', 'Juma Al-Ismaili', '96899110032');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345687', 'Fahad Al-Qasmi', 'Male', DATE '1991-09-07', '96899110033', 'fahad.q@email.om', 'AB+', 'Seeb, Muscat', 'Maha Al-Qasmi', '96899110034');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345688', 'Shaima Al-Aufi', 'Female', DATE '1984-04-26', '96899110035', 'shaima.a@email.om', 'O+', 'Bawshar, Muscat', 'Bader Al-Aufi', '96899110036');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345689', 'Nasser Al-Suleimani', 'Male', DATE '1969-12-01', '96899110037', 'nasser.s@email.om', 'A+', 'Al Ghubra, Muscat', 'Huda Al-Suleimani', '96899110038');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345690', 'Maryam Al-Hadhrami', 'Female', DATE '1996-06-15', '96899110039', 'maryam.h@email.om', 'B-', 'Muttrah, Muscat', 'Omar Al-Hadhrami', '96899110040');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345691', 'Khalifa Al-Yaarubi', 'Male', DATE '2000-02-14', '96899110041', NULL, 'O+', 'Al Khoud, Muscat', 'Asma Al-Yaarubi', '96899110042');
INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
VALUES ('12345692', 'Asma Al-Kharusi', 'Female', DATE '1979-08-20', '96899110043', 'asma.k@email.om', 'A+', 'Ruwi, Muscat', 'Said Al-Kharusi', '96899110044');

-- Medicines (20+) — some below reorder level for low-stock demos
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Amoxicillin 500mg', 1, 'Tablet', 120, 30, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Azithromycin 250mg', 1, 'Tablet', 8, 25, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Ceftriaxone 1g', 1, 'Injection', 45, 20, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Paracetamol 500mg', 2, 'Tablet', 200, 50, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Ibuprofen 400mg', 2, 'Tablet', 15, 40, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Diclofenac 50mg', 2, 'Tablet', 90, 30, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Metformin 500mg', 3, 'Tablet', 150, 40, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Insulin Glargine', 3, 'Injection', 5, 15, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Gliclazide 80mg', 3, 'Tablet', 70, 20, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Atenolol 50mg', 4, 'Tablet', 100, 25, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Amlodipine 5mg', 4, 'Tablet', 12, 30, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Aspirin 81mg', 4, 'Tablet', 180, 50, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Vitamin D3 1000IU', 5, 'Tablet', 60, 20, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Folic Acid 5mg', 5, 'Tablet', 3, 20, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Multivitamin Syrup', 5, 'Syrup', 40, 15, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Salbutamol Inhaler', 6, 'Inhaler', 55, 20, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Ambroxol Syrup', 6, 'Syrup', 7, 25, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Montelukast 10mg', 6, 'Tablet', 80, 25, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Omeprazole 20mg', 7, 'Capsule', 110, 30, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Domperidone 10mg', 7, 'Tablet', 95, 25, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('ORS Sachets', 7, 'Sachet', 4, 30, 'Active');
INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
VALUES ('Ciprofloxacin 500mg', 1, 'Tablet', 65, 20, 'Active');

-- Rooms
-- Room status for active admissions is set by trg_admission_room_status
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('G-101', 'General', 40.000, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('G-102', 'General', 40.000, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('G-103', 'General', 40.000, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('P-201', 'Private', 80.000, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('P-202', 'Private', 80.000, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('P-203', 'Private', 90.000, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('ICU-01', 'ICU', 200.000, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('ICU-02', 'ICU', 200.000, 'Available');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('G-104', 'General', 40.000, 'Maintenance');
INSERT INTO rooms (room_no, room_type, daily_rate, status) VALUES ('P-204', 'Private', 85.000, 'Available');

-- Appointments (30+) — mix of past completed and upcoming scheduled
-- Status: 1=Scheduled, 2=Completed, 3=Cancelled, 4=No Show

INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (1, 1, TRUNC(SYSDATE) - 20, '09:00', 2, 'Chest pain follow-up', TRUNC(SYSDATE) - 25);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (2, 2, TRUNC(SYSDATE) - 18, '10:00', 2, 'Child fever', TRUNC(SYSDATE) - 20);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (3, 5, TRUNC(SYSDATE) - 15, '11:00', 2, 'Diabetes review', TRUNC(SYSDATE) - 18);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (4, 6, TRUNC(SYSDATE) - 14, '09:30', 2, 'Routine checkup', TRUNC(SYSDATE) - 16);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (5, 1, TRUNC(SYSDATE) - 12, '14:00', 2, 'Hypertension', TRUNC(SYSDATE) - 14);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (6, 7, TRUNC(SYSDATE) - 10, '15:00', 2, 'Migraine', TRUNC(SYSDATE) - 12);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (7, 4, TRUNC(SYSDATE) - 9, '10:30', 2, 'Knee pain', TRUNC(SYSDATE) - 11);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (8, 2, TRUNC(SYSDATE) - 8, '11:30', 2, 'Vaccination', TRUNC(SYSDATE) - 10);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (9, 10, TRUNC(SYSDATE) - 7, '09:00', 2, 'Abdominal pain', TRUNC(SYSDATE) - 9);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (10, 5, TRUNC(SYSDATE) - 6, '13:00', 2, 'Fatigue and dizziness', TRUNC(SYSDATE) - 8);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (11, 8, TRUNC(SYSDATE) - 5, '16:00', 2, 'ECG review', TRUNC(SYSDATE) - 7);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (12, 9, TRUNC(SYSDATE) - 4, '10:00', 2, 'Growth check', TRUNC(SYSDATE) - 6);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (13, 3, TRUNC(SYSDATE) - 3, '08:00', 4, 'Minor injury', TRUNC(SYSDATE) - 5);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (14, 6, TRUNC(SYSDATE) - 2, '12:00', 3, 'Consultation cancelled', TRUNC(SYSDATE) - 4);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (15, 1, TRUNC(SYSDATE) - 1, '09:00', 2, 'Cardiac follow-up', TRUNC(SYSDATE) - 3);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (16, 2, TRUNC(SYSDATE), '09:00', 1, 'Cough and cold', TRUNC(SYSDATE) - 1);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (17, 5, TRUNC(SYSDATE), '10:00', 1, 'Blood pressure check', TRUNC(SYSDATE) - 1);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (18, 4, TRUNC(SYSDATE), '11:00', 1, 'Back pain', TRUNC(SYSDATE) - 1);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (19, 7, TRUNC(SYSDATE), '14:00', 1, 'Headache', SYSDATE);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (20, 3, TRUNC(SYSDATE), '15:00', 1, 'Emergency review', SYSDATE);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (1, 8, TRUNC(SYSDATE) + 1, '09:30', 1, 'Follow-up cardiology', SYSDATE);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (2, 9, TRUNC(SYSDATE) + 1, '10:30', 1, 'Pediatric review', SYSDATE);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (3, 10, TRUNC(SYSDATE) + 2, '11:00', 1, 'Lab results review', SYSDATE);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (5, 1, TRUNC(SYSDATE) + 2, '14:30', 1, 'ECG appointment', SYSDATE);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (7, 4, TRUNC(SYSDATE) + 3, '09:00', 1, 'Physio referral', SYSDATE);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (9, 5, TRUNC(SYSDATE) + 3, '10:00', 1, 'Diabetes education', SYSDATE);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (11, 8, TRUNC(SYSDATE) + 4, '11:30', 1, 'Medication review', SYSDATE);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (12, 6, TRUNC(SYSDATE) + 5, '09:00', 1, 'Prenatal visit', SYSDATE);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (15, 7, TRUNC(SYSDATE) + 5, '15:00', 1, 'Neurology consult', SYSDATE);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (21, 11, TRUNC(SYSDATE) + 6, '08:30', 1, 'Trauma follow-up', SYSDATE);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (22, 10, TRUNC(SYSDATE) + 7, '13:00', 1, 'General checkup', SYSDATE);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (4, 2, TRUNC(SYSDATE) - 25, '09:00', 2, 'Allergy consult', TRUNC(SYSDATE) - 28);
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit, created_at)
VALUES (8, 9, TRUNC(SYSDATE) - 22, '10:00', 2, 'Ear infection', TRUNC(SYSDATE) - 24);

-- Patient visits (10+) linked to completed appointments 1-12, 15, 32, 33
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date)
VALUES (1, 1, 1, TRUNC(SYSDATE) - 20, 'Chest discomfort, mild shortness of breath', 'Stable angina', 'Continue current medication. Lifestyle advice given.', TRUNC(SYSDATE) + 10);
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date)
VALUES (2, 2, 2, TRUNC(SYSDATE) - 18, 'High fever, cough for 3 days', 'Viral upper respiratory infection', 'Hydration and rest advised.', NULL);
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date)
VALUES (3, 3, 5, TRUNC(SYSDATE) - 15, 'Polyuria, fatigue', 'Type 2 Diabetes Mellitus', 'Adjust metformin dose. Diet counseling.', TRUNC(SYSDATE) + 30);
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date)
VALUES (4, 4, 6, TRUNC(SYSDATE) - 14, 'Routine antenatal visit', 'Normal pregnancy', 'Next visit in 4 weeks.', TRUNC(SYSDATE) + 28);
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date)
VALUES (5, 5, 1, TRUNC(SYSDATE) - 12, 'Elevated BP readings at home', 'Hypertension', 'Started amlodipine. Monitor BP.', TRUNC(SYSDATE) + 14);
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date)
VALUES (6, 6, 7, TRUNC(SYSDATE) - 10, 'Severe headache, photophobia', 'Migraine without aura', 'Prescribed acute therapy.', TRUNC(SYSDATE) + 21);
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date)
VALUES (7, 7, 4, TRUNC(SYSDATE) - 9, 'Right knee pain after sports', 'Patellar tendinitis', 'Rest, ice, physiotherapy referral.', TRUNC(SYSDATE) + 14);
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date)
VALUES (8, 8, 2, TRUNC(SYSDATE) - 8, 'Due for MMR booster', 'Routine immunization', 'Vaccination given. Observe 15 min.', NULL);
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date)
VALUES (9, 9, 10, TRUNC(SYSDATE) - 7, 'Epigastric pain after meals', 'Gastritis', 'Avoid spicy food. PPI prescribed.', TRUNC(SYSDATE) + 14);
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date)
VALUES (10, 10, 5, TRUNC(SYSDATE) - 6, 'Fatigue, dizziness', 'Iron deficiency anemia', 'Labs ordered. Folic acid started.', TRUNC(SYSDATE) + 21);
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date)
VALUES (11, 11, 8, TRUNC(SYSDATE) - 5, 'Palpitations', 'Sinus tachycardia', 'ECG normal. Reduce caffeine.', TRUNC(SYSDATE) + 30);
INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date)
VALUES (15, 15, 1, TRUNC(SYSDATE) - 1, 'Post-op cardiac review', 'Stable post angioplasty', 'Continue dual antiplatelet therapy.', TRUNC(SYSDATE) + 30);

-- Prescriptions for visits
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
VALUES (1, 1, 1, TRUNC(SYSDATE) - 20, 'Cardiac medications');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
VALUES (2, 2, 2, TRUNC(SYSDATE) - 18, 'Symptomatic relief');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
VALUES (3, 3, 5, TRUNC(SYSDATE) - 15, 'Diabetes control');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
VALUES (5, 5, 1, TRUNC(SYSDATE) - 12, 'BP control');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
VALUES (6, 6, 7, TRUNC(SYSDATE) - 10, 'Migraine management');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
VALUES (7, 7, 4, TRUNC(SYSDATE) - 9, 'Pain management');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
VALUES (9, 9, 10, TRUNC(SYSDATE) - 7, 'Gastritis treatment');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
VALUES (10, 10, 5, TRUNC(SYSDATE) - 6, 'Anemia support');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
VALUES (11, 11, 8, TRUNC(SYSDATE) - 5, 'Supportive care');
INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
VALUES (12, 15, 1, TRUNC(SYSDATE) - 1, 'Post cardiac care');

-- Prescription items (multiple medicines per some prescriptions)
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (1, 10, '50mg', 'Once daily', 30, 'After breakfast');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (1, 12, '81mg', 'Once daily', 30, 'After food');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (2, 4, '500mg', 'Every 6 hours', 5, 'As needed for fever');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (2, 17, '5ml', 'Twice daily', 5, 'After food');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (3, 7, '500mg', 'Twice daily', 30, 'With meals');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (4, 11, '5mg', 'Once daily', 30, 'Morning');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (5, 5, '400mg', 'Twice daily', 7, 'With food');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (5, 4, '500mg', 'As needed', 7, 'For headache');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (6, 6, '50mg', 'Twice daily', 7, 'After food');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (7, 19, '20mg', 'Once daily', 14, 'Before breakfast');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (7, 20, '10mg', 'Three times daily', 7, 'Before meals');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (8, 14, '5mg', 'Once daily', 30, 'With water');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (8, 13, '1000IU', 'Once daily', 30, 'With food');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (9, 4, '500mg', 'As needed', 5, 'For discomfort');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (10, 12, '81mg', 'Once daily', 90, 'Lifelong unless advised');
INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
VALUES (10, 10, '50mg', 'Once daily', 30, 'After breakfast');

-- Admissions (some current, some discharged)
INSERT INTO admissions (patient_id, doctor_id, room_id, admission_date, discharge_date, admission_reason, status)
VALUES (5, 1, 3, TRUNC(SYSDATE) - 3, NULL, 'Uncontrolled hypertension observation', 'Admitted');
INSERT INTO admissions (patient_id, doctor_id, room_id, admission_date, discharge_date, admission_reason, status)
VALUES (1, 8, 5, TRUNC(SYSDATE) - 5, NULL, 'Cardiac monitoring', 'Admitted');
INSERT INTO admissions (patient_id, doctor_id, room_id, admission_date, discharge_date, admission_reason, status)
VALUES (9, 10, 8, TRUNC(SYSDATE) - 2, NULL, 'Severe dehydration / gastritis', 'Admitted');
INSERT INTO admissions (patient_id, doctor_id, room_id, admission_date, discharge_date, admission_reason, status)
VALUES (3, 5, 1, TRUNC(SYSDATE) - 20, TRUNC(SYSDATE) - 17, 'Diabetes ketoacidosis risk', 'Discharged');
INSERT INTO admissions (patient_id, doctor_id, room_id, admission_date, discharge_date, admission_reason, status)
VALUES (7, 4, 4, TRUNC(SYSDATE) - 15, TRUNC(SYSDATE) - 12, 'Post knee injury observation', 'Discharged');
INSERT INTO admissions (patient_id, doctor_id, room_id, admission_date, discharge_date, admission_reason, status)
VALUES (15, 1, 7, TRUNC(SYSDATE) - 30, TRUNC(SYSDATE) - 25, 'Post angioplasty care', 'Discharged');

COMMIT;

-- Quick verification counts
SELECT 'DEPARTMENTS' AS entity, COUNT(*) AS cnt FROM departments
UNION ALL SELECT 'DOCTORS', COUNT(*) FROM doctors
UNION ALL SELECT 'PATIENTS', COUNT(*) FROM patients
UNION ALL SELECT 'MEDICINES', COUNT(*) FROM medicines
UNION ALL SELECT 'APPOINTMENTS', COUNT(*) FROM appointments
UNION ALL SELECT 'VISITS', COUNT(*) FROM patient_visits
UNION ALL SELECT 'PRESCRIPTIONS', COUNT(*) FROM prescriptions
UNION ALL SELECT 'ADMISSIONS', COUNT(*) FROM admissions;
