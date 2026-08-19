# Containerize

A minimal Spring Boot web app demonstrating file upload handling and containerized deployment with Docker.

## Features

- `POST /upload` — accepts a multipart file and saves it to the `uploaded_files` directory
- `GET /health` — health check endpoint, returns `{"status": "UP"}`

## Requirements

- Java 17
- Maven (or use the included `mvnw` / `mvnw.cmd` wrapper)
- Docker (optional, for containerized run)

## Running locally

```bash
./mvnw spring-boot:run
```

The app starts on `http://localhost:8080`.

## Running with Docker

```bash
docker compose up --build
```

This builds the image, starts the container, and maps port `8080`. Uploaded files are persisted to `./shared_upload_files` on the host via a bind mount.

## API examples

```bash
curl http://localhost:8080/health

curl -F "file=@/path/to/file.txt" http://localhost:8080/upload
```

## Build

```bash
./mvnw clean package
```

Produces `target/Containerize-0.0.1-SNAPSHOT.jar`.
