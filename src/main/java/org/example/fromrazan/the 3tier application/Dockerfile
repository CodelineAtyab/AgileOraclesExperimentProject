FROM amazoncorretto:17-alpine
WORKDIR /app
COPY . /app
RUN chmod +x mvnw && ./mvnw clean install -DskipTests
ENTRYPOINT ["java", "-jar", "./target/DB-container-0.0.1-SNAPSHOT.jar"]