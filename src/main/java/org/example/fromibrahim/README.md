# Implementation Steps

## 1. Created the Spring Boot File Upload API

A REST endpoint was created to receive files using `MultipartFile`:

```text
POST /upload
```

The endpoint accepts a file using `multipart/form-data`.

The uploaded file is saved inside the Docker container at:

```text
/app/uploaded_files
```

The application also has a health endpoint:

```text
GET /health
```

---

## 2. Created the Dockerfile

A `Dockerfile` was created to package the Spring Boot application into a Docker image.

The Spring Boot application runs on container port:

```text
8080
```

The Docker image uses this working directory:

```text
/app
```

The application creates the `uploaded_files` directory when a file is uploaded.

---

## 3. Created the Windows Shared Upload Folder

Open PowerShell and go to the project directory:

```powershell
cd "C:\Users\Codeline Comp\Downloads\healthcheck\healthcheck"
```

Create the Windows folder used for the bind mount:

```powershell
New-Item -ItemType Directory -Force .\shared_upload_files
```

The full Windows path is:

```text
C:\Users\Codeline Comp\Downloads\healthcheck\healthcheck\shared_upload_files
```

---

## 4. Built the Docker Image

Build the image from the `Dockerfile`:

```powershell
docker build -t ibrahimrahbi/healthcheck:latest .
```

The image name is:

```text
ibrahimrahbi/healthcheck:latest
```

---

## 5. Configured the Docker Bind Mount

Start the container with the Windows folder mapped to the container upload directory:

```powershell
docker run -d --name healthcheckapp -p 8000:8080 -v "C:\Users\Codeline Comp\Downloads\healthcheck\healthcheck\shared_upload_files:/app/uploaded_files" ibrahimrahbi/healthcheck:latest
```

The mapping means:

```text
Windows:
C:\Users\Codeline Comp\Downloads\healthcheck\healthcheck\shared_upload_files

        Docker Bind Mount

Container:
/app/uploaded_files
```

Therefore, a file saved by Spring Boot in `/app/uploaded_files` also appears in the Windows `shared_upload_files` folder.

The port mapping means:

```text
Windows port 8000 -> Container port 8080
```

The application is available at:

```text
http://localhost:8000
```

---

# Testing

## 6. Checked the Running Container

Check that the container is running:

```powershell
docker ps
```

View the application logs:

```powershell
docker logs healthcheckapp
```

---

## 7. Tested the Health Endpoint

Run:

```powershell
curl.exe http://localhost:8000/health
```

Expected response:

```text
healthy
```

---

## 8. Uploaded a File Using Postman

Create a request in Postman using:

```text
POST http://localhost:8000/upload
```

Select:

```text
Body: form-data
```

Add the file field:

```text
Key:  file
Type: File
```

Select a file from Windows and click **Send**.

The API should return HTTP `200` with a response similar to:

```json
{
  "message": "The file was uploaded successfully.",
  "filename": "example.txt",
  "overwriteRequired": false
}
```

---

## 9. Tested a Duplicate Filename

Upload the same filename again using:

```text
POST http://localhost:8000/upload
```

The API should keep the original file and return HTTP `409`:

```json
{
  "message": "You have already uploaded this file. If you want to overwrite it, confirm Yes by resending with overwrite=true.",
  "filename": "example.txt",
  "overwriteRequired": true
}
```

To confirm that the existing file should be replaced, send the same file to:

```text
POST http://localhost:8000/upload?overwrite=true
```

Keep the same Postman `form-data` field named `file`.

---

## 10. Checked the Uploaded File on Windows

Run:

```powershell
Get-ChildItem .\shared_upload_files
```

The uploaded file should appear in the Windows folder.

---

## 11. Checked the Uploaded File Inside the Container

Run:

```powershell
docker exec healthcheckapp ls -la /app/uploaded_files
```

The same uploaded file should appear inside the container.

This confirms that the Docker bind mount is working.

---

## 12. Stopped and Removed the Container

Stop the container:

```powershell
docker stop healthcheckapp
```

Remove the stopped container:

```powershell
docker rm healthcheckapp
```

Removing the container does not delete files from the Windows `shared_upload_files` folder.
