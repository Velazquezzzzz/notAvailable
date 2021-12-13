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
		select row 13 of outline 1 of scroll area 1
		set i to 0
		repeat until exists
			button 6
			delay 0.1
			set i to i + 1
			if i ≥ 20 then return
		end repeat
		click button 6
		repeat until exists
			button 1 of ¬
				sheet 1
			delay 0.1
			set i to i + 1
			if i ≥ 10 then return
		end repeat
		click button 1 of sheet 1
	end tell
end tell
