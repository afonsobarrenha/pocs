#!/bin/sh
#chmod 700 afonsobarrenha.sh && ./afonsobarrenha.sh

sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make

apt-get update

apt-get install git
apt-get install openjdk-8-jdk
apt-get install maven
apt-get install code

sudo apt install ubuntu-make
sudo umake ide eclipse-jee
