
#-----------------#
#~- FISH CONFIG -~#
#-----------------#
#
function fish_vi_cursor; end
fish_vi_key_bindings


abbr -a -g gco git checkout
abbr -a -g gc 'git commit -m\''
abbr -a -g gl git log --oneline --decorate --graph

abbr -a -g ga 'git add . ; git status -s'
abbr -a -g gcan git commit --amend --no-edit
abbr -a -g gcop git checkout -
# doesnt work due to '' evaluates in fish
# abbr -a -g gdui git diff -- . ":(exclude)config/componentData.js"

# git log --shortstat --author="1ak31sha" | grep -E "fil(e|es) changed" | awk '{f
# iles+=$1; inserted+=$4; deleted+=$6} END {print "files changed: ", files, "line
# s inserted: ", inserted, "lines deleted: ", deleted }'
# files changed:  196 lines inserted:  43865 lines deleted:  43633



set -x DOTFILES        ~/workspace/dotfiles
#set -x PYENV_ROOT       $HOME/.pyenv
set -x ANDROID_HOME    $HOME/Library/Android/sdk
set -x NVM_DIR         $HOME/.nvm
set -x NODE_OPTIONS    --max_old_space_size=128192

set -x PATH $PATH      $ANDROID_HOME/tools
set -x PATH $PATH      $ANDROID_HOME/tools/bin
set -x PATH $PATH      $ANDROID_HOME/platform-tools
set -x EDITOR          nvim
set -x PATH $PATH      $HOME/.local/bin
set -x JAVA_HOME       /Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home
#set -x JAVA_HOME       /usr/bin/java
set -x GEM_PATH $PATH       ~/.gem
set -x GEM_HOME $PATH       ~/.gem
set -x PATH $PATH      /usr/local/bin
set -x gimp $PATH      /Applications/GIMP-2.10.app/Contents/MacOS/gimp
set -x gimp $PATH      /Applications/GIMP-2.10.app/Contents/MacOS/
set -x RAINBARF        ~/.rainbarf.conf rainbarf

set -x SHELL /bin/bash

source $DOTFILES/.sharedrc
#source $NVM_DIR/nvm.sh
#source $NVM_DIR/bash_completion

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

function gb
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









## other stuff happens first, like setting some color variables and things that are irrelevant
#  # to this discussion.
#
#  # get the current dir nicely ... replace $HOME with "~"
#  set -l realhome ~
#  set -l dir (string replace -r '^'"$realhome"'($|/)' '~$1' $PWD)
#
#  # start with the "full" directory
#  set -l pl1 "[$USER] $dir"
#
#  # try to get the current branch
#  set -l git_branch (git rev-parse --abbrev-ref HEAD 2> /dev/null)
#
#  if test "$git_branch" != ""
#    # we have a branch, so let's add that in
#    set pl1 "$pl1 ($git_branch)"
#  end
#
#  # get the length
#  set -l pl1_len (string length $pl1)
#
#  if test $pl1_len -gt $COLUMNS
#    # too long, use the shortened version of dir instead
#    set dir (prompt_pwd)
#  end
#
#  # we can now build common pieces of the prompt, but because we need to
#  # choose colors based on state, we have to reevaluate some things
#  set -l prompt_line_1 '\n%s[%s] %s%s%s'
#  set -l prompt_line_1_args "$user_color" $USER "$color_blue" "$dir" "$color_normal"
#  set -l prompt_line_2 '%s->%s '
#  set -l prompt_line_2_args "$shell_status_color" "$color_normal"
#
#  if test "$git_branch" != ""
#    # start by assuming the working dir is dirty
#    set -l git_status_color $color_red
#
#    git status | grep clean > /dev/null
#    if test $status -eq 0
#      # Oh, no changes, so let's use green for the git branch
#      set git_status_color $color_green
#    end
#
#    set -l git_prompt '%s(%s)%s'
#    set -l git_prompt_args "$git_status_color" "$git_branch" "$color_normal"
#    set prompt_line_1 "$prompt_line_1 $git_prompt"
#    set prompt_line_1_args $prompt_line_1_args $git_prompt_args
#  end
#
#  # All together now ...
#  set -l prompt_string "$prompt_line_1\n$prompt_line_2"
#  set -l prompt_args $prompt_line_1_args $prompt_line_2_args
#
#  printf $prompt_string $prompt_args


set -x YVM_DIR /Users/u6064854/.yvm
[ -r $YVM_DIR/yvm.fish ]; and source $YVM_DIR/yvm.fish
# [ -s "$NVM_DIR/nvm.sh" ]; and source  "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ]; and source "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

