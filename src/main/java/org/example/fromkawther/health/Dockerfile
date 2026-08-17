FROM amazoncorretto:17-alpine
WORKDIR /app
COPY . /app
RUN ./mvnw clean install
ENTRYPOINT ["java", "-jar", "./target/health-check-ap9p-0.0.1-SNAPSHOT.jar"]