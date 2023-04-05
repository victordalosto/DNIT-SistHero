__isFixarClicado(x) {
    xCombo := x - 53
    global HEIGHT_FIXAR
    MouseMove, 675, 80
    PixelGetColor, colorPlay, xCombo, HEIGHT_FIXAR
    if (colorPlay == 0xFFFFFF)
        return false
    return true
}



__click(x, y) {
    MouseMove, x, y
    Click
    MouseMove, 675, 80
}



safeClick(x, y) {
    if (isSistlevActive()) {
        __click(x, y)
    }
}



clickButton(var) {
    if (isSistlevActive()) {
        global HEIGHT_BUTTON
        __click(var, HEIGHT_BUTTON)
    }
}



clickCombo(x, option) {
    if (isSistlevActive()) {
        global HEIGHT_COMBOBOX
        __click(x, HEIGHT_COMBOBOX)
        __click(x, option)
    }
}



clickFixar(x) {
    if (isSistlevActive()) {
        xCombo := x - 53
        global HEIGHT_FIXAR
        __click(xCombo, HEIGHT_FIXAR)
    }
}



clickCombo_PlusFixar(x, option) {
    if (isSistlevActive()) {
        if (!__isFixarClicado(x))  {
            clickFixar(x)
        }
        clickCombo(x, option)
    }
}



clickButton_PlusFixar(x) {
    if (isSistlevActive()) {
        clickFixar(x)
        clickButton(x)
    }
}
