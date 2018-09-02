vim .ssh/authorized_keys 
puppet resource package vim ensure=present
vim .ssh/authorized_keys 
vi /etc/hosts
puppet agent -t --server ubuntu1.salas4linux.com.br
tail -f /var/log/messages
git
puppet agent -t --server ubuntu1.salas4linux.com.br
tail -f /var/log/messages
systemctl status puppet
systemctl restart puppet
tail -f /var/log/messages
puppet agent -t --server ubuntu1.salas4linux.com.br
rm -rf /etc/puppetlabs/puppet/ssl/
puppet agent -t --server ubuntu1.salas4linux.com.br
git
systemctl status puppet
tail -f /var/log/messages
puppet agent -t --server ubuntu1.salas4linux.com.br
cat .bashrc 
rm .bashrc 
puppet agent -t --server ubuntu1.salas4linux.com.br
hostname
puppet agent -t --server ubuntu1.salas4linux.com.br
cat /etc/hosts
puppet agent -t --server ubuntu1.salas4linux.com.br
docker --version
cat /etc/puppetlabs/puppet/puppet.conf 
vim /etc/puppetlabs/puppet/puppet.conf 
puppet agent --enable
tail -f /var/log/messages
systemctl status puppet
systemctl restart puppet
tail -f /var/log/messages
puppet agent -t --server ubuntu1.salas4linux.com.br
docker --version
puppet agent -t --server ubuntu1.salas4linux.com.br
vim /etc/puppetlabs/puppet/puppet.conf 
puppet agent --enabole
puppet agent --enable
tail -f /var/log/messages
systemctl restart puppet
tail -f /var/log/messages
vim /etc/puppetlabs/puppet/puppet.conf 
systemctl restart puppet
tail -f /var/log/messages
docker run -it ubuntu
docker
docker run -it ubuntu
tail -f /var/log/messages
whereis systemclt
whereis systemctl
whereis docker
tail -f /var/log/messages
docker --version
cat /root/.bashrc 
docker run -t hello-world
system ctl enable docker
systemctl enable docker
systemctl restart docker
docker run -t hello-world
docker run -ti hello-world
docker run -t ubuntu
docker run -ti ubuntu
docker run -i ubuntu
docker container ls
docker container ls -a
docker pull centos
docker run -it centos
docker ps 
docker exec 3f09d3efc6a2 ping -c5 8.8.8.8
docker exec -it 3f09d3efc6a2 ping -c5 8.8.8.8
docker run centos
docker ps
docker run -it centos
docker ps
docker system prune
docker system info
docker run -dti --name apache centos /bin/bash
docker ps
docker exec -it apache
docker exec -it apache /bin/bash
docker ps
docker stop -t0 3f09d3efc6a2 02360c730477
docker ps
docker commit apache apache_img
docker images
docker history centos
docker history apache_img
docker ps
docker stop apache
docker rm apache
docker ps
docker ps -a
docker system prune
docker images
docker ps -a
docker run -dti --name app1 --hostname app1 apache_img httpd -DFOREGROUND
docker ps
docker logs app1
curl 172.17.0.2
docker ps
docker exec 35c00dfa5bad -it /bin/bash
docker exec -it 35c00dfa5bad /bin/bash
vim index.html
docker exec -ti apache /bin/ls /var/www/
docker exec -ti app1 /bin/ls /var/www/
docker exec -ti app1 /bin/ls /var/www/html
docker exec -ti app1 /bin/ls /var/www/
docker exec -ti app1 /bin/ls /var/www/html
docker cp index.html app1:/var/www/html/
curl 172.17.0.2
docker ps
docker commit app1 app1
docker ps
docker stop app1 ; docker rm app1
docker images
docker run -dti --name app1 --hostname app1 app1 httpd -DFOREGROUND
docker ps
docker logs app1
docker stop app1 ; docker rm app1
docker run -dti --name app1 --hostname app1 app1 /bin/bash
docker ps
docker exec -ti app1 ls /var/run/httpd
docker exec -ti app1 rm /var/run/httpd/httpd.pid
docker run -dti --name app1 --hostname app1 app1 httpd -DFOREGROUND
docker run -dti --name app1 app1 httpd -DFOREGROUND
docker exec -ti app1 /bin/bash
docker commit app1 app1
docker stop app1 ; docker rm app1
docker run -dti --name app1 --hostname app1 app1 httpd -DFOREGROUND
docker ps
docker logs app1
docker stop app1 ; docker rm app1
docker run -ti --name app1 --hostname app1 app1 /bin/bash
docker commit app1 app1
docker stop app1 ; docker rm app1
docker run --rm -ti --name app1 --hostname app1 app1 httpd -DFOREGROUND
docker run -dti --name app1 --hostname app1 app1 httpd -DFOREGROUND
docker ps
curl 127.0.0.2
ip a
curl 127.0.0.1
curl 127.17.0.2
curl 172.17.0.2
docker stop app1 ; docker rm app1
docker run -dti --name app1 --hostname app1 -p 80 app1 httpd -DFOREGROUND
docker ps
ip a
iptables -L -n
iptables -L -n -t nat
mkdir app1_nginx
cd app1_nginx/
vim Dockerfile
vim index.html
ls
docker build . -t app2
vim Dockerfile 
docker build . -t app2
docker run -it app2
vim Dockerfile
docker build . -t app2
docker run -it app2
ip a
docker run -dit -p 80 app2
docker ps
docker logs b135566b4d8b
vim Dockerfile 
docker build . -t app2
docker run -dit -p 80 app2
docker ps
docker exec -it a11412f466b4 /bin/bash
docker ps
docker exec -it c94df44161f9 /bin/bash
docker ps
docker inspect c94df44161f9
curl 172.17.0.4
ip a
docker ps
vim Dockerfile 
docker build . -t app2
docker system prune
docker run -dit --name teste3 -p 81:80 app2
docker stop -t0 $(docker ps -a -q)
docker system prune
ls
cd app1_nginx/
cat Dockerfile 
ip a
cat Dockerfile 
ls
cd app1_nginx/
ls
cd ..
git
git clone -b upload https://github.com/AlissonMMenezes/python-openshift.git
ls
cd python-openshift/
ls
vim Dockerfile
build -t python_app .
docker build -t python_app .
ls
docker build -t python_app .
vim Dockerfile 
docker build -t python_app .
where is pip
whereis pip
pip
/bin/pip
yum install python-pip
pip
whereis pip
vim Dockerfile 
python
whereis python
vim Dockerfile 
ls
docker build -t python_app .
docker run -it python_app /bin/bash
docker build -t python_app .
whereis pip
/usr/bin/pip
vim Dockerfile 
docker rmi python_app
docker images
docker build -t python_app .
pip install -r requirements.txt 
python app.py 
ls
vim Dockerfile 
ls
docker build -t python_app .
vim Dockerfile 
docker build -t python_app .
docker run -it python_app /bin/bash
vim Dockerfile 
docker build -t python_app .
vim Dockerfile 
docker images
docker rmi python_app
docker stop -t0 $(docker ps -a -q)
docker system prune
docker build -t python_app .
vim Dockerfile 
docker build -t python_app .
docker run -it -p 80:8080 python_app
vim Dockerfile 
docker build -t python_app-2 .
vim Dockerfile 
docker build -t python_app-2 .
ls
vim Dockerfile 
docker build -t python_app-2 .
docker run -it -p 80:8080 python_app /bin/bash
vim Dockerfile 
docker build -t python_app-3 .
vim Dockerfile 
docker build -t python_app-3 .
vim Dockerfile 
docker build -t python_app-3 .
docker imaegs
docker images
docker run -it -p 80:8080 python_app-3
 vim ~/copiar.sh
chmod +x ~/copiar.sh 
cd ~
./copiar.sh 
vim copiar.sh 

yum install zip
./copiar.sh 
cat copiar.sh 
docker run --rm -ti -p 80:8080 -v imagens:/srv/app/static/imagens python_app-3
docker volume create imagens
docker run --rm -ti -p 80:8080 -v imagens:/srv/app/static/imagens python_app-3
pwd
vim gitlab_install.yml
ansible --version
pip install ansible
ls
mkdir /etc/ansible
vim /etc/ansible/hosts
unzip -l puppet-dev2.zip 
yum -y install unzip
unzip -l puppet-dev2.zip 
ssh-keygen 
cat .ssh/id_rsa.pub >> .ssh/authorized_keys 
ssh 192.168.200.196
ls
ansible-playbook gitlab_install.yml 
ip a
sudo gitlab-ctl status
gitlab-ctl 
gitlab-ctl status
gitlab-ctl start
gitlab-ctl status
gitlab-ctl reconfigure
free -m
init 0
ansible-playbook gitlab_install.yml 
vim gitlab_install.yml 
ansible-playbook gitlab_install.yml 
vim gitlab_install.yml 
ansible-playbook gitlab_install.yml 
vim gitlab_install.yml 
ansible-playbook gitlab_install.yml 
vim gitlab_install.yml 
gitlab-ctl status
free -m
free -mh
pwd
git clone http://192.168.200.196/root/ansible-playbooks.git
ls
cd ansible-playbooks/
ls
cp ~/gitlab_install.yml .
ls
vim README.md
git status
git add .
git commit -m 'Import inicial'
git push origin master
git status
git remote -v
git config --global user.email "afonsobarrenha@gmail.com"
git config --global user.name "Afonso Barrenha"
git push origin master
git status
git commit -m 'Import inicial'
git status
git push origin master
cd ~
cat .ssh/id_rsa.pub 
cd ansible-playbooks/
ls
vim README.md 
git status
git add README.md
git commit -m 'Alteração no README'
git push origin master
git remote -v
git remote remove origin
git remote add origin git@192.168.200.196:root/ansible-playbooks.git
git remote -v
git push origin master
ls
vim rundeck_install.yml
git add --all
git commit -m 'Instalação do Rundeck'
git push origin master
cd ~
./copiar.sh 
exit
vim rundeck_install.yml
cat hosts 
vim rundeck_install.yml
ls
vim hosts
ansible-playbook -i hosts rundeck_install.yml 
cat .ssh/id_rsa.pub 
ansible-playbook -i hosts rundeck_install.yml 
ls
cat gitlab_install.
cat gitlab_install.yml 
ls
service rundeckd start
systemctl rundeckd start
service rundeckd start
service rundeckd status
ansible-playbook -i hosts rundeck_install.yml 
service rundeckd status
ip a
vim .ssh/authorized_keys 
pwd
ls
./copiar.sh 
ss -ntpl
ip a
vim copiar.sh 
./copiar.sh 
/
vim /etc/ansible/hosts 
