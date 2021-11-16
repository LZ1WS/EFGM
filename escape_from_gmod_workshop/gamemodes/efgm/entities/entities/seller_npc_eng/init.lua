AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include('shared.lua')

function ENT:Initialize()
	self:SetModel("models/lethalnecrotics_survivors/male_bateman.mdl") -- model
	self:SetHullType(HULL_HUMAN) 
	self:SetHullSizeNormal() 
	self:SetNPCState(NPC_STATE_SCRIPT) 
	self:SetSolid(SOLID_BBOX) 
	self:CapabilitiesAdd(CAP_ANIMATEDFACE) 
	self:SetUseType(SIMPLE_USE) 
	self:DropToFloor() 
	self:SetMaxYawSpeed(90) 
end

function ENT:OnTakeDamage()
	return false
end

util.AddNetworkString( "NPCSELLERENG" )

function ENT:AcceptInput( name, activator, caller )
  if name == "Use" and caller:IsPlayer() then
    net.Start("NPCSELLERENG")
    net.Send(caller)
  end
end