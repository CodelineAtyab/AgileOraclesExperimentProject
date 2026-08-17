# ---- Build stage ----
FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /app

# Copy pom first to leverage Docker layer caching for dependencies
COPY ../../../../../../../../Downloads/securepassapp/pom.xml .
RUN mvn -B dependency:go-offline

# Copy source and build
COPY ../../../../../../../../Downloads/securepassapp/src ./src
RUN mvn -B clean package -DskipTests

# ---- Runtime stage ----
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

COPY --from=build /app/target/securepassapp.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
