# Use Eclipse Temurin base image with Java 17
FROM eclipse-temurin:17-jdk

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file to the container
COPY target/thymeleafdemo-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8085
EXPOSE 8085

# Start the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
