SWEP.Base = "phun_base_ins2"

AddCSLuaFile()

PHUNBASE.LoadLua("sequences.lua")
PHUNBASE.LoadLua("sounds.lua")

SWEP.PrintName = "SKS"
SWEP.Category = "PHUNBASE | Insurgency"
SWEP.Slot = 2
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/ins2/weapons/v_sks.mdl"
SWEP.WorldModel = "models/gmod4phun/ins2/weapons/w_sks.mdl"

SWEP.CustomWorldModel = SWEP.WorldModel
SWEP.CustomWorldModelPos = Vector(-0.5,5,1.25)
SWEP.CustomWorldModelAng = Angle(-6.5,-1.25,180)

SWEP.HoldType = "ar2"
SWEP.SprintHoldType = "normal"
SWEP.CrouchHoldType = "ar2"
SWEP.ReloadHoldType = "ar2"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.ScriptedEntityType = "phunbase_weapon_ins2"

if CLIENT then
	SWEP.WepSelectIcon = surface.GetTextureID("gmod4phun/ins2/icons/weapon_sks")
end

// weapon specific variables

SWEP.Primary.Ammo = "phunbase_762x39"
SWEP.Primary.ClipSize = 20
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Delay = 60/600
SWEP.Primary.Damage = 32
SWEP.Primary.Force = 1.5
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"semi"}

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

SWEP.IronsightPos = Vector(-2.683, -2.500, 1.650)
SWEP.IronsightAng = Vector(0.100, 0.030, 0.000)

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

SWEP.BipodTransitionDelay = 1.2

SWEP.VElements = {
	["modkit"] = {model = "models/gmod4phun/ins2/upgrades/a_modkit_02.mdl", bonemerge = true},
	["pb_ins2_att_suppressor"] = {model = "models/gmod4phun/ins2/upgrades/a_suppressor_ins.mdl", bonemerge = true, drawInRT = true},
	
	["pb_ins2_att_flashlight"] = {model = "models/gmod4phun/ins2/upgrades/a_flashlight_band.mdl", bonemerge = true, drawInRT = true},
	["pb_ins2_att_laser"] = {model = "models/gmod4phun/ins2/upgrades/a_laser_band.mdl", bonemerge = true, drawInRT = true},
	
	["pb_ins2_att_optic_kobra"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_kobra.mdl", bonemerge = true},
	["pb_ins2_att_optic_kobra_stencil"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_kobra.mdl", bonemerge = true, stencilmaterials = {2}},
	
	["pb_ins2_att_optic_2xreddot"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_aimp2x.mdl", bonemerge = true},
	["pb_ins2_att_optic_po4"] = {model = "models/gmod4phun/ins2/upgrades/a_optic_po4x24_m.mdl", bonemerge = true},
	
	["pb_ins2_att_foregrip"] = {model = "models/gmod4phun/ins2/upgrades/a_foregrip_ins2.mdl", bonemerge = true},
	["pb_ins2_att_bipod"] = {model = "models/gmod4phun/ins2/upgrades/a_bipod_sks.mdl", bonemerge = true},
}

SWEP.EnableVElements = {
	["pb_ins2_att_optic_kobra"] = {"modkit"},
	["pb_ins2_att_optic_2xreddot"] = {"modkit"},
	["pb_ins2_att_optic_po4"] = {"modkit"},
}

local opticAng = Vector()

SWEP.AttachmentIronsights = {
	["pb_ins2_att_optic_kobra"] = {pos = Vector(-2.682, -1.250, 0.675), ang = opticAng},
	["pb_ins2_att_optic_2xreddot"] = {pos = Vector(-2.679, -2, 0.505), ang = opticAng},
	["pb_ins2_att_optic_po4"] = {pos = Vector(-2.632, -2.8, 0.766), ang = opticAng}
}

SWEP.Attachments = {
	[1] = {name = "Optics", attachments = {"pb_ins2_att_optic_kobra", "pb_ins2_att_optic_2xreddot", "pb_ins2_att_optic_po4"}},
	[2] = {name = "Barrel", attachments = {"pb_ins2_att_suppressor"}},
	[3] = {name = "Siderail", attachments = {"pb_ins2_att_flashlight", "pb_ins2_att_laser"}},
	[4] = {name = "Underbarrel", attachments = {"pb_ins2_att_foregrip", "pb_ins2_att_bipod"}},
}

SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 0.75
SWEP.CustomizationMenuAttachmentName = "Foregrip"

SWEP.DeployTime = 0.7
SWEP.DeployTime_First = 1.5

SWEP.HolsterTime = 0.5

SWEP.ReloadTimes = {
	Base = 3.25,
	Base_Empty = 4.6,
	Bipod = 3.25,
	Bipod_Empty = 4.6,
}

SWEP.ViewModelMovementScale = 0.75

// shell-related stuff
SWEP.ShellVelocity = {X = 80, Y = 15, Z = 65}
//SWEP.ShellAngularVelocity = {Pitch_Min = -500, Pitch_Max = 200, Yaw_Min = 0, Yaw_Max = 1000, Roll_Min = -200, Roll_Max = 100}
SWEP.ShellAngularVelocity = {Pitch_Min = -2500, Pitch_Max = -2000, Yaw_Min = 150, Yaw_Max = 200, Roll_Min = 10, Roll_Max = 20}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shell"
SWEP.ShellDelay = 0.04
SWEP.ShellScale = 0.66
SWEP.ShellModel = "models/gmod4phun/ins2/shells/762x39.mdl"

SWEP.MuzzleAttachmentName = "muzzle"

SWEP.MuzzleEffect = {
    "pb_ins2_muzzleflash_sparks_variant_1",
    "pb_ins2_muzzleflash_sks_1p_core",
    -- "weapon_muzzle_flash_smoke_small2",
    "PistolGlow",
    "muzzle_smoke_trail",
    "smoke_trail",
}

SWEP.MuzzleEffectSuppressed = {"muzzle_lee_silenced"}

-- local icon_merge_models = {
	-- "models/weapons/upgrades/a_standard_m40.mdl"
-- }

SWEP.INS2_IconParams = {dist = 17.5, offset = 1, spin = false, mergemodels = icon_merge_models}
