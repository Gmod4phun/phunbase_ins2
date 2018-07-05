SWEP.Base = "phun_base_ins2"

AddCSLuaFile()

PHUNBASE.LoadLua("sequences.lua")
PHUNBASE.LoadLua("sounds.lua")

SWEP.PrintName = "M590"
SWEP.Category = "PHUNBASE | Insurgency"
SWEP.Slot = 1
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/ins2/weapons/v_m590.mdl"
SWEP.WorldModel = "models/gmod4phun/ins2/weapons/w_m590.mdl"

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

// weapon specific variables

SWEP.Primary.Ammo = "phunbase_12gauge"
SWEP.Primary.ClipSize = 8
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Delay = 0.25
SWEP.Primary.Damage = 18
SWEP.Primary.Force = 10
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

SWEP.IronsightPos = Vector(-2.008, -1.500, 0.789)
SWEP.IronsightAng = Vector(0.150, 0.050, 0.000)

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

	["standard_1"] = {model = "models/gmod4phun/ins2/upgrades/a_standard_m590.mdl", default = true, bonemerge = true},
	["rail"] = {model = "models/gmod4phun/ins2/upgrades/a_modkit_05.mdl", bonemerge = true},
    
	["pb_ins2_att_flashlight"] = {model = "models/gmod4phun/ins2/upgrades/a_flashlight_band.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_laser"] = {model = "models/gmod4phun/ins2/upgrades/a_laser_band.mdl", bonemerge = true, drawInRT = true},
	
	["pb_ins2_att_suppressor"] = {model = "models/gmod4phun/ins2/upgrades/a_suppressor_12ga.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_foregrip"] = {model = "models/weapons/upgrades/a_foregrip_ins2.mdl", attachment = "Foregrip", angle = Angle(0,-90,0), size = Vector(0.5, 0.5, 0.5)},
	
	["pb_ins2_att_optic_holo"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_eotech_m.mdl", bonemerge = true},
	["pb_ins2_att_optic_holo_stencil"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_eotech_m.mdl", bonemerge = true, stencilmaterials = {1}},
	
	["pb_ins2_att_optic_reddot"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimpoint_m.mdl", bonemerge = true},
	["pb_ins2_att_optic_reddot_stencil"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimpoint_m.mdl", bonemerge = true, stencilmaterials = {1}},
	
	["pb_ins2_att_optic_2xreddot"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimp2x_m.mdl", bonemerge = true},
}

-- SWEP.DisableVElements = {
	-- ["pb_ins2_att_optic_holo"] = {"carry"},
	-- ["pb_ins2_att_optic_reddot"] = {"carry"},
	-- ["pb_ins2_att_optic_2xreddot"] = {"carry"},
	-- ["pb_ins2_att_optic_elcan"] = {"carry"},
-- }

SWEP.ReplaceVElements = {
	["pb_ins2_att_optic_holo"] = {
		["standard_1"] = "rail",
	},
	["pb_ins2_att_optic_reddot"] = {
		["standard_1"] = "rail",
	},
	["pb_ins2_att_optic_2xreddot"] = {
		["standard_1"] = "rail",
	},
}

local opticPos = Vector(-2.020, -3.500, 0.050)
local opticAng = Vector(0.000, 0.017, 0.000)

SWEP.AttachmentIronsights = {
	["pb_ins2_att_optic_holo"] = {pos = opticPos, ang = opticAng},
	["pb_ins2_att_optic_reddot"] = {pos = opticPos, ang = opticAng},
	["pb_ins2_att_optic_2xreddot"] = {pos = opticPos, ang = opticAng},
}

SWEP.Attachments = {
	[1] = {name = "Optics", attachments = {"pb_ins2_att_optic_holo", "pb_ins2_att_optic_reddot", "pb_ins2_att_optic_2xreddot"}},
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

SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 2.85

SWEP.Chamberable = false
SWEP.CockAfterShot = true
SWEP.CockAfterShotTime = 0.6
SWEP.MakeShellOnCock = false
SWEP.DontCockWhenEmpty = true

SWEP.ShotgunReload = true
SWEP.ShotgunReload_InsertOnStart = false
SWEP.ShotgunReload_InsertOnStartEmpty = true
SWEP.ShotgunReload_InsertOnEnd = false
SWEP.ShotgunReload_InsertOnEndEmpty = false

SWEP.ShotgunReloadTime_Start = 0.7
SWEP.ShotgunReloadTime_Start_Empty = 2.9
SWEP.ShotgunReloadTime_Start_EmptyOneAndOnly = 0.25
SWEP.ShotgunReloadTime_Insert = 0.7
SWEP.ShotgunReloadTime_End = 0.6
SWEP.ShotgunReloadTime_End_Empty = 0.6

SWEP.ShotgunReloadTime_InsertAmmoWait = 0.35
//SWEP.ShotgunReloadTime_InsertOnStartAmmoWait = 0.25
SWEP.ShotgunReloadTime_InsertOnStartEmptyAmmoWait = 2.2
//SWEP.ShotgunReloadTime_InsertOnEndAmmoWait = 0.25
//SWEP.ShotgunReloadTime_InsertOnEndEmptyAmmoWait = 0.25

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

SWEP.MuzzleAttachmentName = "muzzle"

SWEP.MuzzleEffect = {
    "pb_ins2_muzzleflash_sparks_variant_1",
    "pb_ins2_muzzleflash_m590_1p_glow",
    "pb_ins2_muzzleflash_toz_1p_core",
    "PistolGlow",
    "muzzle_smoke_trail",
    "smoke_trail",
}

SWEP.MuzzleEffectSuppressed = {"muzzle_lee_silenced"}

local icon_merge_models = {
	"models/weapons/upgrades/a_standard_m590.mdl"
}

SWEP.INS2_IconParams = {dist = 18, offset = 0.5, spin = false, mergemodels = icon_merge_models}
