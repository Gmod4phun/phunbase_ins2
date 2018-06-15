local particlefiles = {
    "ammo_cache_ins.pcf",
    "blood_fx.pcf",
    "blood_impact.pcf",
    "burning_fx.pcf",
    "environment_fx.pcf",
    "environmental_fx.pcf",
    "error.pcf",
    "explosion_fx_ins.pcf",
    "explosion_fx_ins_b.pcf",
    "fire_01.pcf",
    "fire_01_ins.pcf",
    "fire_01_unused.pcf",
    "fire_01l4d.pcf",
    "flashlight.pcf",
    "footstep_fx.pcf",
    "impact_fx_ins.pcf",
    "ins_burning_fx.pcf",
    "ins_light_fx.pcf",
    "ins_rockettrail.pcf",
    "ins_smokegrenade.pcf",
    "insect_fx.pcf",
    "jonny_light_rigs.pcf",
    "light_fx.pcf",
    "menu.pcf",
    "rain_fx.pcf",
    "rain_fx_unused.pcf",
    "rope_fx.pcf",
    "screen_fx.pcf",
    "snow_fx_unused.pcf",
    "spark_fx.pcf",
    "steamworks.pcf",
    "water_fx.pcf",
    "water_impact.pcf",
    "weapon_fx.pcf",
    "weapon_fx_ins.pcf",
    "weapon_fx_ins_b.pcf",
    "weapon_fx_tracers.pcf",
    "world_fx_ins.pcf",
}

for k, v in pairs(particlefiles) do
	game.AddParticles("particles/ins2/"..v)
end

/*

local particlenames = {
}

for k, v in pairs(particlenames) do
	PrecacheParticleSystem(v)
end

*/