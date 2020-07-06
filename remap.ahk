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

SymbolicKey(key, raw := true) {
    if(raw) {
        SendText key
    } else {
        Send key
    }
    global symbolLayerActive := False
    ToolTip "", 0, 0
}

#HotIf !symbolLayerActive

`;::
{
    global symbolLayerActive := True
    ToolTip "Symbolic Layer", 0, 0
}

CapsLock & q::Send "^q"
CapsLock & w::Send "^w"
CapsLock & e::Send "^e"
CapsLock & r::Send "^r"
CapsLock & t::Send "^t"
CapsLock & y::Send "^y"
CapsLock & u::Send "^u"
CapsLock & i::Send "^i"
CapsLock & o::Send "^o"
CapsLock & p::Send "^p"
CapsLock & a::Send "^a"
CapsLock & s::Send "^s"
CapsLock & d::Send "^d"
CapsLock & f::Send "^f"
CapsLock & g::Send "^g"
CapsLock & h::Send "^h"
CapsLock & j::Send "{Down}"
CapsLock & k::Send "{Up}"
CapsLock & l::Send "^l"
CapsLock & z::Send "^z"
CapsLock & x::Send "^x"
CapsLock & c::Send "^c"
CapsLock & v::Send "^v"
CapsLock & b::Send "^b"
CapsLock & n::Send "^n"
CapsLock & m::Send "^m"

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

BackSpace::SymbolicKey("{BackSpace}", False)
Enter::SymbolicKey("{Enter}", False)
Space::SymbolicKey(A_Space)
Tab::SymbolicKey("{Tab}", False)

+a::SymbolicKey("<<")
a::SymbolicKey("<")
CapsLock & a::SymbolicKey("<=")

+s::SymbolicKey("[]")
s::SymbolicKey("[")

+d::SymbolicKey("{}")
d::SymbolicKey("{")

+f::SymbolicKey("()")
f::SymbolicKey("(")

+g::SymbolicKey("**")
g::SymbolicKey("*")
CapsLock & g::SymbolicKey("->")

+h::SymbolicKey("=>")
h::SymbolicKey("^")
CapsLock & h::SymbolicKey("!")

'::SymbolicKey("$")
CapsLock & '::SymbolicKey("#")

+z::SymbolicKey(">>")
z::SymbolicKey(">")
CapsLock & z::SymbolicKey(">=")

x::SymbolicKey("]")

c::SymbolicKey("}")

v::SymbolicKey(")")




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