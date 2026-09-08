# Mounting Directories - Docker Bind Mount (Task 86eynrhre)

## What this task does
Spring Boot app (healthcheck) that accepts file uploads and stores them in a container folder, which is bind-mounted to a Windows folder so files appear on both sides.

## Flow
1. `POST /api/upload` saves file to `/app/uploaded_files` inside the container
2. Windows shared folder: `shared_upload_files/`
3. docker-compose bind mount: `./shared_upload_files:/app/uploaded_files`
4. Files appear in both Windows and the container immediately.

## How it was tested (acceptance criteria)
- `mvn clean install` -> BUILD SUCCESS
- `docker compose up -d --build` -> container Up
- `GET http://localhost:8000/health` -> 200
- `POST /api/upload` with multipart `file` -> 200 JSON
- File appears in Windows `shared_upload_files/`
- File appears inside container: `docker exec <id> ls /app/uploaded_files`
- Empty file -> 400 `{"error":"File is empty"}`

## Commands used (and why)
| Command | Why |
|---|---|
| `mvn clean install` | Builds the executable Spring Boot jar |
| `docker compose up -d --build` | Builds image and runs container detached; `--build` ensures a fresh image |
| `curl -F "file=@test.txt" http://localhost:8000/api/upload` | Tests the upload endpoint with multipart form data |
| `dir shared_upload_files` | Verifies the file reached Windows host storage |
| `docker exec <id> ls /app/uploaded_files` | Verifies the file is visible inside the container |
| `docker compose down` | Stops and removes the container while files persist on the host through the bind mount |

## Why bind mounts matter
Containers are ephemeral. Data written only inside a container can be lost when the container is removed or recreated. Bind mounts map a host folder into the container so uploaded files persist on the host. This maps directly to OCI Container Instances, where ephemeral storage can be wiped on restart and volumes are essential for persistent data.

## Files
- `Dockerfile`
- `docker-compose.yml`
- `src/`
- `README.md`
- `Mounting Directories.md`
- `healthcheck.zip` full project archive
