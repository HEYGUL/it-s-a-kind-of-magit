#!/bin/bash
osascript -e '
if running of application "Keynote" is true then
	tell application "Keynote"
    activate
    show next
	end tell
end if
'
