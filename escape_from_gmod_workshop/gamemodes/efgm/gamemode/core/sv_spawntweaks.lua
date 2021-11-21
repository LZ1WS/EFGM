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

hook.Add("PlayerInitialSpawn", "MPE Timer", function(ply)
timer.Create("mpe timer: " .. ply:SteamID64(), 60, 0, function()
ply:AddPoints(10)
net.Start("notifications")
net.WriteString("efg.tick")
net.WriteString("garrysmod/content_downloaded.wav")
net.Send(ply)
	if ply:GetUpgrade("Bitcoin LVL I") == "true" or ply:GetUpgrade("Bitcoin LVL II") == "true"
	or ply:GetUpgrade("Bitcoin LVL III") == "true" then
	if ply:GetUpgrade("Bitcoin LVL I") == "true" then
net.Start("notifications")
net.WriteString("efg.bitI")
	ply:AddRUB(10)
	ply:AddDOL(5)
else
	if ply:GetUpgrade("Bitcoin LVL II") == "true" then
net.Start("notifications")
net.WriteString("efg.bitII")
	ply:AddRUB(50)
	ply:AddDOL(25)
else
	if ply:GetUpgrade("Bitcoin LVL III") == "true" then
net.Start("notifications")
net.WriteString("efg.bitIII")
	ply:AddRUB(100)
	ply:AddDOL(50)
end end end
net.WriteString("garrysmod/content_downloaded.wav")
net.Send(ply)
	end
end)
end)

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