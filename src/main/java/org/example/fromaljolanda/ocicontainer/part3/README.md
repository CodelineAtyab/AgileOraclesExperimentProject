# File Upload Testing (Docker)

Test file upload support in the containerized Spring Boot application.

## Setup & Run

1. Create the upload folder on Windows:
```bash
mkdir shared_upload_files
```

2. Build the Docker image:
```bash
docker build -t healthcheck-app .
```

3. Stop and remove the previous container if needed:
```bash
docker compose down
```

4. Start the application with Docker Compose:
```bash
docker compose up --build -d
```

5. Check the running container:
```bash
docker ps
```

## Test File Upload

1. Open **Postman** and create a new request:
   - Method: `POST`
   - URL: `http://localhost:8000/upload`
   - Body → Select **form-data**
   - Add key: `file` and set type to **File**
   - Select a file and click **Send**

2. Check the uploaded file on Windows:
```
shared_upload_files/
```

3. Check the uploaded file inside the Docker container:
```bash
docker exec -it healthcheck-container sh
cd /app/uploaded_files
ls
```

4. One-line verification:
```bash
docker exec healthcheck-container ls -la /app/uploaded_files
```

## How It Works

The Docker bind mount defined in `docker-compose.yml`:

```yaml
volumes:
  - ./shared_upload_files:/app/uploaded_files
```

This maps the Windows folder `./shared_upload_files` to `/app/uploaded_files` inside the container. Any file uploaded through the application is stored in `/app/uploaded_files` inside the container and is automatically available in `shared_upload_files` on Windows.
