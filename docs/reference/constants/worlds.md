# Class: `World`

- Extends [`KH2ValueConstant`][kh2valueconstant]

This library defines a World class used to create a static list of all worlds and their relevant data.
It's unlikely that you will ever need to interface with this class directly.
It is used internally to create the public lookup table found at `kh2lib.worlds`.
The [full list of constants][constants] can be accessed directly, but it is generally not recommended
unless you have a special use-case not covered by the lookup tables or convenience methods.

## `new World([options])`

- `options` {table}
  - `id` {integer} One-byte world ID (from game). Default: `-1`
  - `name` {string} Human-readable name of world. Default: `'UNKNOWN_WORLD'`
  - `short_name` {string} Abbreviated name of world. Default: `'UNKWN'`
- Returns: {World} newly-instantiated World

Creates a new World object.

## List of all worlds

The table below contains all of the worlds indexed as World objects in [`worlds.lua`][worlds_code].

| ID   | Name                     | Short name |
| ---- | ------------------------ | ---------- |
| 0x01 | World of Darkness        | WOD        |
| 0x02 | Twilight Town            | TT         |
| 0x03 | Destiny Islands          | DI         |
| 0x04 | Hollow Bastion           | HB         |
| 0x05 | Beast's Castle           | BC         |
| 0x06 | Olympus Coliseum         | OC         |
| 0x07 | Agrabah                  | AG         |
| 0x08 | The Land of Dragons      | TLOD       |
| 0x09 | 100 Acre Wood            | 1AW        |
| 0x0A | Pride Lands              | PL         |
| 0x0B | Atlantica                | AT         |
| 0x0C | Disney Castle            | DC         |
| 0x0D | Timeless River           | TR         |
| 0x0E | Halloween Town           | HT         |
| 0x0F | World Map                | MAP        |
| 0x10 | Port Royal               | PR         |
| 0x11 | Space Paranoids          | SP         |
| 0x12 | The World That Never Was | TWTNW      |

<!-- Reference links -->
[constants]: /docs/reference/constants/README.md
[worlds_code]: /io_packages/kh2lib/constants/worlds.lua
[kh2valueconstant]: /docs/reference/constants/kh2valueconstant.lua
