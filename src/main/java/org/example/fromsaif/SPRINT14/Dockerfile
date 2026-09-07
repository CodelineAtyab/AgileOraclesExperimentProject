FROM amazoncorretto:17-alpine

WORKDIR /app

COPY . /app

RUN ./mvnw package -DskipTests

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "./target/healthcheck-0.0.1-SNAPSHOT.jar"]
