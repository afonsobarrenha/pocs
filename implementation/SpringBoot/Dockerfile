FROM openjdk:8-jdk

LABEL maintainer="afonsobarrenha@gmail.com"

RUN apt-get update && apt-get install -y dos2unix

ARG JAR_FILE
ADD ${JAR_FILE} /springboot.jar

ARG WAIT_FOR_IT_FILE
ADD ${WAIT_FOR_IT_FILE} /wait-for-it.sh

RUN bash -c 'chmod +x /wait-for-it.sh' && dos2unix /wait-for-it.sh

EXPOSE 9000

ENTRYPOINT /bin/bash /wait-for-it.sh my-mysql:3306 -s -t 30 -- java -jar -Dspring.profiles.active=pro /springboot.jar
# -Dspring.datasource.initialize=true 