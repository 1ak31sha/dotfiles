if [ -f ~/.bashrc ];
then
  source ~/.bashrc
fi


source ~/.xsh


export PATH="$HOME/.fastlane/bin:$PATH"


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
