#Include //10.100.10.219/Videos$/Recebidos/sistdown-config/scripts/scripts/vars/geometria.ahk
#Include //10.100.10.219/Videos$/Recebidos/sistdown-config/scripts/scripts/initialization.ahk

F1::clickCombo_PlusFixar(BUTTON_SECAO_ESQUERDA, HEIGHT_OPTION[1])
F2::clickCombo_PlusFixar(BUTTON_SECAO_ESQUERDA, HEIGHT_OPTION[3])
F3::clickCombo_PlusFixar(BUTTON_SECAO_ESQUERDA, HEIGHT_OPTION[2])

!F1::clickButton(BUTTON_SECAO_ESQUERDA)
!F2::clickButton(BUTTON_SECAO_ESQUERDA)
!F3::clickButton(BUTTON_SECAO_ESQUERDA)
!F4::clickButton(BUTTON_SECAO_ESQUERDA)

F4::clickFixar(BUTTON_SECAO_ESQUERDA)
^F1::clickFixar(BUTTON_SECAO_ESQUERDA)
^F2::clickFixar(BUTTON_SECAO_ESQUERDA)
^F3::clickFixar(BUTTON_SECAO_ESQUERDA)
^F4::clickFixar(BUTTON_SECAO_ESQUERDA)





F5::clickCombo_PlusFixar(BUTTON_FAIXA_ESQUERDA, HEIGHT_OPTION[1])
F6::clickCombo_PlusFixar(BUTTON_FAIXA_ESQUERDA, HEIGHT_OPTION[2])

!F5::clickButton(BUTTON_FAIXA_ESQUERDA)
!F6::clickButton(BUTTON_FAIXA_ESQUERDA)

^F5::clickFixar(BUTTON_FAIXA_ESQUERDA)
^F6::clickFixar(BUTTON_FAIXA_ESQUERDA)

F7::clickCombo_PlusFixar(BUTTON_FAIXA_DIREITA, HEIGHT_OPTION[1])
F8::clickCombo_PlusFixar(BUTTON_FAIXA_DIREITA, HEIGHT_OPTION[2])

!F7::clickButton(BUTTON_FAIXA_DIREITA)
!F8::clickButton(BUTTON_FAIXA_DIREITA)

^F7::clickFixar(BUTTON_FAIXA_DIREITA)
^F8::clickFixar(BUTTON_FAIXA_DIREITA)





F9::clickCombo_PlusFixar(BUTTON_SECAO_DIREITA, HEIGHT_OPTION[1])
F10::clickCombo_PlusFixar(BUTTON_SECAO_DIREITA, HEIGHT_OPTION[3])
F11::clickCombo_PlusFixar(BUTTON_SECAO_DIREITA, HEIGHT_OPTION[2])

!F9::clickButton(BUTTON_SECAO_DIREITA)
!F10::clickButton(BUTTON_SECAO_DIREITA)
!F11::clickButton(BUTTON_SECAO_DIREITA)
!F12::clickButton(BUTTON_SECAO_DIREITA)

F12::clickFixar(BUTTON_SECAO_DIREITA)
^F9::clickFixar(BUTTON_SECAO_DIREITA)
^F10::clickFixar(BUTTON_SECAO_DIREITA)
^F11::clickFixar(BUTTON_SECAO_DIREITA)
^F12::clickFixar(BUTTON_SECAO_DIREITA)





$1::clickCombo_PlusFixar(BUTTON_TIPO_SUPERFICIE, HEIGHT_OPTION[2])
$2::clickCombo_PlusFixar(BUTTON_TIPO_SUPERFICIE, HEIGHT_OPTION[1])

!1::clickButton(BUTTON_TIPO_SUPERFICIE)
!2::clickButton(BUTTON_TIPO_SUPERFICIE)

^1::clickFixar(BUTTON_TIPO_SUPERFICIE)
^2::clickFixar(BUTTON_TIPO_SUPERFICIE)





$Numpad1::clickCombo_PlusFixar(BUTTON_NRFX, HEIGHT_OPTION[1])
$Numpad2::clickCombo_PlusFixar(BUTTON_NRFX, HEIGHT_OPTION[2])
$Numpad3::clickCombo_PlusFixar(BUTTON_NRFX, HEIGHT_OPTION[3])
$Numpad4::clickCombo_PlusFixar(BUTTON_NRFX, HEIGHT_OPTION[4])
$Numpad5::clickCombo_PlusFixar(BUTTON_NRFX, HEIGHT_OPTION[5])
$Numpad6::clickCombo_PlusFixar(BUTTON_NRFX, HEIGHT_OPTION[6])
$Numpad7::clickCombo_PlusFixar(BUTTON_NRFX, HEIGHT_OPTION[7])
$Numpad8::clickCombo_PlusFixar(BUTTON_NRFX, HEIGHT_OPTION[8])
$Numpad9::clickCombo_PlusFixar(BUTTON_NRFX, HEIGHT_OPTION[8])

!Numpad1::clickButton(BUTTON_NRFX)
!Numpad2::clickButton(BUTTON_NRFX)
!Numpad3::clickButton(BUTTON_NRFX)
!Numpad4::clickButton(BUTTON_NRFX)
!Numpad5::clickButton(BUTTON_NRFX)
!Numpad6::clickButton(BUTTON_NRFX)
!Numpad7::clickButton(BUTTON_NRFX)
!Numpad8::clickButton(BUTTON_NRFX)
!Numpad9::clickButton(BUTTON_NRFX)

^Numpad1::clickFixar(BUTTON_NRFX)
^Numpad2::clickFixar(BUTTON_NRFX)
^Numpad3::clickFixar(BUTTON_NRFX)
^Numpad4::clickFixar(BUTTON_NRFX)
^Numpad5::clickFixar(BUTTON_NRFX)
^Numpad6::clickFixar(BUTTON_NRFX)
^Numpad7::clickFixar(BUTTON_NRFX)
^Numpad8::clickFixar(BUTTON_NRFX)
^Numpad9::clickFixar(BUTTON_NRFX)





$c::clickButton_PlusFixar(BUTTON_CANTEIRO_CENTRAL)
!c::clickButton(BUTTON_CANTEIRO_CENTRAL)
^c::clickFixar(BUTTON_CANTEIRO_CENTRAL)

$t::clickButton_PlusFixar(BUTTON_TRAVESSIA_URBANA)
!t::clickButton(BUTTON_TRAVESSIA_URBANA)
^t::clickFixar(BUTTON_TRAVESSIA_URBANA)





$v::isSistlevActive()
!v::clickButton(BUTTON_VIAS_LATERAIS)
^v::clickFixar(BUTTON_VIAS_LATERAIS)


$i::isSistlevActive()
!i::clickButton(BUTTON_VIAS_INTERCESSOES)
^i::clickFixar(BUTTON_VIAS_INTERCESSOES)


$ç::isSistlevActive()
!ç::clickButton(BUTTON_CONSTRUCAO)
^ç::clickFixar(BUTTON_CONSTRUCAO)


$e::isSistlevActive()
!e::clickButton(BUTTON_EROSAO)
^e::clickFixar(BUTTON_EROSAO)

$o::isSistlevActive()
!o::clickButton(BUTTON_PARADA_ONIBUS)
^o::clickFixar(BUTTON_PARADA_ONIBUS)


$a::isSistlevActive()
!a::clickButton(BUTTON_ACESSO)
^a::clickFixar(BUTTON_ACESSO)





; Active if right arrow is pressed
#If GetKeyState("Up", "P")  
    $i::clickCombo_PlusFixar(BUTTON_VIAS_INTERCESSOES, HEIGHT_OPTION[2])
    $v::clickCombo_PlusFixar(BUTTON_VIAS_LATERAIS, HEIGHT_OPTION[1])
    $ç::clickCombo_PlusFixar(BUTTON_CONSTRUCAO, HEIGHT_OPTION[1])
    $e::clickCombo_PlusFixar(BUTTON_EROSAO, HEIGHT_OPTION[1])
    $o::clickCombo_PlusFixar(BUTTON_PARADA_ONIBUS, HEIGHT_OPTION[1])
    $a::clickCombo_PlusFixar(BUTTON_ACESSO, HEIGHT_OPTION[1])
#If





; Active if right arrow is pressed
#If GetKeyState("Down", "P")  
    $i::clickCombo_PlusFixar(BUTTON_VIAS_INTERCESSOES, HEIGHT_OPTION[2])
    $v::clickCombo_PlusFixar(BUTTON_VIAS_LATERAIS, HEIGHT_OPTION[1])
    $ç::clickCombo_PlusFixar(BUTTON_CONSTRUCAO, HEIGHT_OPTION[1])
    $e::clickCombo_PlusFixar(BUTTON_EROSAO, HEIGHT_OPTION[1])
    $o::clickCombo_PlusFixar(BUTTON_PARADA_ONIBUS, HEIGHT_OPTION[1])
    $a::clickCombo_PlusFixar(BUTTON_ACESSO, HEIGHT_OPTION[1])
#If





; Active if right arrow is pressed
#If GetKeyState("Left", "P")  
    $i::clickCombo_PlusFixar(BUTTON_VIAS_INTERCESSOES, HEIGHT_OPTION[1])
    $v::clickCombo_PlusFixar(BUTTON_VIAS_LATERAIS, HEIGHT_OPTION[3])
    $ç::clickCombo_PlusFixar(BUTTON_CONSTRUCAO, HEIGHT_OPTION[3])
    $e::clickCombo_PlusFixar(BUTTON_EROSAO, HEIGHT_OPTION[3])
    $o::clickCombo_PlusFixar(BUTTON_PARADA_ONIBUS, HEIGHT_OPTION[3])
    $a::clickCombo_PlusFixar(BUTTON_ACESSO, HEIGHT_OPTION[3])
#If





; Active if right arrow is pressed
#If GetKeyState("Right", "P")  
    $i::clickCombo_PlusFixar(BUTTON_VIAS_INTERCESSOES, HEIGHT_OPTION[1])
    $v::clickCombo_PlusFixar(BUTTON_VIAS_LATERAIS, HEIGHT_OPTION[2])
    $ç::clickCombo_PlusFixar(BUTTON_CONSTRUCAO, HEIGHT_OPTION[2])
    $e::clickCombo_PlusFixar(BUTTON_EROSAO, HEIGHT_OPTION[2])
    $o::clickCombo_PlusFixar(BUTTON_PARADA_ONIBUS, HEIGHT_OPTION[2])
    $a::clickCombo_PlusFixar(BUTTON_ACESSO, HEIGHT_OPTION[2])
#If



y::
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%
    MsgBox, The cursor is at X%MouseX% Y%MouseY% - Colors is %color%.
Return