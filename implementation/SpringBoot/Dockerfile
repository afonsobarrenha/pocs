FROM openjdk:8-jdk-alpine
MAINTAINER Afonso Barrenha <afonsobarrenha@gmail.com>

ENTRYPOINT ["java","-jar","/springboot.jar"]

ARG JAR_FILE
ADD ${JAR_FILE} springboot.jar