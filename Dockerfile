FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/*.war
COPY ${JAR_FILE} spring-boot-first-web-application-git-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-boot-first-web-application-git-0.0.1-SNAPSHOT.jar"]
