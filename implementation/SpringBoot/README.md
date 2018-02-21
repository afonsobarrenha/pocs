# Projeto SpringBoot
Projeto Maven com Spring Boot. Será base para as POCs de Spring. 

Utiliza uma base MySql para execução. Estou iniciando essa base com o comando Docker abaixo. Esse comando será posteriormente incluído em um Docker Compose, junto com os demais containers necessários (prevejo para SpringBoot, para AngularJs, e para o servidor HTTP).
```
// iniciar o container
docker run --name some-mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root_password -e MYSQL_DATABASE=listavip -e MYSQL_USER=lista_usr -e MYSQL_PASSWORD=lista_pwd mysql:5.5

// acessar o container por um novo container
docker run -it --link some-mysql:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'
```

Estou usando a propriedade ```spring.datasource.initialize=true``` para inicializar o banco de dados, através dos arquivos ```schema.sql``` e ```data.sql```. Fantástico.

Para a criação das Entities pelo Eclipse, deve-se acrescentar o Facet JPA ao projeto.

Muito recomendado é a utilização do spring-boot-devtools e do LiveReload para uso no desenvolvimento.

Para a verificação das dependências do projeto, utilizar 
```
mvn versions:display-dependency-updates
mvn dependency:tree
```
