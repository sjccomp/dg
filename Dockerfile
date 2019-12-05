FROM openjdk:8-jdk-alpine
VOLUME /tmp
# Make port 8080 available to the world outside this container
EXPOSE 8081
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} spring-boot-first-web-application-git-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-boot-first-web-application-git-0.0.1-SNAPSHOT.jar"]
