#!/bin/bash
zip -r ubuntu1.zip ~/
zip -r puppet-ubuntu1.zip /etc/puppetlabs/
scp ubuntu1.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado
scp puppet-ubuntu1.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado

