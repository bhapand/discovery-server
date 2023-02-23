FROM openjdk:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} discovery-service.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=docker","/discovery-service.jar"]
