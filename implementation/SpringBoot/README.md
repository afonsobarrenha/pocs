# Projeto SpringBoot
Projeto Maven com Spring Boot. Será base para as POCs de Spring. 

Utiliza uma base MySql para execução. Estou iniciando essa base com o comando Docker abaixo. Esse comando será posteriormente incluído em um Docker Compose, junto com os demais containers necessários (prevejo para SpringBoot, para AngularJs, e para o servidor HTTP).
```
// iniciar o container
docker run --name some-mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:5.5

// acessar o container por um novo container
docker run -it --link some-mysql:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'
```
Também poderá ser acessado o MySql pela funcionalidade de Data Source Explorer do Eclipse. Atentar para a porta linkada na criação do container (3306) e a senha para o root.




