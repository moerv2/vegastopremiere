﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




#IfWinActive, ahk_class Premiere Pro

WheelUp::
Send {1}
return

WheelDown::
Send {2}
return


#IfWinActive