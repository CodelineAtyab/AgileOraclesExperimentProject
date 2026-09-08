FROM amazoncorretto:17-alpine

WORKDIR /health

COPY . .

RUN mkdir -p /health/uploads

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "./target/health-0.0.1-SNAPSHOT.jar"]