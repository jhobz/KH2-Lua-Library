# KH2-Lua-Library
*A repo for the KH2 Lua Library references and documentation*

For LuaBackend, library files can be used by placing them into a folder called `io_packages` which must be located **inside** of the base scripts folder. By using `require("LuaNameHere")` you can import the specific Library you need from the io_packages folder and reference those variables in your own script:
```
kh2/
├─ scripts/
│  ├─ MyFirstScript.lua
│  ├─ io_packages/
│  │  ├─ KH2EpicGamesGlobal.lua

```

For example, lets say you had a library file like this (named KH2EpicGamesGlobal.lua):
```
vars = {
  Now = 0x0716DF8
  Save = 0x09A92F0
}
return vars
```
Once its placed in the io_packages folder, I can import and reference it in my own lua like this:
```
vars = require("KH2EpicGamesGlobal") -- Importing the Library
PrevPlace = ReadShort(vars.Now+0x30) -- vars.Now references the "Now" variable from our Library
if PrevPlace == 0x0011 then
  WriteByte(vars.Save+0x1EBE,1) -- vars.Save references the "Save" variable from our Library
end
```
