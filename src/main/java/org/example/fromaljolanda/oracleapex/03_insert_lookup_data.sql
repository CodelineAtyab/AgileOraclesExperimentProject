INSERT INTO departments (department_name, floor_no, status)
VALUES ('Cardiology', 2, 'Active');

INSERT INTO departments (department_name, floor_no, status)
VALUES ('Pediatrics', 3, 'Active');

INSERT INTO departments (department_name, floor_no, status)
VALUES ('Emergency', 1, 'Active');

INSERT INTO departments (department_name, floor_no, status)
VALUES ('Surgery', 4, 'Active');

INSERT INTO departments (department_name, floor_no, status)
VALUES ('Internal Medicine', 2, 'Active');

---------------------------------------------------------------------

INSERT INTO doctor_specialties (specialty_name, status)
VALUES ('Cardiologist', 'Active');

INSERT INTO doctor_specialties (specialty_name, status)
VALUES ('Pediatrician', 'Active');

INSERT INTO doctor_specialties (specialty_name, status)
VALUES ('Emergency Physician', 'Active');

INSERT INTO doctor_specialties (specialty_name, status)
VALUES ('Surgeon', 'Active');

INSERT INTO doctor_specialties (specialty_name, status)
VALUES ('Internal Medicine Specialist', 'Active');

---------------------------------------------------------------------

INSERT INTO medicine_categories (category_name, status)
VALUES ('Antibiotic', 'Active');

INSERT INTO medicine_categories (category_name, status)
VALUES ('Painkiller', 'Active');

INSERT INTO medicine_categories (category_name, status)
VALUES ('Diabetes', 'Active');

INSERT INTO medicine_categories (category_name, status)
VALUES ('Cardiovascular', 'Active');

INSERT INTO medicine_categories (category_name, status)
VALUES ('Vitamins', 'Active');

---------------------------------------------------------------------

INSERT INTO appointment_statuses (status_name)
VALUES ('Scheduled');

INSERT INTO appointment_statuses (status_name)
VALUES ('Completed');

INSERT INTO appointment_statuses (status_name)
VALUES ('Cancelled');

INSERT INTO appointment_statuses (status_name)
VALUES ('No Show');

---------------------------------------------------------------------

COMMIT;