SendMode Input
#NoEnv
#SingleInstance Force

varToggleSpeedButton = 0

HEIGHT_BUTTON := 210
HEIGHT_OPTION := [255, 269, 281, 296, 309, 322, 333, 347]

BUTTON_SECAO_ESQUERDA := 87
BUTTON_SECAO_DIREITA := 215
BUTTON_NRFX := 570
BUTTON_TIPO_SUERFICIE := 326
BUTTON_CANTEIRO_CENTRAL := 431
BUTTON_TRAVESSIA_URBANA := 952
BUTTON_FAIXA_ESQUERDA := 656
BUTTON_FAIXA_DIREITA := 812


isSistlevActive() {
    If  WinActive("SistLev - Escritório") || WinActive("SistLev")
        return true
    return false
}


isFixarClicado(x) {
    MouseMove, 675, 80
    PixelGetColor, colorPlay, x, 264 ; HEIGHT_FIXAR
    if (colorPlay == 0xFFFFFF)
        return false
    return true
}


click(x, y) {
    If  (isSistlevActive()) {
        MouseMove, x, y
        Click
        MouseMove, 675, 80
        return true
    }
    return false
}


clickCombo(x, y) {
    click(x, 240) ; HEIGHT_COMBO_BOX
    return click(x, y)
}


clickFixar(x) {
    return click(x, 264) ; HEIGHT_FIXAR
}




clickCombo_PlusFixar(xCombo, x, y) {
    If  (isSistlevActive()) {
        if (!isFixarClicado(xCombo))  {
            clickFixar(xCombo)
        }
        return clickCombo(x, y)
    }
    return false
}


switch_playAndPause() {
    If  (isSistlevActive()) {
        MouseMove, 675, 80
        PixelGetColor, colorPlay, 659, 66
        if (colorPlay == 0xA5542E) {
            return click(659, 67)
        }
        return click(682, 67)
    }
    return false
}





#p::Suspend ; WINDOWS + P
^p::Suspend ; CTRL + P
!p::Suspend ; ALT + P

$space::
    if (!switch_playAndPause()) {
        Send {Space}  
    }
Return

$NumpadAdd::
    if (not varToggleSpeedButton = 2) {
        varToggleSpeedButton += 1
    }
    if (!click(27*varToggleSpeedButton + 772, 67)){
        Send {NumpadAdd}
    }
Return

$NumpadSub::
    if (not varToggleSpeedButton = -2) {
        varToggleSpeedButton -= 1
    }
    if (!click(27*varToggleSpeedButton + 772, 67)) {
        Send {NumpadSub}
    }
Return

!Left::click(962, 65)
#Left::click(935, 65)
^Left::click(905, 65)
+Left::click(867, 65)
!Right::click(983, 65)
#Right::click(1010, 65)
^Right::click(1040, 65)
+Right::click(1080, 65)





F1::clickCombo_PlusFixar(BUTTON_SECAO_ESQUERDA-53, BUTTON_SECAO_ESQUERDA, HEIGHT_OPTION[1])
F2::clickCombo_PlusFixar(BUTTON_SECAO_ESQUERDA-53, BUTTON_SECAO_ESQUERDA, HEIGHT_OPTION[3])
F3::clickCombo_PlusFixar(BUTTON_SECAO_ESQUERDA-53, BUTTON_SECAO_ESQUERDA, HEIGHT_OPTION[2])

!F1::
!F2::
!F3::
!F4::
    click(BUTTON_SECAO_ESQUERDA, HEIGHT_BUTTON)
Return

^F1::
^F2::
^F3::
^F4::
F4::
    clickFixar(BUTTON_SECAO_ESQUERDA-53)
Return





F9::clickCombo_PlusFixar(BUTTON_SECAO_DIREITA-53, BUTTON_SECAO_DIREITA, HEIGHT_OPTION[1])
F10::clickCombo_PlusFixar(BUTTON_SECAO_DIREITA-53, BUTTON_SECAO_DIREITA, HEIGHT_OPTION[3])
F11::clickCombo_PlusFixar(BUTTON_SECAO_DIREITA-53, BUTTON_SECAO_DIREITA, HEIGHT_OPTION[2])

!F9::
!F10::
!F11::
!F12::
    click(BUTTON_SECAO_DIREITA, HEIGHT_BUTTON)
Return

F12::
^F9::
^F10::
^F11::
^F12::
    clickFixar(BUTTON_SECAO_DIREITA-53)
Return





$1::
    if (!clickCombo_PlusFixar(BUTTON_TIPO_SUERFICIE-53, BUTTON_TIPO_SUERFICIE, HEIGHT_OPTION[2]))
        Send {1}
Return

$2::
    if (!clickCombo_PlusFixar(BUTTON_TIPO_SUERFICIE-53, BUTTON_TIPO_SUERFICIE, HEIGHT_OPTION[1]))
        Send {2}
Return

!1::
!2::
    click(BUTTON_TIPO_SUERFICIE, HEIGHT_BUTTON)
Return

^1::
^2::
    clickFixar(BUTTON_TIPO_SUERFICIE-53)
Return





$Numpad1::
    if (!clickCombo_PlusFixar(BUTTON_NRFX-53, BUTTON_NRFX, HEIGHT_OPTION[1]))
        Send {Numpad1}
Return

$Numpad2::
    if (!clickCombo_PlusFixar(BUTTON_NRFX-53, BUTTON_NRFX, HEIGHT_OPTION[2]))
        Send {Numpad2}
Return

$Numpad3::
    if (!clickCombo_PlusFixar(BUTTON_NRFX-53, BUTTON_NRFX, HEIGHT_OPTION[3]))
        Send {Numpad3}
Return

$Numpad4::
    if (!clickCombo_PlusFixar(BUTTON_NRFX-53, BUTTON_NRFX, HEIGHT_OPTION[4]))
        Send {Numpad4}
Return

$Numpad5::
    if (!clickCombo_PlusFixar(BUTTON_NRFX-53, BUTTON_NRFX, HEIGHT_OPTION[5]))
        Send {Numpad5}
Return

$Numpad6::
    if (!clickCombo_PlusFixar(BUTTON_NRFX-53, BUTTON_NRFX, HEIGHT_OPTION[6]))
        Send {Numpad6}
Return

$Numpad7::
    if (!clickCombo_PlusFixar(BUTTON_NRFX-53, BUTTON_NRFX, HEIGHT_OPTION[7]))
        Send {Numpad7}
Return

$Numpad8::
    if (!clickCombo_PlusFixar(BUTTON_NRFX-53, BUTTON_NRFX, HEIGHT_OPTION[8]))
        Send {Numpad8}
Return

$Numpad9::
    if (!clickCombo_PlusFixar(BUTTON_NRFX-53, BUTTON_NRFX, HEIGHT_OPTION[8]))
        Send {Numpad9}
Return

!Numpad1::
!Numpad2::
!Numpad3::
!Numpad4::
!Numpad5::
!Numpad6::
!Numpad7::
!Numpad8::
!Numpad9::
    click(BUTTON_NRFX, HEIGHT_BUTTON)
Return

^Numpad1::
^Numpad2::
^Numpad3::
^Numpad4::
^Numpad5::
^Numpad6::
^Numpad7::
^Numpad8::
^Numpad9::
    clickFixar(BUTTON_NRFX-53)
Return


F5::clickCombo_PlusFixar(BUTTON_FAIXA_ESQUERDA-53, BUTTON_FAIXA_ESQUERDA, HEIGHT_OPTION[1])
F6::clickCombo_PlusFixar(BUTTON_FAIXA_ESQUERDA-53, BUTTON_FAIXA_ESQUERDA, HEIGHT_OPTION[2])

!F5::
!F6::
    click(BUTTON_FAIXA_ESQUERDA, HEIGHT_BUTTON)
Return

^F5::
^F6::
    clickFixar(BUTTON_FAIXA_ESQUERDA-53)
Return


F7::clickCombo_PlusFixar(BUTTON_FAIXA_DIREITA-53, BUTTON_FAIXA_DIREITA, HEIGHT_OPTION[1])
F8::clickCombo_PlusFixar(BUTTON_FAIXA_DIREITA-53, BUTTON_FAIXA_DIREITA, HEIGHT_OPTION[2])

!F7::
!F8::
    click(BUTTON_FAIXA_DIREITA, HEIGHT_BUTTON)
Return

^F7::
^F8::
    clickFixar(BUTTON_FAIXA_DIREITA-53)
Return


$c::
    if (!click(BUTTON_CANTEIRO_CENTRAL, HEIGHT_BUTTON)) {
        Send {c}
    } else {
        clickFixar(BUTTON_CANTEIRO_CENTRAL-53)
    }
Return

!c::click(BUTTON_CANTEIRO_CENTRAL, HEIGHT_BUTTON)
^c::clickFixar(BUTTON_CANTEIRO_CENTRAL-53)


$t::
    if (!click(BUTTON_TRAVESSIA_URBANA, HEIGHT_BUTTON)) {
        Send {t}
    } else {
        clickFixar(BUTTON_TRAVESSIA_URBANA-53)
    }
Return

!t::click(BUTTON_TRAVESSIA_URBANA, HEIGHT_BUTTON)
^t::clickFixar(BUTTON_TRAVESSIA_URBANA-53)





; Active if right arrow is pressed
#If GetKeyState("Right", "P")  

    $c::  ; Use $ prefix to prevent the hotkey from triggering itself
        MsgBox Up
    Return

#If



ç::
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%
    MsgBox, The cursor is at X%MouseX% Y%MouseY% - Colors is %color%.
Return