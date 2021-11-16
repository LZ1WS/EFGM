	util.AddNetworkString("Buy_ENG Pistol RUB")
	util.AddNetworkString("Buy_ENG Pistol DOL")
	util.AddNetworkString("Buy_ENG AK RUB")
	util.AddNetworkString("Buy_ENG AK DOL")
	util.AddNetworkString("Buy_ENG VSS RUB")
	util.AddNetworkString("Buy_ENG VSS DOL")
	util.AddNetworkString("Buy_ENG AR RUB")
	util.AddNetworkString("Buy_ENG AR DOL")
	util.AddNetworkString("Buy_ENG fseven RUB")
	util.AddNetworkString("Buy_ENG fseven DOL")
	util.AddNetworkString("Buy_ENG scar RUB")
	util.AddNetworkString("Buy_ENG scar DOL")
	util.AddNetworkString("Buy_ENG g3a3 RUB")
	util.AddNetworkString("Buy_ENG g3a3 DOL")
	util.AddNetworkString("Buy_ENG g36 RUB")
	util.AddNetworkString("Buy_ENG g36 DOL")
	util.AddNetworkString("Buy_ENG ump RUB")
	util.AddNetworkString("Buy_ENG ump DOL")
	util.AddNetworkString("Buy_ENG mp5 RUB")
	util.AddNetworkString("Buy_ENG mp5 DOL")
	util.AddNetworkString("Buy_ENG deagle RUB")
	util.AddNetworkString("Buy_ENG deagle DOL")
	util.AddNetworkString("Buy_ENG l115 RUB")
	util.AddNetworkString("Buy_ENG l115 DOL")
	util.AddNetworkString("Buy_ENG l85 RUB")
	util.AddNetworkString("Buy_ENG l85 DOL")
	util.AddNetworkString("Buy_ENG m14 RUB")
	util.AddNetworkString("Buy_ENG m14 DOL")
	util.AddNetworkString("Buy_ENG 1911 RUB")
	util.AddNetworkString("Buy_ENG 1911 DOL")
	util.AddNetworkString("Buy_ENG m249 RUB")
	util.AddNetworkString("Buy_ENG m249 DOL")
	util.AddNetworkString("Buy_ENG m3super RUB")
	util.AddNetworkString("Buy_ENG m3super DOL")
	util.AddNetworkString("Buy_ENG mac RUB")
	util.AddNetworkString("Buy_ENG mac DOL")
	util.AddNetworkString("Buy_ENG mr96 RUB")
	util.AddNetworkString("Buy_ENG mr96 DOL")
	util.AddNetworkString("Buy_ENG p99 RUB")
	util.AddNetworkString("Buy_ENG p99 DOL")
	util.AddNetworkString("Buy_ENG shorty RUB")
	util.AddNetworkString("Buy_ENG shorty DOL")
	util.AddNetworkString("Buy_ENG flaregun RUB")
	util.AddNetworkString("Buy_ENG flaregun DOL")
net.Receive("Buy_ENG Pistol RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 500 then
	ply:TakeRUB(500)
ply:Give("cw_makarov")
end
end)

net.Receive("Buy_ENG Pistol DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 175 then
	ply:TakeDOL(175)
ply:Give("cw_makarov")
end
end)

net.Receive("Buy_ENG AK RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 3750 then
	ply:TakeRUB(3750)
ply:Give("cw_ak74")
end
end)

net.Receive("Buy_ENG AK DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 2000 then
	ply:TakeDOL(2000)
ply:Give("cw_ak74")
end
end)

net.Receive("Buy_ENG VSS RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 7750 then
	ply:TakeRUB(7750)
ply:Give("cw_vss")
end
end)

net.Receive("Buy_ENG VSS DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 3000 then
	ply:TakeDOL(3000)
ply:Give("cw_vss")
end
end)

net.Receive("Buy_ENG AR RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 4350 then
	ply:TakeRUB(4350)
ply:Give("cw_ar15")
end
end)

net.Receive("Buy_ENG AR DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 2100 then
	ply:TakeDOL(2100)
ply:Give("cw_ar15")
end
end)
net.Receive("Buy_ENG fseven RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 950 then
	ply:TakeRUB(950)
ply:Give("cw_fiveseven")
end
end)

net.Receive("Buy_ENG fseven DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 350 then
	ply:TakeDOL(350)
ply:Give("cw_fiveseven")
end
end)

net.Receive("Buy_ENG scar RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 8000 then
	ply:TakeRUB(8000)
ply:Give("cw_scarh")
end
end)

net.Receive("Buy_ENG scar DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 3000 then
	ply:TakeDOL(3000)
ply:Give("cw_scarh")
end
end)

net.Receive("Buy_ENG g3a3 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 7750 then
	ply:TakeRUB(7750)
	ply:Give("cw_g3a3")
end
end)

net.Receive("Buy_ENG g3a3 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 2750 then
	ply:TakeDOL(2750)
ply:Give("cw_g3a3")
end
end)

net.Receive("Buy_ENG g36 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 5350 then
	ply:TakeRUB(5350)
	ply:Give("cw_g36c")
end
end)

net.Receive("Buy_ENG g36 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 2500 then
	ply:TakeDOL(2500)
ply:Give("cw_g36c")
end
end)

net.Receive("Buy_ENG ump RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 2750 then
	ply:TakeRUB(2750)
	ply:Give("cw_ump45")
end
end)

net.Receive("Buy_ENG ump DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 1225 then
	ply:TakeDOL(1225)
ply:Give("cw_ump45")
end
end)

net.Receive("Buy_ENG mp5 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 2250 then
	ply:TakeRUB(2250)
	ply:Give("cw_mp5")
end
end)

net.Receive("Buy_ENG mp5 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 900 then
	ply:TakeDOL(900)
ply:Give("cw_mp5")
end
end)

net.Receive("Buy_ENG deagle RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 1650 then
	ply:TakeRUB(1650)
	ply:Give("cw_deagle")
end
end)

net.Receive("Buy_ENG deagle DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 700 then
	ply:TakeDOL(700)
ply:Give("cw_deagle")
end
end)

net.Receive("Buy_ENG l115 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 10000 then
	ply:TakeRUB(10000)
	ply:Give("cw_l115")
end
end)

net.Receive("Buy_ENG l115 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 4250 then
	ply:TakeDOL(4250)
ply:Give("cw_l115")
end
end)

net.Receive("Buy_ENG l85 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 4750 then
	ply:TakeRUB(4750)
	ply:Give("cw_l85a2")
end
end)

net.Receive("Buy_ENG l85 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 2250 then
	ply:TakeDOL(2250)
ply:Give("cw_l85a2")
end
end)

net.Receive("Buy_ENG m14 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 9250 then
	ply:TakeRUB(9250)
	ply:Give("cw_m14")
end
end)

net.Receive("Buy_ENG m14 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 3350 then
	ply:TakeDOL(3350)
ply:Give("cw_m14")
end
end)

net.Receive("Buy_ENG 1911 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 850 then
	ply:TakeRUB(850)
	ply:Give("cw_m1911")
end
end)

net.Receive("Buy_ENG 1911 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 275 then
	ply:TakeDOL(275)
ply:Give("cw_m1911")
end
end)

net.Receive("Buy_ENG m249 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 11500 then
	ply:TakeRUB(11500)
	ply:Give("cw_m249_official")
end
end)

net.Receive("Buy_ENG m249 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 4250 then
	ply:TakeDOL(4250)
ply:Give("cw_m249_official")
end
end)

net.Receive("Buy_ENG m3super RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 2750 then
	ply:TakeRUB(2750)
	ply:Give("cw_m3super90")
end
end)

net.Receive("Buy_ENG m3super DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 1225 then
	ply:TakeDOL(1225)
ply:Give("cw_m3super90")
end
end)

net.Receive("Buy_ENG mac RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 1250 then
	ply:TakeRUB(1250)
	ply:Give("cw_mac11")
end
end)

net.Receive("Buy_ENG mac DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 550 then
	ply:TakeDOL(550)
ply:Give("cw_mac11")
end
end)

net.Receive("Buy_ENG mr96 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 2250 then
	ply:TakeRUB(2250)
	ply:Give("cw_mr96")
end
end)

net.Receive("Buy_ENG mr96 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 850 then
	ply:TakeDOL(850)
ply:Give("cw_mr96")
end
end)

net.Receive("Buy_ENG p99 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 600 then
	ply:TakeRUB(600)
	ply:Give("cw_p99")
end
end)

net.Receive("Buy_ENG p99 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 200 then
	ply:TakeDOL(200)
ply:Give("cw_p99")
end
end)

net.Receive("Buy_ENG shorty RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 1350 then
	ply:TakeRUB(1350)
	ply:Give("cw_shorty")
end
end)

net.Receive("Buy_ENG shorty DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 575 then
	ply:TakeDOL(575)
ply:Give("cw_shorty")
end
end)

net.Receive("Buy_ENG flaregun RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 10000 then
	ply:TakeRUB(10000)
	ply:Give("evac_flare_gun")
end
end)

net.Receive("Buy_ENG flaregun DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 4800 then
	ply:TakeDOL(4800)
ply:Give("evac_flare_gun")
end
end)