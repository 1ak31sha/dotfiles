
#-----------------#
#~- FISH CONFIG -~#
#-----------------#
#
source $DOTFILES/.sharedrc
#status --is-interactive; and source (pyenv init -|psub)
fish_vi_key_bindings
#alias emu = 'ruby ~/workspace/1ak31sha/ruby/emulator.rb'
#alias emukill = 'ruby ~/workspace/1ak31sha/ruby/killemu.rb'
function startemu
   ruby $DOTFILES/ruby/emulator.rb 
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
function awslog 
  sh $DOTFILES/tmux/login.sh
end

function co
	ruby $DOTFILES/git/gitbranch.rb 
	end

function  ecp_runTest
#  gradle clean --info allE2ETests -Dkarate.env=preprod -Dkarate.properties=https://mkazgdah0l.execute-api.us-east-1.amazonaws.com/u0056119 -PtestProfile=a-corporate-preprod -PprojectName=ecpregistry -PtopicARN=a204121-control-ecpmeta-u0056119-use1 -PRegistryQueue=a204121-registryqueue-ecpmeta-u0056119-use1 -Ptestprefix=foo -PSSM_PASSWORD_PARAMETER=a204121-kms-ecpmeta-registry -PBUCKETNAME=a204121-content-ecpmeta-u0056119-use1 -PTABLENAME=a204121-s3indextable-ecpmeta-u0056119-use1 -Dcucumber.options="--tags @Graph"
  echo "fish got args " 
  echo $argv
   ruby $DOTFILES/ruby/run_if_more_than_60s.rb $argv
end

function testargs

  echo "hello moto"
  echo $argv
  ruby $DOTFILES/ruby/testargs.rb $argv
end

function  ecp_runAll
  #gradle clean --info allE2ETests -Dkarate.env=preprod -Dkarate.properties=https://mkazgdah0l.execute-api.us-east-1.amazonaws.com/u0056119 -PtestProfile=a-corporate-preprod -PprojectName=ecpregistry -PtopicARN=a204121-control-ecpmeta-u0056119-use1 -PRegistryQueue=a204121-registryqueue-ecpmeta-u0056119-use1 -Ptestprefix=foo -PSSM_PASSWORD_PARAMETER=a204121-kms-ecpmeta-registry -PBUCKETNAME=a204121-content-ecpmeta-u0056119-use1 -PTABLENAME=a204121-s3indextable-ecpmeta-u0056119-use1 -Dcucumber.options="--tags ~@Graph"
  gradle clean --info allE2ETests -Dkarate.env=preprod -Dkarate.properties=https://39u3st4qhj.execute-api.us-east-1.amazonaws.com/e2e -PtestProfile=a-corporate-preprod -PprojectName=ecpregistry -PtopicARN=a204121-control-ecpmeta-e2e-use1 -PRegistryQueue=a204121-registryqueue-ecpmeta-e2e-use1 -Ptestprefix=foo -PSSM_PASSWORD_PARAMETER=a204121-kms-ecpmeta-registry -PBUCKETNAME=a204121-content-ecpmeta-e2e-use1 -PTABLENAME=a204121-s3indextable-ecpmeta-e2e-use1 -Dcucumber.options="--tags @Graph"
end

function debug_ecp
  git checkout debug -- src/main/java/com/tr/ecp/awsregistryutils/RegistryHelperUtils.java
end

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
set -x JAVA_HOME       /Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home 
set -x GEM_HOME        ~/.gem
set -x GEM_PATH        ~/.gem
set -x DOTFILES        ~/workspace/dotfiles


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
