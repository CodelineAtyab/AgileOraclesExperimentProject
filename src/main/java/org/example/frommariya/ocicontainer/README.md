# Docker Bind Mount – File Upload

This task extends the existing containerized Spring Boot application by adding file upload functionality and using a Docker **bind mount** to store uploaded files on the Windows host machine.

## Commands Used

Build the Spring Boot JAR:

```bash
.\mvnw.cmd clean install
```

Build and run the application using Docker Compose:

```bash
docker compose up --build -d
```

Check running containers:

```bash
docker ps
```

Check the uploaded files inside the container:

```bash
docker exec healthcheck-container ls -l /app/uploaded_files
```

Stop and remove the container:

```bash
docker compose down
```

## Bind Mount

The following volume mapping is added in `docker-compose.yml`:

```yaml
volumes:
  - ./shared_upload_files:/app/uploaded_files
```

This maps:

```text
Windows Host
shared_upload_files
        ↕
Docker Bind Mount
        ↕
Container
/app/uploaded_files
```

## Workflow

```text
Postman
   ↓
POST /upload
   ↓
Spring Boot Application
   ↓
/app/uploaded_files
   ↓
Docker Bind Mount
   ↓
shared_upload_files on Windows
```

After uploading a file through Postman, the file can be verified in both the Windows `shared_upload_files` folder and the container's `/app/uploaded_files` directory.
