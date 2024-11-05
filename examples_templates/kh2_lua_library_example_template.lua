LUAGUI_NAME = ""
LUAGUI_AUTH = ""
LUAGUI_DESC = ""

function _OnInit()
    kh2libstatus, kh2lib = pcall(require, "kh2lib")
    if not kh2libstatus then
        print("ERROR (My Script): KH2-Lua-Library mod is not installed")
        CanExecute = false
        return
    end

    -- Log("My Script 1.0.5")
    RequireKH2LibraryVersion(1)
    -- RequirePCGameVersion()

    CanExecute = kh2lib.CanExecute
    if not CanExecute then
        return
    end

    -- Now = kh2lib.Now
end

function _OnFrame()
    if not CanExecute then
        return
    end

    -- (your code here)
end
