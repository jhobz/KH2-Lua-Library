LUAGUI_NAME = ''
LUAGUI_AUTH = ''
LUAGUI_DESC = ''

local canExecute = false

function _OnInit()
	if (GAME_ID == 0xF266B00B or GAME_ID == 0xFAF99301) and ENGINE_TYPE == "ENGINE" then --PCSX2
		canExecute = true
		vars = require("KH2Emulator")
		print('KH2 Library Example - Emulator')
	elseif GAME_ID == 0x431219CC and ENGINE_TYPE == 'BACKEND' then --PC
		canExecute = true
		if ReadByte(0x566A8E) == 0xFF then --EGS Global
			vars = require("KH2EpicGamesGlobal")
			ConsolePrint('KH2 Library Example - Epic Games Global')
		elseif ReadByte(0x56668E) == 0xFF then --Steam Global
			vars = require("KH2SteamGlobal")
			ConsolePrint('KH2 Library Example - Steam Global')
		elseif ReadByte(0x56640E) == 0xFF then --Steam JP
			vars = require("KH2SteamJP")
			ConsolePrint('KH2 Library Example - Steam JP')
		else
			canExecute = false
			ConsolePrint('KH2 not detected, not running script')
		end
	else
		ConsolePrint('KH2 not detected, not running script')
	end
end

function _OnFrame()
	if canExecute then
	--OnFrame() code goes here
	end
end