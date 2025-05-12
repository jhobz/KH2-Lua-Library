local table_utils = require('util.table_utils')
local readonlytable = table_utils.readonlytable

-- World class containing ID value and human-readable name
local World = { id = -1, name = 'UNKNOWN_WORLD', short_name = 'UNKNWN' }

function World:tostring()
    return self.name
end

function World:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.__name = 'World'
    self.__tostring = self.tostring
    self.__concat = function (a, b) return a .. b:tostring() end
    return o
end

-- @module worlds
local worlds = readonlytable{
    World:new{ id = 0x01, name = 'World of Darkness', short_name = 'WOD' },
    World:new{ id = 0x02, name = 'Twilight Town', short_name = 'TT' },
    World:new{ id = 0x03, name = 'Destiny Islands', short_name = 'DI' },
    World:new{ id = 0x04, name = 'Hollow Bastion', short_name = 'HB' },
    World:new{ id = 0x05, name = "Beast's Castle", short_name = 'BC' },
    World:new{ id = 0x06, name = 'Olympus Coliseum', short_name = 'OC' },
    World:new{ id = 0x07, name = 'Agrabah', short_name = 'AG' },
    World:new{ id = 0x08, name = 'Land of Dragons', short_name = 'LOD' },
    World:new{ id = 0x09, name = 'Hundred Acre Wood', short_name = '1AW' },
    World:new{ id = 0x0A, name = 'Pride Lands', short_name = 'PL' },
    World:new{ id = 0x0B, name = 'Atlantica', short_name = 'AT' },
    World:new{ id = 0x0C, name = 'Disney Castle', short_name = 'DC' },
    World:new{ id = 0x0D, name = 'Timeless River', short_name = 'TR' },
    World:new{ id = 0x0E, name = 'Halloween Town', short_name = 'HT' },
    World:new{ id = 0x10, name = 'Port Royal', short_name = 'PR' },
    World:new{ id = 0x11, name = 'Space Paranoids', short_name = 'SP' },
    World:new{ id = 0x12, name = 'The World That Never Was', short_name = 'TWTNW' },
}

local names_to_ids = readonlytable{
    -- Full names
    WORLD_OF_DARKNESS = 0x01,
    TWILIGHT_TOWN = 0x02,
    DESTINY_ISLANDS = 0x03,
    HOLLOW_BASTION = 0x04,
    BEASTS_CASTLE = 0x05,
    OLYMPUS_COLISEUM = 0x06,
    AGRABAH = 0x07,
    LAND_OF_DRAGONS = 0x08,
    HUNDRED_ACRE_WOOD = 0x09,
    PRIDE_LANDS = 0x0A,
    ATLANTICA = 0x0B,
    DISNEY_CASTLE = 0x0C,
    TIMELESS_RIVER = 0x0D,
    HALLOWEEN_TOWN = 0x0E,
    PORT_ROYAL = 0x10,
    SPACE_PARANOIDS = 0x11,
    THE_WORLD_THAT_NEVER_WAS = 0x12,
    WORLD_THAT_NEVER_WAS = 0x12,

    -- Short name aliases
    WOD = 0x01,
    TT = 0x02,
    DI = 0x03,
    HB = 0x04,
    BC = 0x05,
    OC = 0x06,
    AG = 0x07,
    LOD = 0x08,
    HAW = 0x09,
    PL = 0x0A,
    AT = 0x0B,
    ATL = 0x0B,
    DC = 0x0C,
    TR = 0x0D,
    HT = 0x0E,
    PR = 0x10,
    SP = 0x11,
    TWTNW = 0x12,
    WTNW = 0x12,
}

return worlds
