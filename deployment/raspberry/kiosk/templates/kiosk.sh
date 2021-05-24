#!/bin/bash

# Basically, these three commands set the current xsession not to blank out the screensaver  
# and then disables the screensaver altogether.
# The third line disables the entire “display power management system” 
# meaning that the desktop interface should never blank out the screen.
xset s noblank
xset s off
xset -dpms

# This application will hide the mouse from the display whenever it has been idle 
# for longer then 0.5 seconds and will remove it even if it is over the root background.
unclutter -idle 0.5 -root &

# These two lines of the script use sed to search through the Chromium preferences file 
# and clear out any flags that would make the warning bar appear, 
# a behavior you don’t really want happening on your Raspberry Pi Kiosk.
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

# This line launches Chromium with our parameters.
/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk https://www.google.com/webhp?hl=pt-BR https://www.bing.com/?cc=br &

# These lines run a very simple infinite while loop that uses xdotool to 
# mimic pressing CTRL + Tab. Making Chromium switch to the next tab.
# After xdotool has executed its key presses, it then puts the loop to sleep for 15 seconds.
while true; do
   xdotool keydown ctrl+Tab; xdotool keyup ctrl+Tab;
   sleep 10
done