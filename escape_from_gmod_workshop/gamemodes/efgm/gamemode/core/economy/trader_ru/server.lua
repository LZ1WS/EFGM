efgmpriceweapons = {}
if file.Exists("weaponprices.json", "DATA") then
efgmpriceweapons = util.JSONToTable(file.Read("weaponprices.json", "DATA"))
else
for _, v in pairs(weapons.GetList()) do
local class = v.ClassName
if class:find("cw_") and not class:find("base") then
efgmpriceweapons[class] = {}
end
end
end
	util.AddNetworkString("Buy RUB")
	util.AddNetworkString("Buy DOL")
	util.AddNetworkString("Pricechange RUB")
	util.AddNetworkString("Pricechange DOL")
	util.AddNetworkString("client_ready")
	util.AddNetworkString("price_data")
net.Receive("Buy RUB", function(len, ply)
local weaponname = net.ReadString()
local price = net.ReadInt(32)
	if tonumber(ply:GetRUB()) >= price then
	ply:TakeRUB(price or 1000)
ply:Give(weaponname)
end
end)

net.Receive("Buy DOL", function(len, ply)
local weaponname = net.ReadString()
local price = net.ReadInt(32)
	if tonumber(ply:GetDOL()) >= price then
	ply:TakeDOL(price or 1000)
ply:Give(weaponname)
end
end)

net.Receive( "client_ready", function( len, ply )
net.Start("price_data")
net.WriteTable(efgmpriceweapons)
net.Send(ply)
end )

net.Receive("Pricechange RUB", function(len, ply)
local weaponname = net.ReadString()
local price = net.ReadInt(32)
local weaponprice = {["RUB"] = price}
	if ply:IsSuperAdmin() == true then
table.Merge(efgmpriceweapons[weaponname], weaponprice)
file.Write("weaponprices.json", util.TableToJSON(efgmpriceweapons))
net.Start("price_data")
net.WriteTable(efgmpriceweapons)
net.Broadcast()
end
end)

net.Receive("Pricechange DOL", function(len, ply)
local weaponname = net.ReadString()
local price = net.ReadInt(32)
local weaponprice = {["DOL"] = price}
	if ply:IsSuperAdmin() == true then
table.Merge(efgmpriceweapons[weaponname], weaponprice)
file.Write("weaponprices.json", util.TableToJSON(efgmpriceweapons))
net.Start("price_data")
net.WriteTable(efgmpriceweapons)
net.Broadcast()
end
end)