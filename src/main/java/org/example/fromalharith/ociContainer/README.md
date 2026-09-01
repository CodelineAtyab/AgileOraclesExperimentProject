# File upload API with Oracle Free

## Run
1. Unzip `healthcheck.zip`
2. Copy `.env.example` to `.env` and set your values
3. `mkdir -p shared_upload_files`
4. `docker compose up --build -d`

## Test
- Health: `GET http://localhost:8080/health`
- Upload: `POST http://localhost:8080/upload` (form-data key `file`)

Uploaded files go to `shared_upload_files`. Metadata is stored in Oracle table `UPLOAD_META`.

DB host inside Docker is `oracle` (no host ports on Oracle).
