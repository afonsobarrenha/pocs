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
