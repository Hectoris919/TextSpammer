#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

Gui, New, AlwaysOnTop, Pinger
Gui, Add, Text, , Word to spam (Press Ctrl + Alt + F in any text box to run):
Gui, Add, Edit, vUUID gConfirmValues r10 w250, @<Username>

Gui, Add, Button, gGuiClose xm, Close
Gui, Show
Return

ConfirmValues:
	Gui, Submit
	Gui, Show
Return

GuiClose:
	Gui, Destroy
ExitApp

^!f::
	SendInput, %UUID%{Blind}{Enter}
	Sleep, 5
Return