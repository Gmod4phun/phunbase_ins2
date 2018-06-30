PHUNBASE:addFireSound("PB_INS2_M4A1_FIRE", "weapons/m4a1/m4a1_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_M4A1_FIRE_SUPPRESSED", "weapons/m4a1/m4a1_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_M4A1_BOLTBACK", "weapons/m4a1/handling/m4a1_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_M4A1_BOLTRELEASE", "weapons/m4a1/handling/m4a1_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_M4A1_EMPTY", "weapons/m4a1/handling/m4a1_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_M4A1_FIRESELECT", "weapons/m4a1/handling/m4a1_fireselect.wav")
PHUNBASE:addReloadSound("PB_INS2_M4A1_HIT", "weapons/m4a1/handling/m4a1_hit.wav")
PHUNBASE:addReloadSound("PB_INS2_M4A1_MAGHITRELEASE", "weapons/m4a1/handling/m4a1_maghitrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_M4A1_MAGIN", "weapons/m4a1/handling/m4a1_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_M4A1_MAGOUT", "weapons/m4a1/handling/m4a1_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_M4A1_MAGRELEASE", "weapons/m4a1/handling/m4a1_magrelease.wav")

SWEP.FireSound = "PB_INS2_M4A1_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_M4A1_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 23/30, sound = "PB_INS2_M4A1_BOLTBACK"},
		{time = 36/30, sound = "PB_INS2_M4A1_BOLTRELEASE"},
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
		{time = 0/30, sound = "PB_INS2_M4A1_EMPTY"},
	},

	base_fireselect = {
		{time = 8/30, sound = "PB_INS2_M4A1_FIRESELECT"},
	},

	base_reload = {
		{time = 13/30, sound = "PB_INS2_M4A1_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_M4A1_MAGOUT"},
		{time = 60/30, sound = "PB_INS2_M4A1_MAGIN"},
		{time = 79/30, sound = "PB_INS2_M4A1_HIT"},
	},

	base_reloadempty = {
		{time = 13/30, sound = "PB_INS2_M4A1_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_M4A1_MAGOUT"},
		{time = 64/30, sound = "PB_INS2_M4A1_MAGIN"},
		{time = 83/30, sound = "PB_INS2_M4A1_HIT"},
		{time = 109/30, sound = "PB_INS2_M4A1_BOLTRELEASE"},
	},

	iron_dryfire = {
		{time = 0/30, sound = "PB_INS2_M4A1_EMPTY"},
	},

	iron_fireselect = {
		{time = 12/30, sound = "PB_INS2_M4A1_FIRESELECT"},
	},

	foregrip_ready = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 23/30, sound = "PB_INS2_M4A1_BOLTBACK"},
		{time = 36/30, sound = "PB_INS2_M4A1_BOLTRELEASE"},
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
		{time = 0/30, sound = "PB_INS2_M4A1_EMPTY"},
	},

	foregrip_fireselect = {
		{time = 8/30, sound = "PB_INS2_M4A1_FIRESELECT"},
	},

	foregrip_iron_dryfire = {
		{time = 0/30, sound = "PB_INS2_M4A1_EMPTY"},
	},

	foregrip_iron_fireselect = {
		{time = 12/30, sound = "PB_INS2_M4A1_FIRESELECT"},
	},

	foregrip_reload = {
		{time = 13/30, sound = "PB_INS2_M4A1_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_M4A1_MAGOUT"},
		{time = 60/30, sound = "PB_INS2_M4A1_MAGIN"},
		{time = 79/30, sound = "PB_INS2_M4A1_HIT"},
	},

	foregrip_reloadempty = {
		{time = 13/30, sound = "PB_INS2_M4A1_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_M4A1_MAGOUT"},
		{time = 64/30, sound = "PB_INS2_M4A1_MAGIN"},
		{time = 83/30, sound = "PB_INS2_M4A1_HIT"},
		{time = 109/30, sound = "PB_INS2_M4A1_BOLTRELEASE"},
	},

	gl_ready = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 23/30, sound = "PB_INS2_M4A1_BOLTBACK"},
		{time = 36/30, sound = "PB_INS2_M4A1_BOLTRELEASE"},
	},

	gl_draw = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	gl_holster = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	gl_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	gl_dryfire = {
		{time = 0/30, sound = "PB_INS2_M4A1_EMPTY"},
	},

	gl_fireselect = {
		{time = 8/30, sound = "PB_INS2_M4A1_FIRESELECT"},
	},

	gl_reload = {
		{time = 13/30, sound = "PB_INS2_M4A1_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_M4A1_MAGOUT"},
		{time = 60/30, sound = "PB_INS2_M4A1_MAGIN"},
		{time = 79/30, sound = "PB_INS2_M4A1_HIT"},
	},

	gl_reloadempty = {
		{time = 13/30, sound = "PB_INS2_M4A1_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_M4A1_MAGOUT"},
		{time = 64/30, sound = "PB_INS2_M4A1_MAGIN"},
		{time = 83/30, sound = "PB_INS2_M4A1_HIT"},
		{time = 106/30, sound = "PB_INS2_M4A1_BOLTRELEASE"},
	},

	gl_iron_dryfire = {
		{time = 0/30, sound = "PB_INS2_M4A1_EMPTY"},
	},

	gl_iron_fireselect = {
		{time = 12/30, sound = "PB_INS2_M4A1_FIRESELECT"},
	},

	glsetup_in = {
		{time = 0, sound = "PB_INS2_M203_SELECT"},
	},

	glsetup_out = {
		{time = 0, sound = "PB_INS2_M203_DESELECT"},
	},

	glsetup_ready = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	glsetup_draw = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	glsetup_holster = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	glsetup_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	glsetup_dryfire = {
		{time = 0/30, sound = "PB_INS2_M203_EMPTY"},
	},

	glsetup_reload = {
		{time = 0/30, sound = "PB_INS2_GL_BEGINRELOAD"},
		{time = 23/30, sound = "PB_INS2_M203_OPENBARREL"},
		-- {time = 35/30, sound = "", callback = m203},
        {time = 44/30, sound = "PB_INS2_m203_GrenadeDrop"},
		{time = 57/30, sound = "PB_INS2_M203_INSERTGRENADE"},
		{time = 84/30, sound = "PB_INS2_M203_CLOSEBARREL"},
	},

	glsetup_iron_fire = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	glsetup_iron_dryfire = {
		{time = 0/30, sound = "PB_INS2_M203_EMPTY"},
	}
}
