-- =====================================================================
-- 1. LOOKUP / REFERENCE TABLES
-- =====================================================================

CREATE TABLE departments (
    department_id   NUMBER,
    department_name VARCHAR2(100) NOT NULL,
    floor_no        NUMBER(2),
    status          VARCHAR2(10) DEFAULT 'Active' NOT NULL,

    CONSTRAINT pk_departments PRIMARY KEY (department_id),
    CONSTRAINT uq_departments_name UNIQUE (department_name),
    CONSTRAINT ck_departments_status
        CHECK (status IN ('Active', 'Inactive'))
);

CREATE TABLE doctor_specialties (
    specialty_id    NUMBER,
    specialty_name  VARCHAR2(100) NOT NULL,
    status          VARCHAR2(10) DEFAULT 'Active' NOT NULL,

    CONSTRAINT pk_doctor_specialties PRIMARY KEY (specialty_id),
    CONSTRAINT uq_specialty_name UNIQUE (specialty_name),
    CONSTRAINT ck_specialty_status
        CHECK (status IN ('Active', 'Inactive'))
);

CREATE TABLE medicine_categories (
    category_id     NUMBER,
    category_name   VARCHAR2(100) NOT NULL,
    status          VARCHAR2(10) DEFAULT 'Active' NOT NULL,

    CONSTRAINT pk_medicine_categories PRIMARY KEY (category_id),
    CONSTRAINT uq_medicine_category_name UNIQUE (category_name),
    CONSTRAINT ck_medicine_category_status
        CHECK (status IN ('Active', 'Inactive'))
);

CREATE TABLE appointment_statuses (
    status_id       NUMBER,
    status_name     VARCHAR2(30) NOT NULL,

    CONSTRAINT pk_appointment_statuses PRIMARY KEY (status_id),
    CONSTRAINT uq_appointment_status_name UNIQUE (status_name)
);

-- =====================================================================
-- 2. CORE TABLES
-- =====================================================================

CREATE TABLE patients (
    patient_id                 NUMBER,
    civil_id                   VARCHAR2(20) NOT NULL,
    full_name                  VARCHAR2(150) NOT NULL,
    gender                     VARCHAR2(10) NOT NULL,
    date_of_birth              DATE NOT NULL,
    mobile_no                  VARCHAR2(20) NOT NULL,
    email                      VARCHAR2(150),
    blood_group                VARCHAR2(3),
    address                    VARCHAR2(300),
    emergency_contact_name     VARCHAR2(150),
    emergency_contact_no       VARCHAR2(20),
    created_at                 TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    CONSTRAINT pk_patients PRIMARY KEY (patient_id),
    CONSTRAINT uq_patients_civil_id UNIQUE (civil_id),
    CONSTRAINT ck_patients_gender
        CHECK (gender IN ('Male', 'Female')),
    CONSTRAINT ck_patients_blood_group
        CHECK (
            blood_group IS NULL OR
            blood_group IN ('A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-')
        ),
    CONSTRAINT ck_patients_birth_date
        CHECK (date_of_birth >= DATE '1900-01-01')
);

CREATE TABLE doctors (
    doctor_id         NUMBER,
    full_name         VARCHAR2(150) NOT NULL,
    department_id     NUMBER NOT NULL,
    specialty_id      NUMBER NOT NULL,
    mobile_no         VARCHAR2(20) NOT NULL,
    email             VARCHAR2(150) NOT NULL,
    consultation_fee  NUMBER(10,2) DEFAULT 0 NOT NULL,
    status             VARCHAR2(10) DEFAULT 'Active' NOT NULL,

    CONSTRAINT pk_doctors PRIMARY KEY (doctor_id),
    CONSTRAINT uq_doctors_email UNIQUE (email),
    CONSTRAINT fk_doctors_department
        FOREIGN KEY (department_id)
        REFERENCES departments (department_id),
    CONSTRAINT fk_doctors_specialty
        FOREIGN KEY (specialty_id)
        REFERENCES doctor_specialties (specialty_id),
    CONSTRAINT ck_doctors_fee
        CHECK (consultation_fee >= 0),
    CONSTRAINT ck_doctors_status
        CHECK (status IN ('Active', 'Inactive'))
);

CREATE TABLE medicines (
    medicine_id      NUMBER,
    medicine_name    VARCHAR2(150) NOT NULL,
    category_id      NUMBER NOT NULL,
    unit             VARCHAR2(30) NOT NULL,
    current_stock    NUMBER(10) DEFAULT 0 NOT NULL,
    reorder_level    NUMBER(10) DEFAULT 0 NOT NULL,
    status           VARCHAR2(10) DEFAULT 'Active' NOT NULL,

    CONSTRAINT pk_medicines PRIMARY KEY (medicine_id),
    CONSTRAINT uq_medicine_name UNIQUE (medicine_name),
    CONSTRAINT fk_medicines_category
        FOREIGN KEY (category_id)
        REFERENCES medicine_categories (category_id),
    CONSTRAINT ck_medicines_stock
        CHECK (current_stock >= 0),
    CONSTRAINT ck_medicines_reorder
        CHECK (reorder_level >= 0),
    CONSTRAINT ck_medicines_status
        CHECK (status IN ('Active', 'Inactive'))
);

CREATE TABLE appointments (
    appointment_id     NUMBER,
    patient_id         NUMBER NOT NULL,
    doctor_id          NUMBER NOT NULL,
    appointment_date   DATE NOT NULL,
    appointment_time   VARCHAR2(5) NOT NULL,
    status_id          NUMBER NOT NULL,
    reason_for_visit   VARCHAR2(500),
    created_at         TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    CONSTRAINT pk_appointments PRIMARY KEY (appointment_id),
    CONSTRAINT fk_appointments_patient
        FOREIGN KEY (patient_id)
        REFERENCES patients (patient_id),
    CONSTRAINT fk_appointments_doctor
        FOREIGN KEY (doctor_id)
        REFERENCES doctors (doctor_id),
    CONSTRAINT fk_appointments_status
        FOREIGN KEY (status_id)
        REFERENCES appointment_statuses (status_id)
);

CREATE TABLE patient_visits (
    visit_id          NUMBER,
    appointment_id    NUMBER NOT NULL,
    patient_id        NUMBER NOT NULL,
    doctor_id         NUMBER NOT NULL,
    visit_date        DATE DEFAULT SYSDATE NOT NULL,
    symptoms          VARCHAR2(1000),
    diagnosis         VARCHAR2(1000),
    notes             VARCHAR2(2000),
    follow_up_date    DATE,

    CONSTRAINT pk_patient_visits PRIMARY KEY (visit_id),
    CONSTRAINT uq_visit_appointment UNIQUE (appointment_id),
    CONSTRAINT fk_visits_appointment
        FOREIGN KEY (appointment_id)
        REFERENCES appointments (appointment_id),
    CONSTRAINT fk_visits_patient
        FOREIGN KEY (patient_id)
        REFERENCES patients (patient_id),
    CONSTRAINT fk_visits_doctor
        FOREIGN KEY (doctor_id)
        REFERENCES doctors (doctor_id),
    CONSTRAINT ck_visit_follow_up
        CHECK (follow_up_date IS NULL OR follow_up_date >= visit_date)
);

CREATE TABLE prescriptions (
    prescription_id    NUMBER,
    visit_id           NUMBER NOT NULL,
    patient_id         NUMBER NOT NULL,
    doctor_id          NUMBER NOT NULL,
    prescription_date  DATE DEFAULT SYSDATE NOT NULL,
    notes              VARCHAR2(1000),

    CONSTRAINT pk_prescriptions PRIMARY KEY (prescription_id),
    CONSTRAINT uq_prescription_visit UNIQUE (visit_id),
    CONSTRAINT fk_prescriptions_visit
        FOREIGN KEY (visit_id)
        REFERENCES patient_visits (visit_id),
    CONSTRAINT fk_prescriptions_patient
        FOREIGN KEY (patient_id)
        REFERENCES patients (patient_id),
    CONSTRAINT fk_prescriptions_doctor
        FOREIGN KEY (doctor_id)
        REFERENCES doctors (doctor_id)
);

CREATE TABLE prescription_items (
    prescription_item_id NUMBER,
    prescription_id      NUMBER NOT NULL,
    medicine_id          NUMBER NOT NULL,
    dosage                VARCHAR2(100) NOT NULL,
    frequency             VARCHAR2(100) NOT NULL,
    duration_days         NUMBER(4) NOT NULL,
    instructions          VARCHAR2(500),

    CONSTRAINT pk_prescription_items PRIMARY KEY (prescription_item_id),
    CONSTRAINT fk_prescription_items_header
        FOREIGN KEY (prescription_id)
        REFERENCES prescriptions (prescription_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_prescription_items_medicine
        FOREIGN KEY (medicine_id)
        REFERENCES medicines (medicine_id),
    CONSTRAINT ck_prescription_duration
        CHECK (duration_days > 0)
);

CREATE TABLE rooms (
    room_id       NUMBER,
    room_no       VARCHAR2(20) NOT NULL,
    room_type     VARCHAR2(20) NOT NULL,
    daily_rate    NUMBER(10,2) DEFAULT 0 NOT NULL,
    status        VARCHAR2(20) DEFAULT 'Available' NOT NULL,

    CONSTRAINT pk_rooms PRIMARY KEY (room_id),
    CONSTRAINT uq_rooms_room_no UNIQUE (room_no),
    CONSTRAINT ck_rooms_type
        CHECK (room_type IN ('General', 'Private', 'ICU')),
    CONSTRAINT ck_rooms_rate
        CHECK (daily_rate >= 0),
    CONSTRAINT ck_rooms_status
        CHECK (status IN ('Available', 'Occupied', 'Maintenance'))
);

CREATE TABLE admissions (
    admission_id      NUMBER,
    patient_id        NUMBER NOT NULL,
    doctor_id         NUMBER NOT NULL,
    room_id           NUMBER NOT NULL,
    admission_date    DATE DEFAULT SYSDATE NOT NULL,
    discharge_date    DATE,
    admission_reason  VARCHAR2(1000) NOT NULL,
    status            VARCHAR2(20) DEFAULT 'Admitted' NOT NULL,

    CONSTRAINT pk_admissions PRIMARY KEY (admission_id),
    CONSTRAINT fk_admissions_patient
        FOREIGN KEY (patient_id)
        REFERENCES patients (patient_id),
    CONSTRAINT fk_admissions_doctor
        FOREIGN KEY (doctor_id)
        REFERENCES doctors (doctor_id),
    CONSTRAINT fk_admissions_room
        FOREIGN KEY (room_id)
        REFERENCES rooms (room_id),
    CONSTRAINT ck_admissions_status
        CHECK (status IN ('Admitted', 'Discharged')),
    CONSTRAINT ck_admissions_discharge_required
        CHECK (status <> 'Discharged' OR discharge_date IS NOT NULL),
    CONSTRAINT ck_admissions_date_order
        CHECK (discharge_date IS NULL OR discharge_date >= admission_date)
);

-- =====================================================================
-- 3. PRIMARY-KEY SEQUENCES AND AUTO-ID TRIGGERS
-- The starts are above the included sample IDs, allowing new APEX rows
-- to receive IDs safely after the sample data is installed.
-- =====================================================================

CREATE SEQUENCE seq_departments          START WITH 100   INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_doctor_specialties   START WITH 100   INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_medicine_categories  START WITH 100   INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_appointment_statuses START WITH 100   INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_patients             START WITH 1000  INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_doctors              START WITH 1000  INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_medicines            START WITH 1000  INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_appointments         START WITH 10000 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_patient_visits       START WITH 10000 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_prescriptions        START WITH 10000 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_prescription_items   START WITH 10000 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_rooms                START WITH 1000  INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_admissions           START WITH 10000 INCREMENT BY 1 NOCACHE;

CREATE OR REPLACE TRIGGER trg_departments_id
BEFORE INSERT ON departments
FOR EACH ROW
WHEN (NEW.department_id IS NULL)
BEGIN
    :NEW.department_id := seq_departments.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_doctor_specialties_id
BEFORE INSERT ON doctor_specialties
FOR EACH ROW
WHEN (NEW.specialty_id IS NULL)
BEGIN
    :NEW.specialty_id := seq_doctor_specialties.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_medicine_categories_id
BEFORE INSERT ON medicine_categories
FOR EACH ROW
WHEN (NEW.category_id IS NULL)
BEGIN
    :NEW.category_id := seq_medicine_categories.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_appointment_statuses_id
BEFORE INSERT ON appointment_statuses
FOR EACH ROW
WHEN (NEW.status_id IS NULL)
BEGIN
    :NEW.status_id := seq_appointment_statuses.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_patients_id
BEFORE INSERT ON patients
FOR EACH ROW
WHEN (NEW.patient_id IS NULL)
BEGIN
    :NEW.patient_id := seq_patients.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_doctors_id
BEFORE INSERT ON doctors
FOR EACH ROW
WHEN (NEW.doctor_id IS NULL)
BEGIN
    :NEW.doctor_id := seq_doctors.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_medicines_id
BEFORE INSERT ON medicines
FOR EACH ROW
WHEN (NEW.medicine_id IS NULL)
BEGIN
    :NEW.medicine_id := seq_medicines.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_appointments_id
BEFORE INSERT ON appointments
FOR EACH ROW
WHEN (NEW.appointment_id IS NULL)
BEGIN
    :NEW.appointment_id := seq_appointments.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_patient_visits_id
BEFORE INSERT ON patient_visits
FOR EACH ROW
WHEN (NEW.visit_id IS NULL)
BEGIN
    :NEW.visit_id := seq_patient_visits.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_prescriptions_id
BEFORE INSERT ON prescriptions
FOR EACH ROW
WHEN (NEW.prescription_id IS NULL)
BEGIN
    :NEW.prescription_id := seq_prescriptions.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_prescription_items_id
BEFORE INSERT ON prescription_items
FOR EACH ROW
WHEN (NEW.prescription_item_id IS NULL)
BEGIN
    :NEW.prescription_item_id := seq_prescription_items.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_rooms_id
BEFORE INSERT ON rooms
FOR EACH ROW
WHEN (NEW.room_id IS NULL)
BEGIN
    :NEW.room_id := seq_rooms.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_admissions_id
BEFORE INSERT ON admissions
FOR EACH ROW
WHEN (NEW.admission_id IS NULL)
BEGIN
    :NEW.admission_id := seq_admissions.NEXTVAL;
END;
/

-- =====================================================================
-- 4. BUSINESS-RULE TRIGGERS
-- =====================================================================

-- Rule: A scheduled appointment cannot be created or moved into the past.
CREATE OR REPLACE TRIGGER trg_appointment_no_past
BEFORE INSERT OR UPDATE OF appointment_date, appointment_time, status_id
ON appointments
FOR EACH ROW
DECLARE
    l_status_name appointment_statuses.status_name%TYPE;
    l_appointment_datetime DATE;
BEGIN
    SELECT status_name
      INTO l_status_name
      FROM appointment_statuses
     WHERE status_id = :NEW.status_id;

    IF l_status_name = 'Scheduled' THEN
        BEGIN
            l_appointment_datetime :=
                TO_DATE(
                    TO_CHAR(:NEW.appointment_date, 'YYYY-MM-DD')
                    || ' ' || :NEW.appointment_time,
                    'YYYY-MM-DD HH24:MI'
                );
        EXCEPTION
            WHEN OTHERS THEN
                RAISE_APPLICATION_ERROR(
                    -20001,
                    'Appointment time must use HH24:MI format, for example 09:30.'
                );
        END;

        IF l_appointment_datetime < SYSDATE THEN
            RAISE_APPLICATION_ERROR(
                -20002,
                'A scheduled appointment cannot be booked in the past.'
            );
        END IF;
    END IF;
END;
/

-- Rule: Visit patient and doctor are automatically taken from the appointment.
CREATE OR REPLACE TRIGGER trg_visit_from_appointment
BEFORE INSERT OR UPDATE OF appointment_id
ON patient_visits
FOR EACH ROW
BEGIN
    SELECT patient_id, doctor_id
      INTO :NEW.patient_id, :NEW.doctor_id
      FROM appointments
     WHERE appointment_id = :NEW.appointment_id;
END;
/

-- Rule: Prescription patient and doctor are automatically taken from the visit.
CREATE OR REPLACE TRIGGER trg_prescription_from_visit
BEFORE INSERT OR UPDATE OF visit_id
ON prescriptions
FOR EACH ROW
BEGIN
    SELECT patient_id, doctor_id
      INTO :NEW.patient_id, :NEW.doctor_id
      FROM patient_visits
     WHERE visit_id = :NEW.visit_id;
END;
/

-- Validate room availability before an admission is saved.
CREATE OR REPLACE TRIGGER trg_admission_room_validate
BEFORE INSERT OR UPDATE OF room_id, status, discharge_date
ON admissions
FOR EACH ROW
DECLARE
    l_room_status rooms.status%TYPE;
BEGIN
    IF :NEW.status = 'Discharged' AND :NEW.discharge_date IS NULL THEN
        RAISE_APPLICATION_ERROR(
            -20003,
            'A discharged patient must have a discharge date.'
        );
    END IF;

    IF :NEW.status = 'Admitted' THEN
        IF INSERTING
           OR NVL(:OLD.status, 'X') <> 'Admitted'
           OR NVL(:OLD.room_id, -1) <> :NEW.room_id
        THEN
            SELECT status
              INTO l_room_status
              FROM rooms
             WHERE room_id = :NEW.room_id
               FOR UPDATE;

            IF l_room_status <> 'Available' THEN
                RAISE_APPLICATION_ERROR(
                    -20004,
                    'The selected room is not available.'
                );
            END IF;
        END IF;
    END IF;
END;
/

-- Automatically update the room after admission changes.
CREATE OR REPLACE TRIGGER trg_admission_room_update
AFTER INSERT OR UPDATE OF room_id, status
ON admissions
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        IF :NEW.status = 'Admitted' THEN
            UPDATE rooms
               SET status = 'Occupied'
             WHERE room_id = :NEW.room_id;
        END IF;
    ELSE
        IF :OLD.status = 'Admitted'
           AND (
               :NEW.status = 'Discharged'
               OR :OLD.room_id <> :NEW.room_id
           )
        THEN
            UPDATE rooms
               SET status = 'Available'
             WHERE room_id = :OLD.room_id;
        END IF;

        IF :NEW.status = 'Admitted'
           AND (
               :OLD.status <> 'Admitted'
               OR :OLD.room_id <> :NEW.room_id
           )
        THEN
            UPDATE rooms
               SET status = 'Occupied'
             WHERE room_id = :NEW.room_id;
        END IF;
    END IF;
END;
/

-- =====================================================================
-- 5. SAMPLE LOOKUP DATA
-- =====================================================================

INSERT ALL
    INTO departments VALUES (1, 'Cardiology',       2, 'Active')
    INTO departments VALUES (2, 'Pediatrics',       3, 'Active')
    INTO departments VALUES (3, 'Emergency',        1, 'Active')
    INTO departments VALUES (4, 'General Medicine', 2, 'Active')
    INTO departments VALUES (5, 'Orthopedics',      4, 'Active')
    INTO departments VALUES (6, 'Surgery',          4, 'Active')
SELECT 1 FROM dual;

INSERT ALL
    INTO doctor_specialties VALUES (1,  'Cardiologist',       'Active')
    INTO doctor_specialties VALUES (2,  'Pediatrician',       'Active')
    INTO doctor_specialties VALUES (3,  'Emergency Physician','Active')
    INTO doctor_specialties VALUES (4,  'General Physician',  'Active')
    INTO doctor_specialties VALUES (5,  'Orthopedic Surgeon', 'Active')
    INTO doctor_specialties VALUES (6,  'General Surgeon',    'Active')
    INTO doctor_specialties VALUES (7,  'Internal Medicine',  'Active')
    INTO doctor_specialties VALUES (8,  'Family Medicine',    'Active')
    INTO doctor_specialties VALUES (9,  'Trauma Surgeon',     'Active')
    INTO doctor_specialties VALUES (10, 'Clinical Consultant','Active')
SELECT 1 FROM dual;

INSERT ALL
    INTO medicine_categories VALUES (1, 'Antibiotic',  'Active')
    INTO medicine_categories VALUES (2, 'Painkiller',  'Active')
    INTO medicine_categories VALUES (3, 'Diabetes',    'Active')
    INTO medicine_categories VALUES (4, 'Cardiology',  'Active')
    INTO medicine_categories VALUES (5, 'Respiratory', 'Active')
    INTO medicine_categories VALUES (6, 'Vitamins',    'Active')
SELECT 1 FROM dual;

INSERT ALL
    INTO appointment_statuses VALUES (1, 'Scheduled')
    INTO appointment_statuses VALUES (2, 'Completed')
    INTO appointment_statuses VALUES (3, 'Cancelled')
    INTO appointment_statuses VALUES (4, 'No Show')
SELECT 1 FROM dual;

-- =====================================================================
-- 6. SAMPLE PATIENTS: 20
-- =====================================================================

INSERT ALL
    INTO patients (
        patient_id, civil_id, full_name, gender, date_of_birth,
        mobile_no, email, blood_group, address,
        emergency_contact_name, emergency_contact_no
    ) VALUES (
        1, 'OM10000001', 'Ahmed Al Balushi', 'Male', DATE '1985-03-12',
        '92110001', 'ahmed.balushi@example.com', 'O+', 'Muscat',
        'Mariam Al Balushi', '92119901'
    )
    INTO patients VALUES (
        2, 'OM10000002', 'Fatma Al Hinai', 'Female', DATE '1992-07-25',
        '92110002', 'fatma.hinai@example.com', 'A+', 'Seeb',
        'Ali Al Hinai', '92119902', SYSTIMESTAMP
    )
    INTO patients VALUES (
        3, 'OM10000003', 'Mohammed Al Rawahi', 'Male', DATE '1978-11-04',
        '92110003', 'mohammed.rawahi@example.com', 'B+', 'Bawshar',
        'Salma Al Rawahi', '92119903', SYSTIMESTAMP
    )
    INTO patients VALUES (
        4, 'OM10000004', 'Aisha Al Harthy', 'Female', DATE '2001-01-18',
        '92110004', 'aisha.harthy@example.com', 'AB+', 'Al Amerat',
        'Khalid Al Harthy', '92119904', SYSTIMESTAMP
    )
    INTO patients VALUES (
        5, 'OM10000005', 'Said Al Farsi', 'Male', DATE '1968-09-09',
        '92110005', 'said.farsi@example.com', 'A-', 'Muttrah',
        'Noura Al Farsi', '92119905', SYSTIMESTAMP
    )
    INTO patients VALUES (
        6, 'OM10000006', 'Noura Al Siyabi', 'Female', DATE '1989-05-30',
        '92110006', 'noura.siyabi@example.com', 'O-', 'Muscat',
        'Hamood Al Siyabi', '92119906', SYSTIMESTAMP
    )
    INTO patients VALUES (
        7, 'OM10000007', 'Khalid Al Maawali', 'Male', DATE '1995-12-15',
        '92110007', 'khalid.maawali@example.com', 'B-', 'Seeb',
        'Amal Al Maawali', '92119907', SYSTIMESTAMP
    )
    INTO patients VALUES (
        8, 'OM10000008', 'Maryam Al Shukaili', 'Female', DATE '2014-06-08',
        '92110008', 'maryam.shukaili@example.com', 'O+', 'Barka',
        'Hamed Al Shukaili', '92119908', SYSTIMESTAMP
    )
    INTO patients VALUES (
        9, 'OM10000009', 'Salim Al Kindi', 'Male', DATE '1982-02-22',
        '92110009', 'salim.kindi@example.com', 'A+', 'Nizwa',
        'Asma Al Kindi', '92119909', SYSTIMESTAMP
    )
    INTO patients VALUES (
        10, 'OM10000010', 'Huda Al Rashdi', 'Female', DATE '1975-10-11',
        '92110010', 'huda.rashdi@example.com', 'AB-', 'Muscat',
        'Rashid Al Rashdi', '92119910', SYSTIMESTAMP
    )
    INTO patients VALUES (
        11, 'OM10000011', 'Yousef Al Wahaibi', 'Male', DATE '2005-04-03',
        '92110011', 'yousef.wahaibi@example.com', 'O+', 'Sohar',
        'Muna Al Wahaibi', '92119911', SYSTIMESTAMP
    )
    INTO patients VALUES (
        12, 'OM10000012', 'Muna Al Habsi', 'Female', DATE '1998-08-27',
        '92110012', 'muna.habsi@example.com', 'B+', 'Ibri',
        'Sultan Al Habsi', '92119912', SYSTIMESTAMP
    )
    INTO patients VALUES (
        13, 'OM10000013', 'Hamad Al Busaidi', 'Male', DATE '1990-01-06',
        '92110013', 'hamad.busaidi@example.com', 'A+', 'Muscat',
        'Wafa Al Busaidi', '92119913', SYSTIMESTAMP
    )
    INTO patients VALUES (
        14, 'OM10000014', 'Wafa Al Amri', 'Female', DATE '1987-03-19',
        '92110014', 'wafa.amri@example.com', 'O-', 'Sur',
        'Majid Al Amri', '92119914', SYSTIMESTAMP
    )
    INTO patients VALUES (
        15, 'OM10000015', 'Majid Al Zadjali', 'Male', DATE '1959-12-31',
        '92110015', 'majid.zadjali@example.com', 'B-', 'Muscat',
        'Laila Al Zadjali', '92119915', SYSTIMESTAMP
    )
    INTO patients VALUES (
        16, 'OM10000016', 'Laila Al Lawati', 'Female', DATE '2008-09-14',
        '92110016', 'laila.lawati@example.com', 'A-', 'Muttrah',
        'Abbas Al Lawati', '92119916', SYSTIMESTAMP
    )
    INTO patients VALUES (
        17, 'OM10000017', 'Rashid Al Nabhani', 'Male', DATE '1972-07-07',
        '92110017', 'rashid.nabhani@example.com', 'AB+', 'Rustaq',
        'Safa Al Nabhani', '92119917', SYSTIMESTAMP
    )
    INTO patients VALUES (
        18, 'OM10000018', 'Safa Al Riyami', 'Female', DATE '1994-11-21',
        '92110018', 'safa.riyami@example.com', 'O+', 'Nizwa',
        'Nasser Al Riyami', '92119918', SYSTIMESTAMP
    )
    INTO patients VALUES (
        19, 'OM10000019', 'Nasser Al Jabri', 'Male', DATE '1980-06-16',
        '92110019', 'nasser.jabri@example.com', 'B+', 'Muscat',
        'Hanan Al Jabri', '92119919', SYSTIMESTAMP
    )
    INTO patients VALUES (
        20, 'OM10000020', 'Hanan Al Mukhaini', 'Female', DATE '2000-02-29',
        '92110020', 'hanan.mukhaini@example.com', 'A+', 'Sur',
        'Talal Al Mukhaini', '92119920', SYSTIMESTAMP
    )
SELECT 1 FROM dual;

-- =====================================================================
-- 7. SAMPLE DOCTORS: 10
-- =====================================================================

INSERT ALL
    INTO doctors VALUES (
        1, 'Dr. Ali Al Habsi', 1, 1, '93100001',
        'ali.habsi@alnoor.example', 25.000, 'Active'
    )
    INTO doctors VALUES (
        2, 'Dr. Sara Al Harthy', 2, 2, '93100002',
        'sara.harthy@alnoor.example', 20.000, 'Active'
    )
    INTO doctors VALUES (
        3, 'Dr. Omar Al Kindi', 3, 3, '93100003',
        'omar.kindi@alnoor.example', 18.000, 'Active'
    )
    INTO doctors VALUES (
        4, 'Dr. Amal Al Balushi', 4, 4, '93100004',
        'amal.balushi@alnoor.example', 15.000, 'Active'
    )
    INTO doctors VALUES (
        5, 'Dr. Hassan Al Rawahi', 5, 5, '93100005',
        'hassan.rawahi@alnoor.example', 28.000, 'Active'
    )
    INTO doctors VALUES (
        6, 'Dr. Noura Al Farsi', 6, 6, '93100006',
        'noura.farsi@alnoor.example', 30.000, 'Active'
    )
    INTO doctors VALUES (
        7, 'Dr. Khalid Al Siyabi', 4, 7, '93100007',
        'khalid.siyabi@alnoor.example', 22.000, 'Active'
    )
    INTO doctors VALUES (
        8, 'Dr. Maryam Al Maawali', 4, 8, '93100008',
        'maryam.maawali@alnoor.example', 18.000, 'Active'
    )
    INTO doctors VALUES (
        9, 'Dr. Salim Al Shukaili', 3, 9, '93100009',
        'salim.shukaili@alnoor.example', 27.000, 'Active'
    )
    INTO doctors VALUES (
        10, 'Dr. Huda Al Rashdi', 1, 10, '93100010',
        'huda.rashdi@alnoor.example', 26.000, 'Inactive'
    )
SELECT 1 FROM dual;

-- =====================================================================
-- 8. SAMPLE MEDICINES: 20
-- =====================================================================

INSERT ALL
    INTO medicines VALUES (1,  'Amoxicillin 500mg', 1, 'Capsule',   120, 30, 'Active')
    INTO medicines VALUES (2,  'Azithromycin 250mg',1, 'Tablet',     18, 25, 'Active')
    INTO medicines VALUES (3,  'Paracetamol 500mg', 2, 'Tablet',    250, 50, 'Active')
    INTO medicines VALUES (4,  'Ibuprofen 400mg',   2, 'Tablet',     35, 40, 'Active')
    INTO medicines VALUES (5,  'Diclofenac Gel',    2, 'Tube',       42, 15, 'Active')
    INTO medicines VALUES (6,  'Metformin 500mg',   3, 'Tablet',     90, 30, 'Active')
    INTO medicines VALUES (7,  'Insulin Glargine',  3, 'Injection',  12, 20, 'Active')
    INTO medicines VALUES (8,  'Gliclazide 80mg',   3, 'Tablet',     55, 20, 'Active')
    INTO medicines VALUES (9,  'Aspirin 81mg',      4, 'Tablet',    150, 40, 'Active')
    INTO medicines VALUES (10, 'Atorvastatin 20mg', 4, 'Tablet',     60, 25, 'Active')
    INTO medicines VALUES (11, 'Amlodipine 5mg',    4, 'Tablet',     22, 30, 'Active')
    INTO medicines VALUES (12, 'Salbutamol Inhaler',5, 'Inhaler',    14, 15, 'Active')
    INTO medicines VALUES (13, 'Budesonide Inhaler',5, 'Inhaler',    28, 12, 'Active')
    INTO medicines VALUES (14, 'Cough Syrup',       5, 'Syrup',      45, 20, 'Active')
    INTO medicines VALUES (15, 'Vitamin C 1000mg',  6, 'Tablet',    100, 25, 'Active')
    INTO medicines VALUES (16, 'Vitamin D3',        6, 'Capsule',     65, 20, 'Active')
    INTO medicines VALUES (17, 'Calcium Tablets',   6, 'Tablet',      9, 15, 'Active')
    INTO medicines VALUES (18, 'Cefuroxime 500mg',  1, 'Tablet',     31, 20, 'Active')
    INTO medicines VALUES (19, 'Tramadol 50mg',     2, 'Capsule',     8, 10, 'Active')
    INTO medicines VALUES (20, 'Multivitamin Syrup',6, 'Syrup',      50, 20, 'Active')
SELECT 1 FROM dual;

-- =====================================================================
-- 9. SAMPLE ROOMS
-- =====================================================================

INSERT ALL
    INTO rooms VALUES (1,  'G101', 'General',  45.000, 'Available')
    INTO rooms VALUES (2,  'G102', 'General',  45.000, 'Available')
    INTO rooms VALUES (3,  'G103', 'General',  45.000, 'Available')
    INTO rooms VALUES (4,  'G104', 'General',  45.000, 'Available')
    INTO rooms VALUES (5,  'P201', 'Private',  85.000, 'Available')
    INTO rooms VALUES (6,  'P202', 'Private',  85.000, 'Available')
    INTO rooms VALUES (7,  'P203', 'Private',  85.000, 'Available')
    INTO rooms VALUES (8,  'P204', 'Private',  85.000, 'Available')
    INTO rooms VALUES (9,  'ICU1', 'ICU',     160.000, 'Available')
    INTO rooms VALUES (10, 'ICU2', 'ICU',     160.000, 'Available')
    INTO rooms VALUES (11, 'ICU3', 'ICU',     160.000, 'Available')
    INTO rooms VALUES (12, 'G105', 'General',  45.000, 'Maintenance')
SELECT 1 FROM dual;

-- =====================================================================
-- 10. SAMPLE APPOINTMENTS: 30
-- IDs 1-10 have visits and prescriptions.
-- Historical records use Completed/Cancelled/No Show.
-- Future records use Scheduled so the no-past rule remains valid.
-- =====================================================================

INSERT ALL
    INTO appointments VALUES (1,  1,  1, TRUNC(SYSDATE)-60, '09:00', 2, 'Chest discomfort',       SYSTIMESTAMP-INTERVAL '60' DAY)
    INTO appointments VALUES (2,  2,  2, TRUNC(SYSDATE)-52, '10:00', 2, 'Child fever',            SYSTIMESTAMP-INTERVAL '52' DAY)
    INTO appointments VALUES (3,  3,  4, TRUNC(SYSDATE)-45, '11:30', 2, 'General fatigue',        SYSTIMESTAMP-INTERVAL '45' DAY)
    INTO appointments VALUES (4,  4,  5, TRUNC(SYSDATE)-38, '12:00', 2, 'Knee pain',              SYSTIMESTAMP-INTERVAL '38' DAY)
    INTO appointments VALUES (5,  5,  1, TRUNC(SYSDATE)-31, '09:30', 2, 'Blood pressure review',  SYSTIMESTAMP-INTERVAL '31' DAY)
    INTO appointments VALUES (6,  6,  7, TRUNC(SYSDATE)-24, '10:30', 2, 'Diabetes follow-up',     SYSTIMESTAMP-INTERVAL '24' DAY)
    INTO appointments VALUES (7,  7,  3, TRUNC(SYSDATE)-18, '14:00', 2, 'Minor injury',           SYSTIMESTAMP-INTERVAL '18' DAY)
    INTO appointments VALUES (8,  8,  2, TRUNC(SYSDATE)-12, '09:00', 2, 'Persistent cough',       SYSTIMESTAMP-INTERVAL '12' DAY)
    INTO appointments VALUES (9,  9,  6, TRUNC(SYSDATE)-7,  '13:00', 2, 'Abdominal pain',         SYSTIMESTAMP-INTERVAL '7' DAY)
    INTO appointments VALUES (10, 10, 4, TRUNC(SYSDATE)-3,  '11:00', 2, 'Headache and nausea',    SYSTIMESTAMP-INTERVAL '3' DAY)
    INTO appointments VALUES (11, 11, 8, TRUNC(SYSDATE)-2,  '08:30', 3, 'Routine examination',    SYSTIMESTAMP-INTERVAL '2' DAY)
    INTO appointments VALUES (12, 12, 5, TRUNC(SYSDATE)-1,  '15:00', 4, 'Back pain',              SYSTIMESTAMP-INTERVAL '1' DAY)
    INTO appointments VALUES (13, 13, 1, TRUNC(SYSDATE),    '08:00', 2, 'Heart check-up',         SYSTIMESTAMP)
    INTO appointments VALUES (14, 14, 4, TRUNC(SYSDATE),    '09:00', 2, 'Seasonal flu',           SYSTIMESTAMP)
    INTO appointments VALUES (15, 15, 7, TRUNC(SYSDATE),    '10:00', 3, 'Medication review',      SYSTIMESTAMP)
    INTO appointments VALUES (16, 16, 2, TRUNC(SYSDATE)+1,  '09:00', 1, 'Child vaccination',     SYSTIMESTAMP)
    INTO appointments VALUES (17, 17, 5, TRUNC(SYSDATE)+1,  '10:00', 1, 'Shoulder pain',         SYSTIMESTAMP)
    INTO appointments VALUES (18, 18, 4, TRUNC(SYSDATE)+1,  '11:00', 1, 'General check-up',      SYSTIMESTAMP)
    INTO appointments VALUES (19, 19, 1, TRUNC(SYSDATE)+2,  '09:30', 1, 'Palpitations',          SYSTIMESTAMP)
    INTO appointments VALUES (20, 20, 8, TRUNC(SYSDATE)+2,  '10:30', 1, 'Health assessment',     SYSTIMESTAMP)
    INTO appointments VALUES (21, 1,  7, TRUNC(SYSDATE)+3,  '08:30', 1, 'Follow-up visit',       SYSTIMESTAMP)
    INTO appointments VALUES (22, 2,  2, TRUNC(SYSDATE)+3,  '09:30', 1, 'Fever follow-up',       SYSTIMESTAMP)
    INTO appointments VALUES (23, 3,  6, TRUNC(SYSDATE)+4,  '10:30', 1, 'Surgical consultation', SYSTIMESTAMP)
    INTO appointments VALUES (24, 4,  5, TRUNC(SYSDATE)+4,  '11:30', 1, 'Knee follow-up',        SYSTIMESTAMP)
    INTO appointments VALUES (25, 5,  1, TRUNC(SYSDATE)+5,  '09:00', 1, 'Cardiology review',     SYSTIMESTAMP)
    INTO appointments VALUES (26, 6,  7, TRUNC(SYSDATE)+5,  '10:00', 1, 'Blood sugar review',    SYSTIMESTAMP)
    INTO appointments VALUES (27, 7,  3, TRUNC(SYSDATE)+6,  '13:00', 1, 'Emergency follow-up',   SYSTIMESTAMP)
    INTO appointments VALUES (28, 8,  2, TRUNC(SYSDATE)+6,  '14:00', 1, 'Cough review',          SYSTIMESTAMP)
    INTO appointments VALUES (29, 9,  6, TRUNC(SYSDATE)+7,  '09:00', 1, 'Abdominal review',      SYSTIMESTAMP)
    INTO appointments VALUES (30, 10, 4, TRUNC(SYSDATE)+7,  '10:00', 1, 'General review',        SYSTIMESTAMP)
SELECT 1 FROM dual;

-- =====================================================================
-- 11. SAMPLE VISITS: 10
-- Patient and doctor IDs are filled/enforced by the trigger.
-- =====================================================================

INSERT ALL
    INTO patient_visits (
        visit_id, appointment_id, patient_id, doctor_id, visit_date,
        symptoms, diagnosis, notes, follow_up_date
    ) VALUES (
        1, 1, 1, 1, TRUNC(SYSDATE)-60,
        'Chest discomfort and shortness of breath',
        'Mild hypertension',
        'Reduce salt and monitor blood pressure',
        TRUNC(SYSDATE)-30
    )
    INTO patient_visits VALUES (
        2, 2, 2, 2, TRUNC(SYSDATE)-52,
        'Fever and sore throat',
        'Upper respiratory infection',
        'Fluids and rest advised',
        TRUNC(SYSDATE)-45
    )
    INTO patient_visits VALUES (
        3, 3, 3, 4, TRUNC(SYSDATE)-45,
        'Tiredness and low energy',
        'Vitamin deficiency suspected',
        'Blood test requested',
        TRUNC(SYSDATE)-31
    )
    INTO patient_visits VALUES (
        4, 4, 4, 5, TRUNC(SYSDATE)-38,
        'Knee pain after exercise',
        'Knee strain',
        'Rest and physiotherapy advised',
        TRUNC(SYSDATE)-24
    )
    INTO patient_visits VALUES (
        5, 5, 5, 1, TRUNC(SYSDATE)-31,
        'High home blood pressure readings',
        'Hypertension under observation',
        'Continue monitoring',
        TRUNC(SYSDATE)-10
    )
    INTO patient_visits VALUES (
        6, 6, 6, 7, TRUNC(SYSDATE)-24,
        'High fasting glucose',
        'Type 2 diabetes',
        'Diet plan reviewed',
        TRUNC(SYSDATE)-3
    )
    INTO patient_visits VALUES (
        7, 7, 7, 3, TRUNC(SYSDATE)-18,
        'Small cut on right arm',
        'Superficial wound',
        'Wound cleaned and dressed',
        NULL
    )
    INTO patient_visits VALUES (
        8, 8, 8, 2, TRUNC(SYSDATE)-12,
        'Cough and wheezing',
        'Mild bronchitis',
        'Return if breathing becomes difficult',
        TRUNC(SYSDATE)-5
    )
    INTO patient_visits VALUES (
        9, 9, 9, 6, TRUNC(SYSDATE)-7,
        'Abdominal pain after meals',
        'Gastritis suspected',
        'Avoid spicy food',
        TRUNC(SYSDATE)+7
    )
    INTO patient_visits VALUES (
        10, 10, 10, 4, TRUNC(SYSDATE)-3,
        'Headache and nausea',
        'Migraine',
        'Rest in dark room and maintain hydration',
        TRUNC(SYSDATE)+11
    )
SELECT 1 FROM dual;

-- =====================================================================
-- 12. SAMPLE PRESCRIPTIONS: 10
-- =====================================================================

INSERT ALL
    INTO prescriptions VALUES (1,  1,  1, 1, TRUNC(SYSDATE)-60, 'Monitor blood pressure daily')
    INTO prescriptions VALUES (2,  2,  2, 2, TRUNC(SYSDATE)-52, 'Complete the antibiotic course')
    INTO prescriptions VALUES (3,  3,  3, 4, TRUNC(SYSDATE)-45, 'Take supplements after meals')
    INTO prescriptions VALUES (4,  4,  4, 5, TRUNC(SYSDATE)-38, 'Use only when pain is present')
    INTO prescriptions VALUES (5,  5,  5, 1, TRUNC(SYSDATE)-31, 'Continue until next review')
    INTO prescriptions VALUES (6,  6,  6, 7, TRUNC(SYSDATE)-24, 'Take with meals')
    INTO prescriptions VALUES (7,  7,  7, 3, TRUNC(SYSDATE)-18, 'Keep the wound dry')
    INTO prescriptions VALUES (8,  8,  8, 2, TRUNC(SYSDATE)-12, 'Use inhaler as instructed')
    INTO prescriptions VALUES (9,  9,  9, 6, TRUNC(SYSDATE)-7,  'Avoid taking on an empty stomach')
    INTO prescriptions VALUES (10, 10, 10,4, TRUNC(SYSDATE)-3,  'Use at the first sign of headache')
SELECT 1 FROM dual;

INSERT ALL
    INTO prescription_items VALUES (1,  1, 11, '5mg',   'Once daily',        30, 'After breakfast')
    INTO prescription_items VALUES (2,  1,  9, '81mg',  'Once daily',        30, 'After food')
    INTO prescription_items VALUES (3,  2,  1, '500mg', 'Three times daily',  7, 'After food')
    INTO prescription_items VALUES (4,  2,  3, '500mg', 'When required',      5, 'Maximum four tablets daily')
    INTO prescription_items VALUES (5,  3, 15, '1000mg','Once daily',        30, 'After breakfast')
    INTO prescription_items VALUES (6,  3, 16, '1 cap', 'Once daily',        30, 'After food')
    INTO prescription_items VALUES (7,  4,  4, '400mg', 'Twice daily',        5, 'After food')
    INTO prescription_items VALUES (8,  4,  5, 'Thin layer','Twice daily',    7, 'Apply to the knee')
    INTO prescription_items VALUES (9,  5, 11, '5mg',   'Once daily',        30, 'At the same time each day')
    INTO prescription_items VALUES (10, 6,  6, '500mg', 'Twice daily',       30, 'With breakfast and dinner')
    INTO prescription_items VALUES (11, 6,  8, '80mg',  'Once daily',        30, 'Before breakfast')
    INTO prescription_items VALUES (12, 7,  3, '500mg', 'When required',      3, 'For pain only')
    INTO prescription_items VALUES (13, 8, 12, '2 puffs','Four times daily',  7, 'Shake before use')
    INTO prescription_items VALUES (14, 8, 14, '10ml',  'Three times daily',  7, 'After food')
    INTO prescription_items VALUES (15, 9,  3, '500mg', 'When required',      5, 'After food')
    INTO prescription_items VALUES (16, 10, 4, '400mg', 'When required',      5, 'After food')
SELECT 1 FROM dual;

-- =====================================================================
-- 13. SAMPLE ADMISSIONS
-- The triggers automatically occupy rooms for active admissions.
-- =====================================================================

INSERT ALL
    INTO admissions VALUES (
        1, 3, 4, 1, TRUNC(SYSDATE)-20, TRUNC(SYSDATE)-17,
        'Observation for severe fatigue', 'Discharged'
    )
    INTO admissions VALUES (
        2, 4, 5, 5, TRUNC(SYSDATE)-12, TRUNC(SYSDATE)-9,
        'Knee injury observation', 'Discharged'
    )
    INTO admissions VALUES (
        3, 9, 6, 9, TRUNC(SYSDATE)-7, TRUNC(SYSDATE)-5,
        'Abdominal pain investigation', 'Discharged'
    )
    INTO admissions VALUES (
        4, 5, 1, 2, TRUNC(SYSDATE)-2, NULL,
        'Blood pressure monitoring', 'Admitted'
    )
    INTO admissions VALUES (
        5, 6, 7, 6, TRUNC(SYSDATE)-1, NULL,
        'Diabetes stabilization', 'Admitted'
    )
    INTO admissions VALUES (
        6, 17, 5, 3, TRUNC(SYSDATE), NULL,
        'Shoulder injury assessment', 'Admitted'
    )
    INTO admissions VALUES (
        7, 19, 1, 10, TRUNC(SYSDATE), NULL,
        'Cardiac observation', 'Admitted'
    )
SELECT 1 FROM dual;

COMMIT;

-- =====================================================================
-- 14. REQUIRED REPORTING VIEWS
-- =====================================================================

CREATE OR REPLACE VIEW vw_appointment_report AS
SELECT
    a.appointment_id,
    p.patient_id,
    p.full_name AS patient_name,
    d.doctor_id,
    d.full_name AS doctor_name,
    dep.department_id,
    dep.department_name,
    a.appointment_date,
    a.appointment_time,
    s.status_id,
    s.status_name,
    a.reason_for_visit,
    a.created_at
FROM appointments a
JOIN patients p
  ON p.patient_id = a.patient_id
JOIN doctors d
  ON d.doctor_id = a.doctor_id
JOIN departments dep
  ON dep.department_id = d.department_id
JOIN appointment_statuses s
  ON s.status_id = a.status_id;

CREATE OR REPLACE VIEW vw_patient_visit_report AS
SELECT
    v.visit_id,
    v.appointment_id,
    p.patient_id,
    p.full_name AS patient_name,
    d.doctor_id,
    d.full_name AS doctor_name,
    dep.department_id,
    dep.department_name,
    v.visit_date,
    v.symptoms,
    v.diagnosis,
    v.notes,
    v.follow_up_date
FROM patient_visits v
JOIN patients p
  ON p.patient_id = v.patient_id
JOIN doctors d
  ON d.doctor_id = v.doctor_id
JOIN departments dep
  ON dep.department_id = d.department_id;

CREATE OR REPLACE VIEW vw_medicine_stock_report AS
SELECT
    m.medicine_id,
    m.medicine_name,
    c.category_id,
    c.category_name,
    m.unit,
    m.current_stock,
    m.reorder_level,
    CASE
        WHEN m.current_stock < m.reorder_level THEN 'Low Stock'
        ELSE 'Normal'
    END AS stock_status,
    m.status
FROM medicines m
JOIN medicine_categories c
  ON c.category_id = m.category_id;

CREATE OR REPLACE VIEW vw_admission_report AS
SELECT
    a.admission_id,
    p.patient_id,
    p.full_name AS patient_name,
    d.doctor_id,
    d.full_name AS doctor_name,
    r.room_id,
    r.room_no,
    r.room_type,
    a.admission_date,
    a.discharge_date,
    a.admission_reason,
    a.status
FROM admissions a
JOIN patients p
  ON p.patient_id = a.patient_id
JOIN doctors d
  ON d.doctor_id = a.doctor_id
JOIN rooms r
  ON r.room_id = a.room_id;

-- =====================================================================
-- 15. VERIFICATION QUERIES
-- =====================================================================

SELECT 'PATIENTS' AS table_name, COUNT(*) AS row_count FROM patients
UNION ALL
SELECT 'DOCTORS', COUNT(*) FROM doctors
UNION ALL
SELECT 'DEPARTMENTS', COUNT(*) FROM departments
UNION ALL
SELECT 'MEDICINES', COUNT(*) FROM medicines
UNION ALL
SELECT 'APPOINTMENTS', COUNT(*) FROM appointments
UNION ALL
SELECT 'VISITS', COUNT(*) FROM patient_visits
UNION ALL
SELECT 'PRESCRIPTIONS', COUNT(*) FROM prescriptions
UNION ALL
SELECT 'PRESCRIPTION ITEMS', COUNT(*) FROM prescription_items
UNION ALL
SELECT 'ADMISSIONS', COUNT(*) FROM admissions
ORDER BY table_name;

SELECT room_no, room_type, status
FROM rooms
ORDER BY room_id;

SELECT *
FROM vw_medicine_stock_report
WHERE stock_status = 'Low Stock'
ORDER BY medicine_name;
