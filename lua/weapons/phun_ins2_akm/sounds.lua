PHUNBASE:addFireSound("PB_INS2_AKM_FIRE", "weapons/ak47/ak47_fp.wav", 1, 100, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_AKM_FIRE_SUPPRESSED", "weapons/ak47/ak47_suppressed_fp.wav", 1, 70, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_AKM_BOLTBACK", "weapons/ak47/handling/ak47_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_AKM_BOLTRELEASE", "weapons/ak47/handling/ak47_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_AKM_EMPTY", "weapons/ak47/handling/ak47_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_AKM_FIRESELECT", {
	"weapons/ak47/handling/ak47_fireselect_1.wav",
	"weapons/ak47/handling/ak47_fireselect_2.wav"
})
PHUNBASE:addReloadSound("PB_INS2_AKM_MAGIN", "weapons/ak47/handling/ak47_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_AKM_MAGOUT", "weapons/ak47/handling/ak47_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_AKM_MAGOUTRATTLE", "weapons/ak47/handling/ak47_magout_rattle.wav")
PHUNBASE:addReloadSound("PB_INS2_AKM_MAGRELEASE", "weapons/ak47/handling/ak47_magrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_AKM_RATTLE", "weapons/ak47/handling/ak47_rattle.wav")

SWEP.FireSound = "PB_INS2_AKM_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_AKM_FIRE_SUPPRESSED"

SWEP.GrenadeLauncherFireSound = "PB_INS2_GP30_FIRE"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 12/30, sound = "PB_INS2_AKM_FIRESELECT"},
		{time = 27/30, sound = "PB_INS2_AKM_BOLTBACK"},
		{time = 39/30, sound = "PB_INS2_AKM_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_AKM_EMPTY"},
	},

	base_fireselect = {
		{time = 14/30, sound = "PB_INS2_AKM_FIRESELECT"},
	},

	base_reload = {
		{time = 17/30, sound = "PB_INS2_AKM_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_AKM_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_AKM_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_AKM_MAGIN"},
		{time = 80/30, sound = "PB_INS2_AKM_RATTLE"},
	},

	base_reloadempty = {
		{time = 17/30, sound = "PB_INS2_AKM_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_AKM_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_AKM_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_AKM_MAGIN"},
		{time = 80/30, sound = "PB_INS2_AKM_RATTLE"},
		{time = 98/30, sound = "PB_INS2_AKM_BOLTBACK"},
		{time = 104/30, sound = "PB_INS2_AKM_BOLTRELEASE"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_AKM_EMPTY"},
	},

	iron_fireselect = {
		{time = 14/30, sound = "PB_INS2_AKM_FIRESELECT"},
	},

	foregrip_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 12/30, sound = "PB_INS2_AKM_FIRESELECT"},
		{time = 27/30, sound = "PB_INS2_AKM_BOLTBACK"},
		{time = 39/30, sound = "PB_INS2_AKM_BOLTRELEASE"},
	},

	foregrip_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	foregrip_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	foregrip_dryfire = {
		{time = 0, sound = "PB_INS2_AKM_EMPTY"},
	},

	foregrip_fireselect = {
		{time = 14/30, sound = "PB_INS2_AKM_FIRESELECT"},
	},

	foregrip_reload = {
		{time = 17/30, sound = "PB_INS2_AKM_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_AKM_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_AKM_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_AKM_MAGIN"},
		{time = 84/30, sound = "PB_INS2_AKM_RATTLE"},
	},

	foregrip_reloadempty = {
		{time = 17/30, sound = "PB_INS2_AKM_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_AKM_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_AKM_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_AKM_MAGIN"},
		{time = 84/30, sound = "PB_INS2_AKM_RATTLE"},
		{time = 98/30, sound = "PB_INS2_AKM_BOLTBACK"},
		{time = 104/30, sound = "PB_INS2_AKM_BOLTRELEASE"},
	},

	foregrip_iron_dryfire = {
		{time = 0, sound = "PB_INS2_AKM_EMPTY"},
	},

	foregrip_iron_fireselect = {
		{time = 14/30, sound = "PB_INS2_AKM_FIRESELECT"},
	},

	gl_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 12/30, sound = "PB_INS2_AKM_FIRESELECT"},
		{time = 27/30, sound = "PB_INS2_AKM_BOLTBACK"},
		{time = 39/30, sound = "PB_INS2_AKM_BOLTRELEASE"},
	},

	gl_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	gl_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	gl_dryfire = {
		{time = 0, sound = "PB_INS2_AKM_EMPTY"},
	},

	gl_fireselect = {
		{time = 14/30, sound = "PB_INS2_AKM_FIRESELECT"},
	},

	gl_reload = {
		{time = 17/30, sound = "PB_INS2_AKM_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_AKM_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_AKM_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_AKM_MAGIN"},
		{time = 84/30, sound = "PB_INS2_AKM_RATTLE"},
	},

	gl_reloadempty = {
		{time = 17/30, sound = "PB_INS2_AKM_MAGRELEASE"},
		{time = 20/30, sound = "PB_INS2_AKM_MAGOUT"},
		{time = 29/30, sound = "PB_INS2_AKM_MAGOUTRATTLE"},
		{time = 63/30, sound = "PB_INS2_AKM_MAGIN"},
		{time = 84/30, sound = "PB_INS2_AKM_RATTLE"},
		{time = 98/30, sound = "PB_INS2_AKM_BOLTBACK"},
		{time = 104/30, sound = "PB_INS2_AKM_BOLTRELEASE"},
	},

	gl_iron_dryfire = {
		{time = 0, sound = "PB_INS2_AKM_EMPTY"},
	},

	gl_iron_fireselect = {
		{time = 14/30, sound = "PB_INS2_AKM_FIRESELECT"},
	},

	glsetup_in = {
		{time = 0, sound = "PB_INS2_GP30_SELECT"},
	},

	glsetup_out = {
		{time = 0, sound = "PB_INS2_GP30_DESELECT"},
	},

	glsetup_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	glsetup_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	glsetup_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	glsetup_dryfire = {
		{time = 0, sound = "PB_INS2_GP30_EMPTY"},
	},

	glsetup_reload = {
		{time = 0, sound = "PB_INS2_GL_BEGINRELOAD"},
		{time = 41/31, sound = "PB_INS2_GP30_INSERTGRENADE"},
		{time = 50/31, sound = "PB_INS2_GP30_INSERTGRENADECLICK"},
		{time = 70/31, sound = "PB_INS2_AKM_RATTLE"},
	},
	
	glsetup_iron_dryfire = {
		{time = 0, sound = "PB_INS2_GP30_EMPTY"},
	},
	
	base_crawl = {
		{time = 16/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 37/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	foregrip_crawl = {
		{time = 16/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 37/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	gl_crawl = {
		{time = 16/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 37/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	glsetup_crawl = {
		{time = 16/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 37/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},
}