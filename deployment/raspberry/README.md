# raspberry-zero-w - tyrion

cp ssh /media/afonso/boot
cp wpa_supplicant.conf /media/afonso/boot

# raspberry-3b-plus - armored-batman

[ubuntu-network-config](https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi#3-wifi-or-ethernet)

cp network-config /media/afonso/system-boot


# find ips

hostname -I

sudo apt-get install nmap net-tools

nmap -F 192.168.[x].0/24
arp -na | grep -i "b8:27:eb"

# copying keys

ssh-copy-id -i ~/.ssh/afonsobarrenha-key.pub pi@192.168.15.39
ssh-copy-id -i ~/.ssh/afonsobarrenha-key.pub ubuntu@192.168.15.40

ssh pi@tyrion.local
ssh ubuntu@armored-batman.local

# configure hostnames

ansible all -i hosts -m ping
ansible all -i hosts -a "/bin/echo hello"

ansible all -i hosts -m shell -a 'sudo apt-get update'
ansible all -i hosts -m shell -a 'sudo apt-get upgrade -y'

ansible-playbook -i hosts tyrion-provisioning.yml
ansible-playbook -i hosts armored-batman-provisioning.yml

ansible-playbook -i hosts raspberry-provisioning.yml

ansible all -i hosts -a "sudo shutdown -r now"