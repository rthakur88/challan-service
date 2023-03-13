FROM eclipse-temurin:17-jdk-jammy
WORKDIR /cars24
ADD target/service.jar .
CMD ["sh", "-c", "java -javaagent:/agent/dd-java-agent.jar -jar service.jar"]
EXPOSE 8080
