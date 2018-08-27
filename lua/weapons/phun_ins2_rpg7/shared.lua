
SWEP.Base = "phun_base_ins2"

AddCSLuaFile()

PHUNBASE.LoadLua("sequences.lua")
PHUNBASE.LoadLua("sounds.lua")

SWEP.PrintName = "RPG-7"
SWEP.Category = "PHUNBASE | Insurgency"
SWEP.Slot = 4
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 54
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/ins2/weapons/v_rpg.mdl"
SWEP.WorldModel = "models/gmod4phun/ins2/weapons/w_rpg7.mdl"

SWEP.CustomWorldModel = SWEP.WorldModel
SWEP.CustomWorldModelPos = Vector(-1.25,4.75,1.5)
SWEP.CustomWorldModelAng = Angle(0,0,180)

SWEP.HoldType = "revolver"
SWEP.SprintHoldType = "normal"
SWEP.CrouchHoldType = "revolver"
SWEP.ReloadHoldType = "pistol"

SWEP.Spawnable = false
SWEP.AdminSpawnable = false

SWEP.ScriptedEntityType = "phunbase_weapon_ins2"

if CLIENT then
	SWEP.WepSelectIcon = surface.GetTextureID("gmod4phun/ins2/icons/weapon_rpg7")
end

// weapon specific variables

SWEP.Primary.Ammo = "phunbase_rocket"
SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Delay = 0.15
SWEP.Primary.Damage = 200
SWEP.Primary.Force = 1.5
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0
SWEP.Primary.Spread = 0

SWEP.FireModes = {"semi"}
SWEP.FireActionDelay = 0.25
SWEP.HUD_NoFiremodes = true

SWEP.BasePos = Vector(0, 0, 0)
SWEP.BaseAng = Vector(0, 0, 0)

SWEP.IronsightPos = Vector(-2.1193, -2, -0.9167)
SWEP.IronsightAng = Vector(2.6066, -0.2973, 8)

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

SWEP.EnableCustomization = false
SWEP.Chamberable = false

SWEP.DeployTime = 1.1
SWEP.DeployTime_First = 4.7

SWEP.HolsterTime = 0.8

SWEP.ReloadTimes = {
	Base = 4.8,
	Base_Empty = 4.8,
}

SWEP.ViewModelMovementScale = 0.75

SWEP.VMCameraRotateOffset = 8
SWEP.VMCameraRotateOffsetIron = 0

// shell-related stuff
SWEP.ShellVelocity = {X = 80, Y = -30, Z = -15}
SWEP.ShellAngularVelocity = {Pitch_Min = -2500, Pitch_Max = -2000, Yaw_Min = 150, Yaw_Max = 200, Roll_Min = 10, Roll_Max = 20}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 180}
SWEP.ShellAttachmentName = "shell"
SWEP.ShellDelay = 0.065
SWEP.ShellScale = 0.66
SWEP.ShellModel = "models/gmod4phun/ins2/shells/45acp.mdl"
SWEP.NoShells = true

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

local icon_merge_models = {
	-- "models/gmod4phun/ins2/upgrades/a_magazine_1911_8.mdl"
}

SWEP.INS2_IconParams = {dist = 16, offset = 1.25, spin = false, mergemodels = icon_merge_models}

-- function SWEP:CustomizeAnimLogic()
	-- if self:GetIsCustomizing() then
        -- self:_playINS2Anim("idle")
	-- end
-- end

function SWEP:PrimaryAttackOverride()
	local ply = self.Owner
	local pos = ply:GetShootPos()
	local eyeAng = ply:EyeAngles()
	local forward = eyeAng:Forward()
	local offset = forward * 30 + eyeAng:Right() * 4 - eyeAng:Up() * 3
	
	local nade = ents.Create("grenade_ar2")
	nade:SetPos(pos + offset)
	nade:SetAngles(eyeAng)
	nade:Spawn()
	nade:Activate()
	nade:SetOwner(ply)
	nade.IsPBGL_AR2Projectile = true
	
	nade:SetModel("models/gmod4phun/ins2/weapons/w_rpg7_projectile.mdl")
	nade:SetVelocity(forward * 2000)
	nade:SetSaveValue("m_flDamage", 150)
end
