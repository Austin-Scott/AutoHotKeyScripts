#SingleInstance, force

symbolLayerActive := false

SetCapsLockState, AlwaysOff

CapsLock & e::6
CapsLock & r::4
CapsLock & y::Delete
CapsLock & u::PgUp
CapsLock & i::Home
CapsLock & o::End
CapsLock & p::9
CapsLock & s::0
CapsLock & d::1
CapsLock & f::8
CapsLock & g::7
CapsLock & h::BackSpace
CapsLock & j::Down
CapsLock & k::Up
CapsLock & l::5
CapsLock & `;::Enter
CapsLock & b::PgDn
CapsLock & n::2
CapsLock & m::3

CapsLock::Esc

#If (symbolLayerActive)
w::#
e::=
r::Send `%
t::~
u::@
o::|
p::+
a::&
s::*
d::Send {{}
f::(
g::[
h::]
j::)
k::Send {}}
l::^
`;::$
b::`
n::!
m::-
#If

$LShift::
{
    if (A_PriorHotKey == "$LShift" AND A_TimeSincePriorHotkey < 300)
    {
        symbolLayerActive := true
    }
    else
    {
        Send, {LShift down}
    }
    KeyWait, LShift
    if (symbolLayerActive) {
        symbolLayerActive := false
    } else {
        Send, {LShift up}
    }
}