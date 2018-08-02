PHUNBASE:addFireSound("PB_INS2_M16A4_FIRE", "weapons/m16a4/m16a4_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_M16A4_FIRE_SUPPRESSED", "weapons/m16a4/m16a4_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_M16A4_BOLTBACK", "weapons/m16a4/handling/m16_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_M16A4_BOLTRELEASE", "weapons/m16a4/handling/m16_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_M16A4_EMPTY", "weapons/m16a4/handling/m16_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_M16A4_FIRESELECT", "weapons/m16a4/handling/m16_fireselect.wav")
PHUNBASE:addReloadSound("PB_INS2_M16A4_HIT", "weapons/m16a4/handling/m16_hit.wav")
PHUNBASE:addReloadSound("PB_INS2_M16A4_MAGHITRELEASE", "weapons/m16a4/handling/m16_maghitrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_M16A4_MAGIN", "weapons/m16a4/handling/m16_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_M16A4_MAGOUT", "weapons/m16a4/handling/m16_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_M16A4_MAGRELEASE", "weapons/m16a4/handling/m16_magrelease.wav")

SWEP.FireSound = "PB_INS2_M16A4_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_M16A4_FIRE_SUPPRESSED"

SWEP.GrenadeLauncherFireSound = "PB_INS2_M203_FIRE"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 23/32, sound = "PB_INS2_M16A4_BOLTBACK"},
		{time = 36/32, sound = "PB_INS2_M16A4_BOLTRELEASE"},
		{time = 55/32, sound = "PB_INS2_UNIVERSAL_LEANIN"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_M16A4_EMPTY"},
	},

	base_fireselect = {
		{time = 8/30, sound = "PB_INS2_M16A4_FIRESELECT"},
	},

	base_reload = {
		{time = 13/30, sound = "PB_INS2_M16A4_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_M16A4_MAGOUT"},
		{time = 60/30, sound = "PB_INS2_M16A4_MAGIN"},
		{time = 79/30, sound = "PB_INS2_M16A4_HIT"},
	},

	base_reloadempty = {
		{time = 13/30, sound = "PB_INS2_M16A4_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_M16A4_MAGOUT"},
		{time = 64/30, sound = "PB_INS2_M16A4_MAGIN"},
		{time = 83/30, sound = "PB_INS2_M16A4_HIT"},
		{time = 109/30, sound = "PB_INS2_M16A4_BOLTRELEASE"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_M16A4_EMPTY"},
	},

	iron_fireselect = {
		{time = 12/30, sound = "PB_INS2_M16A4_FIRESELECT"},
	},

	foregrip_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 23/32, sound = "PB_INS2_M16A4_BOLTBACK"},
		{time = 36/32, sound = "PB_INS2_M16A4_BOLTRELEASE"},
		{time = 55/32, sound = "PB_INS2_UNIVERSAL_LEANIN"},
	},

	foregrip_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	foregrip_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	foregrip_dryfire = {
		{time = 0, sound = "PB_INS2_M16A4_EMPTY"},
	},

	foregrip_fireselect = {
		{time = 8/30, sound = "PB_INS2_M16A4_FIRESELECT"},
	},

	foregrip_iron_dryfire = {
		{time = 0, sound = "PB_INS2_M16A4_EMPTY"},
	},

	foregrip_iron_fireselect = {
		{time = 12/30, sound = "PB_INS2_M16A4_FIRESELECT"},
	},

	foregrip_reload = {
		{time = 13/30, sound = "PB_INS2_M16A4_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_M16A4_MAGOUT"},
		{time = 60/30, sound = "PB_INS2_M16A4_MAGIN"},
		{time = 79/30, sound = "PB_INS2_M16A4_HIT"},
	},

	foregrip_reloadempty = {
		{time = 13/30, sound = "PB_INS2_M16A4_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_M16A4_MAGOUT"},
		{time = 64/30, sound = "PB_INS2_M16A4_MAGIN"},
		{time = 83/30, sound = "PB_INS2_M16A4_HIT"},
		{time = 109/30, sound = "PB_INS2_M16A4_BOLTRELEASE"},
	},

	deployed_in = {
		{time = 15/30, sound = "PB_INS2_UNIVERSAL_BIPOD_DEPLOYSTART"},
		{time = 23/30, sound = "PB_INS2_UNIVERSAL_BIPOD_DEPLOYEND"},
	},

	deployed_out = {
		{time = 25/30, sound = "PB_INS2_UNIVERSAL_BIPOD_RETRACT"},
	},

	deployed_dryfire = {
		{time = 0, sound = "PB_INS2_M16A4_EMPTY"},
	},

	deployed_fireselect = {
		{time = 12/30, sound = "PB_INS2_M16A4_FIRESELECT"},
	},

	deployed_reload_half = {
		{time = 13/30, sound = "PB_INS2_M16A4_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_M16A4_MAGOUT"},
		{time = 64/30, sound = "PB_INS2_M16A4_MAGIN"},
		{time = 83/30, sound = "PB_INS2_M16A4_HIT"},
	},

	deployed_reload_empty = {
		{time = 13/30, sound = "PB_INS2_M16A4_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_M16A4_MAGOUT"},
		{time = 64/30, sound = "PB_INS2_M16A4_MAGIN"},
		{time = 83/30, sound = "PB_INS2_M16A4_HIT"},
		{time = 106/30, sound = "PB_INS2_M16A4_BOLTRELEASE"},
	},

	deployed_iron_dryfire = {
		{time = 0, sound = "PB_INS2_M16A4_EMPTY"},
	},

	deployed_iron_fireselect = {
		{time = 12/30, sound = "PB_INS2_M16A4_FIRESELECT"},
	},

	gl_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 23/32, sound = "PB_INS2_M16A4_BOLTBACK"},
		{time = 36/32, sound = "PB_INS2_M16A4_BOLTRELEASE"},
		{time = 55/32, sound = "PB_INS2_UNIVERSAL_LEANIN"},
	},

	gl_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	gl_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	gl_dryfire = {
		{time = 0, sound = "PB_INS2_M16A4_EMPTY"},
	},

	gl_fireselect = {
		{time = 8/30, sound = "PB_INS2_M16A4_FIRESELECT"},
	},

	gl_reload = {
		{time = 13/30, sound = "PB_INS2_M16A4_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_M16A4_MAGOUT"},
		{time = 60/30, sound = "PB_INS2_M16A4_MAGIN"},
		{time = 79/30, sound = "PB_INS2_M16A4_HIT"},
	},

	gl_reloadempty = {
		{time = 13/30, sound = "PB_INS2_M16A4_MAGRELEASE"},
		{time = 15/30, sound = "PB_INS2_M16A4_MAGOUT"},
		{time = 64/30, sound = "PB_INS2_M16A4_MAGIN"},
		{time = 83/30, sound = "PB_INS2_M16A4_HIT"},
		{time = 106/30, sound = "PB_INS2_M16A4_BOLTRELEASE"},
	},

	gl_iron_dryfire = {
		{time = 0, sound = "PB_INS2_M16A4_EMPTY"},
	},

	gl_iron_fireselect = {
		{time = 12/30, sound = "PB_INS2_M16A4_FIRESELECT"},
	},

	glsetup_in = {
		{time = 0, sound = "PB_INS2_M203_SELECT"},
	},

	glsetup_out = {
		{time = 0, sound = "PB_INS2_M203_DESELECT"},
	},

	glsetup_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	glsetup_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	glsetup_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	glsetup_dryfire = {
		{time = 0, sound = "PB_INS2_M203_EMPTY"},
	},

	glsetup_reload = {
		{time = 0/30, sound = "PB_INS2_GL_BEGINRELOAD"},
		{time = 23/30, sound = "PB_INS2_M203_OPENBARREL"},
		-- {time = 32/30, sound = "", callback = m203},
		{time = 57/30, sound = "PB_INS2_M203_INSERTGRENADE"},
		-- {time = 44/30, sound = "PB_INS2_m203_GrenadeDrop"},
		{time = 84/30, sound = "PB_INS2_M203_CLOSEBARREL"},
	},

	glsetup_iron_dryfire = {
		{time = 0, sound = "PB_INS2_M203_EMPTY"},
	},
	
	base_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	foregrip_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	gl_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	glsetup_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},
}
