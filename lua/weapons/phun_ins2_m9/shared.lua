SWEP.Base = "phun_base_ins2"

AddCSLuaFile()

PHUNBASE.LoadLua("sequences.lua")
PHUNBASE.LoadLua("sounds.lua")

SWEP.PrintName = "M9"
SWEP.Category = "PHUNBASE | Insurgency"
SWEP.Slot = 1
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/ins2/weapons/v_beretta.mdl"
SWEP.WorldModel = "models/gmod4phun/ins2/weapons/w_m9.mdl"

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
	SWEP.WepSelectIcon = surface.GetTextureID("gmod4phun/ins2/icons/weapon_m9")
end

// weapon specific variables

SWEP.Primary.Ammo = "phunbase_9x19mm"
SWEP.Primary.ClipSize = 15
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

SWEP.IronsightPos = Vector(-1.852, 4.000, 0.500)
SWEP.IronsightAng = Vector(0.130, 0.065, 0.000)

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
	["pb_ins2_att_flashlight"] = {model = "models/gmod4phun/ins2/upgrades/a_flashlight_m9.mdl", bonemerge = true},
	["pb_ins2_att_laser"] = {model = "models/gmod4phun/ins2/upgrades/a_laser_m9.mdl", bonemerge = true},
	["pb_ins2_att_suppressor"] = {model = "models/gmod4phun/ins2/upgrades/a_suppressor_pistol.mdl", bonemerge = true},
}

SWEP.Attachments = {
	[1] = {name = "Barrel", attachments = {"pb_ins2_att_suppressor"}},
	[2] = {name = "Siderail", attachments = {"pb_ins2_att_flashlight", "pb_ins2_att_laser"}},
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
	Base = 2.6,
	Base_Empty = 2.8,
}

SWEP.ViewModelMovementScale = 0.75

// shell-related stuff
SWEP.ShellVelocity = {X = 80, Y = -10, Z = -10}
SWEP.ShellAngularVelocity = {Pitch_Min = -2500, Pitch_Max = -2000, Yaw_Min = 150, Yaw_Max = 200, Roll_Min = 10, Roll_Max = 20}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shell"
SWEP.ShellDelay = 0.065
SWEP.ShellScale = 0.66
SWEP.ShellModel = "models/gmod4phun/ins2/shells/9x19.mdl"

SWEP.MuzzleAttachmentName = "muzzle"

SWEP.MuzzleEffect = {
    "pb_ins2_muzzleflash_m9_1p_core",
    "pb_ins2_muzzleflash_m9_1p_glow",
    "pb_ins2_muzzleflash_m9_1p_sparks",
    "muzzle_lee_pistol",
    "muzzle_smoke_trail",
    "smoke_trail",
}

SWEP.MuzzleEffectSuppressed = {"muzzle_lee_silenced"}

SWEP.INS2_IconParams = {dist = 6, offset = 2.3, spin = false}

function SWEP:CustomizeAnimLogic()
	if self:GetIsCustomizing() then
        self:_playINS2Anim("idle")
	end
end
