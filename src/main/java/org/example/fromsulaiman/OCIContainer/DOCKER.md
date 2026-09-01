# Running with Docker

Build the API image, then start the API and its database together.

For the *why* behind these files, see
[Running with Docker](README.md#running-with-docker) in the README.

## What comes up

| Container | Image | Port |
|---|---|---|
| `leave-portal-db` | `gvenzl/oracle-free:23-slim` | none — internal only |
| `leave-portal-api` | built from `Dockerfile` | `8080`, or `SERVER_PORT` |

The database needs no published port: Docker gives both containers a private
network, and the API reaches it there by the name `oracle-db`.

## Before you start

- Docker Desktop running (`docker --version` should print a version)
- A `.env` file in this directory — see [Configuration](README.md#configuration).
  Compose reads it for the Google, OCI and Gemini values. Database settings
  come from `docker-compose.yml`, so don't add those.
- `~/.oci` with your OCI config and signing key, mounted read-only for uploads.
  Without it the app still starts; only uploads fail.

## 1. Build the image

```bash
docker build -t leave-portal-app .
```

Two stages: Maven compiles the jar, then a small Java runtime image copies in
just that jar. The first build takes several minutes (Maven downloads
dependencies); later builds reuse the cache unless `pom.xml` changed.

You can skip this — `--build` in the next step does it for you.

## 2. Start everything

```bash
docker compose up -d --build
```

`-d` runs it in the background; `--build` rebuilds the image first.

Watch for this in the output — it's the ordering rule working:

```
Container leave-portal-db  Healthy
Container leave-portal-api Starting
```

The API is held back until the database reports healthy. **First run takes
2–4 minutes**, almost all of it Oracle building the database. Later runs take
seconds.

## 3. Check it

```bash
docker compose ps
```

```
NAME               SERVICE     STATUS
leave-portal-api   api         Up 3 minutes
leave-portal-db    oracle-db   Up 7 minutes (healthy)
```

The database's `PORTS` column is empty — that's the "no exposed ports"
requirement, visible.

```bash
curl http://localhost:8080/actuator/health     # {"status":"UP"}
docker compose logs -f api                     # follow the log
```

Then open `http://localhost:8080/` in a browser, sign in with Google, and
upload a file from `sample-leave-requests/`.

> Using `SERVER_PORT` in `.env`? Use that port instead of `8080` throughout.

## 4. Confirm the row landed

The database has no published port, so connect from inside its container:

```bash
docker compose exec oracle-db sqlplus -s leave_app/leave_app_pwd@localhost:1521/FREEPDB1
```

```sql
select id, user_email, attached_filename, leave_category, created_at
from leave_uploads order by created_at desc;
exit;
```

`leave_category` will be empty — correct. The
[categorization job](README.md#pending-categorization-job-gemini) fills it in
later.

**To use DBVisualizer instead**, uncomment the `ports` block under `oracle-db`
and run `docker compose up -d oracle-db`. Connect to `localhost:1521`, service
`FREEPDB1`, as `leave_app` / `leave_app_pwd`. **Comment it out again when
done** — the database is for internal use.

## Everyday commands

```bash
docker compose up -d --build      # build and start (also: after a code change)
docker compose ps                 # status and health
docker compose logs -f api        # follow the application log
docker compose restart api        # restart just the API
docker compose down               # stop and remove, KEEP the data
docker compose down -v            # stop and remove, DELETE the data
```

## Troubleshooting

**`Cannot connect to the Docker daemon`** — Docker Desktop isn't running.

**`port is already allocated`** — something else is on that port, often a copy
started with `./mvnw spring-boot:run`. Stop it, or change `SERVER_PORT`.

**API keeps restarting** — `docker compose logs api`. Usually a missing or
malformed `.env` (Spring Security fails at startup without an OAuth client id
and secret).

**`ORA-00942: table or view does not exist`** — the init script runs *only*
when the database is first created, so edits after that first start aren't
applied. Rebuild from scratch:

```bash
docker compose down -v && docker compose up -d --build
```

Check it ran:

```bash
docker compose logs oracle-db | grep -A 14 "user-defined scripts" \
  | grep -i "running\|altered\|created\|ORA-"
```

A good run shows two `Session altered.` (switching into `FREEPDB1`, then into
the `leave_app` schema), then `Table created.` and `Index created.` Any `ORA-`
line here is the real cause.

To check the table and the entity still agree — fails at startup on any
mismatch, changes nothing:

```bash
docker compose run --rm --no-deps -e DB_DDL_AUTO=validate api
```

**Uploads fail but the app runs** — check the first log line. If it says
`WARNING - no OCI config mounted`, `~/.oci` wasn't found on your machine.

**Database slow on first start** — normal, Oracle is creating datafiles. Watch
`docker compose logs -f oracle-db` for `DATABASE IS READY TO USE!`
