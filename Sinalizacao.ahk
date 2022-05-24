; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; SCRIPT NAME: Sinalizacao
; DESCRIPTION: Automatizacao para o servico de sinalizacao no Sistlev
; AUTHOR: Victor Dalosto
; E-MAIL: victordalosto@gmail.com
; Version: v2.2 (2022_05_24)
; Copyright @ 2020-2022 Victor Hugo Dalosto de Oliveira. All rights reserved.
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


; Recommended for performance and compatibility with future AutoHotkey releases.
#NoEnv
; Recommended for new scripts due to its superior speed and reliability.
SendMode Input
; Ensures a consistent starting directory.
SetWorkingDir %A_ScriptDir%
; Remove pop-up when overwrithing script.
#SingleInstance Force



; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;                 FUNCOES DE SISTEMA    (Basic_Sistlev)   
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

; Pausa o script e todas as suas funcionalidades
#p::Suspend ; WINDOWS + P
^p::Suspend ; CTRL + P
!p::Suspend ; ALT + P
+p::Suspend ; SHIFT + P


pressPauseButton() { ; varTogglePausePlay=0
    MouseMove, 682, 67
    Click
}


pressPlayButton() { ; varTogglePausePlay=1
    MouseMove, 659, 67
    Click
}


varTogglePausePlay = 0 ; 0:Paused, 1:Play
space::
    if (varTogglePausePlay = 1) {
        varTogglePausePlay = 0
        pressPauseButton()
    } else {
        varTogglePausePlay = 1
        pressPlayButton()
    }
Return


varToggleSpeedButton = 0 ; Handles the speed of Sistlev : -2|0.50, -1|0.75, 0|1.00, 1|1.5, 2|2
pressSpeedButton(varToggleSpeedButton) {
    if (varToggleSpeedButton = -2) { ; x1/2
        MouseMove, 710, 67
    }
    if (varToggleSpeedButton = -1) { ; x3/4
        MouseMove, 745, 67
    }
    if (varToggleSpeedButton = 0) { ; x1
        MouseMove, 775, 67
    }
    if (varToggleSpeedButton = 1) { ; x1.5
        MouseMove, 802, 67
    }
    if (varToggleSpeedButton = 2) { ; x2
        MouseMove, 825, 67
    }
    Click
}


NumpadSub:: ; Slows down the viewing speed
    if (not varToggleSpeedButton = -2) {
        varToggleSpeedButton -= 1
    }
    pressSpeedButton(varToggleSpeedButton)
Return


NumpadAdd:: ; Increases the viewing speed
    if (not varToggleSpeedButton = 2) {
        varToggleSpeedButton += 1
    }
    pressSpeedButton(varToggleSpeedButton)
Return


; Faz adiantar ou atrasar o video usando as setas <<< << < > >> >>>
Left:: ; SetaEsquerda = < (Aperta voltar 1)
    MouseMove, 962, 65
    Click
Return

!Left:: ; ALT+SetaEsquerda = << (Aperta voltar 5)
    MouseMove, 935, 65
    Click
Return

^Left:: ; CTRL+SetaEsquerda = <<< (Aperta voltar 10)
    MouseMove, 905, 65
    Click
Return

+Left:: ; SHIFT+SetaEsquerda = <<< (Aperta voltar 100)
    MouseMove, 867, 65
    Click
Return

Right:: ; SetaDireita = > (Aperta avançar 1)
    MouseMove, 983, 65
    Click
Return

!Right:: ; ALT+SetaDireita = >> (Aperta avançar 5)
    MouseMove, 1010, 65
    Click
Return

^Right:: ; CTRL+SetaDireita = >>> (Aperta avançar 10)
    MouseMove, 1040, 65
    Click
Return

+Right:: ; SHIFT+SetaDireita = >>>> (Aperta avançar 100)
    MouseMove, 1080, 65
    Click
Return





; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;                    SITUACAO DAS FAIXAS HORIZONTAIS
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

F1:: ; Eixo BOA
    MouseMove, 80, 240
    Click
    MouseMove, 80, 255
    Click
    MouseMove, 80, 260
Return

F2:: ; Eixo REGULAR
    MouseMove, 80, 240
    Click
    MouseMove, 80, 269
    Click
    MouseMove, 80, 260
Return

F3:: ; Eixo RUIM
    MouseMove, 80, 240
    Click
    MouseMove, 80, 283
    Click
    MouseMove, 80, 260
Return

F5:: ; Borda BOA
    MouseMove, 220, 240
    Click
    MouseMove, 220, 255
    Click
    MouseMove, 220, 260
Return

F6:: ; Borda REGULAR
    MouseMove, 220, 240
    Click
    MouseMove, 220, 269
    Click
    MouseMove, 220, 260
Return

F7:: ; Borda RUIM
    MouseMove, 220, 240
    Click
    MouseMove, 220, 283
    Click
    MouseMove, 220, 260
Return
 
F4:: ; FIXAR Eixo
    MouseMove, 34, 262
    Click
    MouseMove, 1003, 262
    Click
    MouseMove, 1003, 275
Return

F8:: ; Fixar Borda
    MouseMove, 162, 262
    Click
    MouseMove, 162, 275
Return

1:: ; FAIXA EIXO - CONTINUA
    MouseMove, 1030, 240
    Click
    MouseMove, 1030, 255
    Click
    MouseMove, 1030, 260
Return

2:: ; FAIXA EIXO - TRACEJADA
    MouseMove, 1030, 240
    Click
    MouseMove, 1030, 269
    Click
    MouseMove, 1030, 260
Return





; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;                    SITUACAO DAS PLACAS VERTICAIS
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pressButtonPlacaVerticalBoa() {
    MouseMove, 350, 240
    Click
    MouseMove, 350, 255
    Click
}


pressButtonVerticalRegular() {
    MouseMove, 350, 240
    Click
    MouseMove, 350, 269
    Click
}


pressButtonVerticalRuim() {
    MouseMove, 350, 240
    Click
    MouseMove, 350, 283
    Click
}


P::  ; Placa Regular
    pressButtonVerticalRegular()
    MouseMove, 350, 260
Return


ç::  ; Placa RUIM
    pressButtonVerticalRuim()
    MouseMove, 350, 260
Return


marcaPlacaAdvertencia() {
    pressButtonPlacaVerticalBoa()
    MouseMove, 480, 240
    Click
    MouseMove, 480, 255
    Click
    MouseMove, 480, 260
}


a::   ; VERTICAL - Advertencia
    marcaPlacaAdvertencia()
Return


z::   ; VERTICAL - Atrativo turistico
    pressButtonPlacaVerticalBoa()
    MouseMove, 480, 240
    Click
    MouseMove, 480, 269
    Click
    MouseMove, 480, 260
Return


d::   ; VERTICAL - Educativa
    pressButtonPlacaVerticalBoa()
    MouseMove, 480, 240
    Click
    MouseMove, 480, 283
    Click
    MouseMove, 480, 260
Return


i::   ; VERTICAL - Indicativa
    pressButtonPlacaVerticalBoa()
    MouseMove, 480, 240
    Click
    MouseMove, 480, 295
    Click
    MouseMove, 480, 260
Return


f::   ; VERTICAL - Regulamentacao
    pressButtonPlacaVerticalBoa()
    MouseMove, 480, 240
    Click
    MouseMove, 480, 308
    Click
    MouseMove, 480, 260
Return


s::  ; VERTICAL - Servicos auxiliares
    pressButtonPlacaVerticalBoa()
    MouseMove, 480, 240
    Click
    MouseMove, 480, 322
    Click
    MouseMove, 480, 260
Return


t::  ; VERTICAL - Temporaria
    pressButtonPlacaVerticalBoa()
    MouseMove, 480, 240
    Click
    MouseMove, 480, 334
    Click
    MouseMove, 480, 260
Return





; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;                    DEFENSAS E DISPOSTIVOS DE PROTECAO
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


F12::  ; FIXAR DISPOSITIVOS
    MouseMove, 573, 262
    Click
    MouseMove, 870, 262
    Click
    MouseMove, 870, 275
Return


Y::  ; CLICK DEFEITO NA DEFENSA
    MouseMove, 780, 210
    Click
    MouseMove, 780, 230
Return


^Y::  ; FIXA O DEFEITO NA DEFENSA
    MouseMove, 780, 210
    Click
    MouseMove, 720, 262
    Click
    MouseMove, 780, 230
Return



C::  ; DEFENSA - Concreto
    MouseMove, 630, 240
    Click
    MouseMove, 630, 255
    Click
    MouseMove, 630, 260
Return



G::   ; DEFENSA - Guarda Corpo
    MouseMove, 630, 240
    Click
    MouseMove, 630, 269
    Click
    MouseMove, 630, 260
Return


!M::  ; DEFENSA - Metalica DUPLA
    MouseMove, 630, 240
    Click
    MouseMove, 630, 283
    Click
    MouseMove, 630, 260
Return


M::  ; DEFENSA - Metalica SIMPLES
    MouseMove, 630, 240
    Click
    MouseMove, 630, 295
    Click
    MouseMove, 630, 260
Return


; DEFENSA - MISTA
^C::
^G::
^N::
^M::
    MouseMove, 630, 240
    Click
    MouseMove, 630, 308
    Click
    MouseMove, 630, 260
Return


N::  ; DEFENSA - New Jersey
    MouseMove, 630, 240
    Click
    MouseMove, 630, 322
    Click
    MouseMove, 630, 260
Return


F10::  ; DISP - Ambos
    MouseMove, 920, 240
    Click
    MouseMove, 920, 255
    Click
    MouseMove, 920, 260
Return


F9::  ; DISP - Esquerda
    MouseMove, 920, 240
    Click
    MouseMove, 920, 283
    Click
    MouseMove, 920, 260
Return


F11::  ; DISP - Direita
    MouseMove, 920, 240
    Click
    MouseMove, 920, 269
    Click
    MouseMove, 920, 260
Return





; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;                               NOVOS BOTOES
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


L::  ; SEMAFAORO
    MouseMove, 1120, 210
    Click
    MouseMove, 1120, 230
Return


J::  ; BARREIRA ELETRONICA
    MouseMove, 1220, 210
    Click
    MouseMove, 1220, 230
Return


K::  ; LOMBADA
    MouseMove, 1325, 210
    Click
    MouseMove, 1325, 230
Return


H::  ; ILUMINACAO
    MouseMove, 1420, 210
    Click
    MouseMove, 1420, 230
Return

7::  ; FAIXA DE PEDESTRE
    MouseMove, 1527, 210
    Click
    MouseMove, 1527, 230
Return


varTogglePosto = 0
8::  ; Alterna entre POSTO DE GASOLINA / SERVICO
    MouseMove, 1632, 240
    Click
    if (varTogglePosto = 0) {
        MouseMove, 1632, 269
        varTogglePosto = 1
    } else {
        MouseMove, 1632, 255
        varTogglePosto = 0
    }
    Click
Return


varToggleVegetacao = 0
9::  ; Alterna entre vegetacao RASA | MEDIA | DENSA
    MouseMove, 1727, 240
    Click 
    if (varToggleVegetacao = 1) {
        varToggleVegetacao = 2
        MouseMove, 1727, 269
    } else if (varToggleVegetacao = 2) {
        varToggleVegetacao = 0
        MouseMove, 1727, 255
    } else {
        varToggleVegetacao = 1
        MouseMove, 1727, 283
    }
    Click
Return


^Numpad1::
    loopAdvertencia(1)
Return

^Numpad2::
    loopAdvertencia(2)
Return

^Numpad3::
    loopAdvertencia(3)
Return

^Numpad4::
    loopAdvertencia(4)
Return

^Numpad5::
    loopAdvertencia(5)
Return

^Numpad6::
    loopAdvertencia(6)
Return

^Numpad7::
    loopAdvertencia(7)
Return

^Numpad8::
    loopAdvertencia(8)
Return

^Numpad9::
    loopAdvertencia(9)
Return


loopAdvertencia(numInteracoes) {
    pressPauseButton()
    while(numInteracoes > 0) {
        marcaPlacaAdvertencia()
        MouseMove, 983, 65
        Click
        numInteracoes -= 1
    }
    varTogglePausePlay = 1
    pressPlayButton()
}