pids =  system `sudo rm -rf /Library/Application Support/TrendMicro/`
pids =  system `sudo rm -f /Library/LaunchDaemons/com.trendmicro.icore.av.plist`
pids =  system `sudo rm -f /Library/LaunchDaemons/com.trendmicro.icore.main.plist`
pids =  system `sudo rm -f /Library/LaunchDaemons/com.trendmicro.icore.wp.plist`
pids =  system `sudo rm -f /Library/LaunchDaemons/com.trendmicro.tmsm.launcher.plist`
pids =  system `sudo rm -f /Library/LaunchDaemons/com.trendmicro.tmsm.plugin.plist`

pids = system `sudo rm -f /Library/Application\ Support/TrendMicro/TmccMac/UIMgmt.app/Contents/MacOS/UIMgmt`
pids = system `sudo rm -f /Library/Application\ Support/TrendMicro/TmccMac/iCoreService_tmsm`
pids = system `sudo rm -f /Library/Application\ Support/TrendMicro/Plug-in/TMCNTMgmt.framework/TMCNTMgmt`
pids = system `sudo rm -f /Library/Application\ Support/TrendMicro/TmccMac/iCoreService_wp`
pids = system `sudo rm -f /Library/Application\ Support/TrendMicro/common/lib/libTmProxy.dylib`
pids = system `sudo rm -f /Library/Application\ Support/TrendMicro/TmccMac/iCoreService`
pids = system `sudo rm -f /Library/Application\ Support/TrendMicro/common/lib/libnamingService.dylib`
pids = system `sudo rm -f /Library/Application\ Support/TrendMicro/common/lib/libtaskManager.dylib`
pids = system `sudo rm -f /Library/Application\ Support/TrendMicro/common/lib/libnotificationService.dylib`
pids = system `sudo rm -f /Library/Application\ Support/TrendMicro/common/lib/libTmUpdate.dylib`
pids = system `sudo rm -f /Library/Application\ Support/TrendMicro/common/lib/libTmDb.dylib`
pids = system `sudo rm -f /Library/Application\ Support/TrendMicro/common/lib/libfeedback.dylib`
pids = system `sudo rm -f /Library/Application\ Support/TrendMicro/TmccMac/TmLoginMgr.app/Contents/MacOS/TmLoginMgr`
pids =  system `kill $(ps aux | grep 'TrendMicro' | awk '{print $2}')`

puts pids

