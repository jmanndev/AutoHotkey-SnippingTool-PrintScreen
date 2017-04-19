#SingleInstance force

SendMode, Input

PrintScreen::

If WinExist("Snipping Tool")
{
	WinActivate, Snipping Tool
	WinWaitActive, Snipping Tool
	Send !n
	Send r
}
else
{
	Run, %A_WinDir%\System32\SnippingTool.exe
	WinWait, Snipping Tool
	WinActivate, Snipping Tool
}
Send ^{PrintScreen}
return

$~esc::
If WinActive("Snipping Tool")
{
	WinClose, Snipping Tool
}
else
{
	Send {esc}
}
return