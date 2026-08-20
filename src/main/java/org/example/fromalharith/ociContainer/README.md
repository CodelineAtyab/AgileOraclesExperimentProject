# OCI API + Oracle Free DB (upload metadata)

## What it does
- `POST /upload` saves the file and inserts metadata into Oracle `UPLOAD_META`
- `docker compose up -d` starts Oracle (healthy first) then the API
- Oracle has **no published ports** (API uses internal Docker network hostname `oracle`)

## Setup
1. Unzip `healthcheck.zip` here (creates `healthcheck/`).
2. `mkdir -p shared_upload_files`
3. Start:
   ```bash
   docker compose up --build -d
   ```
   First Oracle start can take 1–3 minutes.

## Test
```bash
curl http://localhost:8080/health
curl -F "file=@./README.md" http://localhost:8080/upload
ls shared_upload_files
```

Optional DB check while testing: temporarily uncomment `ports: "1521:1521"` under `oracle`, then connect with DB Visualizer:
- host `localhost`, port `1521`, service `FREEPDB1`
- user `appuser` / password `AppUserPass123`
```sql
SELECT * FROM upload_meta;
```
Remove the ports again before final submission.

## Volume mapping
`./shared_upload_files` (host) ↔ `/app/uploaded_files` (API container)
