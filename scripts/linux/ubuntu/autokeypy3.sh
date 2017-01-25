#!/bin/bash
echo Installing Autokey
sudo apt-get install -y python3-pyinotify wmctrl xautomation imagemagick
sudo apt-get install -y python3-gi gir1.2-gtk-3.0 gir1.2-gtksource-3.0 gir1.2-glib-2.0 gir1.2-notify-0.7 python3-dbus zenity
sudo apt install python3 python3-pip -y
pip3 install --user python3-xlib
pip3 install --user autokey-py3
wget "https://drive.google.com/uc?export=download&id=0B0uyhbFQ15ncMlVLSGd3QzZYSjQ" -O autokeys.tar.gz
tar xf autokeys.tar.gz
nohup autokey-gtk &>/dev/null &
sleep 1
mv -v autokeys/Latinhire "$HOME/.config/autokey/data/"
sudo rm -R autokeys.tar.gz autokeys
