if SERVER then

local blacklist = {"weapon_physcannon", "weapon_physgun", "gmod_tool", "gmod_camera",
"manhack_welder", "weapon_fists", "cw_ak74_bl", "cw_fiveseven_bl", "cw_makarov_bl", "cw_ump45_bl"}

CreateConVar("sv_dropweapon_ondeath", "0", {FCVAR_ARCHIVE}, "Should players drop their weapons on death?")
CreateConVar("sv_dropweapon_ondeath_activeonly", "1", {FCVAR_ARCHIVE}, "Should players drop their active weapon only on death? (Requires dropping weapons on death to be enabled)")


local function DropWeapon(ply, wpn, forceblacklist)
if not IsValid(wpn) then return end
if (blacklist[wpn:GetClass()] or wpn.AdminOnly) and (forceblacklist or not ply:IsAdmin() or not cv_blacklist_adminbypass:GetBool()) then return end -- i don't want make separate function for this shit :V

ply:DropWeapon(wpn)
end

concommand.Add("+drop", function(ply) DropWeapon(ply, ply:GetActiveWeapon()) end)
concommand.Add("-drop", function(ply) end)

hook.Add("PlayerSay", "Commands", function(ply, text)
if text == "/drop" then


if table.HasValue(blacklist,ply:GetActiveWeapon():GetClass()) then
ply:SendLua([[notification.AddLegacy((language.GetPhrase("efg.drop")),1,2)]]) return "" end
ply:ConCommand("+drop")
return ""
end

end)

hook.Add("DoPlayerDeath","DropOnDeath",function(ply) 

	if GetConVar("sv_dropweapon_ondeath_activeonly"):GetInt() == 1 then

	if IsValid(ply:GetActiveWeapon())  then
	if table.HasValue(blacklist,ply:GetActiveWeapon():GetClass()) then return end
	end

	if IsValid(ply:GetActiveWeapon())  then
		DropWeapon(ply, ply:GetActiveWeapon() )
	end

	elseif GetConVar("sv_dropweapon_ondeath"):GetInt() == 1 then

	for k,v in pairs(ply:GetWeapons()) do

		if not table.HasValue(blacklist,v:GetClass()) then DropWeapon(ply, v ) end

	end
	end

end)

end
