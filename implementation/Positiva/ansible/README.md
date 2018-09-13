# Ansible

## Comandos
```
ansible -vvvv wordpress -u vagrant --private-key .vagrant/machines/wordpress/virtualbox/private_key -i hosts -m shell -a 'echo Hello, World'
mysql -u root
    show databases;
    use wordpress_db;
    show tables;

mysql -u wordpress_user -p 

ansible-playbook provisioning.yml -i hosts

ansible-playbook -i --extra-vars 'wp_db_name=wordpress_db wp_username=wordpress_user' provisioning.yml
```