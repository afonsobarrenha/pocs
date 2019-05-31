touch ssh
sudo mount -o remount rw /media/afonso/boot/
cp ssh /media/afonso/boot
cp wpa_supplicant.conf /media/afonso/boot

sudo apt-get install nmap

hostname -I

nmap -F 192.168.0.0/24

ssh-keygen
ssh-copy-id -i ~/.ssh/id_rsa.pub pi@armoredbatman.local
ssh-copy-id -i ~/.ssh/id_rsa.pub pi@hulkbuster.local

ssh pi@armoredbatman.local
ssh pi@hulkbuster.local