[ -z "$PS2" ] && return

function parse_git_dirty {
  git diff --no-ext-diff --quiet --exit-code &> /dev/null || echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

myfunction() {
 git status --porcelain | sed -n '${1} s/^...//p' | xargs git diff
 }


export CLICOLOR=1
export EDITOR='vim -f'

export -n PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(parse_git_branch)\\n$ "

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

#Git Aliases
alias gs='git status'
alias gf='git fetch'
alias gd='git diff'
alias gco='git checkout'
alias gl='git log'
alias gb='git branch'

#General Aliases
alias ..='cd ..'
alias ll='ls -FGlAhp'


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=UTF-8
#  [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

set -o vi

# Configure better history
shopt -s histappend
HISTFILESIZE=10000000
HISTSIZE=1000000000
PROMPT_COMMAND='history -a'
#test comment
alias kdot='cd ~/workspace/kdotFiles'




eval "$(rbenv init -)"

HISTFILESIZE=10000000

#////defaults write com.apple.finder AppleShowAllFiles YES











