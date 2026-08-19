# health-check-app

Spring Boot app that:
- Exposes GET /health (returns 200 OK)
- Exposes POST /upload to upload a file and save its metadata (filename + upload time) in Oracle DB

## Run
docker compose up -d

## Test
curl http://localhost:8080/health

Upload via Postman:
POST http://localhost:8080/upload
Body: form-data, key "file" (type File)

## Notes
- Oracle DB has no exposed ports, only reachable inside the Docker network.
- API container waits until the DB is healthy before starting.
