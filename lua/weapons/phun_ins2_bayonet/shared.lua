SWEP.Base = "phun_base_ins2_melee"

SWEP.PrintName = "Bayonet"
SWEP.Category = "PHUNBASE | Insurgency"
SWEP.Slot = 0
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 54
SWEP.AimViewModelFOV = 54
SWEP.ViewModel = "models/gmod4phun/ins2/weapons/v_marinebayonet.mdl"
SWEP.WorldModel = "models/gmod4phun/ins2/weapons/w_marinebayonet.mdl"

SWEP.HoldType = "melee"
SWEP.SprintHoldType = "normal"
SWEP.CrouchHoldType = "melee"
SWEP.ReloadHoldType = "melee"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.ScriptedEntityType = "phunbase_weapon_ins2"

// weapon specific variables
SWEP.Primary.Automatic = true
SWEP.Secondary.Automatic = true

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

SWEP.PistolSprintSway = true
SWEP.UseIronTransitionAnims = false

SWEP.Sequences = {
	idle = "idle",
	deploy = "draw",
	attack1 = {"hitcenter1", "hitcenter2", "hitcenter3"},
	attack2 = {"hitcenter1", "hitcenter2", "hitcenter3"},
	miss = {"hitcenter1", "hitcenter2", "hitcenter3"},
	holster = "holster",
	sprint = "sprint"
}


SWEP.Sounds = {
	draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},
	holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
		{time = 0.01, sound = "PB_INS2_UNIVERSAL_LEANOUT"},
	}
}

SWEP.DeployTime = 0.65
SWEP.HolsterTime = 0.45

SWEP.ViewModelMovementScale = 0.75

SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = false
SWEP.FlashlightAttachmentName = "1"
SWEP.InstantFlashlight = false

SWEP.INS2_IconParams = {dist = 9, offset = 0, spin = false}

SWEP.MeleeAttackWaitTime = 0.2
SWEP.MeleeRedeployWaitTime = 0.65
SWEP.MeleeDamage = 20
SWEP.MeleeDamageType = DMG_SLASH
SWEP.MeleeRange = 45

SWEP.MeleeSoundHitFlesh = "PB_INS2_KNIFE_SLASH"
SWEP.MeleeSoundHitWorld = "PB_INS2_KNIFE_SLASH"
SWEP.MeleeSoundSwing = "Weapon_Crowbar.Single"
