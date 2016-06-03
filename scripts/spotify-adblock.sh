#!/bin/bash
echo "installing new spotify"
wget -q -O tmp.html http://repository-origin.spotify.com/pool/non-free/s/spotify-client/
RELEASE_URL=`python .scripts/latestspotify.py`
rm tmp.html
wget -q $RELEASE_URL

sudo dpkg -i spotify-client*.deb
sudo rm spotify-client*.deb
#########
echo "spotify addkiller"
sudo apt-get install -y x11-utils pulseaudio-utils libnotify-bin xdotool vlc
git clone https://github.com/SecUpwN/Spotify-AdKiller.git
cd Spotify-AdKiller
./install.sh
cd ..
sudo rm -R Spotify-AdKiller
echo "export PATH=$PATH:$HOME/bin" >> ~/.envvariables
CURR_DIR=$(pwd -P)
cd ~/bin && mkdir -p dns-block && cd dns-block && wget http://ur1.ca/jpttl -O dns-block.c && gcc -Wall -fPIC -c -o dns-block.o dns-block.c && gcc -shared -fPIC -Wl,-soname -Wl,dns-block.so -ldl -o dns-block.so dns-block.o
cd $CURR_DIR
#########
