# health-check-app

Spring Boot app with:
- GET /health -> returns 200 OK
- POST /upload -> uploads a file, saved to /app/uploaded_files

## Build the image
docker build -t health-check-app:1.0.0 .

## Run the container (with volume bind mount for uploads)
docker run -d -p 8080:8080 --name health-check-app -v ./shared_upload_files:/app/uploaded_files health-check-app:1.0.0

## Test
curl http://localhost:8080/health

Upload via Postman: POST http://localhost:8080/upload
Body -> form-data -> key "file" (type File)
