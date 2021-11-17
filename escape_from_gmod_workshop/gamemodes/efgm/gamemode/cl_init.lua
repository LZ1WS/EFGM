include( "shared.lua" )
include("core/spawnmenu_restrict/cl_spawnmenu.lua")
include("core/economy/trader_ru/cl_menu.lua")
include("core/economy/trader_eng/cl_menu.lua")
include("core/economy/seller_ru/cl_menu.lua")
include("core/economy/seller_eng/cl_menu.lua")
include("core/base_system/cl_base_upgrade_menu.lua")

hook.Add( 'HUDDrawTargetID', 'HideDrawTarget', function() return false end )

	hook.Add("ContextMenuOpen", "restrict contmenu", function()
		if LocalPlayer():Team() ~= 2 then
return false
else
	return true
end
end)
function GM:ScalePlayerDamage(ply, hitgroup, dmginfo)
if (hitgroup == HITGROUP_HEAD) then
dmginfo:ScaleDamage(2)
else
if (hitgroup == HITGROUP_LEFTARM or hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTARM or
higroup == HITGROUP_RIGHTLEG) then
dmginfo:ScaleDamage(0.50)
else
if (hitgroup == HITGROUP_STOMACH) then
dmginfo:ScaleDamage(1)
end
end
end
end

hook.Add("InitPostEntity", "Localize", function()
net.Start("Localization")
net.WriteString(language.GetPhrase("efg.received"))
net.WriteString(language.GetPhrase("efg.lost"))
net.WriteString(language.GetPhrase("efg.receive"))
net.WriteString(language.GetPhrase("efg.lostrub"))
net.WriteString(language.GetPhrase("efg.lostdol"))
net.WriteString(language.GetPhrase("efg.awardrub"))
net.WriteString(language.GetPhrase("efg.awarddol"))
net.WriteString(language.GetPhrase("efg.give"))
net.WriteString(language.GetPhrase("efg.receivedrub"))
net.WriteString(language.GetPhrase("efg.receiveddol"))
net.WriteString(language.GetPhrase("efg.rubs"))
net.WriteString(language.GetPhrase("efg.dols"))
net.WriteString(language.GetPhrase("efg.inevaczone"))
net.SendToServer()
end)

function LanguageChanged(lang)
net.Start("Localization")
net.WriteString(language.GetPhrase("efg.received"))
net.WriteString(language.GetPhrase("efg.lost"))
net.WriteString(language.GetPhrase("efg.receive"))
net.WriteString(language.GetPhrase("efg.lostrub"))
net.WriteString(language.GetPhrase("efg.lostdol"))
net.WriteString(language.GetPhrase("efg.awardrub"))
net.WriteString(language.GetPhrase("efg.awarddol"))
net.WriteString(language.GetPhrase("efg.give"))
net.WriteString(language.GetPhrase("efg.receivedrub"))
net.WriteString(language.GetPhrase("efg.receiveddol"))
net.WriteString(language.GetPhrase("efg.rubs"))
net.WriteString(language.GetPhrase("efg.dols"))
net.WriteString(language.GetPhrase("efg.inevaczone"))
net.SendToServer()
end