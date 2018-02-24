# Projeto Docker
Pasta contendo os arquivos de configuração dos containers Docker que iremos utilizar nas POCs que serão criadas.

Como um primeiro container estou utilizando o MySQL, o iniciando com o comando abaixo. Esse comando será posteriormente incluído em um Docker Compose, junto com os demais containers necessários (prevejo para SpringBoot, para AngularJs, e para o servidor HTTP).
```
docker run -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root_password -e MYSQL_DATABASE=listavip -e MYSQL_USER=lista_usr -e MYSQL_PASSWORD=lista_pwd mysql:5.5
```