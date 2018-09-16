# Docker

Pasta contendo os arquivos de configuração Docker que iremos utilizar.

Foi montado um *docker-compose*, listando os containers utilizados na aplicação. São eles um container *open-jdk*, e um *my-sql*. Foi utilizado um script externo (*wait-for-it.sh*) para sincronizar a subida, primeiro do bd-container, depois o container do app-container.

Para um ambiente Local, de Desenvolvimento, é criado um bd-container "efêmero" (-d e --rm), sem volume ou nome, sempre sendo destruido no final de sua execução. Segue o comando de subida:

```
docker run -d -p 3306:3306 --rm -e MYSQL_ROOT_PASSWORD=root_password -e MYSQL_DATABASE=listavip -e MYSQL_USER=lista_usr -e MYSQL_PASSWORD=lista_pwd mysql:5.6
mysql -u root
mysql -p
```

A base de dados desse container é sempre criada e carregada no start-up da aplicação, através das instruções 

```
spring.datasource.initialize=true
```

Essa configuração é setada para o **Profile Default** do Spring Boot. Para o **Profile Pro** (Produção), a mesma está setada como *false*, sendo usado o parâmetro abaixo no start-up do Spring Boot da Imagem Docker criada.

```
-Dspring.profiles.active=pro /springboot.jar
```

## Comandos

### Builds

```
docker ps -a
docker rm/rmi [id]
docker container prune
docker port [id]
docker build -f node.dockerfile --tag afonsobarrenha/node .
docker login
docker push afonsobarrenha/node
docker-compose build
docker-compose up
docker-compose down
```

### Runs

```
docker run/start/stop
docker run -it --rm ubuntu #interativo/terminal/autoremove
docker start -a -i 05025384675e #atach+terminal/interativo
docker exec -it e052f36b8901 bash
docker run -d -p 12345:80 -e AUTHOR="afonsobarrenha" dockersamples/static-site #detach/porta/env
docker run -it -v $(pwd)/volumes/var/www:/var/www ubuntu
```