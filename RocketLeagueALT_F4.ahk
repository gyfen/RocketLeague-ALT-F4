#SingleInstance, Force
#Persistent
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Edit this if you have your game installed in a different directory.
Run, C:\Program Files (x86)\Steam\steamapps\common\rocketleague\Binaries\Win64\RocketLeague.exe

#IfWinActive, ahk_exe RocketLeague.exe
!f4::
WinKill, ahk_exe RocketLeague.exe
ExitApp
