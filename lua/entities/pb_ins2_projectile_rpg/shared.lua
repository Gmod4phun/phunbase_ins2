ENT.Type = "anim"
ENT.Base = "base_entity"

ENT.PrintName = "RPG Rocket"
ENT.Spawnable = false
ENT.AdminSpawnable = false 

ENT.BlastDamage = 230
ENT.BlastRadius = 500

function ENT:Initialize()
	if SERVER then
		self:SetModel("models/gmod4phun/ins2/weapons/w_rpg7_projectile.mdl")
		self:PhysicsInitBox(self:OBBMins(), self:OBBMaxs())
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_BBOX)
		self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
		
		local phys = self:GetPhysicsObject()

		if phys and phys:IsValid() then
			phys:SetMass(10)
			phys:Wake()
			phys:SetBuoyancyRatio(0)
		end

		self.dt.State = self.States.initialized

		local spd = physenv.GetPerformanceSettings()
		spd.MaxVelocity = 11574.78

		physenv.SetPerformanceSettings(spd)
	end
	
	local CT = CurTime()
	
	self.ArmTime = CT + 0.15
	self.selfDestructTime = CT + 5
end

function ENT:SetupDataTables()
	self:NetworkVar("Int", 0, "State")
end

ENT.States = {
	initialized = 1,
	armed = 2,
	misfired = 3
}

function ENT:IsMisfired()
	return self.dt.State == self.States.misfired
end
