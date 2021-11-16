	util.AddNetworkString("Sell Pistol RUB")
	util.AddNetworkString("Sell Pistol DOL")
	util.AddNetworkString("Sell AK RUB")
	util.AddNetworkString("Sell AK DOL")
	util.AddNetworkString("Sell VSS RUB")
	util.AddNetworkString("Sell VSS DOL")
	util.AddNetworkString("Sell AR RUB")
	util.AddNetworkString("Sell AR DOL")
	util.AddNetworkString("Sell fseven RUB")
	util.AddNetworkString("Sell fseven DOL")
	util.AddNetworkString("Sell scar RUB")
	util.AddNetworkString("Sell scar DOL")
	util.AddNetworkString("Sell g3a3 RUB")
	util.AddNetworkString("Sell g3a3 DOL")
	util.AddNetworkString("Sell g36 RUB")
	util.AddNetworkString("Sell g36 DOL")
	util.AddNetworkString("Sell ump RUB")
	util.AddNetworkString("Sell ump DOL")
	util.AddNetworkString("Sell mp5 RUB")
	util.AddNetworkString("Sell mp5 DOL")
	util.AddNetworkString("Sell deagle RUB")
	util.AddNetworkString("Sell deagle DOL")
	util.AddNetworkString("Sell l115 RUB")
	util.AddNetworkString("Sell l115 DOL")
	util.AddNetworkString("Sell l85 RUB")
	util.AddNetworkString("Sell l85 DOL")
	util.AddNetworkString("Sell m14 RUB")
	util.AddNetworkString("Sell m14 DOL")
	util.AddNetworkString("Sell 1911 RUB")
	util.AddNetworkString("Sell 1911 DOL")
	util.AddNetworkString("Sell m249 RUB")
	util.AddNetworkString("Sell m249 DOL")
	util.AddNetworkString("Sell m3super RUB")
	util.AddNetworkString("Sell m3super DOL")
	util.AddNetworkString("Sell mac RUB")
	util.AddNetworkString("Sell mac DOL")
	util.AddNetworkString("Sell mr96 RUB")
	util.AddNetworkString("Sell mr96 DOL")
	util.AddNetworkString("Sell p99 RUB")
	util.AddNetworkString("Sell p99 DOL")
	util.AddNetworkString("Sell shorty RUB")
	util.AddNetworkString("Sell shorty DOL")

net.Receive("Sell Pistol RUB", function(len, ply)
	if ply:HasWeapon("cw_makarov") then
	ply:AddRUB(133)
ply:StripWeapon("cw_makarov")
end
end)

net.Receive("Sell Pistol DOL", function(len, ply)
	if ply:HasWeapon("cw_makarov") then
	ply:AddDOL(58)
ply:StripWeapon("cw_makarov")
end
end)

net.Receive("Sell AK RUB", function(len, ply)
	if ply:HasWeapon("cw_ak74") then
	ply:AddRUB(1150)
ply:StripWeapon("cw_ak74")
end
end)

net.Receive("Sell AK DOL", function(len, ply)
	if ply:HasWeapon("cw_ak74") then
	ply:AddDOL(650)
ply:StripWeapon("cw_ak74")
end
end)

net.Receive("Sell VSS RUB", function(len, ply)
	if ply:HasWeapon("cw_vss") then
	ply:AddRUB(2332)
ply:StripWeapon("cw_vss")
end
end)

net.Receive("Sell VSS DOL", function(len, ply)
	if ply:HasWeapon("cw_vss") then
	ply:AddDOL(1000)
ply:StripWeapon("cw_vss")
end
end)

net.Receive("Sell AR RUB", function(len, ply)
	if ply:HasWeapon("cw_ar15") then
	ply:AddRUB(1332)
ply:StripWeapon("cw_ar15")
end
end)

net.Receive("Sell AR DOL", function(len, ply)
	if ply:HasWeapon("cw_ar15") then
	ply:AddDOL(750)
ply:StripWeapon("cw_ar15")
end
end)
net.Receive("Sell fseven RUB", function(len, ply)
	if ply:HasWeapon("cw_fiveseven") then
	ply:AddRUB(280)
ply:StripWeapon("cw_fiveseven")
end
end)

net.Receive("Sell fseven DOL", function(len, ply)
	if ply:HasWeapon("cw_fiveseven") then
	ply:AddDOL(130)
ply:StripWeapon("cw_fiveseven")
end
end)

net.Receive("Sell scar RUB", function(len, ply)
	if ply:HasWeapon("cw_scarh") then
	ply:AddRUB(2500)
ply:StripWeapon("cw_scarh")
end
end)

net.Receive("Sell scar DOL", function(len, ply)
	if ply:HasWeapon("cw_scarh") then
	ply:AddDOL(1165)
ply:StripWeapon("cw_scarh")
end
end)

net.Receive("Sell g3a3 RUB", function(len, ply)
	if ply:HasWeapon("cw_g3a3") then
	ply:AddRUB(2330)
	ply:StripWeapon("cw_g3a3")
end
end)

net.Receive("Sell g3a3 DOL", function(len, ply)
	if ply:HasWeapon("cw_g3a3") then
	ply:AddDOL(1000)
ply:StripWeapon("cw_g3a3")
end
end)

net.Receive("Sell g36 RUB", function(len, ply)
	if ply:HasWeapon("cw_g36c") then
	ply:AddRUB(1600)
	ply:StripWeapon("cw_g36c")
end
end)

net.Receive("Sell g36 DOL", function(len, ply)
	if ply:HasWeapon("cw_g36c") then
	ply:AddDOL(915)
ply:StripWeapon("cw_g36c")
end
end)

net.Receive("Sell ump RUB", function(len, ply)
	if ply:HasWeapon("cw_ump45") then
	ply:AddRUB(830)
	ply:StripWeapon("cw_ump45")
end
end)

net.Receive("Sell ump DOL", function(len, ply)
	if ply:HasWeapon("cw_ump45") then
	ply:AddDOL(450)
ply:StripWeapon("cw_ump45")
end
end)

net.Receive("Sell mp5 RUB", function(len, ply)
	if ply:HasWeapon("cw_mp5") then
	ply:AddRUB(650)
	ply:StripWeapon("cw_mp5")
end
end)

net.Receive("Sell mp5 DOL", function(len, ply)
	if ply:HasWeapon("cw_mp5") then
	ply:AddDOL(330)
ply:StripWeapon("cw_mp5")
end
end)

net.Receive("Sell deagle RUB", function(len, ply)
	if ply:HasWeapon("cw_deagle") then
	ply:AddRUB(500)
	ply:StripWeapon("cw_deagle")
end
end)

net.Receive("Sell deagle DOL", function(len, ply)
	if ply:HasWeapon("cw_deagle") then
	ply:AddDOL(265)
ply:StripWeapon("cw_deagle")
end
end)

net.Receive("Sell l115 RUB", function(len, ply)
	if ply:HasWeapon("cw_l115") then
	ply:AddRUB(3330)
	ply:StripWeapon("cw_l115")
end
end)

net.Receive("Sell l115 DOL", function(len, ply)
	if ply:HasWeapon("cw_l115") then
	ply:AddDOL(1660)
ply:StripWeapon("cw_l115")
end
end)

net.Receive("Sell l85 RUB", function(len, ply)
	if ply:HasWeapon("cw_l85a2") then
	ply:AddRUB(1500)
	ply:StripWeapon("cw_l85a2")
end
end)

net.Receive("Sell l85 DOL", function(len, ply)
	if ply:HasWeapon("cw_l85a2") then
	ply:AddDOL(830)
ply:StripWeapon("cw_l85a2")
end
end)

net.Receive("Sell m14 RUB", function(len, ply)
	if ply:HasWeapon("cw_m14") then
	ply:AddRUB(2830)
	ply:StripWeapon("cw_m14")
end
end)

net.Receive("Sell m14 DOL", function(len, ply)
	if ply:HasWeapon("cw_m14") then
	ply:AddDOL(1250)
ply:StripWeapon("cw_m14")
end
end)

net.Receive("Sell 1911 RUB", function(len, ply)
	if ply:HasWeapon("cw_m1911") then
	ply:AddRUB(500)
	ply:StripWeapon("cw_m1911")
end
end)

net.Receive("Sell 1911 DOL", function(len, ply)
	if ply:HasWeapon("cw_m1911") then
	ply:AddDOL(100)
ply:StripWeapon("cw_m1911")
end
end)

net.Receive("Sell m249 RUB", function(len, ply)
	if ply:HasWeapon("cw_m249_official") then
	ply:AddRUB(3330)
	ply:StripWeapon("cw_m249_official")
end
end)

net.Receive("Sell m249 DOL", function(len, ply)
	if ply:HasWeapon("cw_m249_official") then
	ply:AddDOL(1660)
ply:StripWeapon("cw_m249_official")
end
end)

net.Receive("Sell m3super RUB", function(len, ply)
	if ply:HasWeapon("cw_m3super90") then
	ply:AddRUB(830)
	ply:StripWeapon("cw_m3super90")
end
end)

net.Receive("Sell m3super DOL", function(len, ply)
	if ply:HasWeapon("cw_m3super90") then
	ply:AddDOL(450)
ply:StripWeapon("cw_m3super90")
end
end)

net.Receive("Sell mac RUB", function(len, ply)
	if ply:HasWeapon("cw_mac11") then
	ply:AddRUB(380)
	ply:StripWeapon("cw_mac11")
end
end)

net.Receive("Sell mac DOL", function(len, ply)
	if ply:HasWeapon("cw_mac11") then
	ply:AddDOL(200)
ply:StripWeapon("cw_mac11")
end
end)

net.Receive("Sell mr96 RUB", function(len, ply)
	if ply:HasWeapon("cw_mr96") then
	ply:AddRUB(660)
	ply:StripWeapon("cw_mr96")
end
end)

net.Receive("Sell mr96 DOL", function(len, ply)
	if ply:HasWeapon("cw_mr96") then
	ply:AddDOL(330)
ply:StripWeapon("cw_mr96")
end
end)

net.Receive("Sell p99 RUB", function(len, ply)
	if ply:HasWeapon("cw_p99") then
	ply:AddRUB(200)
	ply:StripWeapon("cw_p99")
end
end)

net.Receive("Sell p99 DOL", function(len, ply)
	if ply:HasWeapon("cw_p99") then
	ply:AddDOL(80)
ply:StripWeapon("cw_p99")
end
end)

net.Receive("Sell shorty RUB", function(len, ply)
	if ply:HasWeapon("cw_shorty") then
	ply:AddRUB(415)
	ply:StripWeapon("cw_shorty")
end
end)

net.Receive("Sell shorty DOL", function(len, ply)
	if ply:HasWeapon("cw_shorty") then
	ply:AddDOL(215)
ply:StripWeapon("cw_shorty")
end
end)