PHUNBASE:addFireSound("PB_INS2_M14_FIRE", "weapons/m14/m14_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_M14_FIRE_SUPPRESSED", "weapons/m14/m14_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_M14_BOLTBACK", "weapons/m14/handling/m14_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_M14_BOLTRELEASE", "weapons/m14/handling/m14_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_M14_EMPTY", "weapons/m14/handling/m14_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_M14_FIRESELECT", "weapons/m14/handling/m14_fireselect.wav")
PHUNBASE:addReloadSound("PB_INS2_M14_MAGIN", "weapons/m14/handling/m14_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_M14_MAGOUT", "weapons/m14/handling/m14_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_M14_MAGOUTRATTLE", "weapons/m14/handling/m14_magout_rattle.wav")
PHUNBASE:addReloadSound("PB_INS2_M14_MAGRELEASE", "weapons/m14/handling/m14_magrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_M14_RATTLE", "weapons/m14/handling/m14_rattle.wav")


SWEP.FireSound = "PB_INS2_M14_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_M14_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 10/30, sound = "PB_INS2_M14_BOLTBACK"},
		{time = 23/30, sound = "PB_INS2_M14_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_draw_empty = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_holster_empty = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_M14_EMPTY"},
	},

	base_fireselect = {
		{time = 8/30, sound = "PB_INS2_M14_FIRESELECT"},
	},

	base_fireselect_empty = {
		{time = 8/30, sound = "PB_INS2_M14_FIRESELECT"},
	},

	base_reload = {
		{time = 19/30, sound = "PB_INS2_M14_MAGRELEASE"},
		{time = 24/30, sound = "PB_INS2_M14_MAGOUT"},
		{time = 73/30, sound = "PB_INS2_M14_MAGIN"},
	},

	base_reloadempty = {
		{time = 16/30, sound = "PB_INS2_M14_MAGRELEASE"},
		{time = 24/30, sound = "PB_INS2_M14_MAGOUT"},
		{time = 73/30, sound = "PB_INS2_M14_MAGIN"},
		{time = 113/30, sound = "PB_INS2_M14_BOLTBACK"},
		{time = 127/30, sound = "PB_INS2_M14_BOLTRELEASE"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_M14_EMPTY"},
	},

	iron_fireselect = {
		{time = 14/30, sound = "PB_INS2_M14_FIRESELECT"},
	},

	iron_fireselect_empty = {
		{time = 14/30, sound = "PB_INS2_M14_FIRESELECT"},
	},

	foregrip_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 10/30, sound = "PB_INS2_M14_BOLTBACK"},
		{time = 23/30, sound = "PB_INS2_M14_BOLTRELEASE"},
	},

	foregrip_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	foregrip_draw_empty = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	foregrip_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	foregrip_holster_empty = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	foregrip_reload = {
		{time = 16/30, sound = "PB_INS2_M14_MAGRELEASE"},
		{time = 24/30, sound = "PB_INS2_M14_MAGOUT"},
		{time = 73/30, sound = "PB_INS2_M14_MAGIN"},
	},

	foregrip_reloadempty = {
		{time = 16/30, sound = "PB_INS2_M14_MAGRELEASE"},
		{time = 24/30, sound = "PB_INS2_M14_MAGOUT"},
		{time = 73/30, sound = "PB_INS2_M14_MAGIN"},
		{time = 113/30, sound = "PB_INS2_M14_BOLTBACK"},
		{time = 127/30, sound = "PB_INS2_M14_BOLTRELEASE"},
	},

	foregrip_dryfire = {
		{time = 0, sound = "PB_INS2_M14_EMPTY"},
	},

	foregrip_iron_dryfire_b = {
		{time = 0, sound = "PB_INS2_M14_EMPTY"},
	},

	foregrip_iron_fireselect = {
		{time = 14/30, sound = "PB_INS2_M14_FIRESELECT"},
	},

	foregrip_iron_fireselect_empty = {
		{time = 14/30, sound = "PB_INS2_M14_FIRESELECT"},
	},

	foregrip_fireselect_empty = {
		{time = 14/30, sound = "PB_INS2_M14_FIRESELECT"},
	},

	foregrip_fireselect = {
		{time = 14/30, sound = "PB_INS2_M14_FIRESELECT"},
	},

	deployed_in = {
		{time = 16/30, sound = "PB_INS2_UNIVERSAL_BIPOD_DEPLOYSTART"},
		{time = 23/30, sound = "PB_INS2_UNIVERSAL_BIPOD_DEPLOYEND"},
	},

	deployed_in_empty = {
		{time = 16/30, sound = "PB_INS2_UNIVERSAL_BIPOD_DEPLOYSTART"},
		{time = 23/30, sound = "PB_INS2_UNIVERSAL_BIPOD_DEPLOYEND"},
	},

	deployed_out = {
		{time = 7/30, sound = "PB_INS2_UNIVERSAL_BIPOD_RETRACT"},
	},

	deployed_out_empty = {
		{time = 7/30, sound = "PB_INS2_UNIVERSAL_BIPOD_RETRACT"},
	},

	deployed_dryfire = {
		{time = 0, sound = "PB_INS2_M14_EMPTY"},
	},

	deployed_fireselect = {
		{time = 8/24, sound = "PB_INS2_M14_FIRESELECT"},
	},

	deployed_fireselect_empty = {
		{time = 8/24, sound = "PB_INS2_M14_FIRESELECT"},
	},

	deployed_reload_half = {
		{time = 19/30, sound = "PB_INS2_M14_MAGRELEASE"},
		{time = 23/30, sound = "PB_INS2_M14_MAGOUT"},
		{time = 63/30, sound = "PB_INS2_M14_MAGIN"},
	},

	deployed_reload_empty = {
		{time = 16/30, sound = "PB_INS2_M14_MAGRELEASE"},
		{time = 23/30, sound = "PB_INS2_M14_MAGOUT"},
		{time = 63/30, sound = "PB_INS2_M14_MAGIN"},
		{time = 101/30, sound = "PB_INS2_M14_BOLTBACK"},
		{time = 115/30, sound = "PB_INS2_M14_BOLTRELEASE"},
	},

	deployed_iron_dryfire = {
		{time = 0, sound = "PB_INS2_M14_EMPTY"},
	},

	deployed_iron_fireselect = {
		{time = 8/24, sound = "PB_INS2_M14_FIRESELECT"},
	},
	
	deployed_iron_fireselect_empty = {
		{time = 8/24, sound = "PB_INS2_M14_FIRESELECT"},
	},
	
	base_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	base_crawl_empty = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	foregrip_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	foregrip_crawl_empty = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},
}
