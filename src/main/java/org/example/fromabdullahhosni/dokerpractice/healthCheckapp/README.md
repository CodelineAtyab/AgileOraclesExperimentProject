# CheckHealthyAPI

This is my Spring Boot REST API running inside Docker. I built it to check application health and accept file uploads through a clean, simple endpoint. Files uploaded to the API are saved inside the container and immediately visible on my Windows machine through a Docker bind mount.

---

## Project Structure

```
CheckHealthyAPI/
├── src/
│   └── main/
│       ├── java/ApiHealthCheck/CheckHealthyAPI/
│       │   ├── CheckHealthyApiApplication.java       # App entry point
│       │   ├── controller/
│       │   │   ├── HealthController.java             # GET /health
│       │   │   └── FileUploadController.java         # POST /upload
│       │   └── service/
│       │       └── FileUploadService.java            # Saves files to disk
│       └── resources/
│           └── application.properties                # App config (port, upload dir)
├── shared_upload_files/                              # Windows folder — files appear here after upload
├── Dockerfile                                        # Builds the app image
├── docker-compose.yml                                # Runs the container with bind mount
└── pom.xml                                           # Maven dependencies
```

---

## How to Run

### Option 1 — Using Docker Compose (recommended)

This is the standard way to run the app. It builds the image and wires up the bind mount automatically.

```bash
docker-compose up --build
```

To stop:

```bash
docker-compose down
```

> The `shared_upload_files/` folder will be created automatically on the first upload.

---

### Option 2 — Using the Dockerfile directly

Use this if I want to build and run the image manually without Docker Compose.

**Step 1 — Build the image:**

```bash
docker build -t checkhealthyapi .
```

**Step 2 — Run the container:**

```bash
docker run -p 8080:8080 -v "%cd%\shared_upload_files:/app/uploaded_files" checkhealthyapi
```

> The `-v` flag manually applies the same bind mount that Docker Compose handles automatically.

---

## How to Validate

### Health Check

Confirm the app is running:

- **Method:** `GET`
- **URL:** `http://localhost:8080/health`
- **Expected response:**

```json
{
  "status": "Hello, space explorer! ...",
  "quote": "Across every wormhole and galaxy, love and gravity still guide us home. 🚀"
}
```

---

### File Upload

Upload a file and verify it lands on the Windows host:

- **Method:** `POST`
- **URL:** `http://localhost:8080/upload`
- **Body:** `form-data`
  - Key: `file` — set type to **File**
  - Value: select any file from my machine

- **Expected response:**

```json
{
  "message": "File uploaded successfully",
  "fileName": "my-file.txt"
}
```

- **Verify on Windows:** open `shared_upload_files/` next to `docker-compose.yml` — the uploaded file should be there immediately.

---

## TODOs

- [ ] Add file size limit and enforce allowed file types (e.g. PDF, PNG only)
- [ ] Return a proper error response when upload fails instead of a raw exception
- [ ] Add a `GET /files` endpoint to list all uploaded files
- [ ] Add a `GET /files/{filename}` endpoint to download a specific file
- [ ] Write unit tests for `FileUploadService` and `FileUploadController`
- [ ] Add logging to track upload activity
- [ ] Store file metadata (name, size, upload time) in a database
