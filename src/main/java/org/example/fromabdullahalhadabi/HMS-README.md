# Oracle APEX Hospital Management System

## Project Overview
A comprehensive Hospital Management System built with Oracle APEX and Oracle Database. The system manages patients, doctors, appointments, admissions, prescriptions, medicines, and room allocations with full reporting and dashboard capabilities.

**APEX Application ID:** 153222  
**Workspace:** WKSP_ALNOORHOSPITALOMAN  
**Author:** Abdullah Alhadabi

---

## Project Structure

```
fromabdullahalhadabi/
├── database/
│   ├── 01_schema/              # Table DDL, sequences, constraints
│   ├── 02_sample_data/         # Seed data for testing
│   ├── 03_views_triggers/      # Database views and triggers
│   ├── 04_reports/             # Report queries
│   └── 05_audit/               # Audit and security
├── apex/
│   └── f153222.sql             # Full APEX application export
├── docs/
│   ├── DEPLOYMENT.md           # Deployment guide
│   └── *.pdf                   # Application documentation
├── screenshots/                # Application screenshots
└── *.java                      # Supporting Java files
```

---

## Database Schema

| Table | Description |
|-------|-------------|
| DEPARTMENTS | Hospital departments |
| DOCTOR_SPECIALTIES | Doctor specialty mappings |
| MEDICINE_CATEGORIES | Medicine分类 |
| APPOINTMENT_STATUSES | Appointment status codes |
| PATIENTS | Patient records |
| DOCTORS | Doctor records |
| ROOMS | Room allocations |
| MEDICINES | Medicine inventory |
| APPOINTMENTS | Patient appointments |
| ADMISSIONS | Patient admissions |
| PATIENT_VISITS | Visit records |
| PRESCRIPTIONS | Prescription headers |
| PRESCRIPTION_ITEMS | Prescription line items |

---

## Dashboard Views

- `VW_DASH_APPTS_BY_DEPT` - Appointments by department
- `VW_DASH_PATIENTS_BY_GENDER` - Patient distribution by gender
- `VW_DASH_MEDICINE_STOCK` - Medicine stock levels
- `VW_DASH_ROOM_STATUS` - Room availability status
- `VW_HMS_KPI_CARDS` - Key performance indicators

---

## Setup Instructions

### Prerequisites
- Oracle Database 19c or later
- Oracle APEX 22.x or later
- SQL*Plus or SQL Developer

### Database Setup
```sql
-- 1. Create schema objects
@database/01_schema/Hospital_Management_System_Schema.sql

-- 2. Load sample data
@database/02_sample_data/Hospital_Management_System_Sample_Data.sql

-- 3. Create views and triggers
@database/03_views_triggers/Hospital_Management_System_Views_Triggers.sql
```

### APEX Application Import
1. Navigate to Oracle APEX Workshop
2. Import `apex/f153222.sql`
3. Run the application

---

## Deployment
See [DEPLOYMENT.md](docs/DEPLOYMENT.md) for detailed deployment instructions.

---

## License
Academic project - AlNoor Hospital Management System
