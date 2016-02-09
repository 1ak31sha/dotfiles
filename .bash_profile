if [ -f ~/.bashrc ];
then
  source ~/.bashrc
fi

export PATH=/Users/scc/Library/Android/sdk/tools:$PATH
export PATH=/Users/"YOURUSER"/Library/Android/sdk/platform-tools:$PATH
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH=~/bin:$PATH
export PATH="$PATH:/usr/local/bin"
export PATH="/usr/local/git/bin:/sw/bin:/usr/local/bin:/usr/local:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PATH="/Users/scc/Library/gradle-2.9/bin:$PATH"
export EDITOR=~/bin/subl


#GEM
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

#General Aliases


#Git Aliases
alias g='git status'
alias gl='git log'
alias gb='git branch'

## Show common commands
#history |
#> awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' |
#> sort -rn |
#> head
eval "$(rbenv init -)"

HISTFILESIZE=10000000

////defaults write com.apple.finder AppleShowAllFiles YES