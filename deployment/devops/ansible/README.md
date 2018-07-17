#Ansible

```
ansible -vvvv wordpress -u vagrant --private-key .vagrant/machines/wordpress/virtualbox/private_key -i hosts -m shell -a'echo Hello, World'
mysql -u root
```