-- THIS SCRIPT MUST BE RUN FROM THE ROOT DIRECTORY OF THE PROJECT!
local worlds = require('io_packages.kh2lib.constants.worlds')
local rooms = require('io_packages.kh2lib.constants.rooms')
local events = require('io_packages.kh2lib.constants.events')
local worlds_file = io.open('dist/worlds_table.md', 'w')
local rooms_file = io.open('dist/rooms_table.md', 'w')
local events_file = io.open('dist/events_table.md', 'w')

-- Lua tables do not preserve key order and we need to print in a specific order
local WORLDS_COLUMN_ORDER = { 'id', 'name', 'short_name' }
local ROOMS_KEY_ORDER = { 'id', 'world_id', 'name' }
local EVENTS_KEY_ORDER = { 'id', 'battle_id', 'map_id', 'room_id', 'world_id', 'name' }

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

local function print_table_header(table, file)
    if not file then
        print('no file')
        return
    end

    local header = '|'
    local divider = '|'
    for _, key in ipairs(table) do
        header = header .. key .. '|'
        divider = divider .. '--|'
    end
    file:write(header .. '\n')
    file:write(divider .. '\n')
end

local function print_table(table, file, order)
    if not file then return end

    local values = '|'
    for _, key in ipairs(order) do
        local value = table[key]
        local cell = value
        if type(value) == 'number' then
            cell = string.format('0x%02X', value)
        end
        values = values .. cell .. '|'
    end
    file:write(values .. '\n')
end

print_table_header(WORLDS_COLUMN_ORDER, worlds_file)
for _, world in ipairs(worlds) do
    -- worlds
    print_table(world, worlds_file, WORLDS_COLUMN_ORDER)

    -- rooms
    if not rooms_file then return end
    rooms_file:write('\n### ' .. world .. '\n')
    local world_name = world.name:gsub(' ', '_'):gsub("'", ''):upper()
    local room_list = rooms[world_name]

    if not room_list then
        goto continue
    end
    print_table_header(ROOMS_KEY_ORDER, rooms_file)
    for _, room in ipairs(room_list) do
        print_table(room, rooms_file, ROOMS_KEY_ORDER)
    end

    -- events
    if not events_file then return end
    events_file:write('\n### ' .. world .. '\n')
    local event_list = events[world_name]

    if not event_list then
        goto continue
    end
    print_table_header(EVENTS_KEY_ORDER, events_file)
    for _, event in ipairs(event_list) do
        print_table(event, events_file, EVENTS_KEY_ORDER)
    end
    ::continue::
end

-- worlds_file:write('|ID|Name|Short name|\n')
-- worlds_file:write('|--|--|--|\n')

-- rooms_file:write('|Room ID|World ID|Name|\n')
-- rooms_file:write('|-------|--------|----|\n')

-- for _, world in ipairs(worlds) do
--     -- WORLD
--     local id_hex = string.format('0x%02X', world.id)
--     worlds_file:write(string.format('|%s|%s|%s|\n', id_hex, world.name, world.short_name))

--     -- ROOM
--     local world_name = world.name:gsub(' ', '_'):gsub("'", ''):upper()
--     local room_list = rooms[world_name]

--     if not room_list then
--         goto continue
--     end

--     for _, room in ipairs(room_list) do
--         local room_id = string.format('0x%02X', room.id)
--         local world_id = string.format('0x%02X', room.world_id)
--         local name = room.name
--         rooms_file:write(string.format('|%s|%s|%s|\n', room_id, world_id, name))
--     end
--     ::continue::
-- end

-- worlds_file:close()
-- rooms_file:close()
