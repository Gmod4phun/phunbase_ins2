PHUNBASE:addFireSound("PB_INS2_MK18_FIRE", "weapons/mk18/mk18_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_MK18_FIRE_SUPPRESSED", "weapons/mk18/mk18_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_MK18_BOLTBACK", "weapons/mk18/handling/mk18_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_MK18_BOLTRELEASE", "weapons/mk18/handling/mk18_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_MK18_EMPTY", "weapons/mk18/handling/mk18_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_MK18_FIRESELECT", "weapons/mk18/handling/mk18_fireselect.wav")
PHUNBASE:addReloadSound("PB_INS2_MK18_HIT", "weapons/mk18/handling/mk18_hit.wav")
PHUNBASE:addReloadSound("PB_INS2_MK18_MAGIN", "weapons/mk18/handling/mk18_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_MK18_MAGOUT", "weapons/mk18/handling/mk18_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_MK18_MAGRELEASE", "weapons/mk18/handling/mk18_magrelease.wav")

SWEP.FireSound = "PB_INS2_MK18_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_MK18_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 23/30, sound = "PB_INS2_MK18_BOLTBACK"},
		{time = 36/30, sound = "PB_INS2_MK18_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	base_dryfire = {
		{time = 0/30, sound = "PB_INS2_MK18_EMPTY"},
	},

	base_fireselect = {
		{time = 8/30, sound = "PB_INS2_MK18_FIRESELECT"},
	},

	base_reload = {
		{time = 13/30, sound = "PB_INS2_MK18_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_MK18_MAGOUT"},
		{time = 60/30, sound = "PB_INS2_MK18_MAGIN"},
		{time = 79/30, sound = "PB_INS2_MK18_HIT"},
	},

	base_reloadempty = {
		{time = 13/30, sound = "PB_INS2_MK18_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_MK18_MAGOUT"},
		{time = 64/30, sound = "PB_INS2_MK18_MAGIN"},
		{time = 83/30, sound = "PB_INS2_MK18_HIT"},
		{time = 109/30, sound = "PB_INS2_MK18_BOLTRELEASE"},
	},

	iron_dryfire = {
		{time = 0/30, sound = "PB_INS2_MK18_EMPTY"},
	},

	iron_fireselect = {
		{time = 12/30, sound = "PB_INS2_MK18_FIRESELECT"},
	},

	foregrip_ready = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 23/30, sound = "PB_INS2_MK18_BOLTBACK"},
		{time = 36/30, sound = "PB_INS2_MK18_BOLTRELEASE"},
	},

	foregrip_draw = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	foregrip_holster = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	foregrip_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	foregrip_dryfire = {
		{time = 0/30, sound = "PB_INS2_MK18_EMPTY"},
	},

	foregrip_fireselect = {
		{time = 8/30, sound = "PB_INS2_MK18_FIRESELECT"},
	},

	foregrip_iron_dryfire = {
		{time = 0/30, sound = "PB_INS2_MK18_EMPTY"},
	},

	foregrip_iron_fireselect = {
		{time = 12/30, sound = "PB_INS2_MK18_FIRESELECT"},
	},

	foregrip_reload = {
		{time = 13/30, sound = "PB_INS2_MK18_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_MK18_MAGOUT"},
		{time = 60/30, sound = "PB_INS2_MK18_MAGIN"},
		{time = 79/30, sound = "PB_INS2_MK18_HIT"},
	},

	foregrip_reloadempty = {
		{time = 13/30, sound = "PB_INS2_MK18_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_MK18_MAGOUT"},
		{time = 64/30, sound = "PB_INS2_MK18_MAGIN"},
		{time = 83/30, sound = "PB_INS2_MK18_HIT"},
		{time = 109/30, sound = "PB_INS2_MK18_BOLTRELEASE"},
	},
}
