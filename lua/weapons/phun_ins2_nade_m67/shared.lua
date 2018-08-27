SWEP.Base = "phun_base_ins2_nade"

PHUNBASE.LoadLua("sounds.lua")

SWEP.PrintName = "M67 Grenade"
SWEP.Category = "PHUNBASE | Insurgency"
SWEP.Slot = 4
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/ins2/weapons/v_m67.mdl"
SWEP.WorldModel = "models/gmod4phun/ins2/weapons/w_m67.mdl"

SWEP.CustomWorldModel = SWEP.WorldModel
SWEP.CustomWorldModelPos = Vector(-2.5, 3.35, 1.85)
SWEP.CustomWorldModelAng = Angle(0, 0, 180)

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.ScriptedEntityType = "phunbase_weapon_ins2"

if CLIENT then
	SWEP.WepSelectIcon = surface.GetTextureID("gmod4phun/ins2/icons/weapon_m67")
end

// weapon specific variables

SWEP.Primary.Ammo = "grenade"
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = true

SWEP.BasePos = Vector(0.000, 0.000, 0.000)
SWEP.BaseAng = Vector(0.000, 0.000, 0.000)

SWEP.IronsightPos = Vector(0.000, 0.000, 0.000)
SWEP.IronsightAng = Vector(0.000, 0.000, 0.000)

SWEP.SprintPos = Vector(0.000, 0.000, 0.000)
SWEP.SprintAng = Vector(0.000, 0.000, 0.000)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(1.510, -4.800, 1.030)
SWEP.NearWallAng = Vector(-13.560, 20.560, -11.080)

SWEP.PistolSprintSway = true
SWEP.UseIronTransitionAnims = false

SWEP.Sequences = {
	base_idle = "idle",
	base_ready = "ready",
	base_draw = "draw",
	base_holster = "holster",
	base_down = "down",
	base_crawl = "crawl",
	base_sprint = "sprint",
    
	pullbackhigh = "pullbackhigh",
	pullbackhighbake = "pullbackhighbake",
	pullbacklow = "pullbacklow",
	throw = "throw",
	bakethrow = "bakethrow",
	lowthrow = "lowthrow",
}

SWEP.DeployTime = 0.65
SWEP.HolsterTime = 0.5
SWEP.ReloadTime = 0

SWEP.ViewModelMovementScale = 0.75

SWEP.NormalFlashlight = true
SWEP.CustomFlashlight = false
SWEP.FlashlightAttachmentName = "1"
SWEP.InstantFlashlight = false

SWEP.INS2_IconParams = {dist = 3.5, offset = 0, spin = false}

SWEP.NadeClass = "pb_ins2_throwable_m67"
SWEP.NadeFuseTime = 4
SWEP.NadeGetReadyTime = 1.35
SWEP.NadeCookable = true
SWEP.NadeGetReadyTimeCooking = 1.7
SWEP.NadeCookStartTime = 0.75

SWEP.NadeThrowWaitTime = 0.2
SWEP.NadeRedeployWaitTime = 0.75

SWEP.LockThrowStateOnInit = true

SWEP.SwitchAfterThrow = false

function SWEP:OnNadeCookStart()
    if CLIENT then
        self:EmitSound("PB_INS2_M67_SPOONEJECT")
        self:_spoonDrop()
    end
end
