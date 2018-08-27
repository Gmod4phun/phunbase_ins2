//
// wip view bobbing stuff
//

if CLIENT then
    local desiredAng, Ang0, can, rotateOffset = Angle(), Angle(), false, 0
    
    local allowedSequences = {
        ["reload_start"] = true,
        ["reload_insert"] = true,
        ["reload_end"] = true,
        ["reload"] = true,
        ["reloadempty"] = true,
        ["fire_cock"] = true,
        ["glsetup_reload"] = true,
        ["fire"] = true,
        ["firelast"] = true,
        ["dryfire"] = true,
        ["idle"] = true,
        ["fireselect"] = true,
        ["ready"] = true,
        ["draw"] = true,
        ["holster"] = true,
    }
	
	SWEP.VMCameraRotateOffset = 0
	SWEP.VMCameraRotateOffsetIron = 0
    
	function SWEP:HandleExtraCalcView(ply, pos, ang, fov)
        local vm = self.VM
        
        local attIndex = vm:LookupAttachment("Muzzle")
        if !attIndex then return end
        
        local att = vm:GetAttachment(attIndex)
        if !att then return end
        
        local vmA, vmP = att.Ang, att.Pos
		
		rotateOffset = PHUNBASE_Lerp(FrameTime()*16, rotateOffset , self:GetIron() and self.VMCameraRotateOffsetIron or self.VMCameraRotateOffset)
        
        vmA:RotateAroundAxis(vmA:Forward(), -90 + rotateOffset)
        
        local diffA = ang - vmA
        
        can = false
        
        local i2a = self.curINS2Anim
        local cyc = self.Cycle
        
        if allowedSequences[i2a] then
            can = true
        end
        
        // for draw and holster only when they are used as idle anims
        if i2a == "draw" and self:GetIsDeploying() then can = false end
        if i2a == "holster" and self:GetIsHolstering() then can = false end
        if i2a == "holster" and cyc > 0.1 then can = false end
        if self:GetIsUnderwater() or self:GetIsCustomizing() then can = false end
        
        if ang.x > 80 or ang.x < -80 then can = false end // if we looking high up/very low down, dont use attachment offset
        
        if can then
            desiredAng.x = PHUNBASE_Lerp(FrameTime()*2, desiredAng.x, diffA.x)
            desiredAng.z = PHUNBASE_Lerp(FrameTime()*2, desiredAng.z, diffA.z)
            
            desiredAng.x = math.Clamp(desiredAng.x, -7, 7)
            desiredAng.y = 0
            desiredAng.z = math.Clamp(desiredAng.z, -7, 7)
        else
            desiredAng = PHUNBASE_LerpAngle(FrameTime()*2, desiredAng, Ang0)
        end
        
        local newAng = ang + desiredAng
		
		return pos, newAng, fov
	end
end
