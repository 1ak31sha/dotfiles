system 'echo im booting up your emulator, foo!'
androidHome =`echo $ANDROID_HOME | tr -d '\n'`
Dir.chdir("#{androidHome}/tools") do
#system 'cd $ANDROID_HOME/tools'
  system './emulator -avd Pixel_API_23_-_React_Native &'
#system 'cd -'
end
