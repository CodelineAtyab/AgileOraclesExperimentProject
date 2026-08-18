FROM amazoncorretto:17-alpine

WORKDIR /app

COPY ..

RUN ./mvnw clean install

ENTRYPOINT ["java", "-jar", "app.jar"]
