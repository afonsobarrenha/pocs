# Devops

## 4linux
Curso DevOps 4Linux.

## ansible

Pasta contendo os scripts ansible para configuração das máquinas.

## docker

Pasta contendo o arquivo docker-compose, que descreve a interação entre os containers da aplicação e do banco de dados. O arquivo Dockerfile fica dentro do diretório do projeto, pois sua configuração e responsabilidade é da equipe de Desenvolvimento.

>Caso você esteja utilizando o Docker Toolbox, como ele está rodando em cima de uma máquina virtual, o endereço http://localhost:9001/ não funcionará, pois você deve acessar a porta através do IP da máquina virtual. Para descobrir o IP dessa máquina virtual, basta executar o comando docker-machine   ip. Com o IP em mãos, basta acessá-lo no navegador, utilizando a porta que o Docker atribuiu, por exemplo http://192.168.0.38:9001/.

## jenkinsfile

Pasta contendo uma estrutura para uso de *jenkinsfile* em pipelines de CI/CD.

## kubernetes

Pasta contendo os arquivos de configuração do Kubernetes, que está sendo usado para o deploy e gerenciamento básico dos containers na nuvem.

## terraform

Pasta contendo os arquivos Terraform para provisionamento das mãquinas AWS EC2.

## vagrant

Pasta contendo os scripts para provisionamento de máquinas virtuais, utilizando Puppet.