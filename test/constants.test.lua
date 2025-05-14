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
    print(kh2lib.constants.worlds[1])
    Log('kh2lib.constants.worlds[0]: ' .. kh2lib.constants.worlds[1] .. 'string')
    Log('kh2lib.worlds[0x12]: ' .. kh2lib.worlds[0x12])
    Log('kh2lib.worlds.TWTNW: ' .. kh2lib.worlds.TWTNW)
    Log('kh2lib.rooms.AG[1]: ' .. kh2lib.rooms.AG[1])
    Log('kh2lib.rooms.AG[3]: ' .. kh2lib.rooms.AG[3])
    Log("kh2lib.rooms.AG['Bazaar']: " .. kh2lib.rooms.AG['Bazaar'])
    Log('kh2lib.constants.events.OLYMPUS_COLISEUM[4]: ' .. kh2lib.constants.events.OLYMPUS_COLISEUM[4])
    Log('kh2lib.events.AG[4][1]: ' .. kh2lib.events.AG[4][1])
    Log(string.format('kh2lib.current.world: 0x%x', kh2lib.current.world))
    Log('kh2lib.current.world_name: ' .. kh2lib.current.world_name)
    Log(string.format('kh2lib.current.room: 0x%x', kh2lib.current.room))
    Log('kh2lib.current.room_name: ' .. kh2lib.current.room_name)
    Log(string.format('kh2lib.current.door: 0x%x', kh2lib.current.door))
    Log(string.format('kh2lib.current.place: 0x%x', kh2lib.current.place))
    Log('kh2lib.current.place_name: ' .. kh2lib.current.place_name)
    Log('kh2lib.current.location: ' .. kh2lib.current.location)
    -- for key, world in pairs(worlds) do
    --     Log(key .. ' ' .. world.id .. ' ' .. world.name)
    -- end
end

function _OnFrame()
    if not CanExecute then
        return
    end

    -- (your code here)
    -- Log('kh2lib.current.location: ' .. kh2lib.current.location)
end
