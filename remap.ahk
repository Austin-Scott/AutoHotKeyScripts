global symbolLayerActive := False

NumpadKey(num) {
    if(GetKeyState("Shift")) {
        global symbolLayerActive := False
        ToolTip "", 0, 0
        Send num "k"
    } else if(GetKeyState("CapsLock", "P")) {
        global symbolLayerActive := False
        ToolTip "", 0, 0
        Send num "j"
    } else {
        Send num
    }
}

#HotIf !symbolLayerActive

`;::
{
    global symbolLayerActive := True
    ToolTip "Symbolic Layer", 0, 0
}

#HotIf


#HotIf symbolLayerActive

`;::
{
    global symbolLayerActive := False
    ToolTip "", 0, 0
    Send ";"
}

+u::
CapsLock & u::
u::NumpadKey("7")
+i::
CapsLock & i::
i::NumpadKey("8")
+o::
CapsLock & o::
o::NumpadKey("9")

+j::
CapsLock & j::
j::NumpadKey("4")
+k::
CapsLock & k::
k::NumpadKey("5")
+l::
CapsLock & l::
l::NumpadKey("6")

+n::
CapsLock & n::
n::NumpadKey("0")
+m::
CapsLock & m::
m::NumpadKey("1")
+,::
CapsLock & ,::
,::NumpadKey("2")
+.::
CapsLock & .::
.::NumpadKey("3")

#HotIf

SetCapsLockState "AlwaysOff"

CapsLock UP::
{
    if(symbolLayerActive) {
        global symbolLayerActive := False
        ToolTip "", 0, 0
    } else {
        Send "{Esc}"
    }
}