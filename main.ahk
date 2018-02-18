#Include lib/IME.ahk

;; Ctrl-j => IME-OFF + Esc
;; using lib/IME.ahk
^j::
    IME_SET(0)
    SendEvent, {ESC}
    Return
