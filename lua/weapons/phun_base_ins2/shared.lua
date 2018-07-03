AddCSLuaFile()

if SERVER then
    util.AddNetworkString("PB_INS2_ANIM_NAME")
end

PHUNBASE.LoadLua("pb_ins2_basefiles/pb_ins2_rigs.lua")
PHUNBASE.LoadLua("pb_ins2_basefiles/pb_ins2_viewbob.lua")
PHUNBASE.LoadLua("sh_ins2_sounds.lua")

SWEP.PrintName = "PHUNBASE INSURGENCY"
SWEP.Category = "PHUNBASE"
SWEP.Slot = 1
SWEP.SlotPos = 1
SWEP.IconLetter = "1"
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = true
SWEP.SwayScale = 1
SWEP.BobScale = 1

SWEP.Base = "phun_base"
SWEP.PHUNBASEWEP = true
SWEP.PHUNBASEWEP_INS2 = true

SWEP.Spawnable = false
SWEP.AdminSpawnable = false

SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 70
SWEP.AimViewModelFOV = 70
SWEP.ViewModel = "models/weapons/c_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.HoldType = "pistol"

SWEP.SprintHoldType = "passive"
SWEP.SafeHoldType = "passive"

util.PrecacheModel( SWEP.ViewModel )
util.PrecacheModel( SWEP.WorldModel )

SWEP.Weight = -1
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Primary.Ammo = "pistol"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = false
SWEP.Primary.Delay = 0.1
SWEP.Primary.Damage = 20
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 0
SWEP.Primary.Tracer = 0
SWEP.Primary.Spread = 0.02
SWEP.Primary.Cone = 0.02

SWEP.Secondary.Ammo = "none"
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Delay = 0.1

SWEP.PB_VMPOS = Vector(0,0,0) // ViewModel position
SWEP.PB_VMANG = Angle(0,0,0) // ViewModel angles

SWEP.BasePos = Vector(0,0,0)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(0,0,0)
SWEP.IronsightAng = Vector(0,0,0)

SWEP.SprintPos = Vector(0,0,0)
SWEP.SprintAng = Vector(0,0,0)

SWEP.HolsterPos = Vector(0,0,0)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(0,0,0)
SWEP.NearWallAng = Vector(0,0,0)

SWEP.InactivePos = Vector(4, 0, 0)
SWEP.InactiveAng = Vector(-45, 45, 0)

SWEP.Sequences = {}
SWEP.Sounds = {}

SWEP.DeployTime = 0.5
SWEP.HolsterTime = 0.5
SWEP.ReloadTime = 0.5

SWEP.UseHands = true

SWEP.IsDual = false
SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = true

SWEP.MuzzleAttachmentName = "muzzle"
SWEP.MuzzleAttachmentName_L = "muzzle_left"
SWEP.MuzzleAttachmentName_R = "muzzle_right"
SWEP.MuzzleEffect = {"smoke_trail"}
SWEP.MuzzleEffectSuppressed = {"smoke_trail"}

SWEP.ShellVelocity = {X = 0, Y = 0, Z = 0}
SWEP.ShellAngularVelocity = {Pitch_Min = 0, Pitch_Max = 0, Yaw_Min = 0, Yaw_Max = 0, Roll_Min = 0, Roll_Max = 0}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shelleject"
SWEP.ShellAttachmentName_L = "shelleject_left"
SWEP.ShellAttachmentName_R = "shelleject_right"
SWEP.ShellDelay = 0.03
SWEP.ShellScale = 0.5
SWEP.ShellModel = "models/weapons/shell.mdl"
SWEP.ShellEjectVelocity = 75

SWEP.FireSound = {} -- can be a string, or a table of sounds

SWEP.DisableIronsights = false
SWEP.DisableReloadBlur = false
SWEP.ReloadAfterShot = false
SWEP.ReloadAfterShotTime = 0.5
SWEP.UseIronTransitionAnims = true

SWEP.EmptySoundPrimary = ""
SWEP.EmptySoundSecondary = ""
SWEP.DryFireSound = ""

SWEP.FlashlightAttachmentName = "laser"
SWEP.InstantFlashlight = true
SWEP.NoSprintVMMovement = true

SWEP.FireMoveMod = 1
SWEP.FireMoveMod_Iron = 1

SWEP.INS2_IconParams = {dist = 10, spin = false, bodygroups = {}}

SWEP.DontCockWhenEmpty = true
SWEP.DontCockWhenSprinting = true

SWEP.IsSuppressed = false
SWEP.UsesForegrip = false
SWEP.UsesGrenadeLauncher = false
SWEP.UsesExtMag = false
SWEP.UsesDrumMag = false
SWEP.CustomFlashlight = false

SWEP.FireModeSelectDelay = 0.75
SWEP.FireModeSelectSound = ""

SWEP.FireMoveMod = 0
SWEP.FireMoveMod_Iron = 0
SWEP.LuaViewmodelRecoil = false
SWEP.FullAimViewmodelRecoil = true

// anims override
/* // commented out cos it does weird shit when it is set in the base
SWEP.Sequences = {
	base_idle = "base_idle",
	base_ready = "base_ready",
	base_draw = "base_draw",
	base_holster = "base_holster",
	base_down = "base_down",
	base_crawl = "base_crawl",
	base_fire = "base_fire", "base_fire2", "base_fire3"},
	base_firelast = "base_firelast",
	base_dryfire = "base_dryfire",
	base_reload = "base_reload",
	base_reloadempty = "base_reloadempty",
	base_reload_extmag = "base_reload_extmag",
	base_reloadempty_extmag = "base_reloadempty_extmag",
	base_sprint = "base_sprint",
	
	empty_idle = "empty_idle",
	empty_draw = "empty_draw",
	empty_holster = "empty_holster",
	empty_down = "empty_down",
	empty_crawl = "empty_crawl",
	empty_sprint = "empty_sprint",
	
	iron_down = "iron_down",
	empty_iron_down = "empty_iron_down",
	
	iron_fire = "iron_fire_1", "iron_fire_2", "iron_fire_3"},
	iron_firelast = "iron_firelast",
	iron_dryfire = "iron_dryfire",
}
*/

function SWEP:_getAnimPrefixes()
	local prefix = ""
	
	local iron = self:GetIron()
	local fore = self.UsesForegrip
	local gl = self.UsesGrenadeLauncher and self:GetWeaponMode() != PB_WEAPONMODE_GL_ACTIVE
	local empty = self:Clip1() == 0
	
	local glactive = self.UsesGrenadeLauncher and self:GetWeaponMode() == PB_WEAPONMODE_GL_ACTIVE
	
	if iron then prefix = "iron_"..prefix end
	if fore then prefix = "foregrip_"..prefix end
	if gl then prefix = "gl_"..prefix end
	
	if glactive then prefix = "glsetup_"..prefix end
	
	if prefix == "" then prefix = empty and "empty_" or "base_" end
	
	return prefix
end

function SWEP:_noEmptyPrefix()
	return self:_getAnimPrefixes() != "empty_"
end

function SWEP:_getAnimSuffixes()
	local suffix = ""
	
	local empty
	
	if self:GetIsReloading() and self.ShotgunReloadingState != 1 and self.WasEmpty then
		empty = true
	else
		empty = self:Clip1() < 0
	end
	
	if empty then suffix = suffix.."_empty" end
	
	return suffix
end

function SWEP:_getMagSuffixes(anim)
	local ext = self.UsesExtMag
	local drum = self.UsesDrumMag
	
	if anim:find("reload") then
		return ext and "_extmag" or (drum and "_drum" or "")
	else
		return ""
	end
end

local fixPrefixTab = {
	["dryfire"] = {["empty_"] = "base_"},
	["reload_insert"] = {["empty_"] = "base_"},
	["sprint"] = {["iron_"] = "base_", ["foregrip_iron_"] = "foregrip_", ["gl_iron_"] = "gl_", ["glsetup_iron_"] = "glsetup_"},
	["holster"] = {["iron_"] = "base_", ["foregrip_iron_"] = "foregrip_", ["gl_iron_"] = "gl_", ["glsetup_iron_"] = "glsetup_"},
	["reload"] = {["iron_"] = "base_", ["foregrip_iron_"] = "foregrip_", ["gl_iron_"] = "gl_", ["glsetup_iron_"] = "glsetup_", ["empty_"] = "base_"},
	["reloadempty"] = {["iron_"] = "base_", ["foregrip_iron_"] = "foregrip_", ["gl_iron_"] = "gl_", ["glsetup_iron_"] = "glsetup_", ["empty_"] = "base_"},
	["reload_start"] = {["iron_"] = "base_", ["foregrip_iron_"] = "foregrip_", ["gl_iron_"] = "gl_", ["q"] = "glsetup_", ["empty_"] = "base_"},
	["iron_down"] = {["base_"] = "", ["empty_"] = ""},
}

local fixSuffixTab = {
	["dryfire"] = {["_empty"] = ""},
	["reload"] = {["_empty"] = ""},
	["reloadempty"] = {["_empty"] = ""},
	["draw"] = {["_empty"] = ""},
	["holster"] = {["_empty"] = ""},
	["iron_down"] = {["_empty"] = ""},
	["sprint"] = {["_empty"] = ""},
	["ready"] = {["_empty"] = ""},
}

net.Receive("PB_INS2_ANIM_NAME", function()
    local anim = net.ReadString()
    local wep = LocalPlayer():GetActiveWeapon()
    
    if !IsValid(wep) then return end
    wep.curINS2Anim = anim
end)

function SWEP:_playINS2Anim(anim, speed, cycle)
	local prefix, suffix, magsuffixes = self:_getAnimPrefixes(), self:_getAnimSuffixes(), self:_getMagSuffixes(anim)
	
	if fixPrefixTab[anim] then
		if fixPrefixTab[anim][prefix] then
			prefix = fixPrefixTab[anim][prefix]
		end
	end
	
	if fixSuffixTab[anim] then
		if fixSuffixTab[anim][suffix] then
			suffix = fixSuffixTab[anim][suffix]
		end
	end
	
	if prefix == "empty_" and !self.Sequences[prefix..anim..suffix..magsuffixes] and self.Sequences["base_"..anim..suffix..magsuffixes] then // some guns use base_ for empty_ anims
		prefix = "base_"
	end
	
	if anim == "firelast" and !self.Sequences[prefix..anim..suffix..magsuffixes] then
		anim = "fire"
	end
    
    if CLIENT then
        self.curINS2Anim = anim
    else
        net.Start("PB_INS2_ANIM_NAME")
            net.WriteString(anim)
        net.Send(self.Owner)
    end
    
	local a = prefix..anim..suffix..magsuffixes
	
	speed = speed or 1
	cycle = cycle or 0
	
	self:PlayVMSequence(a, speed, cycle)
end

function SWEP:PlayIdleAnim() // override and dont use this shit
end

function SWEP:IdleAnimLogic() // uses holster, reversed, since some idle animations don't exist, wtf
	self:_playINS2Anim("holster", -1, 0.5)
end

function SWEP:PreDeployAnimLogic()
	self:_playINS2Anim("draw", -1, 0, true) // unfuck deploy, no sound
end

function SWEP:DeployAnimLogic()
	local anim = !self._wasFirstTimeDeployed and "ready" or "draw"
	self:_playINS2Anim(anim)
end

function SWEP:HolsterAnimLogic()
	local anim = "holster"
	self:_playINS2Anim(anim)
end

function SWEP:FireAnimLogic(isSecondary)
	local clip = self:Clip1() // clip before firing anim played
	local last = clip == 1
	local dry = clip < 1
	
	local anim = last and "firelast" or (dry and "dryfire" or "fire")
	self:_playINS2Anim(anim)
end

function SWEP:DryFireAnimLogic()	
	local anim = "dryfire"
	self:_playINS2Anim(anim)
end

function SWEP:ReloadAnimLogic()
	local clip = self:Clip1() 
	local empty = clip < 1

	local anim = empty and "reloadempty" or "reload"
	self:_playINS2Anim(anim)
end

// shotgun reload override

function SWEP:ShotgunReloadStartLogic()
	local anim = "reload_start"
	self:_playINS2Anim(anim)
end

function SWEP:ShotgunReloadInsertLogic()
	local anim = "reload_insert"
	self:_playINS2Anim(anim)
end

function SWEP:ShotgunReloadEndLogic()
	local anim = "reload_end"
	self:_playINS2Anim(anim)
end

function SWEP:CockAnimLogic()	
	local anim = "fire_cock"
	self:_playINS2Anim(anim)
end

// sprint anims override

function SWEP:SprintStartAnimLogic()
	local anim = "sprint"
	self:_playINS2Anim(anim, 1.2)
end

function SWEP:SprintLoopAnimLogic()
	self:SprintStartAnimLogic()
end

function SWEP:SprintEndAnimLogic()
	self:IdleAnimLogic()
end

function SWEP:SprintClientLogic()
	if CLIENT then
		if !self:IsBusy() then
			if self:GetIsSprinting() and !self.WasSprinting then
				self.WasSprinting = true
				self:SprintStartAnimLogic()
			elseif !self:GetIsSprinting() and self.WasSprinting then
				self.WasSprinting = false
				self:SprintEndAnimLogic()
			end
		end
		
		if self:GetIsSprinting() and (self:IsBusy()) then
			self.WasSprinting = false
		end
	end
end

// nearwall logic override

function SWEP:NearWallAnimLogic()
	if self:IsBusy() then return end
	
	if self:GetIsNearWall() then
		self:_playINS2Anim("iron_down")
	else
        if self.RealSequence == "iron_down" then
            self:IdleAnimLogic()
        end
	end
end

// customization anim

function SWEP:CustomizeAnimLogic()
	if self.NoCustomizeAnims then return end
	
	if self:GetIsCustomizing() then
		self:_playINS2Anim("iron_down")
	else
		self:IdleAnimLogic()
	end
end

// firemode select anim

function SWEP:FiremodeAnimLogic()
	self:_playINS2Anim("fireselect")
end

// grenade launcher mode anim

function SWEP:GrenadeLauncherModeAnimLogic()
	if self:GetWeaponMode() == PB_WEAPONMODE_GL_ACTIVE then
		self:PlayVMSequence("glsetup_in")
	else
		self:PlayVMSequence("glsetup_out")
	end
end

function SWEP:GrenadeLauncherFireAnimLogic()
	self:_playINS2Anim("fire")
end

function SWEP:GrenadeLauncherReloadAnimLogic()
	self:PlayVMSequence("glsetup_reload")
end
