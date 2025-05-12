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

    -- Now = kh2lib.Now
    -- local worlds = kh2lib.worlds
    Log('kh2lib.worlds[0x12]: ' .. kh2lib.worlds[0x12])
    Log('kh2lib.worlds.TWTNW: ' .. kh2lib.worlds.TWTNW)
    Log('kh2lib.rooms.AG[1]: ' .. kh2lib.rooms.AG[1])
    Log("kh2lib.rooms.AG['Bazaar']: " .. kh2lib.rooms.AG['Bazaar'])
    Log('kh2lib.events.AG[4][1]: ' .. kh2lib.events.AG[4][1])
    -- for key, world in pairs(worlds) do
    --     Log(key .. ' ' .. world.id .. ' ' .. world.name)
    -- end
end

function _OnFrame()
    if not CanExecute then
        return
    end

    -- (your code here)
end
