FROM mcr.microsoft.com/openjdk/jdk:21-mariner
COPY target/appinsightsdemo-0.0.1-SNAPSHOT.jar app.jar
# COPY target/agent/applicationinsights-agent.jar applicationinsights-agent.jar
ENTRYPOINT ["java", "-jar", "app.jar"]