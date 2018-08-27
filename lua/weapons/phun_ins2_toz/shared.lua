SWEP.Base = "phun_base_ins2"

AddCSLuaFile()

PHUNBASE.LoadLua("sequences.lua")
PHUNBASE.LoadLua("sounds.lua")

SWEP.PrintName = "TOZ"
SWEP.Category = "PHUNBASE | Insurgency"
SWEP.Slot = 3
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/ins2/weapons/v_toz.mdl"
SWEP.WorldModel = "models/gmod4phun/ins2/weapons/w_toz.mdl"

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
	SWEP.WepSelectIcon = surface.GetTextureID("gmod4phun/ins2/icons/weapon_toz")
end

// weapon specific variables

SWEP.Primary.Ammo = "phunbase_12gauge"
SWEP.Primary.ClipSize = 8
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Delay = 0.25
SWEP.Primary.Damage = 18
SWEP.Primary.Force = 2
SWEP.Primary.Bullets = 8
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"pump"}

// Recoil variables
SWEP.Recoil	= 1.2
SWEP.Spread	= 0.05
SWEP.Spread_Iron = 0.045
SWEP.SpreadVel = 0.35
SWEP.SpreadVel_Iron = 0.3
SWEP.SpreadAdd = 0.35
SWEP.SpreadAdd_Iron	= 0.3

SWEP.BasePos = Vector(0, 0, 0)
SWEP.BaseAng = Vector(0, 0, 0)

SWEP.IronsightPos = Vector(-2.008, -2, 0.9)
SWEP.IronsightAng = Vector(0.1, 0.04, 0)

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
	["rail"] = {model = "models/gmod4phun/ins2/upgrades/a_modkit_02.mdl", bonemerge = true},
	
	["pb_ins2_att_flashlight"] = {model = "models/gmod4phun/ins2/upgrades/a_flashlight_sec_shotgun.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_laser"] = {model = "models/gmod4phun/ins2/upgrades/a_laser_sec_shotgun.mdl", bonemerge = true, drawInRT = true},
	
	["pb_ins2_att_suppressor"] = {model = "models/gmod4phun/ins2/upgrades/a_suppressor_12ga.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_foregrip"] = {model = "models/gmod4phun/ins2/upgrades/a_foregrip_ins2.mdl", bonemerge = true},
	
	["pb_ins2_att_optic_kobra"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_kobra_l.mdl", bonemerge = true},
	["pb_ins2_att_optic_kobra_stencil"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_kobra_l.mdl", bonemerge = true, stencilmaterials = {2}},
	
	["pb_ins2_att_optic_2xreddot"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimp2x.mdl", bonemerge = true},
	
	["pb_ins2_att_optic_holo"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_eotech.mdl", bonemerge = true},
	["pb_ins2_att_optic_holo_stencil"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_eotech.mdl", bonemerge = true, stencilmaterials = {1}},
}

SWEP.EnableVElements = {
	["pb_ins2_att_optic_kobra"] = {"rail"},
	["pb_ins2_att_optic_2xreddot"] = {"rail"},
	["pb_ins2_att_optic_holo"] = {"rail"},
}

local opticAng = Vector()

SWEP.AttachmentIronsights = {
	["pb_ins2_att_optic_kobra"] = {pos = Vector(-1.9996, -2, -0.2435), ang = opticAng},
	["pb_ins2_att_optic_2xreddot"] = {pos = Vector(-2.0037, -1, -0.1927), ang = opticAng},
	["pb_ins2_att_optic_holo"] = {pos = Vector(-2.0115, -2, -0.1841), ang = opticAng},
}

SWEP.Attachments = {
	[1] = {name = "Optics", attachments = {"pb_ins2_att_optic_kobra", "pb_ins2_att_optic_2xreddot", "pb_ins2_att_optic_holo"}},
	[2] = {name = "Barrel", attachments = {"pb_ins2_att_suppressor"}},
	[3] = {name = "Siderail", attachments = {"pb_ins2_att_flashlight", "pb_ins2_att_laser"}},
	[4] = {name = "Underbarrel", attachments = {"pb_ins2_att_foregrip"}},
}

SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 0.8
SWEP.CustomizationMenuAttachmentName = "Foregrip"

SWEP.DeployTime = 0.7
SWEP.DeployTime_First = 2.1

SWEP.HolsterTime = 0.55

SWEP.Chamberable = false
SWEP.CockAfterShot = true
SWEP.CockAfterShotTime = 0.6
SWEP.MakeShellOnCock = false
SWEP.DontCockWhenEmpty = true

SWEP.ShotgunReload = true

SWEP.ShotgunReloadActions = {
	InsertOnStart = false,
	InsertOnStartEmpty = true,
	InsertOnEnd = false,
	InsertOnEndEmpty = false,
}

SWEP.ShotgunReloadTimes = {
	Start = 0.7,
	Start_Empty = 2.9,
	Insert = 0.7,
	End = 0.6,
	End_Empty = 0.6,

	InsertAmmoWait = 0.35,
	InsertOnStartEmptyAmmoWait = 2.2,
}

SWEP.ViewModelMovementScale = 0.75

// shell-related stuff
SWEP.ShellVelocity = {X = 80, Y = 10, Z = 15}
SWEP.ShellAngularVelocity = {Pitch_Min = -2500, Pitch_Max = -2000, Yaw_Min = 150, Yaw_Max = 200, Roll_Min = 10, Roll_Max = 20}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shell"
SWEP.ShellDelay = 0.15
SWEP.ShellScale = 0.66
SWEP.ShellModel = "models/gmod4phun/ins2/shells/12gauge.mdl"
SWEP.NoShells = true
SWEP.ShellSound = "PB_INS2_SHELL_12G"

SWEP.MuzzleAttachmentName = "muzzle"

SWEP.MuzzleEffect = {
    "pb_ins2_muzzleflash_sparks_variant_1",
    "pb_ins2_muzzleflash_toz_1p_glow",
    "pb_ins2_muzzleflash_toz_1p_core",
	"pb_ins2_muzzleflash_toz_1p_sparks",
    "PistolGlow",
    "muzzle_smoke_trail",
    "smoke_trail",
}

SWEP.MuzzleEffectSuppressed = {"muzzle_lee_silenced"}

SWEP.INS2_IconParams = {dist = 10, offset = 4.5, spin = false}
