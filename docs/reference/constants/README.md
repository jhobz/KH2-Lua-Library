# Constants

There are many [constants][1] in Kingdom Hearts II: worlds, rooms, events, items, drive forms...
All of these have, at minimum, a name and an ID.
Part of the goal with v3.0.0 onwards of KH2 Lua Library is to provide easier reference to the
most commonly used constants, both while programming and in handy reference sheets.
Constants are usually needed for comparisons to values at certain memory addresses, such as
checking if the current world matches a target world.

Constants are included in this repository as tables of objects, whose classes contain fields
for all of the relevant information for that constant.
For example, the [`World`][world] class contains an `id` field, a `name` field,
and a `short_name` field (for abbreviations).

All constant classes extend a base class [`KH2ValueConstant`][kh2valueconstant],
which defines some instance methods for the class, such as `.tostring()` and `.concat()`.
As Lua does not have a proper "class" definition,
this is achieved primarily through the use of metatables and [LuaCATS annotations][2].

## Using constants in scripts

Constants are usually not referenced by their class objects directly in scripts.
Instead, lookup tables are provided for the most common use-case: converting between IDs and names.
Lookup tables are properties on the top-level `kh2lib` table and have the same name
as the type of the constant.

For example, if your script needs to detect that the player is in the Postern in Hollow Bastion,
you would traditionally have to know the game IDs for both Hollow Bastion and Postern.

```lua
local world = ReadByte(kh2lib.Now + 0x00) -- 0x00 is the offset for the World byte
local room = ReadByte(kh2lib.Now + 0x01) -- 0x01 is the offset for the Room byte
if world == 0x04 and room == 0x06 then -- 0x04 for Hollow Bastion and 0x06 for Postern
    -- Do your thing here
end
```

While this isn't a big deal for two IDs, memorizing thousands of IDs across the game is impractical.
With lookup tables, you can instead check for their names without knowing the IDs at all.
This doesn't necessarily result in less code, but it does result in code that is
_significantly easier to read and write._

```lua
local world = ReadByte(kh2lib.Now + kh2lib._offsets.now.WORLD)
local room = ReadByte(kh2lib.Now + kh2lib._offsets.now.ROOM)
-- No need to know random IDs to get the needed info, just the actual names
if world == kh2lib.worlds.HOLLOW_BASTION and room == kh2lib.rooms.HOLLOW_BASTION['Postern'] then
    -- Do your thing here
end
```

Or, even more concisely:

```lua
local world = ReadByte(kh2lib.Now + kh2lib._offsets.now.WORLD) -- current world ID
local room = ReadByte(kh2lib.Now + kh2lib._offsets.now.ROOM) -- current room ID
local room_name = kh2lib.rooms[world][room] -- Convert the IDs to the English name of the room
if room_name == 'Postern' then
    -- Do your thing here
end
```

> [!TIP]
> While the above hopefully serves as a clear example of the advantage of using lookup tables
> for constants, in practice this example would be made even simpler by the
> [`kh2lib.current`][current] shortcut table.

## Lookup tables

### `kh2lib.worlds`

- {table} of ID-name and name-ID pairs
  - `key` {integer|string} World ID, name, or short name of a world
  - `value` {string|integer} Name or ID of the world represented by `key`

Converts between integer IDs and English names.
This table (and all other lookup tables indexed by world) contains an index for every world's ID,
English name (in upper SNAKE_CASE), and short name (in upper SNAKE_CASE), as defined in the full
list of world objects.
Additionally, some aliases for common alternate names and abbreviations are provided:

- `SIMULATED_TWILIGHT_TOWN`, `STT` -> `TWILIGHT_TOWN`
- `RADIANT_GARDEN`, `RG` -> `HOLLOW_BASTION`
- `LAND_OF_DRAGONS`, `LOD` -> `THE_LAND_OF_DRAGONS`
- `HUNDRED_ACRE_WOOD`, `HAW` -> `100_ACRE_WOOD`
- `ATL` -> `ATLANTICA`
- `WORLD_THAT_NEVER_WAS`, `WTNW` -> `THE_WORLD_THAT_NEVER_WAS`

## Types of constants

Besides [KH2ValueConstant][kh2valueconstant], which should be considered a base class and not
instantiated directly, there are several classes of constants defined by the library.
You can view the reference sheet for each via the links below, which also includes a full list of
every instance of the class known by the library.

### Location

- [Worlds][world]
- [Rooms][room]
- [Events][event]

### Inventory

- WIP

<!-- Reference links -->
[kh2valueconstant]: ./kh2valueconstant.md
[world]: ./worlds.md
[room]: ./rooms.md
[event]: ./events.md
[current]: /docs/reference/kh2lib.md#common-memory-value-shortcuts
[1]: https://en.wikipedia.org/wiki/Constant_(computer_programming)#Naming_conventions:~:text=In%20computer%20programming%2C%20a%20constant%20is%20a%20value%20that%20is%20not%20altered%20by%20the%20program%20during%20normal%20execution.
[2]: https://luals.github.io/wiki/annotations
