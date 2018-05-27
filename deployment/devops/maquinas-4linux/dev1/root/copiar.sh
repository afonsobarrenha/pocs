#!/bin/bash
zip -r dev1.zip ~/
zip -r puppet-dev1.zip /etc/puppetlabs/
scp dev1.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado
scp puppet-dev1.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado
