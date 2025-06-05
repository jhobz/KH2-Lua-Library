# Using constants in scripts

> [!NOTE]
> For the full technical reference sheet, see [Constants][ref-constants].

There are many [constants][1] in Kingdom Hearts II: worlds, rooms, events, items, drive forms...
All of these have, at minimum, a name and an ID.
Part of the goal with v3.0.0 onwards of KH2 Lua Library is to provide easier reference to the
most commonly used constants, both while programming and in handy [reference sheets][ref-constants].
Constants are usually needed for comparisons to values at certain memory addresses, such as
checking if the current world matches a target world.

Constants are included in this repository as tables of objects, whose classes contain fields
for all of the relevant information for that constant.
For example, the [`World`][ref-world] class contains an `id` field, a `name` field,
and a `short_name` field (for abbreviations).

All constant classes extend a base class [`KH2ValueConstant`][ref-kh2valueconstant],
which defines some instance methods for the class, such as `.tostring()` and `.concat()`.
As Lua does not have a proper "class" definition,
this is achieved primarily through the use of metatables and [LuaCATS annotations][2].

## Using lookup tables

Lookup tables are properties on the `kh2lib` table and have the same name as the type of constant.
They are used to fetch a given constant by some criteria, usually its ID or name. Some constants
require additional context, such as events requiring the world and room in which they take place.

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
This doesn't _always_ result in less code, but it does result in code that is
**significantly easier to read and write.**

```lua
local world = ReadByte(kh2lib.Now + 0x00) -- current world ID
local room = ReadByte(kh2lib.Now + 0x01) -- current room ID
-- No need to know random IDs to get the needed info, just the actual names
if world == kh2lib.worlds.HOLLOW_BASTION.id and room == kh2lib.rooms.HOLLOW_BASTION['Postern'].id then
    -- Do your thing here
end
```

Or, more concisely, using [`kh2lib.current`][ref-current]:

```lua
local world = kh2lib.current.world -- current world object
local room = kh2lib.current.room -- current room object
if world.name == 'Hollow Bastion' and room.name == 'Postern' then
    -- Do your thing here
end
```

For more information about `kh2lib.current`, see [Game State reference][ref-current] and
[Game State guide][guide-game-state].

> [!TIP]
> You could also simplify the last example to _only_ check that the room name is "Postern."
> Be careful about doing this more generally though, as names are not always unique across worlds.

<!-- Reference links -->
[ref-constants]: /docs/reference/constants/
[ref-kh2valueconstant]: ./kh2valueconstant.md
[ref-world]: ./worlds.md
[ref-current]: /docs/reference/kh2lib.md#kh2libcurrent
[guide-game-state]: ./getting_game_state.md
[1]: https://en.wikipedia.org/wiki/Constant_(computer_programming)#Naming_conventions:~:text=In%20computer%20programming%2C%20a%20constant%20is%20a%20value%20that%20is%20not%20altered%20by%20the%20program%20during%20normal%20execution.
[2]: https://luals.github.io/wiki/annotations
