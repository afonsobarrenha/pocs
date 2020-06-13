touch ssh
sudo mount -o remount rw /media/afonso/boot/
cp ssh /media/afonso/boot
cp wpa_supplicant.conf /media/afonso/boot


hostname -I

sudo apt-get install nmap
nmap -F 192.168.[x].0/24

sudo apt-get install net-tools
arp -na | grep -i "b8:27:eb"

ssh pi@raspberrypi.local (raspberry)

sudo apt-get install avahi-daemon

ssh-keygen
ssh-copy-id -i ~/.ssh/afonsobarrenha_id_rsa.pub pi@raspberrypi-zero-w.local
ssh-copy-id -i ~/.ssh/afonsobarrenha_id_rsa.pub ubuntu@raspberrypi-3b-plus.local

ssh pi@raspberrypi-zero-w.local
ssh ubuntu@raspberrypi-3b-plus.local

--

ansible all -i hosts -m ping
ansible all -i hosts -a "/bin/echo hello"
ansible all -i hosts -m shell -a 'sudo apt-get update'
ansible all -i hosts -m shell -a 'sudo apt-get upgrade -y'