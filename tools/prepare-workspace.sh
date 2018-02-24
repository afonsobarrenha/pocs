#!/bin/sh
#chmod 700 afonsobarrenha.sh && sudo ./afonsobarrenha.sh

#configurando apt-repositories
##vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
##eclipse oxygen r2
add-apt-repository ppa:ubuntu-desktop/ubuntu-make

apt-get update

#instalando ferramentas
apt-get install git
apt-get install openjdk-8-jdk
apt-get install maven
apt-get install code
apt-get install ubuntu-make

# instalando o eclipse
umake ide eclipse-jee

# clonando o repositório
cd ~
mkdir projetos
cd projetos
git clone https://github.com/afonsobarrenha/pocs.git
git config --global user.email "afonsobarrenha@gmail.com"
git config --global user.name "afonsobarrenha"
