https://www.filipeflop.com/blog/modo-quiosque-com-raspberry-pi/
https://pimylifeup.com/raspberry-pi-kiosk/

sudo apt-get purge wolfram-engine scratch scratch2 nuscratch sonic-pi idle3 -y
sudo apt-get purge smartsim java-common minecraft-pi libreoffice* -y

sudo apt-get clean
sudo apt-get autoremove -y

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install xdotool unclutter sed

sudo raspi-config
Selecione 3 Boot Options.
Selecione B1 Desktop/CLI.
Selecione B4 Desktop Autologin.

nano /home/pi/kiosk.sh

#!/bin/bash
 
xset s noblank
xset s off
xset -dpms
 
unclutter -idle 0.5 -root &
 
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences
 
/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk https://www.filipeflop.com https://www.raspberrypi.org &
 
while true; do
#xdotool keydown ctrl+Tab; xdotool keyup ctrl+Tab;
xdotool keydown ctrl+Tab; xdotool keydown ctrl+r; xdotool keyup ctrl+Tab; xdotool keyup ctrl+r;
sleep 20
done

sudo nano /lib/systemd/system/kiosk.service

[Unit]
Description=Chromium Kiosk
Wants=graphical.target
After=graphical.target
 
[Service]
Environment=DISPLAY=:0
Environment=XAUTHORITY=/home/pi/.Xauthority
Type=simple
ExecStart=/bin/bash /home/pi/kiosk.sh
Restart=on-abort
User=pi
Group=pi
 
[Install]
WantedBy=graphical.target

sudo systemctl enable kiosk.service

sudo systemctl start kiosk.service
sudo systemctl stop kiosk.service
sudo systemctl disable kiosk.service