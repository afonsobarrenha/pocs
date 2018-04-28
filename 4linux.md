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
