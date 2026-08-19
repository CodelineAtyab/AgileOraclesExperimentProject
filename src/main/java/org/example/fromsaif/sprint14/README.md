# Three-Tier File Upload Application

Spring Boot API with file storage and Oracle Free DB metadata storage.

## Run

```bash
mkdir -p shared_upload_files
docker compose up -d --build
docker compose ps
```

## Test

Upload a file using Postman:

```text
POST http://localhost:8080/upload
Body -> form-data -> key: file -> type: File
```

Check the uploaded file:

```bash
ls -l shared_upload_files
```

Check its metadata in Oracle:

```bash
docker exec -it healthcheck-oracle sqlplus healthcheck/Healthcheck123@//localhost:1521/FREEPDB1
```

```sql
SELECT * FROM FILE_METADATA;
exit
```

## Stop

```bash
docker compose down
```

Oracle is available only to the API through Docker's internal network.
