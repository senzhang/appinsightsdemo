# Use a Java base image
#FROM mcr.microsoft.com/windows/servercore:ltsc2022
FROM openjdk:21-slim

# Set the working directory to /app
#WORKDIR /app

# Copy the Spring Boot application JAR file into the Docker image
#COPY appinsightsdemo.jar app.jar

# Expose the port that the application will run on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]