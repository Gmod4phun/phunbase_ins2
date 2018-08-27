PHUNBASE:addFireSound("PB_INS2_MINI14_FIRE", "weapons/mini14/mini14_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_MINI14_FIRE_SUPPRESSED", "weapons/mini14/mini14_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_MINI14_BOLTBACK", "weapons/mini14/handling/mini14_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_MINI14_BOLTRELEASE", "weapons/mini14/handling/mini14_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_MINI14_EMPTY", "weapons/mini14/handling/mini14_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_MINI14_MAGIN", "weapons/mini14/handling/mini14_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_MINI14_MAGOUT", "weapons/mini14/handling/mini14_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_MINI14_MAGRELEASE", "weapons/mini14/handling/mini14_magrelease.wav")

SWEP.FireSound = "PB_INS2_MINI14_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_MINI14_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 10/30, sound = "PB_INS2_MINI14_BOLTBACK"},
		{time = 23/30, sound = "PB_INS2_MINI14_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_MINI14_EMPTY"},
	},

	base_fireselect = {
		{time = 13/30, sound = "PB_INS2_M14_FIRESELECT"},
	},

	base_reload = {
		{time = 19/30, sound = "PB_INS2_MINI14_MAGRELEASE"},
		{time = 23/30, sound = "PB_INS2_MINI14_MAGOUT"},
		{time = 63/30, sound = "PB_INS2_MINI14_MAGIN"},
	},

	base_reloadempty = {
		{time = 16/30, sound = "PB_INS2_MINI14_MAGRELEASE"},
		{time = 23/30, sound = "PB_INS2_MINI14_MAGOUT"},
		{time = 63/30, sound = "PB_INS2_MINI14_MAGIN"},
		{time = 101/30, sound = "PB_INS2_MINI14_BOLTBACK"},
		{time = 115/30, sound = "PB_INS2_MINI14_BOLTRELEASE"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_MINI14_EMPTY"},
	},

	iron_fireselect = {
		{time = 13/30, sound = "PB_INS2_M14_FIRESELECT"},
	},

	foregrip_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 10/30, sound = "PB_INS2_MINI14_BOLTBACK"},
		{time = 23/30, sound = "PB_INS2_MINI14_BOLTRELEASE"},
	},

	foregrip_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	foregrip_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	foregrip_dryfire = {
		{time = 0, sound = "PB_INS2_MINI14_EMPTY"},
	},

	foregrip_fireselect = {
		{time = 13/30, sound = "PB_INS2_M14_FIRESELECT"},
	},

	foregrip_reload = {
		{time = 19/30, sound = "PB_INS2_MINI14_MAGRELEASE"},
		{time = 23/30, sound = "PB_INS2_MINI14_MAGOUT"},
		{time = 63/30, sound = "PB_INS2_MINI14_MAGIN"},
	},

	foregrip_reloadempty = {
		{time = 16/30, sound = "PB_INS2_MINI14_MAGRELEASE"},
		{time = 23/30, sound = "PB_INS2_MINI14_MAGOUT"},
		{time = 63/30, sound = "PB_INS2_MINI14_MAGIN"},
		{time = 101/30, sound = "PB_INS2_MINI14_BOLTBACK"},
		{time = 115/30, sound = "PB_INS2_MINI14_BOLTRELEASE"},
	},

	foregrip_iron_dryfire_b = {
		{time = 0, sound = "PB_INS2_MINI14_EMPTY"},
	},

	foregrip_iron_fireselect = {
		{time = 13/30, sound = "PB_INS2_M14_FIRESELECT"},
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
