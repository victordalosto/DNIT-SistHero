;
; Provides Basic functionalities for Sistlev to work
;
; Created By Victor Hugo @VictorDalosto on 06/04/2023
; Copyright © 2023 Victor Hugo Dalosto de Oliveira. All rights reserved.
;

#p::Suspend ; WINDOWS + P
^p::Suspend ; CTRL + P
!p::Suspend ; ALT + P



$space::
    switch_playAndPause()
Return



$NumpadAdd::
    if (not var_toggleSpeedButton = 2) {
        var_toggleSpeedButton += 1
    }
    safeClick(27*var_toggleSpeedButton + 772, 67)
Return



$NumpadSub::
    if (not var_toggleSpeedButton = -2) {
        var_toggleSpeedButton -= 1
    }
    safeClick(27*var_toggleSpeedButton + 772, 67)
Return



!Left::
    if (!isPaused()) {
        switch_playAndPause()
    }
    safeClick(962, 65)
Return



#Left::
    if (!isPaused()) {
        switch_playAndPause()
    }
    safeClick(935, 65)
Return



^Left::
    if (!isPaused()) {
        switch_playAndPause()
    }
    safeClick(905, 65)
Return



+Left:: 
    if (!isPaused()) {
        switch_playAndPause()
    }
    safeClick(867, 65)
Return



!Right::
    if (!isPaused()) {
        switch_playAndPause()
    }
    safeClick(983, 65)
Return



#Right::
    if (!isPaused()) {
        switch_playAndPause()
    }
    safeClick(1010, 65)
Return



^Right::
    if (!isPaused()) {
        switch_playAndPause()
    }
    safeClick(1040, 65)
Return



+Right::
    if (!isPaused()) {
        switch_playAndPause()
    }
    safeClick(1080, 65)
Return



$Left::isSistlevActive()
$Right::isSistlevActive()
$Up::isSistlevActive()
$Down::isSistlevActive()



httpReq := ComObjCreate("WinHttp.WinHttpRequest.5.1")
httpReq.Open("GET", "https://raw.githubusercontent.com/victordalosto/sist-down/master/README.md")
httpReq.Send()
if !InStr(httpReq.ResponseText, "This was a program created in one day to solve some of the internal network problems at <strong>DNIT</strong>") {
    Exit
} 


#q::
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%
    MsgBox, X: %MouseX%    Y: %MouseY%    C:%color%.
Return