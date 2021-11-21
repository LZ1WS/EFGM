if SERVER then
local meta = FindMetaTable("Player") --Get the meta table of player

function meta:AddPoints(amount)
	local current_points = self:GetPoints()
	self:SetPoints( current_points + amount )
end

function meta:SetPoints(amount)
	self:SetNWInt( "Points", amount )
	self:SavePointsTXT()
end

function meta:SavePoints()
	local points = self:GetPoints()
	self:SetPData("Points", points)
end

function meta:TakePoints(amount)
   --Add money function here
   self:AddPoints(-amount)
end

function meta:GetPoints()
return self:GetNWInt( "Points")
end

function meta:SavePointsTXT()
if not file.Exists("Points", "DATA") then
file.CreateDir("Points")
end
file.Write("Points/" .. string.gsub(self:SteamID(), ":", "_") ..".txt", tonumber(self:GetPoints()))
end

function meta:GetUpgrade(Name)
return	self:GetNWString(Name)
end

function meta:SaveUpgrades(Name)
	local upgrade = self:GetUpgrade(Name)
	self:SetPData(upgrade, "true")
end

function meta:UnlockUpgrade(Name)
	self:SetNWString(Name, "true")
	self:SaveUpgrades(Name)
end

function meta:LockUpgrade(Name)
	self:SetNWString(Name, "false")
	self:SaveUpgrades(Name)
end

util.AddNetworkString("Buy Bitcoin LVL I")
util.AddNetworkString("Buy Bitcoin LVL II")
util.AddNetworkString("Buy Bitcoin LVL III")
util.AddNetworkString("Get_Points")
util.AddNetworkString("Receive_Points")
util.AddNetworkString("Get_Upgrade")
util.AddNetworkString("Return_Upgrade")

net.Receive("Buy Bitcoin LVL I", function(len, ply)
ply:UnlockUpgrade("Bitcoin LVL I")
ply:TakePoints(1000)
end)

net.Receive("Buy Bitcoin LVL II", function(len, ply)
ply:LockUpgrade("Bitcoin LVL I")
ply:UnlockUpgrade("Bitcoin LVL II")
ply:TakePoints(5000)
end)

net.Receive("Buy Bitcoin LVL III", function(len, ply)
ply:LockUpgrade("Bitcoin LVL II")
ply:UnlockUpgrade("Bitcoin LVL III")
ply:TakePoints(10000)
end)

--[[net.Receive("Get_Points", function(len, ply)
local points = ply:GetPoints()
net.Start("Receive_Points")
net.WriteInt(points)
net.Send(ply)
end)]]--

net.Receive("Get_Upgrade", function(len, ply)
local hasupgrade = ply:GetUpgrade("Bitcoin LVL I")
net.Start("Return_Upgrade")
net.WriteString(hasupgrade)
net.Send(ply)
end)

end

if CLIENT then
	local meta = FindMetaTable("Player") --Get the meta table of player
function meta:GetPoints()
return self:GetNWInt( "Points")
end
function meta:GetUpgrade(Name)
return	self:GetNWString(Name)
end
end

