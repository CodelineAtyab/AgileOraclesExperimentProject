# Dockerfile - builds the leave-portal-app API image.

# --- Stage 1: build ---
FROM maven:3.9-eclipse-temurin-17 AS build

WORKDIR /build

COPY pom.xml .
RUN mvn -B dependency:go-offline

COPY src ./src

RUN mvn -B clean package -DskipTests

# --- Stage 2: runtime ---
FROM eclipse-temurin:17-jre

RUN useradd --create-home --shell /bin/bash app
WORKDIR /app

COPY --from=build /build/target/*.jar app.jar


COPY --chmod=755 docker/api-entrypoint.sh /app/entrypoint.sh

RUN chown app:app app.jar

USER app

EXPOSE 8080

ENTRYPOINT ["/app/entrypoint.sh"]
