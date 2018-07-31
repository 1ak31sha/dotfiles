
#-----------------#
#~- FISH CONFIG -~#
#-----------------#
#
source ~/workspace/1ak31sha/.sharedrc
status --is-interactive; and source (pyenv init -|psub)
fish_vi_key_bindings

#alias emu = 'ruby ~/workspace/1ak31sha/ruby/emulator.rb'
#alias emukill = 'ruby ~/workspace/1ak31sha/ruby/killemu.rb'
function startemu
   ruby ~/workspace/1ak31sha/ruby/emulator.rb 
end

function killemu 
   ruby ~/workspace/1ak31sha/ruby/killemu.rb 
end

function gif
  ruby ~/workspace/1ak31sha/ruby/gif.rb
end

function setup_d
  sh ~/workspace/1ak31sha/tmux/setup_dotfiles.sh
end

function setup_rn
  sh ~/workspace/1ak31sha/tmux/setup_rn.sh
end
function  ecp_runTest
#  gradle clean --info allE2ETests -Dkarate.env=preprod -Dkarate.properties=https://mkazgdah0l.execute-api.us-east-1.amazonaws.com/u0056119 -PtestProfile=a-corporate-preprod -PprojectName=ecpregistry -PtopicARN=a204121-control-ecpmeta-u0056119-use1 -PRegistryQueue=a204121-registryqueue-ecpmeta-u0056119-use1 -Ptestprefix=foo -PSSM_PASSWORD_PARAMETER=a204121-kms-ecpmeta-registry -PBUCKETNAME=a204121-content-ecpmeta-u0056119-use1 -PTABLENAME=a204121-s3indextable-ecpmeta-u0056119-use1 -Dcucumber.options="--tags @Graph"
   ruby ~/workspace/1ak31sha/ruby/run_if_more_than_60s.rb
end

function  ecp_runAll
  gradle clean --info allE2ETests -Dkarate.env=preprod -Dkarate.properties=https://mkazgdah0l.execute-api.us-east-1.amazonaws.com/u0056119 -PtestProfile=a-corporate-preprod -PprojectName=ecpregistry -PtopicARN=a204121-control-ecpmeta-u0056119-use1 -PRegistryQueue=a204121-registryqueue-ecpmeta-u0056119-use1 -Ptestprefix=foo -PSSM_PASSWORD_PARAMETER=a204121-kms-ecpmeta-registry -PBUCKETNAME=a204121-content-ecpmeta-u0056119-use1 -PTABLENAME=a204121-s3indextable-ecpmeta-u0056119-use1 -Dcucumber.options="--tags ~@Graph"
end

function debug_ecp
  git checkout debug -- src/main/java/com/tr/ecp/awsregistryutils/RegistryHelperUtils.java
end
#set -x GEM_HOME         $HOME/.gem
#
#Clean Environment variables - dupes (run in bash - this is bash syntax)
#echo $(perl -e 'printf qq{export %s="%s";}, $_, join(":", grep { -d $_ && !$seen{ $_ }++ } split /:/, $ENV{$_}), $_ for( qw(PATH MANPATH) );')
#eval $(perl -e 'printf qq{export %s="%s";}, $_, join(":", grep { -d $_ && !$seen{ $_ }++ } split /:/, $ENV{$_}), $_ for( qw(PATH MANPATH) );')

#set -x PYENV_ROOT       $HOME/.pyenv
set -x ANDROID_HOME    $HOME/Library/Android/sdk
set -x PATH $PATH      $ANDROID_HOME/tools
set -x PATH $PATH      $ANDROID_HOME/tools/bin
set -x PATH $PATH      $ANDROID_HOME/platform-tools
set -x EDITOR          nvim
set -x PATH $PATH      $HOME/.local/bin
set -x JAVA_HOME       /Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home 
set -x GEM_HOME        ~/.gem
set -x GEM_PATH        ~/.gem
#
#function path(){
#    old=$IFS
#    IFS=:
#    printf "%s\n" $PATH
#    IFS=$old
#}
#set -x PATH $PATH /Users/u6064854/.pyenv/shims/python2
#set -x PATH $PATH /usr/local/opt/python@2/bin
#set -x PATH $PATH $HOME/bin
#set -x PATH $PATH /usr/local/bin/npm
#set -x PATH ~/.rbenv/shims $PATH

# alias lspath='source ~/.config/fish/path.sh'
# alias vim='nvim'
# alias vimrc='vim ~/.config/nvim/init.vim'
# #alias gpgm = 'git pull grc mediaCheck'
# alias subl='sublime'
# alias fishrc='vim ~/.config/fish/config.fish'
# alias srcfish='source ~/.config/fish/config.fish'
# alias srctmux='tmux source-file ~/.tmux.conf'

# alias debug='git checkout debug -- ui-acceptance-tests/src/test/java/com/thomsonreuters/grc/accelus/wc1/ui/setup/UISetup.java'

# alias tmuxs='cat ~/workspace/kdotfiles/tmux_shortcuts.txt'

# alias gs='git status -s'
# alias gf='git fetch'
# alias gfii='git fetch integration:integration'
# alias gd='git diff'
# alias ga='git add . ;and git status -s'
# alias gco='git checkout'
# alias gl='git log --oneline --decorate --graph'
# alias gla='git log --oneline --decorate --all --graph'
# alias gb='git branch'
# alias gcop='git checkout -'

function edit_command_buffer --description 'Edit the command buffer in an external editor'
    set -l f (mktemp)
    if set -q f[1]
        mv $f $f.fish
        set f $f.fish
    else
        # We should never execute this block but better to be paranoid.
        set f /tmp/fish.(echo %self).fish
        touch $f
    end

    set -l p (commandline -C)
    commandline -b > $f
    if set -q EDITOR
        eval $EDITOR $f
    else
        vim $f
    end

    commandline -r (cat $f)
    commandline -C $p
    command rm $f
end

















#command ruby ruby/drake.rb
