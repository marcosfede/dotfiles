#!/bin/bash

# pacaur -S git curl wget zsh fish node tree vim neovim yarn atom visual-studio-code docker docker-machine docker-compose google-chrome synapse albert firefox paper-icon-theme-git qbittorrent spotify tilix vlc --noedit --noconfirm
# git
git config --global user.name "Federico Marcos"
git config --global user.email federico.marcos@celerative.com
# install fisherman plugin manager
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

# zsh
echo 'setting up bash zsh'
rm ~/.bashrc ~/.zshrc ~/.envvariables ~/.zpreztorc ~/.zshenv
ln -s ~/dotfiles/files/.zshrc ~/.zshrc
ln -s ~/dotfiles/files/.zpreztorc ~/.zpreztorc
ln -s ~/dotfiles/files/.zshenv ~/.zshenv
ln -s ~/dotfiles/files/.envvariables ~/.envvariables
# tldr
sudo npm install -g tldr
# aliases
echo "setting up aliases"
rm ~/.aliases
ln -s ~/dotfiles/files/.aliases ~/.aliases
# neovim
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

zsh ./scripts/zprezto.zsh

# install ohmyfish
rm ~/.config/fish/config.fish
ln -s ~/dotfiles/files/config.fish ~/.config/fish/config.fish
curl -L http://get.oh-my.fish | fish