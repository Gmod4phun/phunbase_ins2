SWEP.Base = "phun_base_ins2"

AddCSLuaFile()

PHUNBASE.LoadLua("sequences.lua")
PHUNBASE.LoadLua("sounds.lua")

SWEP.PrintName = "M4A1"
SWEP.Category = "PHUNBASE | Insurgency"
SWEP.Slot = 1
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/weapons/v_m4a1.mdl"
SWEP.WorldModel = "models/weapons/w_m4a1.mdl"

SWEP.CustomWorldModel = "models/weapons/w_m4a1.mdl"
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

SWEP.ExtraSpawnAmmo = {
	["phunbase_40mm_he"] = 3,
	["phunbase_40mm_smoke"] = 3,
}

SWEP.drawViewModelInRT = true

SWEP.VElements = {
	["carry"] = {model = "models/gmod4phun/ins2/upgrades/a_carryhandle_m4.mdl", default = true, bonemerge = true},
	["cover_long_bottom"] = {model = "models/gmod4phun/ins2/upgrades/a_standard_m4a1.mdl", default = true, bonemerge = true},
	["cover_long_left"] = {model = "models/gmod4phun/ins2/upgrades/a_standard2_m4a1.mdl", default = true, bonemerge = true},
	["cover_long_right"] = {model = "models/gmod4phun/ins2/upgrades/a_standard3_m4a1.mdl", default = true, bonemerge = true},
	
	["cover_short_bottom"] = {model = "models/gmod4phun/ins2/upgrades/a_standard4_m4a1.mdl", bonemerge = true},
	["cover_short_left"] = {model = "models/gmod4phun/ins2/upgrades/a_standard6_m4a1.mdl", bonemerge = true},
	["cover_short_right"] = {model = "models/gmod4phun/ins2/upgrades/a_standard5_m4a1.mdl", bonemerge = true},
	
	["pb_ins2_att_flashlight"] = {model = "models/gmod4phun/ins2/upgrades/a_flashlight_rail.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_laser"] = {model = "models/gmod4phun/ins2/upgrades/a_laser_rail.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_suppressor"] = {model = "models/gmod4phun/ins2/upgrades/a_suppressor_sec.mdl", bonemerge = true, drawInRT = true},
	
	["pb_ins2_att_foregrip"] = {model = "models/gmod4phun/ins2/upgrades/a_foregrip_sec.mdl", attachment = "Foregrip", angle = Angle(0, -90, 0), size = Vector(0.5, 0.5, 0.5)},

	["pb_ins2_att_gl_m203_he"] = {model = "models/gmod4phun/ins2/upgrades/a_gl_m203.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_gl_m203_smoke"] = {model = "models/gmod4phun/ins2/upgrades/a_gl_m203.mdl", bonemerge = true, drawInRT = true, skin = 1},
	
	["pb_ins2_att_optic_holo"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_eotech_xl.mdl", bonemerge = true},
	["pb_ins2_att_optic_holo_stencil"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_eotech_xl.mdl", bonemerge = true, stencilmaterials = {1}},
	
	["pb_ins2_att_optic_reddot"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimpoint_l.mdl", bonemerge = true},
	["pb_ins2_att_optic_reddot_stencil"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimpoint_l.mdl", bonemerge = true, stencilmaterials = {1}},
	
	["pb_ins2_att_optic_2xreddot"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimp2x_l.mdl", bonemerge = true},
	
	["pb_ins2_att_optic_elcan"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_elcan.mdl", bonemerge = true},
	
	//["fas2_watch_realtime"] = {model = "models/phunbase/fas2_watch_realtime.mdl", bone = "L ForeTwist5", pos = Vector(0.614, -0.105, -0.875), angle = Angle(-177.5, 1.83, -9.721), size = Vector(1.1, 1.1, 1.1), bodygroups = "00"},
}

SWEP.DisableVElements = {
	["pb_ins2_att_optic_holo"] = {"carry"},
	["pb_ins2_att_optic_reddot"] = {"carry"},
	["pb_ins2_att_optic_2xreddot"] = {"carry"},
	["pb_ins2_att_optic_elcan"] = {"carry"},
	["pb_ins2_att_gl_m203"] = {"cover_long_bottom", "cover_long_left", "cover_long_right"},
}

SWEP.ReplaceVElements = {
	["pb_ins2_att_flashlight"] = {
		["cover_long_right"] = "cover_short_right",
	},
	["pb_ins2_att_laser"] = {
		["cover_long_right"] = "cover_short_right",
	},
	["pb_ins2_att_foregrip"] = {
		["cover_long_bottom"] = "cover_short_bottom",
	},
	["pb_ins2_att_gl_m203"] = {
		["cover_long_left"] = "cover_short_left",
	},
}

local opticPos = Vector(-2.492, -3.650, 0.534)
local opticAng = Vector()

SWEP.AttachmentIronsights = {
	["pb_ins2_att_optic_holo"] = {pos = opticPos + Vector(0,0,0.05), ang = opticAng},
	["pb_ins2_att_optic_reddot"] = {pos = opticPos, ang = opticAng},
	["pb_ins2_att_optic_2xreddot"] = {pos = Vector(-2.495, -3.000, 0.575), ang = opticAng},
	["pb_ins2_att_optic_elcan"] = {pos = opticPos, ang = opticAng}
}

SWEP.Attachments = {
	[1] = {name = "Optics", attachments = {"pb_ins2_att_optic_holo", "pb_ins2_att_optic_reddot", "pb_ins2_att_optic_2xreddot", "pb_ins2_att_optic_elcan"}},
	[2] = {name = "Barrel", attachments = {"pb_ins2_att_heavybarrel", "pb_ins2_att_suppressor"}},
	[3] = {name = "Siderail", attachments = {"pb_ins2_att_flashlight", "pb_ins2_att_laser"}},
	[4] = {name = "Underbarrel", attachments = {"pb_ins2_att_foregrip", /*"pb_ins2_att_gl_m203_smoke",*/ "pb_ins2_att_gl_m203_he"}},
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

SWEP.ReloadTime = 3.85
SWEP.ReloadTime_Empty = 4.55

SWEP.ViewModelMovementScale = 0.75

// shell-related stuff
SWEP.ShellVelocity = {X = 50, Y = 0, Z = 0}
SWEP.ShellAngularVelocity = {Pitch_Min = -500, Pitch_Max = 200, Yaw_Min = 0, Yaw_Max = 1000, Roll_Min = -200, Roll_Max = 100}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 90}
SWEP.ShellAttachmentName = "shell"
SWEP.ShellDelay = 0.05
SWEP.ShellScale = 0.75
SWEP.ShellModel = "models/phunbase/shells/5_56x45mm.mdl"

SWEP.MuzzleAttachmentName = "muzzle"
SWEP.MuzzleEffect = {"weapon_muzzle_flash_smoke_small2", "muzzle_sparks_pistol", "smoke_trail"}

local icon_merge_models = {
	"models/gmod4phun/ins2/upgrades/a_carryhandle_m4.mdl",
	"models/gmod4phun/ins2/upgrades/a_standard_m4a1.mdl",
	"models/gmod4phun/ins2/upgrades/a_standard2_m4a1.mdl",
	"models/gmod4phun/ins2/upgrades/a_standard3_m4a1.mdl"
}

SWEP.INS2_IconParams = {dist = 16, offset = 0, spin = false, mergemodels = icon_merge_models}
