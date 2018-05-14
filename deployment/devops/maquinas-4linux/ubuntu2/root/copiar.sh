#!/bin/bash
zip -r ubuntu2.zip ~/
zip -r puppet-ubuntu2.zip /etc/puppetlabs/
scp ubuntu2.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado
scp puppet-ubuntu2.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado
