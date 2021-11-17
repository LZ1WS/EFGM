GM.Name = "Escape from GMod"
GM.Author = "L.Z|W.S"
GM.Website = "N/A"

DeriveGamemode( "sandbox" )

include("moduleloader.lua")
include("core/loot_spawning/sh_lootspawn.lua")
include("core/teams_setup/sh_teams.lua")
include("core/teams_setup/sh_team_select.lua")
include("core/economy/money/sh_moneymeta.lua")
include("core/evacuation/sh_evac.lua")
include("core/menu/sh_menureplace.lua")
include("core/chatcommands/sh_commands.lua")
include("core/base_system/sh_metabase.lua")

function GM:Initialize()
end