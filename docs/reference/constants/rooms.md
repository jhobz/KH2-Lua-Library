# Class: `Room` <!-- omit in toc -->

- Extends [`KH2ValueConstant`][kh2valueconstant]

This library defines a Room class used to create a static list of all rooms and their relevant data.
It's unlikely that you will ever need to interface with this class directly.
It is used internally to create the public lookup table found at `kh2lib.rooms`.
The [full list of constants][constants] can be accessed directly, but it is generally not recommended
unless you have a special use-case not covered by the lookup tables or convenience methods.

## `new Room([options])` <!-- omit in toc -->

- `options` {table}
  - `id` {integer} One-byte room ID (from game). Default: `-1`
  - `world_id` {integer} One-byte world ID (from game). Default: `-1`
  - `name` {string} Human-readable name of world. Default: `'UNKNOWN_ROOM'`
- Returns: {Room} newly-instantiated Room

A subclass of {KH2ValueConstant} defining a Room object.
**Room IDs are not unique across worlds**, which is why the
world ID is also stored for each room and is required in the lookup table.

All instances contain the built-in `KH2ValueConstant` properties and:

- `id` {integer} The game's ID for this room. Number between 0 and 255 (`0x00` to `0xFF`).
- `world_id` {integer} The game's ID for the world containing this room.
Number between 0 and 255 (`0x00` to `0xFF`).
- `name` {string} The English name of the room.

## List of all rooms <!-- omit in toc -->

This section contains all of the rooms indexed as Room objects in [`rooms.lua`][rooms_code],
separated by world. It also serves as a handy reference for looking up the IDs and names
for individual rooms, in case you need to compare against one in your script.

IDs are listed in [hexadecimal format][1], but can be represented as simple integers as well
(e.g. `0x11 == 17`).

Jump to section:

- [World of Darkness](#world-of-darkness)
- [Twilight Town](#twilight-town)

### World of Darkness

| ID   | World ID | Name            |
| ---- | -------- | --------------- |
| 0x00 | 0x01     | The Dark Margin |
| 0x01 | 0x01     | Loop Demo       |

### Twilight Town

| ID   | World ID | Name                                  |
| ---- | -------- | ------------------------------------- |
| 0x00 | 0x02     | The Empty Realm                       |
| 0x01 | 0x02     | Roxas's Room                          |
| 0x02 | 0x02     | The Usual Spot                        |
| 0x03 | 0x02     | Back Alley                            |
| 0x04 | 0x02     | Sandlot                               |
| 0x05 | 0x02     | Sandlot (Day 4)                       |
| 0x06 | 0x02     | Market Street: Station Heights        |
| 0x07 | 0x02     | Market Street: Tram Common            |
| 0x08 | 0x02     | Station Plaza                         |
| 0x09 | 0x02     | Central Station                       |
| 0x0A | 0x02     | Sunset Terrace                        |
| 0x0B | 0x02     | Sunset Station                        |
| 0x0C | 0x02     | Sunset Hill                           |
| 0x0D | 0x02     | The Woods                             |
| 0x0E | 0x02     | The Old Mansion                       |
| 0x0F | 0x02     | Mansion: Foyer                        |
| 0x10 | 0x02     | Mansion: Dining Room                  |
| 0x11 | 0x02     | Mansion: Library                      |
| 0x12 | 0x02     | Mansion: The White Room               |
| 0x13 | 0x02     | Mansion: Basement Hall                |
| 0x14 | 0x02     | Mansion: Basement Hall (Axel II)      |
| 0x15 | 0x02     | Mansion: Computer Room                |
| 0x16 | 0x02     | Mansion: Basement Corridor            |
| 0x17 | 0x02     | Mansion: Pod Room                     |
| 0x18 | 0x02     | On the Train                          |
| 0x19 | 0x02     | The Tower                             |
| 0x1A | 0x02     | Tower: Entryway                       |
| 0x1B | 0x02     | Tower: Sorcerer's Loft                |
| 0x1C | 0x02     | Tower: Wardrobe                       |
| 0x1D | 0x02     | Tower: Star Chamber                   |
| 0x1E | 0x02     | Tower: Moon Chamber                   |
| 0x1F | 0x02     | Tower: Wayward Stairs (Lower Level)   |
| 0x20 | 0x02     | Station of Serenity                   |
| 0x21 | 0x02     | Station of Calling                    |
| 0x22 | 0x02     | Station of Awakening (Twilight Thorn) |
| 0x23 | 0x02     | The Mysterious Train                  |
| 0x24 | 0x02     | Tunnelway                             |
| 0x25 | 0x02     | Underground Concourse                 |
| 0x26 | 0x02     | Tower: Wayward Stairs (Middle Level)  |
| 0x27 | 0x02     | Tower: Wayward Stairs (Upper Level)   |
| 0x28 | 0x02     | Betwixt and Between                   |
| 0x29 | 0x02     | The Old Mansion (Nobodies Fight)      |

<!-- Reference links -->
[constants]: /docs/reference/constants/README.md
[rooms_code]: /io_packages/kh2lib/constants/rooms.lua
[kh2valueconstant]: /docs/reference/constants/kh2valueconstant.md
[1]: https://en.wikipedia.org/wiki/Hexadecimal#:~:text=Hexadecimal%20\(also%20known,ten%20to%20fifteen.&text=In%20programming%2C%20several%20notations%20denote%20hexadecimal%20numbers%2C%20usually%20involving%20a%20prefix.%20The%20prefix%200x%20is%20used%20in%20C%2C%20which%20would%20denote%20this%20value%20as%200x2C7.
