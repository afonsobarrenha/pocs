# dockerapp
Project source code for James Lee's Docker course.

Check out our latest DevOps PDF book.

https://www.level-up.one/devops-pdf-book/

## Commands

### Hello World
docker images
docker run busybox:1.33.1 echo "hello world"
docker images
docker run busybox:1.33.1 ls /
docker run -it busybox:1.33.1
    ls
    touch a.txt
    ls
    exit
docker run -it busybox:1.33.1
    ls

### Deep Dive
docker run -d busybox:1.33.1 sleep 1000
docker ps
docker ps -a
docker run --rm busybox:1.33.1 sleep 1
docker ps -a
docker run --name hello_world busybox:1.33.1
docker ps -a
docker run -d busybox:1.33.1 sleep 100
docker inspect container_id

### Port Mapping and Logs
docker run -it -p 8888:8080 tomcat:8.0
docker ps -a
docker run -it -d -p 8888:8080 tomcat:8.0
docker logs container_id

### Image Layers
docker history busybox:1.33.1

### Build Docker Images with commit
docker run -it debian:jessie
    ls
    git
    apt-get update && apt-ge install -y git
        clear
        git
        exit
"docker commit container_id repository_name:tag"
docker ps -a
docker commit container_id afonsobarrenha/debian:1.00
docker images
docker run -it afonsobarrenha/debian:1.00
    git

### Build Docker Images with Dockerfile
touch Dockerfile
nano Dockerfile
    FROM debian:jessian
    RUN apt-get update 
    RUN apt-get install -y git
    RUN apt-get install -y vim
docker build -t afonsobarrenha/debian . 
docker images 

### Dockerfile in Depth
#### RUN
nano Dockerfile
    FROM debian:jessian
    RUN apt-get update && apt-get install -y \
        git \
        vim
docker build -t afonsobarrenha/debian .

#### CMD
nano Dockerfile
    FROM debian:jessian
    RUN apt-get update && apt-get install -y \
        git \
        vim
    CMD ["echo", "hello world"]
docker build -t afonsobarrenha/debian .
docker run image_id
docker run afonsobarrenha/debian echo "hello docker"

#### Docker Cache
docker build -t afonsobarrenha/debian . --no-cache=true

#### COPY
touch abc.txt
nano Dockerfile
    FROM debian:jessian
    RUN apt-get update && apt-get install -y \
        git \
        vim
    COPY abc.txt /src/abc.txt
docker build -t afonsobarrenha/debian .
docker run -it afonsobarrenha/debian
    ls /src

#### ADD

### Push Images to Docker Hub
docker images
docker tag image_id afonsobarrenha/debian:1.01
docker images
docker login --username=afonsobarrenha
docker push afonsobarrenha/debian:1.01

### Containerize a Hello World Web Application
git clone afonsobarrenha.git
docker build -t dockerapp:0.1 .
docker images
docker run -d -p 5000:5000 dockerapp
docker exec -it container_id bash 

### Implement a simple Key-value lookup service

### Docker Container Links
docker inspect container_id | grep IP

### Docker Compose
docker ps
docker-compose up

### Deep Dive Docker Compose
docker-compose up -d
docker-compose ps
docker-compose logs -f
docker-compose logs dockerapp -f
docker-compose stop
docker-compose rm
docker-compose build

### Docker Networking
docker network ls
docker run -d --net none busybox sleep 1000
docker network inspect bridge
docker network create --driver bridge my_bridge_network
docker networkd connect bridge container_id
docker networkd disconnect bridge container_id
docker run -d --net host busybox sleep 1000

### Create a Continuous Integration pipeline
docker-compose up -d
docker-compose run dockerapp python test.py

### Running Docker in Production
docker-machine create --driver digitalocean --digitalocean-access-token <xxxxx> docker-app-machine
docker-machine create --driver digitalocean --digitalocean-access-token <xxxxx> swarm-manager
docker-machine env swarm-manager
docker-machine create --driver digitalocean --digitalocean-access-token <xxxxx> swarm-node
docker-machine ls
docker swarm init (in swarm-manager)
docker swarm ssh swarm-node (in swarm-manager)
    docker swarm join --token token_from_swarm_manager

### Deploy Docker App in Docker Swarm