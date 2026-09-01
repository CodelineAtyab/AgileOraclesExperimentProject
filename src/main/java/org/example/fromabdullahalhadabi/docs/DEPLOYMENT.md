# Hospital Management System - Deployment Guide

## Overview
This guide covers deploying the Oracle APEX Hospital Management System.

## Prerequisites

### Software Requirements
- Oracle Database 19c or later
- Oracle APEX 22.x or later
- SQL*Plus or SQL Developer
- Oracle REST Data Services (ORDS) for web access

### Hardware Requirements
- Minimum 4GB RAM for database
- 2 CPU cores recommended
- 20GB disk space

---

## Step 1: Database Setup

### 1.1 Create Tablespace (Optional)
```sql
CREATE TABLESPACE hms_data
DATAFILE 'hms_data01.dbf' SIZE 100M
AUTOEXTEND ON NEXT 10M
MAXSIZE UNLIMITED;
```

### 1.2 Create User
```sql
CREATE USER hms_admin IDENTIFIED BY <secure_password>
DEFAULT TABLESPACE hms_data
QUOTA UNLIMITED ON hms_data;

GRANT CONNECT, RESOURCE TO hms_admin;
GRANT CREATE VIEW, CREATE TRIGGER, CREATE PROCEDURE TO hms_admin;
```

### 1.3 Run Schema Scripts
```sql
-- Connect as hms_admin or SYSDBA
@database/01_schema/Hospital_Management_System_Schema.sql
@database/02_sample_data/Hospital_Management_System_Sample_Data.sql
@database/03_views_triggers/Hospital_Management_System_Views_Triggers.sql
```

---

## Step 2: APEX Application Setup

### 2.1 Import Application
1. Log in to Oracle APEX Workshop
2. Navigate to **App Builder** > **Import**
3. Select `apex/f153222.sql`
4. Follow the import wizard
5. Set the application alias as needed

### 2.2 Configure Application
1. Open the imported application
2. Navigate to **Shared Components** > **Application Processing**
3. Verify all processes are enabled
4. Test each page functionality

### 2.3 Set Up Authentication
1. Navigate to **Shared Components** > **Authentication Schemes**
2. Configure the default authentication scheme
3. Set up user accounts if needed

---

## Step 3: Post-Deployment Verification

### 3.1 Verify Database Objects
```sql
-- Check tables
SELECT table_name FROM user_tables ORDER BY table_name;

-- Check views
SELECT view_name FROM user_views ORDER BY view_name;

-- Check triggers
SELECT trigger_name FROM user_triggers ORDER BY trigger_name;
```

### 3.2 Verify Sample Data
```sql
-- Check record counts
SELECT 'PATIENTS' as tbl, COUNT(*) as cnt FROM patients
UNION ALL
SELECT 'DOCTORS', COUNT(*) FROM doctors
UNION ALL
SELECT 'APPOINTMENTS', COUNT(*) FROM appointments
UNION ALL
SELECT 'MEDICINES', COUNT(*) FROM medicines;
```

### 3.3 Test APEX Application
1. Run the application from App Builder
2. Test login functionality
3. Navigate through all pages
4. Verify dashboard displays correctly
5. Test CRUD operations on all forms

---

## Step 4: Security Checklist

- [ ] No hardcoded passwords in SQL files
- [ ] APEX application uses authentication scheme
- [ ] Database user has minimum required privileges
- [ ] Sensitive data is not exposed in URLs
- [ ] Session timeout is configured appropriately

---

## Troubleshooting

### Common Issues

**Issue: ORA-00942: table or view does not exist**
- Solution: Ensure schema scripts were run in correct order

**Issue: APEX application shows blank pages**
- Solution: Verify database views exist and have correct permissions

**Issue: Triggers not firing**
- Solution: Check trigger status with `SELECT status FROM user_triggers`

---

## Rollback Procedure

If issues occur after deployment:
1. Drop application in APEX App Builder
2. Drop schema objects in reverse order:
   ```sql
   DROP TRIGGER <trigger_name>;
   DROP VIEW <view_name>;
   DROP TABLE <table_name> CASCADE CONSTRAINTS;
   ```
3. Restore from backup if available

---

*Deployment Guide - AlNoor Hospital Management System*
