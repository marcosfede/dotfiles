#!/bin/bash

yay -S git ttf-fira-code curl wget zsh fish node tree vim neovim yarn visual-studio-code-bin docker docker-machine docker-compose google-chrome synapse firefox la-capitaine-icon-theme qbittorrent spotify tilix vlc --noconfirm
# git
cd scripts
bash fede-git-config.sh
bash vimconfig.sh
bash sshkeys.sh
bash prompts.sh

cd linux/arch
./swap 4G
bash swappiness.sh
bash fstrim.sh