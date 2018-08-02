SWEP.Base = "phun_base_ins2"

AddCSLuaFile()

PHUNBASE.LoadLua("sequences.lua")
PHUNBASE.LoadLua("sounds.lua")

SWEP.PrintName = "MK18"
SWEP.Category = "PHUNBASE | Insurgency"
SWEP.Slot = 1
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/ins2/weapons/v_mk18.mdl"
SWEP.WorldModel = "models/gmod4phun/ins2/weapons/w_mk18.mdl"

SWEP.CustomWorldModel = SWEP.WorldModel
SWEP.CustomWorldModelPos = Vector(-0.5,5,0.6)
SWEP.CustomWorldModelAng = Angle(-4.25,-2.75,180)

SWEP.HoldType = "ar2"
SWEP.SprintHoldType = "normal"
SWEP.CrouchHoldType = "ar2"
SWEP.ReloadHoldType = "ar2"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.ScriptedEntityType = "phunbase_weapon_ins2"

// weapon specific variables

SWEP.Primary.Ammo = "phunbase_556x45"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
//SWEP.Primary.Automatic = true
SWEP.Primary.Delay = 60/740
SWEP.Primary.Damage = 20
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"semi", "auto", "safe"}

// Recoil variables
SWEP.Recoil	= 1.2
SWEP.Spread	= 0.02
SWEP.Spread_Iron = 0.0185
SWEP.SpreadVel = 0.35
SWEP.SpreadVel_Iron = 0.3
SWEP.SpreadAdd = 0.5
SWEP.SpreadAdd_Iron	= 0.45

SWEP.BasePos = Vector(0, 0, 0)
SWEP.BaseAng = Vector(0, 0, 0)

SWEP.IronsightPos = Vector(-2.546, -3.750, 0.745)
SWEP.IronsightAng = Vector(0.300, 0.050, 0.000)

SWEP.SprintPos = Vector(0,0,0)
SWEP.SprintAng = Vector(0,0,0)

SWEP.HolsterPos = Vector(0,0,0)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(0,0,0)
SWEP.NearWallAng = Vector(0,0,0)

SWEP.PistolSprintSway = true
SWEP.UseIronTransitionAnims = false

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

SWEP.ExtraSpawnAmmo = {
	["phunbase_40mm_he"] = 3,
	["phunbase_40mm_smoke"] = 3,
}

SWEP.drawViewModelInRT = true

SWEP.VElements = {
	["standard_sight"] = {model = "models/gmod4phun/ins2/upgrades/a_standard_mk18.mdl", default = true, bonemerge = true},
	
	["standard2"] = {model = "models/gmod4phun/ins2/upgrades/a_standard2_mk18.mdl", default = true, bonemerge = true},
	["standard3"] = {model = "models/gmod4phun/ins2/upgrades/a_standard3_mk18.mdl", bonemerge = true},
	
	["pb_ins2_att_flashlight"] = {model = "models/gmod4phun/ins2/upgrades/a_flashlight_rail.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_laser"] = {model = "models/gmod4phun/ins2/upgrades/a_laser_rail.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_suppressor"] = {model = "models/gmod4phun/ins2/upgrades/a_suppressor_sec2.mdl", bonemerge = true, drawInRT = true},
	
	["pb_ins2_att_foregrip"] = {model = "models/gmod4phun/ins2/upgrades/a_foregrip_sec.mdl", bonemerge = true},
	
	["pb_ins2_att_optic_holo"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_eotech_l.mdl", bonemerge = true},
	["pb_ins2_att_optic_holo_stencil"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_eotech_l.mdl", bonemerge = true, stencilmaterials = {1}},
	
	["pb_ins2_att_optic_reddot"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimpoint_l.mdl", bonemerge = true},
	["pb_ins2_att_optic_reddot_stencil"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimpoint_l.mdl", bonemerge = true, stencilmaterials = {1}},
	
	["pb_ins2_att_optic_2xreddot"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimp2x_l.mdl", bonemerge = true},
	
	["pb_ins2_att_optic_elcan"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_elcan.mdl", bonemerge = true},
}

SWEP.DisableVElements = {
	["pb_ins2_att_optic_holo"] = {"standard_sight"},
	["pb_ins2_att_optic_reddot"] = {"standard_sight"},
	["pb_ins2_att_optic_2xreddot"] = {"standard_sight"},
	["pb_ins2_att_optic_elcan"] = {"standard_sight"},
}

SWEP.ReplaceVElements = {
	["pb_ins2_att_flashlight"] = {
		["standard2"] = "standard3",
	},
	["pb_ins2_att_laser"] = {
		["standard2"] = "standard3",
	},
}

local opticPos = Vector(-2.546, -2.000, 0.559)
local opticAng = Vector()

SWEP.AttachmentIronsights = {
	["pb_ins2_att_optic_holo"] = {pos = opticPos, ang = opticAng},
	["pb_ins2_att_optic_reddot"] = {pos = opticPos - Vector(0,0,0.1), ang = opticAng},
	["pb_ins2_att_optic_2xreddot"] = {pos = Vector(-2.537, -2.25, 0.472), ang = opticAng},
	["pb_ins2_att_optic_elcan"] = {pos = opticPos - Vector(0,0,0.12), ang = opticAng}
}

SWEP.Attachments = {
	[1] = {name = "Optics", attachments = {"pb_ins2_att_optic_holo", "pb_ins2_att_optic_reddot", "pb_ins2_att_optic_2xreddot", "pb_ins2_att_optic_elcan"}},
	[2] = {name = "Barrel", attachments = {"pb_ins2_att_heavybarrel", "pb_ins2_att_suppressor"}},
	[3] = {name = "Siderail", attachments = {"pb_ins2_att_flashlight", "pb_ins2_att_laser"}},
	[4] = {name = "Underbarrel", attachments = {"pb_ins2_att_foregrip"}},
}

SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 0.8
SWEP.CustomizationMenuAttachmentName = "Laser"

SWEP.GrenadeLauncherIronPos = Vector(-0.517, -2.000, 1.228)
SWEP.GrenadeLauncherIronAng = Vector(0.500, 0.040, 0.000)

//SWEP.GrenadeLauncherAmmoType = "phunbase_40mm_he"
SWEP.GrenadeLauncherReloadTime = 3.85
SWEP.GrenadeLauncherFireDelay = 0.55
SWEP.GrenadeLauncherDryFireDelay = 0.35
SWEP.GrenadeLauncherTransitionDelay = 0.7

SWEP.DeployTime = 0.7
SWEP.DeployTime_First = 2.25

SWEP.HolsterTime = 0.5

SWEP.ReloadTimes = {
	Base = 3.75,
	Base_Empty = 4.35,
}

SWEP.ViewModelMovementScale = 0.75

// shell-related stuff
SWEP.ShellVelocity = {X = 80, Y = 30, Z = 15}
SWEP.ShellAngularVelocity = {Pitch_Min = -2500, Pitch_Max = -2000, Yaw_Min = 150, Yaw_Max = 200, Roll_Min = 10, Roll_Max = 20}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shell"
SWEP.ShellDelay = 0.045
SWEP.ShellScale = 0.66
SWEP.ShellModel = "models/gmod4phun/ins2/shells/556x45.mdl"

SWEP.MuzzleAttachmentName = "muzzle"

SWEP.MuzzleEffect = {
    "pb_ins2_muzzleflash_sparks_variant_1",
    "pb_ins2_muzzleflash_m16_1p_core",
    "pb_ins2_muzzleflash_m16_1p_glow",
    "pb_ins2_muzzleflash_m16_1p_splits",
    "muzzle_lee_rifle",
    "muzzle_smoke_trail",
    "smoke_trail",
}

SWEP.MuzzleEffectSuppressed = {"muzzle_lee_silenced"}

local icon_merge_models = {
	SWEP.VElements.standard_sight.model,
	SWEP.VElements.standard2.model,
}

SWEP.INS2_IconParams = {dist = 13, offset = 0.1, spin = false, mergemodels = icon_merge_models}
