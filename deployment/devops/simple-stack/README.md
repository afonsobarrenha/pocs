# simple-stack

## Comandos

### docker-compose

```
docker-compose build
docker-compose up
docker-compose down
```

### php

```
docker run -d -p 80:80 -v "$PWD":/var/www/html php:7.2-apache
```

### maven

```
mvn clean verify sonar:sonar
mvn clean deploy
```