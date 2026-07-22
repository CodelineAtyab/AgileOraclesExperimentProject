DECLARE
    TYPE t_num_array IS TABLE OF NUMBER INDEX BY PLS_INTEGER;

    v_department_ids  t_num_array;
    v_specialty_ids   t_num_array;
    v_doctor_ids      t_num_array;
    v_patient_ids     t_num_array;
    v_category_ids    t_num_array;
    v_medicine_ids    t_num_array;
    v_status_ids      t_num_array;
    v_appointment_ids t_num_array;
    v_visit_ids       t_num_array;
    v_prescription_ids t_num_array;
    v_room_ids        t_num_array;

    v_index NUMBER;
BEGIN
    ------------------------------------------------------------------
    -- 1. DELETE OLD DATA
    ------------------------------------------------------------------

    DELETE FROM prescription_items;
    DELETE FROM prescriptions;
    DELETE FROM patient_visits;
    DELETE FROM admissions;
    DELETE FROM appointments;
    DELETE FROM rooms;
    DELETE FROM medicines;
    DELETE FROM medicine_categories;
    DELETE FROM doctors;
    DELETE FROM doctor_specialties;
    DELETE FROM patients;
    DELETE FROM appointment_statuses;
    DELETE FROM departments;

    ------------------------------------------------------------------
    -- 2. DEPARTMENTS
    ------------------------------------------------------------------

    INSERT INTO departments
        (department_name, floor_no, status)
    VALUES
        ('Cardiology', 1, 'Active')
    RETURNING department_id INTO v_department_ids(1);

    INSERT INTO departments
        (department_name, floor_no, status)
    VALUES
        ('General Medicine', 2, 'Active')
    RETURNING department_id INTO v_department_ids(2);

    INSERT INTO departments
        (department_name, floor_no, status)
    VALUES
        ('Pediatrics', 3, 'Active')
    RETURNING department_id INTO v_department_ids(3);

    INSERT INTO departments
        (department_name, floor_no, status)
    VALUES
        ('Orthopedics', 4, 'Active')
    RETURNING department_id INTO v_department_ids(4);

    INSERT INTO departments
        (department_name, floor_no, status)
    VALUES
        ('Emergency', 1, 'Active')
    RETURNING department_id INTO v_department_ids(5);

    ------------------------------------------------------------------
    -- 3. DOCTOR SPECIALTIES
    ------------------------------------------------------------------

    INSERT INTO doctor_specialties
        (specialty_name, status)
    VALUES
        ('Cardiologist', 'Active')
    RETURNING specialty_id INTO v_specialty_ids(1);

    INSERT INTO doctor_specialties
        (specialty_name, status)
    VALUES
        ('General Physician', 'Active')
    RETURNING specialty_id INTO v_specialty_ids(2);

    INSERT INTO doctor_specialties
        (specialty_name, status)
    VALUES
        ('Pediatrician', 'Active')
    RETURNING specialty_id INTO v_specialty_ids(3);

    INSERT INTO doctor_specialties
        (specialty_name, status)
    VALUES
        ('Orthopedic Surgeon', 'Active')
    RETURNING specialty_id INTO v_specialty_ids(4);

    INSERT INTO doctor_specialties
        (specialty_name, status)
    VALUES
        ('Emergency Physician', 'Active')
    RETURNING specialty_id INTO v_specialty_ids(5);

    INSERT INTO doctor_specialties
        (specialty_name, status)
    VALUES
        ('Internal Medicine Specialist', 'Active')
    RETURNING specialty_id INTO v_specialty_ids(6);

    INSERT INTO doctor_specialties
        (specialty_name, status)
    VALUES
        ('Neurologist', 'Active')
    RETURNING specialty_id INTO v_specialty_ids(7);

    INSERT INTO doctor_specialties
        (specialty_name, status)
    VALUES
        ('Dermatologist', 'Active')
    RETURNING specialty_id INTO v_specialty_ids(8);

    INSERT INTO doctor_specialties
        (specialty_name, status)
    VALUES
        ('Radiologist', 'Active')
    RETURNING specialty_id INTO v_specialty_ids(9);

    INSERT INTO doctor_specialties
        (specialty_name, status)
    VALUES
        ('Anesthesiologist', 'Active')
    RETURNING specialty_id INTO v_specialty_ids(10);

    ------------------------------------------------------------------
    -- 4. DOCTORS
    ------------------------------------------------------------------

    INSERT INTO doctors
        (
            full_name,
            department_id,
            specialty_id,
            mobile_no,
            email,
            consultation_fee,
            status
        )
    VALUES
        (
            'Al-Jolanda Al-Handhali',
            v_department_ids(1),
            v_specialty_ids(1),
            '99000001',
            'aljolanda@hospital.com',
            35,
            'Active'
        )
    RETURNING doctor_id INTO v_doctor_ids(1);

    INSERT INTO doctors
        (
            full_name,
            department_id,
            specialty_id,
            mobile_no,
            email,
            consultation_fee,
            status
        )
    VALUES
        (
            'Dr. Ahmed Al-Balushi',
            v_department_ids(1),
            v_specialty_ids(1),
            '99000002',
            'ahmed@hospital.com',
            40,
            'Active'
        )
    RETURNING doctor_id INTO v_doctor_ids(2);

    INSERT INTO doctors
        (
            full_name,
            department_id,
            specialty_id,
            mobile_no,
            email,
            consultation_fee,
            status
        )
    VALUES
        (
            'Dr. Sara Al-Hinai',
            v_department_ids(2),
            v_specialty_ids(2),
            '99000003',
            'sara@hospital.com',
            25,
            'Active'
        )
    RETURNING doctor_id INTO v_doctor_ids(3);

    INSERT INTO doctors
        (
            full_name,
            department_id,
            specialty_id,
            mobile_no,
            email,
            consultation_fee,
            status
        )
    VALUES
        (
            'Dr. Mohammed Al-Rawahi',
            v_department_ids(2),
            v_specialty_ids(6),
            '99000004',
            'mohammed@hospital.com',
            30,
            'Active'
        )
    RETURNING doctor_id INTO v_doctor_ids(4);

    INSERT INTO doctors
        (
            full_name,
            department_id,
            specialty_id,
            mobile_no,
            email,
            consultation_fee,
            status
        )
    VALUES
        (
            'Dr. Aisha Al-Mamari',
            v_department_ids(3),
            v_specialty_ids(3),
            '99000005',
            'aisha@hospital.com',
            25,
            'Active'
        )
    RETURNING doctor_id INTO v_doctor_ids(5);

    INSERT INTO doctors
        (
            full_name,
            department_id,
            specialty_id,
            mobile_no,
            email,
            consultation_fee,
            status
        )
    VALUES
        (
            'Dr. Khalid Al-Hosni',
            v_department_ids(3),
            v_specialty_ids(3),
            '99000006',
            'khalid@hospital.com',
            28,
            'Active'
        )
    RETURNING doctor_id INTO v_doctor_ids(6);

    INSERT INTO doctors
        (
            full_name,
            department_id,
            specialty_id,
            mobile_no,
            email,
            consultation_fee,
            status
        )
    VALUES
        (
            'Dr. Fatma Al-Harthy',
            v_department_ids(4),
            v_specialty_ids(4),
            '99000007',
            'fatma@hospital.com',
            45,
            'Active'
        )
    RETURNING doctor_id INTO v_doctor_ids(7);

    INSERT INTO doctors
        (
            full_name,
            department_id,
            specialty_id,
            mobile_no,
            email,
            consultation_fee,
            status
        )
    VALUES
        (
            'Dr. Ibrahim Al-Rahbi',
            v_department_ids(4),
            v_specialty_ids(4),
            '99000008',
            'ibrahim@hospital.com',
            42,
            'Active'
        )
    RETURNING doctor_id INTO v_doctor_ids(8);

    INSERT INTO doctors
        (
            full_name,
            department_id,
            specialty_id,
            mobile_no,
            email,
            consultation_fee,
            status
        )
    VALUES
        (
            'Dr. Maryam Al-Farsi',
            v_department_ids(5),
            v_specialty_ids(5),
            '99000009',
            'maryam@hospital.com',
            35,
            'Active'
        )
    RETURNING doctor_id INTO v_doctor_ids(9);

    INSERT INTO doctors
        (
            full_name,
            department_id,
            specialty_id,
            mobile_no,
            email,
            consultation_fee,
            status
        )
    VALUES
        (
            'Dr. Abdullah Al-Kindi',
            v_department_ids(5),
            v_specialty_ids(5),
            '99000010',
            'abdullah@hospital.com',
            35,
            'Active'
        )
    RETURNING doctor_id INTO v_doctor_ids(10);

    ------------------------------------------------------------------
    -- 5. PATIENTS
    ------------------------------------------------------------------

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000001', 'Ali Al-Habsi', 'Male',
         DATE '1990-01-15', '91000001', 'ali@example.com',
         'O+', 'Muscat', 'Ahmed Al-Habsi', '92000001')
    RETURNING patient_id INTO v_patient_ids(1);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000002', 'Maha Al-Balushi', 'Female',
         DATE '1995-03-22', '91000002', 'maha@example.com',
         'A+', 'Sohar', 'Salim Al-Balushi', '92000002')
    RETURNING patient_id INTO v_patient_ids(2);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000003', 'Omar Al-Hinai', 'Male',
         DATE '1987-07-10', '91000003', 'omar@example.com',
         'B+', 'Nizwa', 'Hamad Al-Hinai', '92000003')
    RETURNING patient_id INTO v_patient_ids(3);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000004', 'Noor Al-Rawahi', 'Female',
         DATE '2000-05-18', '91000004', 'noor@example.com',
         'AB+', 'Muscat', 'Aisha Al-Rawahi', '92000004')
    RETURNING patient_id INTO v_patient_ids(4);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000005', 'Sultan Al-Harthy', 'Male',
         DATE '1978-11-02', '91000005', 'sultan@example.com',
         'O-', 'Sur', 'Khalid Al-Harthy', '92000005')
    RETURNING patient_id INTO v_patient_ids(5);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000006', 'Layla Al-Mamari', 'Female',
         DATE '1985-09-14', '91000006', 'layla@example.com',
         'A-', 'Ibri', 'Mariam Al-Mamari', '92000006')
    RETURNING patient_id INTO v_patient_ids(6);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000007', 'Hamed Al-Kindi', 'Male',
         DATE '1992-06-25', '91000007', 'hamed@example.com',
         'B-', 'Muscat', 'Saeed Al-Kindi', '92000007')
    RETURNING patient_id INTO v_patient_ids(7);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000008', 'Maryam Al-Farsi', 'Female',
         DATE '1998-12-12', '91000008', 'maryam.p@example.com',
         'O+', 'Salalah', 'Ahmed Al-Farsi', '92000008')
    RETURNING patient_id INTO v_patient_ids(8);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000009', 'Salim Al-Rahbi', 'Male',
         DATE '1968-04-08', '91000009', 'salim@example.com',
         'A+', 'Rustaq', 'Abdullah Al-Rahbi', '92000009')
    RETURNING patient_id INTO v_patient_ids(9);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000010', 'Amal Al-Hosni', 'Female',
         DATE '1975-10-30', '91000010', 'amal@example.com',
         'AB-', 'Barka', 'Nasser Al-Hosni', '92000010')
    RETURNING patient_id INTO v_patient_ids(10);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000011', 'Yousef Al-Abri', 'Male',
         DATE '2002-02-20', '91000011', 'yousef@example.com',
         'O+', 'Ibri', 'Ali Al-Abri', '92000011')
    RETURNING patient_id INTO v_patient_ids(11);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000012', 'Huda Al-Lawati', 'Female',
         DATE '1993-08-17', '91000012', 'huda@example.com',
         'A+', 'Muttrah', 'Fatma Al-Lawati', '92000012')
    RETURNING patient_id INTO v_patient_ids(12);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000013', 'Nasser Al-Shukaili', 'Male',
         DATE '1980-05-11', '91000013', 'nasser@example.com',
         'B+', 'Suwaiq', 'Hamed Al-Shukaili', '92000013')
    RETURNING patient_id INTO v_patient_ids(13);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000014', 'Reem Al-Siyabi', 'Female',
         DATE '1997-01-27', '91000014', 'reem@example.com',
         'O-', 'Muscat', 'Khadija Al-Siyabi', '92000014')
    RETURNING patient_id INTO v_patient_ids(14);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000015', 'Majid Al-Busaidi', 'Male',
         DATE '1989-03-19', '91000015', 'majid@example.com',
         'A-', 'Bahla', 'Said Al-Busaidi', '92000015')
    RETURNING patient_id INTO v_patient_ids(15);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000016', 'Alya Al-Sabti', 'Female',
         DATE '2001-07-07', '91000016', 'alya@example.com',
         'B-', 'Seeb', 'Mona Al-Sabti', '92000016')
    RETURNING patient_id INTO v_patient_ids(16);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000017', 'Saeed Al-Zadjali', 'Male',
         DATE '1970-12-23', '91000017', 'saeed@example.com',
         'AB+', 'Muscat', 'Khalfan Al-Zadjali', '92000017')
    RETURNING patient_id INTO v_patient_ids(17);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000018', 'Bushra Al-Wahaibi', 'Female',
         DATE '1983-06-09', '91000018', 'bushra@example.com',
         'O+', 'Sohar', 'Ahmed Al-Wahaibi', '92000018')
    RETURNING patient_id INTO v_patient_ids(18);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000019', 'Fahad Al-Muqbali', 'Male',
         DATE '1996-09-05', '91000019', 'fahad@example.com',
         'A+', 'Liwa', 'Mohammed Al-Muqbali', '92000019')
    RETURNING patient_id INTO v_patient_ids(19);

    INSERT INTO patients
        (civil_id, full_name, gender, date_of_birth, mobile_no, email,
         blood_group, address, emergency_contact_name,
         emergency_contact_no)
    VALUES
        ('10000020', 'Shamsa Al-Nabhani', 'Female',
         DATE '1988-04-16', '91000020', 'shamsa@example.com',
         'B+', 'Nizwa', 'Salim Al-Nabhani', '92000020')
    RETURNING patient_id INTO v_patient_ids(20);

    ------------------------------------------------------------------
    -- 6. MEDICINE CATEGORIES
    ------------------------------------------------------------------

    INSERT INTO medicine_categories (category_name, status)
    VALUES ('Pain Relief', 'Active')
    RETURNING category_id INTO v_category_ids(1);

    INSERT INTO medicine_categories (category_name, status)
    VALUES ('Antibiotics', 'Active')
    RETURNING category_id INTO v_category_ids(2);

    INSERT INTO medicine_categories (category_name, status)
    VALUES ('Cardiovascular', 'Active')
    RETURNING category_id INTO v_category_ids(3);

    INSERT INTO medicine_categories (category_name, status)
    VALUES ('Respiratory', 'Active')
    RETURNING category_id INTO v_category_ids(4);

    INSERT INTO medicine_categories (category_name, status)
    VALUES ('Vitamins', 'Active')
    RETURNING category_id INTO v_category_ids(5);

    ------------------------------------------------------------------
    -- 7. MEDICINES
    ------------------------------------------------------------------

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Paracetamol', v_category_ids(1), 'Tablet', 100, 20, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(1);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Ibuprofen', v_category_ids(1), 'Tablet', 15, 20, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(2);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Aspirin', v_category_ids(1), 'Tablet', 70, 15, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(3);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Diclofenac', v_category_ids(1), 'Tablet', 10, 15, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(4);


    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Amoxicillin', v_category_ids(2), 'Capsule', 80, 20, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(5);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Azithromycin', v_category_ids(2), 'Tablet', 12, 15, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(6);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Cefuroxime', v_category_ids(2), 'Tablet', 50, 10, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(7);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Metronidazole', v_category_ids(2), 'Tablet', 8, 10, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(8);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Amlodipine', v_category_ids(3), 'Tablet', 90, 20, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(9);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Losartan', v_category_ids(3), 'Tablet', 18, 20, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(10);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Atorvastatin', v_category_ids(3), 'Tablet', 75, 15, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(11);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Bisoprolol', v_category_ids(3), 'Tablet', 9, 10, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(12);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Salbutamol', v_category_ids(4), 'Inhaler', 40, 10, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(13);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Budesonide', v_category_ids(4), 'Inhaler', 6, 10, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(14);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Cetirizine', v_category_ids(4), 'Tablet', 60, 15, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(15);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Montelukast', v_category_ids(4), 'Tablet', 14, 15, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(16);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Vitamin C', v_category_ids(5), 'Tablet', 120, 30, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(17);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Vitamin D', v_category_ids(5), 'Capsule', 25, 25, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(18);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Iron Supplement', v_category_ids(5), 'Tablet', 65, 20, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(19);

    INSERT INTO medicines
        (medicine_name, category_id, unit, current_stock,
         reorder_level, status)
    VALUES
        ('Multivitamin', v_category_ids(5), 'Tablet', 7, 10, 'Active')
    RETURNING medicine_id INTO v_medicine_ids(20);

    ------------------------------------------------------------------
    -- 8. APPOINTMENT STATUSES
    ------------------------------------------------------------------

    INSERT INTO appointment_statuses (status_name)
    VALUES ('Scheduled')
    RETURNING status_id INTO v_status_ids(1);

    INSERT INTO appointment_statuses (status_name)
    VALUES ('Completed')
    RETURNING status_id INTO v_status_ids(2);

    INSERT INTO appointment_statuses (status_name)
    VALUES ('Cancelled')
    RETURNING status_id INTO v_status_ids(3);

    INSERT INTO appointment_statuses (status_name)
    VALUES ('No Show')
    RETURNING status_id INTO v_status_ids(4);

    ------------------------------------------------------------------
    -- 9. CREATE 30 APPOINTMENTS
    ------------------------------------------------------------------

    FOR i IN 1..30 LOOP
        INSERT INTO appointments
            (
                patient_id,
                doctor_id,
                appointment_date,
                appointment_time,
                status_id,
                reason_for_visit
            )
        VALUES
            (
                v_patient_ids(MOD(i - 1, 20) + 1),
                v_doctor_ids(MOD(i - 1, 10) + 1),
                DATE '2026-07-01' + (i - 1),
                CASE MOD(i, 5)
                    WHEN 0 THEN '08:30 AM'
                    WHEN 1 THEN '09:30 AM'
                    WHEN 2 THEN '10:30 AM'
                    WHEN 3 THEN '11:30 AM'
                    ELSE '01:30 PM'
                END,
                CASE
                    WHEN i <= 10 THEN v_status_ids(2)
                    WHEN MOD(i, 7) = 0 THEN v_status_ids(3)
                    WHEN MOD(i, 9) = 0 THEN v_status_ids(4)
                    ELSE v_status_ids(1)
                END,
                CASE MOD(i, 6)
                    WHEN 0 THEN 'Routine medical check-up'
                    WHEN 1 THEN 'Fever and headache'
                    WHEN 2 THEN 'Chest pain'
                    WHEN 3 THEN 'Cough and breathing difficulty'
                    WHEN 4 THEN 'Joint and back pain'
                    ELSE 'Follow-up consultation'
                END
            )
        RETURNING appointment_id INTO v_appointment_ids(i);
    END LOOP;

    ------------------------------------------------------------------
    -- 10. CREATE 10 PATIENT VISITS
    ------------------------------------------------------------------

    FOR i IN 1..10 LOOP
        INSERT INTO patient_visits
            (
                appointment_id,
                patient_id,
                doctor_id,
                visit_date,
                symptoms,
                diagnosis,
                notes,
                follow_up_date
            )
        VALUES
            (
                v_appointment_ids(i),
                v_patient_ids(i),
                v_doctor_ids(i),
                DATE '2026-07-01' + (i - 1),
                CASE MOD(i, 5)
                    WHEN 0 THEN 'Headache and tiredness'
                    WHEN 1 THEN 'Fever and cough'
                    WHEN 2 THEN 'Chest discomfort'
                    WHEN 3 THEN 'Shortness of breath'
                    ELSE 'Joint pain'
                END,
                CASE MOD(i, 5)
                    WHEN 0 THEN 'Migraine'
                    WHEN 1 THEN 'Influenza'
                    WHEN 2 THEN 'Hypertension'
                    WHEN 3 THEN 'Asthma'
                    ELSE 'Muscle strain'
                END,
                'Patient examined and treatment plan discussed.',
                DATE '2026-07-15' + i
            )
        RETURNING visit_id INTO v_visit_ids(i);
    END LOOP;

    ------------------------------------------------------------------
    -- 11. CREATE 10 PRESCRIPTIONS
    ------------------------------------------------------------------

    FOR i IN 1..10 LOOP
        INSERT INTO prescriptions
            (
                visit_id,
                patient_id,
                doctor_id,
                prescription_date,
                notes
            )
        VALUES
            (
                v_visit_ids(i),
                v_patient_ids(i),
                v_doctor_ids(i),
                DATE '2026-07-01' + (i - 1),
                'Take medicines as instructed and attend follow-up.'
            )
        RETURNING prescription_id INTO v_prescription_ids(i);
    END LOOP;

    ------------------------------------------------------------------
    -- 12. PRESCRIPTION ITEMS
    -- Two medicines for every prescription
    ------------------------------------------------------------------

    FOR i IN 1..10 LOOP
        INSERT INTO prescription_items
            (
                prescription_id,
                medicine_id,
                dosage,
                frequency,
                duration_days,
                instructions
            )
        VALUES
            (
                v_prescription_ids(i),
                v_medicine_ids(MOD((i * 2) - 2, 20) + 1),
                '500 mg',
                'Twice daily',
                5,
                'Take after meals'
            );

        INSERT INTO prescription_items
            (
                prescription_id,
                medicine_id,
                dosage,
                frequency,
                duration_days,
                instructions
            )
        VALUES
            (
                v_prescription_ids(i),
                v_medicine_ids(MOD((i * 2) - 1, 20) + 1),
                '1 tablet',
                'Once daily',
                7,
                'Take with water'
            );
    END LOOP;

    ------------------------------------------------------------------
    -- 13. ROOMS
    ------------------------------------------------------------------

    INSERT INTO rooms
        (room_no, room_type, daily_rate, status)
    VALUES
        ('101', 'General', 50, 'Occupied')
    RETURNING room_id INTO v_room_ids(1);

    INSERT INTO rooms
        (room_no, room_type, daily_rate, status)
    VALUES
        ('102', 'General', 50, 'Available')
    RETURNING room_id INTO v_room_ids(2);

    INSERT INTO rooms
        (room_no, room_type, daily_rate, status)
    VALUES
        ('201', 'Private', 90, 'Occupied')
    RETURNING room_id INTO v_room_ids(3);

    INSERT INTO rooms
        (room_no, room_type, daily_rate, status)
    VALUES
        ('202', 'Private', 90, 'Available')
    RETURNING room_id INTO v_room_ids(4);

    INSERT INTO rooms
        (room_no, room_type, daily_rate, status)
    VALUES
        ('301', 'ICU', 200, 'Available')
    RETURNING room_id INTO v_room_ids(5);

    ------------------------------------------------------------------
    -- 14. ADMISSIONS
    ------------------------------------------------------------------

    INSERT INTO admissions
        (
            patient_id,
            doctor_id,
            room_id,
            admission_date,
            discharge_date,
            admission_reason,
            status
        )
    VALUES
        (
            v_patient_ids(1),
            v_doctor_ids(1),
            v_room_ids(1),
            DATE '2026-07-10',
            NULL,
            'Cardiac observation and monitoring',
            'Admitted'
        );

    INSERT INTO admissions
        (
            patient_id,
            doctor_id,
            room_id,
            admission_date,
            discharge_date,
            admission_reason,
            status
        )
    VALUES
        (
            v_patient_ids(2),
            v_doctor_ids(3),
            v_room_ids(3),
            DATE '2026-07-12',

            NULL,
            'High fever requiring observation',
            'Admitted'
        );

    INSERT INTO admissions
        (
            patient_id,
            doctor_id,
            room_id,
            admission_date,
            discharge_date,
            admission_reason,
            status
        )
    VALUES
        (
            v_patient_ids(3),
            v_doctor_ids(7),
            v_room_ids(2),
            DATE '2026-06-15',
            DATE '2026-06-18',
            'Post-surgery monitoring',
            'Discharged'
        );

    INSERT INTO admissions
        (
            patient_id,
            doctor_id,
            room_id,
            admission_date,
            discharge_date,
            admission_reason,
            status
        )
    VALUES
        (
            v_patient_ids(4),
            v_doctor_ids(9),
            v_room_ids(4),
            DATE '2026-06-20',
            DATE '2026-06-21',
            'Emergency medical observation',
            'Discharged'
        );

    COMMIT;
END;
/