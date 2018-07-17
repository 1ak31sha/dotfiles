#!/bin/bash
cd ~/workspace/1ak31sha
tmux rename-window 'dotfiles'
#tmux split-window -v -p 30
tmux split-window -v -p 50 
#tmux split-window -h -p 50
nvim -c "::NERDTreeToggle"

