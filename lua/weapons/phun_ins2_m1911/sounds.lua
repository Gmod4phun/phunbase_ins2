PHUNBASE:addFireSound("PB_INS2_M1911_FIRE", "weapons/m1911/m1911_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_M1911_FIRE_SUPPRESSED", "weapons/m1911/m1911_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_M1911_BOLTBACK", "weapons/m1911/handling/m1911_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_M1911_BOLTRELEASE", "weapons/m1911/handling/m1911_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_M1911_EMPTY", "weapons/m1911/handling/m1911_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_M1911_MAGHIT", "weapons/m1911/handling/m1911_maghit.wav")
PHUNBASE:addReloadSound("PB_INS2_M1911_MAGIN", "weapons/m1911/handling/m1911_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_M1911_MAGOUT", "weapons/m1911/handling/m1911_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_M1911_MAGRELEASE", "weapons/m1911/handling/m1911_magrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_M1911_SAFETY", "weapons/m1911/handling/m1911_safety.wav")

SWEP.FireSound = "PB_INS2_M1911_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_M1911_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_DRAW"},
		{time = 9/30, sound = "PB_INS2_M1911_BOLTBACK"},
		{time = 19/30, sound = "PB_INS2_M1911_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_HOLSTER"},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_M1911_EMPTY"},
	},

	base_reload = {
		{time = 0, sound = "PB_INS2_M1911_MAGRELEASE"},
		{time = 7/30, sound = "PB_INS2_M1911_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_M1911_MAGIN"},
		{time = 58/30, sound = "PB_INS2_M1911_MAGHIT"},
	},

	base_reload_extmag = {
		{time = 0, sound = "PB_INS2_M1911_MAGRELEASE"},
		{time = 7/30, sound = "PB_INS2_M1911_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_M1911_MAGIN"},
		{time = 58/30, sound = "PB_INS2_M1911_MAGHIT"},
	},

	base_reloadempty = {
		{time = 0, sound = "PB_INS2_M1911_MAGRELEASE"},
		{time = 7/30, sound = "PB_INS2_M1911_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_M1911_MAGIN"},
		{time = 58/30, sound = "PB_INS2_M1911_MAGHIT"},
		{time = 71/30, sound = "PB_INS2_M1911_BOLTRELEASE"},
	},

	base_reloadempty_extmag = {
		{time = 0, sound = "PB_INS2_M1911_MAGRELEASE"},
		{time = 7/30, sound = "PB_INS2_M1911_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_M1911_MAGIN"},
		{time = 58/30, sound = "PB_INS2_M1911_MAGHIT"},
		{time = 71/30, sound = "PB_INS2_M1911_BOLTRELEASE"},
	},

	empty_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_DRAW"},
	},

	empty_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_HOLSTER"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_M1911_EMPTY"},
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
