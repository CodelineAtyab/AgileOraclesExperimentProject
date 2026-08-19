# OCI Mounting — File Upload with Bind Mount

## Setup
1. Unzip `healthcheck.zip` in this folder (creates `healthcheck/`).
2. Create the host folder:
   - Mac/Linux: `mkdir -p shared_upload_files`
   - Windows: create `shared_upload_files` next to this README (or use `C:\shared_upload_files` and update the volume path in `docker-compose.yaml`).
3. Start:
   ```bash
   docker compose up --build -d
   ```

## Test
1. Postman: `POST http://localhost:8080/upload`
   - Body → form-data
   - key: `file` (type File)
2. Check host: `shared_upload_files/`
3. Check container:
   ```bash
   docker exec upload-app ls -la /app/uploaded_files
   ```

## Volume
`./shared_upload_files` (host) ↔ `/app/uploaded_files` (container)
