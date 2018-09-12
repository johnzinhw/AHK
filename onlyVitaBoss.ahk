;#IfWinActive, Tibia
#SingleInstance, Force
SetKeyDelay,0

x40 := 2471
empty := 0x4040C0
x75 := 2502
HealthY := 386

;MouseMove, %x75%, %HealthY%
;PixelGetColor, Check75, %x75%, %HealthY%
;msgBox, %Check75%

Loop, 
{
    if WinActive("Tibia") {

        PixelGetColor, Check75, %x75%, %HealthY%
        PixelGetColor, Check40, %x40%, %HealthY%

        if (Check40 != empty)
        {
            Send, {F1}
			
        }
        if (Check75 != empty)
        {
            Send, {F1}
        }

        Sleep, 500
    }
}

Return