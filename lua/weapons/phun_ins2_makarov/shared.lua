SWEP.Base = "phun_base_ins2"

AddCSLuaFile()

PHUNBASE.LoadLua("sequences.lua")
PHUNBASE.LoadLua("sounds.lua")

SWEP.PrintName = "Makarov"
SWEP.Category = "PHUNBASE | Insurgency"
SWEP.Slot = 1
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/ins2/weapons/v_makarov.mdl"
SWEP.WorldModel = "models/gmod4phun/ins2/weapons/w_makarov.mdl"

SWEP.CustomWorldModel = SWEP.WorldModel
SWEP.CustomWorldModelPos = Vector(-1.25,4.75,1.5)
SWEP.CustomWorldModelAng = Angle(0,0,180)

SWEP.HoldType = "revolver"
SWEP.SprintHoldType = "normal"
SWEP.CrouchHoldType = "revolver"
SWEP.ReloadHoldType = "pistol"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.ScriptedEntityType = "phunbase_weapon_ins2"

if CLIENT then
	SWEP.WepSelectIcon = surface.GetTextureID("gmod4phun/ins2/icons/weapon_makarov")
end

// weapon specific variables

SWEP.Primary.Ammo = "phunbase_9x18mm"
SWEP.Primary.ClipSize = 8
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Delay = 0.15
SWEP.Primary.Damage = 20
SWEP.Primary.Force = 1.5
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0
SWEP.Primary.Spread = 0
SWEP.Primary.Cone = 0.01

SWEP.FireModes = {"semi"}
SWEP.FireActionDelay = 0.025

SWEP.BasePos = Vector(-0.2, 0.75, -0.15)
SWEP.BaseAng = Vector(0, 0, 0)

SWEP.IronsightPos = Vector(-1.920, 4.000, 0.490)
SWEP.IronsightAng = Vector(0.200, 0.000, 0.000)

SWEP.SprintPos = Vector(0,0,0)
SWEP.SprintAng = Vector(0,0,0)

SWEP.HolsterPos = Vector(0,0,0)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(0,0,0)
SWEP.NearWallAng = Vector(0,0,0)

SWEP.CustomizePos = Vector(5.423, -1.269, -3.034)
SWEP.CustomizeAng = Vector(16.000, 30.000, 5.000)

SWEP.PistolSprintSway = true
SWEP.UseIronTransitionAnims = false

SWEP.VElements = {
	["default_mag"] = {model = "models/gmod4phun/ins2/upgrades/a_magazine_makarov_8.mdl", default = true, bonemerge = true},
	["pb_ins2_att_mag_extended_15"] = {model = "models/gmod4phun/ins2/upgrades/a_magazine_makarov_15.mdl", bonemerge = true},
	
	["pb_ins2_att_flashlight"] = {model = "models/gmod4phun/ins2/upgrades/a_flashlight_mak.mdl", bonemerge = true},
	["pb_ins2_att_laser"] = {model = "models/gmod4phun/ins2/upgrades/a_laser_mak.mdl", bonemerge = true},
	["pb_ins2_att_suppressor"] = {model = "models/gmod4phun/ins2/upgrades/a_suppressor_pistol.mdl", bonemerge = true},
}

SWEP.ReplaceVElements = {
	["pb_ins2_att_mag_extended_15"] = {
		["default_mag"] = "pb_ins2_att_mag_extended_15",
	}
}

SWEP.Attachments = {
	[1] = {name = "Barrel", attachments = {"pb_ins2_att_suppressor"}},
	[2] = {name = "Siderail", attachments = {"pb_ins2_att_flashlight", "pb_ins2_att_laser"}},
	[3] = {name = "Magazines", attachments = {"pb_ins2_att_mag_extended_15"}},
}

SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 0.8
SWEP.CustomizationMenuAttachmentName = "muzzle"
//SWEP.NoCustomizeAnims = true

SWEP.IsSuppressed = false
SWEP.UsesExtMag = false
SWEP.CustomFlashlight = false

SWEP.DeployTime = 0.5
SWEP.DeployTime_First = 1.3

SWEP.HolsterTime = 0.5

SWEP.ReloadTimes = {
	Base = 2.5,
	Base_Empty = 2.8,
	Base_Ext = 2.5,
	Base_Empty_Ext = 2.8,
}

SWEP.ViewModelMovementScale = 0.75

// shell-related stuff
SWEP.ShellVelocity = {X = 80, Y = -10, Z = -10}
SWEP.ShellAngularVelocity = {Pitch_Min = -2500, Pitch_Max = -2000, Yaw_Min = 150, Yaw_Max = 200, Roll_Min = 10, Roll_Max = 20}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = -90}
SWEP.ShellAttachmentName = "shell"
SWEP.ShellDelay = 0.06
SWEP.ShellScale = 0.5
SWEP.ShellModel = "models/phunbase/shells/9x18mm.mdl"

SWEP.MuzzleAttachmentName = "muzzle"

SWEP.MuzzleEffect = {
    "pb_ins2_muzzleflash_makarov_1p_core",
    "pb_ins2_muzzleflash_makarov_1p_flame",
    "muzzle_smoke_trail",
    "smoke_trail",
}

SWEP.MuzzleEffectSuppressed = {"muzzle_lee_silenced"}

local icon_merge_models = {
	SWEP.VElements.default_mag.model,
}

SWEP.INS2_IconParams = {dist = 4.75, offset = 1.5, spin = false, mergemodels = icon_merge_models}

function SWEP:CustomizeAnimLogic()
	if self:GetIsCustomizing() then
        self:_playINS2Anim("idle")
	end
end
