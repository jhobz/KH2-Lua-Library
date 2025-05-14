-- Constants
local offsets = require('constants.offsets')
local worlds = require('constants.worlds')
local rooms = require('constants.rooms')
local events = require('constants.events')

--- @alias WorldId integer
--- @alias WorldName string
--- @alias RoomId integer

--- Lookup table for worlds (ID <--> Name)
--- @type {[WorldId]: WorldName}|{[WorldName]: WorldId}
local lut_worlds = {}
for _, world in ipairs(worlds) do
    local id = world.id
    local name = world.name
    local short_name = world.short_name
    local key_name = name:gsub(' ', '_'):upper()

    lut_worlds[id] = name
    lut_worlds[key_name] = id
    lut_worlds[short_name] = id
end

-- Add world aliases
lut_worlds.SIMULATED_TWILIGHT_TOWN = lut_worlds.TWILIGHT_TOWN
lut_worlds.STT = lut_worlds.SIMULATED_TWILIGHT_TOWN
lut_worlds.RADIANT_GARDEN = lut_worlds.HOLLOW_BASTION
lut_worlds.RG = lut_worlds.RADIANT_GARDEN
lut_worlds.LAND_OF_DRAGONS = lut_worlds.THE_LAND_OF_DRAGONS
lut_worlds.LOD = lut_worlds.LAND_OF_DRAGONS
lut_worlds.HUNDRED_ACRE_WOOD = lut_worlds['100 Acre Wood']
lut_worlds.HAW = lut_worlds.HUNDRED_ACRE_WOOD
lut_worlds.ATL = lut_worlds.ATLANTICA
lut_worlds.WORLD_THAT_NEVER_WAS = lut_worlds.THE_WORLD_THAT_NEVER_WAS
lut_worlds.WTNW = lut_worlds.WORLD_THAT_NEVER_WAS

-- Create lookup table for rooms (ID <--> Name)
--- @type {[WorldId|WorldName]: {[RoomId]: string}}|{[WorldId|WorldName]: {[string]: RoomId}}
local lut_rooms = {}
for world_name, rooms_array in pairs(rooms) do
    lut_rooms[world_name] = {}

    for _, room in ipairs(rooms_array) do
        local id = room.id
        local name = room.name

        lut_rooms[world_name][id] = name
        lut_rooms[world_name][name] = id

        if not lut_rooms[room.world_id] then
            lut_rooms[room.world_id] = {}
        end
        lut_rooms[room.world_id][id] = name
        lut_rooms[room.world_id][name] = id
    end
end

-- Add world aliases
lut_rooms.WOD = lut_rooms.WORLD_OF_DARKNESS
lut_rooms.TT = lut_rooms.TWILIGHT_TOWN
lut_rooms.SIMULATED_TWILIGHT_TOWN = lut_rooms.TWILIGHT_TOWN
lut_rooms.STT = lut_rooms.SIMULATED_TWILIGHT_TOWN
lut_rooms.DI = lut_rooms.DESTINY_ISLANDS
lut_rooms.HB = lut_rooms.HOLLOW_BASTION
lut_rooms.RADIANT_GARDEN = lut_rooms.HOLLOW_BASTION
lut_rooms.RG = lut_rooms.RADIANT_GARDEN
lut_rooms.BC = lut_rooms.BEASTS_CASTLE
lut_rooms.OC = lut_rooms.OLYMPUS_COLISEUM
lut_rooms.AG = lut_rooms.AGRABAH
lut_rooms.TLOD = lut_rooms.THE_LAND_OF_DRAGONS
lut_rooms.LAND_OF_DRAGONS = lut_rooms.THE_LAND_OF_DRAGONS
lut_rooms.LOD = lut_rooms.LAND_OF_DRAGONS
lut_rooms.HAW = lut_rooms.HUNDRED_ACRE_WOOD
lut_rooms['100_ACRE_WOOD'] = lut_rooms.HUNDRED_ACRE_WOOD
lut_rooms['1AW'] = lut_rooms.HUNDRED_ACRE_WOOD
lut_rooms.PL = lut_rooms.PRIDE_LANDS
lut_rooms.AT = lut_rooms.ATLANTICA
lut_rooms.ATL = lut_rooms.ATLANTICA
lut_rooms.DC = lut_rooms.DISNEY_CASTLE
lut_rooms.TR = lut_rooms.TIMELESS_RIVER
lut_rooms.HT = lut_rooms.HALLOWEEN_TOWN
lut_rooms.PR = lut_rooms.PORT_ROYAL
lut_rooms.SP = lut_rooms.SPACE_PARANOIDS
lut_rooms.TWTNW = lut_rooms.THE_WORLD_THAT_NEVER_WAS
lut_rooms.WORLD_THAT_NEVER_WAS = lut_rooms.THE_WORLD_THAT_NEVER_WAS
lut_rooms.WTNW = lut_rooms.WORLD_THAT_NEVER_WAS

-- Create lookup table for events (ID -> Name)
-- Bidirectional search can be added later if deemed useful
--- @type {[WorldId|WorldName]: {[RoomId]: {[integer]: string}}}
local lut_events = {}
for world_name, events_array in pairs(events) do
    lut_events[world_name] = {}

    for _, event in ipairs(events_array) do
        local id = event.id
        local room = event.room_id
        local world_id = event.world_id
        local name = event.name

        if not lut_events[world_id] then lut_events[world_id] = {} end
        if not lut_events[world_name][room] then lut_events[world_name][room] = {} end
        if not lut_events[world_id][room] then lut_events[world_id][room] = {} end

        lut_events[world_name][room][id] = name
        lut_events[world_id][room][id] = name
    end
end

-- Add world aliases
lut_events.WOD = lut_events.WORLD_OF_DARKNESS
lut_events.TT = lut_events.TWILIGHT_TOWN
lut_events.SIMULATED_TWILIGHT_TOWN = lut_events.TWILIGHT_TOWN
lut_events.STT = lut_events.SIMULATED_TWILIGHT_TOWN
lut_events.DI = lut_events.DESTINY_ISLANDS
lut_events.HB = lut_events.HOLLOW_BASTION
lut_events.RADIANT_GARDEN = lut_events.HOLLOW_BASTION
lut_events.RG = lut_events.RADIANT_GARDEN
lut_events.BC = lut_events.BEASTS_CASTLE
lut_events.OC = lut_events.OLYMPUS_COLISEUM
lut_events.AG = lut_events.AGRABAH
lut_events.TLOD = lut_events.THE_LAND_OF_DRAGONS
lut_events.LAND_OF_DRAGONS = lut_events.THE_LAND_OF_DRAGONS
lut_events.LOD = lut_events.LAND_OF_DRAGONS
lut_events.HAW = lut_events.HUNDRED_ACRE_WOOD
lut_events['100_ACRE_WOOD'] = lut_events.HUNDRED_ACRE_WOOD
lut_events['1AW'] = lut_events.HUNDRED_ACRE_WOOD
lut_events.PL = lut_events.PRIDE_LANDS
lut_events.AT = lut_events.ATLANTICA
lut_events.ATL = lut_events.ATLANTICA
lut_events.DC = lut_events.DISNEY_CASTLE
lut_events.TR = lut_events.TIMELESS_RIVER
lut_events.HT = lut_events.HALLOWEEN_TOWN
lut_events.PR = lut_events.PORT_ROYAL
lut_events.SP = lut_events.SPACE_PARANOIDS
lut_events.TWTNW = lut_events.THE_WORLD_THAT_NEVER_WAS
lut_events.WORLD_THAT_NEVER_WAS = lut_events.THE_WORLD_THAT_NEVER_WAS
lut_events.WTNW = lut_events.WORLD_THAT_NEVER_WAS


return {
    offsets = offsets,
    worlds = lut_worlds,
    rooms = lut_rooms,
    events = lut_events,
    constants = {
        offsets = offsets,
        worlds = worlds,
        rooms = rooms,
        events = events,
    },
}
