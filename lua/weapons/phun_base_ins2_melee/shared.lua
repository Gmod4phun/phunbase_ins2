AddCSLuaFile()

PHUNBASE.LoadLua("pb_ins2_basefiles/pb_ins2_rigs.lua")

PHUNBASE:addFireSound("PB_INS2_KNIFE_SLASH", "weapons/knife/knife_slash_01.wav", 1, 70, CHAN_STATIC)

SWEP.PrintName = "PHUNBASE INSURGENCY MELEE"
SWEP.Category = "PHUNBASE"
SWEP.Slot = 1
SWEP.SlotPos = 1
SWEP.IconLetter = "1"
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = true
SWEP.SwayScale = 1
SWEP.BobScale = 1

SWEP.Base = "phun_base_melee"
SWEP.PHUNBASEWEP = true
SWEP.PHUNBASEWEP_INS2 = true

SWEP.Spawnable = false
SWEP.AdminSpawnable = false

SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 70
SWEP.AimViewModelFOV = 70
SWEP.ViewModel = "models/weapons/c_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"

SWEP.HoldType = "melee"
SWEP.SafeHoldType = "normal"
SWEP.SprintHoldType = "normal"
SWEP.CrouchHoldType = "melee"
SWEP.ReloadHoldType = "melee"

util.PrecacheModel( SWEP.ViewModel )
util.PrecacheModel( SWEP.WorldModel )

SWEP.Weight = -1
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Primary.Ammo = "none"
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = false

SWEP.Secondary.Ammo = "none"
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false

SWEP.FireModes = {"auto"}
SWEP.HUD_NoFiremodes = true

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
SWEP.ReloadTime = 0.5

SWEP.UseHands = true

SWEP.IsDual = false
SWEP.NormalFlashlight = true
SWEP.CustomFlashlight = false

SWEP.MuzzleAttachmentName = "muzzle"
SWEP.MuzzleAttachmentName_L = "muzzle_left"
SWEP.MuzzleAttachmentName_R = "muzzle_right"
SWEP.MuzzleEffect = {"smoke_trail"}

SWEP.ShellVelocity = {X = 0, Y = 0, Z = 0}
SWEP.ShellAngularVelocity = {Pitch_Min = 0, Pitch_Max = 0, Yaw_Min = 0, Yaw_Max = 0, Roll_Min = 0, Roll_Max = 0}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shelleject"
SWEP.ShellAttachmentName_L = "shelleject_left"
SWEP.ShellAttachmentName_R = "shelleject_right"
SWEP.ShellDelay = 0.03
SWEP.ShellScale = 0.5
SWEP.ShellModel = "models/weapons/shell.mdl"
SWEP.ShellEjectVelocity = 75

SWEP.FireSound = {} -- can be a string, or a table of sounds

SWEP.DisableIronsights = true
SWEP.DisableReloadBlur = false
SWEP.ReloadAfterShot = false
SWEP.ReloadAfterShotTime = 0.5
SWEP.UseIronTransitionAnims = false

SWEP.EmptySoundPrimary = "PB_WeaponEmpty_Primary"
SWEP.EmptySoundSecondary = "PB_WeaponEmpty_Secondary"

SWEP.InstantFlashlight = false
SWEP.DisableNearwall = true

SWEP.CanUseUnderwater = true
SWEP.CanUseOnLadder = true

SWEP.INS2_IconParams = {dist = 10, spin = false}

// sprint anims override

function SWEP:SprintStartAnimLogic()
	local anim = "sprint"
	self:PlayVMSequence(anim, 1.2)
end

function SWEP:SprintLoopAnimLogic()
	self:SprintStartAnimLogic()
end

function SWEP:SprintEndAnimLogic()
	self:PlayIdleAnim()
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

SWEP.MeleeAttackWaitTime = 0.2
SWEP.MeleeRedeployWaitTime = 0.65
SWEP.MeleeDamage = 20
SWEP.MeleeDamageType = DMG_SLASH
SWEP.MeleeRange = 45

SWEP.MeleeSoundHitFlesh = "PB_INS2_KNIFE_SLASH"
SWEP.MeleeSoundHitWorld = "PB_INS2_KNIFE_SLASH"
SWEP.MeleeSoundSwing = ""

function SWEP:OnMeleeHit(trace)
	if trace.HitWorld then
		self:EmitSound(self.MeleeSoundHitWorld, 70, 100)
	else
		self:EmitSound(self.MeleeSoundHitFlesh, 70, 100)
	end
end
