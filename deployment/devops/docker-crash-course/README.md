# dockerapp
Project source code for James Lee's Docker course.

Check out our latest DevOps PDF book.

https://www.level-up.one/devops-pdf-book/

## Commands

### Hello World
docker images
docker run busybox:1.24 echo "hello world"
docker images
docker run busybox:1.24 ls /
docker run -it busybox:1.24
    ls
    touch a.txt
    ls
    exit
docker run -it busybox:1.24
    ls

### Deep Dive
docker run -d busybox:1.24 sleep 1000
docker ps
docker ps -a
docker run --rm busybox:1.24 sleep 1
docker ps -a
docker run --name hello_world busybox:1.24
docker ps -a
docker run -d busybox:1.24 sleep 100
docker inspect container_id

### Port Mapping and Logs
docker run -it -p 8888:8080 tomcat:8.0
docker ps -a
docker run -it -d -p 8888:8080 tomcat:8.0
docker logs container_id

### Image Layers
docker history busybox:1.24

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

