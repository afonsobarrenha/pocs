#!/bin/bash
zip -r dev1.zip ~/
zip -r puppet-dev1.zip /etc/puppetlabs/
zip -r rundeck-etcrundeck-dev1.zip /etc/rundeck
zip -r rundeck-varrundeck-dev1.zip /var/rundeck
scp dev1.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado
scp puppet-dev1.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado
scp rundeck-etcrundeck-dev1.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado
scp rundeck-varrundeck-dev1.zip sabado@ada03:/media/sabado/KINGSTON/infraagil_sabado
