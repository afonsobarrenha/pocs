#Ansible

```
ansible -vvvv wordpress -u vagrant --private-key .vagrant/machines/wordpress/virtualbox/private_key -i hosts -m shell -a 'echo Hello, World'
mysql -u root
    show databases;
    use wordpress_db;
    show tables;

mysql -u wordpress_user -p 

ansible-playbook provisioning.yml -i hosts
```