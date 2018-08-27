PHUNBASE:addFireSound("PB_INS2_STERLING_FIRE", "weapons/sterling/sterling_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_STERLING_FIRE_SUPPRESSED", "weapons/sterling/sterling_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_STERLING_BOLTBACK", "weapons/sterling/handling/sterling_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_STERLING_BOLTLOCK", "weapons/sterling/handling/sterling_boltlock.wav")
PHUNBASE:addReloadSound("PB_INS2_STERLING_BOLTUNLOCK", "weapons/sterling/handling/sterling_boltunlock.wav")
PHUNBASE:addReloadSound("PB_INS2_STERLING_EMPTY", "weapons/sterling/handling/sterling_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_STERLING_FIRESELECT", "weapons/sterling/handling/sterling_fireselect.wav")
PHUNBASE:addReloadSound("PB_INS2_STERLING_MAGHIT", "weapons/sterling/handling/sterling_maghit.wav")
PHUNBASE:addReloadSound("PB_INS2_STERLING_MAGIN", "weapons/sterling/handling/sterling_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_STERLING_MAGOUT", "weapons/sterling/handling/sterling_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_STERLING_MAGRELEASE", "weapons/sterling/handling/sterling_magrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_STERLING_STOCKOPEN1", "weapons/sterling/handling/sterling_stockopen_01.wav")
PHUNBASE:addReloadSound("PB_INS2_STERLING_STOCKOPEN2", "weapons/sterling/handling/sterling_stockopen_02.wav")

SWEP.FireSound = "PB_INS2_STERLING_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_STERLING_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 10/30, sound = "PB_INS2_STERLING_STOCKOPEN1"},
		{time = 15/30, sound = "PB_INS2_STERLING_STOCKOPEN2"},
		{time = 49/30, sound = "PB_INS2_STERLING_BOLTBACK"},
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

	base_crawl = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	empty_crawl = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_STERLING_EMPTY"},
	},

	base_reload = {
		{time = 12/30, sound = "PB_INS2_STERLING_MAGRELEASE"},
		{time = 14/30, sound = "PB_INS2_STERLING_MAGOUT"},
		{time = 61/30, sound = "PB_INS2_STERLING_MAGIN"},
		{time = 66/30, sound = "PB_INS2_STERLING_MAGHIT"},
	},

	base_reloadempty = {
		{time = 12/30, sound = "PB_INS2_STERLING_MAGRELEASE"},
		{time = 14/30, sound = "PB_INS2_STERLING_MAGOUT"},
		{time = 61/30, sound = "PB_INS2_STERLING_MAGIN"},
		{time = 66/30, sound = "PB_INS2_STERLING_MAGHIT"},
		{time = 92/30, sound = "PB_INS2_STERLING_BOLTBACK"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_STERLING_EMPTY"},
	},
}
