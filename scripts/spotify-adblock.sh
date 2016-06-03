#!/bin/bash
echo "installing new spotify"
wget http://repository-origin.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.0.31.56.g526cfefe-33_amd64.deb 
sudo dpkg -i spotify-client_1.0.29.92.g67727800-21_amd64.deb
sudo rm spotify-client_1.0.29.92.g67727800-21_amd64.deb
#########
echo "spotify addkiller"
sudo apt-get install -y x11-utils pulseaudio-utils libnotify-bin xdotool vlc
git clone https://github.com/SecUpwN/Spotify-AdKiller.git
cd Spotify-AdKiller
./install.sh
cd ..
sudo rm -R Spotify-AdKiller
echo "export PATH=$PATH:$HOME/bin" >> ~/.bashrc
cd ~/bin && mkdir -p dns-block && cd dns-block && wget http://ur1.ca/jpttl -O dns-block.c && gcc -Wall -fPIC -c -o dns-block.o dns-block.c && gcc -shared -fPIC -Wl,-soname -Wl,dns-block.so -ldl -o dns-block.so dns-block.o && cd Downloads
#########
