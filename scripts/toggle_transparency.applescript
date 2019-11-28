tell application "iTerm"
    if the transparency of the current session of the current window > 0 then
        repeat with aWindow in windows
            tell aWindow
                repeat with aTab in tabs of aWindow
                    repeat with aSession in sessions of aTab
                        tell aSession
                            set transparency to 0
                        end tell
                    end repeat
                end repeat
            end tell
        end repeat
    else
        repeat with aWindow in windows
            tell aWindow
                repeat with aTab in tabs of aWindow
                    repeat with aSession in sessions of aTab
                        tell aSession
                            set transparency to 0.6
                        end tell
                    end repeat
                end repeat
            end tell
        end repeat
    end if
end tell
