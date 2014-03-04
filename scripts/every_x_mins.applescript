set cmd to "dnd Available in $time minutes" as text

tell application "HipChat"
	activate
	tell application "System Events"
		tell process "HipChat"
			set window_name to name of window 1
		end tell
		if window_name = "HipChat - Lobby" then
			tell process "HipChat"
				set tab_name to name of UI element 1 of row 2 of table 1 of scroll area 1 of splitter group 1 of window 1
			end tell
			keystroke "t" using command down
			keystroke tab_name
			keystroke return
		end if
		
		keystroke "/" & cmd
		keystroke return
		keystroke tab using command down
	end tell
end tell
