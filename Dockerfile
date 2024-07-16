# Use a Java base image
FROM mcr.microsoft.com/windows/servercore:ltsc2022

# Set the working directory to /app
WORKDIR /app

# Copy the Spring Boot application JAR file into the Docker image
COPY target/appinsightsdemo-3.2.7.jar /app/appinsightsdemo.jar

# Expose the port that the application will run on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app/appinsightsdemo.jar"]