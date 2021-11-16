ENT.Base	    			= "base_ai"
ENT.Type	    			= "ai"
ENT.PrintName				= "Npc Trader"
ENT.Author					= "L.Z|W.S"
ENT.Category				= "Other"
ENT.Contact					= ""
ENT.Instructions			= ""
ENT.Spawnable				= true
ENT.AdminSpawnable			= true
ENT.AutomaticFrameAdvance	= true

function ENT:SetAutomaticFrameAdvance(byUsingAnim)
	self.AutomaticFrameAdvance = byUsingAnim
end