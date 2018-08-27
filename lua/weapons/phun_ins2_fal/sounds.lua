PHUNBASE:addFireSound("PB_INS2_FNFAL_FIRE", "weapons/fnfal/fnfal_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_FNFAL_FIRE_SUPPRESSED", "weapons/fnfal/fnfal_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_FNFAL_BOLTBACK", "weapons/fnfal/handling/fnfal_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_FNFAL_BOLTRELEASE", "weapons/fnfal/handling/fnfal_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_FNFAL_EMPTY", "weapons/fnfal/handling/fnfal_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_FNFAL_FIRESELECT", "weapons/fnfal/handling/fnfal_fireselect_1.wav")
PHUNBASE:addReloadSound("PB_INS2_FNFAL_MAGIN", "weapons/fnfal/handling/fnfal_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_FNFAL_MAGOUT", "weapons/fnfal/handling/fnfal_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_FNFAL_MAGOUTRATTLE", "weapons/fnfal/handling/fnfal_magout_rattle.wav")
PHUNBASE:addReloadSound("PB_INS2_FNFAL_MAGRELEASE", "weapons/fnfal/handling/fnfal_magrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_FNFAL_RATTLE", "weapons/fnfal/handling/fnfal_rattle.wav")

SWEP.FireSound = "PB_INS2_FNFAL_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_FNFAL_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 20/30, sound = "PB_INS2_FNFAL_BOLTBACK"},
		{time = 31/30, sound = "PB_INS2_FNFAL_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_FNFAL_EMPTY"},
	},

	base_fireselect = {
		{time = 14/30, sound = "PB_INS2_FNFAL_FIRESELECT"},
	},

	base_reload = {
		{time = 17/30, sound = "PB_INS2_FNFAL_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_FNFAL_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_FNFAL_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_FNFAL_MAGIN"},
		{time = 80/30, sound = "PB_INS2_FNFAL_RATTLE"},
	},

	base_reloadempty = {
		{time = 17/30, sound = "PB_INS2_FNFAL_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_FNFAL_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_FNFAL_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_FNFAL_MAGIN"},
		{time = 80/30, sound = "PB_INS2_FNFAL_RATTLE"},
		{time = 92/30, sound = "PB_INS2_FNFAL_BOLTBACK"},
		{time = 104/30, sound = "PB_INS2_FNFAL_BOLTRELEASE"},
	},

	base_reload_ext = {
		{time = 17/30, sound = "PB_INS2_FNFAL_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_FNFAL_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_FNFAL_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_FNFAL_MAGIN"},
		{time = 80/30, sound = "PB_INS2_FNFAL_RATTLE"},
	},

	base_reloadempty_ext = {
		{time = 17/30, sound = "PB_INS2_FNFAL_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_FNFAL_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_FNFAL_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_FNFAL_MAGIN"},
		{time = 80/30, sound = "PB_INS2_FNFAL_RATTLE"},
		{time = 92/30, sound = "PB_INS2_FNFAL_BOLTBACK"},
		{time = 104/30, sound = "PB_INS2_FNFAL_BOLTRELEASE"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_FNFAL_EMPTY"},
	},

	iron_fireselect = {
		{time = 14/30, sound = "PB_INS2_FNFAL_FIRESELECT"},
	},

	foregrip_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 20/30, sound = "PB_INS2_FNFAL_BOLTBACK"},
		{time = 31/30, sound = "PB_INS2_FNFAL_BOLTRELEASE"},
	},

	foregrip_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	foregrip_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	foregrip_dryfire = {
		{time = 0, sound = "PB_INS2_FNFAL_EMPTY"},
	},

	foregrip_fireselect = {
		{time = 14/30, sound = "PB_INS2_FNFAL_FIRESELECT"},
	},

	foregrip_reload = {
		{time = 17/30, sound = "PB_INS2_FNFAL_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_FNFAL_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_FNFAL_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_FNFAL_MAGIN"},
		{time = 84/30, sound = "PB_INS2_FNFAL_RATTLE"},
	},

	foregrip_reloadempty = {
		{time = 17/30, sound = "PB_INS2_FNFAL_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_FNFAL_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_FNFAL_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_FNFAL_MAGIN"},
		{time = 80/30, sound = "PB_INS2_FNFAL_RATTLE"},
		{time = 92/30, sound = "PB_INS2_FNFAL_BOLTBACK"},
		{time = 104/30, sound = "PB_INS2_FNFAL_BOLTRELEASE"},
	},

	foregrip_reload_ext = {
		{time = 17/30, sound = "PB_INS2_FNFAL_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_FNFAL_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_FNFAL_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_FNFAL_MAGIN"},
		{time = 84/30, sound = "PB_INS2_FNFAL_RATTLE"},
	},

	foregrip_reloadempty_ext = {
		{time = 17/30, sound = "PB_INS2_FNFAL_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_FNFAL_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_FNFAL_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_FNFAL_MAGIN"},
		{time = 80/30, sound = "PB_INS2_FNFAL_RATTLE"},
		{time = 92/30, sound = "PB_INS2_FNFAL_BOLTBACK"},
		{time = 104/30, sound = "PB_INS2_FNFAL_BOLTRELEASE"},
	},

	foregrip_iron_dryfire_b = {
		{time = 0, sound = "PB_INS2_FNFAL_EMPTY"},
	},

	foregrip_iron_fireselect_b = {
		{time = 14/30, sound = "PB_INS2_FNFAL_FIRESELECT"},
	},

	deployed_in = {
		{time = 16/30, sound = "PB_INS2_UNIVERSAL_BIPOD_DEPLOYSTART"},
		{time = 23/30, sound = "PB_INS2_UNIVERSAL_BIPOD_DEPLOYEND"},
	},

	deployed_out = {
		{time = 7/30, sound = "PB_INS2_UNIVERSAL_BIPOD_RETRACT"},
	},

	deployed_dryfire = {
		{time = 0, sound = "PB_INS2_FNFAL_EMPTY"},
	},

	deployed_fireselect = {
		{time = 8/24, sound = "PB_INS2_FNFAL_FIRESELECT"},
	},

	deployed_iron_dryfire = {
		{time = 0, sound = "PB_INS2_FNFAL_EMPTY"},
	},

	deployed_iron_fireselect = {
		{time = 8/24, sound = "PB_INS2_FNFAL_FIRESELECT"},
	},

	deployed_reload = {
		{time = 17/30, sound = "PB_INS2_FNFAL_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_FNFAL_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_FNFAL_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_FNFAL_MAGIN"},
		{time = 84/30, sound = "PB_INS2_FNFAL_RATTLE"},
	},

	deployed_reloadempty = {
		{time = 17/30, sound = "PB_INS2_FNFAL_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_FNFAL_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_FNFAL_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_FNFAL_MAGIN"},
		{time = 80/30, sound = "PB_INS2_FNFAL_RATTLE"},
		{time = 92/30, sound = "PB_INS2_FNFAL_BOLTBACK"},
		{time = 104/30, sound = "PB_INS2_FNFAL_BOLTRELEASE"},
	},

	deployed_reload_ext = {
		{time = 17/30, sound = "PB_INS2_FNFAL_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_FNFAL_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_FNFAL_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_FNFAL_MAGIN"},
		{time = 84/30, sound = "PB_INS2_FNFAL_RATTLE"},
	},

	deployed_reloadempty_ext = {
		{time = 17/30, sound = "PB_INS2_FNFAL_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_FNFAL_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_FNFAL_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_FNFAL_MAGIN"},
		{time = 80/30, sound = "PB_INS2_FNFAL_RATTLE"},
		{time = 92/30, sound = "PB_INS2_FNFAL_BOLTBACK"},
		{time = 104/30, sound = "PB_INS2_FNFAL_BOLTRELEASE"},
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
