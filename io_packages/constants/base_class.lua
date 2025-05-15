-- Note: I tried to include this class as a second export from util.table_utils,
-- but the language service failed to pick up the annotations properly

--- Base class consisting of ID value and human-readable name of in-game constant
--- @class KH2ValueConstant
--- @field id integer # value (ID from game)
--- @field name string # human-readable name
local KH2ValueConstant = {}

--- Convert KH2ValueConstant class to string
--- @return string # human-readable name
function KH2ValueConstant:tostring()
    return self.name
end

--- KH2ValueConstant class constructor
--- @param o? {id: number, name: string} # options table
--- @return KH2ValueConstant # newly-instantiated KH2ValueConstant
function KH2ValueConstant:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.__name = 'KH2ValueConstant'
    self.__tostring = self.tostring

    --- @operator concat(): string
    self.__concat = function (a, b) return tostring(a) .. tostring(b) end
    return o
end

--- Return copy of metatable for use in child classes
--- @return KH2ValueConstant
function KH2ValueConstant:super_mt()
    local mt = {}
    for k, v in pairs(getmetatable(self)) do mt[k] = v end
    return mt
end

return KH2ValueConstant
