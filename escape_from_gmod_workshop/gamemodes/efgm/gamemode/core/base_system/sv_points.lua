local GM = GM or GAMEMODE
hook.Add("OnNPCKilled", "PointsRaiders", function( victim, inflictor, killer )
if (killer:IsPlayer() ) then
local awardrub = math.random(0, 50)
local awarddol = math.random(0, 50)
killer:AddRUB(awardrub)
killer:AddDOL(awarddol)
killer:ChatPrint(GM.LANG:GetString("efg.received") ..awardrub.. GM.LANG:GetString("efg.awardrub"))
killer:ChatPrint(GM.LANG:GetString("efg.received") ..awarddol.. GM.LANG:GetString("efg.awarddol"))
end
end)

function BloodMoney(victim, attacker, dmginfo)
	local BloodMoneyPayoutRUB = victim:GetRUB() * 0.2
	local BloodMoneyPayoutDOL = victim:GetDOL() * 0.2
	if victim ~= attacker and attacker:IsPlayer() then
	if BloodMoneyPayoutRUB ~= -BloodMoneyPayoutRUB then
		attacker:AddRUB(math.ceil(BloodMoneyPayoutRUB))
		attacker:ChatPrint(GM.LANG:GetString("efg.received") ..BloodMoneyPayoutRUB.. GM.LANG:GetString("efg.receivedrub") ..victim:Nick().."!")
		victim:TakeRUB(math.ceil(BloodMoneyPayoutRUB))
		victim:ChatPrint(GM.LANG:GetString("efg.lost") ..BloodMoneyPayoutRUB.. GM.LANG:GetString("efg.lostrub") ..attacker:Nick().."!")
	end
		if BloodMoneyPayoutDOL ~= -BloodMoneyPayoutDOL then
		attacker:AddDOL(math.ceil(BloodMoneyPayoutDOL))
		attacker:ChatPrint(GM.LANG:GetString("efg.received") ..BloodMoneyPayoutDOL.. GM.LANG:GetString("efg.receiveddol") ..victim:Nick().."!")
		victim:TakeDOL(math.ceil(BloodMoneyPayoutDOL))
		victim:ChatPrint(GM.LANG:GetString("efg.lost") ..BloodMoneyPayoutDOL.. GM.LANG:GetString("efg.lostdol") ..attacker:Nick().."!")
	end
	end
end
hook.Add("PlayerDeath", "BloodMoneyFunc", BloodMoney)