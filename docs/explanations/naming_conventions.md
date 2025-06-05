
# Naming conventions

WIP

## Constants

By programming convention, named constants are (usually) in UPPER_SNAKE_CASE.
This applies to global constants such as `KH2_VERSION_UNKNOWN` as well as constants stored within
lookup tables, such as `kh2lib.worlds.THE_WORLD_THAT_NEVER_WAS`.

### Why are Room and Event keys different from World keys?

Unlike world keys, room and event keys are _not_ in upper snake case.
The reason for this difference is while it's convenient to reference worlds by name
directly (e.g. `kh2lib.worlds.AGRABAH`), it's not as convenient to reference rooms or events
by name directly. Many can be quite long or even contain unusable symbols for direct access
(e.g. `kh2lib.rooms.AGRABAH['The Cave of Wonders: Chasm of Challenges']`).
It is more common for this table to be used by passing variables as keys, rather than
direct access (e.g. `kh2lib.rooms.AGRABAH[room_id]`), but direct access is still
occasionaly useful (especially for warps), so the names are still included as keys.
