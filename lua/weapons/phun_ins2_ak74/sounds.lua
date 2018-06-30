PHUNBASE:addFireSound("PB_INS2_AK74_FIRE", "weapons/ak74/ak74_fp.wav", 1, 100, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_AK74_FIRE_SUPPRESSED", "weapons/ak74/ak74_suppressed_fp.wav", 1, 70, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_AK74_BOLTBACK", "weapons/ak74/handling/ak74_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_AK74_BOLTRELEASE", "weapons/ak74/handling/ak74_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_AK74_EMPTY", "weapons/ak74/handling/ak74_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_AK74_FIRESELECT", {"weapons/ak74/handling/ak74_fireselect_1.wav", "weapons/ak74/handling/ak74_fireselect_2.wav"})
PHUNBASE:addReloadSound("PB_INS2_AK74_MAGIN", "weapons/ak74/handling/ak74_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_AK74_MAGOUT", "weapons/ak74/handling/ak74_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_AK74_MAGOUTRATTLE", "weapons/ak74/handling/ak74_magout_rattle.wav")
PHUNBASE:addReloadSound("PB_INS2_AK74_MAGRELEASE", "weapons/ak74/handling/ak74_magrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_AK74_RATTLE", "weapons/ak74/handling/ak74_rattle.wav")

SWEP.FireSound = "PB_INS2_AK74_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_AK74_FIRE_SUPPRESSED"

SWEP.GrenadeLauncherFireSound = "PB_INS2_GP30_FIRE"

SWEP.Sounds = {
	base_ready = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
        {time = 18/30, sound = "PB_INS2_AK74_FIRESELECT"},
		{time = 31/30, sound = "PB_INS2_AK74_BOLTBACK"},
		{time = 39/30, sound = "PB_INS2_AK74_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_crawl = {
		{time = 16/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 37/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	base_dryfire = {
		{time = 0/30, sound = "PB_INS2_AK74_EMPTY"},
	},

	base_fireselect = {
		{time = 12/30, sound = "PB_INS2_AK74_FIRESELECT"},
	},

	base_reload = {
		{time = 16/30, sound = "PB_INS2_AK74_MAGRELEASE"},
		{time = 19/30, sound = "PB_INS2_AK74_MAGOUT"},
        {time = 21/30, sound = "PB_INS2_AK74_MAGOUTRATTLE"},
		{time = 60/30, sound = "PB_INS2_AK74_MAGIN"},
		{time = 86/30, sound = "PB_INS2_AK74_RATTLE"},
	},

	base_reloadempty = {
		{time = 16/30, sound = "PB_INS2_AK74_MAGRELEASE"},
		{time = 19/30, sound = "PB_INS2_AK74_MAGOUT"},
        {time = 21/30, sound = "PB_INS2_AK74_MAGOUTRATTLE"},
		{time = 60/30, sound = "PB_INS2_AK74_MAGIN"},
		{time = 90/30, sound = "PB_INS2_AK74_RATTLE"},
		{time = 104/30, sound = "PB_INS2_AK74_BOLTBACK"},
		{time = 110/30, sound = "PB_INS2_AK74_BOLTRELEASE"},
	},

	iron_dryfire = {
		{time = 0/30, sound = "PB_INS2_AK74_EMPTY"},
	},

	iron_fireselect = {
		{time = 12/30, sound = "PB_INS2_AK74_FIRESELECT"},
	},

	foregrip_ready = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 18/30, sound = "PB_INS2_AK74_FIRESELECT"},
		{time = 31/30, sound = "PB_INS2_AK74_BOLTBACK"},
		{time = 39/30, sound = "PB_INS2_AK74_BOLTRELEASE"},
	},

	foregrip_draw = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	foregrip_holster = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	foregrip_crawl = {
		{time = 16/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 37/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	foregrip_dryfire = {
		{time = 0/30, sound = "PB_INS2_AK74_EMPTY"},
	},

	foregrip_fireselect = {
		{time = 12/30, sound = "PB_INS2_AK74_FIRESELECT"},
	},

	foergrip_iron_dryfire = {
		{time = 0/30, sound = "PB_INS2_AK74_EMPTY"},
	},

	foregrip_iron_fireselect = {
		{time = 12/30, sound = "PB_INS2_AK74_FIRESELECT"},
	},

	foregrip_reload = {
		{time = 16/30, sound = "PB_INS2_AK74_MAGRELEASE"},
		{time = 19/30, sound = "PB_INS2_AK74_MAGOUT"},
		{time = 21/30, sound = "PB_INS2_AK74_MAGOUTRATTLE"},
		{time = 60/30, sound = "PB_INS2_AK74_MAGIN"},
		{time = 86/30, sound = "PB_INS2_AK74_RATTLE"},
	},

	foregrip_reloadempty = {
		{time = 16/30, sound = "PB_INS2_AK74_MAGRELEASE"},
		{time = 19/30, sound = "PB_INS2_AK74_MAGOUT"},
		{time = 21/30, sound = "PB_INS2_AK74_MAGOUTRATTLE"},
		{time = 60/30, sound = "PB_INS2_AK74_MAGIN"},
		{time = 90/30, sound = "PB_INS2_AK74_RATTLE"},
        {time = 104/30, sound = "PB_INS2_AK74_BOLTBACK"},
		{time = 110/30, sound = "PB_INS2_AK74_BOLTRELEASE"},
	},

	gl_ready = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 18/30, sound = "PB_INS2_AK74_FIRESELECT"},
		{time = 31/30, sound = "PB_INS2_AK74_BOLTBACK"},
		{time = 39/30, sound = "PB_INS2_AK74_BOLTRELEASE"},
	},

	gl_draw = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	gl_holster = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	gl_crawl = {
		{time = 16/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 37/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	gl_dryfire = {
		{time = 0/30, sound = "PB_INS2_AK74_EMPTY"},
	},

	gl_fireselect = {
		{time = 12/30, sound = "PB_INS2_AK74_FIRESELECT"},
	},

	gl_reload = {
		{time = 16/30, sound = "PB_INS2_AK74_MAGRELEASE"},
		{time = 19/30, sound = "PB_INS2_AK74_MAGOUT"},
        {time = 21/30, sound = "PB_INS2_AK74_MAGOUTRATTLE"},
		{time = 60/30, sound = "PB_INS2_AK74_MAGIN"},
		{time = 86/30, sound = "PB_INS2_AK74_RATTLE"},
	},

	gl_reloadempty = {
		{time = 16/30, sound = "PB_INS2_AK74_MAGRELEASE"},
		{time = 19/30, sound = "PB_INS2_AK74_MAGOUT"},
		{time = 21/30, sound = "PB_INS2_AK74_MAGOUTRATTLE"},
		{time = 60/30, sound = "PB_INS2_AK74_MAGIN"},
		{time = 90/30, sound = "PB_INS2_AK74_RATTLE"},
        {time = 104/30, sound = "PB_INS2_AK74_BOLTBACK"},
		{time = 110/30, sound = "PB_INS2_AK74_BOLTRELEASE"},
	},

	gl_iron_dryfire = {
		{time = 0/30, sound = "PB_INS2_AK74_EMPTY"},
	},

	gl_iron_fireselect = {
		{time = 12/30, sound = "PB_INS2_AK74_FIRESELECT"},
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
		{time = 16/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 37/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	glsetup_dryfire = {
		{time = 0/30, sound = "PB_INS2_GP30_EMPTY"},
	},

	glsetup_reload = {
		{time = 0/30, sound = "PB_INS2_GL_BEGINRELOAD"},
		{time = 41/30, sound = "PB_INS2_GP30_INSERTGRENADE"},
		-- {time = 32/30, sound = "", callback = m203},
		{time = 50/30, sound = "PB_INS2_GP30_INSERTGRENADECLICK"},
		-- {time = 44/30, sound = "PB_INS2_m203_GrenadeDrop"},
        {time = 70/30, sound = "PB_INS2_AK74_RATTLE"},
	},

	-- glsetup_iron_fire = {
		-- {time = 0/30, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	-- },

	glsetup_iron_dryfire = {
		{time = 0/30, sound = "PB_INS2_GP30_EMPTY"},
	}
}
