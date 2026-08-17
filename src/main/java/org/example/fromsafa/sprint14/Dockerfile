FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY target/health-app-0.0.1-SNAPSHOT.jar app.jar
docker run -p 8080:8080 health-app
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]