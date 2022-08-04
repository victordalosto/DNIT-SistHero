; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; SCRIPT NAME: Sistlev_Basic
; DESCRIPTION: Automatizacao para o servico de sinalizacao no Sistlev
; AUTHOR: Victor Dalosto
; E-MAIL: victordalosto@gmail.com
; Version: v2.46 (2022-07-29)
; Copyright @ 2020-2022 Victor Hugo Dalosto de Oliveira. All rights reserved.
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

; Some AHK initialization routines
SendMode Input              ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#NoEnv                      ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force       ; Remove pop-up when overwrithing script.

; Initializating variables
varTogglePausePlay = 1   ; 0:Paused, 1:Play
varToggleSpeedButton = 0 ; Handles the speed of Sistlev : -2|0.50, -1|0.75, 0|1.00, 1|1.5, 2|2
frasesPedrao := ["Eu hein, sartei de banda.", "Ta vendo claudiana, sobrou pra mim.", "Tem que ser pelo menos uma balzaquiana.", "hummm!!!!", "Um é pouco, dois é bom, mas três vezes vocês tomam vergonha na cara e comprem o cafezim de vocês.", "ishheee.", "Cafezin né, se não o bicho pega.", "Minha mãe não deixa!", "Cês fizeram eu errar.", "To trabalhando aqui.", "tututu tututu tututu.", "SPAM.", "De poeta e louco, todo mundo tem um pouco.", "Pintei meu cabelo só para dar um ar intelectual.", "A, tabom. Agora é só eu quem faz isso neh...", "Oi Tia jane. Desculpa, não posso falar agora.", "Eu sou o poeta e os artistas são vocês.", "Qualquer dia desses vou fazer um cafezin pro ces.", "aaaaaaaaaaaaa.", "Idade está no coração das pessoas.", "Vixi foi um lápis.", "Sou viciado em queijo.", "Eu não sou desse planeta, não sei onde deixei minha nave.", "Eu gosto muito de trabalhar, gente.", "Vocês estão passando preguiça p mim.", "Só um pititico de café que eu tomo.", "Lá todo marmore é carrara, todo tapete é persa e todo lustre é da boemia.", "Grande hotel Barrera de Araxá é o maior hotel da america latina.", "15 min de banho de lama.. depois voce entra numa banheira mais 15 min com agua sulfurosa.... depois toma uma ducha com agua sulfurosa... depois vai pro colchão. quinze quinze quinze.", "As vezes a melhor resposta é o silencio.", "E promoção? ou é para mocinha?", "Meu advogado ta lá em cima.", "O amor é uma faca FATAL de dois gumes. O amor é doloroso, mas mais doloroso ainda é não amar.", "Minha diabete é emocional, depois vou contar pro cês um caso sério da caixa economica.", "O saúde está no solado dos pés.", "A idade está no coração das pessoas.", "Tem gente que tem vício de pinga, o meu é café.", "Toda vez que vou visitar minha mãe eu levo uma pacote de cigarro pra ela.", "Brasília é uma coisa de louco.", "Sabe qual é a maior tristeza de uma arvore? É ver que o cabo do machado que a corta é feita de madeira.", "Ta vendo como são as coisas.", "Tem muitozano que faço isso.", "Uai, tá tudo aceso!", "Cada um tem que agir por instinto.", "Mãe é coisa sagrada, tem que aproveitar em quanto tem.", "Cês tão bom de serviço.", "Agora cê falou certinho.", "Qualquer dia desses vou fazer um cafezinho pra vocês.", "Vou até tomar um cafezinho.", "hoje andei pouquinho, caminhei só uns 40 min... depois fui la no Dona de Casa.", "Essa blusa aqui é por causa do papai noel.", "Já viram que os prédios aqui em brasilia são tudo baixinho? uma maravilha!!!", "Sem comentários.", "Com comentarios: Uma folha nada mais é que um simples papel, até que alguem escreva algo nela. Assim como um coração nada mais é que um simples vazio até que alguém o preencha.", "Voces ja viram o coração que tem na arvore aqui no DNIT? Coisa mais linda.", "Ziraldo tem 3 irmãos. Um é 100 por cento negro, o outro é 100 por cento branco, e o outro o ziraldo é indiano.", "BREKA TREM. Oh Victor, olha aqui, não breka.", "Se tiver a Jordana de Biquini até eu vou trabalhar com oces.", "Quando eu to muito na dúvida assim eu coloco CBUQ.", "Se a mulher tiver até uns 32 anos ta valendo.", "Esse restauranteziho aqui é muito ruim. É ruim de estacionar, da não. Só tó aqui por causa de voces.", "O gado daqui é mais bonito.", "Minha mãe falava pra mim: Pedro, você é a Lata do Fabio Jr.", "Meu signo é leão. UAAAAAAAAAA.", "Eu já vim almoçar aqui com a Claudiana. É encostadinho ali com o shopping?", "5 cidades de Minas: Beraba, Berlandia, bia, Belzonte, é a Bosta de araguari.", "Preciso fazer esse trecho? Olha aqui? Nunca vi um trem desses.", "Aaaaah. Isso é complicado.", "Isso não me pega mais não.", "Hein?", "Deu um tombo no telhado?", "Ces não querem ir na Dona Cecília comer um trenzim não?", "A gente podia marcar de ir na roda gigante pra gente gritar la de cima..... Aaaaaaaa.", "Temos que andar de lancha, dar uma volta pelo lago.. vamos juntar e organizar isso aí.", "Ziralzi gostava muito de ir no pães e vinho ali no Sudoeste.", "O Ronaldo meu barbeiro sempre falava... Nunca vi alguém com tanto cabelo.", "Tenho 100% de certeza.", "Cês desculpa a vergonha que eu passei.", "Melhor que arroz doce em pagode.", "Isso ta mais pra jacaré que Tarzan.", "Águas passadas não movem moinhos.", "Vc sabem qual é a fruta mais limpa do mundo? A banana, cê tira a casca e tá limpinha.", "Quando eu nasci não tinha talco, mamãe passou açucar em mim, por isso hjtenho diabete.", "Restaurante bom e aquele que a gnt se serve.", "Tudo tem seu tempo.", "A cada 10 anos a gente é uma nova pessoa.", "Ai você me apertou.", "Que que é isso.", "Eu não assito Globo.", "Quero ir na roda Gigante para fazer uhullll la em cima.", "Estão p consertando a caixa d'água do prédio.", "Qual é seu e-mail? vou te mandar um poema.", "Eu não troco água para vcs irem treinando.", "Emburrei.", "Fiquei Mudo.", "Poem lingua pra ele.", "Tinha um trecho de ontem, aí terminei hoje!", "Queijo bom é da Serra de salitro minas gerais.", "Eu tenho muitos defeitos, mas esse eu não tenho não chefe.", "Se Deus quiser, no fim do ano eu vou virar imortal.", "Espera só eu lavar minha caneca.", "Gente, é so eu que to com sono?", "Fui campeão mineiro de tiro com arma de fogo.", "Onde eu fui amarrar a minha egua.", "O Banqueiro é um agiota permitido pela LEI.", "Quem é essa marmota?", "AAAii meu Deus do ceu.", "O negocio vai ser pesado chefe.", "Vou levar vocês na torre qualquer dia.", "Café frio num da não.", "Deixa eu chorar um pouquinho.", "Cafezin pode deixar passar batido não.", "Isso não é mentira não, é verdade", "Essa é de entortar o cano da garrucha.", "Je vous salue, Marie pleine de grâce, le Seigneur est avec toi, Tu es bénie entre toutes les femmes et, Jésus.", "É porque a turma ta querendo dar uma passada lá.", "Essa não é minha praia não."]
varTogglePosto = 0
varToggleVegetacao = 0



; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;                 FUNCOES DE SISTEMA    (Basic_Sistlev)   
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

; Pausa o script e todas as suas funcionalidades
#p::Suspend ; WINDOWS + P
^p::Suspend ; CTRL + P
!p::Suspend ; ALT + P


pressPauseButton() { ; varTogglePausePlay=0
    MouseMove, 682, 67
    Click
}


pressPlayButton() {  ; varTogglePausePlay=1
    MouseMove, 659, 67
    Click
}


space::
    If  WinActive("SistLev - Escritório") {
        if (varTogglePausePlay = 1) {
            varTogglePausePlay = 0
            pressPlayButton()
        } else {
            varTogglePausePlay = 1
            pressPauseButton()
        }
    }
Return


pressSpeedButton(varToggleSpeedButton) {
    If  WinActive("SistLev - Escritório") {
        if (varToggleSpeedButton = -2) ; x1/2
            MouseMove, 710, 67
        if (varToggleSpeedButton = -1) ; x3/4
            MouseMove, 745, 67
        if (varToggleSpeedButton = 0) ; x1
            MouseMove, 775, 67
        if (varToggleSpeedButton = 1) ; x1.5
            MouseMove, 802, 67
        if (varToggleSpeedButton = 2) ; x2
            MouseMove, 825, 67
        Click
    }
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


; Pop-menu com 117 frases do pedrão
Capslock:: 
    Random, rnd, 1, 117
    frase = % frasesPedrao[rnd]
    MsgBox 64, Sabedoria do dia:, Frases do Pedrão:`n%frase%`n`n
Return






; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;                    SITUACAO DAS FAIXAS HORIZONTAIS
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

F1:: ; Eixo BOA
    If  WinActive("SistLev - Escritório") {
        MouseMove, 80, 240
        Click
        MouseMove, 80, 255
        Click
        MouseMove, 80, 260
    }
Return

F2:: ; Eixo REGULAR
    If  WinActive("SistLev - Escritório") {
        MouseMove, 80, 240
        Click
        MouseMove, 80, 269
        Click
        MouseMove, 80, 260
    }
Return

F3:: ; Eixo RUIM
    If  WinActive("SistLev - Escritório") {
        MouseMove, 80, 240
        Click
        MouseMove, 80, 283
        Click
        MouseMove, 80, 260
    }
Return

F5:: ; Borda BOA
    If  WinActive("SistLev - Escritório") {
        MouseMove, 220, 240
        Click
        MouseMove, 220, 255
        Click
        MouseMove, 220, 260
    }
Return

F6:: ; Borda REGULAR
    If  WinActive("SistLev - Escritório") {
        MouseMove, 220, 240
        Click
        MouseMove, 220, 269
        Click
        MouseMove, 220, 260
    }
Return

F7:: ; Borda RUIM
    If  WinActive("SistLev - Escritório") {
        MouseMove, 220, 240
        Click
        MouseMove, 220, 283
        Click
        MouseMove, 220, 260
    }
Return
 
F4:: ; FIXAR Eixo
    If  WinActive("SistLev - Escritório") {
        MouseMove, 34, 262
        Click
        MouseMove, 1003, 262
        Click
        MouseMove, 1003, 275
    }
Return

F8:: ; Fixar Borda
    If  WinActive("SistLev - Escritório") {
        MouseMove, 162, 262
        Click
        MouseMove, 162, 275
    }
Return

1:: ; FAIXA EIXO - CONTINUA
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1030, 240
        Click
        MouseMove, 1030, 255
        Click
        MouseMove, 1030, 260
    }
Return

2:: ; FAIXA EIXO - TRACEJADA
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1030, 240
        Click
        MouseMove, 1030, 269
        Click
        MouseMove, 1030, 260
    }
Return


!F1:: ; Alt F1
    If  WinActive("SistLev - Escritório") {
        initiate()
        Send {1}
    }
Return

!F2:: ; Alt F2
    If  WinActive("SistLev - Escritório") {
        initiate()
        Send {2}
    }
Return

initiate() { ;  Equivalent to Send{F1, F4, F5, F8}
    MouseMove, 80, 240
    Click
    MouseMove, 80, 255
    Click
    MouseMove, 34, 262
    Click
    MouseMove, 1003, 262
    Click
    MouseMove, 220, 240
    Click
    MouseMove, 220, 255
    Click
    MouseMove, 162, 262
    Click
    MouseMove, 1712, 262
    Click
    MouseMove, 1727, 240
    Click 
    MouseMove, 1727, 283
    Click
    MouseMove, 825, 67
    Click
    varToggleSpeedButton = 2
    varToggleVegetacao = 1
}




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


p::  ; Placa Regular
    If  WinActive("SistLev - Escritório") {
        pressButtonVerticalRegular()
        MouseMove, 350, 260
    }
Return


ç::  ; Placa RUIM
    If  WinActive("SistLev - Escritório") {
        pressButtonVerticalRuim()
        MouseMove, 350, 260
    }
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
    If  WinActive("SistLev - Escritório") {
        marcaPlacaAdvertencia()
    }
Return


z::   ; VERTICAL - Atrativo turistico
    If  WinActive("SistLev - Escritório") {
        pressButtonPlacaVerticalBoa()
        MouseMove, 480, 240
        Click
        MouseMove, 480, 269
        Click
        MouseMove, 480, 260
    }
Return


d::   ; VERTICAL - Educativa
    If  WinActive("SistLev - Escritório") {
        pressButtonPlacaVerticalBoa()
        MouseMove, 480, 240
        Click
        MouseMove, 480, 283
        Click
        MouseMove, 480, 260
    }
Return


i::   ; VERTICAL - Indicativa
    If  WinActive("SistLev - Escritório") {
        pressButtonPlacaVerticalBoa()
        MouseMove, 480, 240
        Click
        MouseMove, 480, 295
        Click
        MouseMove, 480, 260
    }
Return


f::   ; VERTICAL - Regulamentacao
    If  WinActive("SistLev - Escritório") {
        pressButtonPlacaVerticalBoa()
        MouseMove, 480, 240
        Click
        MouseMove, 480, 308
        Click
        MouseMove, 480, 260
    }
Return


s::  ; VERTICAL - Servicos auxiliares
    If  WinActive("SistLev - Escritório") {
        pressButtonPlacaVerticalBoa()
        MouseMove, 480, 240
        Click
        MouseMove, 480, 322
        Click
        MouseMove, 480, 260
    }
Return


t::  ; VERTICAL - Temporaria
    If  WinActive("SistLev - Escritório") {
        pressButtonPlacaVerticalBoa()
        MouseMove, 480, 240
        Click
        MouseMove, 480, 334
        Click
        MouseMove, 480, 260
    }
Return


^0::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 350, 210
        Click
        MouseMove, 480, 210
        Click
    }
Return





; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;                    DEFENSAS E DISPOSTIVOS DE PROTECAO
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


F12::  ; FIXAR DISPOSITIVOS
    If  WinActive("SistLev - Escritório") {
        MouseMove, 573, 262
        Click
        MouseMove, 870, 262
        Click
        MouseMove, 870, 275
    }
Return


Y::  ; CLICK DEFEITO NA DEFENSA
    If  WinActive("SistLev - Escritório") {
        MouseMove, 780, 210
        Click
        MouseMove, 780, 230
    }
Return


^Y::  ; FIXA O DEFEITO NA DEFENSA
    If  WinActive("SistLev - Escritório") {
        MouseMove, 780, 210
        Click
        MouseMove, 720, 262
        Click
        MouseMove, 780, 230
    }
Return



C::  ; DEFENSA - Concreto
    If  WinActive("SistLev - Escritório") {
        MouseMove, 630, 240
        Click
        MouseMove, 630, 255
        Click
        MouseMove, 630, 260
    }
Return



G::   ; DEFENSA - Guarda Corpo
    If  WinActive("SistLev - Escritório") {
        MouseMove, 630, 240
        Click
        MouseMove, 630, 269
        Click
        MouseMove, 630, 260
    }
Return


!M::  ; DEFENSA - Metalica DUPLA
    If  WinActive("SistLev - Escritório") {
        MouseMove, 630, 240
        Click
        MouseMove, 630, 283
        Click
        MouseMove, 630, 260
    }
Return


M::  ; DEFENSA - Metalica SIMPLES
    If  WinActive("SistLev - Escritório") {
        MouseMove, 630, 240
        Click
        MouseMove, 630, 295
        Click
        MouseMove, 630, 260
    }
Return


; DEFENSA - MISTA
^C::
^G::
^N::
^M::
    If  WinActive("SistLev - Escritório") {
        MouseMove, 630, 240
        Click
        MouseMove, 630, 308
        Click
        MouseMove, 630, 260
    }
Return


N::  ; DEFENSA - New Jersey
    If  WinActive("SistLev - Escritório") {
        MouseMove, 630, 240
        Click
        MouseMove, 630, 322
        Click
        MouseMove, 630, 260
    }
Return


F10::  ; DISP - Ambos
    If  WinActive("SistLev - Escritório") {
        MouseMove, 920, 240
        Click
        MouseMove, 920, 255
        Click
        MouseMove, 920, 260
    }
Return


F9::  ; DISP - Esquerda
    If  WinActive("SistLev - Escritório") {
        MouseMove, 920, 240
        Click
        MouseMove, 920, 283
        Click
        MouseMove, 920, 260
    }
Return


F11::  ; DISP - Direita
    If  WinActive("SistLev - Escritório") {
        MouseMove, 920, 240
        Click
        MouseMove, 920, 269
        Click
        MouseMove, 920, 260
    }
Return





; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;                               NOVOS BOTOES
; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


L::  ; SEMAFAORO
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1440, 210
        Click
        MouseMove, 1440, 230
    }
Return


J::  ; BARREIRA ELETRONICA
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1340, 210
        Click
        MouseMove, 1340, 230
    }
Return


K::  ; LOMBADA
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1235, 210
        Click
        MouseMove, 1235, 230
    }
Return


H::  ; ILUMINACAO
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1130, 210
        Click
        MouseMove, 1130, 230
    }
Return


7::  ; FAIXA DE PEDESTRE
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1546, 210
        Click
        MouseMove, 1546, 230
    }
Return



8::  ; Alterna entre POSTO DE GASOLINA / SERVICO
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1650, 240
        Click
        if (varTogglePosto = 1) {
            MouseMove, 1650, 269
            varTogglePosto = 0
        } else {
            MouseMove, 1650, 255
            varTogglePosto = 1
        }
        Click
    }
Return



9::  ; Alterna entre vegetacao RASA | MEDIA | DENSA
    If  WinActive("SistLev - Escritório") {
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
    }
Return



0:: ; Fixa a vegetacao
    If  WinActive("SistLev - Escritório") {
        MouseMove, 1712, 262
        Click
        MouseMove, 1712, 278
    }
Return


^Numpad1:: ; Ctrl + num
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



!Numpad1:: ; alt + num
    loopAdvertencia(10)
Return

!Numpad2::
    loopAdvertencia(20)
Return

!Numpad3::
    loopAdvertencia(30)
Return

!Numpad4::
    loopAdvertencia(40)
Return

!Numpad5::
    loopAdvertencia(50)
Return

!Numpad6::
    loopAdvertencia(60)
Return

!Numpad7::
    loopAdvertencia(70)
Return

!Numpad8::
    loopAdvertencia(80)
Return

!Numpad9::
    loopAdvertencia(90)
Return
 


loopAdvertencia(numInteracoes) {
    If  WinActive("SistLev - Escritório") {
        pressPauseButton()
        MsgBox, 48, Advertencia, %numInteracoes%, 0.42
        while(numInteracoes > 0) {
            marcaPlacaAdvertencia()
            MouseMove, 983, 65
            Click
            numInteracoes -= 1
        }
        varTogglePausePlay = 0
    }
}