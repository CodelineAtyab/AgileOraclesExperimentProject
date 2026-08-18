# Stage 1: build JAR inside Docker
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn -q -DskipTests package

# Stage 2: run the app
FROM amazoncorretto:17-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
RUN mkdir -p /app/uploaded_files
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
