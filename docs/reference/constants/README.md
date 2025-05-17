# Constants

There are many constants in Kingdom Hearts II.
Worlds, rooms, events, items, drive forms... all of these have, at minimum, a name and an ID.
Part of the goal with v3.0.0 onwards of KH2 Lua Library is to provide easier reference to the
most commonly used constants, both while programming and in handy reference sheets.

Constants are included in this repository as tables of objects, whose classes contain fields
for all of the relevant information for that constant.
For example, the [`World`][world] class contains an `id` field, a `name` field,
and a `short_name` field (for abbreviations).

All constant classes extend a base class [`KH2ValueConstant`][kh2valueconstant],
which defines some instance methods for the class, such as `.tostring()` and `.concat()`.
As Lua does not have a proper "class" definition,
this is achieved primarily through the use of metatables and [LuaCATS annotations][1].

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
[1]: https://luals.github.io/wiki/annotations
