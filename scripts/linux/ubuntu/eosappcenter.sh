#!/bin/bash
killall appcenter
sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop
gnome-session-properties
