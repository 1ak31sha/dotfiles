
#-----------------#
#~- FISH CONFIG -~#
#-----------------#
#
function fish_vi_cursor; end
fish_vi_key_bindings

set -x DOTFILES        ~/workspace/dotfiles
#set -x PYENV_ROOT       $HOME/.pyenv
set -x ANDROID_HOME    $HOME/Library/Android/sdk
set -x NVM_DIR         $HOME/.nvm

set -x PATH $PATH      $ANDROID_HOME/tools
set -x PATH $PATH      $ANDROID_HOME/tools/bin
set -x PATH $PATH      $ANDROID_HOME/platform-tools
set -x EDITOR          nvim
set -x PATH $PATH      $HOME/.local/bin
set -x JAVA_HOME       /Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home

set cmd uname
if [ (eval $cmd) = "Linux" ]
  xmodmap ~/.Xmodmap
end

#set -x JAVA_HOME       /usr/bin/java
set -x GEM_PATH        ~/.gem
set -x GEM_HOME        ~/.gem
set -x PATH $PATH      /usr/local/bin

source $DOTFILES/.sharedrc
#source $NVM_DIR/nvm.sh
#source $NVM_DIR/bash_completion

#todo
function gclone
  git clone 'https://github.com/1ak31sha/' + $argv
end

function startemu
  ruby $DOTFILES/ruby/emulator.rb
end

function  givelight
  ruby $DOTFILES/ruby/maclight.rb
end


function killemu
  ruby $DOTFILES/ruby/killemu.rb
end

function gif
  ruby $DOTFILES/ruby/gif.rb
end

function setup_d
  sh $DOTFILES/tmux/setup_dotfiles.sh
end

function setup_rn
  sh $DOTFILES/tmux/setup_rn.sh
end

function gitb
  ruby $DOTFILES/git/gitbranch.rb
end

function  ecp_runTest
  ruby $DOTFILES/ruby/run_if_more_than_60s.rb $argv
end

function  ecp_runAll
  gradle clean --info allE2ETests -Dkarate.env=preprod -Dkarate.properties=https://39u3st4qhj.execute-api.us-east-1.amazonaws.com/e2e -PtestProfile=a-corporate-preprod -PprojectName=ecpregistry -PtopicARN=a204121-control-ecpmeta-e2e-use1 -PRegistryQueue=a204121-registryqueue-ecpmeta-e2e-use1 -Ptestprefix=foo -PSSM_PASSWORD_PARAMETER=a204121-kms-ecpmeta-registry -PBUCKETNAME=a204121-content-ecpmeta-e2e-use1 -PTABLENAME=a204121-s3indextable-ecpmeta-e2e-use1 -Dcucumber.options="--tags @Graph"
end

function debug_ecp
  git checkout debug -- src/main/java/com/tr/ecp/awsregistryutils/RegistryHelperUtils.java
  git reset src/main/java/com/tr/ecp/awsregistryutils/RegistryHelperUtils.java
end

function cloud-login
  set todays_date (date "+%d%m%y")
  set passw (cat $DOTFILES/passwords/tr_cld)
  cloud-tool-fr login --username MGMT\\m6064854 --password "$passw$todays_date"
end

function cld
  set todays_date (date "+%d%m%y")
  set passw (cat $DOTFILES/passwords/tr_cld)
  cloud-tool  -vvv --region us-east-1 --profile=a-corporate-prepod login --username MGMT\\m6064854 --password "$passw$todays_date"
end

function cld2
  set todays_date (date "+%d%m%y")
  set passw (cat $DOTFILES/passwords/tr_cld)
  cloud-tool login --username MGMT\\m6064854 --password "$passw$todays_date"
end

#Clean Environment variables - dupes (run in bash - this is bash syntax)
#echo $(perl -e 'printf qq{export %s="%s";}, $_, join(":", grep { -d $_ && !$seen{ $_ }++ } split /:/, $ENV{$_}), $_ for( qw(PATH MANPATH) );')
#eval $(perl -e 'printf qq{export %s="%s";}, $_, join(":", grep { -d $_ && !$seen{ $_ }++ } split /:/, $ENV{$_}), $_ for( qw(PATH MANPATH) );')



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
