#!/bin/sh


# Copyright:       EVRY
# Filename:        UninstallTrend.sh
# Requires:        -
# Purpose:         Removes Trend Micro Security
# Contact:        Anders Holmdahl <anders.holmdahl@evry.com>
# Mod history:    2018-01-31
sudo pkill -f 'Trend'

launchctl unload /Library/LaunchDaemons/com.trendmicro.icore.av.plist
rm -rf /Library/LaunchDaemons/com.trendmicro.*
rm -rf "/Library/Application Support/TrendMicro"
rm -rf /Library/Frameworks/TMAppCommon.framework
rm -rf /Library/Frameworks/TMAppCore.framework
rm -rf /Library/Frameworks/TMGUIUtil.framework
rm -rf /Library/Frameworks/iCoreClient.framework
rm -rf /Applications/TrendMicroSecurity.app

killall -kill TmLoginMgr
killall -kill UIMgmt

exit 0
