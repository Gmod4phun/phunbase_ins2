PHUNBASE:addFireSound("PB_INS2_M9_FIRE", "weapons/m9/m9_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_M9_FIRE_SUPPRESSED", "weapons/m9/m9_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_M9_BOLTBACK", "weapons/m9/handling/m9_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_M9_BOLTRELEASE", "weapons/m9/handling/m9_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_M9_EMPTY", "weapons/m9/handling/m9_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_M9_MAGHIT", "weapons/m9/handling/m9_maghit.wav")
PHUNBASE:addReloadSound("PB_INS2_M9_MAGIN", "weapons/m9/handling/m9_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_M9_MAGOUT", "weapons/m9/handling/m9_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_M9_MAGRELEASE", "weapons/m9/handling/m9_magrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_M9_SAFETY", "weapons/m9/handling/m9_safety.wav")

SWEP.FireSound = "PB_INS2_M9_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_M9_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_PISTOL_DRAW"},
		{time = 4/30, sound = "PB_INS2_M9_SAFETY"},
		{time = 9/30, sound = "PB_INS2_M9_BOLTBACK"},
		{time = 19/30, sound = "PB_INS2_M9_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_PISTOL_DRAW"},
	},

	base_holster = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_PISTOL_HOLSTER"},
	},

	base_dryfire = {
		{time = 0/30, sound = "PB_INS2_M9_EMPTY"},
	},

	base_reload = {
		{time = 0/30, sound = "PB_INS2_M9_MAGRELEASE"},
		{time = 7/30, sound = "PB_INS2_M9_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_M9_MAGIN"},
		{time = 58/30, sound = "PB_INS2_M9_MAGHIT"},
	},

	base_reloadempty = {
		{time = 0/30, sound = "PB_INS2_M9_MAGRELEASE"},
		{time = 7/30, sound = "PB_INS2_M9_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_M9_MAGIN"},
		{time = 58/30, sound = "PB_INS2_M9_MAGHIT"},
		{time = 71/30, sound = "PB_INS2_M9_BOLTRELEASE"},
	},

	empty_draw = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_PISTOL_DRAW"},
	},

	empty_holster = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_PISTOL_HOLSTER"},
	},

	iron_dryfire = {
		{time = 0/30, sound = "PB_INS2_M9_EMPTY"},
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
