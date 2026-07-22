-- Al Noor Hospital - required sample data


-- ================================================================
-- 1. LOOKUP DATA
-- ================================================================

INSERT INTO departments (department_name, floor_no, status)
SELECT 'General Medicine', 2, 'Active' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM departments WHERE department_name = 'General Medicine');
INSERT INTO departments (department_name, floor_no, status)
SELECT 'Pediatrics', 3, 'Active' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM departments WHERE department_name = 'Pediatrics');
INSERT INTO departments (department_name, floor_no, status)
SELECT 'Emergency Department', 1, 'Active' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM departments WHERE department_name = 'Emergency Department');
INSERT INTO departments (department_name, floor_no, status)
SELECT 'General Surgery', 4, 'Active' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM departments WHERE department_name = 'General Surgery');
INSERT INTO departments (department_name, floor_no, status)
SELECT 'Maternity', 3, 'Active' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM departments WHERE department_name = 'Maternity');

INSERT INTO doctor_specialties (specialty_name, status)
SELECT 'General Physician', 'Active' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM doctor_specialties WHERE specialty_name = 'General Physician');
INSERT INTO doctor_specialties (specialty_name, status)
SELECT 'Pediatrician', 'Active' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM doctor_specialties WHERE specialty_name = 'Pediatrician');
INSERT INTO doctor_specialties (specialty_name, status)
SELECT 'Emergency Physician', 'Active' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM doctor_specialties WHERE specialty_name = 'Emergency Physician');
INSERT INTO doctor_specialties (specialty_name, status)
SELECT 'General Surgeon', 'Active' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM doctor_specialties WHERE specialty_name = 'General Surgeon');
INSERT INTO doctor_specialties (specialty_name, status)
SELECT 'Obstetrician/Gynecologist', 'Active' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM doctor_specialties WHERE specialty_name = 'Obstetrician/Gynecologist');

INSERT INTO medicine_categories (category_name, status)
SELECT 'Antibiotic', 'Active' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM medicine_categories WHERE category_name = 'Antibiotic');
INSERT INTO medicine_categories (category_name, status)
SELECT 'Painkiller', 'Active' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM medicine_categories WHERE category_name = 'Painkiller');
INSERT INTO medicine_categories (category_name, status)
SELECT 'Diabetes', 'Active' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM medicine_categories WHERE category_name = 'Diabetes');
INSERT INTO medicine_categories (category_name, status)
SELECT 'Cardiovascular', 'Active' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM medicine_categories WHERE category_name = 'Cardiovascular');
INSERT INTO medicine_categories (category_name, status)
SELECT 'Allergy', 'Active' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM medicine_categories WHERE category_name = 'Allergy');

INSERT INTO appointment_statuses (status_name)
SELECT 'Scheduled' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM appointment_statuses WHERE status_name = 'Scheduled');
INSERT INTO appointment_statuses (status_name)
SELECT 'Completed' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM appointment_statuses WHERE status_name = 'Completed');
INSERT INTO appointment_statuses (status_name)
SELECT 'Cancelled' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM appointment_statuses WHERE status_name = 'Cancelled');
INSERT INTO appointment_statuses (status_name)
SELECT 'No Show' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM appointment_statuses WHERE status_name = 'No Show');

-- ================================================================
-- 2. TEN DOCTORS
-- ================================================================

INSERT INTO doctors (full_name, department_id, specialty_id, mobile_no, email, consultation_fee, status)
SELECT x.full_name, d.department_id, s.specialty_id, x.mobile_no, x.email, x.fee, x.status
FROM (
    SELECT 'Dr. Ahmed Al Balushi' full_name, 'General Medicine' department, 'General Physician' specialty, '91234567' mobile_no, 'ahmed.balushi@alnoor.com' email, 25 fee, 'Active' status FROM dual UNION ALL
    SELECT 'Dr. Sara Al Harthy', 'Pediatrics', 'Pediatrician', '92345678', 'sara.harthy@alnoor.com', 22, 'Active' FROM dual UNION ALL
    SELECT 'Dr. Kwame Mensah', 'Emergency Department', 'Emergency Physician', '93456781', 'kwame.mensah@alnoor.com', 20, 'Active' FROM dual UNION ALL
    SELECT 'Dr. Layla Haddad', 'General Surgery', 'General Surgeon', '94567812', 'layla.haddad@alnoor.com', 30, 'Active' FROM dual UNION ALL
    SELECT 'Dr. Arjun Mehta', 'Maternity', 'Obstetrician/Gynecologist', '95678123', 'arjun.mehta@alnoor.com', 28, 'Active' FROM dual UNION ALL
    SELECT 'Dr. Amina Yusuf', 'General Medicine', 'General Physician', '96781234', 'amina.yusuf@alnoor.com', 27, 'Active' FROM dual UNION ALL
    SELECT 'Dr. Daniel Okafor', 'Pediatrics', 'Pediatrician', '97812345', 'daniel.okafor@alnoor.com', 23, 'Active' FROM dual UNION ALL
    SELECT 'Dr. Noor Al Zadjali', 'Emergency Department', 'Emergency Physician', '98923456', 'noor.zadjali@alnoor.com', 21, 'Active' FROM dual UNION ALL
    SELECT 'Dr. Sofia Martinez', 'General Surgery', 'General Surgeon', '99034567', 'sofia.martinez@alnoor.com', 32, 'Active' FROM dual UNION ALL
    SELECT 'Dr. Chen Wei', 'Maternity', 'Obstetrician/Gynecologist', '90145678', 'chen.wei@alnoor.com', 29, 'Inactive' FROM dual
) x
JOIN departments d ON d.department_name = x.department
JOIN doctor_specialties s ON s.specialty_name = x.specialty
WHERE NOT EXISTS (SELECT 1 FROM doctors z WHERE z.email = x.email);

-- ================================================================
-- 3. TWENTY PATIENTS - UNIQUE 8-DIGIT CIVIL IDs
-- ================================================================

INSERT INTO patients (civil_id, full_name, gender, date_of_birth, mobile_no, email, blood_group, address, emergency_contact_name, emergency_contact_no)
SELECT x.civil_id, x.full_name, x.gender, x.dob, x.mobile_no, x.email, x.blood_group, x.address, x.contact_name, x.contact_no
FROM (
    SELECT '12345678' civil_id, 'Maha Al Harthy' full_name, 'Female' gender, DATE '1998-04-12' dob, '92123456' mobile_no, 'maha.harthy@email.com' email, 'O+' blood_group, 'Muscat, Al Khuwair' address, 'Salim Al Harthy' contact_name, '99123456' contact_no FROM dual UNION ALL
    SELECT '24068135','Omar Al Rawahi','Male',DATE '1985-06-24','92234567','omar.rawahi@email.com','A+','Muscat, Seeb','Huda Al Rawahi','99234567' FROM dual UNION ALL
    SELECT '35179246','Priya Nair','Female',DATE '1992-11-08','92345671','priya.nair@email.com','B+','Muscat, Ghubrah','Ravi Nair','99345671' FROM dual UNION ALL
    SELECT '46281357','Samuel Mensah','Male',DATE '1976-02-19','92456712','samuel.m@email.com','AB+','Sohar, Al Hambar','Ama Mensah','99456712' FROM dual UNION ALL
    SELECT '57392468','Fatima Al Lawati','Female',DATE '2001-09-03','92567123','fatima.l@email.com','A-','Muscat, Muttrah','Ali Al Lawati','99567123' FROM dual UNION ALL
    SELECT '68413579','Chen Li','Male',DATE '1988-12-15','92671234','chen.li@email.com','O-','Muscat, Azaiba','Mei Li','99671234' FROM dual UNION ALL
    SELECT '79524681','Sofia Ramos','Female',DATE '1995-07-27','92712345','sofia.r@email.com','B-','Nizwa, Al Aqr','Diego Ramos','99712345' FROM dual UNION ALL
    SELECT '81635792','Yusuf Al Hinai','Male',DATE '1969-03-10','92823456','yusuf.h@email.com','O+','Nizwa, Firq','Aisha Al Hinai','99823456' FROM dual UNION ALL
    SELECT '92746813','Aisha Okafor','Female',DATE '1983-05-21','92934567','aisha.o@email.com','AB-','Salalah, Dahariz','Chidi Okafor','99934567' FROM dual UNION ALL
    SELECT '13857924','Daniel Smith','Male',DATE '2004-01-30','93045678','daniel.s@email.com','A+','Muscat, Qurum','Laura Smith','90045678' FROM dual UNION ALL
    SELECT '24968135','Noor Al Amri','Female',DATE '1990-10-11','93156789','noor.amri@email.com','B+','Sur, Al Ayjah','Maryam Al Amri','90156789' FROM dual UNION ALL
    SELECT '35079246','Arjun Patel','Male',DATE '1979-08-05','93267891','arjun.p@email.com','O+','Sohar, Falaj','Kavita Patel','90267891' FROM dual UNION ALL
    SELECT '46180357','Layla Haddad','Female',DATE '2010-06-17','93378912','layla.h@email.com','A-','Muscat, Bawshar','Rana Haddad','90378912' FROM dual UNION ALL
    SELECT '57291468','Khalid Al Farsi','Male',DATE '1958-11-29','93489123','khalid.f@email.com','B-','Ibri, Al Araqi','Salma Al Farsi','90489123' FROM dual UNION ALL
    SELECT '68302579','Amara Johnson','Female',DATE '1987-04-02','93591234','amara.j@email.com','AB+','Salalah, Saadah','James Johnson','90591234' FROM dual UNION ALL
    SELECT '79413680','Hassan Al Riyami','Male',DATE '1999-02-14','93612345','hassan.r@email.com','O-','Muscat, Amerat','Zainab Al Riyami','90612345' FROM dual UNION ALL
    SELECT '80524791','Mei Zhang','Female',DATE '1972-09-25','93723456','mei.zhang@email.com','A+','Muscat, Mawaleh','Jun Zhang','90723456' FROM dual UNION ALL
    SELECT '91635802','Ibrahim Diallo','Male',DATE '1981-12-07','93834567','ibrahim.d@email.com','B+','Barka, Rumais','Aminata Diallo','90834567' FROM dual UNION ALL
    SELECT '12746913','Elena Petrova','Female',DATE '1993-03-18','93945678','elena.p@email.com','AB-','Muscat, Ruwi','Ivan Petrov','90945678' FROM dual UNION ALL
    SELECT '23857024','Tariq Al Kindi','Male',DATE '2007-07-09','94056789','tariq.k@email.com','O+','Sur, Bilad Sur','Nadia Al Kindi','91056789' FROM dual
) x
WHERE NOT EXISTS (SELECT 1 FROM patients p WHERE p.civil_id = x.civil_id);

-- ================================================================
-- 4. TWENTY MEDICINES - MIX OF NORMAL AND LOW STOCK
-- ================================================================

INSERT INTO medicines (medicine_name, category_id, unit, current_stock, reorder_level, status)
SELECT x.medicine_name, c.category_id, x.unit, x.current_stock, x.reorder_level, x.status
FROM (
    SELECT 'Amoxicillin 500mg' medicine_name,'Antibiotic' category,'Tablet' unit,100 current_stock,20 reorder_level,'Active' status FROM dual UNION ALL
    SELECT 'Azithromycin 250mg','Antibiotic','Tablet',12,20,'Active' FROM dual UNION ALL
    SELECT 'Cefuroxime 500mg','Antibiotic','Tablet',45,15,'Active' FROM dual UNION ALL
    SELECT 'Paracetamol 500mg','Painkiller','Tablet',8,25,'Active' FROM dual UNION ALL
    SELECT 'Ibuprofen 400mg','Painkiller','Tablet',60,20,'Active' FROM dual UNION ALL
    SELECT 'Diclofenac Gel','Painkiller','Cream',9,12,'Active' FROM dual UNION ALL
    SELECT 'Metformin 500mg','Diabetes','Tablet',80,30,'Active' FROM dual UNION ALL
    SELECT 'Insulin Glargine','Diabetes','Injection',7,10,'Active' FROM dual UNION ALL
    SELECT 'Gliclazide 80mg','Diabetes','Tablet',36,15,'Active' FROM dual UNION ALL
    SELECT 'Amlodipine 5mg','Cardiovascular','Tablet',75,25,'Active' FROM dual UNION ALL
    SELECT 'Atorvastatin 20mg','Cardiovascular','Tablet',18,25,'Active' FROM dual UNION ALL
    SELECT 'Losartan 50mg','Cardiovascular','Tablet',42,20,'Active' FROM dual UNION ALL
    SELECT 'Aspirin 81mg','Cardiovascular','Tablet',90,30,'Active' FROM dual UNION ALL
    SELECT 'Cetirizine 10mg','Allergy','Tablet',55,20,'Active' FROM dual UNION ALL
    SELECT 'Loratadine Syrup','Allergy','Syrup',6,10,'Active' FROM dual UNION ALL
    SELECT 'Salbutamol Inhaler','Allergy','Inhaler',14,12,'Active' FROM dual UNION ALL
    SELECT 'Hydrocortisone Cream','Allergy','Cream',11,15,'Active' FROM dual UNION ALL
    SELECT 'Ciprofloxacin 500mg','Antibiotic','Tablet',33,15,'Active' FROM dual UNION ALL
    SELECT 'Naproxen 250mg','Painkiller','Tablet',5,12,'Active' FROM dual UNION ALL
    SELECT 'Empagliflozin 10mg','Diabetes','Tablet',28,10,'Inactive' FROM dual
) x
JOIN medicine_categories c ON c.category_name = x.category
WHERE NOT EXISTS (SELECT 1 FROM medicines m WHERE m.medicine_name = x.medicine_name);

-- ================================================================
-- 5. TEN ROOMS - ROOM NUMBERS ARE STORED AS 001, 002, ...
-- ================================================================

INSERT INTO rooms (room_no, room_type, daily_rate, status)
SELECT x.room_no, x.room_type, x.daily_rate, x.status
FROM (
    SELECT '001' room_no,'General' room_type,35 daily_rate,'Available' status FROM dual UNION ALL
    SELECT '002','General',35,'Available' FROM dual UNION ALL
    SELECT '003','General',40,'Available' FROM dual UNION ALL
    SELECT '004','General',40,'Available' FROM dual UNION ALL
    SELECT '005','Private',75,'Available' FROM dual UNION ALL
    SELECT '006','Private',80,'Available' FROM dual UNION ALL
    SELECT '007','Private',85,'Available' FROM dual UNION ALL
    SELECT '008','ICU',180,'Available' FROM dual UNION ALL
    SELECT '009','ICU',200,'Available' FROM dual UNION ALL
    SELECT '010','ICU',200,'Maintenance' FROM dual
) x
WHERE NOT EXISTS (SELECT 1 FROM rooms r WHERE r.room_no = x.room_no);

-- ================================================================
-- 6. THIRTY APPOINTMENTS
-- Dates surround 16-JUL-2026 to support past/today/future reports.
-- ================================================================

INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status_id, reason_for_visit)
SELECT p.patient_id, d.doctor_id, x.appt_date, x.appt_time, s.status_id, x.reason
FROM (
    SELECT '12345678' civil_id,'ahmed.balushi@alnoor.com' doctor_email,DATE '2026-07-01' appt_date,'09:00' appt_time,'Completed' status_name,'Seed case 01 - chest discomfort' reason FROM dual UNION ALL
    SELECT '23857024','sara.harthy@alnoor.com',DATE '2026-07-02','09:30','Completed','Seed case 02 - pediatric fever' FROM dual UNION ALL
    SELECT '35179246','kwame.mensah@alnoor.com',DATE '2026-07-03','10:00','Completed','Seed case 03 - breathing difficulty' FROM dual UNION ALL
    SELECT '46281357','layla.haddad@alnoor.com',DATE '2026-07-04','10:30','Completed','Seed case 04 - knee pain' FROM dual UNION ALL
    SELECT '57392468','arjun.mehta@alnoor.com',DATE '2026-07-05','11:00','Completed','Seed case 05 - prenatal assessment' FROM dual UNION ALL
    SELECT '68413579','amina.yusuf@alnoor.com',DATE '2026-07-06','11:30','Completed','Seed case 06 - blood pressure review' FROM dual UNION ALL
    SELECT '46180357','daniel.okafor@alnoor.com',DATE '2026-07-07','12:00','Completed','Seed case 07 - childhood rash' FROM dual UNION ALL
    SELECT '81635792','noor.zadjali@alnoor.com',DATE '2026-07-08','12:30','Completed','Seed case 08 - abdominal pain' FROM dual UNION ALL
    SELECT '92746813','sofia.martinez@alnoor.com',DATE '2026-07-09','13:00','Completed','Seed case 09 - shoulder injury' FROM dual UNION ALL
    SELECT '24968135','arjun.mehta@alnoor.com',DATE '2026-07-10','13:30','Completed','Seed case 10 - maternity scan review' FROM dual UNION ALL
    SELECT '24968135','ahmed.balushi@alnoor.com',DATE '2026-07-11','08:30','Cancelled','Seed case 11 - heart palpitations' FROM dual UNION ALL
    SELECT '46180357','sara.harthy@alnoor.com',DATE '2026-07-12','09:00','No Show','Seed case 12 - pediatric check' FROM dual UNION ALL
    SELECT '46180357','kwame.mensah@alnoor.com',DATE '2026-07-13','09:30','Completed','Seed case 13 - minor burn' FROM dual UNION ALL
    SELECT '57291468','layla.haddad@alnoor.com',DATE '2026-07-14','10:00','Completed','Seed case 14 - hip pain' FROM dual UNION ALL
    SELECT '68302579','arjun.mehta@alnoor.com',DATE '2026-07-15','10:30','Completed','Seed case 15 - antenatal review' FROM dual UNION ALL
    SELECT '79413680','amina.yusuf@alnoor.com',DATE '2026-07-16','09:00','Scheduled','Seed case 16 - cardiac follow-up' FROM dual UNION ALL
    SELECT '23857024','daniel.okafor@alnoor.com',DATE '2026-07-16','10:00','Scheduled','Seed case 17 - pediatric follow-up' FROM dual UNION ALL
    SELECT '91635802','noor.zadjali@alnoor.com',DATE '2026-07-16','11:00','Scheduled','Seed case 18 - urgent assessment' FROM dual UNION ALL
    SELECT '12746913','sofia.martinez@alnoor.com',DATE '2026-07-16','12:00','Scheduled','Seed case 19 - ankle injury' FROM dual UNION ALL
    SELECT '12746913','arjun.mehta@alnoor.com',DATE '2026-07-16','13:00','Cancelled','Seed case 20 - ultrasound review' FROM dual UNION ALL
    SELECT '12345678','ahmed.balushi@alnoor.com',DATE '2026-07-17','09:00','Scheduled','Seed case 21 - cardiology follow-up' FROM dual UNION ALL
    SELECT '46180357','sara.harthy@alnoor.com',DATE '2026-07-18','09:30','Scheduled','Seed case 22 - pediatric wellness review' FROM dual UNION ALL
    SELECT '35179246','kwame.mensah@alnoor.com',DATE '2026-07-19','10:00','Scheduled','Seed case 23 - emergency follow-up' FROM dual UNION ALL
    SELECT '46281357','layla.haddad@alnoor.com',DATE '2026-07-20','10:30','Scheduled','Seed case 24 - physiotherapy review' FROM dual UNION ALL
    SELECT '57392468','arjun.mehta@alnoor.com',DATE '2026-07-21','11:00','Scheduled','Seed case 25 - prenatal follow-up' FROM dual UNION ALL
    SELECT '68413579','amina.yusuf@alnoor.com',DATE '2026-07-22','11:30','Scheduled','Seed case 26 - ECG review' FROM dual UNION ALL
    SELECT '46180357','daniel.okafor@alnoor.com',DATE '2026-07-23','12:00','Scheduled','Seed case 27 - childhood allergy follow-up' FROM dual UNION ALL
    SELECT '81635792','noor.zadjali@alnoor.com',DATE '2026-07-24','12:30','Scheduled','Seed case 28 - observation review' FROM dual UNION ALL
    SELECT '92746813','sofia.martinez@alnoor.com',DATE '2026-07-25','13:00','Scheduled','Seed case 29 - mobility review' FROM dual UNION ALL
    SELECT '12746913','arjun.mehta@alnoor.com',DATE '2026-07-26','13:30','Scheduled','Seed case 30 - postnatal review' FROM dual
) x
JOIN patients p ON p.civil_id = x.civil_id
JOIN doctors d ON d.email = x.doctor_email
JOIN appointment_statuses s ON s.status_name = x.status_name
WHERE NOT EXISTS (SELECT 1 FROM appointments a WHERE a.reason_for_visit = x.reason);

-- ================================================================
-- 7. TEN VISITS, TEN PRESCRIPTIONS, TWENTY PRESCRIPTION ITEMS
-- ================================================================

INSERT INTO patient_visits (appointment_id, patient_id, doctor_id, visit_date, symptoms, diagnosis, notes, follow_up_date)
SELECT a.appointment_id, a.patient_id, a.doctor_id, a.appointment_date,
       'Symptoms recorded for ' || SUBSTR(a.reason_for_visit, 11, 7),
       'Clinical diagnosis for ' || SUBSTR(a.reason_for_visit, 11, 7),
       'Stable condition; treatment plan discussed',
       a.appointment_date + 14
FROM appointments a
WHERE SUBSTR(a.reason_for_visit, 1, 12) IN ('Seed case 01','Seed case 02','Seed case 03','Seed case 04','Seed case 05','Seed case 06','Seed case 07','Seed case 08','Seed case 09','Seed case 10')
  AND NOT EXISTS (SELECT 1 FROM patient_visits v WHERE v.appointment_id = a.appointment_id);

INSERT INTO prescriptions (visit_id, patient_id, doctor_id, prescription_date, notes)
SELECT v.visit_id, v.patient_id, v.doctor_id, v.visit_date, 'Take medication as directed after meals'
FROM patient_visits v
JOIN appointments a ON a.appointment_id = v.appointment_id
WHERE SUBSTR(a.reason_for_visit, 1, 12) IN ('Seed case 01','Seed case 02','Seed case 03','Seed case 04','Seed case 05','Seed case 06','Seed case 07','Seed case 08','Seed case 09','Seed case 10')
  AND NOT EXISTS (SELECT 1 FROM prescriptions pr WHERE pr.visit_id = v.visit_id);

INSERT INTO prescription_items (prescription_id, medicine_id, dosage, frequency, duration_days, instructions)
SELECT pr.prescription_id, m.medicine_id, x.dosage, x.frequency, x.duration_days, x.instructions
FROM prescriptions pr
JOIN patient_visits v ON v.visit_id = pr.visit_id
JOIN appointments a ON a.appointment_id = v.appointment_id
JOIN (
    SELECT 1 slot, 'Paracetamol 500mg' medicine_name, '500 mg' dosage, 'Twice daily' frequency, 5 duration_days, 'Take after food' instructions FROM dual UNION ALL
    SELECT 2, 'Amoxicillin 500mg', '500 mg', 'Three times daily', 7, 'Complete the full course' FROM dual
) x ON 1=1
JOIN medicines m ON m.medicine_name = x.medicine_name
WHERE SUBSTR(a.reason_for_visit, 1, 12) IN ('Seed case 01','Seed case 02','Seed case 03','Seed case 04','Seed case 05','Seed case 06','Seed case 07','Seed case 08','Seed case 09','Seed case 10')
  AND NOT EXISTS (
      SELECT 1 FROM prescription_items pi
      WHERE pi.prescription_id = pr.prescription_id AND pi.medicine_id = m.medicine_id
  );

-- ================================================================
-- 8. SIX ADMISSIONS - THREE ACTIVE, THREE DISCHARGED
-- ================================================================

INSERT INTO admissions (patient_id, doctor_id, room_id, admission_date, discharge_date, admission_reason, status)
SELECT p.patient_id, d.doctor_id, r.room_id, x.admission_date, x.discharge_date, x.reason, x.status
FROM (
    SELECT '12345678' civil_id,'ahmed.balushi@alnoor.com' doctor_email,'001' room_no,DATE '2026-07-12' admission_date,CAST(NULL AS DATE) discharge_date,'Seed admission 01 - cardiac observation' reason,'Admitted' status FROM dual UNION ALL
    SELECT '35179246','kwame.mensah@alnoor.com','003',DATE '2026-07-14',CAST(NULL AS DATE),'Seed admission 02 - respiratory observation','Admitted' FROM dual UNION ALL
    SELECT '46281357','layla.haddad@alnoor.com','005',DATE '2026-07-15',CAST(NULL AS DATE),'Seed admission 03 - orthopedic recovery','Admitted' FROM dual UNION ALL
    SELECT '57392468','arjun.mehta@alnoor.com','002',DATE '2026-06-20',DATE '2026-06-23','Seed admission 04 - maternity observation','Discharged' FROM dual UNION ALL
    SELECT '68413579','amina.yusuf@alnoor.com','004',DATE '2026-06-25',DATE '2026-06-28','Seed admission 05 - blood pressure monitoring','Discharged' FROM dual UNION ALL
    SELECT '92746813','sofia.martinez@alnoor.com','006',DATE '2026-07-02',DATE '2026-07-06','Seed admission 06 - post-surgery recovery','Discharged' FROM dual
) x
JOIN patients p ON p.civil_id = x.civil_id
JOIN doctors d ON d.email = x.doctor_email
JOIN rooms r ON r.room_no = x.room_no
WHERE NOT EXISTS (SELECT 1 FROM admissions a WHERE a.admission_reason = x.reason);

-- Synchronize room status with active admissions while preserving Maintenance.
UPDATE rooms r
SET r.status = CASE
    WHEN r.status = 'Maintenance' THEN 'Maintenance'
    WHEN EXISTS (
        SELECT 1 FROM admissions a
        WHERE a.room_id = r.room_id AND a.status = 'Admitted'
    ) THEN 'Occupied'
    ELSE 'Available'
END;

COMMIT;

-- ================================================================
-- 9. VERIFICATION - REQUIRED MINIMUMS
-- ================================================================

SELECT 'Patients' item, COUNT(*) actual, 20 required FROM patients
UNION ALL SELECT 'Doctors', COUNT(*), 10 FROM doctors
UNION ALL SELECT 'Departments', COUNT(*), 5 FROM departments
UNION ALL SELECT 'Medicines', COUNT(*), 20 FROM medicines
UNION ALL SELECT 'Appointments', COUNT(*), 30 FROM appointments
UNION ALL SELECT 'Visits with prescriptions', COUNT(*), 10
FROM patient_visits v WHERE EXISTS (SELECT 1 FROM prescriptions p WHERE p.visit_id = v.visit_id);

SELECT LPAD(TO_CHAR(doctor_id), 3, '0') doctor_code,
       full_name, status
FROM doctors
ORDER BY doctor_id;

SELECT room_no, room_type, daily_rate, status
FROM rooms
ORDER BY room_no;
