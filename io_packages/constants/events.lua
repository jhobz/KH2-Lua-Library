local table_utils = require('util.table_utils')
local readonlytable = table_utils.readonlytable

-- Event class containing ID values and human-readable name
local Event = {
  event_id = -1,
  battle_id = -1,
  map_id = -1,
  fight_id = -1,
  room_id = -1,
  world_id = -1,
  name = 'UNKNOWN_EVENT',
}

function Event:tostring()
  return self.name
end

function Event:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  self.__name = 'Event'
  self.__tostring = self.tostring
  self.__concat = function (a, b) return a .. b:tostring() end
  return o
end

-- ////////
-- Auto-generated KH2FM event data tables (with some manual entries)
-- ////////

local WORLD_OF_DARKNESS = readonlytable{
  Event:new{ event_id = 0x0033, battle_id = 0x0033, map_id = 0x0033, fight_id = 0x00, room_id = 0x00, world_id = 0x01, name = 'The Letter' },
  Event:new{ event_id = 0x0039, battle_id = 0x0039, map_id = 0x0039, fight_id = 0x00, room_id = 0x00, world_id = 0x01, name = 'The Dark Margin' },
  Event:new{ event_id = 0x003A, battle_id = 0x003A, map_id = 0x003A, fight_id = 0x00, room_id = 0x00, world_id = 0x01, name = 'FMV Ending & Credits' },
  Event:new{ event_id = 0x003C, battle_id = 0x003C, map_id = 0x003C, fight_id = 0x00, room_id = 0x00, world_id = 0x01, name = 'Gathering' },
  Event:new{ event_id = 0x003D, battle_id = 0x003D, map_id = 0x003D, fight_id = 0x00, room_id = 0x00, world_id = 0x01, name = 'Birth by Sleep' },
  Event:new{ event_id = 0x003E, battle_id = 0x003E, map_id = 0x003E, fight_id = 0x00, room_id = 0x00, world_id = 0x01, name = 'The Dark Margin (Theater Mode)' },
  Event:new{ event_id = 0x0041, battle_id = 0x0041, map_id = 0x0041, fight_id = 0x00, room_id = 0x00, world_id = 0x01, name = 'Gathering (Theater Mode)' },
  Event:new{ event_id = 0x0042, battle_id = 0x0042, map_id = 0x0042, fight_id = 0x00, room_id = 0x00, world_id = 0x01, name = 'Birth by Sleep (Theater Mode)' },
  Event:new{ event_id = 0x0043, battle_id = 0x0043, map_id = 0x0043, fight_id = 0x00, room_id = 0x00, world_id = 0x01, name = 'The Letter (Theater Mode - English)' },
  Event:new{ event_id = 0x0044, battle_id = 0x0044, map_id = 0x0044, fight_id = 0x00, room_id = 0x00, world_id = 0x01, name = 'The Letter (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0038, battle_id = 0x0038, map_id = 0x0038, fight_id = 0x00, room_id = 0x01, world_id = 0x01, name = 'Menu Trailer' },
}

local TWILIGHT_TOWN = readonlytable{
  Event:new{ event_id = 0x0033, battle_id = 0x0033, map_id = 0x0033, fight_id = 0x00, room_id = 0x00, world_id = 0x02, name = 'Her Name is Naminé' },

  Event:new{ event_id = 0x0034, battle_id = 0x0034, map_id = 0x0034, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'Dreams Connected' },
  Event:new{ event_id = 0x0035, battle_id = 0x0035, map_id = 0x0035, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'The Dream Is the Key' },
  Event:new{ event_id = 0x0036, battle_id = 0x0036, map_id = 0x0036, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'A Dream Full of Promises' },
  Event:new{ event_id = 0x0037, battle_id = 0x0037, map_id = 0x0037, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'A Dream of Good-byes' },
  Event:new{ event_id = 0x0038, battle_id = 0x0038, map_id = 0x0038, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'Waking from a Dream' },
  Event:new{ event_id = 0x0039, battle_id = 0x0039, map_id = 0x0039, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'Just Another Morning' },
  Event:new{ event_id = 0x003A, battle_id = 0x003A, map_id = 0x003A, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'Awakened by an Illusion' },
  Event:new{ event_id = 0x003B, battle_id = 0x003B, map_id = 0x003B, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'A Troubled Awakening' },
  Event:new{ event_id = 0x003C, battle_id = 0x003C, map_id = 0x003C, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'A Hazy Morning' },
  Event:new{ event_id = 0x003D, battle_id = 0x003D, map_id = 0x003D, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'Shadow of Another' },
  Event:new{ event_id = 0x00E5, battle_id = 0x00E5, map_id = 0x00E5, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'Dreams Connected (Theater Mode - English)' },
  Event:new{ event_id = 0x00E6, battle_id = 0x00E6, map_id = 0x00E6, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'Dreams Connected (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00E7, battle_id = 0x00E7, map_id = 0x00E7, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'Waking from a Dream (Theater Mode)' },
  Event:new{ event_id = 0x00F2, battle_id = 0x00F2, map_id = 0x00F2, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'The Dream Is the Key (Theater Mode - English)' },
  Event:new{ event_id = 0x00F3, battle_id = 0x00F3, map_id = 0x00F3, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'The Dream Is the Key (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00F4, battle_id = 0x00F4, map_id = 0x00F4, fight_id = 0x00, room_id = 0x01, world_id = 0x02, name = 'Just Another Morning (Theater Mode)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = 'A Message From Pence and Olette' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = 'Tutorial 5 - Saving' },
  Event:new{ event_id = 0x003F, battle_id = 0x003F, map_id = 0x003F, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = 'The Stolen Something' },
  Event:new{ event_id = 0x0040, battle_id = 0x0040, map_id = 0x0040, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = 'The Stolen Pictures' },
  Event:new{ event_id = 0x0041, battle_id = 0x0041, map_id = 0x0041, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = "Let's Go to the Beach!" },
  Event:new{ event_id = 0x0042, battle_id = 0x0042, map_id = 0x0042, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = "Hayner's Note" },
  Event:new{ event_id = 0x0043, battle_id = 0x0043, map_id = 0x0043, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = 'Sorry...' },
  Event:new{ event_id = 0x0044, battle_id = 0x0044, map_id = 0x0044, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = 'Independent Study' },
  Event:new{ event_id = 0x0045, battle_id = 0x0045, map_id = 0x0045, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = 'Two Days Till Summer Vacation Ends' },
  Event:new{ event_id = 0x0046, battle_id = 0x0046, map_id = 0x0046, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = "What's Happening?" },
  Event:new{ event_id = 0x0047, battle_id = 0x0047, map_id = 0x0047, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = 'An Unfamiliar Town' },
  Event:new{ event_id = 0x0048, battle_id = 0x0048, map_id = 0x0048, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = 'Into the Darkness' },
  Event:new{ event_id = 0x00A7, battle_id = 0x00A7, map_id = 0x00A7, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = 'Misunderstandings' },
  Event:new{ event_id = 0x00E8, battle_id = 0x00E8, map_id = 0x00E8, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = 'The Stolen Something (Theater Mode)' },
  Event:new{ event_id = 0x00EF, battle_id = 0x00EF, map_id = 0x00EF, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = 'The Stolen Pictures (Theater Mode)' },
  Event:new{ event_id = 0x00F6, battle_id = 0x00F6, map_id = 0x00F6, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = "Let's Go to the Beach! (Theater Mode)" },
  Event:new{ event_id = 0x0124, battle_id = 0x0124, map_id = 0x0124, fight_id = 0x00, room_id = 0x02, world_id = 0x02, name = "Twilight Town's Seven Wonders" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x03, world_id = 0x02, name = 'Getting the Twilight Town Map' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x03, world_id = 0x02, name = "Axel's Mission" },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x03, world_id = 0x02, name = "Axel's Sorrow" },
  Event:new{ event_id = 0x0005, battle_id = 0x0005, map_id = 0x0005, fight_id = 0x00, room_id = 0x03, world_id = 0x02, name = 'A Familiar Town' },
  Event:new{ event_id = 0x0049, battle_id = 0x0049, map_id = 0x0049, fight_id = 0x00, room_id = 0x03, world_id = 0x02, name = 'Nobody Wave Battle' },
  Event:new{ event_id = 0x004A, battle_id = 0x004A, map_id = 0x004A, fight_id = 0x00, room_id = 0x03, world_id = 0x02, name = 'A Blinding Sunset' },
  Event:new{ event_id = 0x004B, battle_id = 0x004B, map_id = 0x004B, fight_id = 0x00, room_id = 0x03, world_id = 0x02, name = 'The Mysterious Figure' },
  Event:new{ event_id = 0x00B4, battle_id = 0x00B4, map_id = 0x00B4, fight_id = 0x00, room_id = 0x03, world_id = 0x02, name = 'Seifer Battle (Day 4)' },
  Event:new{ event_id = 0x00CA, battle_id = 0x00CA, map_id = 0x00CA, fight_id = 0x00, room_id = 0x03, world_id = 0x02, name = 'After Winning to Seifer' },
  Event:new{ event_id = 0x00CB, battle_id = 0x00CB, map_id = 0x00CB, fight_id = 0x00, room_id = 0x03, world_id = 0x02, name = 'After Losing to Seifer' },
  Event:new{ event_id = 0x00F0, battle_id = 0x00F0, map_id = 0x00F0, fight_id = 0x00, room_id = 0x03, world_id = 0x02, name = 'A Blinding Sunset (Theater Mode)' },
  Event:new{ event_id = 0x00F5, battle_id = 0x00F5, map_id = 0x00F5, fight_id = 0x00, room_id = 0x03, world_id = 0x02, name = 'The Mysterious Figure (Theater Mode)' },
  Event:new{ event_id = 0x0138, battle_id = 0x0138, map_id = 0x0138, fight_id = 0x00, room_id = 0x03, world_id = 0x02, name = "DiZ's Guidance" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Leave It to Us!' },
  Event:new{ event_id = 0x0012, battle_id = 0x0012, map_id = 0x0012, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = "Sora and Seifer's Argument" },
  Event:new{ event_id = 0x004C, battle_id = 0x004C, map_id = 0x004C, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Choose Your Stuggle Weapon' },
  Event:new{ event_id = 0x004D, battle_id = 0x004D, map_id = 0x004D, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Tutorial 4 - Fighting' },
  Event:new{ event_id = 0x004E, battle_id = 0x004E, map_id = 0x004E, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Seifer I Battle' },
  Event:new{ event_id = 0x004F, battle_id = 0x004F, map_id = 0x004F, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Dusk Battle' },
  Event:new{ event_id = 0x0050, battle_id = 0x0050, map_id = 0x0050, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Nobody Waves Battle' },
  Event:new{ event_id = 0x0051, battle_id = 0x0051, map_id = 0x0051, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Enter Seifer' },
  Event:new{ event_id = 0x0052, battle_id = 0x0052, map_id = 0x0052, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Get Ready to Fight' },
  Event:new{ event_id = 0x0053, battle_id = 0x0053, map_id = 0x0053, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Back to Reality' },
  Event:new{ event_id = 0x00B5, battle_id = 0x00B5, map_id = 0x00B5, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Seifer II Battle' },
  Event:new{ event_id = 0x00B6, battle_id = 0x00B6, map_id = 0x00B6, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Hayner Battle (Struggle Competition)' },
  Event:new{ event_id = 0x00B7, battle_id = 0x00B7, map_id = 0x00B7, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Setzer Battle (Struggle Competition)' },
  Event:new{ event_id = 0x00B8, battle_id = 0x00B8, map_id = 0x00B8, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Seifer Battle (Struggle Competition)' },
  Event:new{ event_id = 0x00E9, battle_id = 0x00E9, map_id = 0x00E9, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Enter Seifer (Theater Mode)' },
  Event:new{ event_id = 0x00EA, battle_id = 0x00EA, map_id = 0x00EA, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'The Thief!? (Theater Mode)' },
  Event:new{ event_id = 0x0108, battle_id = 0x0108, map_id = 0x0108, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Her Voice, Her Guidance' },
  Event:new{ event_id = 0x0160, battle_id = 0x0160, map_id = 0x0160, fight_id = 0x00, room_id = 0x04, world_id = 0x02, name = 'Saix Makes an Appearance' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x05, world_id = 0x02, name = "Let's Struggle!" },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x05, world_id = 0x02, name = 'Round 1: Roxas vs. Hayner' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x05, world_id = 0x02, name = 'The Finals' },
  Event:new{ event_id = 0x0005, battle_id = 0x0005, map_id = 0x0005, fight_id = 0x00, room_id = 0x05, world_id = 0x02, name = 'The Invitation of the Champion' },
  Event:new{ event_id = 0x0054, battle_id = 0x0054, map_id = 0x0054, fight_id = 0x00, room_id = 0x05, world_id = 0x02, name = 'Hayner Struggle Battle' },
  Event:new{ event_id = 0x0055, battle_id = 0x0055, map_id = 0x0055, fight_id = 0x00, room_id = 0x05, world_id = 0x02, name = 'Vivi Struggle Battle' },
  Event:new{ event_id = 0x0056, battle_id = 0x0056, map_id = 0x0056, fight_id = 0x00, room_id = 0x05, world_id = 0x02, name = 'Triple Dusks Battle' },
  Event:new{ event_id = 0x0057, battle_id = 0x0057, map_id = 0x0057, fight_id = 0x00, room_id = 0x05, world_id = 0x02, name = 'Axel I Battle' },
  Event:new{ event_id = 0x0058, battle_id = 0x0058, map_id = 0x0058, fight_id = 0x00, room_id = 0x05, world_id = 0x02, name = 'Setzer Battle (Struggle)' },
  Event:new{ event_id = 0x0118, battle_id = 0x0118, map_id = 0x0118, fight_id = 0x00, room_id = 0x05, world_id = 0x02, name = 'Finish the Fight' },
  Event:new{ event_id = 0x011A, battle_id = 0x011A, map_id = 0x011A, fight_id = 0x00, room_id = 0x05, world_id = 0x02, name = 'The Approaching Enemy' },
  Event:new{ event_id = 0x011B, battle_id = 0x011B, map_id = 0x011B, fight_id = 0x00, room_id = 0x05, world_id = 0x02, name = 'Axel' },
  Event:new{ event_id = 0x011C, battle_id = 0x011C, map_id = 0x011C, fight_id = 0x00, room_id = 0x05, world_id = 0x02, name = "What's Going On?" },
  Event:new{ event_id = 0x011E, battle_id = 0x011E, map_id = 0x011E, fight_id = 0x00, room_id = 0x05, world_id = 0x02, name = "Roxas's Victory" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x06, world_id = 0x02, name = "It's a Promise" },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x06, world_id = 0x02, name = 'Encounter With the Girl' },
  Event:new{ event_id = 0x000C, battle_id = 0x000C, map_id = 0x000C, fight_id = 0x00, room_id = 0x06, world_id = 0x02, name = 'The Story of a Party-Time Job' },
  Event:new{ event_id = 0x0059, battle_id = 0x0059, map_id = 0x0059, fight_id = 0x00, room_id = 0x06, world_id = 0x02, name = 'Cargo Climb (Roxas) (Day 2)' },
  Event:new{ event_id = 0x005A, battle_id = 0x005A, map_id = 0x005A, fight_id = 0x00, room_id = 0x06, world_id = 0x02, name = 'Grandstander (Roxas) (Day 2)' },
  Event:new{ event_id = 0x005B, battle_id = 0x005B, map_id = 0x005B, fight_id = 0x00, room_id = 0x06, world_id = 0x02, name = 'Mail Delivery (Roxas)' },
  Event:new{ event_id = 0x00A8, battle_id = 0x00A8, map_id = 0x00A8, fight_id = 0x00, room_id = 0x06, world_id = 0x02, name = 'The Promise Made Yesterday' },
  Event:new{ event_id = 0x00BE, battle_id = 0x00BE, map_id = 0x00BE, fight_id = 0x00, room_id = 0x06, world_id = 0x02, name = 'Cargo Climb (Roxas) (Day 4)' },
  Event:new{ event_id = 0x00BF, battle_id = 0x00BF, map_id = 0x00BF, fight_id = 0x00, room_id = 0x06, world_id = 0x02, name = 'Grandstander (Roxas) (Day 4)' },
  Event:new{ event_id = 0x00C0, battle_id = 0x00C0, map_id = 0x00C0, fight_id = 0x00, room_id = 0x06, world_id = 0x02, name = 'Mail Delivery (Roxas) (Day 4)' },
  Event:new{ event_id = 0x00C1, battle_id = 0x00C1, map_id = 0x00C1, fight_id = 0x00, room_id = 0x06, world_id = 0x02, name = 'Cargo Climb (Sora)' },
  Event:new{ event_id = 0x00C2, battle_id = 0x00C2, map_id = 0x00C2, fight_id = 0x00, room_id = 0x06, world_id = 0x02, name = 'Grandstander (Sora)' },
  Event:new{ event_id = 0x00C3, battle_id = 0x00C3, map_id = 0x00C3, fight_id = 0x00, room_id = 0x06, world_id = 0x02, name = 'Mail Delivery (Sora)' },
  Event:new{ event_id = 0x00F7, battle_id = 0x00F7, map_id = 0x00F7, fight_id = 0x00, room_id = 0x06, world_id = 0x02, name = "It's a Promise (Theater Mode)" },
  Event:new{ event_id = 0x00F8, battle_id = 0x00F8, map_id = 0x00F8, fight_id = 0x00, room_id = 0x06, world_id = 0x02, name = 'Making Munny (Theater Mode)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x07, world_id = 0x02, name = 'The Road to the Mansion' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x07, world_id = 0x02, name = 'Talk to the Clerk' },
  Event:new{ event_id = 0x005F, battle_id = 0x005F, map_id = 0x005F, fight_id = 0x00, room_id = 0x07, world_id = 0x02, name = 'Tutorial 1 - Movement' },
  Event:new{ event_id = 0x0061, battle_id = 0x0061, map_id = 0x0061, fight_id = 0x00, room_id = 0x07, world_id = 0x02, name = 'Tutorial 2 - Reaction Commands' },
  Event:new{ event_id = 0x0063, battle_id = 0x0063, map_id = 0x0063, fight_id = 0x00, room_id = 0x07, world_id = 0x02, name = 'Tutorial 3 - Lock-on' },
  Event:new{ event_id = 0x0064, battle_id = 0x0064, map_id = 0x0064, fight_id = 0x00, room_id = 0x07, world_id = 0x02, name = 'Junk Sweep (Roxas)' },
  Event:new{ event_id = 0x0065, battle_id = 0x0065, map_id = 0x0065, fight_id = 0x00, room_id = 0x07, world_id = 0x02, name = 'Bumble-Buster (Roxas)' },
  Event:new{ event_id = 0x0066, battle_id = 0x0066, map_id = 0x0066, fight_id = 0x00, room_id = 0x07, world_id = 0x02, name = 'Poster Duty (Roxas)' },
  Event:new{ event_id = 0x006B, battle_id = 0x006B, map_id = 0x006B, fight_id = 0x00, room_id = 0x07, world_id = 0x02, name = "The Nobody's Direction" },
  Event:new{ event_id = 0x00BB, battle_id = 0x00BB, map_id = 0x00BB, fight_id = 0x00, room_id = 0x07, world_id = 0x02, name = 'SB Street Rave' },
  Event:new{ event_id = 0x00C7, battle_id = 0x00C7, map_id = 0x00C7, fight_id = 0x00, room_id = 0x07, world_id = 0x02, name = 'Junk Sweep (Sora)' },
  Event:new{ event_id = 0x00C8, battle_id = 0x00C8, map_id = 0x00C8, fight_id = 0x00, room_id = 0x07, world_id = 0x02, name = 'Bumble-Buster (Sora)' },
  Event:new{ event_id = 0x00C9, battle_id = 0x00C9, map_id = 0x00C9, fight_id = 0x00, room_id = 0x07, world_id = 0x02, name = 'Poster Duty (Sora)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'The Mysterious Figure...Again' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'The Usual Station, The Usual Friends' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'Struggle in Front of the Station' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'Why Kairi?' },
  Event:new{ event_id = 0x006C, battle_id = 0x006C, map_id = 0x006C, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'Infinite Nobodies Battle' },
  Event:new{ event_id = 0x006D, battle_id = 0x006D, map_id = 0x006D, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'Making Memories' },
  Event:new{ event_id = 0x006E, battle_id = 0x006E, map_id = 0x006E, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'Giving Hayner the Normal Amount of Munny' },
  Event:new{ event_id = 0x006F, battle_id = 0x006F, map_id = 0x006F, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'Giving Hayner the Maximum Amount of Munny' },
  Event:new{ event_id = 0x0070, battle_id = 0x0070, map_id = 0x0070, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'Can You Feel Sora?' },
  Event:new{ event_id = 0x0071, battle_id = 0x0071, map_id = 0x0071, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = "4 People's Treasure" },
  Event:new{ event_id = 0x0072, battle_id = 0x0072, map_id = 0x0072, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = "It Starts With an 'S'!" },
  Event:new{ event_id = 0x0073, battle_id = 0x0073, map_id = 0x0073, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'The 7th Rumor' },
  Event:new{ event_id = 0x0074, battle_id = 0x0074, map_id = 0x0074, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = "The Crystal Ball's Light" },
  Event:new{ event_id = 0x00D8, battle_id = 0x00D8, map_id = 0x00D8, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'Good-bye, Buddy' },
  Event:new{ event_id = 0x00F9, battle_id = 0x00F9, map_id = 0x00F9, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'Making Memories (Theater Mode)' },
  Event:new{ event_id = 0x00FA, battle_id = 0x00FA, map_id = 0x00FA, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'The Mysterious Figure...Again (Theater Mode)' },
  Event:new{ event_id = 0x00FC, battle_id = 0x00FC, map_id = 0x00FC, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'Can You Feel Sora? (Theater Mode)' },
  Event:new{ event_id = 0x014C, battle_id = 0x014C, map_id = 0x014C, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'The King Appears (Theater Mode - English)' },
  Event:new{ event_id = 0x0174, battle_id = 0x0174, map_id = 0x0174, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'Good-bye, Buddy (Theater Mode - English)' },
  Event:new{ event_id = 0x0176, battle_id = 0x0176, map_id = 0x0176, fight_id = 0x00, room_id = 0x08, world_id = 0x02, name = 'Good-bye, Buddy (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x09, world_id = 0x02, name = 'The Missing Munny' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x09, world_id = 0x02, name = 'Matching Pouches' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x09, world_id = 0x02, name = 'Tears' },
  Event:new{ event_id = 0x000C, battle_id = 0x000C, map_id = 0x000C, fight_id = 0x00, room_id = 0x09, world_id = 0x02, name = 'Setting Off For the Seven Wonders' },
  Event:new{ event_id = 0x0075, battle_id = 0x0075, map_id = 0x0075, fight_id = 0x00, room_id = 0x09, world_id = 0x02, name = 'Having Dismounted.' },
  Event:new{ event_id = 0x0076, battle_id = 0x0076, map_id = 0x0076, fight_id = 0x00, room_id = 0x09, world_id = 0x02, name = 'Time For Goodbye' },
  Event:new{ event_id = 0x0077, battle_id = 0x0077, map_id = 0x0077, fight_id = 0x00, room_id = 0x09, world_id = 0x02, name = 'The Photograph' },
  Event:new{ event_id = 0x00FB, battle_id = 0x00FB, map_id = 0x00FB, fight_id = 0x00, room_id = 0x09, world_id = 0x02, name = 'The Missing Munny (Theater Mode)' },
  Event:new{ event_id = 0x0164, battle_id = 0x0164, map_id = 0x0164, fight_id = 0x00, room_id = 0x09, world_id = 0x02, name = 'The Photograph (Theater Mode)' },

  Event:new{ event_id = 0x0078, battle_id = 0x0078, map_id = 0x0078, fight_id = 0x00, room_id = 0x0A, world_id = 0x02, name = 'Head to the Wall While Avoiding the Balls!' },
  Event:new{ event_id = 0x0079, battle_id = 0x0079, map_id = 0x0079, fight_id = 0x00, room_id = 0x0A, world_id = 0x02, name = 'Shadow Roxas Battle' },
  Event:new{ event_id = 0x007A, battle_id = 0x007A, map_id = 0x007A, fight_id = 0x00, room_id = 0x0A, world_id = 0x02, name = 'The 6th Rumor' },

  Event:new{ event_id = 0x007B, battle_id = 0x007B, map_id = 0x007B, fight_id = 0x00, room_id = 0x0B, world_id = 0x02, name = 'Ended Up At the Residental Area' },
  Event:new{ event_id = 0x007C, battle_id = 0x007C, map_id = 0x007C, fight_id = 0x00, room_id = 0x0B, world_id = 0x02, name = 'The Train Vanished' },
  Event:new{ event_id = 0x0128, battle_id = 0x0128, map_id = 0x0128, fight_id = 0x00, room_id = 0x0B, world_id = 0x02, name = 'The Truth of the Rumor' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0C, world_id = 0x02, name = 'The World Seen From the Hill' },
  Event:new{ event_id = 0x007D, battle_id = 0x007D, map_id = 0x007D, fight_id = 0x00, room_id = 0x0C, world_id = 0x02, name = 'Stop the Moving Bag!' },
  Event:new{ event_id = 0x00D7, battle_id = 0x00D7, map_id = 0x00D7, fight_id = 0x00, room_id = 0x0C, world_id = 0x02, name = 'The 4 at Sunset Hill' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0D, world_id = 0x02, name = 'The Girl Disappeared, An Enemy Appeared' },
  Event:new{ event_id = 0x007E, battle_id = 0x007E, map_id = 0x007E, fight_id = 0x00, room_id = 0x0D, world_id = 0x02, name = 'Into the Woods' },
  Event:new{ event_id = 0x00EB, battle_id = 0x00EB, map_id = 0x00EB, fight_id = 0x00, room_id = 0x0D, world_id = 0x02, name = 'Into the Woods (Theater Mode)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'Cornered' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'The Haunted House' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = "The Keyblade's Memory" },
  Event:new{ event_id = 0x0005, battle_id = 0x0005, map_id = 0x0005, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'Another Twilight Town' },
  Event:new{ event_id = 0x0008, battle_id = 0x0008, map_id = 0x0008, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'Reuniting with the King' },
  Event:new{ event_id = 0x007F, battle_id = 0x007F, map_id = 0x007F, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'First Encounter With a Dusk (With Struggle Weapon)' },
  Event:new{ event_id = 0x0080, battle_id = 0x0080, map_id = 0x0080, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'First Encounter With a Dusk (With Kingdom Key)' },
  Event:new{ event_id = 0x0082, battle_id = 0x0082, map_id = 0x0082, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'The Curtain Swaying in the Wind' },
  Event:new{ event_id = 0x00D2, battle_id = 0x00D2, map_id = 0x00D2, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'The Meaning of \"Roxas\"' },
  Event:new{ event_id = 0x00EC, battle_id = 0x00EC, map_id = 0x00EC, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'Cornered (Theater Mode)' },
  Event:new{ event_id = 0x00ED, battle_id = 0x00ED, map_id = 0x00ED, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'A Weapon Appears (Theater Mode)' },
  Event:new{ event_id = 0x00EE, battle_id = 0x00EE, map_id = 0x00EE, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'The Disappearing Key (Theater Mode)' },
  Event:new{ event_id = 0x0165, battle_id = 0x0165, map_id = 0x0165, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'Another Twilight Town (Theater Mode)' },
  Event:new{ event_id = 0x0166, battle_id = 0x0166, map_id = 0x0166, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'Reuniting with the King (Theater Mode)' },
  Event:new{ event_id = 0x0167, battle_id = 0x0167, map_id = 0x0167, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'Entrance into Another World (Theater Mode)' },
  Event:new{ event_id = 0x0173, battle_id = 0x0173, map_id = 0x0173, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'Roxas (Theater Mode - English)' },
  Event:new{ event_id = 0x0175, battle_id = 0x0175, map_id = 0x0175, fight_id = 0x00, room_id = 0x0E, world_id = 0x02, name = 'Roxas (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0F, world_id = 0x02, name = 'Entrance to the Parallel World' },

  Event:new{ event_id = 0x0083, battle_id = 0x0083, map_id = 0x0083, fight_id = 0x00, room_id = 0x10, world_id = 0x02, name = 'Time For the Finishing Touches' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x11, world_id = 0x02, name = 'The Hidden Room' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x12, world_id = 0x02, name = 'Many Sketches' },
  Event:new{ event_id = 0x0084, battle_id = 0x0084, map_id = 0x0084, fight_id = 0x00, room_id = 0x12, world_id = 0x02, name = "The Girl's Room" },
  Event:new{ event_id = 0x0085, battle_id = 0x0085, map_id = 0x0085, fight_id = 0x00, room_id = 0x12, world_id = 0x02, name = "Those Who Don't Exist, Nobodies" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x13, world_id = 0x02, name = 'Surrounded by Enemies' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x13, world_id = 0x02, name = 'The Entrance to Darkness' },
  Event:new{ event_id = 0x0086, battle_id = 0x0086, map_id = 0x0086, fight_id = 0x00, room_id = 0x13, world_id = 0x02, name = 'Nobody Wave Battle' },
  Event:new{ event_id = 0x0087, battle_id = 0x0087, map_id = 0x0087, fight_id = 0x00, room_id = 0x13, world_id = 0x02, name = 'The Victor' },
  Event:new{ event_id = 0x0088, battle_id = 0x0088, map_id = 0x0088, fight_id = 0x00, room_id = 0x13, world_id = 0x02, name = 'In the Next Life' },
  Event:new{ event_id = 0x0141, battle_id = 0x0141, map_id = 0x0141, fight_id = 0x00, room_id = 0x13, world_id = 0x02, name = "Axel's Wrath" },
  Event:new{ event_id = 0x016C, battle_id = 0x016C, map_id = 0x016C, fight_id = 0x00, room_id = 0x13, world_id = 0x02, name = 'The Entrance to Darkness' },

  Event:new{ event_id = 0x0089, battle_id = 0x0089, map_id = 0x0089, fight_id = 0x00, room_id = 0x14, world_id = 0x02, name = 'Axel II Battle (Normal)' },
  Event:new{ event_id = 0x00D3, battle_id = 0x00D3, map_id = 0x00D3, fight_id = 0x00, room_id = 0x14, world_id = 0x02, name = 'Data Axel Appears' },
  Event:new{ event_id = 0x00D4, battle_id = 0x00D4, map_id = 0x00D4, fight_id = 0x00, room_id = 0x14, world_id = 0x02, name = 'Data Axel Disappears' },
  Event:new{ event_id = 0x00D5, battle_id = 0x00D5, map_id = 0x00D5, fight_id = 0x00, room_id = 0x14, world_id = 0x02, name = 'Axel II Battle (Data)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'In Front of the Computer' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'The Password is...' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'It Worked!' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'The Other World' },
  Event:new{ event_id = 0x008A, battle_id = 0x008A, map_id = 0x008A, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'DiZ and the Mysterious Figure' },
  Event:new{ event_id = 0x008B, battle_id = 0x008B, map_id = 0x008B, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'Meanwhile, in the Darkness' },
  Event:new{ event_id = 0x008C, battle_id = 0x008C, map_id = 0x008C, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'Encounters within a Dream' },
  Event:new{ event_id = 0x008D, battle_id = 0x008D, map_id = 0x008D, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = "The Laboratory's Light" },
  Event:new{ event_id = 0x008E, battle_id = 0x008E, map_id = 0x008E, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'Uncontrollable Factors' },
  Event:new{ event_id = 0x008F, battle_id = 0x008F, map_id = 0x008F, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'The Name is Ansem' },
  Event:new{ event_id = 0x0090, battle_id = 0x0090, map_id = 0x0090, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'Resurrected Recollection' },
  Event:new{ event_id = 0x0091, battle_id = 0x0091, map_id = 0x0091, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = "Roxas's Twilight Town" },
  Event:new{ event_id = 0x00F1, battle_id = 0x00F1, map_id = 0x00F1, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'DiZ and the Mysterious Figure (Theater Mode)' },
  Event:new{ event_id = 0x00FD, battle_id = 0x00FD, map_id = 0x00FD, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'Meanwhile, in the Darkness (Theater Mode)' },
  Event:new{ event_id = 0x00FE, battle_id = 0x00FE, map_id = 0x00FE, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'Encounters within a Dream (Theater Mode - English)' },
  Event:new{ event_id = 0x00FF, battle_id = 0x00FF, map_id = 0x00FF, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'Encounters within a Dream (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x0168, battle_id = 0x0168, map_id = 0x0168, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'The Password Is... (Theater Mode)' },
  Event:new{ event_id = 0x0169, battle_id = 0x0169, map_id = 0x0169, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'It Worked! (Theater Mode)' },
  Event:new{ event_id = 0x016A, battle_id = 0x016A, map_id = 0x016A, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = 'The Other World (Theater Mode)' },
  Event:new{ event_id = 0x016B, battle_id = 0x016B, map_id = 0x016B, fight_id = 0x00, room_id = 0x15, world_id = 0x02, name = "Roxas's Twilight Town (Theater Mode)" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x16, world_id = 0x02, name = 'Sleeping Friends' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x17, world_id = 0x02, name = "The World's Servant, DiZ" },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x17, world_id = 0x02, name = '\"My Summer Vacation.\"' },
  Event:new{ event_id = 0x0092, battle_id = 0x0092, map_id = 0x0092, fight_id = 0x00, room_id = 0x17, world_id = 0x02, name = 'The Girl in the White Room' },
  Event:new{ event_id = 0x0093, battle_id = 0x0093, map_id = 0x0093, fight_id = 0x00, room_id = 0x17, world_id = 0x02, name = 'The Voice of Awakening' },

  Event:new{ event_id = 0x0094, battle_id = 0x0094, map_id = 0x0094, fight_id = 0x00, room_id = 0x18, world_id = 0x02, name = 'Everyone On the Train' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x19, world_id = 0x02, name = "I'm the One and Only Pete" },
  Event:new{ event_id = 0x0095, battle_id = 0x0095, map_id = 0x0095, fight_id = 0x00, room_id = 0x19, world_id = 0x02, name = 'Wave of Shadows Battle' },
  Event:new{ event_id = 0x0096, battle_id = 0x0096, map_id = 0x0096, fight_id = 0x00, room_id = 0x19, world_id = 0x02, name = 'The Mysterious Tower' },
  Event:new{ event_id = 0x0154, battle_id = 0x0154, map_id = 0x0154, fight_id = 0x00, room_id = 0x19, world_id = 0x02, name = "The Tower's Dweller is..." },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x1B, world_id = 0x02, name = 'Master Yen Sid' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x1B, world_id = 0x02, name = 'Past and Future' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x1B, world_id = 0x02, name = 'Departure' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x1C, world_id = 0x02, name = 'The 3 Fairies' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x1C, world_id = 0x02, name = 'A Gift From the Fairies' },
  Event:new{ event_id = 0x0097, battle_id = 0x0097, map_id = 0x0097, fight_id = 0x00, room_id = 0x1C, world_id = 0x02, name = "The Witch's Revival" },
  Event:new{ event_id = 0x00E4, battle_id = 0x00E4, map_id = 0x00E4, fight_id = 0x00, room_id = 0x1C, world_id = 0x02, name = 'Tutorial 6 - Puzzle Pieces' },

  Event:new{ event_id = 0x0098, battle_id = 0x0098, map_id = 0x0098, fight_id = 0x00, room_id = 0x1D, world_id = 0x02, name = 'Heartless Waves Battle' },

  Event:new{ event_id = 0x0099, battle_id = 0x0099, map_id = 0x0099, fight_id = 0x00, room_id = 0x1E, world_id = 0x02, name = 'Heartless Waves Battle' },
  Event:new{ event_id = 0x0155, battle_id = 0x0155, map_id = 0x0155, fight_id = 0x00, room_id = 0x1E, world_id = 0x02, name = 'The Worlds Remain Unchanged' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x20, world_id = 0x02, name = 'Select Your Level Up Setup' },
  Event:new{ event_id = 0x009A, battle_id = 0x009A, map_id = 0x009A, fight_id = 0x00, room_id = 0x20, world_id = 0x02, name = 'Triple Dusks Battle' },
  Event:new{ event_id = 0x009B, battle_id = 0x009B, map_id = 0x009B, fight_id = 0x00, room_id = 0x20, world_id = 0x02, name = 'The Keyblade' },
  Event:new{ event_id = 0x009C, battle_id = 0x009C, map_id = 0x009C, fight_id = 0x00, room_id = 0x20, world_id = 0x02, name = 'The Station of Awakening' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x22, world_id = 0x02, name = 'The Giant Foe' },
  Event:new{ event_id = 0x009D, battle_id = 0x009D, map_id = 0x009D, fight_id = 0x00, room_id = 0x22, world_id = 0x02, name = 'Twilight Thorn Battle' },
  Event:new{ event_id = 0x010C, battle_id = 0x010C, map_id = 0x010C, fight_id = 0x00, room_id = 0x22, world_id = 0x02, name = "Roxas's Victory" },

  Event:new{ event_id = 0x009E, battle_id = 0x009E, map_id = 0x009E, fight_id = 0x00, room_id = 0x23, world_id = 0x02, name = 'Far-Off World' },

  Event:new{ event_id = 0x009F, battle_id = 0x009F, map_id = 0x009F, fight_id = 0x00, room_id = 0x24, world_id = 0x02, name = 'Vivi Clones Battle' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x28, world_id = 0x02, name = 'Ambushed' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x28, world_id = 0x02, name = 'The Final Destination' },
  Event:new{ event_id = 0x00A0, battle_id = 0x00A0, map_id = 0x00A0, fight_id = 0x00, room_id = 0x28, world_id = 0x02, name = 'Nobody Wave (Without Axel as Partner)' },
  Event:new{ event_id = 0x00A1, battle_id = 0x00A1, map_id = 0x00A1, fight_id = 0x00, room_id = 0x28, world_id = 0x02, name = 'Nobody Waves Battle (With Axel as Partner)' },
  Event:new{ event_id = 0x00A2, battle_id = 0x00A2, map_id = 0x00A2, fight_id = 0x00, room_id = 0x28, world_id = 0x02, name = 'Through the Darkness' },
  Event:new{ event_id = 0x016D, battle_id = 0x016D, map_id = 0x016D, fight_id = 0x00, room_id = 0x28, world_id = 0x02, name = 'Ambushed (Theater Mode)' },
  Event:new{ event_id = 0x016E, battle_id = 0x016E, map_id = 0x016E, fight_id = 0x00, room_id = 0x28, world_id = 0x02, name = "Axel's Atonement (Theater Mode)" },
  Event:new{ event_id = 0x016F, battle_id = 0x016F, map_id = 0x016F, fight_id = 0x00, room_id = 0x28, world_id = 0x02, name = 'His Last Words (Theater Mode)' },

  Event:new{ event_id = 0x00BA, battle_id = 0x00BA, map_id = 0x00BA, fight_id = 0x00, room_id = 0x29, world_id = 0x02, name = 'Nobody Waves Battle (With Mickey)' },
}

local DESTINY_ISLANDS = readonlytable{
  Event:new{ event_id = 0x0033, battle_id = 0x0033, map_id = 0x0033, fight_id = 0x00, room_id = 0x01, world_id = 0x03, name = 'Kairi and Selphie' },
  Event:new{ event_id = 0x0034, battle_id = 0x0034, map_id = 0x0034, fight_id = 0x00, room_id = 0x01, world_id = 0x03, name = 'Kairi Running' },

  Event:new{ event_id = 0x0035, battle_id = 0x0035, map_id = 0x0035, fight_id = 0x00, room_id = 0x02, world_id = 0x03, name = 'The Letter to the Boy' },
  Event:new{ event_id = 0x0036, battle_id = 0x0036, map_id = 0x0036, fight_id = 0x00, room_id = 0x02, world_id = 0x03, name = 'Axel Approaches Kairi' },
}

local HOLLOW_BASTION = readonlytable{
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x00, world_id = 0x04, name = 'Pete Enters the Castle' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x00, world_id = 0x04, name = "Maleficent's Return" },

  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0014, battle_id = 0x0000, map_id = 0x0001, fight_id = 0x00, room_id = 0x01, world_id = 0x04, name = 'The Battle' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0015, battle_id = 0x0000, map_id = 0x0001, fight_id = 0x00, room_id = 0x01, world_id = 0x04, name = 'A Message From Sephiroth' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0016, battle_id = 0x0000, map_id = 0x0001, fight_id = 0x00, room_id = 0x01, world_id = 0x04, name = 'The One-Winged Angel' },
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x01, world_id = 0x04, name = "Xemnas's Agenda" },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x01, world_id = 0x04, name = 'Restoring the Town' },
  Event:new{ event_id = 0x004B, battle_id = 0x004B, map_id = 0x004B, fight_id = 0x00, room_id = 0x01, world_id = 0x04, name = 'Sephiroth Battle' },
  Event:new{ event_id = 0x005C, battle_id = 0x005C, map_id = 0x005C, fight_id = 0x00, room_id = 0x01, world_id = 0x04, name = 'A Box of Memories' },
  Event:new{ event_id = 0x0105, battle_id = 0x0105, map_id = 0x0105, fight_id = 0x00, room_id = 0x01, world_id = 0x04, name = 'The One-Winged Angel (Theater Mode)' },
  Event:new{ event_id = 0x0106, battle_id = 0x0106, map_id = 0x0106, fight_id = 0x00, room_id = 0x01, world_id = 0x04, name = 'A Message From Sephiroth (Theater Mode)' },
  Event:new{ event_id = 0x0107, battle_id = 0x0107, map_id = 0x0107, fight_id = 0x00, room_id = 0x01, world_id = 0x04, name = "Cloud's Decision (Theater Mode)" },
  Event:new{ event_id = 0x0108, battle_id = 0x0108, map_id = 0x0108, fight_id = 0x00, room_id = 0x01, world_id = 0x04, name = 'The Battle (Theater Mode)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x02, world_id = 0x04, name = 'The Leader of Organization XIII' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  -- The following comment was on the wiki: (Must Complete 12 Mushroom Missions to Make Mushroom XIII Appear!)
  Event:new{ event_id = 0x0000, battle_id = 0x0000, map_id = 0x0002, fight_id = 0x00, room_id = 0x02, world_id = 0x04, name = 'The Gathering of Mushrooms' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x02, world_id = 0x04, name = "Ansem's Protégé" },
  Event:new{ event_id = 0x004E, battle_id = 0x004E, map_id = 0x004E, fight_id = 0x00, room_id = 0x02, world_id = 0x04, name = 'The Showdown at Hollow Bastion' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x03, world_id = 0x04, name = "Goofy's Awake!" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x04, world_id = 0x04, name = 'Demyx' },
  Event:new{ event_id = 0x0037, battle_id = 0x0037, map_id = 0x0037, fight_id = 0x00, room_id = 0x04, world_id = 0x04, name = 'Demyx Battle (Normal)' },
  Event:new{ event_id = 0x0072, battle_id = 0x0072, map_id = 0x0072, fight_id = 0x00, room_id = 0x04, world_id = 0x04, name = 'Demyx Battle (Data)' },
  Event:new{ event_id = 0x008C, battle_id = 0x008C, map_id = 0x008C, fight_id = 0x00, room_id = 0x04, world_id = 0x04, name = 'Data Demyx Appears' },
  Event:new{ event_id = 0x008D, battle_id = 0x008D, map_id = 0x008D, fight_id = 0x00, room_id = 0x04, world_id = 0x04, name = 'Data Demyx Disappears' },
  Event:new{ event_id = 0x00D0, battle_id = 0x00D0, map_id = 0x00D0, fight_id = 0x00, room_id = 0x04, world_id = 0x04, name = 'Watch Out!' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = "Ansem's Study" },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = 'Leon Reveals a Secret Path' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = 'Transfer Device Activated' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = 'Finding the Password!' },
  Event:new{ event_id = 0x0005, battle_id = 0x0005, map_id = 0x0005, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = "The Puzzle's Mystery" },
  Event:new{ event_id = 0x0006, battle_id = 0x0006, map_id = 0x0006, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = 'The True Meaning of the Scribbles' },
  Event:new{ event_id = 0x0008, battle_id = 0x0008, map_id = 0x0008, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = "Response From the Program's World" },
  Event:new{ event_id = 0x0009, battle_id = 0x0009, map_id = 0x0009, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = 'The Sealed Data' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x000E, battle_id = 0x0000, map_id = 0x000A, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = 'Before Space Paranoids (2nd Visit)' },
  Event:new{ event_id = 0x000C, battle_id = 0x000C, map_id = 0x000C, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = 'Aerith Watches Over the Study' },
  Event:new{ event_id = 0x000D, battle_id = 0x000D, map_id = 0x000D, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = "We're Waiting, Tron" },
  Event:new{ event_id = 0x0011, battle_id = 0x0011, map_id = 0x0011, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = 'The Researcher of Darkness, Ansem' },
  Event:new{ event_id = 0x0012, battle_id = 0x0012, map_id = 0x0012, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = "Ansem's True Form" },
  Event:new{ event_id = 0x0045, battle_id = 0x0045, map_id = 0x0045, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = 'To the World of Programs Once More' },
  Event:new{ event_id = 0x0047, battle_id = 0x0047, map_id = 0x0047, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = 'Cyberspace' },
  Event:new{ event_id = 0x005F, battle_id = 0x005F, map_id = 0x005F, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = 'Data Transmission' },
  Event:new{ event_id = 0x0060, battle_id = 0x0060, map_id = 0x0060, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = "Hollow Bastion's Restoration" },
  Event:new{ event_id = 0x0066, battle_id = 0x0066, map_id = 0x0066, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = "Meanwhile, in Ansem's Lab" },
  Event:new{ event_id = 0x0067, battle_id = 0x0067, map_id = 0x0067, fight_id = 0x00, room_id = 0x05, world_id = 0x04, name = 'Insurgence From the MCP' },

  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0012, battle_id = 0x0000, map_id = 0x0000, fight_id = 0x00, room_id = 0x06, world_id = 0x04, name = "Y-R-P's Treasure" },
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x06, world_id = 0x04, name = 'Looking For Leon' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x06, world_id = 0x04, name = 'Sephiroth Descends' },
  Event:new{ event_id = 0x005D, battle_id = 0x005D, map_id = 0x005D, fight_id = 0x00, room_id = 0x06, world_id = 0x04, name = 'Run Leon' },
  Event:new{ event_id = 0x005E, battle_id = 0x005E, map_id = 0x005E, fight_id = 0x00, room_id = 0x06, world_id = 0x04, name = 'Radiant Garden' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x08, world_id = 0x04, name = 'Look at That' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x08, world_id = 0x04, name = 'The 3 Mysterious Girls' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x08, world_id = 0x04, name = 'Their Goal is...' },
  Event:new{ event_id = 0x0034, battle_id = 0x0034, map_id = 0x0034, fight_id = 0x00, room_id = 0x08, world_id = 0x04, name = 'Sora & Leon VS Nobody Waves' },
  Event:new{ event_id = 0x00A6, battle_id = 0x00A6, map_id = 0x00A6, fight_id = 0x00, room_id = 0x08, world_id = 0x04, name = 'Organization XIII Gathering' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x09, world_id = 0x04, name = "The Town's Defense Mechanism" },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x09, world_id = 0x04, name = "Everyone's Invited" },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x09, world_id = 0x04, name = 'The Stolen Picture Book' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x09, world_id = 0x04, name = 'The Boundary Disappeared' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x09, world_id = 0x04, name = 'Malfunctioning Defense System' },
  Event:new{ event_id = 0x000C, battle_id = 0x000C, map_id = 0x000C, fight_id = 0x00, room_id = 0x09, world_id = 0x04, name = 'Dispersed, Dancing Light' },
  Event:new{ event_id = 0x0033, battle_id = 0x0033, map_id = 0x0033, fight_id = 0x00, room_id = 0x09, world_id = 0x04, name = 'Nobody Waves Battle' },
  Event:new{ event_id = 0x003A, battle_id = 0x003A, map_id = 0x003A, fight_id = 0x00, room_id = 0x09, world_id = 0x04, name = 'Heartless Waves Battle 1' },
  Event:new{ event_id = 0x0048, battle_id = 0x0048, map_id = 0x0048, fight_id = 0x00, room_id = 0x09, world_id = 0x04, name = 'Heartless Waves Battle 2' },
  Event:new{ event_id = 0x0064, battle_id = 0x0064, map_id = 0x0064, fight_id = 0x00, room_id = 0x09, world_id = 0x04, name = 'SB Freestyle' },
  Event:new{ event_id = 0x00A1, battle_id = 0x00A1, map_id = 0x00A1, fight_id = 0x00, room_id = 0x09, world_id = 0x04, name = 'The Great Ninja Yuffie' },
  Event:new{ event_id = 0x00AE, battle_id = 0x00AE, map_id = 0x00AE, fight_id = 0x00, room_id = 0x09, world_id = 0x04, name = "Pooh's Fine, Right?" },

  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0008, battle_id = 0x0000, map_id = 0x0000, fight_id = 0x00, room_id = 0x0A, world_id = 0x04, name = "Cloud's Response" },
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0A, world_id = 0x04, name = 'Arrival at Hollow Bastion' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x0A, world_id = 0x04, name = 'Bad Sign' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0A, world_id = 0x04, name = 'The Heartless Again?' },
  Event:new{ event_id = 0x0012, battle_id = 0x0012, map_id = 0x0012, fight_id = 0x00, room_id = 0x0A, world_id = 0x04, name = "Cloud's Determination" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0B, world_id = 0x04, name = 'To the Underground Passage' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x0B, world_id = 0x04, name = 'Maleficent Joins to the Brawl' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x0B, world_id = 0x04, name = 'Y-R-P!' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0C, world_id = 0x04, name = 'Heartless Manufactory' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0D, world_id = 0x04, name = 'The Hollow Bastion Restoration Committee' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x0D, world_id = 0x04, name = 'A Report From Cid' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x0D, world_id = 0x04, name = "Merlin's Insight" },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x0D, world_id = 0x04, name = "Pooh's Picture Book" },
  Event:new{ event_id = 0x0005, battle_id = 0x0005, map_id = 0x0005, fight_id = 0x00, room_id = 0x0D, world_id = 0x04, name = 'To the World Inside the Book' },
  Event:new{ event_id = 0x0006, battle_id = 0x0006, map_id = 0x0006, fight_id = 0x00, room_id = 0x0D, world_id = 0x04, name = 'Heartless Attack' },
  Event:new{ event_id = 0x0008, battle_id = 0x0008, map_id = 0x0008, fight_id = 0x00, room_id = 0x0D, world_id = 0x04, name = 'The Missing Memory' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0D, world_id = 0x04, name = "Yuffie's Explanation" },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x0D, world_id = 0x04, name = 'Peace in the Town' },
  Event:new{ event_id = 0x000C, battle_id = 0x000C, map_id = 0x000C, fight_id = 0x00, room_id = 0x0D, world_id = 0x04, name = 'Program Complete' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0F, world_id = 0x04, name = "The King's Memory" },

  Event:new{ event_id = 0x003E, battle_id = 0x003E, map_id = 0x003E, fight_id = 0x00, room_id = 0x10, world_id = 0x04, name = 'Sora & Yuffie VS Heartless Waves' },
  Event:new{ event_id = 0x003F, battle_id = 0x003F, map_id = 0x003F, fight_id = 0x00, room_id = 0x10, world_id = 0x04, name = 'Sora & Leon VS Heartless Waves' },
  Event:new{ event_id = 0x0040, battle_id = 0x0040, map_id = 0x0040, fight_id = 0x00, room_id = 0x10, world_id = 0x04, name = 'Sora & Tifa VS Heartless Waves' },
  Event:new{ event_id = 0x0041, battle_id = 0x0041, map_id = 0x0041, fight_id = 0x00, room_id = 0x10, world_id = 0x04, name = 'Sora & Cloud VS Heartless Waves' },
  Event:new{ event_id = 0x004F, battle_id = 0x004F, map_id = 0x004F, fight_id = 0x00, room_id = 0x10, world_id = 0x04, name = "Yuffie and Aerith's Valiant Stand" },
  Event:new{ event_id = 0x0050, battle_id = 0x0050, map_id = 0x0050, fight_id = 0x00, room_id = 0x10, world_id = 0x04, name = 'Stitch Stands Strong' },
  Event:new{ event_id = 0x0051, battle_id = 0x0051, map_id = 0x0051, fight_id = 0x00, room_id = 0x10, world_id = 0x04, name = "Y-R-P's Great Performance" },
  Event:new{ event_id = 0x0052, battle_id = 0x0052, map_id = 0x0052, fight_id = 0x00, room_id = 0x10, world_id = 0x04, name = 'Leon and Cloud' },
  Event:new{ event_id = 0x0053, battle_id = 0x0053, map_id = 0x0053, fight_id = 0x00, room_id = 0x10, world_id = 0x04, name = 'Cloud, Dark Fate' },

  Event:new{ event_id = 0x0042, battle_id = 0x0042, map_id = 0x0042, fight_id = 0x00, room_id = 0x11, world_id = 0x04, name = '1,000 Heartless Battle' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x12, world_id = 0x04, name = 'Aerith and Leon' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x12, world_id = 0x04, name = 'Pillars of Light' },
  Event:new{ event_id = 0x0049, battle_id = 0x0049, map_id = 0x0049, fight_id = 0x00, room_id = 0x12, world_id = 0x04, name = 'Nobody Waves Battle' },

  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x13, world_id = 0x04, name = 'Before the Broken Path' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x13, world_id = 0x04, name = 'Sorry, Your Highness!' },
  Event:new{ event_id = 0x0005, battle_id = 0x0005, map_id = 0x0005, fight_id = 0x00, room_id = 0x13, world_id = 0x04, name = 'The Opened Path' },
  Event:new{ event_id = 0x003D, battle_id = 0x003D, map_id = 0x003D, fight_id = 0x00, room_id = 0x13, world_id = 0x04, name = 'Heartless Invasion' },
  Event:new{ event_id = 0x0054, battle_id = 0x0054, map_id = 0x0054, fight_id = 0x00, room_id = 0x13, world_id = 0x04, name = '\"Everyone, Hang in There!\"' },
  Event:new{ event_id = 0x00C4, battle_id = 0x00C4, map_id = 0x00C4, fight_id = 0x00, room_id = 0x13, world_id = 0x04, name = 'Hurry to the Castle Gate!' },

  Event:new{ event_id = 0x0056, battle_id = 0x0056, map_id = 0x0056, fight_id = 0x00, room_id = 0x14, world_id = 0x04, name = 'Heartless and Nobody Waves Battle' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x15, world_id = 0x04, name = 'Welcome to the Cavern of Remembrance' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x16, world_id = 0x04, name = 'Activate the Engines' },

  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0002, fight_id = 0x00, room_id = 0x18, world_id = 0x04, name = 'Heartless Waves Battle 1' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0003, fight_id = 0x00, room_id = 0x18, world_id = 0x04, name = 'Heartless Waves Battle 2' },

  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0000, fight_id = 0x00, room_id = 0x19, world_id = 0x04, name = 'Nobody Waves Battle 1' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0000, fight_id = 0x00, room_id = 0x19, world_id = 0x04, name = 'Nobody Waves Battle 2' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0000, fight_id = 0x00, room_id = 0x19, world_id = 0x04, name = 'Nobody Waves Battle 3' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x1A, world_id = 0x04, name = 'The 13 Strange Portals' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x1A, world_id = 0x04, name = 'The Garden of Assemblage' },

  Event:new{ event_id = 0x0109, battle_id = 0x0109, map_id = 0x0109, fight_id = 0x00, room_id = 0x1B, world_id = 0x04, name = 'The Hidden Room' },

  Event:new{ event_id = 0x0073, battle_id = 0x0073, map_id = 0x0073, fight_id = 0x00, room_id = 0x20, world_id = 0x04, name = 'Vexen Battle (Absent Silhouette)' },
  Event:new{ event_id = 0x0078, battle_id = 0x0078, map_id = 0x0078, fight_id = 0x00, room_id = 0x20, world_id = 0x04, name = 'The Chilly Academic, Vexen' },
  Event:new{ event_id = 0x0079, battle_id = 0x0079, map_id = 0x0079, fight_id = 0x00, room_id = 0x20, world_id = 0x04, name = 'The Absent Silhouette of Vexen Disappears' },
  Event:new{ event_id = 0x0082, battle_id = 0x0082, map_id = 0x0082, fight_id = 0x00, room_id = 0x20, world_id = 0x04, name = 'Data Vexen Appears' },
  Event:new{ event_id = 0x0083, battle_id = 0x0083, map_id = 0x0083, fight_id = 0x00, room_id = 0x20, world_id = 0x04, name = 'Data Vexen Disappears' },
  Event:new{ event_id = 0x0092, battle_id = 0x0092, map_id = 0x0092, fight_id = 0x00, room_id = 0x20, world_id = 0x04, name = 'Vexen Battle (Data)' },

  Event:new{ event_id = 0x007A, battle_id = 0x007A, map_id = 0x007A, fight_id = 0x00, room_id = 0x21, world_id = 0x04, name = 'The Silent Hero, Lexaeus' },
  Event:new{ event_id = 0x007B, battle_id = 0x007B, map_id = 0x007B, fight_id = 0x00, room_id = 0x21, world_id = 0x04, name = 'The Absent Silhouette of Lexaeus Disappears' },
  Event:new{ event_id = 0x0080, battle_id = 0x0080, map_id = 0x0080, fight_id = 0x00, room_id = 0x21, world_id = 0x04, name = 'The Savage Nymph, Larxene' },
  Event:new{ event_id = 0x0081, battle_id = 0x0081, map_id = 0x0081, fight_id = 0x00, room_id = 0x21, world_id = 0x04, name = 'The Absent Silhouette of Larxene Disappears' },
  Event:new{ event_id = 0x0084, battle_id = 0x0084, map_id = 0x0084, fight_id = 0x00, room_id = 0x21, world_id = 0x04, name = 'Data Lexaeus Appears' },
  Event:new{ event_id = 0x0085, battle_id = 0x0085, map_id = 0x0085, fight_id = 0x00, room_id = 0x21, world_id = 0x04, name = 'Data Lexaeus Disappears' },
  Event:new{ event_id = 0x008A, battle_id = 0x008A, map_id = 0x008A, fight_id = 0x00, room_id = 0x21, world_id = 0x04, name = 'Data Larxene Appears' },
  Event:new{ event_id = 0x008B, battle_id = 0x008B, map_id = 0x008B, fight_id = 0x00, room_id = 0x21, world_id = 0x04, name = 'Data Larxene Disappears' },
  Event:new{ event_id = 0x008E, battle_id = 0x008E, map_id = 0x008E, fight_id = 0x00, room_id = 0x21, world_id = 0x04, name = 'Lexaeus Battle (Absent Silhouette)' },
  Event:new{ event_id = 0x008F, battle_id = 0x008F, map_id = 0x008F, fight_id = 0x00, room_id = 0x21, world_id = 0x04, name = 'Larxene Battle (Absent Silhouette)' },
  Event:new{ event_id = 0x0093, battle_id = 0x0093, map_id = 0x0093, fight_id = 0x00, room_id = 0x21, world_id = 0x04, name = 'Lexaeus Battle (Data)' },
  Event:new{ event_id = 0x0094, battle_id = 0x0094, map_id = 0x0094, fight_id = 0x00, room_id = 0x21, world_id = 0x04, name = 'Larxene Battle (Data)' },

  Event:new{ event_id = 0x007C, battle_id = 0x007C, map_id = 0x007C, fight_id = 0x00, room_id = 0x22, world_id = 0x04, name = 'The Cloaked Schemer, Zexion' },
  Event:new{ event_id = 0x007D, battle_id = 0x007D, map_id = 0x007D, fight_id = 0x00, room_id = 0x22, world_id = 0x04, name = 'The Absent Silhouette of Zexion Disappears' },
  Event:new{ event_id = 0x0086, battle_id = 0x0086, map_id = 0x0086, fight_id = 0x00, room_id = 0x22, world_id = 0x04, name = 'Data Zexion Appears' },
  Event:new{ event_id = 0x0087, battle_id = 0x0087, map_id = 0x0087, fight_id = 0x00, room_id = 0x22, world_id = 0x04, name = 'Data Zexion Disappears' },
  Event:new{ event_id = 0x0097, battle_id = 0x0097, map_id = 0x0097, fight_id = 0x00, room_id = 0x22, world_id = 0x04, name = 'Zexion Battle (Absent Silhouette)' },
  Event:new{ event_id = 0x0098, battle_id = 0x0098, map_id = 0x0098, fight_id = 0x00, room_id = 0x22, world_id = 0x04, name = 'Zexion Battle (Data)' },

  Event:new{ event_id = 0x007E, battle_id = 0x007E, map_id = 0x007E, fight_id = 0x00, room_id = 0x26, world_id = 0x04, name = 'The Graceful Assassin, Marluxia' },
  Event:new{ event_id = 0x007F, battle_id = 0x007F, map_id = 0x007F, fight_id = 0x00, room_id = 0x26, world_id = 0x04, name = 'The Absent Silhouette of Marluxia Disappears' },
  Event:new{ event_id = 0x0088, battle_id = 0x0088, map_id = 0x0088, fight_id = 0x00, room_id = 0x26, world_id = 0x04, name = 'Data Marluxia Appears' },
  Event:new{ event_id = 0x0089, battle_id = 0x0089, map_id = 0x0089, fight_id = 0x00, room_id = 0x26, world_id = 0x04, name = 'Data Marluxia Disappears' },
  Event:new{ event_id = 0x0091, battle_id = 0x0091, map_id = 0x0091, fight_id = 0x00, room_id = 0x26, world_id = 0x04, name = 'Marluxia Battle (Absent Silhouette)' },
  Event:new{ event_id = 0x0096, battle_id = 0x0096, map_id = 0x0096, fight_id = 0x00, room_id = 0x26, world_id = 0x04, name = 'Marluxia Battle (Data)' },
}

local BEASTS_CASTLE = readonlytable{
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x00, world_id = 0x05, name = 'The Voice That Echoes' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x00, world_id = 0x05, name = 'Find Belle' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x00, world_id = 0x05, name = 'Damsel in Distress' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x00, world_id = 0x05, name = 'Beast is Ready For the Ball' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x00, world_id = 0x05, name = 'A Special Day' },
  Event:new{ event_id = 0x000C, battle_id = 0x000C, map_id = 0x000C, fight_id = 0x00, room_id = 0x00, world_id = 0x05, name = "Xaldin's Intent" },
  Event:new{ event_id = 0x004B, battle_id = 0x004B, map_id = 0x004B, fight_id = 0x00, room_id = 0x00, world_id = 0x05, name = 'Nobody Waves Battle' },
  Event:new{ event_id = 0x007C, battle_id = 0x007C, map_id = 0x007C, fight_id = 0x00, room_id = 0x00, world_id = 0x05, name = 'Heading Outside' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x01, world_id = 0x05, name = 'The Parlor Ambush' },
  Event:new{ event_id = 0x0044, battle_id = 0x0044, map_id = 0x0044, fight_id = 0x00, room_id = 0x01, world_id = 0x05, name = 'Infinite Shadows Battle' },
  Event:new{ event_id = 0x0066, battle_id = 0x0066, map_id = 0x0066, fight_id = 0x00, room_id = 0x01, world_id = 0x05, name = "Something's Wrong" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x02, world_id = 0x05, name = 'Talk to Wardrobe (Before Shadow Stalker)' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x02, world_id = 0x05, name = 'A Familiar Voice' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x02, world_id = 0x05, name = 'Dressing Up' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x02, world_id = 0x05, name = 'Belle, Deep Within Her Sorrow' },
  Event:new{ event_id = 0x0068, battle_id = 0x0068, map_id = 0x0068, fight_id = 0x00, room_id = 0x02, world_id = 0x05, name = "Belle's Worries" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x03, world_id = 0x05, name = "Organization XIII's Play" },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x03, world_id = 0x05, name = 'The Missing Rose' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x03, world_id = 0x05, name = "Don't Give Up" },
  Event:new{ event_id = 0x0045, battle_id = 0x0045, map_id = 0x0045, fight_id = 0x00, room_id = 0x03, world_id = 0x05, name = 'Beast Battle' },
  Event:new{ event_id = 0x006E, battle_id = 0x006E, map_id = 0x006E, fight_id = 0x00, room_id = 0x03, world_id = 0x05, name = 'Beast Comes Too' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x04, world_id = 0x05, name = 'Showdown in the Ballroom' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x04, world_id = 0x05, name = 'Uninvited Guests' },
  Event:new{ event_id = 0x004A, battle_id = 0x004A, map_id = 0x004A, fight_id = 0x00, room_id = 0x04, world_id = 0x05, name = 'Nobody Wave Battle' },
  Event:new{ event_id = 0x0077, battle_id = 0x0077, map_id = 0x0077, fight_id = 0x00, room_id = 0x04, world_id = 0x05, name = 'What I Hold Dear' },

  Event:new{ event_id = 0x004E, battle_id = 0x004E, map_id = 0x004E, fight_id = 0x00, room_id = 0x05, world_id = 0x05, name = 'Shadow Stalker Battle' },
  Event:new{ event_id = 0x004F, battle_id = 0x004F, map_id = 0x004F, fight_id = 0x00, room_id = 0x05, world_id = 0x05, name = 'Dark Thorn Battle' },
  Event:new{ event_id = 0x0071, battle_id = 0x0071, map_id = 0x0071, fight_id = 0x00, room_id = 0x05, world_id = 0x05, name = 'Dark Thorn' },
  Event:new{ event_id = 0x0072, battle_id = 0x0072, map_id = 0x0072, fight_id = 0x00, room_id = 0x05, world_id = 0x05, name = "The Heartless's Demise" },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x06, world_id = 0x05, name = 'Belle Is Kidnapped' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x06, world_id = 0x05, name = 'Stay With Me' },

  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x08, world_id = 0x05, name = 'Find a Way Into the Undercroft' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x08, world_id = 0x05, name = 'The Talking Wardrobe' },
  Event:new{ event_id = 0x005F, battle_id = 0x005F, map_id = 0x005F, fight_id = 0x00, room_id = 0x08, world_id = 0x05, name = 'Move the Wardrobe Out of the Way' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x09, world_id = 0x05, name = 'The Secret of the Rose' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0A, world_id = 0x05, name = "The Castle's Residents" },
  Event:new{ event_id = 0x006C, battle_id = 0x006C, map_id = 0x006C, fight_id = 0x00, room_id = 0x0A, world_id = 0x05, name = 'The Hidden Truth' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0B, world_id = 0x05, name = 'Guardians of the Gate' },
  Event:new{ event_id = 0x0048, battle_id = 0x0048, map_id = 0x0048, fight_id = 0x00, room_id = 0x0B, world_id = 0x05, name = 'Thresholder Battle' },
  Event:new{ event_id = 0x0081, battle_id = 0x0081, map_id = 0x0081, fight_id = 0x00, room_id = 0x0B, world_id = 0x05, name = 'In the Undercroft' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0C, world_id = 0x05, name = 'The Dark Lanterns' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0002, battle_id = 0x0016, map_id = 0x0002, fight_id = 0x00, room_id = 0x0C, world_id = 0x05, name = 'Light the Lanterns' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0D, world_id = 0x05, name = 'Belle or the Rose?' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0E, world_id = 0x05, name = 'Things Are Just Beginning' },

  Event:new{ event_id = 0x0052, battle_id = 0x0052, map_id = 0x0052, fight_id = 0x00, room_id = 0x0F, world_id = 0x05, name = 'Xaldin Battle (Normal)' },
  Event:new{ event_id = 0x0061, battle_id = 0x0061, map_id = 0x0061, fight_id = 0x00, room_id = 0x0F, world_id = 0x05, name = 'Xaldin Battle (Data)' },
  Event:new{ event_id = 0x0062, battle_id = 0x0062, map_id = 0x0062, fight_id = 0x00, room_id = 0x0F, world_id = 0x05, name = 'Data Xaldin Appears' },
  Event:new{ event_id = 0x0063, battle_id = 0x0063, map_id = 0x0063, fight_id = 0x00, room_id = 0x0F, world_id = 0x05, name = 'Data Xaldin Disappears' },
  Event:new{ event_id = 0x007F, battle_id = 0x007F, map_id = 0x007F, fight_id = 0x00, room_id = 0x0F, world_id = 0x05, name = "Xaldin's Demise" },
}

local OLYMPUS_COLISEUM = readonlytable{
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0016, battle_id = 0x0002, map_id = 0x0000, fight_id = 0x00, room_id = 0x00, world_id = 0x06, name = "Phil's Training" },
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x00, world_id = 0x06, name = 'Hercules the Hero' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x00, world_id = 0x06, name = 'The Advice is Two Words' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x00, world_id = 0x06, name = 'Abducted Meg' },
  Event:new{ event_id = 0x0044, battle_id = 0x0044, map_id = 0x0044, fight_id = 0x00, room_id = 0x00, world_id = 0x06, name = 'Hercules VS the Hydra' },
  Event:new{ event_id = 0x008C, battle_id = 0x008C, map_id = 0x008C, fight_id = 0x00, room_id = 0x00, world_id = 0x06, name = "Phil's Training - Practice" },
  Event:new{ event_id = 0x008D, battle_id = 0x008D, map_id = 0x008D, fight_id = 0x00, room_id = 0x00, world_id = 0x06, name = "Phil's Training - Maniac" },

  -- The following comment was on the wiki page for the below value: (Replace "2032BAE0 00000106" With "2032BAE0 00320106" To Make It Work Properly.)
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x01, world_id = 0x06, name = 'Reunion With the Hero Hercules' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x02, world_id = 0x06, name = 'Enraged Hydra' },
  Event:new{ event_id = 0x008E, battle_id = 0x008E, map_id = 0x008E, fight_id = 0x00, room_id = 0x02, world_id = 0x06, name = "Phil's Training - Practice" },
  Event:new{ event_id = 0x008F, battle_id = 0x008F, map_id = 0x008F, fight_id = 0x00, room_id = 0x02, world_id = 0x06, name = "Phil's Training - Maniac" },

  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x03, world_id = 0x06, name = "The Hero's Companion, Megara" },
  Event:new{ event_id = 0x0005, battle_id = 0x0005, map_id = 0x0005, fight_id = 0x00, room_id = 0x03, world_id = 0x06, name = 'Arriving in the Underworld' },
  Event:new{ event_id = 0x0007, battle_id = 0x0007, map_id = 0x0007, fight_id = 0x00, room_id = 0x03, world_id = 0x06, name = 'What Happened at Olympus?' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x03, world_id = 0x06, name = 'Enter the Underworld Coliseum' },
  Event:new{ event_id = 0x000C, battle_id = 0x000C, map_id = 0x000C, fight_id = 0x00, room_id = 0x03, world_id = 0x06, name = 'Hades Cup Exhibition' },
  Event:new{ event_id = 0x000D, battle_id = 0x000D, map_id = 0x000D, fight_id = 0x00, room_id = 0x03, world_id = 0x06, name = 'The Road to the Finals' },
  Event:new{ event_id = 0x0012, battle_id = 0x0012, map_id = 0x0012, fight_id = 0x00, room_id = 0x03, world_id = 0x06, name = 'Hurry to Hades' },
  Event:new{ event_id = 0x0013, battle_id = 0x0013, map_id = 0x0013, fight_id = 0x00, room_id = 0x03, world_id = 0x06, name = 'To the Underdrome' },
  Event:new{ event_id = 0x00C5, battle_id = 0x00C5, map_id = 0x00C5, fight_id = 0x00, room_id = 0x03, world_id = 0x06, name = 'Astray in the Underworld' },
  Event:new{ event_id = 0x00C6, battle_id = 0x00C6, map_id = 0x00C6, fight_id = 0x00, room_id = 0x03, world_id = 0x06, name = 'Auron Disappeared' },
  Event:new{ event_id = 0x00C7, battle_id = 0x00C7, map_id = 0x00C7, fight_id = 0x00, room_id = 0x03, world_id = 0x06, name = 'Farewell to Auron' },
  Event:new{ event_id = 0x00D2, battle_id = 0x00D2, map_id = 0x00D2, fight_id = 0x00, room_id = 0x03, world_id = 0x06, name = 'To Hades' },

  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0001, battle_id = 0x0000, map_id = 0x0000, fight_id = 0x00, room_id = 0x04, world_id = 0x06, name = "The Hero's Fatigue" },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x04, world_id = 0x06, name = "Megara's Unease" },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x04, world_id = 0x06, name = 'The Olympus Stone' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x05, world_id = 0x06, name = 'The Way of the Dead' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x05, world_id = 0x06, name = "Hades' Pursuit" },
  Event:new{ event_id = 0x006F, battle_id = 0x006F, map_id = 0x006F, fight_id = 0x00, room_id = 0x05, world_id = 0x06, name = 'Escape From Hades' },

  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x06, world_id = 0x06, name = 'Underworld Warrior, Auron' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x06, world_id = 0x06, name = "Auron's Past" },
  Event:new{ event_id = 0x0041, battle_id = 0x0041, map_id = 0x0041, fight_id = 0x00, room_id = 0x06, world_id = 0x06, name = "Hades' Power" },
  Event:new{ event_id = 0x0042, battle_id = 0x0042, map_id = 0x0042, fight_id = 0x00, room_id = 0x06, world_id = 0x06, name = 'This is My Game' },
  Event:new{ event_id = 0x0043, battle_id = 0x0043, map_id = 0x0043, fight_id = 0x00, room_id = 0x06, world_id = 0x06, name = "Hades' Intent" },
  Event:new{ event_id = 0x0070, battle_id = 0x0070, map_id = 0x0070, fight_id = 0x00, room_id = 0x06, world_id = 0x06, name = 'Hades Battle (Hades is Invincible)' },
  Event:new{ event_id = 0x007E, battle_id = 0x007E, map_id = 0x007E, fight_id = 0x00, room_id = 0x06, world_id = 0x06, name = 'Nobody Waves Battle' },
  Event:new{ event_id = 0x00D8, battle_id = 0x00D8, map_id = 0x00D8, fight_id = 0x00, room_id = 0x06, world_id = 0x06, name = 'From Hero to Zero' },
  Event:new{ event_id = 0x00F8, battle_id = 0x00F8, map_id = 0x00F8, fight_id = 0x00, room_id = 0x06, world_id = 0x06, name = 'Internal Discord?' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x07, world_id = 0x06, name = "Hell's Watchdog, Cerberus" },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x07, world_id = 0x06, name = 'Manipulated Auron' },
  Event:new{ event_id = 0x0072, battle_id = 0x0072, map_id = 0x0072, fight_id = 0x00, room_id = 0x07, world_id = 0x06, name = 'Cerberus Battle' },
  Event:new{ event_id = 0x00DD, battle_id = 0x00DD, map_id = 0x00DD, fight_id = 0x00, room_id = 0x07, world_id = 0x06, name = 'Escape Successful!' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x08, world_id = 0x06, name = 'Pete Never Learns' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x08, world_id = 0x06, name = 'Uniting Power' },
  Event:new{ event_id = 0x0073, battle_id = 0x0073, map_id = 0x0073, fight_id = 0x00, room_id = 0x08, world_id = 0x06, name = 'Defending Megara From Pete' },
  Event:new{ event_id = 0x0074, battle_id = 0x0074, map_id = 0x0074, fight_id = 0x00, room_id = 0x08, world_id = 0x06, name = 'Sora & Hercules VS Pete I' },
  Event:new{ event_id = 0x00ED, battle_id = 0x00ED, map_id = 0x00ED, fight_id = 0x00, room_id = 0x08, world_id = 0x06, name = 'The True Hero' },
  Event:new{ event_id = 0x00F0, battle_id = 0x00F0, map_id = 0x00F0, fight_id = 0x00, room_id = 0x08, world_id = 0x06, name = 'Laughing Hades' },

  Event:new{ event_id = 0x007C, battle_id = 0x007C, map_id = 0x007C, fight_id = 0x00, room_id = 0x09, world_id = 0x06, name = '\"Spin Strike\" Heartless Wave Battle' },
  Event:new{ event_id = 0x007D, battle_id = 0x007D, map_id = 0x007D, fight_id = 0x00, room_id = 0x09, world_id = 0x06, name = '\"Bad Alert\" Heartless Wave Battle' },
  Event:new{ event_id = 0x00BD, battle_id = 0x00BD, map_id = 0x00BD, fight_id = 0x00, room_id = 0x09, world_id = 0x06, name = 'The Pain and Panic Cup' },
  Event:new{ event_id = 0x00BE, battle_id = 0x00BE, map_id = 0x00BE, fight_id = 0x00, room_id = 0x09, world_id = 0x06, name = 'The Cerberus Cup' },
  Event:new{ event_id = 0x00BF, battle_id = 0x00BF, map_id = 0x00BF, fight_id = 0x00, room_id = 0x09, world_id = 0x06, name = 'The Titan Cup' },
  Event:new{ event_id = 0x00C0, battle_id = 0x00C0, map_id = 0x00C0, fight_id = 0x00, room_id = 0x09, world_id = 0x06, name = 'The Goddess of Fate Cup' },
  Event:new{ event_id = 0x00C1, battle_id = 0x00C1, map_id = 0x00C1, fight_id = 0x00, room_id = 0x09, world_id = 0x06, name = 'The Pain and Panic Paradox Cup' },
  Event:new{ event_id = 0x00C2, battle_id = 0x00C2, map_id = 0x00C2, fight_id = 0x00, room_id = 0x09, world_id = 0x06, name = 'The Cerberus Paradox Cup' },
  Event:new{ event_id = 0x00C3, battle_id = 0x00C3, map_id = 0x00C3, fight_id = 0x00, room_id = 0x09, world_id = 0x06, name = 'The Titan Paradox Cup' },
  Event:new{ event_id = 0x00C4, battle_id = 0x00C4, map_id = 0x00C4, fight_id = 0x00, room_id = 0x09, world_id = 0x06, name = 'The Hades Paradox Cup' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0A, world_id = 0x06, name = 'Escaping Organization XIII' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x0A, world_id = 0x06, name = 'Legendary Guardian' },

  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0001, battle_id = 0x0000, map_id = 0x0000, fight_id = 0x00, room_id = 0x0C, world_id = 0x06, name = 'Lifting the Seal' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x0C, world_id = 0x06, name = 'The Hero is Never Neglected' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0D, world_id = 0x06, name = 'Take Back the Heart' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x0D, world_id = 0x06, name = 'Hercules Revived!' },
  Event:new{ event_id = 0x0047, battle_id = 0x0047, map_id = 0x0047, fight_id = 0x00, room_id = 0x0D, world_id = 0x06, name = 'Hercules VS Auron' },
  Event:new{ event_id = 0x00B4, battle_id = 0x00B4, map_id = 0x00B4, fight_id = 0x00, room_id = 0x0D, world_id = 0x06, name = 'Winning the Pain and Panic Cup Trophy' },
  Event:new{ event_id = 0x00B5, battle_id = 0x00B5, map_id = 0x00B5, fight_id = 0x00, room_id = 0x0D, world_id = 0x06, name = 'Winning the Cerberus Cup Trophy' },
  Event:new{ event_id = 0x00B6, battle_id = 0x00B6, map_id = 0x00B6, fight_id = 0x00, room_id = 0x0D, world_id = 0x06, name = 'Winning the Titan Cup Trophy' },
  Event:new{ event_id = 0x00B7, battle_id = 0x00B7, map_id = 0x00B7, fight_id = 0x00, room_id = 0x0D, world_id = 0x06, name = 'Winning the Goddess of Fate Cup Trophy' },
  Event:new{ event_id = 0x00B8, battle_id = 0x00B8, map_id = 0x00B8, fight_id = 0x00, room_id = 0x0D, world_id = 0x06, name = 'Winning the Hades Paradox Cup Trophy' },
  Event:new{ event_id = 0x00C8, battle_id = 0x00C8, map_id = 0x00C8, fight_id = 0x00, room_id = 0x0D, world_id = 0x06, name = 'Hades, to the Realm of the Dead' },
  Event:new{ event_id = 0x00FF, battle_id = 0x00FF, map_id = 0x00FF, fight_id = 0x00, room_id = 0x0D, world_id = 0x06, name = 'Hades, to the Realm of the Dead (Theater Mode)' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0E, world_id = 0x06, name = "The Hero's Star" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0F, world_id = 0x06, name = 'Suspicious Silhouette' },

  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0001, battle_id = 0x0000, map_id = 0x0000, fight_id = 0x00, room_id = 0x11, world_id = 0x06, name = 'Bout with Demyx' },
  Event:new{ event_id = 0x007B, battle_id = 0x007B, map_id = 0x007B, fight_id = 0x00, room_id = 0x11, world_id = 0x06, name = "Demyx's Water Clones Battle" },
  Event:new{ event_id = 0x0103, battle_id = 0x0103, map_id = 0x0103, fight_id = 0x00, room_id = 0x11, world_id = 0x06, name = 'Regained Power' },

  Event:new{ event_id = 0x00AB, battle_id = 0x00AB, map_id = 0x00AB, fight_id = 0x00, room_id = 0x12, world_id = 0x06, name = 'Hydra Battle' },
  Event:new{ event_id = 0x00F3, battle_id = 0x00F3, map_id = 0x00F3, fight_id = 0x00, room_id = 0x12, world_id = 0x06, name = 'Spoils of Battle' },

  Event:new{ event_id = 0x00C9, battle_id = 0x00C9, map_id = 0x00C9, fight_id = 0x00, room_id = 0x13, world_id = 0x06, name = 'Hades Battle (Part I)' },
  Event:new{ event_id = 0x00CA, battle_id = 0x00CA, map_id = 0x00CA, fight_id = 0x00, room_id = 0x13, world_id = 0x06, name = 'Hades Battle (Part II)' },
}

local AGRABAH = readonlytable{
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x00, world_id = 0x07, name = "Iago's Melancholy" },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x00, world_id = 0x07, name = 'Lamp-thief?' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x00, world_id = 0x07, name = 'Aladdin and Abu' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x00, world_id = 0x07, name = 'Find the Royal Treasure in the Cave of Wonders' },
  Event:new{ event_id = 0x0005, battle_id = 0x0005, map_id = 0x0005, fight_id = 0x00, room_id = 0x00, world_id = 0x07, name = 'Pete VS the Merchant' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x00, world_id = 0x07, name = "We'll Surely Meet Again" },
  Event:new{ event_id = 0x0016, battle_id = 0x0016, map_id = 0x0016, fight_id = 0x00, room_id = 0x00, world_id = 0x07, name = 'Interrogating the Merchant' },
  Event:new{ event_id = 0x0039, battle_id = 0x0039, map_id = 0x0039, fight_id = 0x00, room_id = 0x00, world_id = 0x07, name = 'Infinite Heartless Waves Battle' },
  Event:new{ event_id = 0x006E, battle_id = 0x006E, map_id = 0x006E, fight_id = 0x00, room_id = 0x00, world_id = 0x07, name = 'SB Sand Slider' },
  Event:new{ event_id = 0x0071, battle_id = 0x0071, map_id = 0x0071, fight_id = 0x00, room_id = 0x00, world_id = 0x07, name = 'Nice Assist' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x02, world_id = 0x07, name = 'Find Aladdin' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x02, world_id = 0x07, name = "Jafar's Lamp" },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x02, world_id = 0x07, name = 'The Missing Merchant' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x03, world_id = 0x07, name = 'Princess Jasmine' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x03, world_id = 0x07, name = 'Competition For the Magic Lamp' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x03, world_id = 0x07, name = 'Come Back Soon' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x03, world_id = 0x07, name = "Jafar's Trickery" },
  Event:new{ event_id = 0x003B, battle_id = 0x003B, map_id = 0x003B, fight_id = 0x00, room_id = 0x03, world_id = 0x07, name = 'Volcanic Lord & Blizzard Lord Battle' },
  Event:new{ event_id = 0x0080, battle_id = 0x0080, map_id = 0x0080, fight_id = 0x00, room_id = 0x03, world_id = 0x07, name = 'The Joy of Triumph' },
  Event:new{ event_id = 0x0082, battle_id = 0x0082, map_id = 0x0082, fight_id = 0x00, room_id = 0x03, world_id = 0x07, name = 'Getting Along With Everyone' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x04, world_id = 0x07, name = 'The Sealed Lamp' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x04, world_id = 0x07, name = "Jafar's Revival" },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x05, world_id = 0x07, name = 'Fierce Fighting, Evil Genie Jafar' },
  Event:new{ event_id = 0x003E, battle_id = 0x003E, map_id = 0x003E, fight_id = 0x00, room_id = 0x05, world_id = 0x07, name = 'Jafar Battle' },
  Event:new{ event_id = 0x0092, battle_id = 0x0092, map_id = 0x0092, fight_id = 0x00, room_id = 0x05, world_id = 0x07, name = 'In the End of Battle' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x06, world_id = 0x07, name = "Genie's Big Performance" },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x06, world_id = 0x07, name = 'Escape Success' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x07, world_id = 0x07, name = 'To the Magic Cave' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x09, world_id = 0x07, name = "The Cave's Gimmicks" },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x09, world_id = 0x07, name = 'Protect Abu and Help Him Get to the Pedestal Safely!' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x09, world_id = 0x07, name = 'The Opening Path' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0A, world_id = 0x07, name = 'Mountain of Treasure' },
  Event:new{ event_id = 0x003A, battle_id = 0x003A, map_id = 0x003A, fight_id = 0x00, room_id = 0x0A, world_id = 0x07, name = '50 Heartlesses Battle' },
  Event:new{ event_id = 0x007C, battle_id = 0x007C, map_id = 0x007C, fight_id = 0x00, room_id = 0x0A, world_id = 0x07, name = 'To Agrabah, With Haste' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0B, world_id = 0x07, name = "Iago's Confession" },

  -- The following comment was on the wiki page for the below entry: (Replace "2032BAE0 00000D07" With "2032BAE0 00320D07" To Make It Work Properly.)
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x0D, world_id = 0x07, name = 'Behind the Door is...' },
  Event:new{ event_id = 0x004F, battle_id = 0x004F, map_id = 0x004F, fight_id = 0x00, room_id = 0x0D, world_id = 0x07, name = 'Chasms of Challenges' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0E, world_id = 0x07, name = 'Magic Carpet' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x0E, world_id = 0x07, name = "Go Towards Jafar's Shadow!" },
  Event:new{ event_id = 0x000C, battle_id = 0x000C, map_id = 0x000C, fight_id = 0x00, room_id = 0x0E, world_id = 0x07, name = 'Summoning the Heartless' },
  Event:new{ event_id = 0x000D, battle_id = 0x000D, map_id = 0x000D, fight_id = 0x00, room_id = 0x0E, world_id = 0x07, name = "Follow Jafar's Shadow!" },
  Event:new{ event_id = 0x000E, battle_id = 0x000E, map_id = 0x000E, fight_id = 0x00, room_id = 0x0E, world_id = 0x07, name = 'Chase Jafar!' },
  Event:new{ event_id = 0x000F, battle_id = 0x000F, map_id = 0x000F, fight_id = 0x00, room_id = 0x0E, world_id = 0x07, name = "Chase Jafar's Shadow to the Tower!" },
  Event:new{ event_id = 0x0010, battle_id = 0x0010, map_id = 0x0010, fight_id = 0x00, room_id = 0x0E, world_id = 0x07, name = 'Mid-air Showdown' },
  Event:new{ event_id = 0x0011, battle_id = 0x0011, map_id = 0x0011, fight_id = 0x00, room_id = 0x0E, world_id = 0x07, name = 'Activate the 3 Switches' },
  Event:new{ event_id = 0x003D, battle_id = 0x003D, map_id = 0x003D, fight_id = 0x00, room_id = 0x0E, world_id = 0x07, name = 'Magic Carpet (Escape From the Ruins!)' },
  Event:new{ event_id = 0x0056, battle_id = 0x0056, map_id = 0x0056, fight_id = 0x00, room_id = 0x0E, world_id = 0x07, name = 'Heartless Waves Battle 1' },
  Event:new{ event_id = 0x0057, battle_id = 0x0057, map_id = 0x0057, fight_id = 0x00, room_id = 0x0E, world_id = 0x07, name = 'Heartless Waves Battle 2' },
  Event:new{ event_id = 0x0066, battle_id = 0x0066, map_id = 0x0066, fight_id = 0x00, room_id = 0x0E, world_id = 0x07, name = 'Hurry to the Tower Before the Door Shuts!' },
  Event:new{ event_id = 0x006F, battle_id = 0x006F, map_id = 0x006F, fight_id = 0x00, room_id = 0x0E, world_id = 0x07, name = 'Magic Carpet (Defeat 65 or More Heartlesses)' },
  Event:new{ event_id = 0x008C, battle_id = 0x008C, map_id = 0x008C, fight_id = 0x00, room_id = 0x0E, world_id = 0x07, name = 'Press the Switch' },
  Event:new{ event_id = 0x008D, battle_id = 0x008D, map_id = 0x008D, fight_id = 0x00, room_id = 0x0E, world_id = 0x07, name = 'Rush to the Door!' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0F, world_id = 0x07, name = "Jafar's Coming" },
  Event:new{ event_id = 0x0085, battle_id = 0x0085, map_id = 0x0085, fight_id = 0x00, room_id = 0x0F, world_id = 0x07, name = 'Suspicious Shopkeeper' },
  Event:new{ event_id = 0x0087, battle_id = 0x0087, map_id = 0x0087, fight_id = 0x00, room_id = 0x0F, world_id = 0x07, name = 'To the Desert Ruins' },
}

local THE_LAND_OF_DRAGONS = readonlytable{
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x00, world_id = 0x08, name = "Shan Yu's Ambition" },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x00, world_id = 0x08, name = 'Mushu, an Old Pal' },

  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0001, battle_id = 0x0000, map_id = 0x0000, fight_id = 0x00, room_id = 0x01, world_id = 0x08, name = 'Enlistment' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0004, battle_id = 0x0000, map_id = 0x0000, fight_id = 0x00, room_id = 0x01, world_id = 0x08, name = 'Start of Missions' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0007, battle_id = 0x0000, map_id = 0x0000, fight_id = 0x00, room_id = 0x01, world_id = 0x08, name = 'Mission 1 Completed!' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x000A, battle_id = 0x0000, map_id = 0x0000, fight_id = 0x00, room_id = 0x01, world_id = 0x08, name = 'Mission 2 Completed!' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x000F, battle_id = 0x0000, map_id = 0x0000, fight_id = 0x00, room_id = 0x01, world_id = 0x08, name = 'End of Missions' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0010, battle_id = 0x0000, map_id = 0x0000, fight_id = 0x00, room_id = 0x01, world_id = 0x08, name = 'Missions 2 and 3 left' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0011, battle_id = 0x0000, map_id = 0x0000, fight_id = 0x00, room_id = 0x01, world_id = 0x08, name = 'Mission 3 left' },
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x01, world_id = 0x08, name = 'Enlistment Procedure' },
  Event:new{ event_id = 0x0044, battle_id = 0x0044, map_id = 0x0044, fight_id = 0x00, room_id = 0x01, world_id = 0x08, name = 'Heartless Waves Battle' },
  Event:new{ event_id = 0x0046, battle_id = 0x0046, map_id = 0x0046, fight_id = 0x00, room_id = 0x01, world_id = 0x08, name = 'Mission 3: The Search' },
  Event:new{ event_id = 0x006E, battle_id = 0x006E, map_id = 0x006E, fight_id = 0x00, room_id = 0x01, world_id = 0x08, name = "Ping's Coming of Age Story" },

  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x02, world_id = 0x08, name = 'Hurry! To the Capital!' },
  Event:new{ event_id = 0x0045, battle_id = 0x0045, map_id = 0x0045, fight_id = 0x00, room_id = 0x02, world_id = 0x08, name = 'Mission 1: The Surprise Attack' },
  Event:new{ event_id = 0x0050, battle_id = 0x0050, map_id = 0x0050, fight_id = 0x00, room_id = 0x02, world_id = 0x08, name = 'Mission 2: The Ambush' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x03, world_id = 0x08, name = 'Danger Approaches the Summit' },
  Event:new{ event_id = 0x0047, battle_id = 0x0047, map_id = 0x0047, fight_id = 0x00, room_id = 0x03, world_id = 0x08, name = 'Hurry to the Mountain Summit!' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x05, world_id = 0x08, name = 'Checking in the Cave' },
  Event:new{ event_id = 0x0048, battle_id = 0x0048, map_id = 0x0048, fight_id = 0x00, room_id = 0x05, world_id = 0x08, name = 'Sora & Ping VS Heartless Waves' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x06, world_id = 0x08, name = 'Shan Yu Still Lives' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x06, world_id = 0x08, name = 'Chasing the Mysterious Figure' },
  Event:new{ event_id = 0x000C, battle_id = 0x000C, map_id = 0x000C, fight_id = 0x00, room_id = 0x06, world_id = 0x08, name = 'The Capital is in Danger!' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x07, world_id = 0x08, name = 'The Great Battle on the Snowy Mountain' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x07, world_id = 0x08, name = 'Avalanche' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x07, world_id = 0x08, name = 'The Man Standing Atop the Snowy Mountain' },
  Event:new{ event_id = 0x0049, battle_id = 0x0049, map_id = 0x0049, fight_id = 0x00, room_id = 0x07, world_id = 0x08, name = 'Sora VS Infinite Heartless Waves (With Time Limit)' },
  Event:new{ event_id = 0x004C, battle_id = 0x004C, map_id = 0x004C, fight_id = 0x00, room_id = 0x07, world_id = 0x08, name = 'Riku? Battle' },
  Event:new{ event_id = 0x0078, battle_id = 0x0078, map_id = 0x0078, fight_id = 0x00, room_id = 0x07, world_id = 0x08, name = 'Ominous Premonition' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x08, world_id = 0x08, name = "The Capital's Crisis" },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x08, world_id = 0x08, name = 'Going to the Palace' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x08, world_id = 0x08, name = 'More Heartless' },
  Event:new{ event_id = 0x000D, battle_id = 0x000D, map_id = 0x000D, fight_id = 0x00, room_id = 0x08, world_id = 0x08, name = 'Storm Rider Comes Flying' },
  Event:new{ event_id = 0x004A, battle_id = 0x004A, map_id = 0x004A, fight_id = 0x00, room_id = 0x08, world_id = 0x08, name = 'Heartless Waves Battle (1st Visit)' },
  Event:new{ event_id = 0x004F, battle_id = 0x004F, map_id = 0x004F, fight_id = 0x00, room_id = 0x08, world_id = 0x08, name = 'Storm Rider Battle' },
  Event:new{ event_id = 0x0051, battle_id = 0x0051, map_id = 0x0051, fight_id = 0x00, room_id = 0x08, world_id = 0x08, name = 'Heartless Waves Battle (2nd Visit)' },
  Event:new{ event_id = 0x0081, battle_id = 0x0081, map_id = 0x0081, fight_id = 0x00, room_id = 0x08, world_id = 0x08, name = 'Fireworks' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x09, world_id = 0x08, name = 'This is the End!' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x09, world_id = 0x08, name = "Mulan's Maturity" },
  Event:new{ event_id = 0x004B, battle_id = 0x004B, map_id = 0x004B, fight_id = 0x00, room_id = 0x09, world_id = 0x08, name = 'Shan Yu Battle' },
  Event:new{ event_id = 0x0069, battle_id = 0x0069, map_id = 0x0069, fight_id = 0x00, room_id = 0x09, world_id = 0x08, name = 'The Hero Who Saved the Land' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0A, world_id = 0x08, name = 'The Figure in Front of the Gate' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x0A, world_id = 0x08, name = "Maybe It's Riku?" },
  Event:new{ event_id = 0x000D, battle_id = 0x000D, map_id = 0x000D, fight_id = 0x00, room_id = 0x0A, world_id = 0x08, name = 'Identity of the Earth Sounds' },
  Event:new{ event_id = 0x004E, battle_id = 0x004E, map_id = 0x004E, fight_id = 0x00, room_id = 0x0A, world_id = 0x08, name = 'Nobody Waves Battle' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0B, world_id = 0x08, name = "To the Emperor's Side" },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x0B, world_id = 0x08, name = 'The Highest Reward' },
  Event:new{ event_id = 0x0040, battle_id = 0x0040, map_id = 0x0040, fight_id = 0x00, room_id = 0x0B, world_id = 0x08, name = "Captain Shang's Been Defeated" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0C, world_id = 0x08, name = 'Annihilated Army' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0C, world_id = 0x08, name = 'The Village With No-One In It' },
}

local HUNDRED_ACRE_WOOD = readonlytable{
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x00, world_id = 0x09, name = 'The 100 Acre Wood' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x00, world_id = 0x09, name = 'To the Forest Once More' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x00, world_id = 0x09, name = "Piglet's House" },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x00, world_id = 0x09, name = "Piglet's House Complete" },
  Event:new{ event_id = 0x0005, battle_id = 0x0005, map_id = 0x0005, fight_id = 0x00, room_id = 0x00, world_id = 0x09, name = "Rabbit's House" },
  Event:new{ event_id = 0x0006, battle_id = 0x0006, map_id = 0x0006, fight_id = 0x00, room_id = 0x00, world_id = 0x09, name = "Rabbit's House Complete" },
  Event:new{ event_id = 0x0007, battle_id = 0x0007, map_id = 0x0007, fight_id = 0x00, room_id = 0x00, world_id = 0x09, name = "Kanga and Roo's House" },
  Event:new{ event_id = 0x0008, battle_id = 0x0008, map_id = 0x0008, fight_id = 0x00, room_id = 0x00, world_id = 0x09, name = "Kanga and Roo's House Complete" },
  Event:new{ event_id = 0x0009, battle_id = 0x0009, map_id = 0x0009, fight_id = 0x00, room_id = 0x00, world_id = 0x09, name = 'The Haunted Cave' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x00, world_id = 0x09, name = 'The Haunted Cave Accomplished' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x00, world_id = 0x09, name = 'Starry Hill' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x01, world_id = 0x09, name = 'How Are You?' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x01, world_id = 0x09, name = 'Right Here Without You' },
  Event:new{ event_id = 0x0034, battle_id = 0x0034, map_id = 0x0034, fight_id = 0x00, room_id = 0x01, world_id = 0x09, name = "The Hunny Pot (Get the Hunny Pot Off of Pooh's Head)" },
  Event:new{ event_id = 0x0035, battle_id = 0x0035, map_id = 0x0035, fight_id = 0x00, room_id = 0x01, world_id = 0x09, name = 'A Dreaming Pooh' },
  Event:new{ event_id = 0x0049, battle_id = 0x0049, map_id = 0x0049, fight_id = 0x00, room_id = 0x01, world_id = 0x09, name = 'The Hunny Pot (Get a Score of 8,000 or More)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x02, world_id = 0x09, name = "Pooh's House" },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x02, world_id = 0x09, name = 'Reunion, and Then a Strange Incident' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x02, world_id = 0x09, name = "Pooh's Situation" },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x02, world_id = 0x09, name = "Something's Out of Place" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x03, world_id = 0x09, name = "Eeyore's Murmurs" },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x03, world_id = 0x09, name = 'The Mysterious Honey' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x03, world_id = 0x09, name = "Rabbit's Secret" },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x03, world_id = 0x09, name = 'Just Enough Honey' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x04, world_id = 0x09, name = "Blowing' in the Wind" },
  -- Event:new{ event_id = 0x00??, battle_id = 0x00??, map_id = 0x00??, fight_id = 0x00, room_id = 0x04, world_id = 0x09, name = "Windswept Piglet" },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x04, world_id = 0x09, name = 'Rescue Successful' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x05, world_id = 0x09, name = 'Strategy Meeting' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x05, world_id = 0x09, name = 'At a Time Like That, Just Jump' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x05, world_id = 0x09, name = 'A Joyful Jump' },

  Event:new{ event_id = 0x0037, battle_id = 0x0037, map_id = 0x0037, fight_id = 0x00, room_id = 0x06, world_id = 0x09, name = 'A Blustery Rescue (With Time Limit)' },
  Event:new{ event_id = 0x0045, battle_id = 0x0045, map_id = 0x0045, fight_id = 0x00, room_id = 0x06, world_id = 0x09, name = 'A Blustery Rescue (Without Time Limit)' },

  Event:new{ event_id = 0x0039, battle_id = 0x0039, map_id = 0x0039, fight_id = 0x00, room_id = 0x07, world_id = 0x09, name = 'Hunny Slider (With Lives)' },
  Event:new{ event_id = 0x0046, battle_id = 0x0046, map_id = 0x0046, fight_id = 0x00, room_id = 0x07, world_id = 0x09, name = 'Hunny Slider (Without Lives)' },

  Event:new{ event_id = 0x003B, battle_id = 0x003B, map_id = 0x003B, fight_id = 0x00, room_id = 0x08, world_id = 0x09, name = 'Balloon Bounce (With Time Limit)' },
  Event:new{ event_id = 0x0047, battle_id = 0x0047, map_id = 0x0047, fight_id = 0x00, room_id = 0x08, world_id = 0x09, name = 'Balloon Bounce (Without Time Limit)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x09, world_id = 0x09, name = 'Finding Pooh' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x09, world_id = 0x09, name = 'We Were Worried' },
  Event:new{ event_id = 0x003D, battle_id = 0x003D, map_id = 0x003D, fight_id = 0x00, room_id = 0x09, world_id = 0x09, name = 'The Expotition (With Time Limit)' },
  Event:new{ event_id = 0x0048, battle_id = 0x0048, map_id = 0x0048, fight_id = 0x00, room_id = 0x09, world_id = 0x09, name = 'The Expotition (Without Time Limit)' },
}

local PRIDE_LANDS = readonlytable{
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x00, world_id = 0x0A, name = "Rafiki's Verdict" },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x00, world_id = 0x0A, name = 'His Majesty, Scar' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x00, world_id = 0x0A, name = "The Wind's Tidings" },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x00, world_id = 0x0A, name = 'The Truth Comes Out' },
  Event:new{ event_id = 0x0005, battle_id = 0x0005, map_id = 0x0005, fight_id = 0x00, room_id = 0x00, world_id = 0x0A, name = 'A New King' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x00, world_id = 0x0A, name = "Scar's Ghost" },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x00, world_id = 0x0A, name = "The King's Nature" },
  Event:new{ event_id = 0x000C, battle_id = 0x000C, map_id = 0x000C, fight_id = 0x00, room_id = 0x00, world_id = 0x0A, name = "Where's Simba?" },
  Event:new{ event_id = 0x000D, battle_id = 0x000D, map_id = 0x000D, fight_id = 0x00, room_id = 0x00, world_id = 0x0A, name = 'Leaving the Past Behind' },
  Event:new{ event_id = 0x000E, battle_id = 0x000E, map_id = 0x000E, fight_id = 0x00, room_id = 0x00, world_id = 0x0A, name = 'The Circle of Life' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x01, world_id = 0x0A, name = 'Weak Hearts, Evil Hearts' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x02, world_id = 0x0A, name = "Simba's Frustration" },
  Event:new{ event_id = 0x0033, battle_id = 0x0033, map_id = 0x0033, fight_id = 0x00, room_id = 0x02, world_id = 0x0A, name = 'Shenzi, Banzai, and Ed Battle (Protect Timon and Pumbaa)' },
  Event:new{ event_id = 0x0053, battle_id = 0x0053, map_id = 0x0053, fight_id = 0x00, room_id = 0x02, world_id = 0x0A, name = 'To the Battlefield' },

  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x03, world_id = 0x0A, name = 'To the Other Side' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x03, world_id = 0x0A, name = 'Rafiki Shows the Way' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x04, world_id = 0x0A, name = "Simba's Alive" },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x04, world_id = 0x0A, name = 'This Is My Home' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x04, world_id = 0x0A, name = "The Hyenas' Laughter" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x05, world_id = 0x0A, name = 'Saving Nala' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x05, world_id = 0x0A, name = 'The Elephant Graveyard' },
  Event:new{ event_id = 0x0038, battle_id = 0x0038, map_id = 0x0038, fight_id = 0x00, room_id = 0x05, world_id = 0x0A, name = 'Living Bone x2 Battle' },
  Event:new{ event_id = 0x0039, battle_id = 0x0039, map_id = 0x0039, fight_id = 0x00, room_id = 0x05, world_id = 0x0A, name = 'Shenzi, Banzai, and Ed Battle (Chase Them!)' },
  Event:new{ event_id = 0x0044, battle_id = 0x0044, map_id = 0x0044, fight_id = 0x00, room_id = 0x05, world_id = 0x0A, name = 'Just What the Kingdom Needs' },
  Event:new{ event_id = 0x005D, battle_id = 0x005D, map_id = 0x005D, fight_id = 0x00, room_id = 0x05, world_id = 0x0A, name = 'Simba Runs Away' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x06, world_id = 0x0A, name = 'The Wild Kingdom' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x08, world_id = 0x0A, name = 'Timon and Pumbaa' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x09, world_id = 0x0A, name = 'A Carefree Life' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x09, world_id = 0x0A, name = "There's Simba!" },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x09, world_id = 0x0A, name = 'Hakuna Matata' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x09, world_id = 0x0A, name = 'Nothing to Say' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x09, world_id = 0x0A, name = 'The Looming Shadow' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x09, world_id = 0x0A, name = 'What It Means to Be King' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0B, world_id = 0x0A, name = 'Waking from a Nightmare' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0C, world_id = 0x0A, name = "Simba's Strength" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0D, world_id = 0x0A, name = 'Anger and Jealousy' },

  Event:new{ event_id = 0x0037, battle_id = 0x0037, map_id = 0x0037, fight_id = 0x00, room_id = 0x0E, world_id = 0x0A, name = 'Scar Battle' },
  Event:new{ event_id = 0x0055, battle_id = 0x0055, map_id = 0x0055, fight_id = 0x00, room_id = 0x0E, world_id = 0x0A, name = 'An End to the Past' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0F, world_id = 0x0A, name = 'The Groundshaker Attacks' },
  Event:new{ event_id = 0x003B, battle_id = 0x003B, map_id = 0x003B, fight_id = 0x00, room_id = 0x0F, world_id = 0x0A, name = 'Groundshaker Battle' },
  Event:new{ event_id = 0x0063, battle_id = 0x0063, map_id = 0x0063, fight_id = 0x00, room_id = 0x0F, world_id = 0x0A, name = "The Giant's Fall" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x10, world_id = 0x0A, name = 'The Tragedy' },
}

local ATLANTICA = readonlytable{
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x00, world_id = 0x0B, name = 'Blowing Off the Anxiety' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x01, world_id = 0x0B, name = "The Prince's Bronze Statue" },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x01, world_id = 0x0B, name = 'Chapter 4 Prologue' },
  Event:new{ event_id = 0x0033, battle_id = 0x0033, map_id = 0x0033, fight_id = 0x00, room_id = 0x01, world_id = 0x0B, name = 'Song 2: Part of Your World (Story-Related)' },
  Event:new{ event_id = 0x0043, battle_id = 0x0043, map_id = 0x0043, fight_id = 0x00, room_id = 0x01, world_id = 0x0B, name = 'Song 2: Part of Your World (Not Story-Related)' },
  Event:new{ event_id = 0x0053, battle_id = 0x0053, map_id = 0x0053, fight_id = 0x00, room_id = 0x01, world_id = 0x0B, name = 'Song 2: Part of Your World (Theater Mode)' },
  Event:new{ event_id = 0x0054, battle_id = 0x0054, map_id = 0x0054, fight_id = 0x00, room_id = 0x01, world_id = 0x0B, name = 'Collaboration With Ariel' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x02, world_id = 0x0B, name = 'The Kingdom of the Sea, Atlantica' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x02, world_id = 0x0B, name = 'Invitation to the Musical' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x02, world_id = 0x0B, name = 'The Way to Regain Energy' },
  Event:new{ event_id = 0x0005, battle_id = 0x0005, map_id = 0x0005, fight_id = 0x00, room_id = 0x02, world_id = 0x0B, name = 'The Complex Music Chart' },
  Event:new{ event_id = 0x0008, battle_id = 0x0008, map_id = 0x0008, fight_id = 0x00, room_id = 0x02, world_id = 0x0B, name = "Ursula's Temptation to Sign the Contract" },
  Event:new{ event_id = 0x0009, battle_id = 0x0009, map_id = 0x0009, fight_id = 0x00, room_id = 0x02, world_id = 0x0B, name = 'Searching Ariel' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x02, world_id = 0x0B, name = 'To the Best Musical' },
  Event:new{ event_id = 0x0034, battle_id = 0x0034, map_id = 0x0034, fight_id = 0x00, room_id = 0x02, world_id = 0x0B, name = 'Swimming Tutorial' },
  Event:new{ event_id = 0x003F, battle_id = 0x003F, map_id = 0x003F, fight_id = 0x00, room_id = 0x02, world_id = 0x0B, name = 'Musical Rhythm' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x03, world_id = 0x0B, name = 'Chapter 3 Prologue' },
  Event:new{ event_id = 0x0035, battle_id = 0x0035, map_id = 0x0035, fight_id = 0x00, room_id = 0x03, world_id = 0x0B, name = 'Song 3: Under the Sea (Story-Related)' },
  Event:new{ event_id = 0x0044, battle_id = 0x0044, map_id = 0x0044, fight_id = 0x00, room_id = 0x03, world_id = 0x0B, name = 'Song 3: Under the Sea (Not Story-Related)' },
  Event:new{ event_id = 0x0057, battle_id = 0x0057, map_id = 0x0057, fight_id = 0x00, room_id = 0x03, world_id = 0x0B, name = 'Song 3: Under the Sea (Theater Mode)' },
  Event:new{ event_id = 0x0058, battle_id = 0x0058, map_id = 0x0058, fight_id = 0x00, room_id = 0x03, world_id = 0x0B, name = "Sebastian's Distress" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x04, world_id = 0x0B, name = 'Chapter 1 Prologue' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x04, world_id = 0x0B, name = 'Chapter 5 Prologue' },
  Event:new{ event_id = 0x0037, battle_id = 0x0037, map_id = 0x0037, fight_id = 0x00, room_id = 0x04, world_id = 0x0B, name = 'Song 5: A New Day is Dawning (Story-Related)' },
  Event:new{ event_id = 0x0040, battle_id = 0x0040, map_id = 0x0040, fight_id = 0x00, room_id = 0x04, world_id = 0x0B, name = 'Song 1: Swim This Way (Story-Related)' },
  Event:new{ event_id = 0x0042, battle_id = 0x0042, map_id = 0x0042, fight_id = 0x00, room_id = 0x04, world_id = 0x0B, name = 'Song 1: Swim This Way (Not Story-Related)' },
  Event:new{ event_id = 0x0046, battle_id = 0x0046, map_id = 0x0046, fight_id = 0x00, room_id = 0x04, world_id = 0x0B, name = 'Song 5: A New Day is Dawning (Not Story-Related)' },
  Event:new{ event_id = 0x004D, battle_id = 0x004D, map_id = 0x004D, fight_id = 0x00, room_id = 0x04, world_id = 0x0B, name = 'Song 1: Swim This Way (Theater Mode)' },
  Event:new{ event_id = 0x004E, battle_id = 0x004E, map_id = 0x004E, fight_id = 0x00, room_id = 0x04, world_id = 0x0B, name = "Triton's Anxiety" },
  Event:new{ event_id = 0x0066, battle_id = 0x0066, map_id = 0x0066, fight_id = 0x00, room_id = 0x04, world_id = 0x0B, name = 'Song 5: A New Day is Dawning (Theater Mode)' },
  Event:new{ event_id = 0x0067, battle_id = 0x0067, map_id = 0x0067, fight_id = 0x00, room_id = 0x04, world_id = 0x0B, name = 'Because the Worlds Are Connected' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x05, world_id = 0x0B, name = 'The Statue From the Surface' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x05, world_id = 0x0B, name = 'Chapter 2 Prologue' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x05, world_id = 0x0B, name = 'Unforgivable!' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x06, world_id = 0x0B, name = 'The Prince Searching For Ariel' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x06, world_id = 0x0B, name = 'The Prince Lost Something' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x06, world_id = 0x0B, name = 'Prince Eric and Ariel' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x07, world_id = 0x0B, name = 'Encounter With the Prince' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x07, world_id = 0x0B, name = 'The Destined Duo' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x07, world_id = 0x0B, name = 'The Two On the Beach' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x07, world_id = 0x0B, name = "Ariel's Confession" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x08, world_id = 0x0B, name = "Ursula's Plot" },

  Event:new{ event_id = 0x0041, battle_id = 0x0041, map_id = 0x0041, fight_id = 0x00, room_id = 0x09, world_id = 0x0B, name = "Song 4: Ursula's Revenge (Story-Related)" },
  Event:new{ event_id = 0x0045, battle_id = 0x0045, map_id = 0x0045, fight_id = 0x00, room_id = 0x09, world_id = 0x0B, name = "Song 4: Ursula's Revenge (Not Story-Related)" },
  Event:new{ event_id = 0x0061, battle_id = 0x0061, map_id = 0x0061, fight_id = 0x00, room_id = 0x09, world_id = 0x0B, name = "Song 4: Ursula's Revenge (Theater Mode)" },
  Event:new{ event_id = 0x0062, battle_id = 0x0062, map_id = 0x0062, fight_id = 0x00, room_id = 0x09, world_id = 0x0B, name = 'Ursula Disappeared Into the Sea' },
}

local DISNEY_CASTLE = readonlytable{
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x00, world_id = 0x0C, name = 'There Are Heartless Here Too?' },
  Event:new{ event_id = 0x0033, battle_id = 0x0033, map_id = 0x0033, fight_id = 0x00, room_id = 0x00, world_id = 0x0C, name = 'Guide Minnie to the Throne' },
  Event:new{ event_id = 0x0051, battle_id = 0x0051, map_id = 0x0051, fight_id = 0x00, room_id = 0x00, world_id = 0x0C, name = 'The Hidden Entrance' },

  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0001, battle_id = 0x0000, map_id = 0x0000, fight_id = 0x00, room_id = 0x01, world_id = 0x0C, name = 'Pleased to Meet You, Queen Minnie' },
  Event:new{ event_id = 0x0035, battle_id = 0x0035, map_id = 0x0035, fight_id = 0x00, room_id = 0x01, world_id = 0x0C, name = "The Castle's Incident" },

  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0001, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x02, world_id = 0x0C, name = 'Protect Minnie While Heading to the Audience Chamber!' },
  Event:new{ event_id = 0x004F, battle_id = 0x004F, map_id = 0x004F, fight_id = 0x00, room_id = 0x02, world_id = 0x0C, name = 'The Sealed Audience Chamber' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x03, world_id = 0x0C, name = 'Welcome to Disney Castle' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x04, world_id = 0x0C, name = 'The Cornerstone of Light' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x04, world_id = 0x0C, name = 'The Mysterious Door' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x04, world_id = 0x0C, name = 'Into the Door' },
  Event:new{ event_id = 0x0036, battle_id = 0x0036, map_id = 0x0036, fight_id = 0x00, room_id = 0x04, world_id = 0x0C, name = "The Queen's Wish" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x05, world_id = 0x0C, name = 'The Castle is Now Protected From the Peace' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x05, world_id = 0x0C, name = 'The Appearance of a Dark Portal' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x06, world_id = 0x0C, name = 'A Strange Situation?' },

  Event:new{ event_id = 0x0043, battle_id = 0x0043, map_id = 0x0043, fight_id = 0x00, room_id = 0x07, world_id = 0x0C, name = 'Lingering Will Battle (1st Fight)' },
  Event:new{ event_id = 0x0044, battle_id = 0x0044, map_id = 0x0044, fight_id = 0x00, room_id = 0x07, world_id = 0x0C, name = "Terra's Lingering Will" },
  Event:new{ event_id = 0x0045, battle_id = 0x0045, map_id = 0x0045, fight_id = 0x00, room_id = 0x07, world_id = 0x0C, name = 'The Power of the Chosen One' },
  Event:new{ event_id = 0x0046, battle_id = 0x0046, map_id = 0x0046, fight_id = 0x00, room_id = 0x07, world_id = 0x0C, name = 'Rematch With Terra' },
  Event:new{ event_id = 0x0047, battle_id = 0x0047, map_id = 0x0047, fight_id = 0x00, room_id = 0x07, world_id = 0x0C, name = 'Victory on the Wastelands' },
  Event:new{ event_id = 0x0049, battle_id = 0x0049, map_id = 0x0049, fight_id = 0x00, room_id = 0x07, world_id = 0x0C, name = 'Lingering Will Battle (Rematch)' },
}

local TIMELESS_RIVER = readonlytable{
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x00, world_id = 0x0D, name = 'The World of Black and White' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x00, world_id = 0x0D, name = 'The Appearing Window' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x00, world_id = 0x0D, name = 'Deepening Mystery' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x00, world_id = 0x0D, name = 'The Same Door' },
  Event:new{ event_id = 0x0005, battle_id = 0x0005, map_id = 0x0005, fight_id = 0x00, room_id = 0x00, world_id = 0x0D, name = 'This is the World to the Past' },
  Event:new{ event_id = 0x0006, battle_id = 0x0006, map_id = 0x0006, fight_id = 0x00, room_id = 0x00, world_id = 0x0D, name = "Everyone's Reasoning" },
  Event:new{ event_id = 0x0007, battle_id = 0x0007, map_id = 0x0007, fight_id = 0x00, room_id = 0x00, world_id = 0x0D, name = 'Return to the Original World' },

  -- The event below is described by the wiki as: ?? Digits . - 01. Attacking Pete
  -- { event_id = 0x0001, battle_id = 0x00??, map_id = 0x00??, fight_id = 0x00, room_id = 0x01, world_id = 0x0D, name = 'Attacking Pete' },
  Event:new{ event_id = 0x003A, battle_id = 0x003A, map_id = 0x003A, fight_id = 0x00, room_id = 0x01, world_id = 0x0D, name = 'Pete? Battle' },
  Event:new{ event_id = 0x0043, battle_id = 0x0043, map_id = 0x0043, fight_id = 0x00, room_id = 0x01, world_id = 0x0D, name = 'Not the Culprit?' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x02, world_id = 0x0D, name = 'The Stolen Steamboat' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x02, world_id = 0x0D, name = 'Departure! Willie!' },
  Event:new{ event_id = 0x0034, battle_id = 0x0034, map_id = 0x0034, fight_id = 0x00, room_id = 0x02, world_id = 0x0D, name = 'Save the Cornerstone of Light!' },
  Event:new{ event_id = 0x0056, battle_id = 0x0056, map_id = 0x0056, fight_id = 0x00, room_id = 0x02, world_id = 0x0D, name = 'Escaping Pete' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x03, world_id = 0x0D, name = 'There Are 2 Petes?' },
  Event:new{ event_id = 0x0035, battle_id = 0x0035, map_id = 0x0035, fight_id = 0x00, room_id = 0x03, world_id = 0x0D, name = 'Pete II Battle' },
  Event:new{ event_id = 0x0058, battle_id = 0x0058, map_id = 0x0058, fight_id = 0x00, room_id = 0x03, world_id = 0x0D, name = 'The Door of Time is Sealed' },

  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x04, world_id = 0x0D, name = 'The King at Lilliput' },
  Event:new{ event_id = 0x0036, battle_id = 0x0036, map_id = 0x0036, fight_id = 0x00, room_id = 0x04, world_id = 0x0D, name = 'Heartless Waves Battle' },
  Event:new{ event_id = 0x004E, battle_id = 0x004E, map_id = 0x004E, fight_id = 0x00, room_id = 0x04, world_id = 0x0D, name = 'Mysterious Little Window 3' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x05, world_id = 0x0D, name = 'The King at the Construction Site' },
  Event:new{ event_id = 0x0037, battle_id = 0x0037, map_id = 0x0037, fight_id = 0x00, room_id = 0x05, world_id = 0x0D, name = 'Heartless Waves Battle' },
  Event:new{ event_id = 0x0052, battle_id = 0x0052, map_id = 0x0052, fight_id = 0x00, room_id = 0x05, world_id = 0x0D, name = 'Mysterious Little Window 4' },

  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x06, world_id = 0x0D, name = 'The King at the Scene of the Fire' },
  Event:new{ event_id = 0x0038, battle_id = 0x0038, map_id = 0x0038, fight_id = 0x00, room_id = 0x06, world_id = 0x0D, name = 'Heartless Waves Battle' },
  Event:new{ event_id = 0x004A, battle_id = 0x004A, map_id = 0x004A, fight_id = 0x00, room_id = 0x06, world_id = 0x0D, name = 'Mysterious Little Window 2' },

  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x07, world_id = 0x0D, name = "Ruckus at the King's House" },
  Event:new{ event_id = 0x0039, battle_id = 0x0039, map_id = 0x0039, fight_id = 0x00, room_id = 0x07, world_id = 0x0D, name = 'Heartless Waves Battle' },
  Event:new{ event_id = 0x0046, battle_id = 0x0046, map_id = 0x0046, fight_id = 0x00, room_id = 0x07, world_id = 0x0D, name = 'Mysterious Little Window 1' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x08, world_id = 0x0D, name = "Time Window: Maleficent's Verdict" },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x08, world_id = 0x0D, name = 'Time Window: The Good Old Days' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x08, world_id = 0x0D, name = 'Time Window: Door to the Past' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x08, world_id = 0x0D, name = 'Time Window: The Culprit Appears' },
}

local HALLOWEEN_TOWN = readonlytable{
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x00, world_id = 0x0E, name = 'Merry Christmas' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x00, world_id = 0x0E, name = "The Mayor's Decree" },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x00, world_id = 0x0E, name = 'Advance Departure!' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x00, world_id = 0x0E, name = 'Take Back the Presents' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x00, world_id = 0x0E, name = 'Merry Christmas!' },
  Event:new{ event_id = 0x0033, battle_id = 0x0033, map_id = 0x0033, fight_id = 0x00, room_id = 0x00, world_id = 0x0E, name = 'Heartless Waves Battle 1' },
  Event:new{ event_id = 0x003C, battle_id = 0x003C, map_id = 0x003C, fight_id = 0x00, room_id = 0x00, world_id = 0x0E, name = 'Heartless Waves Battle 2 (Collect the Four Presents)' },
  Event:new{ event_id = 0x0052, battle_id = 0x0052, map_id = 0x0052, fight_id = 0x00, room_id = 0x00, world_id = 0x0E, name = "Santa's Bodyguard" },
  Event:new{ event_id = 0x006C, battle_id = 0x006C, map_id = 0x006C, fight_id = 0x00, room_id = 0x00, world_id = 0x0E, name = 'The Incident is Not Yet Over' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x01, world_id = 0x0E, name = "The Doctor's Research" },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x01, world_id = 0x0E, name = 'The Shadow Creeping Near to the Doctor' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x01, world_id = 0x0E, name = "Jack's Great Idea" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x02, world_id = 0x0E, name = 'Welcome to Halloween Town' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x02, world_id = 0x0E, name = "Maleficent's Shadow" },
  Event:new{ event_id = 0x0005, battle_id = 0x0005, map_id = 0x0005, fight_id = 0x00, room_id = 0x02, world_id = 0x0E, name = 'Kidnapped Santa' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x03, world_id = 0x0E, name = 'Resurrected Boogie' },
  Event:new{ event_id = 0x0034, battle_id = 0x0034, map_id = 0x0034, fight_id = 0x00, room_id = 0x03, world_id = 0x0E, name = 'Prison Keeper Battle' },
  Event:new{ event_id = 0x0039, battle_id = 0x0039, map_id = 0x0039, fight_id = 0x00, room_id = 0x03, world_id = 0x0E, name = 'The Plan' },
  Event:new{ event_id = 0x005E, battle_id = 0x005E, map_id = 0x005E, fight_id = 0x00, room_id = 0x03, world_id = 0x0E, name = 'The Escaping Trio' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x04, world_id = 0x0E, name = 'The King of Terror, Jack Skellington' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x04, world_id = 0x0E, name = 'The Hinterland Door' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x04, world_id = 0x0E, name = "Jack's Assistance" },
  Event:new{ event_id = 0x003A, battle_id = 0x003A, map_id = 0x003A, fight_id = 0x00, room_id = 0x04, world_id = 0x0E, name = 'Maleficent and Boogie' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x05, world_id = 0x0E, name = 'Christmas Town' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x05, world_id = 0x0E, name = 'Smog From the Workshop' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x06, world_id = 0x0E, name = 'There Are Heartless Here Too?' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x06, world_id = 0x0E, name = 'Follow the Footprints' },
  Event:new{ event_id = 0x0005, battle_id = 0x0005, map_id = 0x0005, fight_id = 0x00, room_id = 0x06, world_id = 0x0E, name = "Everyone's Roles" },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x06, world_id = 0x0E, name = "Jack's Programme" },
  Event:new{ event_id = 0x0035, battle_id = 0x0035, map_id = 0x0035, fight_id = 0x00, room_id = 0x06, world_id = 0x0E, name = 'Heartless Waves Battle' },
  Event:new{ event_id = 0x0058, battle_id = 0x0058, map_id = 0x0058, fight_id = 0x00, room_id = 0x06, world_id = 0x0E, name = 'A Christmas Concern' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x07, world_id = 0x0E, name = 'The Big Present Plot' },
  Event:new{ event_id = 0x0040, battle_id = 0x0040, map_id = 0x0040, fight_id = 0x00, room_id = 0x07, world_id = 0x0E, name = 'The Experiment Battle' },
  Event:new{ event_id = 0x0072, battle_id = 0x0072, map_id = 0x0072, fight_id = 0x00, room_id = 0x07, world_id = 0x0E, name = 'The Experiment' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x08, world_id = 0x0E, name = "Santa Claus' House" },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x08, world_id = 0x0E, name = "Where's the Real Culprit?" },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x08, world_id = 0x0E, name = 'Where Should We Leave the Present?' },
  Event:new{ event_id = 0x0012, battle_id = 0x0012, map_id = 0x0012, fight_id = 0x00, room_id = 0x08, world_id = 0x0E, name = 'The First Step' },
  Event:new{ event_id = 0x0014, battle_id = 0x0014, map_id = 0x0014, fight_id = 0x00, room_id = 0x08, world_id = 0x0E, name = 'The Stolen Presents' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x09, world_id = 0x0E, name = 'The Trick-or-Treating Goblins' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x09, world_id = 0x0E, name = 'Rescue Santa' },
  Event:new{ event_id = 0x0037, battle_id = 0x0037, map_id = 0x0037, fight_id = 0x00, room_id = 0x09, world_id = 0x0E, name = 'Oogie Boogie Battle' },
  Event:new{ event_id = 0x003B, battle_id = 0x003B, map_id = 0x003B, fight_id = 0x00, room_id = 0x09, world_id = 0x0E, name = "Boogie's Frolic" },
  Event:new{ event_id = 0x004B, battle_id = 0x004B, map_id = 0x004B, fight_id = 0x00, room_id = 0x09, world_id = 0x0E, name = 'SB Workshop Rave' },
  Event:new{ event_id = 0x0064, battle_id = 0x0064, map_id = 0x0064, fight_id = 0x00, room_id = 0x09, world_id = 0x0E, name = "Boogie's End" },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0A, world_id = 0x0E, name = 'The Culprit is of Course...' },
  Event:new{ event_id = 0x003E, battle_id = 0x003E, map_id = 0x003E, fight_id = 0x00, room_id = 0x0A, world_id = 0x0E, name = 'Trap Lock, Shock, & Barrel in Presents' },
  Event:new{ event_id = 0x003F, battle_id = 0x003F, map_id = 0x003F, fight_id = 0x00, room_id = 0x0A, world_id = 0x0E, name = 'Gift Wrapping (Wrap 100 Presents)' },
  Event:new{ event_id = 0x0048, battle_id = 0x0048, map_id = 0x0048, fight_id = 0x00, room_id = 0x0A, world_id = 0x0E, name = 'Gift Wrapping (Wrap Over 150 Presents)' },
}

local PORT_ROYAL = readonlytable{
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x00, world_id = 0x10, name = 'The View From High Ground' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x00, world_id = 0x10, name = 'Port Royal Once More' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x01, world_id = 0x10, name = 'The Undead Pirates' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x01, world_id = 0x10, name = 'The Jack Sparrow Way' },
  Event:new{ event_id = 0x0033, battle_id = 0x0033, map_id = 0x0033, fight_id = 0x00, room_id = 0x01, world_id = 0x10, name = 'Undead Pirates Battle (Immortal)' },
  Event:new{ event_id = 0x0034, battle_id = 0x0034, map_id = 0x0034, fight_id = 0x00, room_id = 0x01, world_id = 0x10, name = 'Undead Pirates Battle (1st Visit)' },
  Event:new{ event_id = 0x0035, battle_id = 0x0035, map_id = 0x0035, fight_id = 0x00, room_id = 0x01, world_id = 0x10, name = 'Undead Pirates Battle (2nd Visit)' },
  Event:new{ event_id = 0x0036, battle_id = 0x0036, map_id = 0x0036, fight_id = 0x00, room_id = 0x01, world_id = 0x10, name = 'Grim Reaper II Battle (Cursed)' },
  Event:new{ event_id = 0x005B, battle_id = 0x005B, map_id = 0x005B, fight_id = 0x00, room_id = 0x01, world_id = 0x10, name = "The Moon's Light" },
  Event:new{ event_id = 0x005C, battle_id = 0x005C, map_id = 0x005C, fight_id = 0x00, room_id = 0x01, world_id = 0x10, name = 'Chase Barbossa!' },
  Event:new{ event_id = 0x0074, battle_id = 0x0074, map_id = 0x0074, fight_id = 0x00, room_id = 0x01, world_id = 0x10, name = 'Resurrected Pirates' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x02, world_id = 0x10, name = 'Elizabeth and Will' },
  Event:new{ event_id = 0x0037, battle_id = 0x0037, map_id = 0x0037, fight_id = 0x00, room_id = 0x02, world_id = 0x10, name = 'Heartless Waves Battle' },
  Event:new{ event_id = 0x0058, battle_id = 0x0058, map_id = 0x0058, fight_id = 0x00, room_id = 0x02, world_id = 0x10, name = 'SB Time Attack' },
  Event:new{ event_id = 0x005E, battle_id = 0x005E, map_id = 0x005E, fight_id = 0x00, room_id = 0x02, world_id = 0x10, name = "Will's Request" },

  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x03, world_id = 0x10, name = 'Onward to the Island of Death' },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x03, world_id = 0x10, name = "The Black Pearl's Attack" },
  Event:new{ event_id = 0x0038, battle_id = 0x0038, map_id = 0x0038, fight_id = 0x00, room_id = 0x03, world_id = 0x10, name = 'Get Rid of the Burning Barrels!' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x04, world_id = 0x10, name = "In Will's Veins Flows" },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x04, world_id = 0x10, name = "Barbossa's Trap" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x05, world_id = 0x10, name = 'Captured Jack' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x05, world_id = 0x10, name = 'Interceptor, Discovery' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x05, world_id = 0x10, name = 'On-board Rivalry' },
  Event:new{ event_id = 0x000C, battle_id = 0x000C, map_id = 0x000C, fight_id = 0x00, room_id = 0x05, world_id = 0x10, name = 'Missing Medals' },
  Event:new{ event_id = 0x000D, battle_id = 0x000D, map_id = 0x000D, fight_id = 0x00, room_id = 0x05, world_id = 0x10, name = "Where's the Treasure Chest?" },
  Event:new{ event_id = 0x000E, battle_id = 0x000E, map_id = 0x000E, fight_id = 0x00, room_id = 0x05, world_id = 0x10, name = 'All to the Sea' },
  Event:new{ event_id = 0x0014, battle_id = 0x0014, map_id = 0x0014, fight_id = 0x00, room_id = 0x05, world_id = 0x10, name = 'Talk to Jack Sparrow and Choose \"Port Royal\" to Fight Grim Reaper II' },
  Event:new{ event_id = 0x0056, battle_id = 0x0056, map_id = 0x0056, fight_id = 0x00, room_id = 0x05, world_id = 0x10, name = 'Parlay From Organization XIII' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x06, world_id = 0x10, name = "What Happened to Will's Body?" },

  Event:new{ event_id = 0x003A, battle_id = 0x003A, map_id = 0x003A, fight_id = 0x00, room_id = 0x07, world_id = 0x10, name = 'Undead Pirates Battle (Protect the Medallion)' },
  Event:new{ event_id = 0x0051, battle_id = 0x0051, map_id = 0x0051, fight_id = 0x00, room_id = 0x07, world_id = 0x10, name = 'The True Form of the Blood Pact' },

  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x08, world_id = 0x10, name = 'To the Island of Death' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x08, world_id = 0x10, name = 'Each to His Own World' },

  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0002, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x09, world_id = 0x10, name = 'Elizabeth and Will Run Away' },
  Event:new{ event_id = 0x003B, battle_id = 0x003B, map_id = 0x003B, fight_id = 0x00, room_id = 0x09, world_id = 0x10, name = 'Infinite Undead Pirates Battle (With Time Limit)' },
  Event:new{ event_id = 0x0064, battle_id = 0x0064, map_id = 0x0064, fight_id = 0x00, room_id = 0x09, world_id = 0x10, name = 'The Signal!' },
  Event:new{ event_id = 0x0065, battle_id = 0x0065, map_id = 0x0065, fight_id = 0x00, room_id = 0x09, world_id = 0x10, name = "Jack Isn't Here" },

  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x0A, world_id = 0x10, name = 'Immortal Body' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0A, world_id = 0x10, name = 'Creeping Shadows' },
  Event:new{ event_id = 0x003C, battle_id = 0x003C, map_id = 0x003C, fight_id = 0x00, room_id = 0x0A, world_id = 0x10, name = 'Barbossa Battle' },
  Event:new{ event_id = 0x006F, battle_id = 0x006F, map_id = 0x006F, fight_id = 0x00, room_id = 0x0A, world_id = 0x10, name = 'Eternal Slumber' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0B, world_id = 0x10, name = 'The Ship Graveyard' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0E, world_id = 0x10, name = 'Give Back the Gold Coin!' },
  Event:new{ event_id = 0x003E, battle_id = 0x003E, map_id = 0x003E, fight_id = 0x00, room_id = 0x0E, world_id = 0x10, name = 'Gambler Nobody Battle' },
  Event:new{ event_id = 0x007B, battle_id = 0x007B, map_id = 0x007B, fight_id = 0x00, room_id = 0x0E, world_id = 0x10, name = 'The Captain is Elizabeth?' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x11, world_id = 0x10, name = 'What Happened On the Island?' },
  Event:new{ event_id = 0x003D, battle_id = 0x003D, map_id = 0x003D, fight_id = 0x00, room_id = 0x11, world_id = 0x10, name = 'The Blood of Atonement' },
  Event:new{ event_id = 0x0067, battle_id = 0x0067, map_id = 0x0067, fight_id = 0x00, room_id = 0x11, world_id = 0x10, name = "You Can't Trust a Pirate" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x12, world_id = 0x10, name = 'Ambush Battle - Tornado Step x2, Cannon Gun x1, Shadow x4' },
  Event:new{ event_id = 0x0055, battle_id = 0x0055, map_id = 0x0055, fight_id = 0x00, room_id = 0x12, world_id = 0x10, name = 'Grim Reaper I Battle (Normal)' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x13, world_id = 0x10, name = 'Ambush Battle 1 - Undead Pirate B x2, Lance Soldier x2' },
  Event:new{ event_id = 0x000B, battle_id = 0x000B, map_id = 0x000B, fight_id = 0x00, room_id = 0x13, world_id = 0x10, name = 'Ambush Battle 2 - Undead Pirate B x3, Rabid Dog x5' },

  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x15, world_id = 0x10, name = 'Ambush Battle - Undead Pirate A x2, Undead Pirate B x2' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x16, world_id = 0x10, name = 'Ambush Battle - Undead Pirate B x1, Air Pirate x1, Cannon Gun x2' },

  Event:new{ event_id = 0x004F, battle_id = 0x004F, map_id = 0x004F, fight_id = 0x00, room_id = 0x17, world_id = 0x10, name = 'The Cursed Medallion' },

  Event:new{ event_id = 0x0052, battle_id = 0x0052, map_id = 0x0052, fight_id = 0x00, room_id = 0x18, world_id = 0x10, name = 'Showdown With the Grim Reaper' },
  Event:new{ event_id = 0x0054, battle_id = 0x0054, map_id = 0x0054, fight_id = 0x00, room_id = 0x18, world_id = 0x10, name = 'The Legendary Pirate, Jack Sparrow' },

  Event:new{ event_id = 0x0053, battle_id = 0x0053, map_id = 0x0053, fight_id = 0x00, room_id = 0x19, world_id = 0x10, name = 'The Plan to Rescue Elizabeth' },
}

local SPACE_PARANOIDS = readonlytable{
  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x00, world_id = 0x11, name = 'Security Program, Tron' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0002, battle_id = 0x0000, map_id = 0x0001, fight_id = 0x00, room_id = 0x00, world_id = 0x11, name = "The MCP's Aim" },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x00, world_id = 0x11, name = 'Escape From the Cell' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x00, world_id = 0x11, name = "Tron's Request" },
  Event:new{ event_id = 0x0006, battle_id = 0x0006, map_id = 0x0006, fight_id = 0x00, room_id = 0x00, world_id = 0x11, name = "Where's Tron?" },
  Event:new{ event_id = 0x0007, battle_id = 0x0007, map_id = 0x0007, fight_id = 0x00, room_id = 0x00, world_id = 0x11, name = 'Game Clear!' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x00, world_id = 0x11, name = 'Hurry to the Game Area' },
  Event:new{ event_id = 0x000C, battle_id = 0x000C, map_id = 0x000C, fight_id = 0x00, room_id = 0x00, world_id = 0x11, name = 'Prevent an All-Out War' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x01, world_id = 0x11, name = 'Space Paranoids' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x01, world_id = 0x11, name = 'Energy Core Activated!' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x01, world_id = 0x11, name = "Heartless' Control" },
  Event:new{ event_id = 0x0033, battle_id = 0x0033, map_id = 0x0033, fight_id = 0x00, room_id = 0x01, world_id = 0x11, name = 'Find the Real Parts!' },
  Event:new{ event_id = 0x0054, battle_id = 0x0054, map_id = 0x0054, fight_id = 0x00, room_id = 0x01, world_id = 0x11, name = 'Energy Restored' },
  Event:new{ event_id = 0x0055, battle_id = 0x0055, map_id = 0x0055, fight_id = 0x00, room_id = 0x01, world_id = 0x11, name = 'The Path is Ready' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x02, world_id = 0x11, name = 'Invitation to the Game' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x02, world_id = 0x11, name = "Tron's in Danger!" },
  Event:new{ event_id = 0x0035, battle_id = 0x0035, map_id = 0x0035, fight_id = 0x00, room_id = 0x02, world_id = 0x11, name = 'Heartless Waves Battle' },
  Event:new{ event_id = 0x003D, battle_id = 0x003D, map_id = 0x003D, fight_id = 0x00, room_id = 0x02, world_id = 0x11, name = 'Light Cycle (Defeat 5 of the Heartless)' },
  Event:new{ event_id = 0x003E, battle_id = 0x003E, map_id = 0x003E, fight_id = 0x00, room_id = 0x02, world_id = 0x11, name = 'Light Cycle (Head For the Goal)' },
  Event:new{ event_id = 0x003F, battle_id = 0x003F, map_id = 0x003F, fight_id = 0x00, room_id = 0x02, world_id = 0x11, name = 'Light Cycle (Mission: Defeat 30 or More Heartlesses and Head For the Goal)' },
  Event:new{ event_id = 0x0058, battle_id = 0x0058, map_id = 0x0058, fight_id = 0x00, room_id = 0x02, world_id = 0x11, name = 'Escape Route' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x03, world_id = 0x11, name = 'The Password is...' },
  Event:new{ event_id = 0x0036, battle_id = 0x0036, map_id = 0x0036, fight_id = 0x00, room_id = 0x03, world_id = 0x11, name = 'Infinite Heartless Waves (Stop All of the Monitors)' },
  Event:new{ event_id = 0x005B, battle_id = 0x005B, map_id = 0x005B, fight_id = 0x00, room_id = 0x03, world_id = 0x11, name = "Tron's Restoration!" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x04, world_id = 0x11, name = 'Dangerous Program Initiated' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x04, world_id = 0x11, name = 'Almost There' },
  Event:new{ event_id = 0x0037, battle_id = 0x0037, map_id = 0x0037, fight_id = 0x00, room_id = 0x04, world_id = 0x11, name = 'Hostile Program Battle' },
  Event:new{ event_id = 0x0038, battle_id = 0x0038, map_id = 0x0038, fight_id = 0x00, room_id = 0x04, world_id = 0x11, name = 'Heartless Waves Battle' },
  Event:new{ event_id = 0x005D, battle_id = 0x005D, map_id = 0x005D, fight_id = 0x00, room_id = 0x04, world_id = 0x11, name = 'Program Erasure' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x05, world_id = 0x11, name = "The MCP's Preparations For Destruction" },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x05, world_id = 0x11, name = 'Tron and Ansem' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x05, world_id = 0x11, name = 'Now, to Hollow Bastion' },
  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x05, world_id = 0x11, name = 'Reception Successful!' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x07, world_id = 0x11, name = 'In the Sea of Data' },
  Event:new{ event_id = 0x0039, battle_id = 0x0039, map_id = 0x0039, fight_id = 0x00, room_id = 0x07, world_id = 0x11, name = 'Heartless Waves Battle' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x08, world_id = 0x11, name = 'Arrival at the Central Computer Core' },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x09, world_id = 0x11, name = 'Crash, Commander Sark' },
  Event:new{ event_id = 0x003A, battle_id = 0x003A, map_id = 0x003A, fight_id = 0x00, room_id = 0x09, world_id = 0x11, name = 'Sark Battle (Normal)' },
  Event:new{ event_id = 0x003B, battle_id = 0x003B, map_id = 0x003B, fight_id = 0x00, room_id = 0x09, world_id = 0x11, name = 'Sark (Giant) and the MCP Battle' },
  Event:new{ event_id = 0x006A, battle_id = 0x006A, map_id = 0x006A, fight_id = 0x00, room_id = 0x09, world_id = 0x11, name = "All of the Function's Will." },
  Event:new{ event_id = 0x006B, battle_id = 0x006B, map_id = 0x006B, fight_id = 0x00, room_id = 0x09, world_id = 0x11, name = "The MCP's Breakdown" },

  Event:new{ event_id = 0x000A, battle_id = 0x000A, map_id = 0x000A, fight_id = 0x00, room_id = 0x0A, world_id = 0x11, name = "The Solar Sailer's Departure" },
}

local THE_WORLD_THAT_NEVER_WAS = readonlytable{
  Event:new{ event_id = 0x0033, battle_id = 0x0033, map_id = 0x0033, fight_id = 0x00, room_id = 0x00, world_id = 0x12, name = 'Number 13: Roxas' },
  Event:new{ event_id = 0x0073, battle_id = 0x0073, map_id = 0x0073, fight_id = 0x00, room_id = 0x00, world_id = 0x12, name = 'Taking Care of the Rat' },
  Event:new{ event_id = 0x0074, battle_id = 0x0074, map_id = 0x0074, fight_id = 0x00, room_id = 0x00, world_id = 0x12, name = "The Keyblade's Hero" },
  Event:new{ event_id = 0x0075, battle_id = 0x0075, map_id = 0x0075, fight_id = 0x00, room_id = 0x00, world_id = 0x12, name = "Saix's Message" },
  Event:new{ event_id = 0x0076, battle_id = 0x0076, map_id = 0x0076, fight_id = 0x00, room_id = 0x00, world_id = 0x12, name = 'Let the Fun Begin' },
  Event:new{ event_id = 0x0077, battle_id = 0x0077, map_id = 0x0077, fight_id = 0x00, room_id = 0x00, world_id = 0x12, name = 'Those Who Remain' },
  Event:new{ event_id = 0x007B, battle_id = 0x007B, map_id = 0x007B, fight_id = 0x00, room_id = 0x00, world_id = 0x12, name = 'Taking Care of the Rat (Theater Mode)' },
  Event:new{ event_id = 0x007E, battle_id = 0x007E, map_id = 0x007E, fight_id = 0x00, room_id = 0x00, world_id = 0x12, name = 'Number 13: Roxas (Theater Mode)' },
  Event:new{ event_id = 0x0081, battle_id = 0x0081, map_id = 0x0081, fight_id = 0x00, room_id = 0x00, world_id = 0x12, name = "The Keyblade's Hero (Theater Mode)" },
  Event:new{ event_id = 0x0083, battle_id = 0x0083, map_id = 0x0083, fight_id = 0x00, room_id = 0x00, world_id = 0x12, name = "Saix's Message (Theater Mode)" },
  Event:new{ event_id = 0x0085, battle_id = 0x0085, map_id = 0x0085, fight_id = 0x00, room_id = 0x00, world_id = 0x12, name = 'Let the Fun Begin (Theater Mode)' },
  Event:new{ event_id = 0x0088, battle_id = 0x0088, map_id = 0x0088, fight_id = 0x00, room_id = 0x00, world_id = 0x12, name = 'Those Who Remain (Theater Mode)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x01, world_id = 0x12, name = 'The World That Never Was' },
  Event:new{ event_id = 0x0040, battle_id = 0x0040, map_id = 0x0040, fight_id = 0x00, room_id = 0x01, world_id = 0x12, name = 'Through the Portal' },
  Event:new{ event_id = 0x0082, battle_id = 0x0082, map_id = 0x0082, fight_id = 0x00, room_id = 0x01, world_id = 0x12, name = 'Through the Portal (Theater Mode)' },
  Event:new{ event_id = 0x00B2, battle_id = 0x00B2, map_id = 0x00B2, fight_id = 0x00, room_id = 0x01, world_id = 0x12, name = 'The World That Never Was (Theater Mode - English)' },
  Event:new{ event_id = 0x00DB, battle_id = 0x00DB, map_id = 0x00DB, fight_id = 0x00, room_id = 0x01, world_id = 0x12, name = 'The World That Never Was (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = 'His Awakening' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = 'There Was No One There' },
  Event:new{ event_id = 0x0036, battle_id = 0x0036, map_id = 0x0036, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = 'Keyblade vs. Keyblade' },
  Event:new{ event_id = 0x0037, battle_id = 0x0037, map_id = 0x0037, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = 'Ending the Battle' },
  Event:new{ event_id = 0x0052, battle_id = 0x0052, map_id = 0x0052, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = "Roxas's Past" },
  Event:new{ event_id = 0x0053, battle_id = 0x0053, map_id = 0x0053, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = 'Secret Sorrow' },
  Event:new{ event_id = 0x0078, battle_id = 0x0078, map_id = 0x0078, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = 'How It All Began' },
  Event:new{ event_id = 0x007C, battle_id = 0x007C, map_id = 0x007C, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = 'Keyblade vs. Keyblade (Theater Mode)' },
  Event:new{ event_id = 0x007D, battle_id = 0x007D, map_id = 0x007D, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = "Roxas's Past (Theater Mode)" },
  Event:new{ event_id = 0x007F, battle_id = 0x007F, map_id = 0x007F, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = 'Ending the Battle (Theater Mode)' },
  Event:new{ event_id = 0x0080, battle_id = 0x0080, map_id = 0x0080, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = 'Secret Sorrow (Theater Mode)' },
  Event:new{ event_id = 0x00B3, battle_id = 0x00B3, map_id = 0x00B3, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = 'His Awakening (Theater Mode - English)' },
  Event:new{ event_id = 0x00B6, battle_id = 0x00B6, map_id = 0x00B6, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = 'There Was No One There (Theater Mode - English)' },
  Event:new{ event_id = 0x00C8, battle_id = 0x00C8, map_id = 0x00C8, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = 'How It All Began (Theater Mode - English)' },
  Event:new{ event_id = 0x00DC, battle_id = 0x00DC, map_id = 0x00DC, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = 'His Awakening (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00DF, battle_id = 0x00DF, map_id = 0x00DF, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = 'There Was No One There (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00F1, battle_id = 0x00F1, map_id = 0x00F1, fight_id = 0x00, room_id = 0x03, world_id = 0x12, name = 'How It All Began (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x04, world_id = 0x12, name = 'A Dead End?' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x04, world_id = 0x12, name = 'The Path to the Castle' },
  Event:new{ event_id = 0x005F, battle_id = 0x005F, map_id = 0x005F, fight_id = 0x00, room_id = 0x04, world_id = 0x12, name = 'Waves of Heartless' },
  Event:new{ event_id = 0x00B7, battle_id = 0x00B7, map_id = 0x00B7, fight_id = 0x00, room_id = 0x04, world_id = 0x12, name = 'A Dead End? (Theater Mode - English)' },
  Event:new{ event_id = 0x00B9, battle_id = 0x00B9, map_id = 0x00B9, fight_id = 0x00, room_id = 0x04, world_id = 0x12, name = 'The Path to the Castle (Theater Mode - English)' },
  Event:new{ event_id = 0x00CC, battle_id = 0x00CC, map_id = 0x00CC, fight_id = 0x00, room_id = 0x04, world_id = 0x12, name = 'Waves of Heartless (Theater Mode - English)' },
  Event:new{ event_id = 0x00E0, battle_id = 0x00E0, map_id = 0x00E0, fight_id = 0x00, room_id = 0x04, world_id = 0x12, name = 'A Dead End? (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00E2, battle_id = 0x00E2, map_id = 0x00E2, fight_id = 0x00, room_id = 0x04, world_id = 0x12, name = 'The Path to the Castle (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00F5, battle_id = 0x00F5, map_id = 0x00F5, fight_id = 0x00, room_id = 0x04, world_id = 0x12, name = 'Waves of Heartless (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x05, world_id = 0x12, name = 'Kairi and Naminé' },
  Event:new{ event_id = 0x00B8, battle_id = 0x00B8, map_id = 0x00B8, fight_id = 0x00, room_id = 0x05, world_id = 0x12, name = 'Kairi and Naminé (Theater Mode - English)' },
  Event:new{ event_id = 0x00E1, battle_id = 0x00E1, map_id = 0x00E1, fight_id = 0x00, room_id = 0x05, world_id = 0x12, name = 'Kairi and Naminé (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x06, world_id = 0x12, name = 'The Castle That Never Was' },
  Event:new{ event_id = 0x00BA, battle_id = 0x00BA, map_id = 0x00BA, fight_id = 0x00, room_id = 0x06, world_id = 0x12, name = 'The Castle That Never Was (Theater Mode - English)' },
  Event:new{ event_id = 0x00E3, battle_id = 0x00E3, map_id = 0x00E3, fight_id = 0x00, room_id = 0x06, world_id = 0x12, name = 'The Castle That Never Was (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0084, battle_id = 0x0084, map_id = 0x0084, fight_id = 0x00, room_id = 0x09, world_id = 0x12, name = 'The Chamber of Repose (Theater Mode - English)' },
  Event:new{ event_id = 0x0086, battle_id = 0x0086, map_id = 0x0086, fight_id = 0x00, room_id = 0x09, world_id = 0x12, name = 'The Chamber of Repose (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x0104, battle_id = 0x0104, map_id = 0x0104, fight_id = 0x00, room_id = 0x09, world_id = 0x12, name = 'The Chamber of Repose' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0A, world_id = 0x12, name = 'Together Again' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x0A, world_id = 0x12, name = 'Xigbar' },
  Event:new{ event_id = 0x0039, battle_id = 0x0039, map_id = 0x0039, fight_id = 0x00, room_id = 0x0A, world_id = 0x12, name = 'Xigbar Battle (Normal)' },
  Event:new{ event_id = 0x0064, battle_id = 0x0064, map_id = 0x0064, fight_id = 0x00, room_id = 0x0A, world_id = 0x12, name = 'Xigbar Battle (Data)' },
  Event:new{ event_id = 0x006B, battle_id = 0x006B, map_id = 0x006B, fight_id = 0x00, room_id = 0x0A, world_id = 0x12, name = 'Data Xigbar Appears' },
  Event:new{ event_id = 0x006C, battle_id = 0x006C, map_id = 0x006C, fight_id = 0x00, room_id = 0x0A, world_id = 0x12, name = 'Data Xigbar Disappears' },
  Event:new{ event_id = 0x00BC, battle_id = 0x00BC, map_id = 0x00BC, fight_id = 0x00, room_id = 0x0A, world_id = 0x12, name = 'Together Again (Theater Mode - English)' },
  Event:new{ event_id = 0x00BE, battle_id = 0x00BE, map_id = 0x00BE, fight_id = 0x00, room_id = 0x0A, world_id = 0x12, name = 'Xigbar (Theater Mode - English)' },
  Event:new{ event_id = 0x00BF, battle_id = 0x00BF, map_id = 0x00BF, fight_id = 0x00, room_id = 0x0A, world_id = 0x12, name = 'On Our Way (Theater Mode - English)' },
  Event:new{ event_id = 0x00E5, battle_id = 0x00E5, map_id = 0x00E5, fight_id = 0x00, room_id = 0x0A, world_id = 0x12, name = 'Together Again (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00E7, battle_id = 0x00E7, map_id = 0x00E7, fight_id = 0x00, room_id = 0x0A, world_id = 0x12, name = 'Xigbar (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00E8, battle_id = 0x00E8, map_id = 0x00E8, fight_id = 0x00, room_id = 0x0A, world_id = 0x12, name = 'On Our Way (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0B, world_id = 0x12, name = "It's You!" },
  Event:new{ event_id = 0x00C1, battle_id = 0x00C1, map_id = 0x00C1, fight_id = 0x00, room_id = 0x0B, world_id = 0x12, name = "It's You! (Theater Mode - English)" },
  Event:new{ event_id = 0x00EA, battle_id = 0x00EA, map_id = 0x00EA, fight_id = 0x00, room_id = 0x0B, world_id = 0x12, name = "It's You! (Theater Mode - Japanese)" },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0C, world_id = 0x12, name = 'The Truth About DiZ' },
  Event:new{ event_id = 0x00BD, battle_id = 0x00BD, map_id = 0x00BD, fight_id = 0x00, room_id = 0x0C, world_id = 0x12, name = 'The Truth About DiZ (Theater Mode - English)' },
  Event:new{ event_id = 0x00E6, battle_id = 0x00E6, map_id = 0x00E6, fight_id = 0x00, room_id = 0x0C, world_id = 0x12, name = 'The Truth About DiZ (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0D, world_id = 0x12, name = 'The Open Path' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x0D, world_id = 0x12, name = 'A New Path' },
  Event:new{ event_id = 0x00C5, battle_id = 0x00C5, map_id = 0x00C5, fight_id = 0x00, room_id = 0x0D, world_id = 0x12, name = 'The Open Path (Theater Mode - English)' },
  Event:new{ event_id = 0x00CA, battle_id = 0x00CA, map_id = 0x00CA, fight_id = 0x00, room_id = 0x0D, world_id = 0x12, name = 'A New Path (Theater Mode - English)' },
  Event:new{ event_id = 0x00EE, battle_id = 0x00EE, map_id = 0x00EE, fight_id = 0x00, room_id = 0x0D, world_id = 0x12, name = 'The Open Path (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00F3, battle_id = 0x00F3, map_id = 0x00F3, fight_id = 0x00, room_id = 0x0D, world_id = 0x12, name = 'A New Path (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0E, world_id = 0x12, name = 'Luxord' },
  Event:new{ event_id = 0x003A, battle_id = 0x003A, map_id = 0x003A, fight_id = 0x00, room_id = 0x0E, world_id = 0x12, name = 'Luxord Battle (Normal)' },
  Event:new{ event_id = 0x0065, battle_id = 0x0065, map_id = 0x0065, fight_id = 0x00, room_id = 0x0E, world_id = 0x12, name = 'Luxord Battle (Data)' },
  Event:new{ event_id = 0x006F, battle_id = 0x006F, map_id = 0x006F, fight_id = 0x00, room_id = 0x0E, world_id = 0x12, name = 'Data Luxord Appears' },
  Event:new{ event_id = 0x0070, battle_id = 0x0070, map_id = 0x0070, fight_id = 0x00, room_id = 0x0E, world_id = 0x12, name = 'Data Luxord Disappears' },
  Event:new{ event_id = 0x00C3, battle_id = 0x00C3, map_id = 0x00C3, fight_id = 0x00, room_id = 0x0E, world_id = 0x12, name = 'Luxord (Theater Mode - English)' },
  Event:new{ event_id = 0x00C4, battle_id = 0x00C4, map_id = 0x00C4, fight_id = 0x00, room_id = 0x0E, world_id = 0x12, name = 'As the Battle Ends (Theater Mode - English)' },
  Event:new{ event_id = 0x00EC, battle_id = 0x00EC, map_id = 0x00EC, fight_id = 0x00, room_id = 0x0E, world_id = 0x12, name = 'Luxord (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00ED, battle_id = 0x00ED, map_id = 0x00ED, fight_id = 0x00, room_id = 0x0E, world_id = 0x12, name = 'As the Battle Ends (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x0F, world_id = 0x12, name = 'Saix' },
  Event:new{ event_id = 0x0038, battle_id = 0x0038, map_id = 0x0038, fight_id = 0x00, room_id = 0x0F, world_id = 0x12, name = 'Saix Battle (Normal)' },
  Event:new{ event_id = 0x0060, battle_id = 0x0060, map_id = 0x0060, fight_id = 0x00, room_id = 0x0F, world_id = 0x12, name = 'A Friend Within' },
  Event:new{ event_id = 0x0066, battle_id = 0x0066, map_id = 0x0066, fight_id = 0x00, room_id = 0x0F, world_id = 0x12, name = 'Saix Battle (Data)' },
  Event:new{ event_id = 0x006D, battle_id = 0x006D, map_id = 0x006D, fight_id = 0x00, room_id = 0x0F, world_id = 0x12, name = 'Data Saix Appears' },
  Event:new{ event_id = 0x006E, battle_id = 0x006E, map_id = 0x006E, fight_id = 0x00, room_id = 0x0F, world_id = 0x12, name = 'Data Saix Disappears' },
  Event:new{ event_id = 0x007A, battle_id = 0x007A, map_id = 0x007A, fight_id = 0x00, room_id = 0x0F, world_id = 0x12, name = 'I Wish I Could Meet Him, Too' },
  Event:new{ event_id = 0x00C6, battle_id = 0x00C6, map_id = 0x00C6, fight_id = 0x00, room_id = 0x0F, world_id = 0x12, name = 'Saix (Theater Mode - English)' },
  Event:new{ event_id = 0x00C7, battle_id = 0x00C7, map_id = 0x00C7, fight_id = 0x00, room_id = 0x0F, world_id = 0x12, name = 'A Friend Within (Theater Mode - English)' },
  Event:new{ event_id = 0x00C9, battle_id = 0x00C9, map_id = 0x00C9, fight_id = 0x00, room_id = 0x0F, world_id = 0x12, name = 'I Wish I Could Meet Him, Too (Theater Mode - English)' },
  Event:new{ event_id = 0x00EF, battle_id = 0x00EF, map_id = 0x00EF, fight_id = 0x00, room_id = 0x0F, world_id = 0x12, name = 'Saix (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00F0, battle_id = 0x00F0, map_id = 0x00F0, fight_id = 0x00, room_id = 0x0F, world_id = 0x12, name = 'A Friend Within (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00F2, battle_id = 0x00F2, map_id = 0x00F2, fight_id = 0x00, room_id = 0x0F, world_id = 0x12, name = 'I Wish I Could Meet Him, Too (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x10, world_id = 0x12, name = 'Riku!' },
  Event:new{ event_id = 0x0002, battle_id = 0x0002, map_id = 0x0002, fight_id = 0x00, room_id = 0x10, world_id = 0x12, name = "Ansem's Wager" },
  Event:new{ event_id = 0x0003, battle_id = 0x0003, map_id = 0x0003, fight_id = 0x00, room_id = 0x10, world_id = 0x12, name = 'Farewell' },
  Event:new{ event_id = 0x0005, battle_id = 0x0005, map_id = 0x0005, fight_id = 0x00, room_id = 0x10, world_id = 0x12, name = 'Back to His Old Self' },
  Event:new{ event_id = 0x00BB, battle_id = 0x00BB, map_id = 0x00BB, fight_id = 0x00, room_id = 0x10, world_id = 0x12, name = 'Riku! (Theater Mode - English)' },
  Event:new{ event_id = 0x00C2, battle_id = 0x00C2, map_id = 0x00C2, fight_id = 0x00, room_id = 0x10, world_id = 0x12, name = "Ansem's Wager (Theater Mode - English)" },
  Event:new{ event_id = 0x00CB, battle_id = 0x00CB, map_id = 0x00CB, fight_id = 0x00, room_id = 0x10, world_id = 0x12, name = 'Farewell (Theater Mode - English)' },
  Event:new{ event_id = 0x00CD, battle_id = 0x00CD, map_id = 0x00CD, fight_id = 0x00, room_id = 0x10, world_id = 0x12, name = 'Back to His Old Self (Theater Mode - English)' },
  Event:new{ event_id = 0x00E4, battle_id = 0x00E4, map_id = 0x00E4, fight_id = 0x00, room_id = 0x10, world_id = 0x12, name = 'Riku! (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00EB, battle_id = 0x00EB, map_id = 0x00EB, fight_id = 0x00, room_id = 0x10, world_id = 0x12, name = "Ansem's Wager (Theater Mode - Japanese)" },
  Event:new{ event_id = 0x00F4, battle_id = 0x00F4, map_id = 0x00F4, fight_id = 0x00, room_id = 0x10, world_id = 0x12, name = 'Farewell (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00F6, battle_id = 0x00F6, map_id = 0x00F6, fight_id = 0x00, room_id = 0x10, world_id = 0x12, name = 'Back to His Old Self (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x11, world_id = 0x12, name = 'Maleficent and Pete' },
  Event:new{ event_id = 0x00CE, battle_id = 0x00CE, map_id = 0x00CE, fight_id = 0x00, room_id = 0x11, world_id = 0x12, name = 'Maleficent and Pete (Theater Mode - English)' },
  Event:new{ event_id = 0x00F7, battle_id = 0x00F7, map_id = 0x00F7, fight_id = 0x00, room_id = 0x11, world_id = 0x12, name = 'Maleficent and Pete (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x12, world_id = 0x12, name = 'Kingdom Hearts Will Soon Be Ready' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0002, battle_id = 0x0000, map_id = 0x0002, fight_id = 0x00, room_id = 0x12, world_id = 0x12, name = 'Why Do You Hate the Darkness?' },
  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0003, battle_id = 0x0000, map_id = 0x0002, fight_id = 0x00, room_id = 0x12, world_id = 0x12, name = 'The Door to Kingdom Hearts' },
  Event:new{ event_id = 0x0004, battle_id = 0x0004, map_id = 0x0004, fight_id = 0x00, room_id = 0x12, world_id = 0x12, name = 'Opening the Door' },
  Event:new{ event_id = 0x00C0, battle_id = 0x00C0, map_id = 0x00C0, fight_id = 0x00, room_id = 0x12, world_id = 0x12, name = 'Kingdom Hearts Will Soon Be Ready (Theater Mode - English)' },
  Event:new{ event_id = 0x00CF, battle_id = 0x00CF, map_id = 0x00CF, fight_id = 0x00, room_id = 0x12, world_id = 0x12, name = 'Why Do You Hate the Darkness? (Theater Mode - English)' },
  Event:new{ event_id = 0x00D2, battle_id = 0x00D2, map_id = 0x00D2, fight_id = 0x00, room_id = 0x12, world_id = 0x12, name = 'The Door to Kingdom Hearts (Theater Mode - English)' },
  Event:new{ event_id = 0x00D3, battle_id = 0x00D3, map_id = 0x00D3, fight_id = 0x00, room_id = 0x12, world_id = 0x12, name = 'Opening the Door (Theater Mode - English)' },
  Event:new{ event_id = 0x00E9, battle_id = 0x00E9, map_id = 0x00E9, fight_id = 0x00, room_id = 0x12, world_id = 0x12, name = 'Kingdom Hearts Will Soon Be Ready (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00F8, battle_id = 0x00F8, map_id = 0x00F8, fight_id = 0x00, room_id = 0x12, world_id = 0x12, name = 'Why Do You Hate the Darkness? (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00FB, battle_id = 0x00FB, map_id = 0x00FB, fight_id = 0x00, room_id = 0x12, world_id = 0x12, name = 'The Door to Kingdom Hearts (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00FC, battle_id = 0x00FC, map_id = 0x00FC, fight_id = 0x00, room_id = 0x12, world_id = 0x12, name = 'Opening the Door (Theater Mode - Japanese)' },

  -- TODO: Manual entry, needs testing that event, battle, and map IDs match
  Event:new{ event_id = 0x0001, battle_id = 0x0000, map_id = 0x0000, fight_id = 0x00, room_id = 0x13, world_id = 0x12, name = 'A Grand Battle' },
  Event:new{ event_id = 0x003B, battle_id = 0x003B, map_id = 0x003B, fight_id = 0x00, room_id = 0x13, world_id = 0x12, name = 'Xemnas I Battle (Normal)' },
  Event:new{ event_id = 0x0061, battle_id = 0x0061, map_id = 0x0061, fight_id = 0x00, room_id = 0x13, world_id = 0x12, name = 'Xemnas I Battle (Data)' },
  Event:new{ event_id = 0x0067, battle_id = 0x0067, map_id = 0x0067, fight_id = 0x00, room_id = 0x13, world_id = 0x12, name = 'Data Xemnas I Appears' },
  Event:new{ event_id = 0x0068, battle_id = 0x0068, map_id = 0x0068, fight_id = 0x00, room_id = 0x13, world_id = 0x12, name = 'Data Xemnas I Disappears' },
  Event:new{ event_id = 0x00D0, battle_id = 0x00D0, map_id = 0x00D0, fight_id = 0x00, room_id = 0x13, world_id = 0x12, name = 'A Grand Battle (Theater Mode - English)' },
  Event:new{ event_id = 0x00D1, battle_id = 0x00D1, map_id = 0x00D1, fight_id = 0x00, room_id = 0x13, world_id = 0x12, name = "Kairi's Voice (Theater Mode - English)" },
  Event:new{ event_id = 0x00F9, battle_id = 0x00F9, map_id = 0x00F9, fight_id = 0x00, room_id = 0x13, world_id = 0x12, name = 'A Grand Battle (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00FA, battle_id = 0x00FA, map_id = 0x00FA, fight_id = 0x00, room_id = 0x13, world_id = 0x12, name = "Kairi's Voice (Theater Mode - Japanese)" },

  Event:new{ event_id = 0x004A, battle_id = 0x004A, map_id = 0x004A, fight_id = 0x00, room_id = 0x14, world_id = 0x12, name = 'Xemnas II Battle (Normal)' },
  Event:new{ event_id = 0x0055, battle_id = 0x0055, map_id = 0x0055, fight_id = 0x00, room_id = 0x14, world_id = 0x12, name = 'The Final Battle' },
  Event:new{ event_id = 0x0062, battle_id = 0x0062, map_id = 0x0062, fight_id = 0x00, room_id = 0x14, world_id = 0x12, name = 'Xemnas II Battle (Data)' },
  Event:new{ event_id = 0x0069, battle_id = 0x0069, map_id = 0x0069, fight_id = 0x00, room_id = 0x14, world_id = 0x12, name = 'Data Xemnas II Appears' },
  Event:new{ event_id = 0x006A, battle_id = 0x006A, map_id = 0x006A, fight_id = 0x00, room_id = 0x14, world_id = 0x12, name = 'Data Xemnas II Disappears' },
  Event:new{ event_id = 0x00D9, battle_id = 0x00D9, map_id = 0x00D9, fight_id = 0x00, room_id = 0x14, world_id = 0x12, name = 'The Final Battle (Theater Mode - English)' },
  Event:new{ event_id = 0x00DA, battle_id = 0x00DA, map_id = 0x00DA, fight_id = 0x00, room_id = 0x14, world_id = 0x12, name = 'The Edge of Oblivion (Theater Mode - English)' },
  Event:new{ event_id = 0x0102, battle_id = 0x0102, map_id = 0x0102, fight_id = 0x00, room_id = 0x14, world_id = 0x12, name = 'The Final Battle (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x0103, battle_id = 0x0103, map_id = 0x0103, fight_id = 0x00, room_id = 0x14, world_id = 0x12, name = 'The Edge of Oblivion (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0001, battle_id = 0x0001, map_id = 0x0001, fight_id = 0x00, room_id = 0x15, world_id = 0x12, name = 'Why Sora Was Chosen' },
  Event:new{ event_id = 0x0041, battle_id = 0x0041, map_id = 0x0041, fight_id = 0x00, room_id = 0x15, world_id = 0x12, name = 'Roxas Battle (Normal)' },
  Event:new{ event_id = 0x0063, battle_id = 0x0063, map_id = 0x0063, fight_id = 0x00, room_id = 0x15, world_id = 0x12, name = 'Roxas Battle (Data)' },
  Event:new{ event_id = 0x0071, battle_id = 0x0071, map_id = 0x0071, fight_id = 0x00, room_id = 0x15, world_id = 0x12, name = 'Data Roxas Appears' },
  Event:new{ event_id = 0x0072, battle_id = 0x0072, map_id = 0x0072, fight_id = 0x00, room_id = 0x15, world_id = 0x12, name = 'Data Roxas Disappears' },
  Event:new{ event_id = 0x0079, battle_id = 0x0079, map_id = 0x0079, fight_id = 0x00, room_id = 0x15, world_id = 0x12, name = 'Time to Sleep' },
  Event:new{ event_id = 0x00B4, battle_id = 0x00B4, map_id = 0x00B4, fight_id = 0x00, room_id = 0x15, world_id = 0x12, name = 'Why Sora Was Chosen (Theater Mode - English)' },
  Event:new{ event_id = 0x00B5, battle_id = 0x00B5, map_id = 0x00B5, fight_id = 0x00, room_id = 0x15, world_id = 0x12, name = 'Time to Sleep (Theater Mode - English)' },
  Event:new{ event_id = 0x00DD, battle_id = 0x00DD, map_id = 0x00DD, fight_id = 0x00, room_id = 0x15, world_id = 0x12, name = 'Why Sora Was Chosen (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x00DE, battle_id = 0x00DE, map_id = 0x00DE, fight_id = 0x00, room_id = 0x15, world_id = 0x12, name = 'Time to Sleep (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0048, battle_id = 0x0048, map_id = 0x0048, fight_id = 0x00, room_id = 0x16, world_id = 0x12, name = 'Xemnas (Dragon Form) Battle' },

  Event:new{ event_id = 0x0049, battle_id = 0x0049, map_id = 0x0049, fight_id = 0x00, room_id = 0x17, world_id = 0x12, name = 'Armor Xemnas II Battle' },
  Event:new{ event_id = 0x0054, battle_id = 0x0054, map_id = 0x0054, fight_id = 0x00, room_id = 0x17, world_id = 0x12, name = 'To End It All' },
  Event:new{ event_id = 0x00D8, battle_id = 0x00D8, map_id = 0x00D8, fight_id = 0x00, room_id = 0x17, world_id = 0x12, name = 'To End It All (Theater Mode - English)' },
  Event:new{ event_id = 0x0101, battle_id = 0x0101, map_id = 0x0101, fight_id = 0x00, room_id = 0x17, world_id = 0x12, name = 'To End It All (Theater Mode - Japanese)' },

  Event:new{ event_id = 0x0047, battle_id = 0x0047, map_id = 0x0047, fight_id = 0x00, room_id = 0x18, world_id = 0x12, name = 'Armor Xemnas I Battle' },
  Event:new{ event_id = 0x0057, battle_id = 0x0057, map_id = 0x0057, fight_id = 0x00, room_id = 0x18, world_id = 0x12, name = "Xemnas's Throne" },
  Event:new{ event_id = 0x00D5, battle_id = 0x00D5, map_id = 0x00D5, fight_id = 0x00, room_id = 0x18, world_id = 0x12, name = "Xemnas's Throne (Theater Mode - English)" },
  Event:new{ event_id = 0x00FE, battle_id = 0x00FE, map_id = 0x00FE, fight_id = 0x00, room_id = 0x18, world_id = 0x12, name = "Xemnas's Throne (Theater Mode - Japanese)" },

  Event:new{ event_id = 0x0046, battle_id = 0x0046, map_id = 0x0046, fight_id = 0x00, room_id = 0x19, world_id = 0x12, name = 'Energy Core Battle' },

  Event:new{ event_id = 0x0045, battle_id = 0x0045, map_id = 0x0045, fight_id = 0x00, room_id = 0x1A, world_id = 0x12, name = 'Cylinder Lasers Battle' },

  Event:new{ event_id = 0x004B, battle_id = 0x004B, map_id = 0x004B, fight_id = 0x00, room_id = 0x1B, world_id = 0x12, name = 'Final Battle (Part I)' },
  Event:new{ event_id = 0x005E, battle_id = 0x005E, map_id = 0x005E, fight_id = 0x00, room_id = 0x1B, world_id = 0x12, name = "In the City's Darkness" },
  Event:new{ event_id = 0x00D4, battle_id = 0x00D4, map_id = 0x00D4, fight_id = 0x00, room_id = 0x1B, world_id = 0x12, name = "In the City's Darkness (Theater Mode - English)" },
  Event:new{ event_id = 0x00FD, battle_id = 0x00FD, map_id = 0x00FD, fight_id = 0x00, room_id = 0x1B, world_id = 0x12, name = "In the City's Darkness (Theater Mode - Japanese)" },

  Event:new{ event_id = 0x0044, battle_id = 0x0044, map_id = 0x0044, fight_id = 0x00, room_id = 0x1C, world_id = 0x12, name = 'Final Battle (Part II)' },

  Event:new{ event_id = 0x005C, battle_id = 0x005C, map_id = 0x005C, fight_id = 0x00, room_id = 0x1D, world_id = 0x12, name = 'The Depths of Oblivion' },
  Event:new{ event_id = 0x005D, battle_id = 0x005D, map_id = 0x005D, fight_id = 0x00, room_id = 0x1D, world_id = 0x12, name = 'Naminé and Roxas' },
  Event:new{ event_id = 0x00D6, battle_id = 0x00D6, map_id = 0x00D6, fight_id = 0x00, room_id = 0x1D, world_id = 0x12, name = 'Naminé and Roxas (Theater Mode - English)' },
  Event:new{ event_id = 0x00D7, battle_id = 0x00D7, map_id = 0x00D7, fight_id = 0x00, room_id = 0x1D, world_id = 0x12, name = 'The Depths of Oblivion (Theater Mode - English)' },
  Event:new{ event_id = 0x00FF, battle_id = 0x00FF, map_id = 0x00FF, fight_id = 0x00, room_id = 0x1D, world_id = 0x12, name = 'Naminé and Roxas (Theater Mode - Japanese)' },
  Event:new{ event_id = 0x0100, battle_id = 0x0100, map_id = 0x0100, fight_id = 0x00, room_id = 0x1D, world_id = 0x12, name = 'The Depths of Oblivion (Theater Mode - Japanese)' },
}

-- TODO: Addendum: The Underdrome Coliseum Cups
