# ---- Stage 1: Build the jar ----
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app

# Copy pom first so dependency layer is cached
COPY pom.xml .
RUN mvn -B dependency:go-offline

# Now copy source and build
COPY src ./src
RUN mvn -B clean install -DskipTests

# ---- Stage 2: Run the jar ----
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app

# Copy only the built jar from the build stage (keeps final image small)
COPY --from=build /app/target/securepassapp-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]