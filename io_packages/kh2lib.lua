-- Versioning both helps with troubleshooting and allows scripts to know what values they can expect.
-- In particular, this number should be incremented anytime new values are added to the library.
-- Library maintainers must take care to not remove values that were in previous versions, for backwards compatibility.
-- Scripts can declare a required version using `RequireKH2LibraryVersion(n)` where `n` is the expected minimum version.
KH2_LIBRARY_VERSION = 1

-- Constants for each game version - scripts can check this using `GameVersion`
KH2_VERSION_UNKNOWN = 0
KH2_VERSION_EMULATOR = 1
KH2_VERSION_EPIC = 2
KH2_VERSION_STEAM_GLOBAL = 3
KH2_VERSION_STEAM_JP = 4

local kh2lib = {}

-- Scripts can call `RequireKH2LibraryVersion` to declare a minimum version of the library they expect.
-- If the actual version is too low, `CanExecute` will be set to false and a message is printed to the console.
function RequireKH2LibraryVersion(version)
    if KH2_LIBRARY_VERSION < version then
        local reqStr = tostring(version)
        local currStr = tostring(KH2_LIBRARY_VERSION)
        Log("***************************************************************************")
        Log("KH2 Lua Library version " .. reqStr .. " is required and your version is " .. currStr .. ", please update")
        Log("***************************************************************************")
        kh2lib.CanExecute = false
    end
end

-- Scripts can call `RequirePCGameVersion` to declare that the script expects to run on PC ports only.
-- If not on a PC port, `CanExecute` will be set to false and a message is printed to the console.
function RequirePCGameVersion()
    if not kh2lib.OnPC then
        Log("This script expects to run on one of the PC ports of the game and will not execute.")
        kh2lib.CanExecute = false
    end
end

function BitOr(address, mask)
    WriteByte(address, ReadByte(address) | mask)
end

function BitNot(address, mask)
    WriteByte(address, ReadByte(address) & ~mask)
end

-- Reads and returns the pointer value at the given address.
function ReadPointer(address)
    if kh2lib.OnPC then
        return ReadLong(address)
    else
        return ReadInt(address)
    end
end

-- Logs a message to the console, using an appropriate call per platform.
function Log(message)
    if kh2lib.OnPC then
        ConsolePrint(message)
    else
        print(message)
    end
end

local function _InitLibrary()
    -- Addresses and values used internally to check which version of the game is running
    local epicGlobalAddress = 0x566A8E
    local epicGlobalValue = 0xFF
    local steamGlobalAddress = 0x56668E
    local steamGlobalValue = 0xFF
    local steamJPAddress = 0x56640E
    local steamJPValue = 0xFF

    local gameVersion = KH2_VERSION_UNKNOWN
    local baseVersionMessage = "KH2 Lua Library v" .. KH2_LIBRARY_VERSION .. " - "

    if (GAME_ID == 0xF266B00B or GAME_ID == 0xFAF99301) and ENGINE_TYPE == "ENGINE" then -- PCSX2
        kh2lib = require("KH2Emulator")
        kh2lib.GameVersion = KH2_VERSION_EMULATOR
        kh2lib.OnPC = false
        kh2lib.CanExecute = true
        Log(baseVersionMessage .. "Detected PCSX2 version")
    elseif GAME_ID == 0x431219CC and ENGINE_TYPE == "BACKEND" then -- PC
        if ReadByte(epicGlobalAddress) == epicGlobalValue then -- EGS Global
            kh2lib = require("KH2EpicGlobal")
            kh2lib.GameVersion = KH2_VERSION_EPIC
            kh2lib.OnPC = true
            kh2lib.CanExecute = true
            Log(baseVersionMessage .. "Detected Epic Global version")
        elseif ReadByte(steamGlobalAddress) == steamGlobalValue then -- Steam Global
            kh2lib = require("KH2SteamGlobal")
            kh2lib.GameVersion = KH2_VERSION_STEAM_GLOBAL
            kh2lib.OnPC = true
            kh2lib.CanExecute = true
            Log(baseVersionMessage .. "Detected Steam Global version")
        elseif ReadByte(steamJPAddress) == steamJPValue then -- Steam JP
            kh2lib = require("KH2SteamJP")
            kh2lib.GameVersion = KH2_VERSION_STEAM_JP
            kh2lib.OnPC = true
            kh2lib.CanExecute = true
            Log(baseVersionMessage .. "Detected Steam JP version")
        else
            kh2lib.GameVersion = KH2_VERSION_UNKNOWN
            kh2lib.OnPC = false
            kh2lib.CanExecute = false
            Log(baseVersionMessage .. "KH2 not detected")
        end
    else
        kh2lib.GameVersion = KH2_VERSION_UNKNOWN
        kh2lib.OnPC = false
        kh2lib.CanExecute = false
        Log(baseVersionMessage .. "KH2 not detected")
    end

    return kh2lib
end

-- Return everything packaged up in a way that can be referenced by the script that imported this library
return _InitLibrary()
