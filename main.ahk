#Include lib/IME.ahk

;; LCtrlはMacっぽくする
;; cygwinとかで困るのでひとまず当たり障りのないものだけ
;; (やろうと思えばアプリケーション毎にリマップ除外できると思うけど)
LCtrl & a:: Send, {Home}
LCtrl & e:: Send, {End}
LCtrl & n:: Send, {Down}
LCtrl & p:: Send, {Up}
LCtrl & f:: Send, {Right}
LCtrl & b:: Send, {Left}
LCtrl & d:: Send, {Delete}

;; Vimを便利に使うために LCtrl-j で IME-OFF + Esc する
;; IMEをOFFにするためにlib/IME.ahkを利用
LCtrl & j::
    IME_SET(0)
    SendEvent, {ESC}
    Return

;; 素のCtrl系キーバインドを使いたいときのためにLWinをRCtrlにしておく
;; たとえばCtrl-aで全選択したいときはLWin-aを押せばできる
LWin::RCtrl

;; Left/Rightで仮想デスクトップを切り替える過激なキーバインド
;; 素のLeft/RightはLCtrl-b/-fで代用できるので要らないよね
;; メモ: #^ = win-ctrl
Left:: Send, #^{Left}
Right:: Send, #^{Right}
