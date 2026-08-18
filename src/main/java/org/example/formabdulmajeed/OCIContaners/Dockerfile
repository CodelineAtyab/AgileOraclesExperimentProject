FROM amazoncorretto:17-alpine

WORKDIR /health

COPY ..

RUN ./mvnw clean install

ENTRYPOINT ["java", "-jar", "./target/health-0.0.1-SNAPSHOT.jar"]