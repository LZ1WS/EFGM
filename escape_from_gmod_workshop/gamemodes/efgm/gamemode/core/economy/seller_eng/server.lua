	util.AddNetworkString("Sell_ENG Pistol RUB")
	util.AddNetworkString("Sell_ENG Pistol DOL")
	util.AddNetworkString("Sell_ENG AK RUB")
	util.AddNetworkString("Sell_ENG AK DOL")
	util.AddNetworkString("Sell_ENG VSS RUB")
	util.AddNetworkString("Sell_ENG VSS DOL")
	util.AddNetworkString("Sell_ENG AR RUB")
	util.AddNetworkString("Sell_ENG AR DOL")
	util.AddNetworkString("Sell_ENG fseven RUB")
	util.AddNetworkString("Sell_ENG fseven DOL")
	util.AddNetworkString("Sell_ENG scar RUB")
	util.AddNetworkString("Sell_ENG scar DOL")
	util.AddNetworkString("Sell_ENG g3a3 RUB")
	util.AddNetworkString("Sell_ENG g3a3 DOL")
	util.AddNetworkString("Sell_ENG g36 RUB")
	util.AddNetworkString("Sell_ENG g36 DOL")
	util.AddNetworkString("Sell_ENG ump RUB")
	util.AddNetworkString("Sell_ENG ump DOL")
	util.AddNetworkString("Sell_ENG mp5 RUB")
	util.AddNetworkString("Sell_ENG mp5 DOL")
	util.AddNetworkString("Sell_ENG deagle RUB")
	util.AddNetworkString("Sell_ENG deagle DOL")
	util.AddNetworkString("Sell_ENG l115 RUB")
	util.AddNetworkString("Sell_ENG l115 DOL")
	util.AddNetworkString("Sell_ENG l85 RUB")
	util.AddNetworkString("Sell_ENG l85 DOL")
	util.AddNetworkString("Sell_ENG m14 RUB")
	util.AddNetworkString("Sell_ENG m14 DOL")
	util.AddNetworkString("Sell_ENG 1911 RUB")
	util.AddNetworkString("Sell_ENG 1911 DOL")
	util.AddNetworkString("Sell_ENG m249 RUB")
	util.AddNetworkString("Sell_ENG m249 DOL")
	util.AddNetworkString("Sell_ENG m3super RUB")
	util.AddNetworkString("Sell_ENG m3super DOL")
	util.AddNetworkString("Sell_ENG mac RUB")
	util.AddNetworkString("Sell_ENG mac DOL")
	util.AddNetworkString("Sell_ENG mr96 RUB")
	util.AddNetworkString("Sell_ENG mr96 DOL")
	util.AddNetworkString("Sell_ENG p99 RUB")
	util.AddNetworkString("Sell_ENG p99 DOL")
	util.AddNetworkString("Sell_ENG shorty RUB")
	util.AddNetworkString("Sell_ENG shorty DOL")
net.Receive("Sell_ENG Pistol RUB", function(len, ply)
	if ply:HasWeapon("cw_makarov") then
	ply:AddRUB(160)
ply:StripWeapon("cw_makarov")
end
end)

net.Receive("Sell_ENG Pistol DOL", function(len, ply)
	if ply:HasWeapon("cw_makarov") then
	ply:AddDOL(50)
ply:StripWeapon("cw_makarov")
end
end)

net.Receive("Sell_ENG AK RUB", function(len, ply)
	if ply:HasWeapon("cw_ak74") then
	ply:AddRUB(1250)
ply:StripWeapon("cw_ak74")
end
end)

net.Receive("Sell_ENG AK DOL", function(len, ply)
	if ply:HasWeapon("cw_ak74") then
	ply:AddDOL(660)
ply:StripWeapon("cw_ak74")
end
end)

net.Receive("Sell_ENG VSS RUB", function(len, ply)
	if ply:HasWeapon("cw_vss") then
	ply:AddRUB(2580)
ply:StripWeapon("cw_vss")
end
end)

net.Receive("Sell_ENG VSS DOL", function(len, ply)
	if ply:HasWeapon("cw_vss") then
	ply:AddDOL(1000)
ply:StripWeapon("cw_vss")
end
end)

net.Receive("Sell_ENG AR RUB", function(len, ply)
	if ply:HasWeapon("cw_ar15") then
	ply:AddRUB(1450)
ply:StripWeapon("cw_ar15")
end
end)

net.Receive("Sell_ENG AR DOL", function(len, ply)
	if ply:HasWeapon("cw_ar15") then
	ply:AddDOL(700)
ply:StripWeapon("cw_ar15")
end
end)
net.Receive("Sell_ENG fseven RUB", function(len, ply)
	if ply:HasWeapon("cw_fiveseven") then
	ply:AddRUB(315)
ply:StripWeapon("cw_fiveseven")
end
end)

net.Receive("Sell_ENG fseven DOL", function(len, ply)
	if ply:HasWeapon("cw_fiveseven") then
	ply:AddDOL(115)
ply:StripWeapon("cw_fiveseven")
end
end)

net.Receive("Sell_ENG scar RUB", function(len, ply)
	if ply:HasWeapon("cw_scarh") then
	ply:AddRUB(2650)
ply:StripWeapon("cw_scarh")
end
end)

net.Receive("Sell_ENG scar DOL", function(len, ply)
	if ply:HasWeapon("cw_scarh") then
	ply:AddDOL(1000)
ply:StripWeapon("cw_scarh")
end
end)

net.Receive("Sell_ENG g3a3 RUB", function(len, ply)
	if ply:HasWeapon("cw_g3a3") then
	ply:AddRUB(2580)
	ply:StripWeapon("cw_g3a3")
end
end)

net.Receive("Sell_ENG g3a3 DOL", function(len, ply)
	if ply:HasWeapon("cw_g3a3") then
	ply:AddDOL(915)
ply:StripWeapon("cw_g3a3")
end
end)

net.Receive("Sell_ENG g36 RUB", function(len, ply)
	if ply:HasWeapon("cw_g36c") then
	ply:AddRUB(1780)
	ply:StripWeapon("cw_g36c")
end
end)

net.Receive("Sell_ENG g36 DOL", function(len, ply)
	if ply:HasWeapon("cw_g36c") then
	ply:AddDOL(830)
ply:StripWeapon("cw_g36c")
end
end)

net.Receive("Sell_ENG ump RUB", function(len, ply)
	if ply:HasWeapon("cw_ump45") then
	ply:AddRUB(915)
	ply:StripWeapon("cw_ump45")
end
end)

net.Receive("Sell_ENG ump DOL", function(len, ply)
	if ply:HasWeapon("cw_ump45") then
	ply:AddDOL(400)
ply:StripWeapon("cw_ump45")
end
end)

net.Receive("Sell_ENG mp5 RUB", function(len, ply)
	if ply:HasWeapon("cw_mp5") then
	ply:AddRUB(750)
	ply:StripWeapon("cw_mp5")
end
end)

net.Receive("Sell_ENG mp5 DOL", function(len, ply)
	if ply:HasWeapon("cw_mp5") then
	ply:AddDOL(200)
ply:StripWeapon("cw_mp5")
end
end)

net.Receive("Sell_ENG deagle RUB", function(len, ply)
	if ply:HasWeapon("cw_deagle") then
	ply:AddRUB(550)
	ply:StripWeapon("cw_deagle")
end
end)

net.Receive("Sell_ENG deagle DOL", function(len, ply)
	if ply:HasWeapon("cw_deagle") then
	ply:AddDOL(230)
ply:StripWeapon("cw_deagle")
end
end)

net.Receive("Sell_ENG l115 RUB", function(len, ply)
	if ply:HasWeapon("cw_l115") then
	ply:AddRUB(3330)
	ply:StripWeapon("cw_l115")
end
end)

net.Receive("Sell_ENG l115 DOL", function(len, ply)
	if ply:HasWeapon("cw_l115") then
	ply:AddDOL(1410)
ply:StripWeapon("cw_l115")
end
end)

net.Receive("Sell_ENG l85 RUB", function(len, ply)
	if ply:HasWeapon("cw_l85a2") then
	ply:AddRUB(1580)
	ply:StripWeapon("cw_l85a2")
end
end)

net.Receive("Sell_ENG l85 DOL", function(len, ply)
	if ply:HasWeapon("cw_l85a2") then
	ply:AddDOL(750)
ply:StripWeapon("cw_l85a2")
end
end)

net.Receive("Sell_ENG m14 RUB", function(len, ply)
	if ply:HasWeapon("cw_m14") then
	ply:AddRUB(3080)
	ply:StripWeapon("cw_m14")
end
end)

net.Receive("Sell_ENG m14 DOL", function(len, ply)
	if ply:HasWeapon("cw_m14") then
	ply:AddDOL(1115)
ply:StripWeapon("cw_m14")
end
end)

net.Receive("Sell_ENG 1911 RUB", function(len, ply)
	if ply:HasWeapon("cw_m1911") then
	ply:AddRUB(280)
	ply:StripWeapon("cw_m1911")
end
end)

net.Receive("Sell_ENG 1911 DOL", function(len, ply)
	if ply:HasWeapon("cw_m1911") then
	ply:AddDOL(90)
ply:StripWeapon("cw_m1911")
end
end)

net.Receive("Sell_ENG m249 RUB", function(len, ply)
	if ply:HasWeapon("cw_m249_official") then
	ply:AddRUB(3830)
	ply:StripWeapon("cw_m249_official")
end
end)

net.Receive("Sell_ENG m249 DOL", function(len, ply)
	if ply:HasWeapon("cw_m249_official") then
	ply:AddDOL(1410)
ply:StripWeapon("cw_m249_official")
end
end)

net.Receive("Sell_ENG m3super RUB", function(len, ply)
	if ply:HasWeapon("cw_m3super90") then
	ply:AddRUB(910)
	ply:StripWeapon("cw_m3super90")
end
end)

net.Receive("Sell_ENG m3super DOL", function(len, ply)
	if ply:HasWeapon("cw_m3super90") then
	ply:AddDOL(400)
ply:StripWeapon("cw_m3super90")
end
end)

net.Receive("Sell_ENG mac RUB", function(len, ply)
	if ply:HasWeapon("cw_mac11") then
	ply:AddRUB(400)
	ply:StripWeapon("cw_mac11")
end
end)

net.Receive("Sell_ENG mac DOL", function(len, ply)
	if ply:HasWeapon("cw_mac11") then
	ply:AddDOL(180)
ply:StripWeapon("cw_mac11")
end
end)

net.Receive("Sell_ENG mr96 RUB", function(len, ply)
	if ply:HasWeapon("cw_mr96") then
	ply:AddRUB(750)
	ply:StripWeapon("cw_mr96")
end
end)

net.Receive("Sell_ENG mr96 DOL", function(len, ply)
	if ply:HasWeapon("cw_mr96") then
	ply:AddDOL(280)
ply:StripWeapon("cw_mr96")
end
end)

net.Receive("Sell_ENG p99 RUB", function(len, ply)
	if ply:HasWeapon("cw_p99") then
	ply:AddRUB(200)
	ply:StripWeapon("cw_p99")
end
end)

net.Receive("Sell_ENG p99 DOL", function(len, ply)
	if ply:HasWeapon("cw_p99") then
	ply:AddDOL(60)
ply:StripWeapon("cw_p99")
end
end)

net.Receive("Sell_ENG shorty RUB", function(len, ply)
	if ply:HasWeapon("cw_shorty") then
	ply:AddRUB(450)
	ply:StripWeapon("cw_shorty")
end
end)

net.Receive("Sell_ENG shorty DOL", function(len, ply)
	if ply:HasWeapon("cw_shorty") then
	ply:AddDOL(190)
ply:StripWeapon("cw_shorty")
end
end)