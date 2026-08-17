# ---- Stage 1: Build the jar using Maven ----
FROM eclipse-temurin:17-jdk-jammy AS build
WORKDIR /app

# Copy wrapper + pom first so dependency layer can be cached
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
RUN chmod +x mvnw && ./mvnw dependency:go-offline -B

# Now copy the source and build
COPY src src
RUN ./mvnw clean package -DskipTests -B


# ---- Stage 2: Run the jar on a lean JRE image ----
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app

# Copy only the built jar from the build stage
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]