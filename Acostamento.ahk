; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; SCRIPT NAME: Sisthero - Acostamento
; DESCRIPTION: Automatizacao para o servido de acostamento no Sistlev
; AUTHOR: Victor Dalosto
; E-MAIL: victordalosto@gmail.com
; Version: v1.0 (2022_04_14)
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




; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;                           NUMERO DE FAIXAS
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Numpad1:: ; N Corresponde ao numero de faixas
    MouseMove, 350, 240
    Click
    MouseMove, 350, 255
    Click
    MouseMove, 350, 260
Return


Numpad2:: ; N Corresponde ao numero de faixas
    MouseMove, 350, 240
    Click
    MouseMove, 350, 269
    Click
    MouseMove, 350, 260
Return


Numpad3:: ; N Corresponde ao numero de faixas
    MouseMove, 350, 240
    Click
    MouseMove, 350, 283
    Click
    MouseMove, 350, 260
Return


Numpad4:: ; N Corresponde ao numero de faixas
    MouseMove, 350, 240
    Click
    MouseMove, 350, 295
    Click
    MouseMove, 350, 260
Return


Numpad5:: ; N Corresponde ao numero de faixas
    MouseMove, 350, 240
    Click
    MouseMove, 350, 308
    Click
    MouseMove, 350, 260
Return


Numpad6:: ; N Corresponde ao numero de faixas
    MouseMove, 350, 240
    Click
    MouseMove, 350, 322
    Click
    MouseMove, 350, 260
Return


Numpad7:: ; N Corresponde ao numero de faixas
    MouseMove, 350, 240
    Click
    MouseMove, 350, 334
    Click
    MouseMove, 350, 260
Return


Numpad8:: ; N Corresponde ao numero de faixas
    MouseMove, 350, 240
    Click
    MouseMove, 350, 347
    Click
    MouseMove, 350, 260
Return


Numpad0:: ; Desmarca a marcacao do NR_FX
    MouseMove, 350, 210
    Click
    MouseMove, 350, 260
Return




; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;                            ACOSTAMENTO
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

F1:: ; Condicao Acostamento: BOA
    MouseMove, 65, 240
    Click
    MouseMove, 65, 255
    Click
    MouseMove, 65, 260
Return


F2:: ; Condicao Acostamento: REGULAR
    MouseMove, 65, 240
    Click
    MouseMove, 65, 269
    Click
    MouseMove, 65, 260
Return


F3:: ; Condicao Acostamento: RUIM
    MouseMove, 65, 240
    Click
    MouseMove, 65, 283
    Click
    MouseMove, 65, 260
Return


F4:: ; FIXAR Condicao Acostamento
    MouseMove, 34, 262
    Click
    MouseMove, 34, 275
Return

