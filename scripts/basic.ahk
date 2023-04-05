; FUNCIONALIDADES BASICAS DO SISTLEV

var_toggleSpeedButton := 0



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