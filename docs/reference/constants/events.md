# Class: `Event` <!-- omit in toc -->

- Extends [`KH2ValueConstant`][kh2valueconstant]

This library defines an Event class used to create a static list of all events and their relevant data.
It's unlikely that you will ever need to interface with this class directly.
It is used internally to create the public lookup table found at `kh2lib.events`.
The [full list of constants][constants] can be accessed directly, but it is generally not recommended
unless you have a special use-case not covered by the lookup tables or convenience methods.

## `new Event([options])` <!-- omit in toc -->

- `options` {table}
  - `id` {integer} One-byte event ID (from game). Default: `-1`
  - `room_id` {integer} One-byte room ID (from game). Default: `-1`
  - `world_id` {integer} One-byte world ID (from game). Default: `-1`
  - `name` {string} Human-readable name of world. Default: `'UNKNOWN_EVENT'`
  - `battle_id` {integer} Two-byte battle ID (usually optional).
  - `map_id` {integer} Two-byte map ID (usually optional).
  - `door_id` {integer} Two-byte door ID (usually optional).
- Returns: {Event} newly-instantiated Event

Creates a new Event object. Event IDs are **not unique between worlds or rooms**, which is why the
world ID and room ID are also stored for each event and are required in the lookup table.

## List of all events <!-- omit in toc -->

> [!WARNING]
> Many entries in the tables below may contain incomplete, incorrect, or unconfirmed information.
> You can [help confirm these entries][contribute] by playing the game!

This section contains all of the events indexed as Event objects in [`events.lua`][events_code],
separated by world. It also serves as a handy reference for looking up the IDs and names
for individual events, in case you need to compare against one in your script.

If the battle ID and/or map ID are omitted, it means they are not needed for comparisons or
are not consistent values for that event.

IDs are listed in [hexadecimal format][1], but can be represented as simple integers as well
(e.g. `0x11 == 17`).

Jump to section:

- [World of Darkness](#world-of-darkness)
- [Twilight Town](#twilight-town)

### World of Darkness

| ID     | Battle ID | Map ID | Room ID | World ID | Name                                 |
| ------ | --------- | ------ | ------- | -------- | ------------------------------------ |
| 0x0033 | 0x0033    | 0x0033 | 0x00    | 0x01     | The Letter                           |
| 0x0039 | 0x0039    | 0x0039 | 0x00    | 0x01     | The Dark Margin                      |
| 0x003A | 0x003A    | 0x003A | 0x00    | 0x01     | FMV Ending & Credits                 |
| 0x003C | 0x003C    | 0x003C | 0x00    | 0x01     | Gathering                            |
| 0x003D | 0x003D    | 0x003D | 0x00    | 0x01     | Birth by Sleep                       |
| 0x003E | 0x003E    | 0x003E | 0x00    | 0x01     | The Dark Margin (Theater Mode)       |
| 0x0041 | 0x0041    | 0x0041 | 0x00    | 0x01     | Gathering (Theater Mode)             |
| 0x0042 | 0x0042    | 0x0042 | 0x00    | 0x01     | Birth by Sleep (Theater Mode)        |
| 0x0043 | 0x0043    | 0x0043 | 0x00    | 0x01     | The Letter (Theater Mode - English)  |
| 0x0044 | 0x0044    | 0x0044 | 0x00    | 0x01     | The Letter (Theater Mode - Japanese) |
| 0x0038 | 0x0038    | 0x0038 | 0x01    | 0x01     | Menu Trailer                         |

### Twilight Town

WIP

<!-- Reference links -->
[constants]: /docs/reference/constants/README.md
[events_code]: /io_packages/kh2lib/constants/events.lua
[kh2valueconstant]: /docs/reference/constants/kh2valueconstant.lua
[contribute]: /CONTRIBUTING.md
[1]: https://en.wikipedia.org/wiki/Hexadecimal#:~:text=Hexadecimal%20\(also%20known,ten%20to%20fifteen.&text=In%20programming%2C%20several%20notations%20denote%20hexadecimal%20numbers%2C%20usually%20involving%20a%20prefix.%20The%20prefix%200x%20is%20used%20in%20C%2C%20which%20would%20denote%20this%20value%20as%200x2C7.
