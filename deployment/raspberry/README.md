# raspberry-zero-w - tyrion

sudo cp ssh /media/afonsobarrenha/boot
sudo cp wpa_supplicant.conf /media/afonsobarrenha/boot

# raspberry-3b-plus, raspberry-4b-plus - armored-batman, hulk-buster

[ubuntu-network-config](https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi#3-wifi-or-ethernet)

cp network-config /media/afonsobarrenha/system-boot


# find ips

hostname -I

sudo apt-get install nmap net-tools

nmap -F 192.168.[x].0/24
arp -na | grep -i "b8:27:eb"
arp -na | grep -i "dc:a6:32"


# copying keys

ssh-copy-id -i ~/.ssh/afonsobarrenha-key.pub pi@192.168.15.39
ssh-copy-id -i ~/.ssh/afonsobarrenha-key.pub ubuntu@192.168.15.40
ssh-copy-id -i ~/.ssh/afonsobarrenha-key.pub ubuntu@192.168.15.50

ssh pi@tyrion.local
ssh ubuntu@armored-batman.local
ssh ubuntu@hulk-buster.local

# configure hostnames

ansible all -i hosts -m ping
ansible all -i hosts -a "/bin/echo hello"

ansible-playbook -i hosts tyrion-provisioning.yml
ansible-playbook -i hosts armored-batman-provisioning.yml
ansible-playbook -i hosts hulk-buster-provisioning.yml

ansible-playbook -i hosts raspberry-provisioning.yml

ansible all -i hosts -m shell -a "sudo shutdown -h now"