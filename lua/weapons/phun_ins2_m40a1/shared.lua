SWEP.Base = "phun_base_ins2"

AddCSLuaFile()

PHUNBASE.LoadLua("sequences.lua")
PHUNBASE.LoadLua("sounds.lua")

SWEP.PrintName = "M40A1"
SWEP.Category = "PHUNBASE | Insurgency"
SWEP.Slot = 1
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/weapons/v_m40a1.mdl"
SWEP.WorldModel = "models/weapons/w_m40.mdl"

SWEP.CustomWorldModel = "models/weapons/w_m40.mdl"
SWEP.CustomWorldModelPos = Vector(-0.5,5,1.25)
SWEP.CustomWorldModelAng = Angle(-6.5,-1.25,180)

SWEP.HoldType = "ar2"
SWEP.SprintHoldType = "normal"
SWEP.CrouchHoldType = "ar2"
SWEP.ReloadHoldType = "ar2"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.ScriptedEntityType = "phunbase_weapon_ins2"

// weapon specific variables

SWEP.Primary.Ammo = "phunbase_762x51"
SWEP.Primary.ClipSize = 5
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Delay = 0.5
SWEP.Primary.Damage = 32
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"bolt"}

// Recoil variables
SWEP.Recoil	= 1.5
SWEP.Spread	= 0.02
SWEP.Spread_Iron = 0.005
SWEP.SpreadVel = 0.25
SWEP.SpreadVel_Iron = 0.07
SWEP.SpreadAdd = 0.5
SWEP.SpreadAdd_Iron	= 0.05

SWEP.BasePos = Vector(0, 0, 0)
SWEP.BaseAng = Vector(0, 0, 0)

SWEP.IronsightPos = Vector(-2.821, -3.750, 0.184)
SWEP.IronsightAng = Vector(0.000, 0.000, 0.000)

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
SWEP.RTScope_Zoom = 10.25
SWEP.RTScope_Align = Angle(0.0675,-0.15,-90)
SWEP.RTScope_Reticle = Material("phunbase/rt_scope/invis")
SWEP.RTScope_DrawIris = true
SWEP.RTScope_DrawParallax = true
SWEP.RTScope_AttachmentName = "scope_origin"

SWEP.MouseSensitivityHip = 1
SWEP.MouseSensitivityIron = 0.2

SWEP.VElements = {
	["standard_1"] = {model = "models/gmod4phun/ins2/upgrades/a_standard_m40.mdl", default = true, bonemerge = true},
	["pb_ins2_att_suppressor"] = {model = "models/gmod4phun/ins2/upgrades/a_suppressor_sec.mdl", bonemerge = true, drawInRT = true},
	
	["pb_ins2_att_flashlight"] = {model = "models/gmod4phun/ins2/upgrades/a_flashlight_band.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_laser"] = {model = "models/gmod4phun/ins2/upgrades/a_laser_band.mdl", bonemerge = true, drawInRT = true},
	
	["pb_ins2_att_optic_holo"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_eotech_l.mdl", bonemerge = true},
	["pb_ins2_att_optic_holo_stencil"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_eotech_l.mdl", bonemerge = true, stencilmaterials = {1}},
	
	["pb_ins2_att_optic_2xreddot"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimp2x.mdl", bonemerge = true},
	["pb_ins2_att_optic_elcan"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_elcan.mdl", bonemerge = true},
	["pb_ins2_att_optic_mk4"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_m40.mdl", bonemerge = true},
	
	["pb_ins2_att_bipod"] = {model = "models/gmod4phun/ins2/upgrades/a_bipod_m40.mdl", bonemerge = true},
}

SWEP.DisableVElements = {
	["pb_ins2_att_optic_holo"] = {"standard_1"},
	["pb_ins2_att_optic_2xreddot"] = {"standard_1"},
	["pb_ins2_att_optic_elcan"] = {"standard_1"},
	["pb_ins2_att_optic_mk4"] = {"standard_1"},
}

local ang0 = Vector()

SWEP.AttachmentIronsights = {
	["pb_ins2_att_optic_holo"] = {pos = Vector(-2.821, -3.750, 0.184), ang = ang0},
	["pb_ins2_att_optic_2xreddot"] = {pos = Vector(-2.812, -5.000, 0.351), ang = ang0},
	["pb_ins2_att_optic_elcan"] = {pos = Vector(-2.815, -4.500, 0.034), ang = ang0},
	["pb_ins2_att_optic_mk4"] = {pos = Vector(-2.822, -4.000, 0.7), ang = ang0}
}

SWEP.Attachments = {
	[1] = {name = "Optics", attachments = {"pb_ins2_att_optic_holo", "pb_ins2_att_optic_2xreddot", "pb_ins2_att_optic_elcan", "pb_ins2_att_optic_mk4"}},
	[2] = {name = "Barrel", attachments = {"pb_ins2_att_suppressor"}},
	[3] = {name = "Siderail", attachments = {"pb_ins2_att_flashlight", "pb_ins2_att_laser"}},
	[4] = {name = "Underbarrel", attachments = {"pb_ins2_att_bipod"}},
}

SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 0.75
SWEP.CustomizationMenuAttachmentName = "Foregrip"

SWEP.DeployTime = 0.7
SWEP.DeployTime_First = 3

SWEP.HolsterTime = 0.55

SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 2.85

SWEP.Chamberable = false
SWEP.CockAfterShot = true
SWEP.CockAfterShotTime = 1.55
SWEP.MakeShellOnCock = false
SWEP.DontCockWhenEmpty = true

SWEP.ShotgunReload = true
SWEP.ShotgunReload_EjectOnStart = true
SWEP.ShotgunReloadTime_EjectOnStart = 0.45

SWEP.ShotgunReloadTime_Start = 0.85
SWEP.ShotgunReloadTime_Start_Empty = 0.85
SWEP.ShotgunReloadTime_Insert = 0.8
SWEP.ShotgunReloadTime_End = 1
SWEP.ShotgunReloadTime_End_Empty = 1

SWEP.ShotgunReloadTime_InsertAmmoWait = 0.4

SWEP.ViewModelMovementScale = 0.75

// shell-related stuff
SWEP.ShellVelocity = {X = 65, Y = 0, Z = -10}
SWEP.ShellAngularVelocity = {Pitch_Min = -500, Pitch_Max = 200, Yaw_Min = 0, Yaw_Max = 1000, Roll_Min = -200, Roll_Max = 100}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 90}
SWEP.ShellAttachmentName = "shell"
SWEP.ShellDelay = 0.1
SWEP.ShellScale = 0.65
SWEP.ShellModel = "models/phunbase/shells/7_62x51mm.mdl"
SWEP.ShellEjectVelocity = 85
SWEP.NoShells = true

SWEP.MuzzleAttachmentName = "muzzle"
SWEP.MuzzleEffect = {"weapon_muzzle_flash_smoke_small2", "PistolGlow", "muzzle_lee_simple_pistol", "muzzle_fire_pistol", "muzzle_sparks_pistol", "smoke_trail"}

local icon_merge_models = {
	"models/weapons/upgrades/a_standard_m40.mdl"
}

SWEP.INS2_IconParams = {dist = 20, offset = 0, spin = false, mergemodels = icon_merge_models}