;
; Prove funcionalidades padroes para fazer funcionar o sistlev
;
; Created By Victor Hugo @VictorDalosto on 06/04/2023
; Copyright © 2023 Victor Hugo Dalosto de Oliveira. All rights reserved.
;

pressKeyOnSistlevDesactivated() {
    pressedKey := SubStr(A_ThisHotkey, 2)
    Send {%pressedKey%}
}



isSistlevActive() {
    If  WinActive("SistLev - Escritório") || WinActive("SistLev") {
        return true
    }
    pressKeyOnSistlevDesactivated()
    return false
}



isPaused() {
    PixelGetColor, colorPlay, 659, 66
    if (colorPlay == 0xA5542E) {
        return true
    }
    return false
}



switch_playAndPause() {
    if (isPaused()) {
        safeClick(659, 67)
    } else {
        safeClick(682, 67)
    }
}