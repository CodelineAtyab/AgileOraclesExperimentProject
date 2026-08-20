## Spring Boot API + Oracle Free DB Docker Compose Task

### Task Overview

The Spring Boot API stores uploaded files in the upload directory. File metadata is stored in Oracle Free DB. Both the API and Oracle DB run as Docker containers using Docker Compose. The API communicates with Oracle through Docker's internal network.

### Database

- Docker image: `gvenzl/oracle-free:23-slim`
- Oracle service: `FREEPDB1`
- The database port is not exposed in the final configuration.
- The API connects to Oracle using the Docker service name `oracle-db`, not `localhost`.

### File Metadata

The `FILE_METADATA` table stores:

- File name
- File type
- File size
- File path
- Upload date/time

### Environment Variables

Database credentials are stored in a `.env` file. The `.env` file is excluded from Git using `.gitignore`. Do not commit real passwords or secrets.

### Build and Run

```bash
docker compose build
docker compose up -d
```

Or:

```bash
docker compose up -d --build
```

### Check Containers

```bash
docker compose ps
```

Oracle should become `healthy` before the API starts.

### Check Logs

```bash
docker compose logs oracle-db
docker compose logs api
docker compose logs -f
```

### Test File Upload

Test the existing `/upload` endpoint by sending a `POST` request with form-data key `file`. A successful upload should save the actual file in the upload directory and insert its metadata into Oracle DB.

### Check Database from the Oracle Container

```bash
docker exec -it oracle-free-db sqlplus <username>/<password>@FREEPDB1
```

Then run:

```sql
SELECT * FROM FILE_METADATA;
```

Use placeholder credentials in documentation and examples instead of real passwords.

### Temporary DB Visualizer Testing

During development only, port `1521` can temporarily be exposed for DB visualizer testing:

```yaml
ports:
  - "1521:1521"
```

Remove this after testing because Oracle DB should only be accessible internally in the final configuration.

### Stop Containers

```bash
docker compose down
```
