SWEP.Base = "phun_base_ins2"

AddCSLuaFile()

PHUNBASE.LoadLua("sequences.lua")
PHUNBASE.LoadLua("sounds.lua")

SWEP.PrintName = "M16A4"
SWEP.Category = "PHUNBASE | Insurgency"
SWEP.Slot = 3
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/ins2/weapons/v_m16a3.mdl"
SWEP.WorldModel = "models/gmod4phun/ins2/weapons/w_m16.mdl"

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

if CLIENT then
	SWEP.WepSelectIcon = surface.GetTextureID("gmod4phun/ins2/icons/weapon_m16a4")
end

// weapon specific variables

SWEP.Primary.Ammo = "phunbase_556x45"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
//SWEP.Primary.Automatic = true
SWEP.Primary.Delay = 60/780
SWEP.Primary.Damage = 20
SWEP.Primary.Force = 1.5
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"semi", "3burst", "safe"}

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

SWEP.IronsightPos = Vector(-2.495, -2.500, 0.659)
SWEP.IronsightAng = Vector(-0.075, 0.000, 0.000)

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

SWEP.BipodTransitionDelay = 1.6

SWEP.ExtraSpawnAmmo = {
	["phunbase_40mm_he"] = 3,
	["phunbase_40mm_smoke"] = 3,
}

SWEP.drawViewModelInRT = true

SWEP.VElements = {
	["carry"] = {model = "models/gmod4phun/ins2/upgrades/a_carryhandle_m16.mdl", default = true, bonemerge = true},
	["standard"] = {model = "models/gmod4phun/ins2/upgrades/a_standard_m16a4.mdl", default = true, bonemerge = true},
	
	["standard2"] = {model = "models/gmod4phun/ins2/upgrades/a_standard2_m16a4.mdl", bonemerge = true},
	["standard3"] = {model = "models/gmod4phun/ins2/upgrades/a_standard3_m16a4.mdl", bonemerge = true},
	
	["pb_ins2_att_flashlight"] = {model = "models/gmod4phun/ins2/upgrades/a_flashlight_rail.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_laser"] = {model = "models/gmod4phun/ins2/upgrades/a_laser_rail.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_suppressor"] = {model = "models/gmod4phun/ins2/upgrades/a_suppressor_sec.mdl", bonemerge = true, drawInRT = true},
	
	["pb_ins2_att_foregrip"] = {model = "models/gmod4phun/ins2/upgrades/a_foregrip_sec.mdl", bonemerge = true},
	["pb_ins2_att_bipod"] = {model = "models/gmod4phun/ins2/upgrades/a_bipod_ar.mdl", bonemerge = true},

	["pb_ins2_att_gl_m203_he"] = {model = "models/gmod4phun/ins2/upgrades/a_gl_m203.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_gl_m203_smoke"] = {model = "models/gmod4phun/ins2/upgrades/a_gl_m203.mdl", bonemerge = true, drawInRT = true, skin = 1},
	
	["pb_ins2_att_optic_holo"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_eotech_xl.mdl", bonemerge = true},
	["pb_ins2_att_optic_holo_stencil"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_eotech_xl.mdl", bonemerge = true, stencilmaterials = {1}},
	
	["pb_ins2_att_optic_reddot"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimpoint_l.mdl", bonemerge = true},
	["pb_ins2_att_optic_reddot_stencil"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimpoint_l.mdl", bonemerge = true, stencilmaterials = {1}},
	
	["pb_ins2_att_optic_2xreddot"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimp2x_l.mdl", bonemerge = true},
	
	["pb_ins2_att_optic_elcan"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_elcan.mdl", bonemerge = true},
	
	["pb_ins2_att_optic_kobra"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_kobra_xl.mdl", bonemerge = true},
	["pb_ins2_att_optic_kobra_stencil"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_kobra_xl.mdl", bonemerge = true, stencilmaterials = {2}},
	
	["pb_ins2_att_optic_po4"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_po4x24_l.mdl", bonemerge = true},
	
	["pb_ins2_att_optic_mk4"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_m40_l.mdl", bonemerge = true},
	
	//["fas2_watch_realtime"] = {model = "models/phunbase/fas2_watch_realtime.mdl", bone = "L ForeTwist5", pos = Vector(0.614, -0.105, -0.875), angle = Angle(-177.5, 1.83, -9.721), size = Vector(1.1, 1.1, 1.1), bodygroups = "00"},
}

SWEP.DisableVElements = {
	["pb_ins2_att_optic_holo"] = {"carry"},
	["pb_ins2_att_optic_reddot"] = {"carry"},
	["pb_ins2_att_optic_2xreddot"] = {"carry"},
	["pb_ins2_att_optic_elcan"] = {"carry"},
	["pb_ins2_att_optic_kobra"] = {"carry"},
	["pb_ins2_att_optic_po4"] = {"carry"},
	["pb_ins2_att_optic_mk4"] = {"carry"},
	["pb_ins2_att_gl_m203_he"] = {"standard", "standard2"},
	["pb_ins2_att_gl_m203_smoke"] = {"standard", "standard2"},
}

SWEP.ReplaceVElements = {
	["pb_ins2_att_foregrip"] = {
		["standard"] = "standard2",
	},
}

local opticAng = Vector()

SWEP.AttachmentIronsights = {
	["pb_ins2_att_optic_holo"] = {pos = Vector(-2.4952, -2, 0.5576), ang = opticAng},
	["pb_ins2_att_optic_reddot"] = {pos = Vector(-2.4968, -2, 0.5831), ang = opticAng},
	["pb_ins2_att_optic_2xreddot"] = {pos = Vector(-2.4914, -1, 0.5701), ang = opticAng},
	["pb_ins2_att_optic_elcan"] = {pos = Vector(-2.4906, -2, 0.5367), ang = opticAng},
	["pb_ins2_att_optic_kobra"] = {pos = Vector(-2.4973, -2, 0.3775), ang = opticAng},
	["pb_ins2_att_optic_po4"] = {pos = Vector(-2.42, -2, 0.7497), ang = opticAng},
	["pb_ins2_att_optic_mk4"] = {pos = Vector(-2.4932, 0, 0.6571), ang = opticAng}
}

SWEP.Attachments = {
	[1] = {name = "Optics", attachments = {"pb_ins2_att_optic_holo", "pb_ins2_att_optic_reddot", "pb_ins2_att_optic_2xreddot", "pb_ins2_att_optic_elcan", "pb_ins2_att_optic_kobra", "pb_ins2_att_optic_po4", "pb_ins2_att_optic_mk4"}},
	[2] = {name = "Barrel", attachments = {"pb_ins2_att_heavybarrel", "pb_ins2_att_suppressor"}},
	[3] = {name = "Siderail", attachments = {"pb_ins2_att_flashlight", "pb_ins2_att_laser"}},
	[4] = {name = "Underbarrel", attachments = {"pb_ins2_att_foregrip", "pb_ins2_att_bipod", /*"pb_ins2_att_gl_m203_smoke",*/ "pb_ins2_att_gl_m203_he"}},
}

SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 0.8
SWEP.CustomizationMenuAttachmentName = "GL"

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
	Bipod = 3.6,
	Bipod_Empty = 4.5,
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
	SWEP.VElements.carry.model,
	"models/gmod4phun/ins2/upgrades/a_standard_m4a1.mdl",
	"models/gmod4phun/ins2/upgrades/a_standard2_m4a1.mdl",
	"models/gmod4phun/ins2/upgrades/a_standard3_m4a1.mdl"
}

SWEP.INS2_IconParams = {dist = 19, offset = 1.5, spin = false, mergemodels = icon_merge_models}
