; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; SCRIPT NAME: Pavimento
; DESCRIPTION: Automatizacao para marcacao de defeitos de pavimento.
; AUTHOR: Victor Dalosto
; E-MAIL: victordalosto@gmail.com
; Version: v3.01 (2022-08-05)
; Copyright @ 2020-2022 Victor Hugo Dalosto de Oliveira. All rights reserved.
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

; Some AHK initialization routines
SendMode Input              ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#NoEnv                      ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force       ; Remove pop-up when overwrithing script.

; Initializating variables
varToggleSpeedButton = 0 ; Handles the speed of Sistlev : -2|0.50, -1|0.75, 0|1.00, 1|1.5, 2|2
frasesPedrao := ["Eu hein, sartei de banda.", "Ta vendo claudiana, sobrou pra mim.", "Tem que ser pelo menos uma balzaquiana.", "hummm!!!!", "Um é pouco, dois é bom, mas três vezes vocês tomam vergonha na cara e comprem o cafezim de vocês.", "ishheee.", "Cafezin né, se não o bicho pega.", "Minha mãe não deixa!", "Cês fizeram eu errar.", "To trabalhando aqui.", "tututu tututu tututu.", "SPAM.", "De poeta e louco, todo mundo tem um pouco.", "Pintei meu cabelo só para dar um ar intelectual.", "A, tabom. Agora é só eu quem faz isso neh...", "Oi Tia jane. Desculpa, não posso falar agora.", "Eu sou o poeta e os artistas são vocês.", "Qualquer dia desses vou fazer um cafezin pro ces.", "aaaaaaaaaaaaa.", "Idade está no coração das pessoas.", "Vixi foi um lápis.", "Sou viciado em queijo.", "Eu não sou desse planeta, não sei onde deixei minha nave.", "Eu gosto muito de trabalhar, gente.", "Vocês estão passando preguiça p mim.", "Só um pititico de café que eu tomo.", "Lá todo marmore é carrara, todo tapete é persa e todo lustre é da boemia.", "Grande hotel Barrera de Araxá é o maior hotel da america latina.", "15 min de banho de lama.. depois voce entra numa banheira mais 15 min com agua sulfurosa.... depois toma uma ducha com agua sulfurosa... depois vai pro colchão. quinze quinze quinze.", "As vezes a melhor resposta é o silencio.", "E promoção? ou é para mocinha?", "Meu advogado ta lá em cima.", "O amor é uma faca FATAL de dois gumes. O amor é doloroso, mas mais doloroso ainda é não amar.", "Minha diabete é emocional, depois vou contar pro cês um caso sério da caixa economica.", "O saúde está no solado dos pés.", "A idade está no coração das pessoas.", "Tem gente que tem vício de pinga, o meu é café.", "Toda vez que vou visitar minha mãe eu levo uma pacote de cigarro pra ela.", "Brasília é uma coisa de louco.", "Sabe qual é a maior tristeza de uma arvore? É ver que o cabo do machado que a corta é feita de madeira.", "Ta vendo como são as coisas.", "Tem muitozano que faço isso.", "Uai, tá tudo aceso!", "Cada um tem que agir por instinto.", "Mãe é coisa sagrada, tem que aproveitar em quanto tem.", "Cês tão bom de serviço.", "Agora cê falou certinho.", "Qualquer dia desses vou fazer um cafezinho pra vocês.", "Vou até tomar um cafezinho.", "hoje andei pouquinho, caminhei só uns 40 min... depois fui la no Dona de Casa.", "Essa blusa aqui é por causa do papai noel.", "Já viram que os prédios aqui em brasilia são tudo baixinho? uma maravilha!!!", "Sem comentários.", "Com comentarios: Uma folha nada mais é que um simples papel, até que alguem escreva algo nela. Assim como um coração nada mais é que um simples vazio até que alguém o preencha.", "Voces ja viram o coração que tem na arvore aqui no DNIT? Coisa mais linda.", "Ziraldo tem 3 irmãos. Um é 100 por cento negro, o outro é 100 por cento branco, e o outro o ziraldo é indiano.", "BREKA TREM. Oh Victor, olha aqui, não breka.", "Se tiver a Jordana de Biquini até eu vou trabalhar com oces.", "Quando eu to muito na dúvida assim eu coloco CBUQ.", "Se a mulher tiver até uns 32 anos ta valendo.", "Esse restauranteziho aqui é muito ruim. É ruim de estacionar, da não. Só tó aqui por causa de voces.", "O gado daqui é mais bonito.", "Minha mãe falava pra mim: Pedro, você é a Lata do Fabio Jr.", "Meu signo é leão. UAAAAAAAAAA.", "Eu já vim almoçar aqui com a Claudiana. É encostadinho ali com o shopping?", "5 cidades de Minas: Beraba, Berlandia, bia, Belzonte, é a Bosta de araguari.", "Preciso fazer esse trecho? Olha aqui? Nunca vi um trem desses.", "Aaaaah. Isso é complicado.", "Isso não me pega mais não.", "Hein?", "Deu um tombo no telhado?", "Ces não querem ir na Dona Cecília comer um trenzim não?", "A gente podia marcar de ir na roda gigante pra gente gritar la de cima..... Aaaaaaaa.", "Temos que andar de lancha, dar uma volta pelo lago.. vamos juntar e organizar isso aí.", "Ziralzi gostava muito de ir no pães e vinho ali no Sudoeste.", "O Ronaldo meu barbeiro sempre falava... Nunca vi alguém com tanto cabelo.", "Tenho 100% de certeza.", "Cês desculpa a vergonha que eu passei.", "Melhor que arroz doce em pagode.", "Isso ta mais pra jacaré que Tarzan.", "Águas passadas não movem moinhos.", "Vc sabem qual é a fruta mais limpa do mundo? A banana, cê tira a casca e tá limpinha.", "Quando eu nasci não tinha talco, mamãe passou açucar em mim, por isso hjtenho diabete.", "Restaurante bom e aquele que a gnt se serve.", "Tudo tem seu tempo.", "A cada 10 anos a gente é uma nova pessoa.", "Ai você me apertou.", "Que que é isso.", "Eu não assito Globo.", "Quero ir na roda Gigante para fazer uhullll la em cima.", "Estão p consertando a caixa d'água do prédio.", "Qual é seu e-mail? vou te mandar um poema.", "Eu não troco água para vcs irem treinando.", "Emburrei.", "Fiquei Mudo.", "Poem lingua pra ele.", "Tinha um trecho de ontem, aí terminei hoje!", "Queijo bom é da Serra de salitro minas gerais.", "Eu tenho muitos defeitos, mas esse eu não tenho não chefe.", "Se Deus quiser, no fim do ano eu vou virar imortal.", "Espera só eu lavar minha caneca.", "Gente, é so eu que to com sono?", "Fui campeão mineiro de tiro com arma de fogo.", "Onde eu fui amarrar a minha egua.", "O Banqueiro é um agiota permitido pela LEI.", "Quem é essa marmota?", "AAAii meu Deus do ceu.", "O negocio vai ser pesado chefe.", "Vou levar vocês na torre qualquer dia.", "Café frio num da não.", "Deixa eu chorar um pouquinho.", "Cafezin pode deixar passar batido não.", "Isso não é mentira não, é verdade", "Essa é de entortar o cano da garrucha.", "Je vous salue, Marie pleine de grâce, le Seigneur est avec toi, Tu es bénie entre toutes les femmes et, Jésus.", "É porque a turma ta querendo dar uma passada lá.", "Essa não é minha praia não."]
monitorPavimento = 0
toggleOAE = 0



; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;                 FUNCOES DE SISTEMA    (Basic_Sistlev)   
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

; Pausa o script e todas as suas funcionalidades
#p::Suspend ; WINDOWS + P
^p::Suspend ; CTRL + P
!p::Suspend ; ALT + P


Switch_PlayPause() {
    If  WinActive("SistLev - Escritório") {
        MouseMove, 675, 80
        PixelGetColor, colorPlay, 659, 66
        if (colorPlay == 0xA5542E)
            pressPlayButton()
        else
            pressPauseButton()
}}


pressPauseButton() {
    MouseMove, 682, 67
    Click
}


pressPlayButton() {
    MouseMove, 659, 67
    Click
}


space::
    Switch_PlayPause()
Return


pressSpeedButton(varToggleSpeedButton) {
    If  WinActive("SistLev - Escritório") {
        if (varToggleSpeedButton = -2) ; x1/2
            MouseMove, 710, 67
        else if (varToggleSpeedButton = -1) ; x3/4
            MouseMove, 745, 67
        else if (varToggleSpeedButton = 0) ; x1
            MouseMove, 775, 67
        else if (varToggleSpeedButton = 1) ; x1.5
            MouseMove, 802, 67
        else if (varToggleSpeedButton = 2) ; x2
            MouseMove, 825, 67
        Click
}}



NumpadSub:: ; Slows down the viewing speed
    If  WinActive("SistLev - Escritório") {
        if (not varToggleSpeedButton = -2) {
            varToggleSpeedButton -= 1
        }
        pressSpeedButton(varToggleSpeedButton)
    }
Return


NumpadAdd:: ; Increases the viewing speed
    If  WinActive("SistLev - Escritório") {
        if (not varToggleSpeedButton = 2) {
            varToggleSpeedButton += 1
        }
        pressSpeedButton(varToggleSpeedButton)
    }
Return



; Faz adiantar ou atrasar o video usando as setas <<< << < > >> >>>
Left:: ; SetaEsquerda = < (Aperta voltar 1)
    If  WinActive("SistLev - Escritório") {
        MouseMove, 962, 65
        Click
    }
Return

!Left:: ; ALT+SetaEsquerda = << (Aperta voltar 5)
    If  WinActive("SistLev - Escritório") {
        MouseMove, 935, 65
        Click
    }
Return

^Left:: ; CTRL+SetaEsquerda = <<< (Aperta voltar 10)
    If  WinActive("SistLev - Escritório") {
        MouseMove, 905, 65
        Click
    }
Return

+Left:: ; SHIFT+SetaEsquerda = <<< (Aperta voltar 100)
    If  WinActive("SistLev - Escritório") {
        MouseMove, 867, 65
        Click
    }
Return

Right:: ; SetaDireita = > (Aperta avançar 1)
    If  WinActive("SistLev - Escritório") {
        MouseMove, 983, 65
        Click
    }
Return

!Right:: ; ALT+SetaDireita = >> (Aperta avançar 5)
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1010, 65
        Click
    }
Return

^Right:: ; CTRL+SetaDireita = >>> (Aperta avançar 10)
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1040, 65
        Click
    }
Return

+Right:: ; SHIFT+SetaDireita = >>>> (Aperta avançar 100)
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1080, 65
        Click
    }
Return


; Pop-menu com 117 frases do pedrão
Capslock:: 
    Random, rnd, 1, 117
    frase = % frasesPedrao[rnd]
    MsgBox 64, Sabedoria do dia:, Frases do Pedrão:`n%frase%`n`n
Return





; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;                           TIPO DE PAVIMENTO
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


posicaoPavimento(tipo) {
    global monitorPavimento
    If  WinActive("SistLev - Escritório") && (monitorPavimento == 0) {
        monitorPavimento = 1
        pressPauseButton()
        if (tipo == "cbuq") {
            x1 = 1355
            x2 = 1380
        } else if (tipo == "micro") {
            x1 = 1442
            x2 = 1470
        } else if (tipo == "ts") {
            x1 = 1529
            x2 = 1555
        } else if (tipo == "concreto") {
            x1 = 1620
            x2 = 1655
        } else if (tipo == "obras") {
            x1 = 1725
            x2 = 1755
        } else if (tipo == "outros") {
            x1 = 1811
            x2 = 1840
        }
        desmarcaPavimento()
        marcaPavimento(x1, x2)
        monitorPavimento = 0
    }
}


desmarcaPavimento() {
    If  WinActive("SistLev - Escritório") && (monitorPavimento == 0) {
        array := [1352, 1441, 1529, 1617, 1721, 1808]
        MouseMove, 1700, 300
        for index, elem in array {
            PixelGetColor, color, elem, 210
            if (color == 0xF7E4CC) {
                MouseMove, %elem%, 210
                Click
            }
            PixelGetColor, color, elem, 266
            if (color == 0x6B6B6B) {
                MouseMove, %elem%, 264
                Click
            }
        }
    }
}


marcaPavimento(x1, x2) {
    MouseMove, x1, 262
    Click
    MouseMove, x2, 210
    Click
}
 

F1::
    posicaoPavimento("cbuq")
Return

F2::
    posicaoPavimento("micro")
Return

F3::
    posicaoPavimento("ts")
Return

F4::
    posicaoPavimento("concreto")
Return

F5::
    posicaoPavimento("obras")
Return

F6::
    posicaoPavimento("outros")
Return

!F1::
!F2::
!F3::
!F4::
!F5::
!F6::
    pressPauseButton()
    desmarcaPavimento()
Return

; !F12::
;     pressPauseButton()
;     array := [1352, 1441, 1529, 1617, 1721, 1808]
;     for index, elem in array {
;         PixelGetColor, color, elem, 210
;         if (color == 0xF7E4CC) {
;             MouseMove, %elem%, 210
;             Click
;         }
;         PixelGetColor, color, elem, 266
;         if (color == 0x6B6B6B) {
;             MouseMove, %elem%, 264
;             Click
;         }
;     }
; Return


; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;                           DEFEITOS
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


; Script MR.Musculo para desmarcar panela
^!t::
    If  WinActive("SistLev - Escritório") {
        numeroMaximoVoltas = 100
        while (numeroMaximoVoltas > 0) {
            PixelGetColor, color, 432, 210
            if (color == 0xF7E4CC) {
                numeroMaximoVoltas = 0
                MsgBox, 4, MR. Musculo, Desmarcar a danada ?
                IfMsgBox Yes
                    MouseMove, 460, 210
                else
                    MouseMove, 460, 260
                Click
            } else {
                numeroMaximoVoltas -= 1
                MouseMove, 962, 65
                Click
            }
        }
        MouseMove, 460, 260
    }
Return


^q::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 65, 210
        Click
        MouseMove, 32, 262
        Click
    }
Return

^w::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 155, 210
        Click
        MouseMove, 128, 262
        Click
    }
Return

^e::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 245, 210
        Click
        MouseMove, 217, 262
        Click
    }
Return

^r::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 355, 210
        Click
        MouseMove, 302, 262
        Click
    }
Return

^y::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 555, 210
        Click
        MouseMove, 520, 262
        Click
    }
Return

^u::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 665, 210
        Click
        MouseMove, 622, 262
        Click
    }
Return

^i::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 790, 210
        Click
        MouseMove, 732, 262
        Click
    }
Return

^o::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 920, 210
        Click
        MouseMove, 883, 262
        Click
    }
Return

^a::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1040, 210
        Click
        MouseMove, 990, 262
        Click
    }
Return

^s::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1170, 210
        Click
        MouseMove, 1125, 262
        Click
    }
Return

^d::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1282, 210
        Click
        MouseMove, 1243, 262
        Click
    }
Return


!q::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 32, 230
        PixelGetColor, color, 32, 210
        if (color == 0xF7E4CC) {
            MouseMove, 32, 210
            Click
        }}
Return

!w::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 128, 230
        PixelGetColor, color, 128, 210
        if (color == 0xF7E4CC) {
            MouseMove, 155, 210
            Click
        }
    }
Return

!e::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 219, 230
        PixelGetColor, color, 219, 210
        if (color == 0xF7E4CC) {
            MouseMove, 245, 210
            Click
        }
    }
Return

!r::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 302, 230
        PixelGetColor, color, 302, 210
        if (color == 0xF7E4CC) {
            MouseMove, 355, 210
            Click
        }
    }
Return

!y::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 520, 230
        PixelGetColor, color, 520, 210
        if (color == 0xF7E4CC) {
            MouseMove, 555, 210
            Click
        }
    }
Return

!u::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 620, 230
        PixelGetColor, color, 620, 210
        if (color == 0xF7E4CC) {
            MouseMove, 665, 210
            Click
        }
    }
Return

!i::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 735, 230
        PixelGetColor, color, 735, 210
        if (color == 0xF7E4CC) {
            MouseMove, 790, 210
            Click
        }
    }
Return

!o::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 882, 230
        PixelGetColor, color, 882, 210
        if (color == 0xF7E4CC) {
            MouseMove, 920, 210
            Click
        }
    }
Return

!a::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 987, 230
        PixelGetColor, color, 987, 210
        if (color == 0xF7E4CC) {
            MouseMove, 1040, 210
            Click
        }
    }
Return

!s::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1123, 230
        PixelGetColor, color, 1123, 210
        if (color == 0xF7E4CC) {
            MouseMove, 1170, 210
            Click
        }
    }
Return

!d::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1243, 230
        PixelGetColor, color, 1243, 210
        if (color == 0xF7E4CC) {
            MouseMove, 1282, 210
            Click
        }
    }
Return

!t::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 432, 230
        PixelGetColor, color, 432, 210
        if (color == 0xF7E4CC) {
            MouseMove, 460, 210
            Click
        }
    }
Return





; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;                           TIPO DE PAVIMENTO
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

handlesOAE() {
    If  WinActive("SistLev - Escritório") {
        global toggleOAE
        if (toggleOAE == 1) {
            MouseMove, 1920, 210
            Click
        }}
        MouseMove, 1900, 262
        Click
        toggleOAE := ! toggleOAE
}

F10::
    MouseMove, 1920, 210
    Click

    MouseMove, 1900, 262
    Click
Return


F11::
PixelGetColor, colorButton, 1901, 211
        PixelGetColor, colorFix, 1901, 265
        MsgBox, %colorFix% - %colorButton%
Return

NumPad1::
    MouseMove, 1920, 240
    Click
    MouseMove, 1920, 296
    Click
    handlesOAE()
Return

NumPad2::
    MouseMove, 1920, 240
    Click
    MouseMove, 1920, 322
    Click
    handlesOAE()
Return

NumPad3::
    MouseMove, 1920, 240
    Click
    MouseMove, 1920, 283
    Click
    handlesOAE()
Return

NumPad4::
    MouseMove, 1920, 240
    Click
    MouseMove, 1920, 271
    Click
    handlesOAE()
Return

NumPad5::
    MouseMove, 1920, 240
    Click
    MouseMove, 1920, 310
    Click
    handlesOAE()
Return

NumPad6::
    MouseMove, 1920, 240
    Click
    MouseMove, 1920, 256
    Click
    handlesOAE()
Return




F12::
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
MsgBox, The cursor is at X%MouseX% Y%MouseY% - Colors is %color%.
Return