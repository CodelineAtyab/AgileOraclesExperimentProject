-- =============================================================================
-- Allow deleting a patient who still has related records.
-- Deletes prescriptions, visits, appointments, and admissions first.
-- Also frees rooms that were occupied by that patient's open admissions.
-- =============================================================================

CREATE OR REPLACE TRIGGER trg_patients_bd
BEFORE DELETE ON patients
FOR EACH ROW
BEGIN
    -- Free rooms for open admissions belonging to this patient
    UPDATE rooms
       SET status = 'Available'
     WHERE room_id IN (
           SELECT room_id
             FROM admissions
            WHERE patient_id = :OLD.patient_id
              AND status = 'Admitted'
           );

    -- Child rows first (prescription_items cascade from prescriptions)
    DELETE FROM prescriptions
     WHERE patient_id = :OLD.patient_id;

    DELETE FROM patient_visits
     WHERE patient_id = :OLD.patient_id;

    DELETE FROM appointments
     WHERE patient_id = :OLD.patient_id;

    DELETE FROM admissions
     WHERE patient_id = :OLD.patient_id;
END;
/
