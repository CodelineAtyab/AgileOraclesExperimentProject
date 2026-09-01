FROM amazoncorretto:17-alpine
WORKDIR /app
COPY . /app
RUN ./mvnw clean install
ENTRYPOINT ["java","-jar","./target/healthcheck-0.0.1-SNAPSHOT.jar"]
