FROM amazoncorretto:17-alpine
WORKDIR /app
COPY . /app
RUN chmod +x mvnw && ./mvnw clean install
RUN mkdir -p /app/uploaded_files
ENTRYPOINT ["java", "-jar", "./target/securepassapp-0.0...jar"]
