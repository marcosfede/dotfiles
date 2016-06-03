#!/bin/bash
echo "setting up VIM"
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install vim neovim curl -y
mkdir -p ~/.config/nvim/
ln -s ~/dotfiles/files/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfiles/files/init.vim ~/.vimrc
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
