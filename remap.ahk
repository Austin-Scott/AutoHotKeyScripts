SpaceShortcutFlag := False
CapsLockShortcutFlag := False

SpaceShortcut(normal, shiftModified)
{
    SpaceShortcutFlag := True
    if(!GetKeyState("Shift"))
    {
        Send normal
    }
    else
    {
        Send shiftModified
    }
}

CapsLockShortcut(normal)
{
    CapsLockShortcutFlag := True
    Send normal
}

Space & a::SpaceShortcut("1", "{!}")
Space & s::SpaceShortcut("2", "{@}")
Space & d::SpaceShortcut("3", "{#}")
Space & f::SpaceShortcut("4", "{$}")
Space & g::SpaceShortcut("5", "{%}")
Space & h::SpaceShortcut("6", "{^}")
Space & j::SpaceShortcut("7", "{&}")
Space & k::SpaceShortcut("8", "{*}")
Space & l::SpaceShortcut("9", "{(}")
Space & `;::SpaceShortcut("0", "{)}")
Space & '::SpaceShortcut("{Backspace}", "{Backspace}")

#Space::SpaceShortcut("#{Space}", "#{Space}")

CapsLock & f::CapsLockShortcut("{(}")
CapsLock & d::CapsLockShortcut("{{}")
CapsLock & g::CapsLockShortcut("{[}")
CapsLock & s::CapsLockShortcut("{*}") 
CapsLock & j::CapsLockShortcut("{=}")
CapsLock & k::CapsLockShortcut("{-}")
CapsLock & l::CapsLockShortcut("{+}")
CapsLock & h::CapsLockShortcut("{^}")
CapsLock & `;::CapsLockShortcut("{$}")
CapsLock & u::CapsLockShortcut("{_}")
CapsLock & r::CapsLockShortcut("{&}")
CapsLock & p::CapsLockShortcut("{|}")
CapsLock & i::CapsLockShortcut("{#}")
CapsLock & e::CapsLockShortcut("{@}")
CapsLock & b::CapsLockShortcut("{!}")
CapsLock & y::CapsLockShortcut("{`}")
CapsLock & n::CapsLockShortcut("{)}")
CapsLock & m::CapsLockShortcut("{}}")
CapsLock & o::CapsLockShortcut("{~}")
CapsLock & c::CapsLockShortcut("^c")
CapsLock & v::CapsLockShortcut("^v")
CapsLock & w::CapsLockShortcut("^w")
CapsLock & x::CapsLockShortcut("^x")
CapsLock & t::CapsLockShortcut("^t")

Space UP::
{
    if(!SpaceShortcutFlag)
    {
        Send A_Space
    }
    SpaceShortcutFlag := False
}

SetCapsLockState "AlwaysOff"

CapsLock UP::
{
    if(!CapsLockShortcutFlag)
    {
        Send "{Esc}"
    }
    CapsLockShortcutFlag := False
}