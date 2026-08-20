# Amazon Corretto 17 (Amazon's OpenJDK) on Amazon Linux
FROM amazoncorretto:17

WORKDIR /app

# Install build dependencies for Maven wrapper
RUN yum install -y tar gzip

# Copy the whole project (target/, .idea/, .git/ excluded via .dockerignore)
COPY . .

# Build the runnable (fat) jar; skip tests for the image build
RUN ./mvnw -B clean install -DskipTests

# Directory for uploaded files (bind-mounted from host via docker-compose)
RUN mkdir -p /app/uploaded_files

# Run the built jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/target/CheckHealthyAPI-0.0.1-SNAPSHOT.jar"]
