local kh2libstatus, kh2lib

function _OnInit()
    kh2libstatus, kh2lib = pcall(require, 'kh2lib')
    if not kh2libstatus then
        print('ERROR (My Script): KH2-Lua-Library mod is not installed')
        CanExecute = false
        return
    end

    Log('Test Script 1.0.2')
    RequireKH2LibraryVersion(1)
    RequirePCGameVersion()

    CanExecute = kh2lib.CanExecute
    if not CanExecute then
        return
    end

    Now = kh2lib.Now
    local worlds = kh2lib.worlds
    for key, world in pairs(worlds) do
        Log(key .. ' ' .. world.id .. ' ' .. world.name)
    end
end

function _OnFrame()
    if not CanExecute then
        return
    end

    -- (your code here)
end
