# API Reference
This is a technical reference sheet for the various tables, variables, and methods exposed by the `kh2lib` library. For guides on how to perform certain actions, check out [How-to guides](../how_to_guides/). For in-depth tutorials on building a KH2 lua mod, see [Tutorials](../tutorials/).

## Library and game versions
The library provides several special variables in the `kh2lib` table that can be used by scripts to determine the current runtime environment. Most variables and methods in this section will be used by scripts at most once, in the `_OnInit()` function, with the exception of `CanExecute`, which should also be checked on every frame before performing actions.

### `kh2lib.CanExecute`
**Type:** {*boolean*}

Whether the script should be allowed to execute based on detected game version and required library version. You should **always check `CanExecute` before performing an action,** otherwise you are likely to get unexpected results or errors.

### `kh2lib.GameVersion`
**Type:** {*integer*}

The version of the game that was detected upon importing the library. The values listed below are the names of **global variables** injected by the library, not strings, and not properties in the `kh2lib` table. They correspond to the appropriate integer values.

Possible values:
- `KH2_VERSION_UNKNOWN`: Used when no compatible version is detected
- `KH2_VERSION_EMULATOR`: PCSX2 emulator
- `KH2_VERSION_EPIC_1_0_0_9`: Epic Games v1.0.0.9
- `KH2_VERSION_STEAM_GLOBAL_1_0_0_9`: Steam Global v1.0.0.9
- `KH2_VERSION_STEAM_JP_1_0_0_9`: Steam JP v1.0.0.9
- `KH2_VERSION_EPIC_1_0_0_10`: Epic Games v1.0.0.10
- `KH2_VERSION_STEAM_1_0_0_10`: Steam v1.0.0.10

### `kh2lib.OnPC`
**Type:** {*boolean*}

Convenience property to check whether the detected game version is one of the PC ports.

### `RequireKH2LibraryVersion(version)`
Declare a minimum version of the library for this script. If the detected version is too low, `kh2lib.CanExecute` is set to false and a message is printed to the console.
- `version` {*integer*} - required minimum version

### `RequirePCGameVersion()`
Declare that the script expects to run on PC ports only. If not on a PC port, `CanExecute` is set to false and a message is printed to the console.

### `DenyGameVersions(version1, version2, ...)`
Declare specific game version(s) that are known to not be compatible with the
script. This is most commonly caused by not being able to find memory addresses for older game versions.
If the detected version matches one of the provided arguments, `CanExecute` is set to false and a message is printed to the console.
- `args` {*integer[]*} - list of versions; function can accept any number of arguments

#### Examples
```lua
-- Deny emulator version and first Steam global version
DenyGameVersions(KH2_VERSION_EMULATOR, KH2_VERSION_STEAM_GLOBAL_1_0_0_9)
```

## Memory addresses
The library provides access to many memory addresses and other values, adjusted for the current game version. A few of the most common are listed below, as an example. For a full list of exposed addresses, see [Addresses](./addresses/README.md).

- `kh2lib.Now`: Current location data
- `kh2lib.Sve`: Saved location
- `kh2lib.Save`: Save file data
- `kh2lib.Obj0Pointer`: Pointer address for `00objentry.bin`
- `kh2lib.Sys3Pointer`: Pointer address for `03system.bin`
- `kh2lib.Btl0Pointer`: Pointer address for `00battle.bin`

[Full addresses reference](./addresses/README.md)

## Functions
The library provides some other common functions as **global variables** that can be used by scripts. You do not access these via the `kh2lib` table (at this time).

### `BitOr(address, mask)`
Performs a bitwise `OR` of the value at a specified address using a specified mask and writes the updated byte.
This is usually used to set one or more bits in a byte to `1`.
- `address` {*integer*} - memory address
- `mask` {*integer*} - bitmask to apply on value at `address`

### `BitNot()`
Performs a bitwise `AND NOT` of the value at a specified address using a specified mask and writes the updated byte.
This is usually used to set one or more bits in a byte to `0`.
- `address` {*integer*} - memory address
- `mask` {*integer*} - inverse of bitmask to apply on value at `address`

### `ReadPointer(address)`
Reads and returns a pointer value at a specified address, using the proper size per platform.
- `address` {*integer*} - memory address containing pointer

### `Log(message)`, `LogWarning(message)`, `LogError(message)`
Logs a message to the console, using an appropriate print call per platform. The `LogWarning` and `LogError` variants print the message in a corresponding color.
- `message` {*string*} - message to log to console

## Lookup tables
*Added in v3.0.0*
> [!WARNING]
> This part of the library is still a work in progress. While exposed variables should continue to be reliable in future versions, there may be incorrect or incomplete values within the lists of constants.

The library includes a list of constants, their corresponding game IDs, and their memory addresses. The full list of available constants can be found at [Constants](./constants.md). Below is a reference of provided lookup tables for converting between IDs and human-readable strings.

### `kh2lib.worlds`
Lookup table to convert world IDs to their English names or vice-versa. Values are accessed by integer properties (IDs) or strings (uppercase world names). Some common world abbreviations are also provided as aliases (e.g. `kh2lib.worlds.HB` == `kh2lib.worlds.HOLLOW_BASTION`).

#### Examples
```lua
print(kh2lib.worlds[0x04])           -- Hollow Bastion
print(kh2lib.worlds.HOLLOW_BASTION)  -- 4
print(kh2lib.worlds.HB)              -- 4 (alias for HOLLOW_BASTION)
print(kh2lib.worlds.RADIANT_GARDEN)  -- 4 (alias for HOLLOW_BASTION)
print(kh2lib.worlds[8])              -- The Land of Dragons
print(kh2lib.worlds.LAND_OF_DRAGONS) -- 8 (alias for THE_LAND_OF_DRAGONS)
```

### `kh2lib.rooms`
Lookup table to convert room IDs to their English names or vice-versa. This is a double-indexed table where the first index refers to the world and the second index refers to the room. Values are accessed by integer properties (IDs) or strings (uppercase world names). The first index has all of the same values for keys as `kh2lib.worlds`.

#### Examples
```lua
print(kh2lib.rooms[0x04][0x06])               -- Postern
print(kh2lib.rooms.HOLLOW_BASTION['Postern']) -- 6
print(kh2lib.rooms.LOD[0x0C])                 -- Village (Destroyed)
```

## Common memory value shortcuts
*Added in v3.0.0*
> [!WARNING]
> This part of the library is still a work in progress. While exposed variables should continue to be reliable in future versions, more may be added to further simplify common actions a script might take.

Some values in the game's memory are accessed so commonly that the library provides shortcut references to them.

### `kh2lib.current`
Table that provides convenience methods (as property getters) to get information about the current game state. Currently, this only includes information accessed via the `kh2lib.Now` memory address, but more information is planned to be added in the future.

#### Properties
- `world` {*integer*} - current world ID. Equivalent to `ReadByte(kh2lib.Now + 0x00)`
- `world_name` {*string*} - current world name
- `room` {*integer*} - current room ID. Equivalent to `ReadByte(kh2lib.Now + 0x01)`
- `room_name` {*string*} - current room name
- `door` {*integer*} - current door (spawn) ID
- `place` {*integer*} - concatenation of current room ID & world ID. Equivalent to `ReadShort(kh2lib.Now + 0x01)`
- `place_name` {*string*} - current world & room names, separated by a hyphen
- `location` {*string*} - alias for `place_name`

#### Examples
```lua
-- Assume the player is currently in the Secret Passage in Beast's Castle
print(kh2lib.current.world)                 -- 5
print(kh2lib.current.world_name)            -- Beast's Castle
print(kh2lib.current.room)                  -- 12
print(kh2lib.current.room_name)             -- Secret Passage
string.format('0x%x', kh2lib.current.place) -- 0x0C05
print(kh2lib.current.place_name)            -- Beast's Castle - Secret Passage
print(kh2lib.current.location)              -- Beast's Castle - Secret Passage
```
