-- @module kh2lib.utils
local utils = {}

-- Create a table behind a proxy so that the table is effectively read only
function utils.readonlytable(table)
   return setmetatable({}, {
      __index = table,
      __newindex = function (table, key, value)
         error('Attempt to modify read-only table')
      end,
      __metatable = false,

      -- have to override pairs to follow the proxy table
      __pairs = function (t)
         return next, table
      end,
   })
end

return utils
