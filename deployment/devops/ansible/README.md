# Ansible

## Comandos
```
ansible all -m ping
ansible all -a "/bin/echo hello"
ansible all -i hosts -m shell -a 'sudo apt update'
ansible -vvvv wordpress -u vagrant --private-key .vagrant/machines/wordpress/virtualbox/private_key -i hosts -m shell -a 'echo Hello, World'
mysql -u root
    show databases;
    use wordpress_db;
    show tables;
mysql -u wordpress_user -p 
ansible-playbook provisioning.yml -i hosts
ansible-playbook -i --extra-vars 'wp_db_name=wordpress_db wp_username=wordpress_user' provisioning.yml
```