SWEP.Base = "phun_base_ins2"

AddCSLuaFile()

PHUNBASE.LoadLua("sequences.lua")
PHUNBASE.LoadLua("sounds.lua")

SWEP.PrintName = "Model 10"
SWEP.Category = "PHUNBASE | Insurgency"
SWEP.Slot = 1
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/ins2/weapons/v_38rev.mdl"
SWEP.WorldModel = "models/gmod4phun/ins2/weapons/w_38rev.mdl"

SWEP.CustomWorldModel = SWEP.WorldModel
SWEP.CustomWorldModelPos = Vector(-0.5,4.5,2.35)
SWEP.CustomWorldModelAng = Angle(-6.5,0,180)

SWEP.HoldType = "ar2"
SWEP.SprintHoldType = "normal"
SWEP.CrouchHoldType = "shotgun"
SWEP.ReloadHoldType = "shotgun"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.ScriptedEntityType = "phunbase_weapon_ins2"

if CLIENT then
	SWEP.WepSelectIcon = surface.GetTextureID("gmod4phun/ins2/icons/weapon_model10")
end

// weapon specific variables

SWEP.Primary.Ammo = "phunbase_38special"
SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Delay = 60/380
SWEP.Primary.Damage = 22
SWEP.Primary.Force = 1.5
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"double"}
SWEP.FireActionDelay = 0.05

// Recoil variables
SWEP.Recoil	= 1.2
SWEP.Spread	= 0.02
SWEP.Spread_Iron = 0.0175
SWEP.SpreadVel = 0.25
SWEP.SpreadVel_Iron = 0.22
SWEP.SpreadAdd = 0.18
SWEP.SpreadAdd_Iron	= 0.15

SWEP.BasePos = Vector(0, 0, 0)
SWEP.BaseAng = Vector(0, 0, 0)

SWEP.IronsightPos = Vector(-1.859, -2.000, 1.050)
SWEP.IronsightAng = Vector(-1.700, 0.025, 0.000)

SWEP.SprintPos = Vector(0,0,0)
SWEP.SprintAng = Vector(0,0,0)

SWEP.HolsterPos = Vector(0,0,0)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(0,0,0)
SWEP.NearWallAng = Vector(0,0,0)

SWEP.PistolSprintSway = true
SWEP.UseIronTransitionAnims = false

SWEP.drawViewModelInRT = true

SWEP.RTScope_Material = Material("models/weapons/optics/lense_rt")
SWEP.RTScope_Enabled = true
SWEP.RTScope_Zoom = 11.25
SWEP.RTScope_Align = Angle(0,0,-90)
SWEP.RTScope_Reticle = Material("phunbase/rt_scope/invis")
SWEP.RTScope_DrawIris = true
SWEP.RTScope_DrawParallax = true
SWEP.RTScope_AttachmentName = "scope_origin"

SWEP.MouseSensitivityHip = 1
SWEP.MouseSensitivityIron = 0.5

SWEP.VElements = {
	["pb_ins2_att_speedloader"] = {model = "models/gmod4phun/ins2/upgrades/a_speedloader_rev.mdl", bonemerge = true},
}

SWEP.Attachments = {
	[1] = {name = "Magazine", attachments = {"pb_ins2_att_speedloader"}},
}

SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 0.8
SWEP.CustomizationMenuAttachmentName = "Magazine"

SWEP.DeployTime = 0.7
SWEP.DeployTime_First = 2.1

SWEP.HolsterTime = 0.55

SWEP.Chamberable = false

SWEP.ReloadClipChangeDelay = 1.55
SWEP.DiscardClipOnReload = true
SWEP.DiscardClipOnReloadKeepChambered = false

SWEP.ShotgunReload = true

SWEP.ShotgunReloadTimes = {
	Start = 2.35,
	Start_Empty = 2.35,
	Insert = 0.98,
	End = 1.65,
	End_Empty = 1.65,

	InsertAmmoWait = 0.25,
}

SWEP.ReloadTimes = {
	Base = 4.25,
}

SWEP.UsesEmptyReloadTimes = false

SWEP.ViewModelMovementScale = 0.75

// shell-related stuff
SWEP.ShellVelocity = {X = 0, Y = 0, Z = 0}
SWEP.ShellAngularVelocity = {Pitch_Min = -2500, Pitch_Max = -2000, Yaw_Min = 150, Yaw_Max = 200, Roll_Min = 10, Roll_Max = 20}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shell"
SWEP.ShellDelay = 0.15
SWEP.ShellScale = 1
SWEP.ShellModel = "models/gmod4phun/ins2/shells/9x19.mdl"
SWEP.NoShells = true
SWEP.ShellSound = "PB_INS2_SHELL_38"

SWEP.MuzzleAttachmentName = "muzzle"

SWEP.MuzzleEffect = {
    "pb_ins2_muzzleflash_sparks_variant_1",
    "pb_ins2_muzzleflash_m9_1p_core",
    "pb_ins2_muzzleflash_m9_1p_flame",
    -- "PistolGlow",
    "muzzle_smoke_trail",
    "smoke_trail",
}

SWEP.MuzzleEffectSuppressed = {"muzzle_lee_silenced"}

SWEP.INS2_IconParams = {dist = 7, offset = 3.25, spin = false}
