PHUNBASE:addFireSound("PB_INS2_UMP45_FIRE", "weapons/ump45/ump45_fp.wav", 1, 105, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_UMP45_FIRE_SUPPRESSED", "weapons/ump45/ump45_suppressed_fp.wav", 1, 75, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_UMP45_BOLTBACK", "weapons/ump45/handling/ump45_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_UMP45_BOLTLOCK", "weapons/ump45/handling/ump45_boltlock.wav")
PHUNBASE:addReloadSound("PB_INS2_UMP45_BOLTRELEASE", "weapons/ump45/handling/ump45_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_UMP45_EMPTY", "weapons/ump45/handling/ump45_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_UMP45_FIRESELECT", "weapons/ump45/handling/ump45_fireselect.wav")
PHUNBASE:addReloadSound("PB_INS2_UMP45_MAGIN", "weapons/ump45/handling/ump45_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_UMP45_MAGOUT", "weapons/ump45/handling/ump45_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_UMP45_MAGRELEASE", "weapons/ump45/handling/ump45_magrelease.wav")


SWEP.FireSound = "PB_INS2_UMP45_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_UMP45_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 12/30, sound = "PB_INS2_UMP45_BOLTLOCK"},
		{time = 13/30, sound = "PB_INS2_UMP45_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_UMP45_EMPTY"},
	},

	base_fireselect = {
		{time = 6/30, sound = "PB_INS2_UMP45_FIRESELECT"},
	},

	base_reload = {
		{time = 19/30, sound = "PB_INS2_UMP45_MAGRELEASE"},
		{time = 24/30, sound = "PB_INS2_UMP45_MAGOUT"},
		{time = 71/30, sound = "PB_INS2_UMP45_MAGIN"},
	},

	base_reloadempty = {
		{time = 12/30, sound = "PB_INS2_UMP45_BOLTBACK"},
		{time = 18/30, sound = "PB_INS2_UMP45_BOLTLOCK"},
		{time = 40/30, sound = "PB_INS2_UMP45_MAGRELEASE"},
		{time = 47/30, sound = "PB_INS2_UMP45_MAGOUT"},
		{time = 93/30, sound = "PB_INS2_UMP45_MAGIN"},
		{time = 112/30, sound = "PB_INS2_UMP45_BOLTLOCK"},
		{time = 113/30, sound = "PB_INS2_UMP45_BOLTRELEASE"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_UMP45_EMPTY"},
	},

	iron_fireselect = {
		{time = 6/30, sound = "PB_INS2_UMP45_FIRESELECT"},
	},
	
	base_crawl = {
		{time = 0/30, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

}
