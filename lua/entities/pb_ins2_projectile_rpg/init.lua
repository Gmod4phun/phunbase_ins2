AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Think()	
	if self.dt.State == self.States.misfired then
		return 
	end
	
	local CT = CurTime()
	
	if self.selfDestructTime and CT > self.selfDestructTime and !self:IsMisfired() then
		self:selfDestruct()
	elseif self.ArmTime and CT > self.ArmTime then
		self.dt.State = self.States.armed
	end
	
	local phys = self:GetPhysicsObject()
	
	if IsValid(phys) then
		phys:SetVelocity((self:GetForward():GetNormalized() * 5787.39) + VectorRand() * 10)
	end
end

function ENT:Touch(ent)
	if !IsValid(ent) then return end
	if !ent:IsPlayer() and !ent:IsNPC() then return end
	
	if CurTime() > self.ArmTime then
		self:selfDestruct()
	end
end

function ENT:PhysicsCollide(data, physobj)
	local vel, len
	
	if self.dt.State == self.States.misfired then
		vel = physobj:GetVelocity()
		len = vel:Length()
		
		if len > 500 then
			physobj:SetVelocity(vel * 0.6)
		end
	
		return
	end
	
	if CurTime() > self.ArmTime then
		if self:IsMisfired() then return end
		self:selfDestruct()
	else
		self:EmitSound("physics/metal/metal_grenade_impact_hard" .. math.random(1, 3) .. ".wav", 80, 100)

		self.dt.State = self.States.misfired
		
		vel = physobj:GetVelocity()
		len = vel:Length()
		
		if len > 500 then
			physobj:SetVelocity(vel * 0.6)
		end
	end
end


function ENT:selfDestruct()
	if self.isExploding then
		return 
	end
	
	self.isExploding = true
	
	util.BlastDamage(self, self.Owner, self:GetPos(), self.BlastRadius, self.BlastDamage)
	
	local pos = self:GetPos()
	util.Decal("Scorch", pos, pos - Vector(0,0,25), self)
	
	local ef = EffectData()
	ef:SetOrigin(pos)
	ef:SetMagnitude(1)
    util.Effect("Explosion", ef)
    util.Effect("HelicopterMegaBomb", ef)
    
    if self:WaterLevel() >= 2 then
        util.Effect("WaterSurfaceExplosion", ef)
    end
	
	local sfx = ents.Create("env_explosion")
	if IsValid(sfx) then
		sfx:SetPos(self:GetPos())
		sfx:SetKeyValue("spawnflags", bit.bor(1,4,8,32,512,1024))
		sfx:SetKeyValue("waterlevel", self:WaterLevel())
		sfx:Fire("explode")
		SafeRemoveEntityDelayed(sfx, 3)
	end
	
	self:EmitSound("PB_INS2_RPG_ENT_DETONATE")
	
	SafeRemoveEntity(self)
end

function ENT:OnTakeDamage(dmg)
	if dmg:IsDamageType(DMG_BULLET) or dmg:IsDamageType(DMG_BLAST) then
		self:selfDestruct()
	end
end
