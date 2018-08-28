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

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.ScriptedEntityType = "phunbase_weapon_ins2"

if CLIENT then
	SWEP.WepSelectIcon = surface.GetTextureID("gmod4phun/ins2/icons/weapon_rpg7")
end

// weapon specific variables

SWEP.Primary.Ammo = "phunbase_rocket"
SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Delay = 1
SWEP.Primary.Damage = 200
SWEP.Primary.Force = 1.5
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0
SWEP.Primary.Spread = 0

SWEP.LastShotFireDelay = 1.1

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

SWEP.CustomizePos = Vector(2.000, -1.500, -4.600)
SWEP.CustomizeAng = Vector(25.000, 20.000, 0.000)

SWEP.PistolSprintSway = true
SWEP.UseIronTransitionAnims = false

SWEP.VElements = {
	["pb_ins2_att_laser"] = {model = "models/gmod4phun/ins2/upgrades/a_laser_sterling.mdl", bone = "RPG_Body", pos = Vector(1.781, -11.601, 1.996), angle = Angle(0, -90, 0), size = Vector(0.899, 0.899, 0.899) },
}

SWEP.Attachments = {
	[1] = {name = "Siderail", attachments = {"pb_ins2_att_laser"}},
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
    "pb_ins2_ins_weapon_rpg_muzzleflash",
    "pb_ins2_ins_weapon_rpg_flame",
    "pb_ins2_ins_weapon_rpg_smoketrail",
    "pb_ins2_ins_weapon_rpg_spark",
    "muzzle_smoke_trail",
}

SWEP.MuzzleEffectSuppressed = {"muzzle_lee_silenced"}

SWEP.INS2_IconParams = {dist = 16, offset = 1.2, spin = false}

function SWEP:CustomizeAnimLogic()
	if self:GetIsCustomizing() then
        self:_playINS2Anim("idle")
	end
end

function SWEP:PrimaryAttackOverride()
	if SERVER then
		local ply = self.Owner
		local pos = ply:GetShootPos()
		local eyeAng = ply:EyeAngles()
		local offset = eyeAng:Forward() * 24
		
		if !self:GetIron() then
			offset = offset + eyeAng:Right() * 6
		end
		
		local nade = ents.Create("pb_ins2_projectile_rpg")
		nade:SetPos(pos + offset)
		nade:SetAngles(eyeAng)
		nade:Spawn()
		nade:Activate()
		nade:SetOwner(ply)
	end
end
