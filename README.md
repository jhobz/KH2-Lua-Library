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
  Now = 0x0716DF8,
  Save = 0x09A92F0
}
return vars
```
Once its placed in the io_packages folder, you can import and reference it in your own lua like this:
```
vars = require("KH2EpicGamesGlobal") -- Importing the Library
PrevPlace = ReadShort(vars.Now+0x30) -- vars.Now references the "Now" variable from our Library
if PrevPlace == 0x0011 then
  WriteByte(vars.Save+0x1EBE,1) -- vars.Save references the "Save" variable from our Library
end
```

# Benefits To Using The Library
One of the most apparent benefits to using a Lua Library for KH2, is that if you write your lua scripts correctly **you shouldn't have to update individual scripts after the game receives a patch.**

For example, let's say we have a library for each game version that is managed and updated by the community. After the game receives a patch all that needs to be done is for the base libraries to have their variables updated. Once the libraries are updated, all a user must do is get the updated library files and all their lua's should work again. A well-organized/commented library also makes it easier for new developers to jump in and make their own mods AND it makes all those mods immediately compatible with every version of the game. You don't need to own every version of the game if the variable you're using is already in the libraries! Including the libraries also won’t interfere with any mods that choose not to use them, which is always a plus.
