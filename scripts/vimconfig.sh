#!/bin/bash
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='mac'
fi
if [[ $platform == 'linux' ]]; then
	echo "setting up VIM"
	sudo apt-get install -y software-properties-common
	sudo add-apt-repository -y ppa:neovim-ppa/stable
	sudo apt-get update
	sudo apt-get install vim neovim curl -y
elif [[ $platform == 'mac' ]]; then
	brew install neovim/neovim/neovim
fi
mkdir -p ~/.config/nvim/
rm ~/.config/nvim/init.vim ~/.vimrc
ln -s ~/dotfiles/files/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfiles/files/init.vim ~/.vimrc
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
