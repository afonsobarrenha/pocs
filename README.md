# POCs - Provas de Conceito

Minha intenção é colocar em prática os últimos cursos que fiz. Abaixo, uma lista com um *roadmap* do que pretendo seguir. Nessa lista estão os Objetivos da certificação _LPIC-OT Exam 701: DevOps Tools Engineer (versão 1.0)_, e os cursos que tenho para fazer. Conforme for concluindo esses cursos, vou atualizando os Objetivos da certificação alcançados. Mãos à obra!

- - -

## LPIC-OT Exam 701: DevOps Tools Engineer

### Topic 701: Software Engineering

#### 701.1 Modern Software Development (weight: 6)

- [ ] REST, JSON
- [ ] Service Orientated Architectures (SOA)
- [ ] Microservices
- [ ] Immutable servers
- [ ] Loose coupling
- [ ] Cross site scripting, SQL injections, verbose error reports, API authentication, consistent enforcement of transport encryption
- [ ] CORS headers and CSRF tokens
- [ ] ACID properties and CAP theorem

#### 701.2 Standard Components and Platforms for Software (weight: 2)

- [ ] OpenStack Swift
- [ ] OpenStack Trove
- [ ] OpenStack Zaqar
- [ ] CloudFoundry
- [ ] OpenShift

#### 701.3 Source Code Management (weight: 5)

- [x] git
- [x] .gitignore

#### 701.4 Continuous Integration and Continuous Delivery (weight: 5)

- [ ] Step, Node, Stage
- [ ] Jenkins SDL
- [ ] Jenkinsfile
- [ ] Declarative Pipeline
- [ ] Blue-green and canary deployment

### Topic 702: Container Management

#### 702.1 Container Usage (weight: 7)

- [x] docker
- [x] Dockerfile
- [x] .dockerignore

#### 702.2 Container Deployment and Orchestration (weight: 5)

- [x] docker-compose
- [x] kubectl

#### 702.3 Container Infrastructure (weight: 4)

- [ ] docker-machine

### Topic 703: Machine Deployment

#### 703.1 Virtual Machine Deployment (weight: 4)

- [x] vagrant
- [x] Vagrantfile

#### 703.2 Cloud Deployment (weight: 2)

*(Não são listadas ferramentas)*

#### 703.3 System Image Creation (weight: 2)

- [ ] packer

### Topic 704: Configuration Management

#### 704.1 Ansible (weight: 8)

- [ ] ansible.cfg
- [x] ansible-playbook
- [ ] ansible-vault
- [x] ansible-galaxy
- [ ] ansible-doc
 
#### 704.2 Other Configuration Management Tools (weight: 2)

- [ ] Manifest, Class, Recipe, Cookbook
- [x] puppet
- [ ] chef
- [ ] chef-solo
- [ ] chef-client
- [ ] chef-server-ctl
- [ ] knife

### Topic 705: Service Operations

#### 705.1 IT Operations and Monitoring (weight: 4)

- [ ] Prometheus, Node exporter, Pushgateway, Altermanager, Grafana
- [ ] Service exploits, brute force attacks, and denial of service attacks
- [ ] Security updates, packet filtering and application gateways
- [ ] Virtualization hosts, DNS and load balancers
 
#### 705.2 Log Management and Analysis (weight: 4)

- [ ] logstash
- [ ] input, filter, output
- [ ] grok filter
- [ ] Log files, metrics
- [ ] syslog.conf
- [ ] /etc/logstash/logstash.yml
- [ ] /etc/filebeat/filebeat.yml

- - -

Seguem abaixo os cursos que irei fazer. A conclusão de cada um pode abranger algum dos objetivos acima, que também serão "checkados" junto com o item do curso abaixo.

## 4Linux

### Infraestrutura ágil com práticas DEVOPS usando Docker, Git, Jenkins, Puppet e Ansible

- [x] Automação Com Vagrant/Ansible
- [x] Administrando e operando o Docker
- [x] Gerencia de configuração com Puppet
- [x] Versionamento com Gitlab
- [x] Integração com Jenkins
- [x] Rundeck

### \(Opcional) Exin DevOps Master

- [ ] Adoção DevOps
- [ ] Planejamento, Requisitos e Projeto
- [ ] Desenvolvimento e Implantação (Deployment)
- [ ] Operação e Escalonamento
- [ ] Fim da vida

## Alura

### Carreira Desenvolvedor Java Web com Spring

- [x] Maven
- [x] Spring Boot
- [ ] Spring MVC I
- [ ] Spring MVC II
- [ ] Java e JPA I
- [ ] Java e JPA II
- [x] \(Opcional) Logback
- [x] \(Opcional) Mockito
- [x] \(Opcional) TDD
- [x] \(Wikipedia) Cucumber

### Carreira Engenheiro DevOps

- [x] Linux I
- [x] Linux II
- [x] Git
- [x] Docker
- [x] Vagrant
- [x] Ansible
- [x] Integração Contínua
- [x] Kubernetes
- [x] AWS S3
- [ ] **_AWS EC2 (em andamento)_**
- [ ] AWS ECS - Deploy Docker
- [ ] AWS - Deploy SpringBoot

### Carreira Desenvolvedor FullStack MEAN

- [ ] MEAN Stack
- [ ] Angular 2 I
- [ ] Angular 2 II
- [ ] Node.js
- [ ] Node.js e HTTP
- [ ] MongoDB

## Udemy

### DevOps

- [ ] Master Jenkins CI for DevOps and Developers
- [ ] Docker Technology for DevOps and Developers
- [ ] AWS Certified Developer
- [ ] AWS Certified Solutions Architect
- [ ] AWS Certified SysOps Administrator
- [ ] \(Opcional) Ethical Hacking

### Big Data

- [ ] Hands-On Hadoop
- [ ] Apache Spark and Python

## (Opcional) Docker Samples

### Tutorial Labs

- [x] Docker for Beginners
- [ ] Configuring developer tools and programming languages
- [ ] Live Debugging Java with Docker
- [x] Docker for Java Developers
- [ ] Docker Security
- [ ] Best practices for writing Dockerfiles

## (Opcional) Spring Guides

### Getting Started Guides

- [x] Building an Application with Spring Boot
- [x] Testing the Web Layer
- [x] Spring Boot with Docker
- [ ] Accessing Data with JPA
- [ ] Accessing Relational Data using JDBC with Spring
- [ ] Managing Transactions
- [ ] Securing a Web Application
- [x] Building a RESTful Web Service
- [ ] Consuming a RESTful Web Service
- [ ] Building a RESTful Web Service with Spring Boot Actuator
- [ ] Consuming a RESTful Web Service with AngularJS
- [ ] Accessing JPA Data with REST
- [ ] Accessing MongoDB Data with REST
- [ ] Creating API Documentation with Restdocs
- [ ] Scheduling Tasks
- [ ] Centralized Configuration
- [ ] Creating a Multi Module Project

### Topical Guide

- [ ] Spring Security Architecture

#### Tutorial

- [ ] Building REST services with Spring
- [ ] Spring Security and Angular
- [ ] Spring Boot and OAuth2

## (Opcional) Google Cloud Platform Tutorials

- [ ] Crie um app da Web e hospede-o no Google App Engine.
- [ ] Inicie grandes clusters de computação no Google Compute Engine.
- [ ] Armazene grandes quantidades de dados no Google Cloud Storage.
- [ ] Analise Big Data na nuvem com o Google BigQuery.
- [ ] Armazene e gerencie dados usando um banco de dados MySQL com o Google Cloud SQL.
- [ ] Disponibilize aplicativos e serviços para seus usuários com o Google Cloud DNS.

_Obs: Estou usando a estrutura de pastas apresentada no livro **Continuous Integration**, onde todos os artefatos envolvidos no projeto são armazenados, desde artefatos de Gerenciamento quanto as Ferramentas que são utilizadas. Isso contrasta com o formato usado no GitHub, onde na grande maioria temos apenas o código fonte armazenado, mas em contrapartida dá uma visão completa de tudo que está envolvido no projeto._

- - -

## Referências

- [Basic Writing and formatting Syntax](https://help.github.com/articles/basic-writing-and-formatting-syntax/)
- [Mastering Markdown](https://guides.github.com/features/mastering-markdown/)
- [Continuous Integration: Improving Software Quality and Reducing Risk](https://www.amazon.com.br/Continuous-Integration-Improving-Software-Reducing/dp/0321336380)
- [Continuous Delivery: Reliable Software Releases through Build, Test, and Deployment Automation](https://www.amazon.com.br/Continuous-Delivery-Deployment-Automation-Addison-Wesley-ebook/dp/B003YMNVC0?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3IMB4CB9HS92H&keywords=continuous+delivery&qid=1523885607&sprefix=continuous+de%2Cstripbooks%2C268&sr=1-1&ref=sr_1_1)
- [Alura](https://www.alura.com.br/)
- [Spring Guides](https://spring.io/guides/)
- [Spring Boot Reference Guide](https://docs.spring.io/spring-boot/docs/1.5.10.RELEASE/reference/htmlsingle/)
- [Docker Tutorial Labs](https://docs.docker.com/samples/#tutorial-labs)
- [LPIC-OT Exam 701: DevOps Tools Engineer](http://www.lpi.org/our-certifications/exam-701-objectives)
- [Udemy](https://www.udemy.com/)
- [4Linux](https://www.4linux.com.br/)
- [Google Cloud Platform](https://cloud.google.com/sdk/auth_success)
- [README Deployment](deployment/)