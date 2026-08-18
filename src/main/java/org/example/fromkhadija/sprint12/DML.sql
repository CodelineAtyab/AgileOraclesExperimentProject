-- Insert Sample Patients
INSERT INTO patients (full_name, date_of_birth, gender, phone_number, address)
VALUES ('Fatma Al-Lawati', TO_DATE('1992-05-14', 'YYYY-MM-DD'), 'Female', '+96891112233', 'Muscat');

INSERT INTO patients (full_name, date_of_birth, gender, phone_number, address)
VALUES ('Ahmed Al-Balushi', TO_DATE('1985-11-20', 'YYYY-MM-DD'), 'Male', '+96892223344', 'Seeb');

-- Insert Sample Doctors
INSERT INTO doctors (doctor_name, specialization, phone_number, email)
VALUES ('Dr. Salim Al-Harthy', 'General Medicine', '+96893334455', 'salim.harthy@alnoor.med');

INSERT INTO doctors (doctor_name, specialization, phone_number, email)
VALUES ('Dr. Maryam Al-Zedjali', 'Pediatrics', '+96894445566', 'maryam.zedjali@alnoor.med');

-- Insert Sample Medicines
INSERT INTO medicines (medicine_name, category, unit_price, stock_qty)
VALUES ('Paracetamol 500mg', 'Analgesic', 1.50, 500);

INSERT INTO medicines (medicine_name, category, unit_price, stock_qty)
VALUES ('Amoxicillin 250mg', 'Antibiotic', 4.20, 200);

INSERT INTO medicines (medicine_name, category, unit_price, stock_qty)
VALUES ('Ibuprofen 400mg', 'Anti-inflammatory', 2.00, 350);

-- Insert Sample Appointments
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status, notes)
VALUES (1, 1, SYSDATE + 1, 'SCHEDULED', 'Routine general checkup');

-- Insert Sample Admissions
INSERT INTO admissions (patient_id, admission_date, room_number, condition_desc)
VALUES (2, SYSDATE, 'RM-204', 'Under observation for acute fever');

COMMIT;