PHUNBASE:addFireSound("PB_INS2_MAKAROV_FIRE", "weapons/makarov/makarov_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_MAKAROV_FIRE_SUPPRESSED", "weapons/makarov/makarov_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_MAKAROV_BOLTBACK", "weapons/makarov/handling/makarov_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_MAKAROV_BOLTRELEASE", "weapons/makarov/handling/makarov_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_MAKAROV_EMPTY", "weapons/makarov/handling/makarov_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_MAKAROV_MAGHIT", "weapons/makarov/handling/makarov_maghit.wav")
PHUNBASE:addReloadSound("PB_INS2_MAKAROV_MAGIN", "weapons/makarov/handling/makarov_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_MAKAROV_MAGOUT", "weapons/makarov/handling/makarov_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_MAKAROV_MAGRELEASE", "weapons/makarov/handling/makarov_magrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_MAKAROV_SAFETY", "weapons/makarov/handling/makarov_safety.wav")

SWEP.FireSound = "PB_INS2_MAKAROV_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_MAKAROV_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_DRAW"},
		{time = 4/30, sound = "PB_INS2_MAKAROV_SAFETY"},
		{time = 9/30, sound = "PB_INS2_MAKAROV_BOLTBACK"},
		{time = 19/30, sound = "PB_INS2_MAKAROV_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_HOLSTER"},
	},

	base_dryfire = {
		{time = 0/30, sound = "PB_INS2_MAKAROV_EMPTY"},
	},

	base_reload = {
		{time = 0/30, sound = "PB_INS2_MAKAROV_MAGRELEASE"},
		{time = 7/30, sound = "PB_INS2_MAKAROV_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_MAKAROV_MAGIN"},
		{time = 58/30, sound = "PB_INS2_MAKAROV_MAGHIT"},
	},

	base_reload_extmag = {
		{time = 0/30, sound = "PB_INS2_MAKAROV_MAGRELEASE"},
		{time = 7/30, sound = "PB_INS2_MAKAROV_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_MAKAROV_MAGIN"},
		{time = 58/30, sound = "PB_INS2_MAKAROV_MAGHIT"},
	},

	base_reloadempty = {
		{time = 0/30, sound = "PB_INS2_MAKAROV_MAGRELEASE"},
		{time = 7/30, sound = "PB_INS2_MAKAROV_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_MAKAROV_MAGIN"},
		{time = 58/30, sound = "PB_INS2_MAKAROV_MAGHIT"},
		{time = 71/30, sound = "PB_INS2_MAKAROV_BOLTRELEASE"},
	},

	base_reloadempty_extmag = {
		{time = 0/30, sound = "PB_INS2_MAKAROV_MAGRELEASE"},
		{time = 7/30, sound = "PB_INS2_MAKAROV_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_MAKAROV_MAGIN"},
		{time = 58/30, sound = "PB_INS2_MAKAROV_MAGHIT"},
		{time = 71/30, sound = "PB_INS2_MAKAROV_BOLTRELEASE"},
	},

	empty_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_DRAW"},
	},

	empty_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_PISTOL_HOLSTER"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_MAKAROV_EMPTY"},
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
