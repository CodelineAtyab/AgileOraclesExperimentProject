-- =============================================================================
-- Al Noor Hospital — Triggers for room status business rules
-- =============================================================================

CREATE OR REPLACE TRIGGER trg_admission_room_status
AFTER INSERT OR UPDATE OF status, room_id, discharge_date ON admissions
FOR EACH ROW
BEGIN
    -- On admit: mark room Occupied
    IF INSERTING AND :NEW.status = 'Admitted' THEN
        UPDATE rooms SET status = 'Occupied' WHERE room_id = :NEW.room_id;
    END IF;

    -- On status change to Admitted (e.g. re-admit edge case)
    IF UPDATING AND :NEW.status = 'Admitted' AND NVL(:OLD.status, 'X') <> 'Admitted' THEN
        UPDATE rooms SET status = 'Occupied' WHERE room_id = :NEW.room_id;
    END IF;

    -- On discharge: free the room
    IF UPDATING AND :NEW.status = 'Discharged' AND :OLD.status = 'Admitted' THEN
        UPDATE rooms SET status = 'Available' WHERE room_id = :OLD.room_id;
    END IF;

    -- If room changed while still admitted
    IF UPDATING AND :NEW.status = 'Admitted'
       AND :NEW.room_id <> :OLD.room_id THEN
        UPDATE rooms SET status = 'Available' WHERE room_id = :OLD.room_id;
        UPDATE rooms SET status = 'Occupied' WHERE room_id = :NEW.room_id;
    END IF;
END;
/

-- Allow deleting a patient who still has related records
CREATE OR REPLACE TRIGGER trg_patients_bd
BEFORE DELETE ON patients
FOR EACH ROW
BEGIN
    UPDATE rooms
       SET status = 'Available'
     WHERE room_id IN (
           SELECT room_id
             FROM admissions
            WHERE patient_id = :OLD.patient_id
              AND status = 'Admitted'
           );

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
