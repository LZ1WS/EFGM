AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "moduleloader.lua" )
AddCSLuaFile("core/loot_spawning/sh_lootspawn.lua")
AddCSLuaFile("core/teams_setup/sh_teams.lua")
AddCSLuaFile("core/spawnmenu_restrict/cl_spawnmenu.lua")
AddCSLuaFile("core/teams_setup/sh_team_select.lua")
AddCSLuaFile("core/economy/money/sh_moneymeta.lua")
AddCSLuaFile("core/economy/trader_ru/cl_menu.lua")
AddCSLuaFile("core/economy/seller_ru/cl_menu.lua")
AddCSLuaFile("core/evacuation/sh_evac.lua")
AddCSLuaFile("core/menu/sh_menureplace.lua")
AddCSLuaFile("core/chatcommands/sh_commands.lua")
AddCSLuaFile("core/base_system/sh_metabase.lua")
AddCSLuaFile("core/base_system/cl_base_upgrade_menu.lua")
AddCSLuaFile("core/lang/sh_lang.lua")

include("shared.lua")
include("core/economy/sv_networking.lua")
include("core/economy/money/sv_tradingmoney.lua")
include("core/sv_spawntweaks.lua")
include("core/lang/sv_lang.lua")
include("core/base_system/sv_points.lua")

util.AddNetworkString("Open TM")
util.AddNetworkString("Open TM Server")
util.AddNetworkString("PersontoEvacuate")
util.AddNetworkString("RespawnEvacuated")
util.AddNetworkString("TeleportToBase")
util.AddNetworkString("TeleportToWorld")
util.AddNetworkString("Base Menu Open")
util.AddNetworkString("Base Menu Close")
util.AddNetworkString("Raid_Mode_ON")
util.AddNetworkString("notifications")

hook.Add("OnPlayerHitGround", "AntiBhopVelocity", function(player)
	player:SetVelocity( - player:GetVelocity() * 0.1321 ) -- dont touch that please, thanks <3
	--	print("[Anti Bhop: Velocity] Hit Ground")
end)

hook.Add("CanUndo", "Restrict undo", function(ply)
if ply:Team() ~= 2 then
	return false
else
	return true
end
end)

function CustomPos(argStr)
		local loot = argStr
		if file.Exists("customloot.txt", "DATA") == true and file.Size("customloot.txt", "DATA") ~= 0 then
	file.Append("customloot.txt", ", " .. loot)
else file.Write("customloot.txt", loot)
end
end

concommand.Add("efg_addcustomloot", function(ply, strings, args, argStr)
	if ply:IsValid() and ply:IsSuperAdmin() then
CustomPos(argStr)
end
end)