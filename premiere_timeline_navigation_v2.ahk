#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




#IfWinActive, ahk_class Premiere Pro

;Repasting Audio
/*
f::

MouseGetPos, x,y
if (y > 650)
Send {Shift}+{Home}
sleep 20
Send {f}
sleep 20
Send {.}
return

*/


;Vegaslike Scrolling
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


; Playhead movement when Clicking anywhere
~LButton::
MouseGetPos, x,y
if (y > 650) and (A_Cursor = "Arrow")
Send {<}
else
if (y > 650) and (A_Cursor = "Unknown") and (A_TimeSincePriorHotkey<400) and (A_TimeSincePriorHotkey<>-1)
Send, {Ctrl Down}{Click}{Ctrl up}
Return






/*
Key Bindings in Premiere:
Zoom In = 1
Zoom Out = 2
Move Playhead to Curser = <
(Press alt to drag a selection box)
*/


#IfWinActive