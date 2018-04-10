#####################
# Lakeisha's Dot Files #
#####################

# Run these ‘defaults’ commands in terminal # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# defaults write com.apple.finder AppleShowAllFiles YES
# defaults write com.apple.screencapture location ~/Documents/Screenshots
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
. ~/workspace/1ak31sha/.sharedrc
  value=`cat ~/workspace/1ak31sha/value.dat`
value=`expr ${value} + 1`
# show it to the userj
echo "    <3: ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
echo "    <3: Hi Lakeisha! <3    "
echo "    <3:                   "
echo "    <3: `date`           " 
echo "    <3: #sources: ${value}"#since april 1st 2018
echo "    <3: ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"

#if $1="yo" ; then
#	echo "yay"
#else
#	fish
#fi
# and save it for next time
echo "${value}" > ~/workspace/1ak31sha/value.dat
######################################################


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
#oexport -n PS1="\[\033[1;35m\]\W \[\033[1;36m\]\$(parse_git_branch)\$ \[\033[1;32m\]"
export -n PS1="Lakeisha<3:\$(parse_git_branch)"
#export -n PS1="$$$ "
#export -n PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(parse_git_branch)\\n$ "

# Exports #

#clean exports
#PATH=$(printf "%s" "$PATH" | awk -v RS=':' '!a[$1]++ { if (NR > 1) printf RS; printf $1 }')


export CLICOLOR=1
# export EDITOR=~/bin/subl
export EDITOR=/usr/local/bin/sublime
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
export EDITOR=/usr/local/bin/sublime
export GIT_EDITOR=/usr/bin/vim
export PYENV_ROOT=$HOME/.pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
#Web
alias port='lsof -n -i4TCP:'

#Android
export ANDROID_SDK="$HOME/Library/Android/sdk"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="/Users/scc/Library/gradle-2.14/bin:$PATH"
# export JAVA_HOME="/usr/bin/java"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home"
export NODE_PATH="/usr/local/lib/node_modules"
# export PATH="$JAVA_HOME/bin:$PATH"
#iOS
export GEM_HOME=$HOME/.gem

#ReactNative
alias rnios='react-native run-ios --simulator="iPhone 7"'
alias ra='react-native run-android'




# # Git
# source ~/git-completion.bash
# alias gs='git status -s'
# alias gf='git fetch'
# alias gfii='git fetch integration:integration'
# alias gd='git diff'
# alias ga='git add . && git status -s'
# alias gco='git checkout'
# alias gl='git log --oneline --decorate --graph'
# alias gla='git log --oneline --decorate --all --graph'
# alias gb='git branch'
# alias gcop='git checkout @{-1}'


# # alias latest="git checkout integration / 
# # git pull grc integration /
# # git checkout @{-1}"
# alias srcfish="source ~/.bashrc"
# alias fishrc="nvim ~/.bashrc"
# alias srcbash="source ~/.bashrc"
#-Dpassword=LowerEnvUser_2 -Dhost=ci -Dbrowser='firefox' -Dcucumber.options=' \
#--format json:C:/Jenkins/workspace/lakeisha-UI-CI-FF3/target/cucumber.json --tags @case_summary_wrt_rescreening '"

#TR
#alias clean verify -P !gather-scm-details -pl acceptance-tests-common,ui-acceptance-tests  -Duser=lci.mainUser  -Dpassword=LowerEnvUser_2 -Dhost=ci -Dbrowser="firefox" -Dosversion="WINDOWS" -Dcucumber.options=" --format json:C:/Jenkins/workspace/workspace/accelus-wc1-bdd-CI-UI-MediaCheck-Firefox-Results/target/cucumber.json --tags @media_check_results "
# alias unit_mcrv="grunt test --module=test/view/MediaCheck/MediaCheckResultsView"
# alias unit_mcrc="grunt test --module=test/control/MediaCheckResultsController.js"
# alias unit1="grunt test --module=test/view/MediaCheck/MediaCheckResultsView"
# alias unit1="grunt test --module=test/view/MediaCheck/MediaCheckResultsView"
# alias debug="git checkout debug -- ui-acceptance-tests/src/test/java/com/thomsonreuters/grc/accelus/wc1/ui/setup/UISetup.java"
# alias debuglocal="git checkout debug -- ui-acceptance-tests/src/test/java/com/thomsonreuters/grc/accelus/wc1/ui/pages/CaseMatchMediaCheckPage.java \
#  ui-acceptance-tests/src/test/java/com/thomsonreuters/grc/accelus/wc1/ui/stepdefinitions/CaseMatchMediaCheckPage_sd.java"
# # alias debuglocal='gco debug -- ui-acceptance-tests/src/test/java/com/thomsonreuters/grc/accelus/wc1/ui/pages/CaseMatchMediaCheckPage.java ui-acceptance-tests/src/test/java/com/thomsonreuters/grc/accelus/wc1/ui/stepdefinitions/CaseMatchMediaCheckPage_sd.java'
# alias debugOff='gco mediaCheck -- ui-acceptance-tests/src/test/java/com/thomsonreuters/grc/accelus/wc1/ui/setup/UISetup.java'
# # alias debugr='git fetch grc integration && git checkout integration && git pull' - how to remember current branch?

# alias gcoi='git checkout integration'
# alias gpgi='git pull grc integration'
# alias sb='source ~/.bashrc'
# alias gri='git rebase integration'
# alias gfi='git fetch grc integration'
# alias bashrc='nvim ~/.bashrc'
# alias vimrc='nvim ~/.config/nvim/init.vim'


# based on https://developer.atlassian.com/blog/2015/01/a-better-pull-request/#comment-1811819137
# $1 is the merge target, $2 the source
# alias md="!f() { git merge-tree $(git merge-base $1 $2) $1 $2 | colordiff | less -RF; }; f"

# #This directory
# alias kdot='cd ~/workspace/kdotFiles'

# # Shortcuts

# #vim
# alias vims='cat ~/workspace/kdotFiles/vim_shortcuts.txt'
# #sublime
# alias subl='sublime'
# alias ss='cat ~/workspace/kdotFiles/sublime_shortcuts.txt'
# alias ijs='cat ~/workspace/kdotfiles/intelliJ_shortcuts.txt'
# #rails
# alias rs='cat ~/workspace/kdotFiles/rails_shortcuts.txt'

#alias lines='find . -name '*.php' | xargs wc -l'

#Random

# alias ..='cd ..'
# alias ls='ls -FGlAhp'
# function cdd(){ cd "$@" && ls; }
# alias cd='cdd'



# alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
# alias memHogsTop='top -l 1 -o rsize | head -20'
# alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
# alias topForever='top -l 9999999 -s 10 -o cpu'
# alias ttop="top -R -F -s 10 -o rsize"
# alias openPorts='sudo lsof -i | grep LISTEN'
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
#"~ $ sudo chown -R u6064854 /Users/u6064854/Library/Logs/pip
#"~ $ sudo chown -R u6064854 /Users/u6064854/Library/Caches/pip

#export LS_COLORS='di=0;36:'
