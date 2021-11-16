	util.AddNetworkString("Buy Pistol RUB")
	util.AddNetworkString("Buy Pistol DOL")
	util.AddNetworkString("Buy AK RUB")
	util.AddNetworkString("Buy AK DOL")
	util.AddNetworkString("Buy VSS RUB")
	util.AddNetworkString("Buy VSS DOL")
	util.AddNetworkString("Buy AR RUB")
	util.AddNetworkString("Buy AR DOL")
	util.AddNetworkString("Buy fseven RUB")
	util.AddNetworkString("Buy fseven DOL")
	util.AddNetworkString("Buy scar RUB")
	util.AddNetworkString("Buy scar DOL")
	util.AddNetworkString("Buy g3a3 RUB")
	util.AddNetworkString("Buy g3a3 DOL")
	util.AddNetworkString("Buy g36 RUB")
	util.AddNetworkString("Buy g36 DOL")
	util.AddNetworkString("Buy ump RUB")
	util.AddNetworkString("Buy ump DOL")
	util.AddNetworkString("Buy mp5 RUB")
	util.AddNetworkString("Buy mp5 DOL")
	util.AddNetworkString("Buy deagle RUB")
	util.AddNetworkString("Buy deagle DOL")
	util.AddNetworkString("Buy l115 RUB")
	util.AddNetworkString("Buy l115 DOL")
	util.AddNetworkString("Buy l85 RUB")
	util.AddNetworkString("Buy l85 DOL")
	util.AddNetworkString("Buy m14 RUB")
	util.AddNetworkString("Buy m14 DOL")
	util.AddNetworkString("Buy 1911 RUB")
	util.AddNetworkString("Buy 1911 DOL")
	util.AddNetworkString("Buy m249 RUB")
	util.AddNetworkString("Buy m249 DOL")
	util.AddNetworkString("Buy m3super RUB")
	util.AddNetworkString("Buy m3super DOL")
	util.AddNetworkString("Buy mac RUB")
	util.AddNetworkString("Buy mac DOL")
	util.AddNetworkString("Buy mr96 RUB")
	util.AddNetworkString("Buy mr96 DOL")
	util.AddNetworkString("Buy p99 RUB")
	util.AddNetworkString("Buy p99 DOL")
	util.AddNetworkString("Buy shorty RUB")
	util.AddNetworkString("Buy shorty DOL")
	util.AddNetworkString("Buy flaregun RUB")
	util.AddNetworkString("Buy flaregun DOL")
net.Receive("Buy Pistol RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 400 then
	ply:TakeRUB(400)
ply:Give("cw_makarov")
end
end)

net.Receive("Buy Pistol DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 175 then
	ply:TakeDOL(175)
ply:Give("cw_makarov")
end
end)

net.Receive("Buy AK RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 3500 then
	ply:TakeRUB(3500)
ply:Give("cw_ak74")
end
end)

net.Receive("Buy AK DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 2000 then
	ply:TakeDOL(2000)
ply:Give("cw_ak74")
end
end)

net.Receive("Buy VSS RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 7000 then
	ply:TakeRUB(7000)
ply:Give("cw_vss")
end
end)

net.Receive("Buy VSS DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 3000 then
	ply:TakeDOL(3000)
ply:Give("cw_vss")
end
end)

net.Receive("Buy AR RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 4000 then
	ply:TakeRUB(4000)
ply:Give("cw_ar15")
end
end)

net.Receive("Buy AR DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 2250 then
	ply:TakeDOL(2250)
ply:Give("cw_ar15")
end
end)
net.Receive("Buy fseven RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 850 then
	ply:TakeRUB(850)
ply:Give("cw_fiveseven")
end
end)

net.Receive("Buy fseven DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 400 then
	ply:TakeDOL(400)
ply:Give("cw_fiveseven")
end
end)

net.Receive("Buy scar RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 7500 then
	ply:TakeRUB(7500)
ply:Give("cw_scarh")
end
end)

net.Receive("Buy scar DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 3500 then
	ply:TakeDOL(3500)
ply:Give("cw_scarh")
end
end)

net.Receive("Buy g3a3 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 7000 then
	ply:TakeRUB(7000)
	ply:Give("cw_g3a3")
end
end)

net.Receive("Buy g3a3 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 3000 then
	ply:TakeDOL(3000)
ply:Give("cw_g3a3")
end
end)

net.Receive("Buy g36 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 5000 then
	ply:TakeRUB(5000)
	ply:Give("cw_g36c")
end
end)

net.Receive("Buy g36 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 2750 then
	ply:TakeDOL(2750)
ply:Give("cw_g36c")
end
end)

net.Receive("Buy ump RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 2500 then
	ply:TakeRUB(2500)
	ply:Give("cw_ump45")
end
end)

net.Receive("Buy ump DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 1350 then
	ply:TakeDOL(1350)
ply:Give("cw_ump45")
end
end)

net.Receive("Buy mp5 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 2000 then
	ply:TakeRUB(2000)
	ply:Give("cw_mp5")
end
end)

net.Receive("Buy mp5 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 1000 then
	ply:TakeDOL(1000)
ply:Give("cw_mp5")
end
end)

net.Receive("Buy deagle RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 1500 then
	ply:TakeRUB(1500)
	ply:Give("cw_deagle")
end
end)

net.Receive("Buy deagle DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 800 then
	ply:TakeDOL(800)
ply:Give("cw_deagle")
end
end)

net.Receive("Buy l115 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 10000 then
	ply:TakeRUB(10000)
	ply:Give("cw_l115")
end
end)

net.Receive("Buy l115 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 5000 then
	ply:TakeDOL(5000)
ply:Give("cw_l115")
end
end)

net.Receive("Buy l85 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 4500 then
	ply:TakeRUB(4500)
	ply:Give("cw_l85a2")
end
end)

net.Receive("Buy l85 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 2500 then
	ply:TakeDOL(2500)
ply:Give("cw_l85a2")
end
end)

net.Receive("Buy m14 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 8500 then
	ply:TakeRUB(8500)
	ply:Give("cw_m14")
end
end)

net.Receive("Buy m14 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 3750 then
	ply:TakeDOL(3750)
ply:Give("cw_m14")
end
end)

net.Receive("Buy 1911 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 750 then
	ply:TakeRUB(750)
	ply:Give("cw_m1911")
end
end)

net.Receive("Buy 1911 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 300 then
	ply:TakeDOL(300)
ply:Give("cw_m1911")
end
end)

net.Receive("Buy m249 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 10000 then
	ply:TakeRUB(10000)
	ply:Give("cw_m249_official")
end
end)

net.Receive("Buy m249 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 5000 then
	ply:TakeDOL(5000)
ply:Give("cw_m249_official")
end
end)

net.Receive("Buy m3super RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 2500 then
	ply:TakeRUB(2500)
	ply:Give("cw_m3super90")
end
end)

net.Receive("Buy m3super DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 1350 then
	ply:TakeDOL(1350)
ply:Give("cw_m3super90")
end
end)

net.Receive("Buy mac RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 1150 then
	ply:TakeRUB(1150)
	ply:Give("cw_mac11")
end
end)

net.Receive("Buy mac DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 600 then
	ply:TakeDOL(600)
ply:Give("cw_mac11")
end
end)

net.Receive("Buy mr96 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 2000 then
	ply:TakeRUB(2000)
	ply:Give("cw_mr96")
end
end)

net.Receive("Buy mr96 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 1000 then
	ply:TakeDOL(1000)
ply:Give("cw_mr96")
end
end)

net.Receive("Buy p99 RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 600 then
	ply:TakeRUB(600)
	ply:Give("cw_p99")
end
end)

net.Receive("Buy p99 DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 250 then
	ply:TakeDOL(250)
ply:Give("cw_p99")
end
end)

net.Receive("Buy shorty RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 1250 then
	ply:TakeRUB(1250)
	ply:Give("cw_shorty")
end
end)

net.Receive("Buy shorty DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 650 then
	ply:TakeDOL(650)
ply:Give("cw_shorty")
end
end)

net.Receive("Buy flaregun RUB", function(len, ply)
	if tonumber(ply:GetRUB()) >= 10000 then
	ply:TakeRUB(10000)
	ply:Give("evac_flare_gun")
end
end)

net.Receive("Buy flaregun DOL", function(len, ply)
	if tonumber(ply:GetDOL()) >= 5050 then
	ply:TakeDOL(5050)
ply:Give("evac_flare_gun")
end
end)