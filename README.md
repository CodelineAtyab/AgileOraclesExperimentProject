# health-endpoint-app

Minimal Spring Boot 3.x application with a single `GET /health` endpoint that returns HTTP 200 and `OK`. The project is containerized with a standard Dockerfile so the same built JAR can run locally, in Docker, and later in OCI Container Instances.

## Local run

```bash
mvn clean install
java -jar target/demo-0.0.1-SNAPSHOT.jar
curl http://localhost:8080/health
```

Expected response:

```text
200
```

## Docker run

Docker image:

```text
my-health-app:0.0.1
```

Build and run:

```bash
docker build -t my-health-app:0.0.1 .
docker run -d -p 8080:8080 --name health-app my-health-app:0.0.1
curl http://localhost:8080/health
```

Expected response:

```text
200
```

## How the pieces fit

Code in `src/main/java/com/example/demo/` is compiled by Maven into `target/demo-0.0.1-SNAPSHOT.jar`. The `Dockerfile` copies that JAR into a JRE image, exposes port 8080, and starts the app with `java -jar`. That produces a container image suitable for OCI Container Instances.

## Dockerfile

```dockerfile
FROM eclipse-temurin:17-jre
WORKDIR /app
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
```

## Optional GitHub Actions

The repository can also build and push the Docker image automatically on every push to `main` if you add a workflow and the required Docker Hub secrets.

Required secrets in GitHub:

- `DOCKER_USERNAME=<team docker username>`
- `DOCKER_PASSWORD=<Docker Hub PAT or password>`

If enabled, the workflow builds the JAR, builds the image, and pushes:

- `<team docker username>/my-health-app:latest`
- `<team docker username>/my-health-app:${{ github.sha }}`
