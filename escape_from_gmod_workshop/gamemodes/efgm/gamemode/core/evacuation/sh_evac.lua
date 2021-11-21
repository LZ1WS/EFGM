if CLIENT then
local exit1start = Vector(-5730.521973, 14476.339844, 347.485168)
local exit1end = Vector(-6191.779297, 14922.670898, 844.339600)
local exit2start = Vector(14217.608398, -717.553711, 1403.865234)
local exit2end = Vector(13486.078125, -1488.893433, 444.435364)
net.Receive("PersontoEvacuate", function()
local plysteamid = net.ReadString()
if game.GetMap() == "rp_highland" then
if tostring(plysteamid) == tostring(LocalPlayer():SteamID()) then
LocalPlayer():EmitSound( "evacuation.wav", 75, 100, 1, 0 )
timer.Create("Evacuation", 246, 1, function()
local posply = LocalPlayer():GetPos()
if posply:WithinAABox(exit1start, exit1end) == true or posply:WithinAABox(exit2start, exit2end) == true then
LocalPlayer():EmitSound( "chopper_evacuate_evacuated.wav", 75, 100, 1, 0 )
net.Start("RespawnEvacuated")
net.SendToServer()
end

end)
end
end
end)

end
if SERVER then
function EvacSpawn(ply)
	local EvacSpawnpos = ply:GetPos()
	evacloot = ents.Create("efg_supplycrate")
	evacloot:SetPos( EvacSpawnpos )
	evacloot:Spawn()
end
net.Receive("RespawnEvacuated", function(len, ply)
ply:Spawn()
EvacSpawn(ply)
EvacSpawn(ply)
ply:AddRUB(math.random(1500, 5000))
ply:AddDOL(math.random(1500, 5000))

end)
end