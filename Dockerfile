FROM openjdk:8-jdk-alpine
COPY target/colorful-app-1.0.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
