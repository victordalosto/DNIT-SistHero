
IniRead, panela,  %A_ScriptDir%\assets\settings.ini, Pavimento, panela
IniRead, fissura, %A_ScriptDir%\assets\settings.ini, Pavimento, fissura
IniRead, nome,  %A_ScriptDir%\assets\settings.ini, Usuario, nome

OnExit("ExitFunc")

ExitFunc() {
   global panela, fissura
   content = [Pavimento]`npanela=%panela%`nfissura=%fissura%

   path = %A_ScriptDir%\assets\settings.ini
   file := FileOpen(path, "w") 
   file.write(content)
   file.close()
}




; Capslock::
;     Random, rnd, 1, 20
;     IniRead, frase,  %A_ScriptDir%\assets\frasesPedrao.ini, Frases, %rnd%
;     content = `n Resumo do usuario: `n
    
;     SplashTextOn, 420, 300, SistheroPanel, %content%
;     WinMove, SistheroPanel,, 750, 100
;     content = Sabedoria do dia:`n
;     content = %content%%frase%`n`n
;     MsgBox 48, SistHero, %content%
;     SplashTextOff
; Return


p::
    Msgbox, "2"
Return


f::
    fissura++
Return


a::
   ExitFunc()
Return

























