# Projeto DevOps
Pasta contendo os arquivos de configuração dos containers Docker que iremos utilizar nas POCs que serão criadas.

Como um primeiro container estou utilizando o MySQL, o iniciando com o comando abaixo. Esse comando será posteriormente incluído em um Docker Compose, junto com os demais containers necessários (prevejo para SpringBoot, para AngularJs, e para o servidor HTTP).
```
#mysql-server
docker run --name mysql-server -p 3306:3306 --rm -e MYSQL_ROOT_PASSWORD=root_password -e MYSQL_DATABASE=listavip -e MYSQL_USER=lista_usr -e MYSQL_PASSWORD=lista_pwd mysql:5.5
 
#mysql-client
docker run -it --link mysql-server:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'

#node-server
docker run -p 3000:3000 -v $(echo $HOME)/projetos/pocs/implementation/Node/volume-exemplo:/var/www -w "/var/www" --rm node npm start

#springboot-server
docker run -p 9000:9000 --link mysql-server:mysql-server --rm afonsobarrenha/springboot
```
## Principais comandos Docker
### Manipulação
Comandos para se trabalhar com containers e imagens.
```
docker ps -a
docker rm/rmi [id]
docker container prune
docker port [id]
docker build -f node.dockerfile --tag afonsobarrenha/node .
docker login
docker push afonsobarrenha/node
```
### Execução
Comandos para execução de containers.
```
docker run/start/stop
docker run -it --rm ubuntu #interativo/terminal/autoremove
docker start -a -i 05025384675e #atach+terminal/interativo
docker run -d -p 12345:80 -e AUTHOR="afonsobarrenha" dockersamples/static-site #detach/porta/env
docker run -it -v $(pwd)/volumes/var/www:/var/www ubuntu
```
## FAQ
- Caso você esteja utilizando o Docker Toolbox, como ele está rodando em cima de uma máquina virtual, o endereço http://localhost:9001/ não funcionará, pois você deve acessar a porta através do IP da máquina virtual. Para descobrir o IP dessa máquina virtual, basta executar o comando docker-machine ip. Com o IP em mãos, basta acessá-lo no navegador, utilizando a porta que o Docker atribuiu, por exemplo http://192.168.0.38:9001/.