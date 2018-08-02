PHUNBASE:addFireSound("PB_INS2_GALIL_FIRE", "weapons/galil/galil_fp.wav", 1, 100, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_GALIL_FIRE_SUPPRESSED", "weapons/galil/galil_suppressed_fp.wav", 1, 70, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_GALIL_BOLTBACK", "weapons/galil/handling/galil_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_GALIL_BOLTRELEASE", "weapons/galil/handling/galil_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_GALIL_DRUM_MAGFETCH", "weapons/galil/handling/galil_drum_mag_fetch.wav")
PHUNBASE:addReloadSound("PB_INS2_GALIL_DRUM_MAGHIT", "weapons/galil/handling/galil_drum_maghit.wav")
PHUNBASE:addReloadSound("PB_INS2_GALIL_DRUM_MAGIN", "weapons/galil/handling/galil_drum_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_GALIL_DRUM_MAGOUT", "weapons/galil/handling/galil_drum_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_GALIL_DRUM_MAGOUTRATTLE", "weapons/galil/handling/galil_drum_magout_rattle.wav")
PHUNBASE:addReloadSound("PB_INS2_GALIL_EMPTY", "weapons/galil/handling/galil_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_GALIL_FIRESELECT", "weapons/galil/handling/galil_fireselect_1.wav")
PHUNBASE:addReloadSound("PB_INS2_GALIL_MAGIN", "weapons/galil/handling/galil_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_GALIL_MAGOUT", "weapons/galil/handling/galil_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_GALIL_MAGRELEASE", "weapons/galil/handling/galil_magrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_GALIL_RATTLE", "weapons/galil/handling/galil_rattle.wav")

SWEP.FireSound = "PB_INS2_GALIL_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_GALIL_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 20/30, sound = "PB_INS2_GALIL_FIRESELECT"},
		{time = 39/30, sound = "PB_INS2_GALIL_BOLTBACK"},
		{time = 48/30, sound = "PB_INS2_GALIL_BOLTRELEASE"},
		{time = 60/30, sound = "PB_INS2_UNIVERSAL_LEANIN"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_crawl = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_GALIL_EMPTY"},
	},

	base_fireselect = {
		{time = 13/30, sound = "PB_INS2_GALIL_FIRESELECT"},
	},

	base_reload = {
		{time = 19/32.2, sound = "PB_INS2_GALIL_MAGRELEASE"},
		{time = 22/32.2, sound = "PB_INS2_GALIL_MAGOUT"},
		{time = 71/32.2, sound = "PB_INS2_GALIL_MAGIN"},
		{time = 99/32.2, sound = "PB_INS2_GALIL_RATTLE"},
	},

	base_reloadempty = {
		{time = 19/32.2, sound = "PB_INS2_GALIL_MAGRELEASE"},
		{time = 22/32.2, sound = "PB_INS2_GALIL_MAGOUT"},
		{time = 71/32.2, sound = "PB_INS2_GALIL_MAGIN"},
		{time = 99/32.2, sound = "PB_INS2_GALIL_RATTLE"},
		{time = 121/32.2, sound = "PB_INS2_GALIL_BOLTBACK"},
		{time = 130/32.2, sound = "PB_INS2_GALIL_BOLTRELEASE"},
	},

	base_reload_drum = {
		{time = 19/31.8, sound = "PB_INS2_GALIL_MAGRELEASE"},
		{time = 22/31.8, sound = "PB_INS2_GALIL_DRUM_MAGOUT"},
		{time = 28/31.8, sound = "PB_INS2_GALIL_DRUM_MAGOUTRATTLE"},
		{time = 30/31.8, sound = "PB_INS2_GALIL_DRUM_MAGFETCH"},
		{time = 105/31.8, sound = "PB_INS2_GALIL_DRUM_MAGIN"},
		{time = 142/31.8, sound = "PB_INS2_GALIL_DRUM_MAGHIT"},
		{time = 161/31.8, sound = "PB_INS2_GALIL_RATTLE"},
	},

	base_reloadempty_drum = {
		{time = 19/31.8, sound = "PB_INS2_GALIL_MAGRELEASE"},
		{time = 22/31.8, sound = "PB_INS2_GALIL_DRUM_MAGOUT"},
		{time = 28/31.8, sound = "PB_INS2_GALIL_DRUM_MAGOUTRATTLE"},
		{time = 30/31.8, sound = "PB_INS2_GALIL_DRUM_MAGFETCH"},
		{time = 105/31.8, sound = "PB_INS2_GALIL_DRUM_MAGIN"},
		{time = 142/31.8, sound = "PB_INS2_GALIL_DRUM_MAGHIT"},
		{time = 161/31.8, sound = "PB_INS2_GALIL_RATTLE"},
		{time = 190/31.8, sound = "PB_INS2_GALIL_BOLTBACK"},
		{time = 201/31.8, sound = "PB_INS2_GALIL_BOLTRELEASE"},
		{time = 223/31.8, sound = "PB_INS2_UNIVERSAL_LEANIN"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_GALIL_EMPTY"},
	},

	iron_fireselect = {
		{time = 13/30, sound = "PB_INS2_GALIL_FIRESELECT"},
	},

	foregrip_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 20/30, sound = "PB_INS2_GALIL_FIRESELECT"},
		{time = 39/30, sound = "PB_INS2_GALIL_BOLTBACK"},
		{time = 48/30, sound = "PB_INS2_GALIL_BOLTRELEASE"},
		{time = 60/30, sound = "PB_INS2_UNIVERSAL_LEANIN"},
	},

	foregrip_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	foregrip_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	foregrip_crawl = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	foregrip_dryfire = {
		{time = 0, sound = "PB_INS2_GALIL_EMPTY"},
	},

	foregrip_fireselect = {
		{time = 13/30, sound = "PB_INS2_GALIL_FIRESELECT"},
	},

	foregrip_reload = {
		{time = 19/32.2, sound = "PB_INS2_GALIL_MAGRELEASE"},
		{time = 22/32.2, sound = "PB_INS2_GALIL_MAGOUT"},
		{time = 71/32.2, sound = "PB_INS2_GALIL_MAGIN"},
		{time = 99/32.2, sound = "PB_INS2_GALIL_RATTLE"},
	},

	foregrip_reloadempty = {
		{time = 19/32.2, sound = "PB_INS2_GALIL_MAGRELEASE"},
		{time = 22/32.2, sound = "PB_INS2_GALIL_MAGOUT"},
		{time = 71/32.2, sound = "PB_INS2_GALIL_MAGIN"},
		{time = 99/32.2, sound = "PB_INS2_GALIL_RATTLE"},
		{time = 121/32.2, sound = "PB_INS2_GALIL_BOLTBACK"},
		{time = 130/32.2, sound = "PB_INS2_GALIL_BOLTRELEASE"},
	},

	foregrip_reload_drum = {
		{time = 19/31.8, sound = "PB_INS2_GALIL_MAGRELEASE"},
		{time = 22/31.8, sound = "PB_INS2_GALIL_DRUM_MAGOUT"},
		{time = 28/31.8, sound = "PB_INS2_GALIL_DRUM_MAGOUTRATTLE"},
		{time = 30/31.8, sound = "PB_INS2_GALIL_DRUM_MAGFETCH"},
		{time = 105/31.8, sound = "PB_INS2_GALIL_DRUM_MAGIN"},
		{time = 142/31.8, sound = "PB_INS2_GALIL_DRUM_MAGHIT"},
		{time = 161/31.8, sound = "PB_INS2_GALIL_RATTLE"},
	},

	foregrip_reloadempty_drum = {
		{time = 19/31.8, sound = "PB_INS2_GALIL_MAGRELEASE"},
		{time = 22/31.8, sound = "PB_INS2_GALIL_DRUM_MAGOUT"},
		{time = 28/31.8, sound = "PB_INS2_GALIL_DRUM_MAGOUTRATTLE"},
		{time = 30/31.8, sound = "PB_INS2_GALIL_DRUM_MAGFETCH"},
		{time = 105/31.8, sound = "PB_INS2_GALIL_DRUM_MAGIN"},
		{time = 142/31.8, sound = "PB_INS2_GALIL_DRUM_MAGHIT"},
		{time = 161/31.8, sound = "PB_INS2_GALIL_RATTLE"},
		{time = 190/31.8, sound = "PB_INS2_GALIL_BOLTBACK"},
		{time = 201/31.8, sound = "PB_INS2_GALIL_BOLTRELEASE"},
		{time = 223/31.8, sound = "PB_INS2_UNIVERSAL_LEANIN"},
	},

	foregrip_iron_dryfire = {
		{time = 0, sound = "PB_INS2_GALIL_EMPTY"},
	},

	foregrip_iron_fireselect = {
		{time = 13/30, sound = "PB_INS2_GALIL_FIRESELECT"},
	},

	deployed_in = {
		{time = 20/37.2, sound = "PB_INS2_UNIVERSAL_BIPOD_DEPLOYSTART"},
		{time = 28/37.2, sound = "PB_INS2_UNIVERSAL_BIPOD_DEPLOYEND"},
	},

	deployed_out = {
		{time = 30/37.5, sound = "PB_INS2_UNIVERSAL_BIPOD_RETRACT"},
	},

	deployed_dryfire = {
		{time = 0, sound = "PB_INS2_GALIL_EMPTY"},
	},

	deployed_fireselect = {
		{time = 13/42, sound = "PB_INS2_GALIL_FIRESELECT"},
	},

	deployed_reload = {
		{time = 19/30, sound = "PB_INS2_GALIL_MAGRELEASE"},
		{time = 22/30, sound = "PB_INS2_GALIL_MAGOUT"},
		{time = 71/30, sound = "PB_INS2_GALIL_MAGIN"},
	},

	deployed_reload_empty = {
		{time = 19/30, sound = "PB_INS2_GALIL_MAGRELEASE"},
		{time = 22/30, sound = "PB_INS2_GALIL_MAGOUT"},
		{time = 71/30, sound = "PB_INS2_GALIL_MAGIN"},
		{time = 100/30, sound = "PB_INS2_GALIL_RATTLE"},
		{time = 121/30, sound = "PB_INS2_GALIL_BOLTBACK"},
		{time = 130/30, sound = "PB_INS2_GALIL_BOLTRELEASE"},
	},

	deployed_reload_drum = {
		{time = 19/31.8, sound = "PB_INS2_GALIL_MAGRELEASE"},
		{time = 22/31.8, sound = "PB_INS2_GALIL_DRUM_MAGOUT"},
		{time = 28/31.8, sound = "PB_INS2_GALIL_DRUM_MAGOUTRATTLE"},
		{time = 30/31.8, sound = "PB_INS2_GALIL_DRUM_MAGFETCH"},
		{time = 105/31.8, sound = "PB_INS2_GALIL_DRUM_MAGIN"},
		{time = 142/31.8, sound = "PB_INS2_GALIL_DRUM_MAGHIT"},
		{time = 160/31.8, sound = "PB_INS2_UNIVERSAL_LEANIN"},
	},

	deployed_reload_empty_drum = {
		{time = 19/31.8, sound = "PB_INS2_GALIL_MAGRELEASE"},
		{time = 22/31.8, sound = "PB_INS2_GALIL_DRUM_MAGOUT"},
		{time = 28/31.8, sound = "PB_INS2_GALIL_DRUM_MAGOUTRATTLE"},
		{time = 30/31.8, sound = "PB_INS2_GALIL_DRUM_MAGFETCH"},
		{time = 105/31.8, sound = "PB_INS2_GALIL_DRUM_MAGIN"},
		{time = 142/31.8, sound = "PB_INS2_GALIL_DRUM_MAGHIT"},
		{time = 157/31.8, sound = "PB_INS2_GALIL_RATTLE"},
		{time = 190/31.8, sound = "PB_INS2_GALIL_BOLTBACK"},
		{time = 201/31.8, sound = "PB_INS2_GALIL_BOLTRELEASE"},
		{time = 223/31.8, sound = "PB_INS2_UNIVERSAL_LEANIN"},
	},

	deployed_iron_dryfire = {
		{time = 0, sound = "PB_INS2_GALIL_EMPTY"},
	},

	deployed_iron_fireselect = {
		{time = 13/30, sound = "PB_INS2_GALIL_FIRESELECT"},
	},
}
