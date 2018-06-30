
PHUNBASE:addReloadSound("PB_INS2_M67_ARMDRAW", "weapons/m67/handling/m67_armdraw.wav")
PHUNBASE:addReloadSound("PB_INS2_M67_PINPULL", {
	"weapons/m67/handling/m67_pinpull.wav",
	"weapons/m67/handling/m67_pullpin.wav"
})
PHUNBASE:addReloadSound("PB_INS2_M67_THROW", {
	"weapons/m67/handling/m67_throw.wav",
	"weapons/m67/handling/m67_throw_01.wav"
})

PHUNBASE:addReloadSound("PB_INS2_M67_SPOONEJECT", "weapons/m67/handling/m67_spooneject.wav")
PHUNBASE:addReloadSound("PB_INS2_M67_DRAWBACK", "weapons/m67/handling/m67_drawback.wav")

local vm, att, pos, ang, velocity, align, shellEnt
local shellTable = {}

function SWEP:_createGrenadeSpoon(pos, ang, mdl, mdlscale, impactsnd, veladd)
	if self.Owner:ShouldDrawLocalPlayer() then
		return
	end
	
	shellTable.model = mdl
	shellTable.scale = mdlscale
	shellTable.sound = impactsnd
	
	shellTable.velmin_P = 0
	shellTable.velmax_P = 500
	shellTable.velmin_Y = 0
	shellTable.velmax_Y = 500
	shellTable.velmin_R = 0
	shellTable.velmax_R = 500
	
	shellTable.veladd_X = 0
	shellTable.veladd_Y = 0
	shellTable.veladd_Z = 0
	
	shellTable.wep = self
    
    velocity = self.Owner:GetVelocity() + veladd
    
    shellEnt = PHUNBASE.shells:make(
        pos,
        ang,
        velocity,
        shellTable,
        pos,
        ang
    )
    
    self:_registerVMShellDrawWorld(shellEnt)
end

local function spoon_throw(wep)
    local bone = wep.VM:LookupBone("Spoon_F1")
    if !bone then return end
    local pos, ang = wep.VM:GetBonePosition(bone)
    
    if !pos or !ang then return end
    
    local power = 1000
    local vel = EyeAngles():Forward() * power
    
    wep:_createGrenadeSpoon(pos, ang, "models/gmod4phun/ins2/weapons/w_gren_spoon.mdl", 1, "PB_INS2_M67_PINPULL", vel)
end

local function spoon_throw_close(wep)
    local bone = wep.VM:LookupBone("Spoon_F1")
    if !bone then return end
    local pos, ang = wep.VM:GetBonePosition(bone)
    
    if !pos or !ang then return end
    
    local power = 350
    local vel = EyeAngles():Forward() * power
    
    wep:_createGrenadeSpoon(pos, ang, "models/gmod4phun/ins2/weapons/w_gren_spoon.mdl", 1, "PB_INS2_M67_PINPULL", vel)
end

local function spoon_drop(wep)
    local bone = wep.VM:LookupBone("Spoon_F1")
    if !bone then return end
    local pos, ang = wep.VM:GetBonePosition(bone)
    
    if !pos or !ang then return end
    
    pos = pos + EyeAngles():Forward() * -10
    
    local vel = EyeAngles():Forward() * -10 + EyeAngles():Right() * 5
    
    wep:_createGrenadeSpoon(pos, ang, "models/gmod4phun/ins2/weapons/w_gren_spoon.mdl", 1, "PB_INS2_M67_PINPULL", vel)
end

function SWEP:_spoonDrop()
    spoon_drop(self)
end

SWEP.Sounds = {
	base_draw = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_GRENADE_DRAW"},
	},

	base_holster = {
		{time = 0/35, sound = "PB_INS2_UNIVERSAL_GRENADE_HOLSTER"},
	},

	base_crawl = {
		{time = 10/29, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
		{time = 20/29, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
	},

	pullbackhigh = {
		{time = 19/30, sound = "PB_INS2_M67_PINPULL"},
		{time = 20/30, sound = "PB_INS2_M67_ARMDRAW"},
		// { event 3900 32 ""},
	},

	pullbackhighbake = {
		{time = 19/30, sound = "PB_INS2_M67_PINPULL"},
		// { event AE_WPN_PULL_SPOON 23 ""},
		{time = 23/30, sound = "PB_INS2_M67_SPOONEJECT"},
		{time = 34/30, sound = "PB_INS2_M67_ARMDRAW"},
		// { event 3900 41 ""},
        {time = 35/30, sound = "", callback = spoon_drop},
	},

	pullbacklow = {
		{time = 19/30, sound = "PB_INS2_M67_PINPULL"},
		{time = 20/30, sound = "PB_INS2_M67_ARMDRAW"},
		// { event 3900 32 ""},
	},

	throw = {
		{time = 3/31.5, sound = "PB_INS2_M67_THROW"},
		// { event AE_WPN_PULL_SPOON 3 ""},
		{time = 4/31.5, sound = "PB_INS2_M67_SPOONEJECT"},
		// { event 3005 3 ""},
        {time = 5/31.5, sound = "", callback = spoon_throw},
	},

	bakethrow = {
		{time = 3/31.5, sound = "PB_INS2_M67_THROW"},
		// { event 3013 3 ""},
	},

	lowthrow = {
		{time = 6/31.5, sound = "PB_INS2_M67_THROW"},
		{time = 7/31.5, sound = "PB_INS2_M67_SPOONEJECT"},
		// { event 3016 6 ""},
        {time = 7/31.5, sound = "", callback = spoon_throw_close},
	},
}
