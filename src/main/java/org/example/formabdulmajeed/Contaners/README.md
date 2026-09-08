# Implementation Steps

## 1. Created the Spring Boot File Upload API

A REST endpoint was created to receive files using `MultipartFile`.

```text
POST /api/files/upload
```

The endpoint accepts a file using `multipart/form-data`.

The uploaded file is saved to:

```text
/health/uploads
```

inside the Docker container.

---

## 2. Created the Dockerfile

A Dockerfile was created to package the Spring Boot application into a Docker image.

The application runs on port:

```text
8080
```

The container contains the upload directory:

```text
/health/uploads
```

---

## 3. Created the Windows Shared Upload Folder

The Windows folder used for the bind mount is:

```text
C:\Users\Codeline\Downloads\health\health\uploads
```

This folder is mapped to the upload directory inside the container.

---

## 4. Configured the Docker Bind Mount

The container was started with the following volume mapping:

```powershell
docker run -p 8080:8080 -v "C:\Users\Codeline\Downloads\health\health\uploads:/health/uploads" myapp:latest
```

The mapping means:

```text
Windows:
C:\Users\Codeline\Downloads\health\health\uploads

        ↓ Docker Bind Mount ↓

Container:
/health/uploads
```

Therefore, a file saved by Spring Boot to `/app/uploads` is also available in the Windows folder.

---

# Testing

## 5. Started the Docker Container

The Docker image was built and the container was started successfully.

The Spring Boot application was accessible through:

```text
http://localhost:8080
```

---

## 6. Uploaded a File Using Postman

Postman was used from Windows to test the REST API.

Request:

```text
POST http://localhost:8080/api/files/upload
```

Body:

```text
form-data
```

The file field was:

```text
Key: file
Type: File
```

A test file was selected and uploaded successfully.

The API returned a successful upload response.

