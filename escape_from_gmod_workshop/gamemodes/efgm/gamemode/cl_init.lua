include( "shared.lua" )
include("core/spawnmenu_restrict/cl_spawnmenu.lua")
include("core/economy/trader_ru/cl_menu.lua")
include("core/economy/seller_ru/cl_menu.lua")
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

net.Receive("notifications", function(len, ply)
local GM = GM or GAMEMODE
local type = net.ReadString()
local sound = net.ReadString()

notification.AddLegacy(GM.LANG:GetString(type), 0, 4)
if (sound) then
surface.PlaySound( sound )
end
end)