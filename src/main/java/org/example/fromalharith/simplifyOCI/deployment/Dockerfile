# use java 17
FROM amazoncorretto:17-alpine

WORKDIR /app

# install maven so we can build inside the image
RUN apk add --no-cache maven

# copy project files
COPY pom.xml .
COPY src ./src

# build the jar (skip tests to keep it simple)
RUN mvn -DskipTests package

# open port 8080
EXPOSE 8080

# run the app
CMD ["java", "-jar", "target/healthcheck-0.0.1-SNAPSHOT.jar"]
