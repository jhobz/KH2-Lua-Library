# KH2-Lua-Library

A library of Lua code that can be imported by Kingdom Hearts 2 Lua scripts.

#### Library Philosophy

One of the most apparent benefits to using a Lua Library for KH2 is that Lua scripts correctly utilizing the library
shouldn't have to be individually updated after the game receives a patch.

For example, let's say we have memory addresses collected in the library for each game version that is managed and
updated by the community. After the game receives a patch, all the library needs to do is update its collection of
addresses and values. Once the library is updated, all a user needs to do is get the updated library files and all Lua
scripts should work again.

A well-organized/documented library also makes it easier for new developers to jump in and make their own mods, AND it
makes all those mods immediately compatible with every version of the game. You don't need to own every version of the
game if the address/value you're using is already in the library!

Including the library also won’t interfere with any mods that choose not to use it.

## Setup

For LuaBackend, place all the library files into a folder called `io_packages` which must be located **inside** the
folder containing your Lua scripts.

## Importing the Library

Start with one of the template files included in this repository, or add these lines to your Lua script at the beginning
of your `_OnInit` function:

```lua
kh2lib = require("kh2lib")
RequireKH2LibraryVersion(1)
```

and, optionally:

```lua
RequirePCGameVersion()
```

The first line imports the KH2 Lua Library into your script, detects which game version is running, and assigns a table
of values to the name `kh2lib`. You can use an alternate name besides `kh2lib`, but `kh2lib` is recommended for
consistency between scripts using the library.

The second line informs the library that your script expects a KH2 Lua Library version of at least 1, since it depends
on values added in version 1. As newer versions of the library are released, scripts may declare that they require a
newer version of the library.

The third (optional) line informs the library that your script is only written for the PC ports of KH2 and should not be
allowed to execute when, say, on an emulator version of KH2.

If the library determines that your script should be allowed to execute based on all of the above criteria, the value of
`kh2lib.CanExecute` will be `true`. Scripts can check this value within their `_OnFrame` function or elsewhere and
should not run any other code if the value is `false`.

```lua
function _OnInit()
    kh2lib = require("kh2lib")
    RequireKH2LibraryVersion(1)

    CanExecute = kh2lib.CanExecute
end

function _OnFrame()
    if not CanExecute then
        return
    end

    -- (your code here)
end
```

## Special Library Values

The library provides several special values in the `kh2lib` table that can be used by scripts:

- `kh2lib.CanExecute`
  - whether the script should be allowed to execute based on detected game version and required library version
- `kh2lib.GameVersion`
  - the version of the game that was detected upon importing the library
    - can be one of `KH2_VERSION_UNKNOWN`, `KH2_VERSION_EMULATOR`, `KH2_VERSION_EPIC`, `KH2_VERSION_STEAM_GLOBAL`, or
      `KH2_VERSION_STEAM_JP`
- `kh2lib.OnPC`
  - whether the detected game version is one of the PC ports (effectively just a shortcut for checking that the game
    version is one of the known PC ports)

## Version-Specific Values

The library provides (in the `kh2lib` table) many game version-specific memory addresses and other values.

- See the individual files such as `KH2EpicGlobal.lua` to see which values are provided, along with some documentation
  on each value where possible.

## Library Functions

The library provides some other common functions that can be used by scripts. These functions can be called directly
(they're not part of the `kh2lib` table at this time).

- `BitOr`
  - Performs a bitwise `OR` of the value at a specified address using a specified mask and writes the updated byte.
    This is usually used to set one or more bits in a byte to `1`.
- `BitNot`
  - Performs a bitwise `AND NOT` of the value at a specified address using a specified mask and writes the updated byte.
    This is usually used to set one or more bits in a byte to `0`.
- `ReadPointer`
  - Reads and returns a pointer value at a specified address, using the proper size per platform.
- `Log`
  - Logs a message to the console, using an appropriate print call per platform.

## Contributing

Community participation is key to the success of a project such as this one. If you have found memory addresses for KH2,
please consider contributing them to the library.

## Acknowledgements

- TopazTK and Sirius902 for their work on LuaBackend (https://github.com/Sirius902/LuaBackend)
- Sonicshadowsilver2 and Num for addresses taken from the Garden of Assemblage mod
  (https://github.com/KH2FM-Mods-Num/GoA-ROM-Edition)
- Denhonator and contributors for addresses taken from various scripts at
  (https://github.com/Denhonator/KHPCSpeedrunTools)
