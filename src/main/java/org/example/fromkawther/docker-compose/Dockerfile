FROM amazoncorretto:17-alpine

WORKDIR /app

# Copy the whole project (pom.xml, mvnw, src/...) into the container
COPY . /app

# Build the jar INSIDE the container using the Maven Wrapper
RUN ./mvnw clean install

# Run the jar that was just built
ENTRYPOINT ["java", "-jar", "./target/health-check-app-0.0.1-SNAPSHOT.jar"]
