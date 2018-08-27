PHUNBASE:addFireSound("PB_INS2_M1A1_FIRE", "weapons/m1a1/m1a1_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_M1A1_FIRE_SUPPRESSED", "weapons/m1a1/m1a1_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_M1A1_BOLTBACK", "weapons/m1a1/handling/m1a1_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_M1A1_BOLTRELEASE", "weapons/m1a1/handling/m1a1_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_M1A1_EMPTY", "weapons/m1a1/handling/m1a1_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_M1A1_MAGIN", "weapons/m1a1/handling/m1a1_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_M1A1_MAGOUT", "weapons/m1a1/handling/m1a1_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_M1A1_MAGRELEASE", "weapons/m1a1/handling/m1a1_magrelease.wav")

SWEP.FireSound = "PB_INS2_M1A1_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_M1A1_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 10/30, sound = "PB_INS2_M1A1_BOLTBACK"},
		{time = 23/30, sound = "PB_INS2_M1A1_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_M1A1_EMPTY"},
	},

	base_reload = {
		{time = 16/30, sound = "PB_INS2_M1A1_MAGRELEASE"},
		{time = 24/30, sound = "PB_INS2_M1A1_MAGOUT"},
		{time = 67/30, sound = "PB_INS2_M1A1_MAGIN"},
	},

	base_reload_ext = {
		{time = 16/30, sound = "PB_INS2_M1A1_MAGRELEASE"},
		{time = 24/30, sound = "PB_INS2_M1A1_MAGOUT"},
		{time = 67/30, sound = "PB_INS2_M1A1_MAGIN"},
	},

	base_reloadempty = {
		{time = 16/30, sound = "PB_INS2_M1A1_MAGRELEASE"},
		{time = 24/30, sound = "PB_INS2_M1A1_MAGOUT"},
		{time = 65/30, sound = "PB_INS2_M1A1_MAGIN"},
		{time = 101/30, sound = "PB_INS2_M1A1_BOLTBACK"},
		{time = 115/30, sound = "PB_INS2_M1A1_BOLTRELEASE"},
	},

	base_reloadempty_ext = {
		{time = 16/30, sound = "PB_INS2_M1A1_MAGRELEASE"},
		{time = 24/30, sound = "PB_INS2_M1A1_MAGOUT"},
		{time = 65/30, sound = "PB_INS2_M1A1_MAGIN"},
		{time = 101/30, sound = "PB_INS2_M1A1_BOLTBACK"},
		{time = 115/30, sound = "PB_INS2_M1A1_BOLTRELEASE"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_M1A1_EMPTY"},
	},

	foregrip_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 10/30, sound = "PB_INS2_M1A1_BOLTBACK"},
		{time = 23/30, sound = "PB_INS2_M1A1_BOLTRELEASE"},
	},

	foregrip_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	foregrip_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	foregrip_dryfire = {
		{time = 0, sound = "PB_INS2_M1A1_EMPTY"},
	},

	foregrip_reload = {
		{time = 16/30, sound = "PB_INS2_M1A1_MAGRELEASE"},
		{time = 24/30, sound = "PB_INS2_M1A1_MAGOUT"},
		{time = 67/30, sound = "PB_INS2_M1A1_MAGIN"},
	},

	foregrip_reload_ext = {
		{time = 16/30, sound = "PB_INS2_M1A1_MAGRELEASE"},
		{time = 24/30, sound = "PB_INS2_M1A1_MAGOUT"},
		{time = 67/30, sound = "PB_INS2_M1A1_MAGIN"},
	},

	foregrip_reloadempty = {
		{time = 16/30, sound = "PB_INS2_M1A1_MAGRELEASE"},
		{time = 24/30, sound = "PB_INS2_M1A1_MAGOUT"},
		{time = 65/30, sound = "PB_INS2_M1A1_MAGIN"},
		{time = 101/30, sound = "PB_INS2_M1A1_BOLTBACK"},
		{time = 115/30, sound = "PB_INS2_M1A1_BOLTRELEASE"},
	},

	foregrip_reloadempty_ext = {
		{time = 16/30, sound = "PB_INS2_M1A1_MAGRELEASE"},
		{time = 24/30, sound = "PB_INS2_M1A1_MAGOUT"},
		{time = 65/30, sound = "PB_INS2_M1A1_MAGIN"},
		{time = 101/30, sound = "PB_INS2_M1A1_BOLTBACK"},
		{time = 115/30, sound = "PB_INS2_M1A1_BOLTRELEASE"},
	},

	foregrip_iron_dryfire = {
		{time = 0, sound = "PB_INS2_M1A1_EMPTY"},
	},
	
	base_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	foregrip_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},
}
