# health-check-app (3-Tier: API + Oracle DB)

Spring Boot API with an Oracle Free DB container, connected through Docker's internal network.

## Setup

1. Clone/unzip the project.
2. Create a .env file from sample.env:

   Copy-Item sample.env .env

3. Update .env with your own values:

   ORACLE_PASSWORD=your_oracle_password
   APP_USER_PASSWORD=your_app_user_password

   Note: .env holds sensitive credentials and is excluded from Git via .gitignore.

## Run

docker compose up -d

Oracle DB starts first and must become healthy before the API container starts.

## Endpoints

- GET /health -> returns 200 OK
- POST /upload -> uploads a file (saved via volume) and stores its metadata (filename + upload time) in Oracle DB

## Test

curl http://localhost:8080/health

Upload via Postman:
POST http://localhost:8080/upload
Body: form-data, key "file" (type File)

## Architecture

Client / Postman
   -> Spring Boot API container
   -> Docker internal network
   -> Oracle Free DB container

## Notes

- Oracle DB has no exposed ports, reachable only inside the Docker network.
- API uses a separate application DB user (APP_USER), not the Oracle admin account.
- Oracle data is stored in a named volume (oracle_data) so it survives container recreation.
