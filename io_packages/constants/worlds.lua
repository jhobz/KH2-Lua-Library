local table_utils = require('util.table_utils')
local readonlytable = table_utils.readonlytable

-- World class containing ID value and human-readable name
local World = { id = -1, name = 'UNKNOWN_WORLD' }
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
    -- Full names
    WORLD_OF_DARKNESS = World:new{ id = 0x01, name = 'World of Darkness' },
    TWILIGHT_TOWN = World:new{ id = 0x02, name = 'Twilight Town' },
    DESTINY_ISLANDS = World:new{ id = 0x03, name = 'Destiny Islands' },
    HOLLOW_BASTION = World:new{ id = 0x04, name = 'Hollow Bastion' },
    BEASTS_CASTLE = World:new{ id = 0x05, name = "Beast's Castle" },
    OLYMPUS_COLISEUM = World:new{ id = 0x06, name = 'Olympus Coliseum' },
    AGRABAH = World:new{ id = 0x07, name = 'Agrabah' },
    LAND_OF_DRAGONS = World:new{ id = 0x08, name = 'Land of Dragons' },
    HUNDRED_ACRE_WOOD = World:new{ id = 0x09, name = 'Hundred Acre Wood' },
    PRIDE_LANDS = World:new{ id = 0x0A, name = 'Pride Lands' },
    ATLANTICA = World:new{ id = 0x0B, name = 'Atlantica' },
    DISNEY_CASTLE = World:new{ id = 0x0C, name = 'Disney Castle' },
    TIMELESS_RIVER = World:new{ id = 0x0D, name = 'Timeless River' },
    HALLOWEEN_TOWN = World:new{ id = 0x0E, name = 'Halloween Town' },
    PORT_ROYAL = World:new{ id = 0x10, name = 'Port Royal' },
    SPACE_PARANOIDS = World:new{ id = 0x11, name = 'Space Paranoids' },
    THE_WORLD_THAT_NEVER_WAS = World:new{ id = 0x12, name = 'The World That Never Was' },
    WORLD_THAT_NEVER_WAS = World:new{ id = 0x12, name = 'The World That Never Was' },

    -- Short name aliases
    WOD = World:new{ id = 0x01, name = 'World of Darkness' },
    TT = World:new{ id = 0x02, name = 'Twilight Town' },
    DI = World:new{ id = 0x03, name = 'Destiny Islands' },
    HB = World:new{ id = 0x04, name = 'Hollow Bastion' },
    BC = World:new{ id = 0x05, name = "Beast's Castle" },
    OC = World:new{ id = 0x06, name = 'Olympus Coliseum' },
    AG = World:new{ id = 0x07, name = 'Agrabah' },
    LOD = World:new{ id = 0x08, name = 'Land of Dragons' },
    HAW = World:new{ id = 0x09, name = 'Hundred Acre Wood' },
    PL = World:new{ id = 0x0A, name = 'Pride Lands' },
    AT = World:new{ id = 0x0B, name = 'Atlantica' },
    ATL = World:new{ id = 0x0B, name = 'Atlantica' },
    DC = World:new{ id = 0x0C, name = 'Disney Castle' },
    TR = World:new{ id = 0x0D, name = 'Timeless River' },
    HT = World:new{ id = 0x0E, name = 'Halloween Town' },
    PR = World:new{ id = 0x10, name = 'Port Royal' },
    SP = World:new{ id = 0x11, name = 'Space Paranoids' },
    TWTNW = World:new{ id = 0x12, name = 'The World That Never Was' },
    WTNW = World:new{ id = 0x12, name = 'The World That Never Was' },
}

return worlds
