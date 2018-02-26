FROM openjdk:8-jdk-alpine
MAINTAINER Afonso Barrenha <afonsobarrenha@gmail.com>

ARG JAR_FILE
ADD ${JAR_FILE} springboot.jar

ENTRYPOINT ["java","-jar","/springboot.jar"]