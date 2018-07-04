PHUNBASE:addFireSound("PB_INS2_M249_FIRE", "weapons/m249/m249_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_M249_FIRE_SUPPRESSED", "weapons/m249/m249_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_M249_ARMMOVEMENT1", "weapons/m249/handling/m249_armmovement_01.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_ARMMOVEMENT2", "weapons/m249/handling/m249_armmovement_01.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_BELTALIGN", "weapons/m249/handling/m249_beltalign.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_BELTPULLOUT", "weapons/m249/handling/m249_beltpullout.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_BELTREMOVE", "weapons/m249/handling/m249_beltremove.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_BIPODDEPLOY", "weapons/m249/handling/m249_bipoddeploy.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_BIPODRETRACT", "weapons/m249/handling/m249_bipodretract.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_BOLTBACK", "weapons/m249/handling/m249_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_BOLTRELEASE", "weapons/m249/handling/m249_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_BULLETJINGLE", "weapons/m249/handling/m249_bulletjingle.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_COVERCLOSE", "weapons/m249/handling/m249_coverclose.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_COVEROPEN", "weapons/m249/handling/m249_coveropen.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_DEPLOYGROUNDHIT", "weapons/m249/handling/m249_deploygroundhit.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_EMPTY", "weapons/m249/handling/m249_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_FETCHMAG", "weapons/m249/handling/m249_fetchmag.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_MAGHIT", "weapons/m249/handling/m249_maghit.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_MAGIN", "weapons/m249/handling/m249_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_MAGOUT", "weapons/m249/handling/m249_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_MAGOUTFULL", "weapons/m249/handling/m249_magout_full.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_SHOULDER", "weapons/m249/handling/m249_shoulder.wav")
PHUNBASE:addReloadSound("PB_INS2_M249_THROWAWAYREMAINING", "weapons/m249/handling/m249_throwawayremaining.wav")

SWEP.FireSound = "PB_INS2_M249_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_M249_FIRE_SUPPRESSED"

local function shell(wep)
	wep:_makeShellInstant()
end

local function link(wep)
	-- wep:_makeShellInstant()
end

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 23/30, sound = "PB_INS2_M249_BOLTBACK"},
		{time = 30/30, sound = "PB_INS2_M249_BOLTRELEASE"},
		{time = 56/30, sound = "PB_INS2_M249_SHOULDER"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_crawl = {
		{time = 15/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
		{time = 38/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
	},

	base_fire_1 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	base_fire_2 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	base_fire_3 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_M249_EMPTY"},
	},

	base_reload = {
		-- {time = 0, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToClip},
		{time = 2/31.5, sound = "PB_INS2_UNIVERSAL_LEANIN"},
		{time = 34/31.5, sound = "PB_INS2_M249_COVEROPEN"},
		{time = 69/31.5, sound = "PB_INS2_M249_MAGOUTFULL"},
		{time = 90/31.5, sound = "PB_INS2_M249_FETCHMAG"},
		-- {time = 100/31.5, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToReserve},
		{time = 129/31.5, sound = "PB_INS2_M249_ARMMOVEMENT1"},
		{time = 147/31.5, sound = "PB_INS2_M249_MAGHIT"},
		{time = 154/31.5, sound = "PB_INS2_M249_MAGIN"},
		{time = 177/31.5, sound = "PB_INS2_M249_BULLETJINGLE"},
		{time = 184/31.5, sound = "PB_INS2_M249_BELTALIGN"},
		{time = 208/31.5, sound = "PB_INS2_M249_ARMMOVEMENT2"},
		{time = 226/31.5, sound = "PB_INS2_M249_COVERCLOSE"},
		{time = 263/31.5, sound = "PB_INS2_M249_SHOULDER"},
		// reload at 186/31.5
	},

	base_reload_empty = {
		-- {time = 0, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToClip},
		{time = 2/31.5, sound = "PB_INS2_UNIVERSAL_LEANIN"},
		{time = 32/31.5, sound = "PB_INS2_M249_BOLTBACK"},
		{time = 42/31.5, sound = "PB_INS2_M249_BOLTRELEASE"},
		{time = 77/31.5, sound = "PB_INS2_M249_ARMMOVEMENT2"},
		{time = 89/31.5, sound = "PB_INS2_M249_COVEROPEN"},
		{time = 111/31.5, sound = "PB_INS2_M249_ARMMOVEMENT1"},
		{time = 134/31.5, sound = "PB_INS2_M249_MAGOUT"},
		{time = 151/31.5, sound = "PB_INS2_M249_FETCHMAG"},
		-- {time = 161/31.5, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToReserve},
		{time = 195/31.5, sound = "PB_INS2_M249_ARMMOVEMENT2"},
		{time = 216/31.5, sound = "PB_INS2_M249_MAGHIT"},
		{time = 223/31.5, sound = "PB_INS2_M249_MAGIN"},
		{time = 238/31.5, sound = "PB_INS2_M249_BULLETJINGLE"},
		{time = 249/31.5, sound = "PB_INS2_M249_BELTALIGN"},
		{time = 273/31.5, sound = "PB_INS2_M249_ARMMOVEMENT1"},
		{time = 290/31.5, sound = "PB_INS2_M249_COVERCLOSE"},
		{time = 324/31.5, sound = "PB_INS2_M249_SHOULDER"},
		// reload at 150/31.5
	},

	base_reload_half = {
		-- {time = 0, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToClip},
		{time = 2/31.5, sound = "PB_INS2_UNIVERSAL_LEANIN"},
		{time = 13/31.5, sound = "PB_INS2_M249_ARMMOVEMENT2"},
		{time = 26/31.5, sound = "PB_INS2_M249_COVEROPEN"},
		{time = 63/31.5, sound = "PB_INS2_M249_THROWAWAYREMAINING"},
		{time = 91/31.5, sound = "PB_INS2_M249_MAGOUT"},
		{time = 108/31.5, sound = "PB_INS2_M249_FETCHMAG"},
		-- {time = 118/31.5, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToReserve},
		{time = 150/31.5, sound = "PB_INS2_M249_ARMMOVEMENT1"},
		{time = 177/31.5, sound = "PB_INS2_M249_MAGHIT"},
		{time = 185/31.5, sound = "PB_INS2_M249_MAGIN"},
		{time = 201/31.5, sound = "PB_INS2_M249_BULLETJINGLE"},
		{time = 211/31.5, sound = "PB_INS2_M249_BELTALIGN"},
		{time = 233/31.5, sound = "PB_INS2_M249_ARMMOVEMENT2"},
		{time = 252/31.5, sound = "PB_INS2_M249_COVERCLOSE"},
		{time = 289/31.5, sound = "PB_INS2_M249_SHOULDER"},
		// reload at 186/31.5
	},

	iron_fire_1 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	iron_fire_2 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	iron_fire_3 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	iron_fire_4 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_M249_EMPTY"},
	},

	deployed_in = {
		{time = 17/38, sound = "PB_INS2_M249_BIPODDEPLOY"},
	},

	deployed_out = {
		{time = 26/38, sound = "PB_INS2_M249_BIPODRETRACT"},
	},

	deployed_fire_1 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	deployed_fire_2 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	deployed_dryfire = {
		{time = 0, sound = "PB_INS2_M249_EMPTY"},
	},

	deployed_reload = {
		-- {time = 0, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToClip},
		{time = 2/30, sound = "PB_INS2_UNIVERSAL_LEANIN"},
		{time = 34/32.5, sound = "PB_INS2_M249_COVEROPEN"},
		{time = 69/32.5, sound = "PB_INS2_M249_MAGOUTFULL"},
		{time = 90/32.5, sound = "PB_INS2_M249_FETCHMAG"},
		-- {time = 100/32.5, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToReserve},
		{time = 129/32.5, sound = "PB_INS2_M249_ARMMOVEMENT1"},
		{time = 147/32.5, sound = "PB_INS2_M249_MAGHIT"},
		{time = 154/32.5, sound = "PB_INS2_M249_MAGIN"},
		{time = 177/32.5, sound = "PB_INS2_M249_BULLETJINGLE"},
		{time = 184/32.5, sound = "PB_INS2_M249_BELTALIGN"},
		{time = 208/32.5, sound = "PB_INS2_M249_ARMMOVEMENT2"},
		{time = 226/32.5, sound = "PB_INS2_M249_COVERCLOSE"},
		{time = 263/32.5, sound = "PB_INS2_M249_SHOULDER"},
		// reload at 186/32.5
	},

	deployed_reload_half = {
		-- {time = 0, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToClip},
		{time = 2/32.5, sound = "PB_INS2_UNIVERSAL_LEANIN"},
		{time = 13/32.5, sound = "PB_INS2_M249_ARMMOVEMENT2"},
		{time = 26/32.5, sound = "PB_INS2_M249_COVEROPEN"},
		{time = 63/32.5, sound = "PB_INS2_M249_THROWAWAYREMAINING"},
		{time = 91/32.5, sound = "PB_INS2_M249_MAGOUT"},
		{time = 108/32.5, sound = "PB_INS2_M249_FETCHMAG"},
		-- {time = 118/32.5, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToReserve},
		{time = 150/32.5, sound = "PB_INS2_M249_ARMMOVEMENT1"},
		{time = 177/32.5, sound = "PB_INS2_M249_MAGHIT"},
		{time = 185/32.5, sound = "PB_INS2_M249_MAGIN"},
		{time = 201/32.5, sound = "PB_INS2_M249_BULLETJINGLE"},
		{time = 211/32.5, sound = "PB_INS2_M249_BELTALIGN"},
		{time = 233/32.5, sound = "PB_INS2_M249_ARMMOVEMENT2"},
		{time = 252/32.5, sound = "PB_INS2_M249_COVERCLOSE"},
		{time = 289/32.5, sound = "PB_INS2_M249_SHOULDER"},
		// reload at 186/32.5
	},

	deployed_reload_empty = {
		-- {time = 0, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToClip},
		{time = 2/32.5, sound = "PB_INS2_UNIVERSAL_LEANIN"},
		{time = 32/32.5, sound = "PB_INS2_M249_BOLTBACK"},
		{time = 42/32.5, sound = "PB_INS2_M249_BOLTRELEASE"},
		{time = 77/32.5, sound = "PB_INS2_M249_ARMMOVEMENT2"},
		{time = 91/32.5, sound = "PB_INS2_M249_COVEROPEN"},
		{time = 111/32.5, sound = "PB_INS2_M249_ARMMOVEMENT1"},
		{time = 129/32.5, sound = "PB_INS2_M249_MAGOUT"},
		{time = 151/32.5, sound = "PB_INS2_M249_FETCHMAG"},
		-- {time = 161/32.5, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToReserve},
		{time = 195/32.5, sound = "PB_INS2_M249_ARMMOVEMENT2"},
		{time = 201/32.5, sound = "PB_INS2_M249_MAGHIT"},
		{time = 217/32.5, sound = "PB_INS2_M249_MAGIN"},
		{time = 234/32.5, sound = "PB_INS2_M249_BULLETJINGLE"},
		{time = 249/32.5, sound = "PB_INS2_M249_BELTALIGN"},
		{time = 273/32.5, sound = "PB_INS2_M249_ARMMOVEMENT1"},
		{time = 283/32.5, sound = "PB_INS2_M249_COVERCLOSE"},
		{time = 324/32.5, sound = "PB_INS2_M249_SHOULDER"},
		// reload at 150/32.5
	},

	deployed_iron_idle = {
		{time = 0, sound = "Universal.IronIdle"},
	},

	deployed_iron_fire_1 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	deployed_iron_fire_2 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	deployed_iron_dryfire = {
		{time = 0, sound = "PB_INS2_M249_EMPTY"},
	},
}
