tell application "System Events"
	set rotinterval to change interval of current desktop
	set change interval of current desktop to 1
	delay 1
	set change interval of current desktop to rotinterval
end tell
