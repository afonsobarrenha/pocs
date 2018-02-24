# Projeto SpringBoot
Projeto Maven com Spring Boot. Será base para as POCs de Spring. 

Utiliza uma base MySql para execução, configurada pelo projeto Docker POCs.

Estou usando a propriedade ```spring.datasource.initialize=true``` para inicializar o banco de dados, através dos arquivos ```schema.sql``` e ```data.sql```. Fantástico.

Por brevidade e segurança, estou criando as Entities pelo Eclipse. Foi acrescentado então o Facet JPA ao projeto.

Muito recomendado é a utilização do spring-boot-devtools e do LiveReload para uso no desenvolvimento.

Para a verificação das dependências do projeto, utilizar 
```
mvn versions:display-dependency-updates
mvn dependency:tree
```
