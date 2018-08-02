PHUNBASE:addFireSound("PB_INS2_RPK_FIRE", "weapons/rpk/rpk_fp.wav", 1, 100, CHAN_STATIC)
PHUNBASE:addFireSound("PB_INS2_RPK_FIRE_SUPPRESSED", "weapons/rpk/rpk_suppressed_fp.wav", 1, 70, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_RPK_BIPODDEPLOY", "weapons/rpk/handling/rpk_bipoddeploy.wav")
PHUNBASE:addReloadSound("PB_INS2_RPK_BIPODRETRACT", "weapons/rpk/handling/rpk_bipodretract.wav")
PHUNBASE:addReloadSound("PB_INS2_RPK_BOLTBACK", "weapons/rpk/handling/rpk_boltback.wav")
PHUNBASE:addReloadSound("PB_INS2_RPK_BOLTRELEASE", "weapons/rpk/handling/rpk_boltrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_RPK_DEPLOYGROUNDHIT", "weapons/rpk/handling/rpk_deploygroundhit.wav")
PHUNBASE:addReloadSound("PB_INS2_RPK_EMPTY", "weapons/rpk/handling/rpk_empty.wav")
PHUNBASE:addReloadSound("PB_INS2_RPK_ENDDEPLOYEDRELOAD", "weapons/rpk/handling/rpk_enddeployedreload.wav")
PHUNBASE:addReloadSound("PB_INS2_RPK_FETCHMAG", "weapons/rpk/handling/rpk_fetchmag.wav")
PHUNBASE:addReloadSound("PB_INS2_RPK_FIRESELECT", "weapons/rpk/handling/rpk_fireselect_1.wav")
PHUNBASE:addReloadSound("PB_INS2_RPK_MAGIN", "weapons/rpk/handling/rpk_magin.wav")
PHUNBASE:addReloadSound("PB_INS2_RPK_MAGOUT", "weapons/rpk/handling/rpk_magout.wav")
PHUNBASE:addReloadSound("PB_INS2_RPK_MAGOUTRATTLE", "weapons/rpk/handling/rpk_magout_rattle.wav")
PHUNBASE:addReloadSound("PB_INS2_RPK_MAGRELEASE", "weapons/rpk/handling/rpk_magrelease.wav")
PHUNBASE:addReloadSound("PB_INS2_RPK_RATTLE", "weapons/rpk/handling/rpk_rattle.wav")

SWEP.FireSound = "PB_INS2_RPK_FIRE"
SWEP.FireSoundSuppressed = "PB_INS2_RPK_FIRE_SUPPRESSED"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 14/28, sound = "PB_INS2_RPK_FIRESELECT"},
		{time = 29/28, sound = "PB_INS2_RPK_BOLTBACK"},
		{time = 41/28, sound = "PB_INS2_RPK_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_crawl = {
		{time = 15/30, sound = "PB_INS2_UNIVERSAL_RightCrawl"},
		{time = 38/30, sound = "PB_INS2_UNIVERSAL_LeftCrawl"},
	},

	base_dryfire = {
		{time = 0, sound = "PB_INS2_RPK_EMPTY"},
	},

	base_fireselect = {
		{time = 17/30, sound = "PB_INS2_RPK_FIRESELECT"},
	},

	base_reload = {
		{time = 20/30, sound = "PB_INS2_RPK_MAGRELEASE"},
		{time = 23/30, sound = "PB_INS2_RPK_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_RPK_MAGOUTRATTLE"},
		{time = 50/30, sound = "PB_INS2_RPK_FETCHMAG"},
		{time = 97/30, sound = "PB_INS2_RPK_MAGIN"},
		{time = 122/30, sound = "PB_INS2_RPK_RATTLE"},
	},

	base_reloadempty = {
		{time = 20/30, sound = "PB_INS2_RPK_MAGRELEASE"},
		{time = 23/30, sound = "PB_INS2_RPK_MAGOUT"},
		{time = 35/30, sound = "PB_INS2_RPK_MAGOUTRATTLE"},
		{time = 50/30, sound = "PB_INS2_RPK_FETCHMAG"},
		{time = 97/30, sound = "PB_INS2_RPK_MAGIN"},
		{time = 122/30, sound = "PB_INS2_RPK_RATTLE"},
		{time = 146/30, sound = "PB_INS2_RPK_BOLTBACK"},
		{time = 153/30, sound = "PB_INS2_RPK_BOLTRELEASE"},
	},

	iron_dryfire = {
		{time = 0, sound = "PB_INS2_RPK_EMPTY"},
	},

	iron_fireselect = {
		{time = 17/30, sound = "PB_INS2_RPK_FIRESELECT"},
	},

	deployed_in = {
		{time = 16/30, sound = "PB_INS2_RPK_BIPODDEPLOY"},
	},

	deployed_out = {
		{time = 13/30, sound = "PB_INS2_RPK_MAGOUTRATTLE"},
		{time = 20/30, sound = "PB_INS2_RPK_BIPODRETRACT"},
	},

	deployed_dryfire = {
		{time = 0, sound = "PB_INS2_RPK_EMPTY"},
	},

	deployed_fireselect = {
		{time = 17/30, sound = "PB_INS2_RPK_FIRESELECT"},
	},

	deployed_reload = {
		{time = 16/30, sound = "PB_INS2_RPK_MAGRELEASE"},
		{time = 35/30, sound = "PB_INS2_RPK_MAGOUT"},
		{time = 44/30, sound = "PB_INS2_RPK_MAGOUTRATTLE"},
		{time = 80/30, sound = "PB_INS2_RPK_FETCHMAG"},
		{time = 111/30, sound = "PB_INS2_RPK_MAGIN"},
		{time = 130/30, sound = "PB_INS2_RPK_ENDDEPLOYEDRELOAD"},
	},

	deployed_reloadempty = {
		{time = 16/30, sound = "PB_INS2_RPK_MAGRELEASE"},
		{time = 35/30, sound = "PB_INS2_RPK_MAGOUT"},
		{time = 44/30, sound = "PB_INS2_RPK_MAGOUTRATTLE"},
		{time = 80/30, sound = "PB_INS2_RPK_FETCHMAG"},
		{time = 111/30, sound = "PB_INS2_RPK_MAGIN"},
		{time = 150/30, sound = "PB_INS2_RPK_BOLTBACK"},
		{time = 157/30, sound = "PB_INS2_RPK_BOLTRELEASE"},
		{time = 168/30, sound = "PB_INS2_RPK_ENDDEPLOYEDRELOAD"},
	},

	deployed_iron_idle = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_IronIdle"},
	},

	deployed_iron_dryfire = {
		{time = 0, sound = "PB_INS2_RPK_EMPTY"},
	},

	deployed_iron_fireselect = {
		{time = 17/30, sound = "PB_INS2_RPK_FIRESELECT"},
	},
}
