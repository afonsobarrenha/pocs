FROM openjdk:8-jdk
#FROM openjdk:8-jdk-alpine

MAINTAINER Afonso Barrenha <afonsobarrenha@gmail.com>

RUN apt-get update && apt-get install -y dos2unix

ARG JAR_FILE
ADD ${JAR_FILE} springboot.jar

ADD wait-for-it.sh wait-for-it.sh
RUN bash -c 'chmod +x /wait-for-it.sh'
#RUN ["/bin/bash", "chmod", "+x", "/wait-for-it.sh"]
RUN dos2unix /wait-for-it.sh && apt-get --purge remove -y dos2unix && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash", "/wait-for-it.sh", "my-mysql:3306", "-s", "-t", "60", "--", "java","-jar","/springboot.jar"]