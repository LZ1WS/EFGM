local buyableweapons = {}
for _, v in next, weapons.GetList() do
if v.ClassName == "cw_" then
table.insert(buyableweapons, v)
end
end
	util.AddNetworkString("Buy RUB")
	util.AddNetworkString("Buy DOL")
net.Receive("Buy RUB", function(len, ply)
local weaponname = net.ReadString()
local price = net.ReadInt(32)
	if tonumber(ply:GetRUB()) >= price then
	ply:TakeRUB(price)
ply:Give(weaponname)
end
end)

net.Receive("Buy DOL", function(len, ply)
local weaponname = net.ReadString()
local price = net.ReadInt(32)
	if tonumber(ply:GetDOL()) >= price then
	ply:TakeDOL(price)
ply:Give(weaponname)
end
end)