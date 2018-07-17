system 'echo im killing your your emulator, foo!'
system 'gif-for-cli https://media.giphy.com/media/ff0dv4KMGxjna/giphy.gif --rows 75 --cols 75'
androidHome =`echo $ANDROID_HOME | tr -d '\n'`

Dir.chdir("#{androidHome}/tools") do
  system  'adb -s emulator-5554 emu kill'
end

