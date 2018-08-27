PHUNBASE:addFireSound("PB_INS2_MP40_FIRE", "weapons/mp40/mp40_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_MP40_FIRE_SUPPRESSED", "weapons/mp40/mp40_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_MP40_BOLTBACK", "weapons/mp40/handling/mp40_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_MP40_BOLTLOCK", "weapons/mp40/handling/mp40_boltlock.wav")
PHUNBASE:addReloadSound("PB_INS2_MP40_BOLTUNLOCK", "weapons/mp40/handling/mp40_boltunlock.wav")
PHUNBASE:addReloadSound("PB_INS2_MP40_EMPTY", "weapons/mp40/handling/mp40_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_MP40_FIRESELECT", "weapons/mp40/handling/mp40_fireselect.wav")
PHUNBASE:addReloadSound("PB_INS2_MP40_MAGHIT", "weapons/mp40/handling/mp40_maghit.wav")
PHUNBASE:addReloadSound("PB_INS2_MP40_MAGIN", "weapons/mp40/handling/mp40_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_MP40_MAGOUT", "weapons/mp40/handling/mp40_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_MP40_MAGRELEASE", "weapons/mp40/handling/mp40_magrelease.wav")


SWEP.FireSound = "PB_INS2_MP40_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_MP40_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 26/30, sound = "PB_INS2_MP40_BOLTUNLOCK"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	empty_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	empty_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_MP40_EMPTY"},
	},

	base_reload = {
		{time = 12/30, sound = "PB_INS2_MP40_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_MP40_MAGOUT"},
		{time = 64/30, sound = "PB_INS2_MP40_MAGIN"},
		{time = 66/30, sound = "PB_INS2_MP40_MAGHIT"},
	},

	base_reloadempty = {
		{time = 14/30, sound = "PB_INS2_MP40_BOLTBACK"},
		{time = 20/30, sound = "PB_INS2_MP40_BOLTLOCK"},
		{time = 41/30, sound = "PB_INS2_MP40_MAGRELEASE"},
		{time = 46/30, sound = "PB_INS2_MP40_MAGOUT"},
		{time = 95/30, sound = "PB_INS2_MP40_MAGIN"},
		{time = 97/30, sound = "PB_INS2_MP40_MAGHIT"},
		{time = 114/30, sound = "PB_INS2_MP40_BOLTUNLOCK"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_MP40_EMPTY"},
	},
	
	base_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	empty_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},
}
