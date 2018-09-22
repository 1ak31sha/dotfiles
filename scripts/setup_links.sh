#!/bin/bash
#pre req 

########
# - install fish

# - 
mkdir ~/.config/nvim
mkdir ~/.config/fish
ln -s ~/workspace/dotfiles/config.fish ~/.config/fish/config.fish
ln -s ~/workspace/dotfiles/init.vim ~/.config/nvim/init.vim
ln -s ~/workspace/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/workspace/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/workspace/dotfiles/.bashrc ~/.bashrc
ln -s ~/workspace/dotfiles/.sharedrc ~/.sharedrc
ln -s ~/workspace/dotfiles/.agignore ~/.agignore
ln -s ~/workspace/dotfiles/.gitconfig ~/.gitconfig
