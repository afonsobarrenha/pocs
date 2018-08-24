#!/bin/bash
zip -r dev2.zip ~/
zip -r puppet-dev2.zip /etc/puppetlabs/
zip -r ansible-dev2.zip /etc/ansible/
zip -r jenkins-dev2.zip /var/lib/jenkins/
zip -r nginx-dev2.zip /etc/nginx/
scp dev2.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado
scp puppet-dev2.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado
scp ansible-dev2.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado
scp jenkins-dev2.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado
scp nginx-dev2.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado
