AddCSLuaFile()

PHUNBASE.LoadLua("pb_ins2_basefiles/pb_ins2_rigs.lua")

SWEP.PrintName = "PHUNBASE INSURGENCY NADE"
SWEP.Category = "PHUNBASE"
SWEP.Slot = 1
SWEP.SlotPos = 1
SWEP.IconLetter = "1"
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = true
SWEP.SwayScale = 1
SWEP.BobScale = 1

SWEP.Base = "phun_base_nade"
SWEP.PHUNBASEWEP = true
SWEP.PHUNBASEWEP_INS2 = true

SWEP.Spawnable = false
SWEP.AdminSpawnable = false

SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 70
SWEP.AimViewModelFOV = 70
SWEP.ViewModel = "models/weapons/c_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"

SWEP.HoldType = "grenade"
SWEP.SafeHoldType = "passive"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "grenade"
SWEP.ReloadHoldType = "grenade"

SWEP.SprintHoldType = "passive"
SWEP.SafeHoldType = "passive"

util.PrecacheModel( SWEP.ViewModel )
util.PrecacheModel( SWEP.WorldModel )

SWEP.Weight = -1
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Primary.Ammo = "pistol"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = false
SWEP.Primary.Delay = 0.1
SWEP.Primary.Damage = 20
SWEP.Primary.Force = 1.5
SWEP.Primary.Bullets = 0
SWEP.Primary.Tracer = 0
SWEP.Primary.Spread = 0.02
SWEP.Primary.Cone = 0.02

SWEP.Secondary.Ammo = "none"
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Delay = 0.1

SWEP.PB_VMPOS = Vector(0,0,0) // ViewModel position
SWEP.PB_VMANG = Angle(0,0,0) // ViewModel angles

SWEP.BasePos = Vector(0,0,0)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(0,0,0)
SWEP.IronsightAng = Vector(0,0,0)

SWEP.SprintPos = Vector(0,0,0)
SWEP.SprintAng = Vector(0,0,0)

SWEP.HolsterPos = Vector(0,0,0)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(0,0,0)
SWEP.NearWallAng = Vector(0,0,0)

SWEP.InactivePos = Vector(4, 0, 0)
SWEP.InactiveAng = Vector(-45, 45, 0)

SWEP.Sequences = {}
SWEP.Sounds = {}

SWEP.DeployTime = 0.5
SWEP.HolsterTime = 0.5
SWEP.ReloadTime = 0

SWEP.UseHands = true

SWEP.IsDual = false
SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = false

SWEP.MuzzleAttachmentName = "muzzle"
SWEP.MuzzleAttachmentName_L = "muzzle_left"
SWEP.MuzzleAttachmentName_R = "muzzle_right"
SWEP.MuzzleEffect = {"smoke_trail"}
SWEP.MuzzleEffectSuppressed = {"smoke_trail"}

SWEP.ShellVelocity = {X = 0, Y = 0, Z = 0}
SWEP.ShellAngularVelocity = {Pitch_Min = 0, Pitch_Max = 0, Yaw_Min = 0, Yaw_Max = 0, Roll_Min = 0, Roll_Max = 0}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shelleject"
SWEP.ShellDelay = 0.15
SWEP.ShellScale = 0.66
SWEP.ShellModel = "models/weapons/shell.mdl"

SWEP.DisableIronsights = true
SWEP.DisableReloadBlur = true

SWEP.UseIronTransitionAnims = true

SWEP.NoSprintVMMovement = false

SWEP.INS2_IconParams = {dist = 10, offset = 0, spin = false}

// anims override
/* // commented out cos it does weird shit when it is set in the base
SWEP.Sequences = {
	base_idle = "base_idle",
	base_ready = "base_ready",
	base_draw = "base_draw",
	base_holster = "base_holster",
	base_down = "base_down",
	base_crawl = "base_crawl",
	base_sprint = "base_sprint",
    
	pullbackhigh = "pullbackhigh",
	pullbackhighbake = "pullbackhighbake",
	pullbacklow = "pullbacklow",
	throw = "throw",
	bakethrow = "bakethrow",
	lowthrow = "lowthrow",
}
*/

function SWEP:_playINS2Anim(anim, speed, cycle)
	local a = "base_"..anim
	
	speed = speed or 1
	cycle = cycle or 0
	
	self:PlayVMSequence(a, speed, cycle)
end

function SWEP:PlayIdleAnim() // override and dont use this shit
end

function SWEP:IdleAnimLogic() // uses holster, reversed, since some idle animations don't exist, wtf
	//self:_playINS2Anim("holster", -1, 0.5)
    self:_playINS2Anim("idle")
end

function SWEP:PreDeployAnimLogic()
	self:_playINS2Anim("draw", -1, 0, true) // unfuck deploy, no sound
end

function SWEP:DeployAnimLogic()
	//local anim = !self._wasFirstTimeDeployed and "ready" or "draw"
    local anim = "draw"
	self:_playINS2Anim(anim)
end

function SWEP:HolsterAnimLogic()
	local anim = "holster"
	self:_playINS2Anim(anim)
end

function SWEP:ReloadAnimLogic()
	local clip = self:Clip1() 
	local empty = clip < 1

	local anim = empty and "reloadempty" or "reload"
	self:_playINS2Anim(anim)
end

// sprint anims override

function SWEP:SprintStartAnimLogic()
	local anim = "sprint"
	self:_playINS2Anim(anim, 1.2)
end

function SWEP:SprintLoopAnimLogic()
	self:SprintStartAnimLogic()
end

function SWEP:SprintEndAnimLogic()
	self:IdleAnimLogic()
end

function SWEP:SprintClientLogic()
	if CLIENT then
		if !self:IsBusy() then
			if self:GetIsSprinting() and !self.WasSprinting then
				self.WasSprinting = true
				self:SprintStartAnimLogic()
			elseif !self:GetIsSprinting() and self.WasSprinting then
				self.WasSprinting = false
				self:SprintEndAnimLogic()
			end
		end
		
		if self:GetIsSprinting() and (self:IsBusy()) then
			self.WasSprinting = false
		end
	end
end

// nearwall logic override

function SWEP:NearWallAnimLogic()
	if self:IsBusy() or self:GetIsWaiting() then return end
	
	if self:GetIsNearWall() then
		self:_playINS2Anim("iron_down")
	else
		self:IdleAnimLogic()
	end
end

// nade anims

function SWEP:NadePullpinAnimLogic()
    local ply = self.Owner
    self:PlayVMSequence(ply:KeyDown(IN_ATTACK2) and "pullbacklow" or (self._WasCookedThrow and "pullbackhighbake" or "pullbackhigh"))
end

function SWEP:NadeThrowNormal()
    self:PlayVMSequence(self._IsCooking and "bakethrow" or "throw")
end

function SWEP:NadeThrowLow()
    self:PlayVMSequence("lowthrow")
end

// nade overrides

function SWEP:TossNade(ent)
	local ply = self.Owner
	local phys = ent:GetPhysicsObject()
	if IsValid(phys) then
		local force = 1000
		
		if ply:KeyDown(IN_FORWARD) then
			force = force + ply:GetVelocity():Length()
		end
		
		phys:SetVelocity(ply:EyeAngles():Forward() * force * self._ThrowPower + Vector(0, 0, 100))
		phys:AddAngleVelocity(Vector(250, 0, 0))
	end
end
