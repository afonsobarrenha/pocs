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

