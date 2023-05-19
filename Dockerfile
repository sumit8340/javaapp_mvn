# Build stage
FROM openjdk:11 as build
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y maven
RUN mvn clean package

# Final stage
FROM openjdk:11
WORKDIR /app
COPY --from=build /app/target/colorful-app-1.0.0.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]


