#!/bin/bash
#ps awux | ag "trend.?micro"
pkill -f TrendMicro
#rm -rf -R /Library/Application\ Support/TrendMicro/TmccMac/TmLoginMgr.app/Contents/MacOS/TmLoginMgr
#rm –rf –R /Library/Application\ Support/TrendMicro
rm –rf –R /System/Library/TrendMicro
rm –rf –R /Library/StartupItems/iCoreService
rm –rf –R /Applications/MainUI.app
rm –rf –R /Library/Frameworks/TMAppCommon.framework
rm –rf –R /Library/Frameworks/TMAppCore.framework
rm –rf –R /Library/Frameworks/TMGUIUtil.framework
rm –rf –R /Library/Frameworks/iCoreClient.framework
rm –rf –R /Library/Preferences/TMCNTMgmt.plist
#sudo rm –rf –R /Library/Application\ Support/TrendMicro/TmccMac/UIMgmt.app/Contents/MacOS/UIMgmt
#sudo rm –rf –R /Library/Application\ Support/TrendMicro/TmccMac/TmLoginMgr.app/Contents/MacOS
