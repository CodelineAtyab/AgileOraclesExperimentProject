## Endpoint

POST /upload — uploads a file, saves it to `uploaded_files`

## Run with Docker Compose

docker compose up --build


Uses this `docker-compose.yaml`:

```yaml
services:
  api:
    build: .
    image: health-check-app:1.0.0
    container_name: health-check-app
    ports:
      - "8080:8080"
    volumes:
      - C:/Users/mahmo/Desktop/shared_upload_files:/app/uploaded_files
    restart: always
```

## Run with Docker (manual commands)

docker build -t health-check-app:1.0.0 .
docker run -d -p 8080:8080 --name health-check-app -v C:/Users/mahmo/Desktop/shared_upload_files:/app/uploaded_files health-check-app:1.0.0


## Test

curl -i http://localhost:8080/health


## Upload a File (Postman)

- POST `http://localhost:8080/upload`
- Body → form-data → Key: `file` (type: File) → choose a file
- Send

## Stop

docker compose down

## Or, if run manually:

docker stop health-check-app
docker rm health-check-app
