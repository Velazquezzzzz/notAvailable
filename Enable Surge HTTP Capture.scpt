--- need Surge on Dock application
tell application "System Events"
	tell list 1 of application process "Dock"
		click UI element "Surge"
		click UI element "Surge"
	end tell
	set i to 0
	repeat until exists
		window "Surge"
		delay 0.1
		set i to i + 1
		if i ≥ 20 then return
	end repeat
	tell window 1 of application process "Surge"
		delay 0.5
		select row 15 of outline 1 of scroll area 1
		set i to 0
		repeat until exists
			window "Local"
			delay 0.1
			set i to i + 1
			if i ≥ 20 then return
		end repeat
	end tell
	tell window 1 of application process "Surge Dashboard"
		click button 2 of splitter group 1 of splitter group 1
	end tell
end tell
