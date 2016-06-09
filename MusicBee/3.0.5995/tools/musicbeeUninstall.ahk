#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

WinWait, MusicBee 3.0 Uninstall ahk_class #32770, , 60
BlockInput On
WinActivate
Send {Tab}
Send {Enter}
BlockInput Off

WinWait, MusicBee 3.0 Uninstall ahk_class #32770, , 60
BlockInput On
WinActivate
Send {Enter}
BlockInput Off
