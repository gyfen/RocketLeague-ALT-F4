#Persistent
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2 ; A window's title can contain WinTitle anywhere inside it to be a match.

; Edit this if you have your game installed in a different directory.
Run, C:\Program Files (x86)\Steam\steamapps\common\rocketleague\Binaries\Win64\RocketLeague.exe

!f4::
    If WinActive("Rocket League") ; Check if rocketleague is the active window
    {
        run,%comspec% /c taskkill /f /im RocketLeague.exe ; Kills rocketleague from commandline, because [Process, Close, RocketLeague.exe] didn't work.
        ExitApp
    }
    Else ; This is to make ALT + F4 work normally with other windows again, since the hotkey prevents the normal behaviour.
    {
        WinGet, active_pid, PID, A ; Get currently active window pid
        Process, Close, %active_pid%
        Process, Exist, RocketLeague.exe
        If(errorlevel = 0) ; If the process does not exist; this is to make sure the script isn't running when the game isn't.
        {
            ExitApp
        }
    }
    Return