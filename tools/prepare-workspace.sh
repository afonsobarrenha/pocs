#!/bin/sh
# chamar da pasta HOME: sudo curl -o prepare-workspace.sh https://raw.githubusercontent.com/afonsobarrenha/pocs/develop/tools/prepare-workspace.sh && sudo chmod 700 ./prepare-workspace.sh && sudo ./prepare-workspace.sh [pasta_base] [git.user.name] [git.user.email]

echo '> Iniciando instalação'

echo '>> Configurando apt-repositories'
echo '>>> VS Code Repository'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
echo '>>> ubuntu-make Repository'
add-apt-repository ppa:ubuntu-desktop/ubuntu-make

echo '>> Atualizando'
apt-get update

echo '>> Instalando as ferramentas'
apt-get install curl
apt-get install git
apt-get install openjdk-8-jdk
apt-get install maven
apt-get install code
apt-get install ubuntu-make

echo '>>> Instalando manualmente o Eclipse Oxygen (ubuntu-make)'
umake ide eclipse-jee

echo '>>> Instalando VirtualBox'
apt-get install virtualbox

echo '>>> Instalando Vagrant'
apt-get install vagrant

echo '>>> Instalando Minikube'
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.25.2/minikube-linux-amd64 \
&& chmod +x minikube && sudo mv minikube /usr/local/bin/

echo '>>> Instalando o Kubernetes'
snap install kubectl --classic

echo '>> Clonando o projeto POCS'
echo '>>> Mudando diretório para pasta HOME'
cd ~
echo '>>> Criando pasta ' + S1
mkdir $1
echo '>>> Mudando diretório para pasta ' + S1
cd $1
echo '>>> Clonando projeto GIT (https://github.com/afonsobarrenha/pocs.git)'
git clone https://github.com/afonsobarrenha/pocs.git
echo '>> Configurando variáveis globais do GIT'
git config --global user.name $2
git config --global user.email $3


echo '> Encerrando instalação'
