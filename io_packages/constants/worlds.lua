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
    World:new{ id = 0x08, name = 'The Land of Dragons', short_name = 'TLOD' },
    World:new{ id = 0x09, name = '100 Acre Wood', short_name = '1AW' },
    World:new{ id = 0x0A, name = 'Pride Lands', short_name = 'PL' },
    World:new{ id = 0x0B, name = 'Atlantica', short_name = 'AT' },
    World:new{ id = 0x0C, name = 'Disney Castle', short_name = 'DC' },
    World:new{ id = 0x0D, name = 'Timeless River', short_name = 'TR' },
    World:new{ id = 0x0E, name = 'Halloween Town', short_name = 'HT' },
    World:new{ id = 0x10, name = 'Port Royal', short_name = 'PR' },
    World:new{ id = 0x11, name = 'Space Paranoids', short_name = 'SP' },
    World:new{ id = 0x12, name = 'The World That Never Was', short_name = 'TWTNW' },
}

return worlds
