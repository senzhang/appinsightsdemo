# Use a Java base image
FROM openjdk:17-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the Spring Boot application JAR file into the Docker image
COPY target/your-app.jar /app/your-app.jar

# Expose the port that the application will run on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app/your-app.jar"]