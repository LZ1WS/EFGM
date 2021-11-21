local GM = GM or GAMEMODE
local function AutoCompleteRUB( cmd, stringargs )
	
	stringargs = string.Trim( stringargs ) -- Remove any spaces before or after.
	stringargs = string.lower( stringargs )
	
	local tbl = {}
	
	for k, v in ipairs(player.GetAll()) do
		local nick = v:Nick()
		if string.find( string.lower( nick ), stringargs ) then
			nick = "\"" .. nick .. "\"" -- We put quotes around it in case players have spaces in their names.
			nick = "give_rub "  .. nick -- We also need to put the cmd before for it to work properly.
			
			table.insert(tbl, nick)
		end
	end
	
	return tbl
end

local function AutoCompleteDOL( cmd, stringargs )
	
	stringargs = string.Trim( stringargs ) -- Remove any spaces before or after.
	stringargs = string.lower( stringargs )
	
	local tbl = {}
	
	for k, v in ipairs(player.GetAll()) do
		local nick = v:Nick()
		if string.find( string.lower( nick ), stringargs ) then
			nick = "\"" .. nick .. "\"" -- We put quotes around it in case players have spaces in their names.
			nick = "give_dol "  .. nick -- We also need to put the cmd before for it to work properly.
			
			table.insert(tbl, nick)
		end
	end
	
	return tbl
end

local function GivePLYRUB(ply, cmd, args, argStr)
local nick = args[1]
local number = args[2]
nick = string.lower(nick)
if tonumber(ply:GetRUB()) >= tonumber(args[2]) then
ply:TakeRUB(args[2])
for k,v in ipairs(player.GetAll()) do
if string.lower(v:Nick()) == nick then
v:AddRUB(args[2])
v:ChatPrint(GM.LANG:GetString("efg.give") .. number .. GM.LANG:GetString("efg.rubs") .. ply:Nick())
ply:ChatPrint(GM.LANG:GetString("efg.receive") .. number .. GM.LANG:GetString("efg.rubs") .. v:Nick())
else
continue
end
end
end
end

local function GivePLYDOL(ply, cmd, args, argStr)
local nick = args[1]
local number = args[2]
nick = string.lower(nick)
if tonumber(ply:GetDOL()) >= tonumber(args[2]) then
ply:TakeDOL(tonumber(args[2]))
for k,v in ipairs(player.GetAll()) do
if string.lower(v:Nick()) == nick then
v:AddDOL(tonumber(args[2]))
v:ChatPrint(GM.LANG:GetString("efg.give") .. number .. GM.LANG:GetString("efg.dols")  .. ply:Nick())
ply:ChatPrint(GM.LANG:GetString("efg.receive") .. number .. GM.LANG:GetString("efg.dols")  .. v:Nick())
else
continue
end
end
end
end

concommand.Add("give_rub", GivePLYRUB, AutoCompleteRUB)

concommand.Add("give_dol", GivePLYDOL, AutoCompleteDOL)

concommand.Add("SetRUB", function(ply, cmd, args, argStr)
	if ply:IsValid() and ply:IsSuperAdmin() then
local nick = args[1]
nick = string.lower(nick)
for k,v in ipairs(player.GetAll()) do
if string.lower(v:Nick()) == nick then
v:SetRUB(args[2])
v:SaveRUB()
v:SaveRUBTXT()
else
continue
end
end
end
end)

concommand.Add("SetDOL", function(ply, cmd, args, argStr)
	if ply:IsValid() and ply:IsSuperAdmin() then
local nick = args[1]
nick = string.lower(nick)
for k,v in ipairs(player.GetAll()) do
if string.lower(v:Nick()) == nick then
v:SetDOL(args[2])
v:SaveDOL()
v:SaveDOLTXT()
else
continue
end
end
end
end)