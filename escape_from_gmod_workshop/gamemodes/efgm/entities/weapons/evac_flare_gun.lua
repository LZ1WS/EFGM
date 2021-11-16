//AeroMatix || https://www.youtube.com/channel/UCzA_5QTwZxQarMzwZFBJIAw || http://steamcommunity.com/profiles/76561198176907257

SWEP.Author = "AeroMatix"
SWEP.Contact = ""
SWEP.Base = "weapon_base"
SWEP.Gun = ("flaregun_hud")

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= true
SWEP.AutoSwitchFrom		= false
SWEP.HoldType			= "pistol"
SWEP.Category 			= "AeroMatix's SWEPS"
SWEP.PrintName 			= "Evacuation Flare Gun"

SWEP.Slot = 1
SWEP.SlotPos = 3
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = true
SWEP.ViewModelFOV = 65
SWEP.ViewModelFlip = false
SWEP.Spawnable = true
SWEP.AdminSpawnable = false
SWEP.BounceWeaponIcon   	= false

SWEP.ViewModel = "models/weapons/v_flaregun.mdl"
SWEP.WorldModel = "models/weapons/w_357.mdl"

SWEP.Primary.Sound = Sound( "weapons/flaregun/fire.wav" )
SWEP.Primary.Ammo			= "slam"
SWEP.Primary.NumShots = 1
SWEP.Primary.ClipSize =  1
SWEP.Primary.DefaultClip =  1
SWEP.Primary.Automatic = false
SWEP.Primary.Delay = 1


SWEP.Secondary.Sound = Sound( "weapons/flaregun/fire.wav" )
SWEP.Secondary.NumShots = 1
SWEP.Primary.ClipSize			= 1		
SWEP.Primary.DefaultClip		= 1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Delay = 1


function SWEP:PrimaryAttack()
	if self.mode == 1 then
		if self:Clip1() <= 0 then return end
		self.Weapon:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
		self.Weapon:SetNextSecondaryFire( CurTime() + self.Secondary.Delay )
		self:ShootFlare()
		self.Weapon:EmitSound( self.Primary.Sound )
		self:SetClip1( self:Clip1() -1 )
		self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
		self.Owner:SetAnimation( PLAYER_ATTACK1 )
		self.Weapon:SetNetworkedFloat( "LastShootTime", CurTime() )
		if self:Clip1() == 0 then
			self:DefaultReload( ACT_VM_RELOAD )
		end
	end
end

function SWEP:ShootFlare()
	if SERVER then
	local tracer = self.Owner:GetEyeTrace()
	local Flare1 = ents.Create( "env_flare" )
	if !Flare1:IsValid() then return false end
	Flare1:SetPos(self.Owner:GetShootPos())
	Flare1:SetAngles( self.Owner:GetAimVector( ):Angle() )
	Flare1:SetKeyValue("spawnflags", 0)	
	Flare1:SetKeyValue( "scale", "20" )
	Flare1:EmitSound("Weapon_Flaregun.Burn")
	Flare1:Spawn()
	SafeRemoveEntityDelayed(Flare1, 7)
	Flare1:Activate()
	Flare1:Fire( "Launch", "1650", 0.0 )
net.Start("PersontoEvacuate")
net.WriteString(self.Owner:SteamID())
net.Send(self.Owner)
	end
end

function SWEP:SecondaryAttack()
end

function SWEP:Initialize()
	self.mode = 1
	self.changemode = 0
	
	if CLIENT then
		local oldpath = "vgui/hud/name"
		local newpath = string.gsub(oldpath, "name", self.Gun)
		self.WepSelectIcon = surface.GetTextureID(newpath)
	end
end