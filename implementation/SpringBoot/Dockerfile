FROM openjdk:8-jdk-alpine
<<<<<<< HEAD
MAINTAINER Afonso Barrenha <afonsobarrenha@gmail.com>

ENTRYPOINT ["java","-jar","/springboot.jar"]

ARG JAR_FILE
ADD ${JAR_FILE} springboot.jar
=======
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
>>>>>>> 1.0.0
