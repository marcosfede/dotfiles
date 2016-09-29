#!/usr/bin/env sh
sudo apt-get install -y unity-tweak-tool compizconfig-settings-manager
echo icons on menus
gsettings set org.gnome.desktop.interface menus-have-icons true && gsettings set org.gnome.desktop.interface buttons-have-icons true
echo upgrading system
sudo apt-get -y dist-upgrade
