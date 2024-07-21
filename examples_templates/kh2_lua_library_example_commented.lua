LUAGUI_NAME = 'KH2 Lua Library Example Commented'
LUAGUI_AUTH = 'Alios'
LUAGUI_DESC = 'An example lua for learning how to use the kh2 library'

local canExecute = false -- Used to stop script from running if game not detected (see _onFrame)
local cv = require("CheckVersion") -- Imports the CheckVersion library to check game version

function _OnInit() -- Runs during game initialization, only once
	if (GAME_ID == 0xF266B00B or GAME_ID == 0xFAF99301) and ENGINE_TYPE == "ENGINE" then --PCSX2
		canExecute = true -- Set to true if game is detected
		vars = require("KH2Emulator") -- |require("Library File of game version")| imports the library to be used in this script. Note how it only imports the file for the game version we detected
		print('KH2 Library Example - Emulator')
	elseif GAME_ID == 0x431219CC and ENGINE_TYPE == 'BACKEND' then --PC
		canExecute = true
		if ReadByte(cv.EpicGlobal) == cv.EpicGlobalValue then --EGS Global
			vars = require("KH2EpicGlobal")
			ConsolePrint('KH2 Library Example - Epic Global') -- Recommended to use ConsolePrint for PC lua (ConsolePrint is not compatible with emulator)
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

function _OnFrame() -- Code here runs once per frame, game will wait for code to finish before proceeding to next frame
	if canExecute then -- Only allows code to run if game version is detected (when canExecute is true)

	-- You can reference the variables from the KH2 Lua Library like this (Space Paranoids Post-Story Save code pulled from GoA Lua):
	PrevPlace = ReadShort(vars.Now+0x30)
	if ReadByte(vars.Save+0x1EBE) > 0 then -- vars.Save uses the "Save" variable value from whichever Lua Library we imported 
		if PrevPlace == 0x0011 then
			WriteByte(vars.Save+0x1EBE,1)
		elseif PrevPlace == 0x0511 then
			WriteByte(vars.Save+0x1EBE,2)
		elseif PrevPlace == 0x0811 then
			WriteByte(vars.Save+0x1EBE,3)
		end
	end

	end -- end of if-statement for canExecute
end
