FROM amazoncorretto:17-alpine
WORKDIR /app
COPY . /app
RUN chmod +x mvnw && ./mvnw clean install
ENTRYPOINT ["java","-jar","target/Healthcheck-0.0.1-SNAPSHOT.jar"]