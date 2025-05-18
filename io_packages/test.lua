local worlds = require('kh2lib.constants.worlds')
local rooms = require('kh2lib.constants.rooms')
local worlds_file = io.open('worlds_table.md', 'w')
local rooms_file = io.open('rooms_table.md', 'w')
local room_order = {
    'WORLD_OF_DARKNESS',
    'TWILIGHT_TOWN',
    'DESTINY_ISLANDS',
    'HOLLOW_BASTION',
    'BEASTS_CASTLE',
    'OLYMPUS_COLISEUM',
    'AGRABAH',
    'THE_LAND_OF_DRAGONS',
    'HUNDRED_ACRE_WOOD',
    'PRIDE_LANDS',
    'ATLANTICA',
    'DISNEY_CASTLE',
    'TIMELESS_RIVER',
    'HALLOWEEN_TOWN',
    'PORT_ROYAL',
    'SPACE_PARANOIDS',
    'THE_WORLD_THAT_NEVER_WAS',
}
-- print(worlds[0x01].id)

-- manual
-- | ID | Name | Short name|
-- |----| -----|-----------|
-- |world id | worlds | world short name

-- local name = variable
-- ipairs = loop over arrays
-- pairs = loop over dictionary
-- print("A","B","C") prints A B C
-- print("A" .. "B"  ..  "C") prints A B C
-- convert number to hex = string.format("Ox%x", number)

-- print('|' .. 'ID ' .. '|' .. ' Name ' .. '|' .. ' Short Name' .. '|')
-- print('|' .. '---' .. '|' .. '------' .. '|' .. '-----------' .. '|')


worlds_file:write('| ID   | Name                     | Short name |\n')
worlds_file:write('| ---- | ------------------------ | ---------- |\n')

for _, world in ipairs(worlds) do
    local id_hex = string.format('0x%02X', world.id)
    worlds_file:write(string.format('| %-4s | %-24s | %-10s |\n', id_hex, world.name, world.short_name))
end



rooms_file:write('| Room ID | World ID | Name                                  |\n')
rooms_file:write('| ------- | -------- | ------------------------------------- |\n')

-- Use the defined order
for _, key in ipairs(room_order) do
    local roomList = rooms[key]
    for _, room in ipairs(roomList) do
        local room_id = string.format('0x%02X', room.id)
        local world_id = string.format('0x%02X', room.world_id)
        local name = room.name
        rooms_file:write(string.format('| %-7s | %-8s | %-37s |\n', room_id, world_id, name))
    end
end

rooms_file:close()
