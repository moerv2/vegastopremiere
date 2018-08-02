#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




#IfWinActive, ahk_class Premiere Pro


WheelUp::
MouseGetPos, x,y
if (y > 650)
Send {1}
else
send {WheelUp 1}
return

WheelDown::
MouseGetPos, x,y
if (y > 650)
Send {2}
else
send {WheelDown 1}
return


#IfWinActive