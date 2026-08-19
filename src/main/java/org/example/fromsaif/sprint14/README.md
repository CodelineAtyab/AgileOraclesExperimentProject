# File Upload with Docker Bind Mount

Create the shared host folder:

```bash
mkdir -p shared_upload_files
```

Build and run the container:

```bash
docker compose up --build -d
```

Upload a file using Postman:

```text
POST http://localhost:8080/upload
Body -> form-data -> file
```

Check the file on the host and inside the container:

```bash
ls -l shared_upload_files
docker exec healthcheck-compose ls -l /app/uploaded_files
```

Stop the container:

```bash
docker compose down
```
