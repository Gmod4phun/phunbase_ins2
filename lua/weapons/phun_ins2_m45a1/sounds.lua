PHUNBASE:addFireSound("PB_INS2_M45A1_FIRE", "weapons/m45/m45_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_M45A1_FIRE_SUPPRESSED", "weapons/m45/m45_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_M45A1_BOLTBACK", "weapons/m45/handling/m45_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_M45A1_BOLTRELEASE", "weapons/m45/handling/m45_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_M45A1_EMPTY", "weapons/m45/handling/m45_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_M45A1_MAGHIT", "weapons/m45/handling/m45_maghit.wav")
PHUNBASE:addReloadSound("PB_INS2_M45A1_MAGIN", "weapons/m45/handling/m45_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_M45A1_MAGOUT", "weapons/m45/handling/m45_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_M45A1_MAGRELEASE", "weapons/m45/handling/m45_magrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_M45A1_SAFETY", "weapons/m45/handling/m45_safety.wav")

SWEP.FireSound = "PB_INS2_M45A1_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_M45A1_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_DRAW"},
		{time = 9/30, sound = "PB_INS2_M45A1_BOLTBACK"},
		{time = 19/30, sound = "PB_INS2_M45A1_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_HOLSTER"},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_M45A1_EMPTY"},
	},

	base_reload = {
		{time = 0, sound = "PB_INS2_M45A1_MAGRELEASE"},
		{time = 7/30, sound = "PB_INS2_M45A1_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_M45A1_MAGIN"},
		{time = 58/30, sound = "PB_INS2_M45A1_MAGHIT"},
	},

	base_reload_extmag = {
		{time = 0, sound = "PB_INS2_M45A1_MAGRELEASE"},
		{time = 7/30, sound = "PB_INS2_M45A1_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_M45A1_MAGIN"},
		{time = 58/30, sound = "PB_INS2_M45A1_MAGHIT"},
	},

	base_reloadempty = {
		{time = 0, sound = "PB_INS2_M45A1_MAGRELEASE"},
		{time = 7/30, sound = "PB_INS2_M45A1_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_M45A1_MAGIN"},
		{time = 58/30, sound = "PB_INS2_M45A1_MAGHIT"},
		{time = 71/30, sound = "PB_INS2_M45A1_BOLTRELEASE"},
	},

	base_reloadempty_extmag = {
		{time = 0, sound = "PB_INS2_M45A1_MAGRELEASE"},
		{time = 7/30, sound = "PB_INS2_M45A1_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_M45A1_MAGIN"},
		{time = 58/30, sound = "PB_INS2_M45A1_MAGHIT"},
		{time = 71/30, sound = "PB_INS2_M45A1_BOLTRELEASE"},
	},

	empty_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_DRAW"},
	},

	empty_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_HOLSTER"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_M45A1_EMPTY"},
	},
	
	base_crawl = {
		{time = 0/35, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/35, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	empty_crawl = {
		{time = 0/35, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/35, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},
}
