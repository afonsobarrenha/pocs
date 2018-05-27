FROM node:latest
MAINTAINER Afonso Barrenha
COPY volume-exemplo /var/www
WORKDIR /var/www
RUN npm install
ENTRYPOINT npm start
EXPOSE 3000