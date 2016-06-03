#!/bin/bash
echo 'setting up bash zsh'
rm ~/.bashrc ~/.zshrc ~/.envvariables
ln -s ~/dotfiles/files/.zshrc ~/.zshrc
ln -s ~/dotfiles/files/.bashrc ~/.bashrc
ln -s ~/dotfiles/files/.envvariables ~/.envvariables
