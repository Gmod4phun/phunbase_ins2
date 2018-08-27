SWEP.Base = "phun_base_ins2"

AddCSLuaFile()

PHUNBASE.LoadLua("sequences.lua")
PHUNBASE.LoadLua("sounds.lua")

SWEP.PrintName = "AKM"
SWEP.Category = "PHUNBASE | Insurgency"
SWEP.Slot = 3
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/ins2/weapons/v_akm.mdl"
SWEP.WorldModel = "models/gmod4phun/ins2/weapons/w_akm.mdl"

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
	SWEP.WepSelectIcon = surface.GetTextureID("gmod4phun/ins2/icons/weapon_akm")
end

// weapon specific variables

SWEP.Primary.Ammo = "phunbase_762x39"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
//SWEP.Primary.Automatic = true
SWEP.Primary.Delay = 60/600
SWEP.Primary.Damage = 20
SWEP.Primary.Force = 1.5
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"semi", "auto", "safe"}
SWEP.FireModeSelectDelay = 0.9

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

SWEP.IronsightPos = Vector(-2.299, -2.250, 0.085)
SWEP.IronsightAng = Vector(1.300, 0.076, 0.000)

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
	["standard"] = {model = "models/gmod4phun/ins2/upgrades/a_standard_akm.mdl", default = true, bonemerge = true},
	["rail"] = {model = "models/gmod4phun/ins2/upgrades/a_modkit_06.mdl", bonemerge = true},
	
	["pb_ins2_att_flashlight"] = {model = "models/gmod4phun/ins2/upgrades/a_flashlight_band.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_laser"] = {model = "models/gmod4phun/ins2/upgrades/a_laser_band.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_suppressor"] = {model = "models/gmod4phun/ins2/upgrades/a_suppressor_ak.mdl", bonemerge = true, drawInRT = true},
	
	["pb_ins2_att_foregrip"] = {model = "models/gmod4phun/ins2/upgrades/a_woodgrips_akm.mdl", bonemerge = true},
	
	["pb_ins2_att_gl_gp25_he"] = {model = "models/gmod4phun/ins2/upgrades/a_gl_gp25.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_gl_gp25_smoke"] = {model = "models/gmod4phun/ins2/upgrades/a_gl_gp25.mdl", bonemerge = true, drawInRT = true, skin = 1},
	
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

SWEP.ReplaceVElements = {
	["pb_ins2_att_flashlight"] = {
		["cover_long_right"] = "cover_short_right",
	},
	["pb_ins2_att_laser"] = {
		["cover_long_right"] = "cover_short_right",
	},
	["pb_ins2_att_foregrip"] = {
		["standard"] = "pb_ins2_att_foregrip",
	}
}

local opticAng = Vector()

SWEP.AttachmentIronsights = {
	["pb_ins2_att_optic_kobra"] = {pos = Vector(-2.322, -1.250, -0.543), ang = Vector(0.000, 0.034, 0.000)},
	["pb_ins2_att_optic_2xreddot"] = {pos = Vector(-2.310, -2.500, -0.506), ang = opticAng},
	["pb_ins2_att_optic_po4"] = {pos = Vector(-2.262, -2.500, -0.248), ang = opticAng}
}

SWEP.Attachments = {
	[1] = {name = "Optics", attachments = {"pb_ins2_att_optic_kobra", "pb_ins2_att_optic_2xreddot", "pb_ins2_att_optic_po4"}},
	[2] = {name = "Barrel", attachments = {"pb_ins2_att_suppressor"}},
	[3] = {name = "Siderail", attachments = {"pb_ins2_att_flashlight", "pb_ins2_att_laser"}},
	[4] = {name = "Underbarrel", attachments = {"pb_ins2_att_foregrip", /*"pb_ins2_att_gl_gp25_smoke",*/ "pb_ins2_att_gl_gp25_he"}},
}

SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 0.8
SWEP.CustomizationMenuAttachmentName = "Laser"

SWEP.GrenadeLauncherIronPos = Vector(-1.035, -4.000, 0.900)
SWEP.GrenadeLauncherIronAng = Vector(1.100, 0.050, 0.000)

//SWEP.GrenadeLauncherAmmoType = "phunbase_40mm_he"
SWEP.GrenadeLauncherReloadTime = 2.8
SWEP.GrenadeLauncherFireDelay = 0.55
SWEP.GrenadeLauncherDryFireDelay = 0.35
SWEP.GrenadeLauncherTransitionDelay = 0.7

SWEP.DeployTime = 0.7
SWEP.DeployTime_First = 2.25

SWEP.HolsterTime = 0.5

SWEP.ReloadTimes = {
	Base = 3.2,
	Base_Empty = 4.5,
}

SWEP.ViewModelMovementScale = 0.75

// shell-related stuff
SWEP.ShellVelocity = {X = 80, Y = 30, Z = 15}
SWEP.ShellAngularVelocity = {Pitch_Min = -2500, Pitch_Max = -2000, Yaw_Min = 150, Yaw_Max = 200, Roll_Min = 10, Roll_Max = 20}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shell"
SWEP.ShellDelay = 0.045
SWEP.ShellScale = 0.66
SWEP.ShellModel = "models/gmod4phun/ins2/shells/762x39.mdl"

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
	SWEP.VElements.standard.model
}

SWEP.INS2_IconParams = {dist = 15.5, offset = -1, spin = false, mergemodels = icon_merge_models}
