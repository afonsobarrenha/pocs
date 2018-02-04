# Projeto SpringBoot
Projeto Maven com Spring Boot. Será base para as POCs de Spring. 

Utiliza uma base MySql para execução. Estou iniciando essa base com o comando Docker abaixo. Esse comando será posteriormente incluído em um Docker Compose, junto com os demais containers necessários (prevejo para SpringBoot, para AngularJs, e para o servidor Http).
```
// iniciar o container
docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:5.5

// acessar o container
docker run -it --link some-mysql:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'
```





