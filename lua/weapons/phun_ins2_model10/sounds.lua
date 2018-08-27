PHUNBASE:addFireSound("PB_INS2_REVOLVER_FIRE", "weapons/revolver/revolver_fp.wav", 1, 105, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_REVOLVER_CLOSECHAMBER", "weapons/revolver/handling/revolver_close_chamber.wav")
PHUNBASE:addReloadSound("PB_INS2_REVOLVER_COCKHAMMER", "weapons/revolver/handling/revolver_cock_hammer.wav")
PHUNBASE:addReloadSound("PB_INS2_REVOLVER_COCKHAMMERREADY", "weapons/revolver/handling/revolver_cock_hammer_ready.wav")
PHUNBASE:addReloadSound("PB_INS2_REVOLVER_DUMPROUNDS", {
	"weapons/revolver/handling/revolver_dump_rounds_01.wav",
	"weapons/revolver/handling/revolver_dump_rounds_02.wav",
	"weapons/revolver/handling/revolver_dump_rounds_03.wav"
})
PHUNBASE:addReloadSound("PB_INS2_REVOLVER_EMPTY", "weapons/revolver/handling/revolver_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_REVOLVER_OPENCHAMBER", "weapons/revolver/handling/revolver_open_chamber.wav")
PHUNBASE:addReloadSound("PB_INS2_REVOLVER_INSERTSINGLE", {
	"weapons/revolver/handling/revolver_round_insert_single_01.wav",
	"weapons/revolver/handling/revolver_round_insert_single_02.wav",
	"weapons/revolver/handling/revolver_round_insert_single_03.wav",
	"weapons/revolver/handling/revolver_round_insert_single_04.wav",
	"weapons/revolver/handling/revolver_round_insert_single_05.wav",
	"weapons/revolver/handling/revolver_round_insert_single_06.wav"
})
PHUNBASE:addReloadSound("PB_INS2_REVOLVER_SPEEDLOADERINSERT", "weapons/revolver/handling/revolver_speed_loader_insert_01.wav")

SWEP.FireSound = "PB_INS2_REVOLVER_FIRE"

local function beltToClip(wep)
	wep.VM:SetBodygroup(1, math.Clamp(wep:Clip1(), 0, 6))
end

local function shellsToClip(wep)
	wep.VM:SetBodygroup(2, math.Clamp(wep:Clip1(), 0, 6))
end

local function bothToClip(wep)
	beltToClip(wep)
	shellsToClip(wep)
end

local function beltToClip_plus1(wep)
	wep.VM:SetBodygroup(1, math.Clamp(wep:Clip1()+1, 0, 6))
end

local function shellsToClip_plus1(wep)
	wep.VM:SetBodygroup(2, math.Clamp(wep:Clip1()+1, 0, 6))
end

local function beltToHadInClip(wep)
	wep.VM:SetBodygroup(1, math.Clamp(wep.HadInClip, 0, 6))
end

local function shellsToHadInClip(wep)
	wep.VM:SetBodygroup(2, math.Clamp(wep.HadInClip, 0, 6))
end

local function beltToReserve(wep)
	local reserve = wep.Owner:GetAmmoCount(wep.Primary.Ammo) + wep:Clip1()
	wep.VM:SetBodygroup(1, math.Clamp(reserve, 0, 6))
end

local function shellsToReserve(wep)
	local reserve = wep.Owner:GetAmmoCount(wep.Primary.Ammo) + wep:Clip1()
	wep.VM:SetBodygroup(2, math.Clamp(reserve, 0, 6))
end

local function shells_drop(wep)
	local vm = wep.VM
	local s = vm:GetBodygroup(2)
	
	for _ = 1, s do 
		wep:_makeShellInstant()
	end
end

local function speed_drop(wep)
    local att = wep.VM:LookupAttachment("shell")
	if !att then return end
	
	att = wep.VM:GetAttachment(att)
	if !att then return end
	
    local pos, ang = att.Pos, att.Ang
    if !pos or !ang then return end
    
    wep:_createCustomClientPhysEnt(pos, ang, "models/gmod4phun/ins2/upgrades/a_projectile_speedloader.mdl", 1, "PB_WEAPONIMPACT_SOFT")
end

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_DRAW", callback = bothToClip},
		{time = 27/28, sound = "PB_INS2_REVOLVER_OPENCHAMBER"},
		{time = 46/28, sound = "PB_INS2_REVOLVER_CLOSECHAMBER"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_HOLSTER"},
	},

	base_crawl = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	base_fire = {
		{time = 0, sound = "PB_INS2_REVOLVER_COCKHAMMER"},
	},

	base_fire2 = {
		{time = 0, sound = "PB_INS2_REVOLVER_COCKHAMMER"},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_REVOLVER_COCKHAMMER"},
		{time = 4/30, sound = "PB_INS2_REVOLVER_EMPTY"},
	},

	base_reload_start = {
		{time = 0, sound = "", callback = beltToHadInClip},
		{time = 1/33.5, sound = "PB_INS2_UNIVERSAL_LEANIN"},
		{time = 24/33.5, sound = "PB_INS2_REVOLVER_OPENCHAMBER"},
		{time = 51/33.5, sound = "PB_INS2_REVOLVER_DUMPROUNDS"},
		{time = 54/33.5, sound = "", callback = shells_drop},
		{time = 58/33.5, sound = "", callback = shellsToClip},
	},

	base_reload_insert = {
		{time = 0, sound = "", callback = shellsToClip_plus1},
		{time = 1/34.6, sound = "", callback = beltToClip_plus1},
		{time = 6/34.6, sound = "PB_INS2_REVOLVER_INSERTSINGLE"},
		{time = 18/34.6, sound = "PB_INS2_UNIVERSAL_LEANIN"},
	},

	base_reload_end = {
		{time = 6/34.5, sound = "PB_INS2_UNIVERSAL_LEANOUT"},
		{time = 37/34.5, sound = "PB_INS2_REVOLVER_CLOSECHAMBER"},
	},

	base_reload_speed = {
		{time = 0, sound = "", callback = beltToHadInClip},
		{time = 1/33.5, sound = "PB_INS2_UNIVERSAL_LEANIN"},
		{time = 24/33.5, sound = "PB_INS2_REVOLVER_OPENCHAMBER"},
		{time = 51/33.5, sound = "PB_INS2_REVOLVER_DUMPROUNDS"},
		{time = 54/33.5, sound = "", callback = shells_drop},
		{time = 65/33.5, sound = "", callback = shellsToReserve},
		{time = 66/33.5, sound = "", callback = beltToReserve},
		{time = 81/33.5, sound = "PB_INS2_REVOLVER_SPEEDLOADERINSERT"},
		{time = 98/33.5, sound = "", callback = speed_drop},
		{time = 113/33.5, sound = "PB_INS2_REVOLVER_CLOSECHAMBER"},
	},

	iron_fire = {
		{time = 0, sound = "PB_INS2_REVOLVER_COCKHAMMER"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_REVOLVER_COCKHAMMER"},
		{time = 4/30, sound = "PB_INS2_REVOLVER_EMPTY"},
	},
}
