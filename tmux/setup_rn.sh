cd ~/playground/eevee/eevee
tmux split-window -v -p 50 
tmux split-window -h -p 50 
tmux rename-window 'rn'
tmux select-pane -t 2
tmux send-keys -t 2 "npm start" Enter
nvim -c "::NERDTreeToggle"
tmux select-pane -t 1


