FROM amazoncorretto:17-alpine
WORKDIR /app
COPY . /app
RUN ./mvnw clean install -DskipTests

ENTRYPOINT ["java","-jar","target/Healthcheck-0.0.1-SNAPSHOT.jar"]