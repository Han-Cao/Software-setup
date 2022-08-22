# code from https://www.zhihu.com/question/337851200/answer/2301801537
DllCall("SetThreadDpiAwarenessContext", "ptr", -3, "ptr")
CoordMode, Mouse, Screen 

SysGet, MonB, MonitorWorkArea , 2
SysGet, MonA, MonitorWorkArea , 1
B_ScreenWidth := abs(MonBRight - MonBLeft)
B_ScreenHeight := abs(MonBTop - MonBBottom)

Alt & `::
  MouseGetPos, MouseX, MouseY
  if (MouseX >= MonBLeft) {
	x := (MouseX - MonBLeft ) * A_ScreenWidth / B_ScreenWidth + MonALeft
	y := (MouseY - MonBBottom) * A_ScreenHeight / B_ScreenHeight  + MonABottom
;	x := Ceil((MonALeft+MonARight)/2)
;	y := Ceil((MonATop+MonABottom)/2)
	MouseMove, x, y, 0
	MouseMove, x, y, 0
  } else {
	x := (MouseX - MonALeft ) * B_ScreenWidth / A_ScreenWidth + MonBLeft
	y := (MouseY - MonABottom) * B_ScreenHeight / A_ScreenHeight  + MonBBottom
;	x := Ceil((MonBLeft+MonBRight)/2)
;	y := Ceil((MonBTop+MonBBottom)/2)
	MouseMove, x, y, 0
	MouseMove, x, y, 0
  }
return