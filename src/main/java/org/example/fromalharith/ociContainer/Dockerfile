FROM amazoncorretto:17-alpine AS build
WORKDIR /app
RUN apk add --no-cache maven
COPY pom.xml .
COPY src ./src
RUN mvn -q -DskipTests package

FROM amazoncorretto:17-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
