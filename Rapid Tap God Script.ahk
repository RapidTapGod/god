TrayTip, Rapid Tap God Script - Ready, press Numpad 0 to activate and Ctrl-Numpad 0 to deactivate
SetMouseDelay, 20 ;you can change these or comment them out if its too fast
mousespeed:= 1
delay1:= 20 ;delay at the beginning of the pixelsearch
delay2:= 20 ;delay if error
SetDefaultMouseSpeed, % mousespeed
Numpad0:: 
{
IfWinActive ahk_exe Rapid-Tap.exe ;only activate when Rapid Tap is active, would be pretty annoying otherwise
{
stop = 0 ;set the stop variable to 0 for init
jeff := 0
Loop
{
checkgreentile:
	if stop = 1 ;when the variable is set, ctrl+numpad0 has been clicked and therefore the user wants to exit
		{
		break
		}
Sleep, % delay1
	PixelSearch, Px, Py, 452, 15, 1489, 1052, 0x10DA11, 80, Fast ;search for green pixels. variation is added so it detects the green tiles even without the stock white skin
	if ErrorLevel
	{
		Sleep, % delay2 ;if its not found start over, we have probably just clicked
		jeff:= % jeff + 1 ;count
		;tim:= % jeff * % mousespeed * % delay1 * % delay2
		ToolTip, not-found count: %jeff% / 35
			if jeff > 35 ;if it hasnt found any for x times, it will exit. you can change this, just mind the delays and the mousespeed
			{
				TrayTip, Rapid Tap God Script - Game over detected, Detected a game over because no green pixel has been detected for 1.5 seconds. Exiting now.
				ToolTip ;you can comment the whole section out if you want autoplay
				break
			}
		}
	else 
	{	MouseGetPos, mousex, mousey ;get mouse pos and compare to previous pos, when its the same we are too fast and start over
		if %mousex% = %Px%
		{
			if %mousey% = %Py%
			{
				Goto, checkgreentile
			}
		}
		MouseClick, left, %Px%, %Py% ;click that green tile; also works with the play and restart button in the menus so we can achieve autoplay
		MouseMove, 960, 490 ;move mouse to the middle, additional delay is added and its more useful when used with unset mousedelay and defaultmousespeed
		jeff := 0
	}
}
}
Else
{
	Send {Blind}0 ;if the active window isnt rapid tap, just send 0, Numpad0 does not work for some reason
	Return
}
}
^Numpad0::
{
	TrayTip, Rapid Tap God Script - Stopped, press Numpad 0 to activate again
	ToolTip
	stop = 1 ;set the variable so if it loops the next time, it will stop
return
}