Dir.chdir("#{androidHome}/tools") do
  system  'adb -s emulator-5554 emu kill'
end

