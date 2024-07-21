LUAGUI_NAME = ''
LUAGUI_AUTH = ''
LUAGUI_DESC = ''

local canExecute = false
local cv = require("CheckVersion")

function _OnInit()
	if (GAME_ID == 0xF266B00B or GAME_ID == 0xFAF99301) and ENGINE_TYPE == "ENGINE" then --PCSX2
		canExecute = true
		vars = require("KH2Emulator")
		print('KH2 Library Example - Emulator')
	elseif GAME_ID == 0x431219CC and ENGINE_TYPE == 'BACKEND' then --PC
		canExecute = true
		if ReadByte(cv.EpicGlobal) == cv.EpicGlobalValue then --EGS Global
			vars = require("KH2EpicGlobal")
			ConsolePrint('KH2 Library Example - Epic Global')
		elseif ReadByte(cv.SteamGlobal) == cv.SteamGlobalValue then --Steam Global
			vars = require("KH2SteamGlobal")
			ConsolePrint('KH2 Library Example - Steam Global')
		elseif ReadByte(cv.SteamJP) == cv.SteamJPValue then --Steam JP
			vars = require("KH2SteamJP")
			ConsolePrint('KH2 Library Example - Steam JP')
		else
			canExecute = false
			ConsolePrint('KH2 not detected, not running script')
		end
	else print('KH2 not detected, not running script')
	end
end

function _OnFrame()
	if canExecute then
	--OnFrame() code goes here
	end
end
