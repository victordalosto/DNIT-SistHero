; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; SCRIPT NAME: Sisthero - Sinalizacao (BASIC)
; DESCRIPTION: Automatizacao para o servido de sinalizacao no Sistlev
; AUTHOR: Victor Dalosto
; E-MAIL: victordalosto@gmail.com
; Version: v2.0 (2022_04_13)
; Copyright @ 2018 Victor Hugo Dalosto de Oliveira. All rights reserved.
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
;                            FUNCOES DE SISTEMA                          
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

; Pausa o script e todas as suas funcionalidades
^p::Suspend ; WINDOWS + P
#p::Suspend ; CTRL + P


pressPause() {
    MouseMove, 682, 67
    Click
}


pressPlay() {
    MouseMove, 659, 67
    Click
}


varTogglePause = 0 ; 0:Paused, 1:Play
space::
    if (varTogglePause = 1) {
        varTogglePause = 0
        pressPause()
    } else {
        varTogglePause = 1
        pressPlay()
    }
Return


varToggleSpeed = 0 ; Handles the speed of Sistlev : -2:x1/2, -1:x3/4, 0:x1, 1:x1.5, 2:x2
pressSpeedSistlev(varToggleSpeed) {
    if (varToggleSpeed = -2) {
        MouseMove, 710, 67
    }
    if (varToggleSpeed = -1) {
        MouseMove, 745, 67
    }
    if (varToggleSpeed = 0) {
        MouseMove, 775, 67
    }
    if (varToggleSpeed = 1) {
        MouseMove, 802, 67
    }
    if (varToggleSpeed = 2) {
        MouseMove, 825, 67
    }
    Click
}


NumpadSub::
    if (not varToggleSpeed = -2) {
        varToggleSpeed -= 1
    }
    pressSpeedSistlev(varToggleSpeed)
Return


NumpadAdd::
    if (not varToggleSpeed = 2) {
        varToggleSpeed += 1
    }
    pressSpeedSistlev(varToggleSpeed)
Return


; Faz adiantar ou atrasar o video usando as setas <<< << < > >> >>>
Left::  
    MouseMove, 962, 65
    Click
Return

^Left::
    MouseMove, 935, 65
    Click
Return

Down::
    MouseMove, 905, 65
    Click
Return

^Down::
    MouseMove, 867, 65
    Click
Return

Right::
    MouseMove, 983, 65
    Click
Return

^Right::
    MouseMove, 1010, 65
    Click
Return

Up::
    MouseMove, 1040, 65
    Click
Return

^Up::
    MouseMove, 1080, 65
    Click
Return