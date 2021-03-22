#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors. SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

/*
TODO: on monitor connect set wallpaper to vertical version, set monitor to blank, without disconnecting it 
*/


#SingleInstance Force
$!F24:: reload

; Symbols
$F13::
Send {``}
Send {Space}
return
$+F13::
Send {~}
return
$F14::
Send {\}
return
$+F14::
Send {|}
return
$F15::
Send {^}
Send {Space}
return
$+F15::
Send {°}
return

$F16::
Send, sqrt()
Send, {Left}
return

; Media Keys only going to youtube music
$Media_Play_Pause::
IfWinExist ahk_class Chrome_WidgetWin_1 
{
  SetTitleMatchMode, 2
  WinGet, current_window, ID, A
  WinGet, minimized, MinMax, YouTube Music
  WinActivate, YouTube Music
  Send, {space}
  WinActivate ahk_id %current_window%
}
if (minimized = -1){
  WinMinimize, YouTube Music
}
return
$Media_Next::
IfWinExist ahk_class Chrome_WidgetWin_1 
{
  SetTitleMatchMode, 2
  WinGet, current_window, ID, A
  WinGet, minimized, MinMax, YouTube Music
  WinActivate, YouTube Music
  Send, {Media_Next}
  WinActivate ahk_id %current_window%
}
if (minimized = -1){
  WinMinimize, YouTube Music
}
return
$Media_Prev::
IfWinExist ahk_class Chrome_WidgetWin_1 
{
  SetTitleMatchMode, 2
  WinGet, current_window, ID, A
  WinGet, minimized, MinMax, YouTube Music
  WinActivate, YouTube Music
  Send, {Media_Prev}
  WinActivate ahk_id %current_window%
}
if (minimized = -1){
  WinMinimize, YouTube Music
}
return

; second monitor script
$!F16::
Run, C:\Users\josep\OneDrive - bwedu\Dokumente\autohotkey scripts\second_monitor_setup.ahk
return

; Close window quicker
$!Delete::
Send !{f4}
return

; jank current tab into new window
$^+N::
WinGet, current_window, ProcessName, A
if (current_window == "chrome.exe"){
  Send, ^l^c^w^n^v{Enter}
}
return

; Minecraft Macros (all F keys from 13-16 with alt and control)
; F keys with only control are regular macros
LeftAndMb4Toggle := 0
$^!F13::
LeftAndMb4Toggle := !LeftAndMb4Toggle
if (LeftAndMb4Toggle){
  Send {XButton1 down}
  Send {LButton down}
} else {
  Send {LButton up}
  Send {XButton2 up}
}
return

RightToggle := 0
$^!F14::
RightToggle := !RightToggle
if (RightToggle){
  Send {RButton down}
} else {
  Send {RButton up}
}
return

