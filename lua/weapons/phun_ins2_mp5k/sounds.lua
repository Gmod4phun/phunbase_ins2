PHUNBASE:addFireSound("PB_INS2_MP5K_FIRE", "weapons/mp5k/mp5k_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_MP5K_FIRE_SUPPRESSED", "weapons/mp5k/mp5k_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_MP5K_BOLTBACK", "weapons/mp5k/handling/mp5k_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_MP5K_BOLTLOCK", "weapons/mp5k/handling/mp5k_boltlock.wav")
PHUNBASE:addReloadSound("PB_INS2_MP5K_BOLTRELEASE", "weapons/mp5k/handling/mp5k_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_MP5K_EMPTY", "weapons/mp5k/handling/mp5k_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_MP5K_FIRESELECT", "weapons/mp5k/handling/mp5k_fireselect.wav")
PHUNBASE:addReloadSound("PB_INS2_MP5K_MAGIN", "weapons/mp5k/handling/mp5k_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_MP5K_MAGOUT", "weapons/mp5k/handling/mp5k_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_MP5K_MAGRELEASE", "weapons/mp5k/handling/mp5k_magrelease.wav")


SWEP.FireSound = "PB_INS2_MP5K_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_MP5K_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 12/30, sound = "PB_INS2_MP5K_BOLTLOCK"},
		{time = 13/30, sound = "PB_INS2_MP5K_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_MP5K_EMPTY"},
	},

	base_fireselect = {
		{time = 6/30, sound = "PB_INS2_MP5K_FIRESELECT"},
	},

	base_reload = {
		{time = 19/30, sound = "PB_INS2_MP5K_MAGRELEASE"},
		{time = 24/30, sound = "PB_INS2_MP5K_MAGOUT"},
		{time = 70/30, sound = "PB_INS2_MP5K_MAGIN"},
	},

	base_reloadempty = {
		{time = 12/30, sound = "PB_INS2_MP5K_BOLTBACK"},
		{time = 18/30, sound = "PB_INS2_MP5K_BOLTLOCK"},
		{time = 40/30, sound = "PB_INS2_MP5K_MAGRELEASE"},
		{time = 47/30, sound = "PB_INS2_MP5K_MAGOUT"},
		{time = 94/30, sound = "PB_INS2_MP5K_MAGIN"},
		{time = 113/30, sound = "PB_INS2_MP5K_BOLTLOCK"},
		{time = 114/30, sound = "PB_INS2_MP5K_BOLTRELEASE"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_MP5K_EMPTY"},
	},

	iron_fireselect = {
		{time = 6/30, sound = "PB_INS2_MP5K_FIRESELECT"},
	},
	
	base_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},
}
