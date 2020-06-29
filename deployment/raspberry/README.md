# raspberry-zero-w - tyrion

cp ssh /media/afonso/boot
cp wpa_supplicant.conf /media/afonso/boot

# raspberry-3b-plus - armored-batman

[ubuntu-network-config](https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi#3-wifi-or-ethernet)

cp network-config /media/afonso/system-boot


# find ips

hostname -I

sudo apt-get install nmap
nmap -F 192.168.[x].0/24

sudo apt-get install net-tools
arp -na | grep -i "b8:27:eb"

# copying keys

ssh-copy-id -i ~/.ssh/afonsobarrenha_id_rsa.pub pi@192.168.15.39
ssh-copy-id -i ~/.ssh/afonsobarrenha_id_rsa.pub ubuntu@192.168.15.40


# configure hostnames

ansible all -i hosts -m shell -a 'sudo apt-get update'
ansible all -i hosts -m shell -a 'sudo apt-get upgrade -y'

ansible tyrion -i hosts -m shell -a 'hostname'
ansible tyrion -i hosts -m shell -a 'sudo hostnamectl set-hostname tyrion'

ansible armored-batman -i hosts -m shell -a 'hostname'
ansible armored-batman -i hosts -m shell -a 'sudo hostnamectl set-hostname armored-batman'

ansible all -i hosts -m shell -a 'sudo apt-get install avahi-daemon -y'

ansible all -i hosts -m shell -a 'sudo invoke-rc.d avahi-daemon force-reload'

ssh pi@tyrion.local
ssh ubuntu@armored-batman.local

--

ansible all -i hosts -m ping
ansible all -i hosts -a "/bin/echo hello"
