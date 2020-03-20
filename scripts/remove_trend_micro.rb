# script wasnt working 100%, i had to delete the folder using finder and kill a process using activity monitor
# it just wouldnt die with the commands...
# the script kills most things, then i just killed off the last one manually and quickly ran the script to delete all the daemons
#so it does not come back

`sudo pkill -f 'Trend'`
`sudo pkill -f 'trend'`
#`kill $(ps aux | grep 'TrendMicro' | awk '{print $2}')`
`sudo rm -rf /Library/Application Support/TrendMicro/`
`sudo rm -f /Library/LaunchDaemons/com.trendmicro.icore.av.plist`
`sudo rm -f /Library/LaunchDaemons/com.trendmicro.icore.main.plist`
`sudo rm -f /Library/LaunchDaemons/com.trendmicro.icore.wp.plist`
`sudo rm -f /Library/LaunchDaemons/com.trendmicro.tmsm.launcher.plist`
`sudo rm -f /Library/LaunchDaemons/com.trendmicro.tmsm.plugin.plist`
`sudo rm -f /Library/LaunchAgents/com.trendmicro.TmLoginMgr.plist`
`sudo rm -f /Library/Application\ Support/TrendMicro/TmccMac/TmLoginMgr.app/Contents/MacOS/TmLoginMgr`
`sudo rm -f /Library/Application\ Support/TrendMicro/TmccMac/UIMgmt.app/Contents/MacOS/UIMgmt`
`sudo rm -f /Library/Application\ Support/TrendMicro/TmccMac/iCoreService_tmsm`
`sudo rm -f /Library/Application\ Support/TrendMicro/Plug-in/TMCNTMgmt.framework/TMCNTMgmt`
`sudo rm -f /Library/Application\ Support/TrendMicro/TmccMac/iCoreService_wp`
`sudo rm -f /Library/Application\ Support/TrendMicro/common/lib/libTmProxy.dylib`
`sudo rm -f /Library/Application\ Support/TrendMicro/TmccMac/iCoreService`
`sudo rm -f /Library/Application\ Support/TrendMicro/common/lib/libnamingService.dylib`
`sudo rm -f /Library/Application\ Support/TrendMicro/common/lib/libtaskManager.dylib`
`sudo rm -f /Library/Application\ Support/TrendMicro/common/lib/libnotificationService.dylib`
`sudo rm -f /Library/Application\ Support/TrendMicro/common/lib/libTmUpdate.dylib`
`sudo rm -f /Library/Application\ Support/TrendMicro/common/lib/libTmDb.dylib`
`sudo rm -f /Library/Application\ Support/TrendMicro/common/lib/libfeedback.dylib`
`sudo rm -f /Library/Application\ Support/TrendMicro/TmccMac/TmLoginMgr.app/Contents/MacOS/TmLoginMgr`
`sudo rm -rf /Library/Application\ Support/TrendMicro/`
#`kill $(ps aux | grep 'TrendMicro' | awk '{print $2}')`
# it was not deleting the /Library/Application Support/TrendMicro directory because the process was still running.

