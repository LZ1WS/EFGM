team.SetUp(1, "Scavenger", Color(0, 102, 0, 255), true)
team.SetUp(2, "Administration", Color(153, 0, 0, 255), false)
team.SetUp(3, "USEC", Color(153, 0, 0), false)
team.SetUp(4, "BEAR", Color(153, 0, 0), false)

if SERVER then
function GM:PlayerInitialSpawn(ply)
	ply:SetTeam(1)
end
end