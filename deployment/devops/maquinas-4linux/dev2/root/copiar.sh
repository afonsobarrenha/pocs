#!/bin/bash
zip -r dev2.zip ~/
zip -r puppet-dev2.zip /etc/puppetlabs/
scp dev2.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado
scp puppet-dev2.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado

