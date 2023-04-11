;
; Atalhos para Trabalhar com Geometria no Sistlev
;
; Created By Victor Hugo @VictorDalosto on 06/04/2023
; Copyright © 2023 Victor Hugo Dalosto de Oliveira. All rights reserved.
;

#Include //10.100.10.219/Videos$/Recebidos/sistdown-config/scripts/scripts/vars/geometria.ahk
#Include //10.100.10.219/Videos$/Recebidos/sistdown-config/scripts/scripts/initialization.ahk



; SECAO ESQUERDA
    ; ATERRO
    $F1::clickCombo_PlusFixar(BOTAO_SECAO_ESQUERDA, HEIGHT_OPTION[1])
    !F1::clickButton(BOTAO_SECAO_ESQUERDA)
    ^F1::clickFixar(BOTAO_SECAO_ESQUERDA)

    ; PLANO
    $F2::clickCombo_PlusFixar(BOTAO_SECAO_ESQUERDA, HEIGHT_OPTION[3])
    !F2::clickButton(BOTAO_SECAO_ESQUERDA)
    ^F2::clickFixar(BOTAO_SECAO_ESQUERDA)

    ; CORTE
    $F3::clickCombo_PlusFixar(BOTAO_SECAO_ESQUERDA, HEIGHT_OPTION[2])
    !F3::clickButton(BOTAO_SECAO_ESQUERDA)
    ^F3::clickFixar(BOTAO_SECAO_ESQUERDA)

    ;FIXAR
    $F4::clickFixar(BOTAO_SECAO_ESQUERDA)
    !F4::clickButton(BOTAO_SECAO_ESQUERDA)
    ^F4::clickFixar(BOTAO_SECAO_ESQUERDA)



; SECAO DIREITA
    ; ATERRO
    $F5::clickCombo_PlusFixar(BOTAO_SECAO_DIREITA, HEIGHT_OPTION[1])
    !F5::clickButton(BOTAO_SECAO_DIREITA)
    ^F5::clickFixar(BOTAO_SECAO_DIREITA)
    
    ; PLANO
    $F6::clickCombo_PlusFixar(BOTAO_SECAO_DIREITA, HEIGHT_OPTION[3])
    !F6::clickButton(BOTAO_SECAO_DIREITA)
    ^F6::clickFixar(BOTAO_SECAO_DIREITA)
    
    ; CORTE
    $F7::clickCombo_PlusFixar(BOTAO_SECAO_DIREITA, HEIGHT_OPTION[2])
    !F7::clickButton(BOTAO_SECAO_DIREITA)
    !F8::clickButton(BOTAO_SECAO_DIREITA)

    ; FIXAR
    $F8::clickFixar(BOTAO_SECAO_DIREITA)
    ^F7::clickFixar(BOTAO_SECAO_DIREITA)
    ^F8::clickFixar(BOTAO_SECAO_DIREITA)



; FAIXA ESQUERDA
    ; ACESSO
    $F9::clickCombo_PlusFixar(BOTAO_FAIXA_ESQUERDA, HEIGHT_OPTION[1])
    !F9::clickButton(BOTAO_FAIXA_ESQUERDA)
    ^F9::clickFixar(BOTAO_FAIXA_ESQUERDA)

    ; FAIXA ADICIONAL
    $F10::clickCombo_PlusFixar(BOTAO_FAIXA_ESQUERDA, HEIGHT_OPTION[2])
    !F10::clickButton(BOTAO_FAIXA_ESQUERDA)
    ^F10::clickFixar(BOTAO_FAIXA_ESQUERDA)



; FAIXA DIREITA
    ; ACESSO 
    $F11::clickCombo_PlusFixar(BOTAO_FAIXA_DIREITA, HEIGHT_OPTION[1])
    !F11::clickButton(BOTAO_FAIXA_DIREITA)
    ^F11::clickFixar(BOTAO_FAIXA_DIREITA)

    ; FAIXA ADICIONAL
    $F12::clickCombo_PlusFixar(BOTAO_FAIXA_DIREITA, HEIGHT_OPTION[2])
    !F12::clickButton(BOTAO_FAIXA_DIREITA)
    ^F12::clickFixar(BOTAO_FAIXA_DIREITA)



; PAV/DUP - TIPO SUPERFICIE
    ; PAV
    $1::clickCombo_PlusFixar(BOTAO_TIPO_SUPERFICIE, HEIGHT_OPTION[2])
    !1::clickButton(BOTAO_TIPO_SUPERFICIE)
    ^1::clickFixar(BOTAO_TIPO_SUPERFICIE)

    ; DUP
    $2::clickCombo_PlusFixar(BOTAO_TIPO_SUPERFICIE, HEIGHT_OPTION[1])
    !2::clickButton(BOTAO_TIPO_SUPERFICIE)
    ^2::clickFixar(BOTAO_TIPO_SUPERFICIE)



; NR_FX
    $Numpad1::clickCombo_PlusFixar(BOTAO_NRFX, HEIGHT_OPTION[1])
    $Numpad2::clickCombo_PlusFixar(BOTAO_NRFX, HEIGHT_OPTION[2])
    $Numpad3::clickCombo_PlusFixar(BOTAO_NRFX, HEIGHT_OPTION[3])
    $Numpad4::clickCombo_PlusFixar(BOTAO_NRFX, HEIGHT_OPTION[4])
    $Numpad5::clickCombo_PlusFixar(BOTAO_NRFX, HEIGHT_OPTION[5])
    $Numpad6::clickCombo_PlusFixar(BOTAO_NRFX, HEIGHT_OPTION[6])
    $Numpad7::clickCombo_PlusFixar(BOTAO_NRFX, HEIGHT_OPTION[7])
    $Numpad8::clickCombo_PlusFixar(BOTAO_NRFX, HEIGHT_OPTION[8])
    $Numpad9::clickCombo_PlusFixar(BOTAO_NRFX, HEIGHT_OPTION[8])
    
    !Numpad1::clickButton(BOTAO_NRFX)
    !Numpad2::clickButton(BOTAO_NRFX)
    !Numpad3::clickButton(BOTAO_NRFX)
    !Numpad4::clickButton(BOTAO_NRFX)
    !Numpad5::clickButton(BOTAO_NRFX)
    !Numpad6::clickButton(BOTAO_NRFX)
    !Numpad7::clickButton(BOTAO_NRFX)
    !Numpad8::clickButton(BOTAO_NRFX)
    !Numpad9::clickButton(BOTAO_NRFX)

    ^Numpad1::clickFixar(BOTAO_NRFX)
    ^Numpad2::clickFixar(BOTAO_NRFX)
    ^Numpad3::clickFixar(BOTAO_NRFX)
    ^Numpad4::clickFixar(BOTAO_NRFX)
    ^Numpad5::clickFixar(BOTAO_NRFX)
    ^Numpad6::clickFixar(BOTAO_NRFX)
    ^Numpad7::clickFixar(BOTAO_NRFX)
    ^Numpad8::clickFixar(BOTAO_NRFX)
    ^Numpad9::clickFixar(BOTAO_NRFX)


; CANTEIRO CENTRAL
    $c::clickButton_PlusFixar(BOTAO_CANTEIRO_CENTRAL)
    !c::clickButton(BOTAO_CANTEIRO_CENTRAL)
    ^c::clickFixar(BOTAO_CANTEIRO_CENTRAL)



; PERIMETRO URBANO
    $t::clickButton_PlusFixar(BOTAO_TRAVESSIA_URBANA)
    !t::clickButton(BOTAO_TRAVESSIA_URBANA)
    ^t::clickFixar(BOTAO_TRAVESSIA_URBANA)
    ; Second option
    $u::clickButton_PlusFixar(BOTAO_TRAVESSIA_URBANA)
    !u::clickButton(BOTAO_TRAVESSIA_URBANA)
    ^u::clickFixar(BOTAO_TRAVESSIA_URBANA)



; VIAS LATERAIS - MARGINAL
    $v::isSistlevActive() ; ACTIVATED VIA ARROW KEY
    !v::clickButton(BOTAO_VIAS_LATERAIS)
    ^v::clickFixar(BOTAO_VIAS_LATERAIS)
    ; Second option
    $m::isSistlevActive() ; ACTIVATED VIA ARROW KEY
    !m::clickButton(BOTAO_VIAS_LATERAIS)
    ^m::clickFixar(BOTAO_VIAS_LATERAIS)



; INTERCESSAO
    $i::isSistlevActive() ; ACTIVATED VIA ARROW KEY
    !i::clickButton(BOTAO_VIAS_INTERCESSOES)
    ^i::clickFixar(BOTAO_VIAS_INTERCESSOES)



; CONSTRUCAO
    $j::isSistlevActive() ; ACTIVATED VIA ARROW KEY
    !j::clickButton(BOTAO_CONSTRUCAO)
    ^j::clickFixar(BOTAO_CONSTRUCAO)



; EROSAO
    $e::isSistlevActive() ; ACTIVATED VIA ARROW KEY
    !e::clickButton(BOTAO_EROSAO)
    ^e::clickFixar(BOTAO_EROSAO)



; PARADA DE ONIBUS
    $o::isSistlevActive() ; ACTIVATED VIA ARROW KEY
    !o::clickButton(BOTAO_PARADA_ONIBUS)
    ^o::clickFixar(BOTAO_PARADA_ONIBUS)



; ACESSO
    $a::isSistlevActive() ; ACTIVATED VIA ARROW KEY
    !a::clickButton(BOTAO_ACESSO)
    ^a::clickFixar(BOTAO_ACESSO)



;  FUNCIONALIDADES ATIVIADAS VIA ARROW KEY
#If GetKeyState("Up", "P")  
    $a::clickCombo(BOTAO_ACESSO, HEIGHT_OPTION[1])
    $e::clickCombo_PlusFixar(BOTAO_EROSAO, HEIGHT_OPTION[1])
    $i::clickCombo(BOTAO_VIAS_INTERCESSOES, HEIGHT_OPTION[2])
    $o::clickCombo(BOTAO_PARADA_ONIBUS, HEIGHT_OPTION[1])
    $j::clickCombo(BOTAO_CONSTRUCAO, HEIGHT_OPTION[1])
    $v::clickCombo_PlusFixar(BOTAO_VIAS_LATERAIS, HEIGHT_OPTION[1])
    $m::clickCombo_PlusFixar(BOTAO_VIAS_LATERAIS, HEIGHT_OPTION[1])
#If



#If GetKeyState("Down", "P")  
    $a::clickCombo(BOTAO_ACESSO, HEIGHT_OPTION[1])
    $e::clickCombo_PlusFixar(BOTAO_EROSAO, HEIGHT_OPTION[1])
    $i::clickCombo(BOTAO_VIAS_INTERCESSOES, HEIGHT_OPTION[2])
    $o::clickCombo(BOTAO_PARADA_ONIBUS, HEIGHT_OPTION[1])
    $j::clickCombo(BOTAO_CONSTRUCAO, HEIGHT_OPTION[1])
    $v::clickCombo_PlusFixar(BOTAO_VIAS_LATERAIS, HEIGHT_OPTION[1])
    $m::clickCombo_PlusFixar(BOTAO_VIAS_LATERAIS, HEIGHT_OPTION[1])
#If



#If GetKeyState("Left", "P")  
    $a::clickCombo(BOTAO_ACESSO, HEIGHT_OPTION[3])
    $e::clickCombo_PlusFixar(BOTAO_EROSAO, HEIGHT_OPTION[3])
    $i::clickCombo(BOTAO_VIAS_INTERCESSOES, HEIGHT_OPTION[1])
    $o::clickCombo(BOTAO_PARADA_ONIBUS, HEIGHT_OPTION[3])
    $j::clickCombo(BOTAO_CONSTRUCAO, HEIGHT_OPTION[3])
    $v::clickCombo_PlusFixar(BOTAO_VIAS_LATERAIS, HEIGHT_OPTION[3])
    $m::clickCombo_PlusFixar(BOTAO_VIAS_LATERAIS, HEIGHT_OPTION[3])
#If



#If GetKeyState("Right", "P")  
    $a::clickCombo(BOTAO_ACESSO, HEIGHT_OPTION[2])
    $e::clickCombo_PlusFixar(BOTAO_EROSAO, HEIGHT_OPTION[2])
    $i::clickCombo(BOTAO_VIAS_INTERCESSOES, HEIGHT_OPTION[1])
    $o::clickCombo(BOTAO_PARADA_ONIBUS, HEIGHT_OPTION[2])
    $j::clickCombo(BOTAO_CONSTRUCAO, HEIGHT_OPTION[2])
    $v::clickCombo_PlusFixar(BOTAO_VIAS_LATERAIS, HEIGHT_OPTION[2])
    $m::clickCombo_PlusFixar(BOTAO_VIAS_LATERAIS, HEIGHT_OPTION[2])
#If