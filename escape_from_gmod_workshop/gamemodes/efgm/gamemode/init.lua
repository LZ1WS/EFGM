AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile("core/loot_spawning/lootspawn.lua")
AddCSLuaFile("core/teams_setup/teams.lua")
AddCSLuaFile("core/spawnmenu_restrict/cl_spawnmenu.lua")
AddCSLuaFile("modules/stamina/cl_bur_sprintmod.lua")
AddCSLuaFile("core/teams_setup/team_select.lua")
AddCSLuaFile("core/economy/money/shared.lua")
AddCSLuaFile("core/economy/trader_ru/client.lua")
AddCSLuaFile("core/economy/trader_eng/client.lua")
AddCSLuaFile("core/economy/seller_ru/client.lua")
AddCSLuaFile("core/economy/seller_eng/client.lua")
AddCSLuaFile("core/evacuation/shared.lua")
AddCSLuaFile("core/menu/menu.lua")
AddCSLuaFile("core/chatcommands/commands.lua")
AddCSLuaFile("core/base_system/meta.lua")
AddCSLuaFile("core/base_system/base_upgrade_menu.lua")

include( "shared.lua" )
include("modules/stamina/sv_bur_sprintmod.lua")
include("modules/weapon_pickup/sv_manualweaponpickup.lua")
include("core/economy/trader_ru/server.lua")
include("core/economy/trader_eng/server.lua")
include("core/economy/seller_ru/server.lua")
include("core/economy/seller_eng/server.lua")

util.AddNetworkString("Open TM")
util.AddNetworkString("Open TM Server")
util.AddNetworkString("Localization")
util.AddNetworkString("PersontoEvacuate")
util.AddNetworkString("RespawnEvacuated")
util.AddNetworkString("TeleportToBase")
util.AddNetworkString("TeleportToWorld")
util.AddNetworkString("Base Menu Open")
util.AddNetworkString("Base Menu Close")
util.AddNetworkString("Raid_Mode_ON")

--[[hook.Add("ShowSpare2", "Open TM", function(ply)
net.Start("Open TM")
net.Send(ply)
end)]]--

RUB_STARTAMOUNT = 1000 --Can be changed to your starting amount
DOL_STARTAMOUNT = 500 --Can be changed to your starting amount

function FirstSpawn( ply )
	print("Loading Money Data")
	if file.Exists("RUB/" .. string.gsub(ply:SteamID(), ":", "_") ..".txt", "DATA") then
	local rub1 = file.Open("RUB/" .. string.gsub(ply:SteamID(), ":", "_") ..".txt", "r", "DATA")
	local rub2 = rub1:ReadLine()
	if tonumber(rub2) == nil or tonumber(rub2) == 0 then --If it doesn't exist supply the player with the starting money amount
	file.Write("RUB/" .. string.gsub(ply:SteamID(), ":", "_") ..".txt", RUB_STARTAMOUNT)
	ply:SetRUB( RUB_STARTAMOUNT ) --Set it to the networked ints that can be called from the client too
else
ply:SetRUB( tonumber(rub2) ) --If not, set the networked ints to what we last saved
rub1:Close()
end
else
	ply:SetRUB( RUB_STARTAMOUNT ) --Set it to the networked ints that can be called from the client too
	ply:SaveRUBTXT()
end

if file.Exists("DOL/" .. string.gsub(ply:SteamID(), ":", "_") ..".txt", "DATA") then
local dol1 = file.Open("DOL/" .. string.gsub(ply:SteamID(), ":", "_") ..".txt", "r", "DATA")
local dol2 = dol1:ReadLine()
	if tonumber(dol2) == nil or tonumber(dol2) == 0 then --If it doesn't exist supply the player with the starting money amount
	file.Write("DOL/" .. string.gsub(ply:SteamID(), ":", "_") ..".txt", DOL_STARTAMOUNT)
	ply:SetDOL( DOL_STARTAMOUNT ) --Set it to the networked ints that can be called from the client too
else
ply:SetDOL( tonumber(dol2) ) --If not, set the networked ints to what we last saved
dol1:Close()
end
else
	ply:SetDOL( DOL_STARTAMOUNT ) --Set it to the networked ints that can be called from the client too
	ply:SaveDOLTXT()
end
if file.Exists("Points/" .. string.gsub(ply:SteamID(), ":", "_") ..".txt", "DATA") then
local points1 = file.Open("Points/" .. string.gsub(ply:SteamID(), ":", "_") ..".txt", "r", "DATA")
local points2 = points1:ReadLine()
	if tonumber(points2) == nil or tonumber(points2) == 0 then --If it doesn't exist supply the player with the starting money amount
	file.Write("Points/" .. string.gsub(ply:SteamID(), ":", "_") ..".txt", 0)
	ply:SetPoints( 0 ) --Set it to the networked ints that can be called from the client too
else
ply:SetPoints( tonumber(points2) ) --If not, set the networked ints to what we last saved
points1:Close()
end
else
	ply:SetPoints( 0 ) --Set it to the networked ints that can be called from the client too
	ply:SavePointsTXT()
end
	local upgrade1 = ply:GetUpgrade("Bitcoin LVL I")
	local upgrade2 = ply:GetUpgrade("Bitcoin LVL II")
	local upgrade3 = ply:GetUpgrade("Bitcoin LVL III")

if upgrade1 == nil then
		ply:SetPData("Bitcoin LVL I", "false") --Save it
		ply:SetNWInt("Bitcoin LVL I", "false") --Set it to the networked ints that can be called from the client too
	else
if upgrade2 == nil and upgrade3 == nil then
	ply:SetNWInt( "Bitcoin LVL I", "true" )
	end end
if upgrade2 == nil then
		ply:SetPData("Bitcoin LVL II", "false") --Save it
		ply:SetNWInt("Bitcoin LVL II", "false") --Set it to the networked ints that can be called from the client too
	else
if upgrade3 == nil then
	ply:SetNWInt( "Bitcoin LVL II", "true" )
	end end
if upgrade3 == nil then
		ply:SetPData("Bitcoin LVL III", "false") --Save it
		ply:SetNWInt("Bitcoin LVL III", "false") --Set it to the networked ints that can be called from the client too
	else
	ply:SetNWInt( "Bitcoin LVL III", "true" )
	end
--[[local rub2 = ply:GetPData("RUB") --Get the saved money amount

if rub2 == nil or rub2 == 0 then --If it doesn't exist supply the player with the starting money amount
ply:SetPData("RUB", RUB_STARTAMOUNT) --Save it
ply:SetRUB( RUB_STARTAMOUNT ) --Set it to the networked ints that can be called from the client too
else
ply:SetRUB( rub2 ) --If not, set the networked ints to what we last saved
end
local dol2 = ply:GetPData("DOL") --Get the saved money amount

if dol2 == nil or dol2 == 0 then --If it doesn't exist supply the player with the starting money amount
ply:SetPData("DOL", DOL_STARTAMOUNT) --Save it
ply:SetDOL( DOL_STARTAMOUNT ) --Set it to the networked ints that can be called from the client too
else
ply:SetDOL( dol2 ) --If not, set the networked ints to what we last saved
end]]--
end

function GM:PlayerDisconnected( ply )
print("Player Disconnect: Money saved to DATA")
	ply:SaveRUBTXT()
	ply:SaveDOLTXT()
	ply:SavePointsTXT()
	ply:SaveUpgrades("Bitcoin LVL I")
	ply:SaveUpgrades("Bitcoin LVL II")
	ply:SaveUpgrades("Bitcoin LVL III")
end

hook.Add( "PlayerInitialSpawn", "playerInitialSpawn", FirstSpawn )

util.AddNetworkString("Dikiy")
util.AddNetworkString("Admin")
util.AddNetworkString("USEC")
util.AddNetworkString("BEAR")

net.Receive("Dikiy", function(len, ply)
ply:SetTeam(1)
ply:Spawn()
end)

net.Receive("Admin", function(len, ply)
ply:SetTeam(2)
ply:Spawn()
end)

net.Receive("USEC", function(len, ply)
ply:SetTeam(3)
ply:Spawn()
end)

net.Receive("BEAR", function(len, ply)
ply:SetTeam(4)
ply:Spawn()
end)

hook.Add("PlayerLoadout", "Starting Loadout", function(ply)
ply:StripWeapons()
ply:StripAmmo()
ply:GodDisable()
ply:SetMaxSpeed(310)
ply:SetRunSpeed(250)
ply:SetWalkSpeed(150)
ply:SetJumpPower(200)
ply:SetNoCollideWithTeammates(false)
if ply:Team() == 1 then
if game.GetMap() == "rp_highland" then
local Spawn = {Vector(5080.567383, 4344.177246, 661.115662), Vector(-13704.819336, -3641.764648, 88.805023),
Vector( 9577.985352, -4899.901367,
592.031250)}
ply:SetPos(table.Random(Spawn))
end
ply:StripWeapons()
ply:StripAmmo()
ply:GodDisable()
ply:Give("cw_makarov")
ply:Give("weapon_fists")
ply:Give("swep_inventory")
end
if ply:Team() == 2 then
	ply:StripWeapons()
	ply:StripAmmo()
	ply:Give("weapon_physcannon")
	ply:Give("gmod_tool")
	ply:Give("gmod_camera")
	ply:Give("weapon_physgun")
	ply:GodEnable()
	ply:SetNoCollideWithTeammates(true)
	end

	if ply:Team() == 3 then -- USEC
if game.GetMap() == "rp_highland" then
local USECSpawn = {Vector(-8554.423828, -13839.265625, 144.031250), Vector(-8684.807617, -13838.375000, 144.031250),
Vector(-8816.012695, -13839.609375, 144.031250), Vector( -8936.701172, -13841.214844,
144.031250), Vector(-9068.203125, -13842.960938, 144.031250)}
ply:SetPos(table.Random(USECSpawn))
end
ply:StripWeapons()
ply:StripAmmo()
ply:GodDisable()
ply:Give("weapon_fists")
ply:Give("swep_inventory")
ply:Give("cw_ump45_bl")
ply:Give("cw_fiveseven_bl")
ply:Give("weapon_rpw_binoculars")
ply:GiveAmmo(230, 40)
ply:GiveAmmo(50, 46)
ply:SetHealth(100)
ply:SetArmor(100)
end

	if ply:Team() == 4 then -- BEAR
if game.GetMap() == "rp_highland" then
local BEARSpawn = {Vector(12450.521484, 13590.296875, 180.031250), Vector(12107.384766, 13591.224609, 180.031250),
Vector(11441.257813, 13532.933594, 180.031250), Vector( 11439.016602, 13533.063477,
180.031250), Vector(11098.140625, 13526.397461, 180.031250)}
ply:SetPos(table.Random(BEARSpawn))
end
ply:StripWeapons()
ply:StripAmmo()
ply:GodDisable()
ply:Give("weapon_fists")
ply:Give("swep_inventory")
ply:Give("cw_ak74_bl")
ply:Give("cw_makarov_bl")
ply:Give("weapon_rpw_binoculars_vintage")
ply:GiveAmmo(230, 44)
ply:GiveAmmo(50, 51)
ply:SetHealth(100)
ply:SetArmor(100)
end

return true
end)

function GM:PlayerSetModel( ply )
if ply:Team() == 1 then -- SCAV 
ply:SetBodygroup( 1, 0 )
ply:SetBodygroup( 2, 0 )
ply:SetBodygroup( 3, 0 )
ply:SetBodygroup( 4, 0 )
ply:SetModel( "models/player/stalker/bandit_backpack.mdl" ) end

if ply:Team() == 2 then -- Admin
ply:SetBodygroup( 1, 0 )
ply:SetBodygroup( 2, 0 )
ply:SetBodygroup( 3, 0 )
ply:SetBodygroup( 4, 0 )

ply:SetModel( "models/player/combine_super_soldier.mdl" ) end

if ply:Team() == 3 then -- USEC
ply:SetBodygroup( 1, 0 )
ply:SetBodygroup( 2, 0 )
ply:SetBodygroup( 3, 0 )
ply:SetBodygroup( 4, 1 )
ply:SetBodygroup( 5, 3 )
ply:SetBodygroup( 6, 2 )
ply:SetModel( "models/player/eft/usec/eft_usec_pm/models/eft_usec_pm.mdl" )
end

if ply:Team() == 4 then -- BEAR
ply:SetBodygroup( 1, 0 )
ply:SetBodygroup( 2, 0 )
ply:SetBodygroup( 3, 0 )
ply:SetBodygroup( 4, 1 )
ply:SetBodygroup( 5, 1 )
ply:SetBodygroup( 6, 1 )
ply:SetModel( "models/player/eft/usec/eft_bear_pm/models/eft_bear_pm.mdl" )
end

end
hook.Add("OnPlayerHitGround", "AntiBhopVelocity", function(player)
	player:SetVelocity( - player:GetVelocity() * 0.1321 ) -- dont touch that please, thanks <3
	--	print("[Anti Bhop: Velocity] Hit Ground")
end)

net.Receive("Localization", function()
	local received = net.ReadString()
	local lost = net.ReadString()
	local receive = net.ReadString()
	local lostrub = net.ReadString()
	local lostdol = net.ReadString()
	local awardrubtr = net.ReadString()
	local awarddoltr = net.ReadString()
	local given = net.ReadString()
	local receivenrub = net.ReadString()
	local receivendol = net.ReadString()
	local rubs = net.ReadString()
	local dols = net.ReadString()


hook.Add("OnNPCKilled", "PointsRaiders", function( victim, inflictor, killer )
if (killer:IsPlayer() ) then
local awardrub = math.random(0, 50)
local awarddol = math.random(0, 50)
killer:AddRUB(awardrub)
killer:AddDOL(awarddol)
killer:ChatPrint(received ..awardrub.. awardrubtr)
killer:ChatPrint(received ..awarddol.. awarddoltr)
end
end)

function BloodMoney(victim, attacker, dmginfo)
	local BloodMoneyPayoutRUB = victim:GetRUB() * 0.2
	local BloodMoneyPayoutDOL = victim:GetDOL() * 0.2
	if victim ~= attacker and attacker:IsPlayer() then
	if BloodMoneyPayoutRUB ~= -BloodMoneyPayoutRUB then
		attacker:AddRUB(math.ceil(BloodMoneyPayoutRUB))
		attacker:ChatPrint(received ..BloodMoneyPayoutRUB.. receivenrub ..victim:Nick().."!")
		victim:TakeRUB(math.ceil(BloodMoneyPayoutRUB))
		victim:ChatPrint(lost ..BloodMoneyPayoutRUB.. lostrub ..attacker:Nick().."!")
	end
		if BloodMoneyPayoutDOL ~= -BloodMoneyPayoutDOL then
		attacker:AddDOL(math.ceil(BloodMoneyPayoutDOL))
		attacker:ChatPrint(received ..BloodMoneyPayoutDOL.. receivendol ..victim:Nick().."!")
		victim:TakeDOL(math.ceil(BloodMoneyPayoutDOL))
		victim:ChatPrint(lost ..BloodMoneyPayoutDOL.. lostdol ..attacker:Nick().."!")
	end
	end
end
hook.Add("PlayerDeath", "BloodMoneyFunc", BloodMoney)

--[[hook.Add( "PlayerChangedTeam", "Print", function( ply, oldTeam, newTeam )
	if oldTeam ~= 0 then
	if oldTeam ~= 2 and newTeam ~= 2 then 
	PrintMessage( HUD_PRINTTALK, ply:Nick() .. " перешёл из фракции " .. team.GetName( oldTeam ) .. " в фракцию " .. team.GetName( newTeam ) )
else
	if newTeam ~= 2 then
		PrintMessage( HUD_PRINTTALK, ply:Nick() .. " перешёл из режима " .. team.GetName( oldTeam ) .. " в фракцию " .. team.GetName( newTeam ) )
else
		PrintMessage( HUD_PRINTTALK, ply:Nick() .. " перешёл из фракции " .. team.GetName( oldTeam ) .. " в режим " .. team.GetName( newTeam ) )		
end end end
end )]]--

hook.Add("CanUndo", "Restrict undo", function(ply)
if ply:Team() ~= 2 then
	return false
else
	return true
end
end)

local function AutoCompleteRUB( cmd, stringargs )
	
	stringargs = string.Trim( stringargs ) -- Remove any spaces before or after.
	stringargs = string.lower( stringargs )
	
	local tbl = {}
	
	for k, v in ipairs(player.GetAll()) do
		local nick = v:Nick()
		if string.find( string.lower( nick ), stringargs ) then
			nick = "\"" .. nick .. "\"" -- We put quotes around it in case players have spaces in their names.
			nick = "give_rub "  .. nick -- We also need to put the cmd before for it to work properly.
			
			table.insert(tbl, nick)
		end
	end
	
	return tbl
end

local function AutoCompleteDOL( cmd, stringargs )
	
	stringargs = string.Trim( stringargs ) -- Remove any spaces before or after.
	stringargs = string.lower( stringargs )
	
	local tbl = {}
	
	for k, v in ipairs(player.GetAll()) do
		local nick = v:Nick()
		if string.find( string.lower( nick ), stringargs ) then
			nick = "\"" .. nick .. "\"" -- We put quotes around it in case players have spaces in their names.
			nick = "give_dol "  .. nick -- We also need to put the cmd before for it to work properly.
			
			table.insert(tbl, nick)
		end
	end
	
	return tbl
end

local function GivePLYRUB(ply, cmd, args, argStr)
local nick = args[1]
local number = args[2]
nick = string.lower(nick)
if tonumber(ply:GetRUB()) >= tonumber(args[2]) then
ply:TakeRUB(args[2])
for k,v in ipairs(player.GetAll()) do
if string.lower(v:Nick()) == nick then
v:AddRUB(args[2])
v:ChatPrint(given .. number .. rubs .. ply:Nick())
ply:ChatPrint(receive .. number .. rubs .. v:Nick())
else
continue
end
end
end
end

local function GivePLYDOL(ply, cmd, args, argStr)
local nick = args[1]
local number = args[2]
nick = string.lower(nick)
if tonumber(ply:GetDOL()) >= tonumber(args[2]) then
ply:TakeDOL(tonumber(args[2]))
for k,v in ipairs(player.GetAll()) do
if string.lower(v:Nick()) == nick then
v:AddDOL(tonumber(args[2]))
v:ChatPrint(given .. number .. dols .. ply:Nick())
ply:ChatPrint(receive .. number .. dols .. v:Nick())
else
continue
end
end
end
end

concommand.Add("give_rub", GivePLYRUB, AutoCompleteRUB)

concommand.Add("give_dol", GivePLYDOL, AutoCompleteDOL)
end)

concommand.Add("SetRUB", function(ply, cmd, args, argStr)
	if ply:IsValid() and ply:IsSuperAdmin() then
local nick = args[1]
nick = string.lower(nick)
for k,v in ipairs(player.GetAll()) do
if string.lower(v:Nick()) == nick then
v:SetRUB(args[2])
v:SaveRUB()
v:SaveRUBTXT()
else
continue
end
end
end
end)

concommand.Add("SetDOL", function(ply, cmd, args, argStr)
	if ply:IsValid() and ply:IsSuperAdmin() then
local nick = args[1]
nick = string.lower(nick)
for k,v in ipairs(player.GetAll()) do
if string.lower(v:Nick()) == nick then
v:SetDOL(args[2])
v:SaveDOL()
v:SaveDOLTXT()
else
continue
end
end
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