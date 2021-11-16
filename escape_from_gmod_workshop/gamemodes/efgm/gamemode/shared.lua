GM.Name = "Escape from GMod"
GM.Author = "L.Z|W.S"
GM.Website = "N/A"

DeriveGamemode( "sandbox" )

include("core/loot_spawning/lootspawn.lua")
include("core/teams_setup/teams.lua")
include("core/teams_setup/team_select.lua")
include("core/economy/money/shared.lua")
include("core/evacuation/shared.lua")
include("core/menu/menu.lua")
include("core/chatcommands/commands.lua")
include("core/base_system/meta.lua")

function GM:Initialize()
end