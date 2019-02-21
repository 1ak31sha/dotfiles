#!/bin/bash

#pre req 
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
ln -s ~/workspace/dotfiles/vim_spelling ~/.config/nvim/spell/en.utf-8.add
ln -s ~/workspace/dotfiles/.tmux-powerlinerc ~/.tmux-powerlinerc
ln -s ~/workspace/dotfiles/tmux/lakeisha_theme.sh ~/installs/tmux-powerline/themes/lakeisha_theme.sh
ln -s ~/workspace/dotfiles/.rainbarf.conf ~/.rainbarf.conf
ln -s ~/workspace/dotfiles/.prettierrc.yaml ~/.prettierrc.yaml
ln -s ~/workspace/dotfiles/git/ssh_config ~/.ssh/config
ln -sf ~/workspace/dotfiles/monokai.vim ~/.config/nvim/plugged/vim-monokai/colors
ln -sf ~/workspace/dotfiles/nerdtreeSyntaxHighlight.vim ~/.config/nvim/plugged/vim-nerdtree-syntax-highlight/after/syntax/nerdtree.vim


