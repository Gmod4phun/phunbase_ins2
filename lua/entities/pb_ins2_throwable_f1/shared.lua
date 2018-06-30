AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "phun_throwable_base"
ENT.PrintName = "F1 Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.NadeModel = "models/gmod4phun/ins2/weapons/w_f1.mdl"
ENT.NadeBounceSound = "PB_INS2_FRAG_ENT_BOUNCE"

function ENT:Detonate()
	local ply = self.Owner
	local dmg = DamageInfo()
	local pos = self:GetPos()
	dmg:SetAttacker(ply)
	dmg:SetInflictor(self)
	dmg:SetDamage(100)
	dmg:SetDamageType(DMG_BLAST)
	util.BlastDamageInfo(dmg, pos, 384)
	
	local ef = EffectData()
	ef:SetOrigin(pos)
	ef:SetMagnitude(1)
    util.Effect("Explosion", ef)
    util.Effect("HelicopterMegaBomb", ef)
    
    if self:WaterLevel() >= 2 then
        util.Effect("WaterSurfaceExplosion", ef)
    end
	
	util.Decal("Scorch", pos, pos - Vector(0,0,25), self)
	
	self:EmitSound("PB_INS2_FRAG_ENT_DETONATE")
	self:Remove()
end
