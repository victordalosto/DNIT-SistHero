; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; SCRIPT NAME: Sistlev_Basic
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