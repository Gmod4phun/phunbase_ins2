local att = {}
att.name = "pb_ins2_att_optic_holo"
att.menuName = "Holographic Sight"

att.reticleTable = {
	["reticleMaterial"] = Material("models/weapons/optics/eotech_reticule"),
	["reticleSize"] = 24,
	["stencilElementName"] = "pb_ins2_att_optic_holo_stencil",
	["reticleRotate"] = -90,
}
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_optic_kobra"
att.menuName = "Kobra Sight"

att.reticleTable = {
	["reticleMaterial"] = Material("models/weapons/optics/kobra_dot"),
	["reticleSize"] = 24,
	["stencilElementName"] = "pb_ins2_att_optic_kobra_stencil",
	["reticleRotate"] = -90,
}
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_optic_reddot"
att.menuName = "Red Dot"

att.reticleTable = {
	["reticleMaterial"] = Material("models/weapons/optics/aimpoint_reticule"),
	["reticleSize"] = 300,
	["stencilElementName"] = "pb_ins2_att_optic_reddot_stencil",
	["reticleRotate"] = -90,
}

function att:attachCallback()
end

function att:detachCallback()
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_optic_2xreddot"
att.menuName = "2x Red Dot"

function att:attachCallback()
	if CLIENT then
		local velement = self:getVElementByName(att.name)
		if velement then
			self.RTScope_Entity = velement
		end
	end
end

function att:detachCallback()
	if CLIENT then
		self.RTScope_Entity = self.VM
	end
end

function att:think()
	if CLIENT then
		local velement = self:getVElementByName(att.name)
		if velement then
			if self:GetIron() then
				velement:SetSequence(1)
			else
				velement:SetSequence(2)
			end
		end
	end
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_optic_elcan"
att.menuName = "C79 Scope"

function att:attachCallback()
	if CLIENT then
		local velement = self:getVElementByName(att.name)
		if velement then
			self.RTScope_Entity = velement
		end
	end
end

function att:detachCallback()
	if CLIENT then
		self.RTScope_Entity = self.VM
	end
end

function att:think()
	if CLIENT then
		local velement = self:getVElementByName(att.name)
		if velement then
			if self:GetIron() then
				velement:SetSequence(1)
			else
				velement:SetSequence(2)
			end
		end
	end
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_optic_po4"
att.menuName = "PO 4x24"

function att:attachCallback()
	if CLIENT then
		local velement = self:getVElementByName(att.name)
		if velement then
			self.RTScope_Entity = velement
		end
	end
end

function att:detachCallback()
	if CLIENT then
		self.RTScope_Entity = self.VM
	end
end

function att:think()
	if CLIENT then
		local velement = self:getVElementByName(att.name)
		if velement then
			if self:GetIron() then
				velement:SetSequence(1)
			else
				velement:SetSequence(2)
			end
		end
	end
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_optic_7x"
att.menuName = "7x Scope"

function att:attachCallback()
	if CLIENT then
		local velement = self:getVElementByName(att.name)
		if velement then
			self.RTScope_Entity = velement
		end
	end
end

function att:detachCallback()
	if CLIENT then
		self.RTScope_Entity = self.VM
	end
end

function att:think()
	if CLIENT then
		local velement = self:getVElementByName(att.name)
		if velement then
			if self:GetIron() then
				velement:SetSequence(1)
			else
				velement:SetSequence(2)
			end
		end
	end
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_optic_mk4"
att.menuName = "Mk4 Scope"

function att:attachCallback()
	if CLIENT then
		local velement = self:getVElementByName(att.name)
		if velement then
			self.RTScope_Entity = velement
		end
	end
end

function att:detachCallback()
	if CLIENT then
		self.RTScope_Entity = self.VM
	end
end

function att:think()
	if CLIENT then
		local velement = self:getVElementByName(att.name)
		if velement then
			if self:GetIron() then
				velement:SetSequence(1)
			else
				velement:SetSequence(2)
			end
		end
	end
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_heavybarrel"
att.menuName = "Heavy Barrel"

function att:attachCallback()
end

function att:detachCallback()
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_suppressor"
att.menuName = "Suppressor"

function att:attachCallback()
	self.IsSuppressed = true
	self:SetMuzzleAttachmentName("muzzle_supp")
end

function att:detachCallback()
	self.IsSuppressed = false
	self:SetMuzzleAttachmentName("muzzle")
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_foregrip"
att.menuName = "Foregrip"

function att:attachCallback()
	self.UsesForegrip = true
end

function att:detachCallback()
	self.UsesForegrip = false
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_bipod"
att.menuName = "Bipod"

function att:attachCallback()
	self.UsesBipod = true
end

function att:detachCallback()
	self.UsesBipod = false
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_gl_m203_he"
att.menuName = "M203 HE"

function att:attachCallback()
	self:AllowGLMode()
	self.GrenadeLauncherAmmoType = "phunbase_40mm_he"
end

function att:detachCallback()
	self:DisallowGLMode()
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_gl_m203_smoke"
att.menuName = "M203 Smoke"

function att:attachCallback()
	self:AllowGLMode()
	self.GrenadeLauncherAmmoType = "phunbase_40mm_smoke"
end

function att:detachCallback()
	self:DisallowGLMode()
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_gl_gp25_he"
att.menuName = "GP-25 HE"

function att:attachCallback()
	self:AllowGLMode()
	self.GrenadeLauncherAmmoType = "phunbase_40mm_he"
end

function att:detachCallback()
	self:DisallowGLMode()
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_gl_gp25_smoke"
att.menuName = "GP-25 Smoke"

function att:attachCallback()
	self:AllowGLMode()
	self.GrenadeLauncherAmmoType = "phunbase_40mm_smoke"
end

function att:detachCallback()
	self:DisallowGLMode()
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_flashlight"
att.menuName = "Flashlight"

function att:attachCallback()
	self.CustomFlashlight = true
end

function att:detachCallback()
	self.CustomFlashlight = false
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_laser"
att.menuName = "Laser Sight"

function att:attachCallback()
end

function att:detachCallback()
end

local laserClr = Color(250,10,10)
local laserMat = Material("effects/laser1")
function att:render()
	if CLIENT then
		local velement = self:getVElementByName(att.name)
		if velement then
			local att = velement:GetAttachment(1)
			
			local tr = util.TraceLine( {
				start = att.Pos,
				endpos = att.Pos + att.Ang:Forward() * 4096,
				mask = MASK_SOLID_BRUSHONLY,
			} )

			if tr.HitPos and !self:GetIsHolstering() then
				render.SetColorModulation(1,0,0)
				render.SetMaterial(laserMat)
				render.DrawBeam(att.Pos, tr.HitPos, 1, 0, 1, laserClr)
				render.SetColorModulation(1,1,1)
			end
		end
	end
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_mag_drum"
att.menuName = "Drum Magazine"

function att:attachCallback()
	self.UsesDrumMag = true
end

function att:detachCallback()
	self.UsesDrumMag = false
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_mag_extended_15"
att.menuName = "Extended Magazine"

function att:attachCallback()
	self.UsesExtMag = true
	self:unloadWeapon()
	self:SetClipSize(15)
end

function att:detachCallback()
	self.UsesExtMag = false
	self:unloadWeapon()
	self:RestoreClipSize()
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_mag_extended_30"
att.menuName = "Extended Magazine"

function att:attachCallback()
	self.UsesExtMag = true
	self:unloadWeapon()
	self:SetClipSize(30)
end

function att:detachCallback()
	self.UsesExtMag = false
	self:unloadWeapon()
	self:RestoreClipSize()
end
PHUNBASE:registerAttachment(att)



local att = {}
att.name = "pb_ins2_att_speedloader"
att.menuName = "Speed Loader"

function att:attachCallback()
	self.UsesSpeedloader = true
end

function att:detachCallback()
	self.UsesSpeedloader = false
end
PHUNBASE:registerAttachment(att)
