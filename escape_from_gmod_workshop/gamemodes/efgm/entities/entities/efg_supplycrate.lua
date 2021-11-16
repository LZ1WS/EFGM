AddCSLuaFile()

ENT.Base = "base_anim"
ENT.Type = "anim"
ENT.Model = Model("models/props_junk/wood_crate001a.mdl")
ENT.AutomaticFrameAdvance = true
ENT.Spawnable = true
ENT.AdminSpawnable = true

function ENT:Initialize()

	if ( SERVER ) then

		self:SetModel(self.Model)

		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetMoveCollide(MOVECOLLIDE_FLY_SLIDE)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetCollisionGroup(COLLISION_GROUP_NONE)
		self:SetModelScale( 1, 0 )
		self:SetGravity(100)
		self:SetUseType( SIMPLE_USE )
		
		local phys = self.Entity:GetPhysicsObject()
		if (phys:IsValid()) then
			phys:Wake()
			phys:SetMass(4)
			phys:EnableGravity(false)
		end
	
	end

end

function ENT:Use(activator, caller) --spawn what's in the crate when used
	if IsValid(caller) and caller:IsPlayer() then
		self:SpawnItems()
	end
end

function ENT:Think()
	if ( SERVER ) then -- Only set this stuff on the server
		self:NextThink( CurTime() ) -- Set the next think for the serverside hook to be the next frame/tick
		return true -- Return true to let the game know we want to apply the self:NextThink() call
	end
end

function ENT:PhysicsUpdate( phys )
	local phys = self:GetPhysicsObject()
	phys:ApplyForceCenter( Vector( 0, 0, phys:GetMass()*-9.80665/3 ) )
end

function ENT:SpawnItems()

	if (!self.Opened)then

		local LootPrimary = {"cw_ak74", "cw_ar15", "cw_scarh", "cw_g3a3", "cw_g36c", "cw_l115", "cw_l85a2",
 "cw_m14", "cw_m3super90", "cw_shorty", "cw_vss", "cw_fiveseven", "cw_deagle", "cw_m1911", "cw_mr96", "cw_p99",
 "cw_makarov", "cw_ump45", "cw_mp5", "cw_extrema_ratio_official", "cw_flash_grenade", "cw_frag_grenade",
 "cw_smoke_grenade", "item_healthkit", "item_healthvial", "item_battery", "ent_ai2",
	 "ent_automedkit", "ent_grizzly", "ent_ifak", "ent_morphine",
	  "ent_salewa", "cw_ammo_338lapua", "cw_ammo_44magnum", "cw_ammo_45acp",
 "cw_ammo_50ae", "cw_ammo_12gauge", "cw_ammo_40mm", "cw_ammo_545x39", "cw_ammo_556x45", "cw_ammo_762x51",
 "cw_ammo_9x17", "cw_ammo_9x19", "cw_ammo_9x39", "cw_ammo_fraggrenades", "cw_ammo_kit_small", "cw_attpack_ak74_barrels",
 "cw_attpack_ak74_misc", "cw_attpack_ak74_stocks", "cw_attpack_ammotypes_rifles", "cw_attpack_ammotypes_shotguns",
 "cw_attpack_ar15_barrels", "cw_attpack_ar15_barrels_large", "cw_attpack_ar15_misc", "cw_attpack_ar15_stocks",
 "cw_attpack_deagle_barrels", "cw_attpack_g3_sg1package", "cw_attpack_mp5_barrels", "cw_attpack_mp5_misc", 
"cw_attpack_mp5_stocks", "cw_attpack_mr96_barrels", "cw_attpack_sights_cqb", "cw_attpack_sights_longrange",
"cw_attpack_sights_midrange", "cw_attpack_sights_sniper", "bandage", "legbrace", "largemedkit"}

if file.Exists("customloot.txt", "DATA") then
local loot_custom = file.Open("customloot.txt", "r", "DATA")
local loot_custom_weapons = {loot_custom:ReadLine()}
		local slot1 = loot_custom_weapons
		local slot3 = loot_custom_weapons
		local slot4 = loot_custom_weapons
		local slot5 = loot_custom_weapons
		local slot6 = loot_custom_weapons
		local slot7 = loot_custom_weapons
		local slot8 = loot_custom_weapons

		local spawn1 = ents.Create(table.Random(slot1))
		spawn1:SetPos( self:GetPos() + Vector(math.random(-32,32),math.random(-32,32),32) )
		spawn1:Spawn()
		spawn1:PhysWake()
		spawn1:GetPhysicsObject():AddVelocity( Vector(math.random(-32,32),math.random(-32,32),math.random(4,32)) * 5)

		local spawn3 = ents.Create(table.Random(slot3))
		spawn3:SetPos( self:GetPos() + Vector(math.random(-32,32),math.random(-32,32),32) )
		spawn3:Spawn()
		spawn3:PhysWake()
		spawn3:GetPhysicsObject():AddVelocity( Vector(math.random(-32,32),math.random(-32,32),math.random(4,32)) * 5)
			
		local spawn4 = ents.Create(table.Random(slot4))
		spawn4:SetPos( self:GetPos() + Vector(math.random(-32,32),math.random(-32,32),32) )
		spawn4:Spawn()
		spawn4:PhysWake()
		spawn4:GetPhysicsObject():AddVelocity( Vector(math.random(-32,32),math.random(-32,32),math.random(4,32)) * 5)
		
		local spawn5 = ents.Create(table.Random(slot5))
		spawn5:SetPos( self:GetPos() + Vector(math.random(-32,32),math.random(-32,32),32) )
		spawn5:Spawn()
		spawn5:PhysWake()
		spawn5:GetPhysicsObject():AddVelocity( Vector(math.random(-32,32),math.random(-32,32),math.random(4,32)) * 5)

		local spawn6 = ents.Create(table.Random(slot6))
		spawn6:SetPos( self:GetPos() + Vector(math.random(-32,32),math.random(-32,32),32) )
		spawn6:Spawn()
		spawn6:PhysWake()
		spawn6:GetPhysicsObject():AddVelocity( Vector(math.random(-32,32),math.random(-32,32),math.random(4,32)) * 5)

		local spawn7 = ents.Create(table.Random(slot7))
		spawn7:SetPos( self:GetPos() + Vector(math.random(-32,32),math.random(-32,32),32) )
		spawn7:Spawn()
		spawn7:PhysWake()
		spawn7:GetPhysicsObject():AddVelocity( Vector(math.random(-32,32),math.random(-32,32),math.random(4,32)) * 5)
		
		local spawn8 = ents.Create(table.Random(slot8))
		spawn8:SetPos( self:GetPos() + Vector(math.random(-32,32),math.random(-32,32),32) )
		spawn8:Spawn()
		spawn8:PhysWake()
		spawn8:GetPhysicsObject():AddVelocity( Vector(math.random(-32,32),math.random(-32,32),math.random(4,32)) * 5)

else
		local slot1 = LootPrimary
		local slot3 = LootPrimary
		local slot4 = LootPrimary
		local slot5 = LootPrimary
		local slot6 = LootPrimary
		local slot7 = LootPrimary
		local slot8 = LootPrimary

		local spawn1 = ents.Create(table.Random(slot1))
		spawn1:SetPos( self:GetPos() + Vector(math.random(-32,32),math.random(-32,32),32) )
		spawn1:Spawn()
		spawn1:PhysWake()
		spawn1:GetPhysicsObject():AddVelocity( Vector(math.random(-32,32),math.random(-32,32),math.random(4,32)) * 5)

		local spawn3 = ents.Create(table.Random(slot3))
		spawn3:SetPos( self:GetPos() + Vector(math.random(-32,32),math.random(-32,32),32) )
		spawn3:Spawn()
		spawn3:PhysWake()
		spawn3:GetPhysicsObject():AddVelocity( Vector(math.random(-32,32),math.random(-32,32),math.random(4,32)) * 5)
			
		local spawn4 = ents.Create(table.Random(slot4))
		spawn4:SetPos( self:GetPos() + Vector(math.random(-32,32),math.random(-32,32),32) )
		spawn4:Spawn()
		spawn4:PhysWake()
		spawn4:GetPhysicsObject():AddVelocity( Vector(math.random(-32,32),math.random(-32,32),math.random(4,32)) * 5)
		
		local spawn5 = ents.Create(table.Random(slot5))
		spawn5:SetPos( self:GetPos() + Vector(math.random(-32,32),math.random(-32,32),32) )
		spawn5:Spawn()
		spawn5:PhysWake()
		spawn5:GetPhysicsObject():AddVelocity( Vector(math.random(-32,32),math.random(-32,32),math.random(4,32)) * 5)

		local spawn6 = ents.Create(table.Random(slot6))
		spawn6:SetPos( self:GetPos() + Vector(math.random(-32,32),math.random(-32,32),32) )
		spawn6:Spawn()
		spawn6:PhysWake()
		spawn6:GetPhysicsObject():AddVelocity( Vector(math.random(-32,32),math.random(-32,32),math.random(4,32)) * 5)

		local spawn7 = ents.Create(table.Random(slot7))
		spawn7:SetPos( self:GetPos() + Vector(math.random(-32,32),math.random(-32,32),32) )
		spawn7:Spawn()
		spawn7:PhysWake()
		spawn7:GetPhysicsObject():AddVelocity( Vector(math.random(-32,32),math.random(-32,32),math.random(4,32)) * 5)
		
		local spawn8 = ents.Create(table.Random(slot8))
		spawn8:SetPos( self:GetPos() + Vector(math.random(-32,32),math.random(-32,32),32) )
		spawn8:Spawn()
		spawn8:PhysWake()
		spawn8:GetPhysicsObject():AddVelocity( Vector(math.random(-32,32),math.random(-32,32),math.random(4,32)) * 5)
end	
		self:EmitSound("AmmoCrate.Open", 256)
		self:ResetSequence( "open" ) 
		self.Opened = true
		self:Remove()
	
	end
end