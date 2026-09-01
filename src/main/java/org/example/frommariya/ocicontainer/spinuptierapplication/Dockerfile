FROM amazoncorretto:17-alpine

WORKDIR /app

COPY . /app

RUN chmod +x mvnw

RUN ./mvnw clean install -DskipTests

ENTRYPOINT ["java", "-jar", "./target/dockerhealthcheck-0.0.1-SNAPSHOT.jar"]


