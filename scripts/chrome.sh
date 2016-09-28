#!/usr/bin/env sh
if [[ $(uname -m) == "i686" ]]
then
  wget -O /tmp/google-chrome-stable_current_i386.deb https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
  sudo dpkg -i /tmp/google-chrome-stable_current_i386.deb
elif [[ $(uname -m) == "x86_64" ]]
then
  wget -O /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb
fi
sudo apt-get -f install
