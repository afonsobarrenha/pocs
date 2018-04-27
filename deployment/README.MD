# Deployment
Pasta onde são armazenados as informações de deploys dos projetos.
## Pasta Devops
Pasta contendo as configurações de infraestrutura como código do projeto.
### Pasta ansible
Pasta contendo os scripts ansible para configuração das máquinas.
### Pasta docker
Pasta contendo o arquivo docker-compose, que descreve a interação entre os containers da aplicação e do banco de dados. O arquivo Dockerfile fica dentro do diretório do projeto, pois sua configuração e responsabilidade é da equipe de Desenvolvimento.
### Pasta kubernetes
Pasta contendo os arquios de configuração do Kubernetes, que está sendo usado para o deploy e gerenciamento básico dos containers na nuvem.
### Pasta vagrant
Pasta contendo os scripts para provisionamento das máquinas virtuais.
### Pasta volumes
Pasta contendo os volumes das images Docker utilizadas.