SpaceShortcutFlag := False
CapsLockShortcutFlag := False

SpaceShortcut(keys)
{
    global SpaceShortcutFlag
    SpaceShortcutFlag := True
    Send keys
}

CapsShortcut(keys, setSpaceFlag := False)
{
    global SpaceShortcutFlag
    global CapsLockShortcutFlag
    if(setSpaceFlag) {
        SpaceShortcutFlag := True
    }
    CapsLockShortcutFlag := True
    Send keys
}

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

Space UP::
{
    global SpaceShortcutFlag
    if(!SpaceShortcutFlag)
    {
        Send A_Space
    }
    SpaceShortcutFlag := False
}

SetCapsLockState "AlwaysOff"

CapsLock UP::
{
    global CapsLockShortcutFlag
    if(!CapsLockShortcutFlag)
    {
        Send "{Esc}"
    }
    CapsLockShortcutFlag := False
}