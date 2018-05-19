## Comandos Vagrant
```
vagrant init
vagrant box list
vagrant up
vagrant up --provision
vagrant halt
vagrant status
vagrant ssh NOME
vagrant ssh ubuntu2 -c "ip a"
```
## Configurando o ubuntu1
```
ssh-keygen
cat .ssh/id_rsa.pub >> .ssh/authorized_keys
```

## Comandos Ansible
```
apt install python python-pip -y
pip install ansible
ansible -i /root/hosts all -e "host_key_check=False" -m command -a "hostname"
ansible docker -u vagrant --private-key .vagrant/machines/docker/virtualbox/private_key -i hosts -m shell -a 'echo Hello, Docker'
ansible-playbook -i /roots/hosts playbook.yml -v
sudo puppet apply /vagrant/manifests/web.pp
```

## Comandos Linux
```
ip a
sudo su -
systemctl status nginx
ps -ef | grep java
```

ansible-galaxy init apache q
galaxy é um repositório de playbooks de várias ferramentas
ansible-playbook -i /root/hosts main.yml
vagrant ssh dev1 -c 'ip a'

zip -r root.zip /root/
scp root.zip sabado@ada03:/home/sabado/infraagil_sabado

use templates para usar o jinja2 e usar variáveis no formado {{var}}
ansible-playbook -i /root/hosts -e "texto=afonso" main.yml

- ubuntu
name:
apt:
  deb: ...xenial.deb
  
name:
apt: name=puppet-agent state=present
update_cache: yes

- centos
name: 
yum:
  name: ...noarch.rpm
  
name:
yum: name=puppet-agent state=present


puppet resource package httpd ensure=absent
puppet resource service httpd
puppet resource service httpd ensure=running enable=true
puppet resource user sabado
puppet resource package vim ensure=present
puppet aply base.pp

copiar é escape yy
colar é p
ctrl+z escape u

puppet resource service puppetserver ensure=running enable=true 

puppet resource package puppetserver ensure=present

puppet resource package puppetserver ensure=present

puppet resource service puppetserver ensure=running enable=yes

puppet server abre uma porta 8140

puppet cert list --all
	deve colocar o FTDN da máquina

dev1
	vim /etc/hosts

dev1
	nos clientes cadastrar o FTDN do master
	puppet agent --test --server ubuntu1.salas4linux.com.br-	

volta para ubuntu1
puppet cert list
	irá pedir a confirmação do certificado do dev1

puppet cert sign dev1.salas4linux.com.br

puppet agent --test --server ubuntu1.salas4linux.com.br	

em DEV1
/etc/puppetlabs/puppet/puppet.conf
[agent]
server = ubuntu1.salas4linux.com.br

puppet agent --enable

puppet config print runinterval

puppet config set runinterval 60

puppet config print runinterval

tail -f /var/log/messages

vim /etc/puppetlabs/code/environments/production/manifests/site.pp
node "dev1.salas4linux.com.br" {
  package{"fish",
    ensure => present
}
  user{"devops":
    ensure=>present,
    managehome=>true,
    shell=>"/usr/bin/fish'
}

PUPPET

epel-release - enterprise package linux, apenas para o centos

figlet
ccze

ss -ntpl
systemctl status puppetserver
systemctl restart puppetserver

/etc/puppetlabs/code/environments/production/modules

puppet resource package pdk ensure=present
	Puppet Development Kit

pdk new module puppet-base - o nome do módulo será 'base'

cd base
  vim manifests/init.pp - precisa ser esse nome

vim site.pp

em dev1
  puppet agent -t - rodar o puppet na mão

  tail -f /var/log/messages

vim /etc/puppetlabs/puppet/puppet.conf para configurar o environment

.bashrc echo 'bem vindo' | figlet

puppet agent -t --server ubuntu1.salas4linux.com.br
  gerar certificado, enviar ssr para o server, e no server precisa assinar

gerar arquivo autosign.conf
 puppet cert list --all

  puppet cert clean dev2...

PUPPET
  a configuração principal dos clientes está em ENVIRONMENT/manifests/site.pp
  os módulos precisam ser cadastrados nesse arquivo
  os módulos estão em ENVIRONMENT/modules

repositórios /etc/apt/sources.list

vim /etc/puppetlabs/puppet/puppet.conf
[main]
runinterval=10
[agent]
server = ubuntu1.salas4linux.com.br

puppet agent --enable
tail -f /var/log/syslog
tail -f /var/log/messages

echo $(whoami)@$(hostname) | figlettouch app


GIT

git status
git log --oneline
git diff
git rm - tirar do add
git rm teste.txt --cached
git reset 1234 --hard
git remote -v
git remote add github https://github.com/afonsobarrenha/aula_git.git
git push github master - -f força o push
git pull github master - baixa e já faz o merge
git fetch - só baixa, não faz o merge mostrando as diferenças
git branch
git checkout -b develop - cria a branch
git checkout master
git log --graph
  git checkout develop
  git merge feature1
git branch -d feature1 - apaga a branch
git reset --hard origin/master
git log --graph --oneline
git revert

## Docker
o docker usa o mesmo kernel do host onde está subindo, por isso é mais leve
cat /root/.bashrc
echo $(whoami)@$(hostname) | figlet
systemctl enable docker
systemctl restart docker
docker container ls
docker attach 12345 - entra pelo entrypoint
docker exec -ti 12345 ping -c3 8.8.8.8
docker system prune
docker system info
docker commit
docker logs
docker inspect 2325 | grep Address -i

iptables -L -n
docker save app2 > image-bkp.tar
docler load -i image-bkp.tar
ENTRYPOINT força a execução do comando vir primeiro
CMD pode ser sobrescrito


git clone -b upload
yum install python-pip -y
pip install -r requirements.txt
 
docker volume create imagens
docker volume inspect imagens
docker run --rm -ti -p 80:8080 -v imagens:/srv/app/static/imagens python_app-3
docker run --rm -ti -p 80:8080 -v /root/desafio:/srv/app/static/imagens python_app-3

docker run -dti --name mysql ubuntu /bin/bash
	
Desenvolvimento - minishift/mesos
Produção - Openshift/Kubernetes/Marathon (Apache)/Rancher/UCP

log centralizado

GitLab precisa de 2 gb pra subir
ssh-copy-id IP!

gitlab-ctl reconfigure

free -m

usuário padrão root
4linux123

gravatar


git remote -v
git remote remove origin
git remote add origin git@192.168.200.196:root/ansible-playbooks.git

Rundeck para Operações - CD
Jenkins para Desenvolvimento - CI

ss -ntpl

vim /etc/rundeck/framework

framework.server.url = http://192.168.200.169:4440
vim /etc/rundeck/rundeck-config.properties
service rundeckd restart

http://192.168.200.169:4440/menu/home

Nodes > show all nodes

/var/rundeck/projects/infraagil/etc

su - rundeck

-bash-4.2$ cat .ssh/id_rsa.pub 
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDsTt/4lmMfz1iJpHMdVeXAp7OTSEIq4AxKrO3dN23lORSn4m9hyNaZa5gnz+3u8HW/dtGnaDL9xxGVlXCbPpr16PAXNZlQs7MUDZcZhNvnHivO1L5u+WtNw2sIACc04aptHLvghllZo8lb1bDrGVSdUGt7/RDEqK8Gh7xts5sEIPj3ictMvidH/Q42ALfO7oWlWIG5JnbczCWKayGwzPxX43JudA1wVGTswvTjFjMakBJGbWqCbsvIuSTX9WDoePGN1gKA149FexXnO0N52xk54jkZ63c9tFE1Fbc2innv6CcOKL7y3qP40v3GowsAA5I6kWx5aRiJyJfNHTLSDU/n 
-bash-4.2$ 

"#!/bin/bash
rm -f /tmp/hosts
echo "[rundeck]" > /tmp/hosts
echo $RD_OPTION_SERVIDOR >> /tmp/hosts"

"#!/bin/bash

yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install java -y
yum install jenkins -y"

jenkins admin/4linux123

Jenkins Pipeline View
