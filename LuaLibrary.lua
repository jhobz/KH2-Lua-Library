local kh2lib_status, kh2lib, can_execute

function _OnInit()
    kh2lib_status, kh2lib = pcall(require, 'kh2lib')
    if not kh2lib_status then
        print('ERROR: KH2-Lua-Library mod is not installed')
        can_execute = false
        return
    end

    can_execute = kh2lib.CanExecute
    if not can_execute then
        return
    end

    Log('#####################################################')
    Log('# KH2 Lua Library, version ' .. KH2_LIBRARY_DISPLAY_VERSION)
    Log('# Using addresses for ' .. kh2lib.GameVersionString)
    Log('#####################################################')
end

function _OnFrame()

end
