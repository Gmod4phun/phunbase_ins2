SWEP.Base = "phun_base_ins2"

AddCSLuaFile()

PHUNBASE.LoadLua("sequences.lua")
PHUNBASE.LoadLua("sounds.lua")

SWEP.PrintName = "Galil SAR"
SWEP.Category = "PHUNBASE | Insurgency"
SWEP.Slot = 1
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/ins2/weapons/v_galil_sar.mdl"
SWEP.WorldModel = "models/gmod4phun/ins2/weapons/w_galil_sar.mdl"

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
SWEP.Primary.ClipSize = 35
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
//SWEP.Primary.Automatic = true
SWEP.Primary.Delay = 60/650
SWEP.Primary.Damage = 22
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"semi", "auto", "safe"}
SWEP.FireModeSelectDelay = 0.9

// Recoil variables
SWEP.Recoil	= 1.25
SWEP.Spread	= 0.02
SWEP.Spread_Iron = 0.0185
SWEP.SpreadVel = 0.35
SWEP.SpreadVel_Iron = 0.3
SWEP.SpreadAdd = 0.5
SWEP.SpreadAdd_Iron	= 0.45

SWEP.BasePos = Vector(0, 0, 0)
SWEP.BaseAng = Vector(0, 0, 0)

SWEP.IronsightPos = Vector(-2.227, -2.5, 0.688)
SWEP.IronsightAng = Vector(0, 0.035, 0)

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

SWEP.drawViewModelInRT = true

SWEP.BipodTransitionDelay = 1.85

SWEP.VElements = {
	["standard"] = {model = "models/gmod4phun/ins2/upgrades/a_standard_galil.mdl", default = true, bonemerge = true},
	["rail"] = {model = "models/gmod4phun/ins2/upgrades/a_mount_galil.mdl", bonemerge = true},
	
	["mag_35"] = {model = "models/gmod4phun/ins2/upgrades/a_magazine_galil_35.mdl", default = true, bonemerge = true},
	["pb_ins2_att_mag_drum_75"] = {model = "models/gmod4phun/ins2/upgrades/a_magazine_galil_75.mdl", bonemerge = true},
	
	["pb_ins2_att_flashlight"] = {model = "models/gmod4phun/ins2/upgrades/a_flashlight_band.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_laser"] = {model = "models/gmod4phun/ins2/upgrades/a_laser_band.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_suppressor"] = {model = "models/gmod4phun/ins2/upgrades/a_suppressor_sec.mdl", bonemerge = true, drawInRT = true},
	
	["pb_ins2_att_foregrip"] = {model = "models/gmod4phun/ins2/upgrades/a_foregrip_ins2.mdl", bonemerge = true},
	["pb_ins2_att_bipod"] = {model = "models/gmod4phun/ins2/upgrades/a_bipod_galil.mdl", bonemerge = true},
	
	["pb_ins2_att_optic_kobra"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_kobra_l.mdl", bonemerge = true},
	["pb_ins2_att_optic_kobra_stencil"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_kobra_l.mdl", bonemerge = true, stencilmaterials = {2}},
	
	["pb_ins2_att_optic_2xreddot"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimp2x.mdl", bonemerge = true},
	
	["pb_ins2_att_optic_po4"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_po4x24_m.mdl", bonemerge = true},
}

SWEP.EnableVElements = {
	["pb_ins2_att_optic_kobra"] = {"rail"},
	["pb_ins2_att_optic_2xreddot"] = {"rail"},
	["pb_ins2_att_optic_po4"] = {"rail"},
}

SWEP.DisableVElements = {
	["pb_ins2_att_mag_drum_75"] = {"mag_35"},
	["pb_ins2_att_bipod"] = {"standard"},
}

local ang0 = Vector()
local offsetPos = Vector(0.02,0,-0.35)

SWEP.AttachmentIronsights = {
	["pb_ins2_att_optic_kobra"] = {pos = Vector(-2.25, -1, -0.2) + offsetPos, ang = ang0},
	["pb_ins2_att_optic_2xreddot"] = {pos = Vector(-2.245, -2.500, -0.152) + offsetPos, ang = ang0},
	["pb_ins2_att_optic_po4"] = {pos = Vector(-2.195, -2.850, 0.115) + offsetPos, ang = ang0}
}

SWEP.Attachments = {
	[1] = {name = "Optics", attachments = {"pb_ins2_att_optic_kobra", "pb_ins2_att_optic_2xreddot", "pb_ins2_att_optic_po4"}},
	[2] = {name = "Barrel", attachments = {"pb_ins2_att_suppressor"}},
	[3] = {name = "Siderail", attachments = {"pb_ins2_att_flashlight", "pb_ins2_att_laser"}},
	[4] = {name = "Underbarrel", attachments = {"pb_ins2_att_foregrip", "pb_ins2_att_bipod"}},
	[5] = {name = "Magazine", attachments = {"pb_ins2_att_mag_drum_75"}},
}

SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 0.8
SWEP.CustomizationMenuAttachmentName = "Laser"

SWEP.DeployTime = 0.7
SWEP.DeployTime_First = 2.25

SWEP.HolsterTime = 0.5

SWEP.ReloadTimes = {
	Base = 3.5,
	Base_Empty = 5,
	Base_Drum = 5.5,
	Base_Empty_Drum = 7.5,
	Bipod = 3.5,
	Bipod_Empty = 5.4,
	Bipod_Drum = 5.5,
	Bipod_Empty_Drum = 7.5,
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
    "pb_ins2_muzzleflash_akm_1p_core",
    "pb_ins2_muzzleflash_akm_1p_glow",
    "pb_ins2_muzzleflash_m16_1p_splits",
    "muzzle_lee_rifle",
    "muzzle_smoke_trail",
    "smoke_trail",
}

SWEP.MuzzleEffectSuppressed = {"muzzle_lee_silenced"}

local icon_merge_models = {
	SWEP.VElements.standard.model,
	SWEP.VElements.mag_35.model,
}

SWEP.INS2_IconParams = {dist = 15, offset = 1.85, spin = false, mergemodels = icon_merge_models}
