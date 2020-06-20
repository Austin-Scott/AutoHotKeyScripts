SpaceShortcut(keys)
{
    Send keys
}

CapsShortcut(keys, setSpaceFlag := False)
{
    Send keys
}

HelpMessage(message) {
    TrayTip message, "Use this shortcut instead", 1
}

GroupAdd "IDEs", "Visual Studio Code"

#HotIf WinActive("ahk_group IDEs")

Space & s::SpaceShortcut("0")
Space & t::SpaceShortcut("1")
Space & n::SpaceShortcut("2")
Space & m::SpaceShortcut("3")
Space & r::SpaceShortcut("4")
Space & l::SpaceShortcut("5")
Space & j::SpaceShortcut("6")
Space & k::SpaceShortcut("7")
Space & v::SpaceShortcut("8")
Space & p::SpaceShortcut("9")

Space & q::SpaceShortcut("{%}")
Space & w::SpaceShortcut("{-}")
Space & e::SpaceShortcut("{=}")
Space & y::SpaceShortcut("{#}")
Space & u::SpaceShortcut("{_}")
Space & i::SpaceShortcut("{&}")
Space & o::SpaceShortcut("{|}")
Space & a::SpaceShortcut("{+}")
Space & d::SpaceShortcut("{(}")
Space & f::SpaceShortcut("{)}")
Space & g::SpaceShortcut("{{}")
Space & h::SpaceShortcut("{}}")
Space & `;::SpaceShortcut("{$}")
Space & '::SpaceShortcut("{``}")
Space & z::SpaceShortcut("{@}")
Space & x::SpaceShortcut("{\}")
Space & c::SpaceShortcut("{^}")
Space & b::SpaceShortcut("{*}")
Space & ,::SpaceShortcut("{~}")
Space & .::SpaceShortcut("{]}")
Space & /::SpaceShortcut("{!}")

#Space::SpaceShortcut("#{Space}")

Space UP::
{
    if(!GetKeyState("CapsLock", "P")) {
        Send A_Space
    }
}

1::HelpMessage("Space + T")
2::HelpMessage("Space + N")
3::HelpMessage("Space + M")
4::HelpMessage("Space + R")
5::HelpMessage("Space + L")
6::HelpMessage("Space + J")
7::HelpMessage("Space + K")
8::HelpMessage("Space + V")
9::HelpMessage("Space + P")
0::HelpMessage("Space + S")

!::HelpMessage("Space + /")
@::HelpMessage("Space + Z")
#::HelpMessage("Space + Y")
$::HelpMessage("Space + `;")
%::HelpMessage("Space + Q")
^::HelpMessage("Space + C")
&::HelpMessage("Space + I")
*::HelpMessage("Space + B")
(::HelpMessage("Space + D")
)::HelpMessage("Space + F")

~::HelpMessage("Space + ,")
_::HelpMessage("Space + U")
-::HelpMessage("Space + W")
+::HelpMessage("Space + A")
=::HelpMessage("Space + E")
{::HelpMessage("Space + G")
}::HelpMessage("Space + H")
]::HelpMessage("Space + .")
|::HelpMessage("Space + O")
\::HelpMessage("Space + X")
Backspace::HelpMessage("CapsLock + Space")

#HotIf

CapsLock & Space::CapsShortcut("{Backspace}", True)

CapsLock & a::CapsShortcut("^a")
CapsLock & b::CapsShortcut("^b")
CapsLock & c::CapsShortcut("^c")
CapsLock & d::CapsShortcut("^d")
CapsLock & e::CapsShortcut("^e")
CapsLock & f::CapsShortcut("^f")
CapsLock & g::CapsShortcut("^g")
CapsLock & h::CapsShortcut("^h")
CapsLock & i::CapsShortcut("^i")
CapsLock & j::CapsShortcut("^j")
CapsLock & k::CapsShortcut("^k")
CapsLock & l::CapsShortcut("^l")
CapsLock & m::CapsShortcut("^m")
CapsLock & n::CapsShortcut("^n")
CapsLock & o::CapsShortcut("^o")
CapsLock & p::CapsShortcut("^p")
CapsLock & q::CapsShortcut("^q")
CapsLock & r::CapsShortcut("^r")
CapsLock & s::CapsShortcut("^s")
CapsLock & t::CapsShortcut("^t")
CapsLock & u::CapsShortcut("^u")
CapsLock & v::CapsShortcut("^v")
CapsLock & w::CapsShortcut("^w")
CapsLock & x::CapsShortcut("^x")
CapsLock & y::CapsShortcut("^y")
CapsLock & z::CapsShortcut("^z")


SetCapsLockState "AlwaysOff"

CapsLock UP::
{
    Send "{Esc}"
}