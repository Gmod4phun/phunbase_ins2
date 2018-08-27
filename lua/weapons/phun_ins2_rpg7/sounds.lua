PHUNBASE:addFireSound("PB_INS2_RPG_FIRE", "weapons/rpg7/rpg7_fp.wav", 1, 105, CHAN_STATIC)

PHUNBASE:addReloadSound("PB_INS2_RPG_ENDGRAP", "weapons/rpg7/handling/rpg7_endgrab.wav")
PHUNBASE:addReloadSound("PB_INS2_RPG_FETCH", "weapons/rpg7/handling/rpg7_fetch.wav")
PHUNBASE:addReloadSound("PB_INS2_RPG_LOAD1", "weapons/rpg7/handling/rpg7_load1.wav")
PHUNBASE:addReloadSound("PB_INS2_RPG_LOAD2", "weapons/rpg7/handling/rpg7_load2.wav")

PHUNBASE:addReloadSound("PB_INS2_RPG_PROJECTILE", "weapons/rpg7/rpg_rocket_loop.wav")

SWEP.FireSound = "PB_INS2_RPG_FIRE"

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
		{time = 15/32.5, sound = "PB_INS2_RPG_FETCH"},
		{time = 77/32.5, sound = "PB_INS2_RPG_LOAD1"},
		{time = 97/32.5, sound = "PB_INS2_RPG_LOAD2"},
		{time = 135/32.5, sound = "PB_INS2_RPG_ENDGRAP"},
	},

	base_draw = {
		{time = 0/32.5, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0/32.5, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	base_crawl = {
		{time = 0/32, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
		{time = 13/32, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
	},

	base_reload = {
		{time = 15/32.5, sound = "PB_INS2_RPG_FETCH"},
		{time = 77/32.5, sound = "PB_INS2_RPG_LOAD1"},
		{time = 97/32.5, sound = "PB_INS2_RPG_LOAD2"},
		{time = 135/32.5, sound = "PB_INS2_RPG_ENDGRAP"},
	},

	empty_draw = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_DRAW"},
	},

	empty_holster = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_HOLSTER"},
	},

	empty_dryfire = {
		{time = 1/30, sound = "PB_INS2_GP30_EMPTY"},
	},

	empty_crawl = {
		{time = 0, sound = "PB_INS2_UNIVERSAL_RIGHTCRAWL"},
		{time = 13/32, sound = "PB_INS2_UNIVERSAL_LEFTCRAWL"},
	}
}