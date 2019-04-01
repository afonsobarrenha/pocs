# docker-stack

## Jenkins

Minimum hardware requirements:

- 256 MB of RAM
- 1 GB of drive space (although 10 GB is a recommended minimum if running Jenkins as a Docker container)

Recommended hardware configuration for a small team:

- 1 GB+ of RAM
- 50 GB+ of drive space

## Comandos

### docker-compose

```
docker-compose -f docker-stack.yml build
docker-compose -f docker-stack.yml up
docker-compose -f docker-stack.yml down

docker exec -it jenkins-blueocean bash
docker logs jenkins-blueocean
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