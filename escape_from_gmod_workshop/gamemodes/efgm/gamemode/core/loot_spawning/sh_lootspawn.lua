	if SERVER then
	CreateConVar( "efg_countspawncrate", 3, 256, "Number of players needed to spawn bots/loot", 0 )
	CreateConVar( "efg_countspawnnpc", 3, 256, "Number of players needed to spawn bots/loot", 0 )
	CreateConVar( "efg_spawnspecialnpc", 0, 256, "Special npc spawn on map 0 - false, 1 - true", 0, 1 )
	CreateConVar( "efg_cratespawntime", 480, 256, "Number of time before spawning loot crates (in seconds)", 60 )
	CreateConVar( "efg_npcspawntime", 600, 256, "Number of time before spawning bots (in seconds)", 60 )
	function SaveLootPos(argStr)
		local vector = argStr
		if file.Exists(game.GetMap() .. ".txt", "DATA") == true and file.Size(game.GetMap() .. ".txt", "DATA") ~= 0 then
	file.Append( game.GetMap() .. ".txt", vector)
else file.Write(game.GetMap() .. ".txt", vector)
end
end
	concommand.Add("efg_loot_addpos", function(ply, string, args, argStr)
	if ply:IsValid() and ply:IsSuperAdmin() then
	SaveLootPos(argStr)
end
	end)
	end

local SPAWN_NPC_SPECIAL = {
Vector(-1836.065063, -1311.017944, 448.031250),
Vector(-1963.968750, -1229.570923, 640.031250),
Vector(-1613.740723, 2803.944824, 438.004700),
Vector(-1305.959961, 2732.599854, 436.651184),
Vector(-927.848572, 12454.327148, 815.968384),
Vector(-851.978394, 13261.435547, 807.080811),
Vector(-1320.671509, 13021.743164, 827.610840),
Vector(-5720.685059, -4532.959473, 387.013977),
Vector(-6154.819336, -4558.132324, 640.031250),
Vector(-6138.430664, -4266.983887, 386.820496),
Vector(-9850.758789, -9524.031250, 424.031250),
Vector(-9509.718750, -9524.031250, 424.031250),
Vector(-10715.008789, -9524.031250, 424.031250),
Vector(-9377.858398, -10723.184570, 128.031250),
Vector(-11522.476563, -11499.918945, 144.031250),
Vector(-10720.858398, -9959.754883, 128.031250),
Vector(-6500.031250, -12080.470703, 424.031250),
Vector(-7167.936035, -12412.662109, 122.910339),
Vector(-6047.013672, -12847.299805, 127.234665),
Vector(-5412.195313, -12108.294922, 128.577179),
Vector(-7967.865723, -10366.715820, 224.486343),
Vector(-11970.222656, -13363.733398, 144.031250),
Vector(-11221.691406, 2224.240967, 605.031250),
Vector(-9515.968750, -11664.633789, 144.031250),
Vector(-11222.965820, 2198.188721, 649.031250),
Vector(-9581.106445, 5161.410156, 284.031250),
Vector(-9736.335938, 7631.070313, 344.815216),
Vector(-9837.325195, 7746.279297, 351.807343),
Vector(-10948.271484, 8592.486328, 185.031250),
Vector(-8660.753906, 9488.757813, 502.031250),
Vector(-8033.338379, 10007.028320, 358.031250),
Vector(-8152.688965, 8083.694824, 424.031250)
}

function NPCSpawnSpecial()
	local NPCPos = table.Random(SPAWN_NPC_SPECIAL)
	npcusec = ents.Create("npc_vj_usec_bad_no_mask")
	npcusec:SetPos( NPCPos )
	npcusec:Spawn()
    npcusec:Give("weapon_vj_m16a1")
    npcusec:SetCollisionGroup( 1 )
end

local SPAWN_NPC_MARAUDER = {
Vector(-8686.167969, 9463.805664, 502.031250),
Vector(-8657.635742, 9639.088867, 502.031250),
Vector(-8654.917969, 9750.133789, 502.031250),
Vector(-8851.880859, 9866.545898, 502.031250)
}

local SPAWN_NPC_MILITIA = {
Vector(-8536.520508, 10168.074219, 502.031250),
Vector(-9049.228516, 10022.342773, 502.031250),
Vector(-7870.579590, 9579.942383, 358.031250),
Vector(-8570.918945, 9605.010742, 502.031250)
}


function NPCSpawn()
	local NPCPos = table.Random(SPAWN_NPC_MARAUDER)
	npcmar = ents.Create("npc_vj_lnr_milmarauder")
	npcmar:SetPos( NPCPos )
	npcmar:Spawn()
    npcmar:Give("weapon_vj_ak47")
    npcmar:SetCollisionGroup( 1 )

	local NPCMilPos = table.Random(SPAWN_NPC_MILITIA)
	npcmil = ents.Create("npc_vj_lnr_milsoldier")
	npcmil:SetPos( NPCMilPos )
	npcmil:Spawn()
    npcmil:Give("weapon_vj_smg1")
    npcmil:SetCollisionGroup( 1 )
end

	--tables for randomized crate spawns

local SPAWN_CRATE_HIGHLAND = {
					Vector(11342.782227, 15190.779297, -31.968750),
					Vector(7492.732422, 11775.160156, 4659.867676),
					Vector(-821.184082, 13297.034180, 802.637573),
					Vector(-7791.442871, 9961.808594, 1847.383667),
					Vector(-11654.221680, 2094.236816, 648.930298),
					Vector(-7756.557617, -13372.347656, 4096.653320),
					Vector(1211.822144, -12188.238281, 2547.521729),
					Vector(-12411.866211, -11597.653320, 136.031250),
					Vector(-12561.082031, -13631.993164, 144.031250),
					Vector(11448.832031, -12451.466797, 42.841873),
					Vector(7305.186035, -9717.725586, 705.249634)
}
if file.Exists(game.GetMap() .. ".txt", "DATA") then
local spawn_custom = file.Open(game.GetMap() .. ".txt", "r", "DATA")
local spawn_custom_vectors = {spawn_custom:ReadLine()}
spawn_custom:Close()

function CustomSpawn()
	local Vectors = table.Random(spawn_custom_vectors)
	local CasePos = Vector(Vectors)
	case = ents.Create("efg_supplycrate")
	case:SetPos( CasePos )
	case:Spawn()
	case:PhysWake()
	case:SetGravity(100)
for _,v in ipairs(player.GetAll()) do
v:ConCommand("play bell.wav")
end
end

end

function CrateSpawn()
	local CratePos = table.Random(SPAWN_CRATE_HIGHLAND)
	crate = ents.Create("efg_supplycrate")
	crate:SetPos( CratePos )
	crate:Spawn()
	crate:PhysWake()
	crate:SetGravity(100)
for _,v in ipairs(player.GetAll()) do
v:ConCommand("play bell.wav")
end
end

	if SERVER then
function GM:PostCleanupMap()
if game.GetMap() == "gm_fork" then
	NPCDyn = ents.Create("npc_ground_sitting_citizen_dynamic")
	NPCDyn:SetPos( Vector( -11350.008789, 10009.546875, -10035.649414))
	NPCDyn:SetAngles( Angle( 0.567825, 135.614960, 0.000000))
	NPCDyn:Spawn()

	NPCDyn2 = ents.Create("npc_consouling_couple")
	NPCDyn2:SetPos( Vector( -302.147888, -4718.806152, -8880.124023))
	NPCDyn2:SetAngles( Angle(7.143719, -90.810158, 0.000000))
	NPCDyn2:Spawn()
end
end
cvars.AddChangeCallback( "efg_cratespawntime", function()
timer.Remove("Auto-Crate")
timer.Remove("Auto-CustomCrate")
timer.Remove("CrateDespawn")

if file.Exists(game.GetMap() .. ".txt", "DATA") then
timer.Create( "Auto-CustomCrate", (GetConVar("efg_cratespawntime")):GetFloat(), 0, function()
if player.GetCount() >= (GetConVar("efg_countspawncrate")):GetFloat() then
CustomSpawn()
end
end)

else

timer.Create( "Auto-Crate", (GetConVar("efg_cratespawntime")):GetFloat(), 0, function()
-- Main Crates
if game.GetMap() == "rp_highland" then
	if player.GetCount() >= (GetConVar("efg_countspawncrate")):GetFloat() then
timer.Create("CrateDespawn", (GetConVar("efg_cratespawntime")):GetFloat(), 1, function()
local crates = ents.FindByClass("efg_supplycrate")
for k,v in pairs(crates) do
v:Remove()
end
end)
CrateSpawn()
CrateSpawn()
CrateSpawn()
end
end
end)
end
end)

cvars.AddChangeCallback( "efg_npcspawntime", function()
timer.Remove("NPCSpawn")
timer.Remove("SpecNPCSpawn")
timer.Create("NPCSpawn", (GetConVar("efg_npcspawntime")):GetFloat(), 0, function()
if game.GetMap() == "rp_highland" then
if player.GetCount() >= (GetConVar("efg_countspawnnpc")):GetFloat() then
NPCSpawn()
NPCSpawn()
for k,v in ipairs(ents.FindByClass( "npc_vj_lnr_*")) do
if k > 10 then
v:Remove()
end
end
end
end
end)
timer.Create("SpecNPCSpawn", (GetConVar("efg_npcspawntime")):GetFloat(), 0, function()
if game.GetMap() == "rp_highland" then
if player.GetCount() >= (GetConVar("efg_countspawnnpc")):GetFloat()
and (GetConVar("efg_spawnspecialnpc"):GetFloat()) == 1 then
NPCSpawnSpecial()
NPCSpawnSpecial()
for k,v in ipairs(ents.FindByClass( "npc_vj_usec_bad_no_mask*")) do
if k > 30 then
v:Remove()
end
end
end
end
end)
end)

if file.Exists(game.GetMap() .. ".txt", "DATA") then
timer.Create( "Auto-CustomCrate", (GetConVar("efg_cratespawntime")):GetFloat(), 0, function()
if player.GetCount() >= (GetConVar("efg_countspawncrate")):GetFloat() then
CustomSpawn()
end
end)
else
timer.Create( "Auto-Crate", (GetConVar("efg_cratespawntime")):GetFloat(), 0, function()
-- Main Crates
if game.GetMap() == "rp_highland" then
	if player.GetCount() >= (GetConVar("efg_countspawncrate")):GetFloat() then
timer.Create("CrateDespawn", (GetConVar("efg_cratespawntime")):GetFloat(), 1, function()
local crates = ents.FindByClass("efg_supplycrate")
for k,v in pairs(crates) do
v:Remove()
end
end)
CrateSpawn()
CrateSpawn()
CrateSpawn()
end
end
end)
end

timer.Create("SpecNPCSpawn", (GetConVar("efg_npcspawntime")):GetFloat(), 0, function()
if game.GetMap() == "rp_highland" then
if player.GetCount() >= (GetConVar("efg_countspawnnpc")):GetFloat()
and (GetConVar("efg_spawnspecialnpc"):GetFloat()) == 1 then
NPCSpawnSpecial()
NPCSpawnSpecial()
for k,v in ipairs(ents.FindByClass( "npc_vj_usec_bad_no_mask*")) do
if k > 30 then
v:Remove()
end
end
end
end
end)

timer.Create("NPCSpawn", (GetConVar("efg_npcspawntime")):GetFloat(), 0, function()
if game.GetMap() == "rp_highland" then
if player.GetCount() >= (GetConVar("efg_countspawnnpc")):GetFloat() then
NPCSpawn()
NPCSpawn()
for k,v in ipairs(ents.FindByClass( "npc_vj_lnr_*")) do
if k > 10 then
v:Remove()
end
end
end
end
end)
end