# Tools

## Ferramentas usadas na construção desse projeto

> Montei um Ansible Playbook básico para a configuração de um workstation simples Debian. Anteriormente as ferramentas abaixo eram instaladas por um shell script simples, com os comandos do _apt_. Esse Playbook faz configurações básicas no Debian, e será evoluido conforme minhas POCs forem sendo criadas/rodadas.

> PS: Sendo sincero, não estou montando esse Playbook com a idéia de ser reutilizado completamente em qualquer máquina. Se esse repositório alcançar muitas pessoas, penso em um _Refactoring_ mais completo desse script.


- **Java** version "1.8.0_162"
- **Apache Maven** 3.5.2
- **Git** version 2.16.2.windows.1
    - git flow init
    - git flow feature start MYFEATURE
        - git flow feature publish MYFEATURE
        - git flow feature finish MYFEATURE
    - git flow release start RELEASE
        - git flow release publish RELEASE
        - git flow release finish RELEASE
        - git push --tags
    - git flow hotfix start VERSION
        - git flow hotfix publish RELEASE
        - git flow hotfix finish VERSION
        - git push --tags
- **Visual Studio Code** - Version ~~1.19.3~~ 1.21.1
- **Eclipse** - ~~Oxygen.1a Release (4.7.1a)~~ Oxygen.3 Release (4.7.3)
- **Google Chrome** - Version 65.0.3325.181 (Official Build) (64-bit)**
- **GNOME Terminal** 3.24.2
    - ~/.bashrc
        - export PATH=$PATH:/home/afonsobarrenha/apache-maven-3.5.2/bin
    - running docker comands without sudo
        - sudo groupadd docker
        - sudo gpasswd -a $USER docker
        - newgrp docker
- **Docker** - Version: 1.13.1
- **Terminator**
  - ctrl shift e: abre aba lateral
  - ctrl shift o: abre aba horizontal
  - ctrl d: fecha aba
- **Node** v8.14.1
- **Vagrant** 2.0.2
- **Vagrant Box** "ubuntu/xenial64"
- **VirtualBox** 4.3.36
- **Terraform v0.11.8**
    - /etc/environment
        - PATH="...:/home/afonsobarrenha/Documents/Projects/pocs/tools"
- **AWS CLI**
    - Linux
        - sudo apt install python-pip
        - pip install awscli --upgrade --user
        - /etc/environment
            - PATH="...:/home/afonsobarrenha/.local/bin"
    - Mac
        - sudo easy_install pip
- **PHPUnit**
    - sudo apt-get install phpunit
- **Ant**
    - sudo apt-get install ant

## Configuração utilizada (baseado no [usesthis.com](usesthis.com))

### *Who are you, and what do you do?*

> Olá, sou o **Afonso Henrique Barrenha** (afonsobarrenha), e atualmente trabalho na **Indra Brasil**, como **DevOps Coach** no banco Santander. Anteriormente fui Gerente de Desenvolvimento / Scrum Master na telecom Vivo, e mais anteriormente ainda fui Coordenador de Projeto / Arquiteto Java. Sou apaixonado por desenvolvimento de software, sempre estudando para me aperfeiçoar, e com isso me encaixando no mundo DevOps, onde há essa junção de Desenvolvimento e Operações, Ferramentas, Processos e Pessoas.

### *What hardware do you use?*

> ~~Atualmente me considero um pouco desprovido de recursos, mas essa máquina está me atendendo perfeitamente até então ;)~~
> - ~~Notebook **Dell Vostro 3500**, 15', Intel Core i5 @ 2.40GHz × 4, 1 TB de Hard Disk e 8 GB de RAM Memory~~

> Fiz recentemente um investimento comprando a máquina abaixo, acreditando que irá me acompanhar pelos próximos anos. Muito boa configuração.
> - Notebook **Dell Inspiron 14 7000**, 14', Intel Core i7 8th Gen, 128 GB SSD HD + 1 TB HD, 16 GB de RAM Memory.

### *And what software?*

> Rodo dual boot, programando em um **Ubuntu ~~17.10~~ 18.04 64-bit**. Os softwares utilizados estão listados na primeira seção do artigo. O Windows é para uso do Office :P

### *What would be your dream setup?*

> Primeiro upgrade feito! Estou em um Dell novo, com bastante memória e processador de sobra. Agora é colocar ele pra trabalhar! :P