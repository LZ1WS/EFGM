efgmpriceweapons =
{
cw_ak74 = {["RUB"] = 3500,
["DOL"] = 2000},
cw_ar15 = {["RUB"] = 4000,
["DOL"] = 2250},
cw_deagle = {["RUB"] = 1500,
["DOL"] = 800},
cw_extrema_ratio_official = {["RUB"] = 100,
["DOL"] = 55},
cw_fiveseven = {["RUB"] = 850,
["DOL"] = 400},
cw_flash_grenade = {["RUB"] = 550,
["DOL"] = 350},
cw_frag_grenade = {["RUB"] = 400,
["DOL"] = 250},
cw_g36c = {["RUB"] = 5000,
["DOL"] = 2750},
cw_g3a3 = {["RUB"] = 7000,
["DOL"] = 3000},
cw_l115 = {["RUB"] = 10000,
["DOL"] = 5000},
cw_l85a2 = {["RUB"] = 4500,
["DOL"] = 2500},
cw_m14 = {["RUB"] = 8500,
["DOL"] = 3750},
cw_m1911 = {["RUB"] = 750,
["DOL"] = 300},
cw_m249_official = {["RUB"] = 10000,
["DOL"] = 5000},
cw_m3super90 = {["RUB"] = 2500,
["DOL"] = 1350},
cw_mac11 = {["RUB"] = 1150,
["DOL"] = 600},
cw_makarov = {["RUB"] = 400,
["DOL"] = 175},
cw_mp5 = {["RUB"] = 2000,
["DOL"] = 1000},
cw_mr96 = {["RUB"] = 2000,
["DOL"] = 1000},
cw_p99 = {["RUB"] = 600,
["DOL"] = 250},
cw_scarh = {["RUB"] = 7500,
["DOL"] = 3500},
cw_shorty = {["RUB"] = 1250,
["DOL"] = 650},
cw_smoke_grenade = {["RUB"] = 500,
["DOL"] = 300},
cw_ump45 = {["RUB"] = 2500,
["DOL"] = 1350},
cw_vss = {["RUB"] = 7000,
["DOL"] = 3000}
}
if file.Exists("weaponprices.json", "DATA") then
efgmpriceweapons = util.JSONToTable(file.Read("weaponprices.json", "DATA"))
--[[else
for _, v in pairs(weapons.GetList()) do
local class = v.ClassName
if class:find("cw_") and not class:find("base") and not class:find("_bl") then
efgmpriceweapons[class] = {}
end
end]]--
end
	util.AddNetworkString("Buy RUB")
	util.AddNetworkString("Buy DOL")
	util.AddNetworkString("Pricechange RUB")
	util.AddNetworkString("Pricechange DOL")
	util.AddNetworkString("client_ready")
	util.AddNetworkString("price_data")
	util.AddNetworkString("weapon_adding")

net.Receive("weapon_adding", function(len,ply)
	if ply:IsSuperAdmin() then
local weaponname = {[net.ReadString()] = {}}
if !(efgmpriceweapons[weaponname]) then
table.Merge(efgmpriceweapons, weaponname)
file.Write("weaponprices.json", util.TableToJSON(efgmpriceweapons))
net.Start("price_data")
net.WriteTable(efgmpriceweapons)
net.Broadcast()
end
end
end)

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

net.Receive("Sell RUB", function(len, ply)
local weaponname = net.ReadString()
local price = net.ReadInt(32)
	if ply:HasWeapon(weaponname) then
	ply:AddRUB((price or 1000) / 6)
ply:StripWeapon(weaponname)
end
end)

net.Receive("Sell DOL", function(len, ply)
local weaponname = net.ReadString()
local price = net.ReadInt(32)
	if ply:HasWeapon(weaponname) then
	ply:AddDOL((price or 1000) / 6)
ply:StripWeapon(weaponname)
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