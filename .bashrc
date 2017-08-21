#####################
# Keven's Dot Files #
#####################

# Run these ‘defaults’ commands in terminal # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# defaults write com.apple.finder AppleShowAllFiles YES
# defaults write com.apple.screencapture location ~/Documents/Screenshots
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# This will set the terminal to show working directory and git diff dirty status

[ -z "$PS2" ] && return

function git_branch {
  local git_status="$(git status 2> /dev/null)"
  local on_branch="On branch ([^${IFS}]*)"
  local on_commit="HEAD detached at ([^${IFS}]*)"

  if [[ $git_status =~ $on_branch ]]; then
    local branch=${BASH_REMATCH[1]}
    echo "($branch)"
  elif [[ $git_status =~ $on_commit ]]; then
    local commit=${BASH_REMATCH[1]}
    echo "($commit)"
  fi
}


function parse_git_dirty {
  git diff --no-ext-diff --quiet --exit-code &> /dev/null || echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

myfunction() {
 git status --porcelain | sed -n '${1} s/^...//p' | xargs git diff
 }

#export -n PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(parse_git_branch)\\n$ "
export -n PS1="\[\033[1;35m\]\W \[\033[1;36m\]\$(parse_git_branch)\$ \[\033[1;32m\]"
#export -n PS1="$$$ "

# Exports #

export CLICOLOR=2
export EDITOR=~/bin/subl
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=UTF-8

export PATH=/bin:/usr/bin:"$PATH"
export PATH=/Users/scc/Library/Android/sdk/tools:$PATH
export PATH=/Users/"YOURUSER"/Library/Android/sdk/platform-tools:$PATH
export PATH=/Users/"YOURUSER"/Library/Android/sdk/emulator:$PATH
export PATH=/Users/"YOURUSER"/Library/Android/sdk/tools/bin:$PATH
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH=~/bin:$PATH
export PATH="$PATH:/usr/local/bin"
export PATH="/usr/local/git/bin:/sw/bin:/usr/local/bin:/usr/local:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
#export PATH="/Users/scc/Library/gradle-2.9/bin:$PATH"
export PATH="~/Library/Android/sdk/platform-tools:$PATH"
export PATH="~/.gem/bin:$PATH"
export EDITOR=~/bin/subl

#export PATH=/Users/scc/Library/Android/sdk/tools:$PATH
#export PATH=/Users/"YOURUSER"/Library/Android/sdk/platform-tools:$PATH
#export PATH="$HOME/.rbenv/shims:$PATH"
#export PATH=“$HOME/bin:$PATH”
#export PATH="$PATH:/usr/local/bin:$PATH"
#export PATH="/usr/local/git/bin:$PATH"
#export PATH="/sw/bin:/usr/local/bin:$PATH"
#export PATH="/usr/local:$PATH"
#export PATH="/usr/local/sbin:$PATH"
#export PATH= "/usr/local/mysql/bin:$PATH"
#export PATH="/Users/scc/Library/gradle-2.9/bin:$PATH"
#export PATH=$GEM_HOME/bin:$PATH

#Web
alias port='lsof -n -i4TCP:'

#Android
export ANDROID_SDK="$HOME/Library/Android/sdk"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="/Users/scc/Library/gradle-2.14/bin:$PATH"
#export JAVA_HOME="/usr/bin/java"
# export PATH="$JAVA_HOME/bin:$PATH"
#iOS
export GEM_HOME=$HOME/.gem

#ReactNative
alias rnios='react-native run-ios --simulator="iPhone 7"'
alias ra='react-native run-android'






# Git
alias gs='git status -s'
alias gf='git fetch'
alias gd='git diff'
alias ga='git add .'
alias gco='git checkout'
alias gl='git log --oneline --decorate --all --graph'
alias gb='git branch'

#This directory
alias kdot='cd ~/workspace/kdotFiles'

# Shortcuts

#sublime
alias subl='sublime'
alias ss='cat ~/workspace/kdotFiles/sublime_shortcuts.txt'
#rails
alias rs='cat ~/workspace/kdotFiles/rails_shortcuts.txt'

#alias lines='find . -name '*.php' | xargs wc -l'

#Random
alias ..='cd ..'
alias ls='ls -FGlAhp'
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
alias topForever='top -l 9999999 -s 10 -o cpu'
alias ttop="top -R -F -s 10 -o rsize"
alias openPorts='sudo lsof -i | grep LISTEN'
ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }
function cdd(){ cd "$@" && ls; }

set -o vi
set -o emacs

# Configure better history
shopt -s histappend
HISTFILESIZE=10000000
HISTSIZE=1000000000
PROMPT_COMMAND='history -a'
HISTFILESIZE=10000000

### NOT USED
#eval "$(rbenv init -)"
#source ~/.xsh
#alias sublpackages = 'open ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/'
#function ga() { gadd && ls; }
#function k(){ cd ~ "$@" & ls; }
#  [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
###
