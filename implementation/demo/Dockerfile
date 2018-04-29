FROM openjdk:8-jdk-alpine

LABEL maintainer="afonsobarrenha@gmail.com"

ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/demo.jar"]

ARG JAR_FILE
ADD ${JAR_FILE} /usr/share/demo.jar