#!/bin/bash
echo "installing mousebinds"
cp -R files/scripts ~/
cp files/.xbindkeysrc ~/
sudo apt-get install -y xdotool xautomation xbindkeys xbindkeys-config
xbindkeys
