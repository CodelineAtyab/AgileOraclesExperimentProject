# 3-Tier Application with Docker Compose

This project runs a Spring Boot API and Oracle Free Database using Docker Compose.

## Setup

1. Clone the repository.

2. Create a `.env` file from the provided `sample.env` file.

For Windows PowerShell:

```powershell
Copy-Item sample.env .env
```

3. Update the `.env` file with the required credentials.

Example variables:

```env
ORACLE_PASSWORD=your_oracle_password
APP_USER=your_app_username
APP_USER_PASSWORD=your_app_password
DB_USERNAME=your_db_username
DB_PASSWORD=your_db_password
```

> **Note:** The `.env` file contains sensitive credentials and is excluded from Git using `.gitignore`.

4. Start the application:

```bash
docker compose up -d
```

5. Check the running containers:

```bash
docker compose ps
```

The Oracle Database should be healthy before the API starts.

## Application

The API is available at:

```text
http://localhost:8081
```

### File Upload

**Endpoint:**

```text
POST /files/upload
```

The uploaded file is stored using a bind mount, while its metadata is stored in the Oracle Database.

## Architecture

```text
Client / Postman
       ↓
Spring Boot API Container
       ↓
Docker Internal Network
       ↓
Oracle Free DB Container
```

The Oracle Database port is not exposed to the host and is only accessible by the API through Docker's internal network.