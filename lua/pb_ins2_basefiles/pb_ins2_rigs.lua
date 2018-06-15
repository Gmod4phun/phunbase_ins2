// INS2 HANDS 

local bonescalevec = Vector(1,1,1) * 0.01
local bonescalevecRestore = Vector(1,1,1)

local pmodel_bones = {
	//["ValveBiped.Bip01_Spine4"] = true,
	//["ValveBiped.Bip01_L_Clavicle"] = true,
	["ValveBiped.Bip01_L_UpperArm"] = true,
	["ValveBiped.Bip01_L_Forearm"] = true,
	["ValveBiped.Bip01_L_Hand"] = true,
	["ValveBiped.Bip01_L_Finger4"] = true,
	["ValveBiped.Bip01_L_Finger41"] = true,
	["ValveBiped.Bip01_L_Finger42"] = true,
	["ValveBiped.Bip01_L_Finger3"] = true,
	["ValveBiped.Bip01_L_Finger31"] = true,
	["ValveBiped.Bip01_L_Finger32"] = true,
	["ValveBiped.Bip01_L_Finger2"] = true,
	["ValveBiped.Bip01_L_Finger21"] = true,
	["ValveBiped.Bip01_L_Finger22"] = true,
	["ValveBiped.Bip01_L_Finger1"] = true,
	["ValveBiped.Bip01_L_Finger11"] = true,
	["ValveBiped.Bip01_L_Finger12"] = true,
	["ValveBiped.Bip01_L_Finger0"] = true,
	["ValveBiped.Bip01_L_Finger01"] = true,
	["ValveBiped.Bip01_L_Finger02"] = true,
	//["ValveBiped.Bip01_R_Clavicle"] = true,
	["ValveBiped.Bip01_R_UpperArm"] = true,
	["ValveBiped.Bip01_R_Forearm"] = true,
	["ValveBiped.Bip01_R_Hand"] = true,
	["ValveBiped.Bip01_R_Finger4"] = true,
	["ValveBiped.Bip01_R_Finger41"] = true,
	["ValveBiped.Bip01_R_Finger42"] = true,
	["ValveBiped.Bip01_R_Finger3"] = true,
	["ValveBiped.Bip01_R_Finger31"] = true,
	["ValveBiped.Bip01_R_Finger32"] = true,
	["ValveBiped.Bip01_R_Finger2"] = true,
	["ValveBiped.Bip01_R_Finger21"] = true,
	["ValveBiped.Bip01_R_Finger22"] = true,
	["ValveBiped.Bip01_R_Finger1"] = true,
	["ValveBiped.Bip01_R_Finger11"] = true,
	["ValveBiped.Bip01_R_Finger12"] = true,
	["ValveBiped.Bip01_R_Finger0"] = true,
	["ValveBiped.Bip01_R_Finger01"] = true,
	["ValveBiped.Bip01_R_Finger02"] = true,
	["ValveBiped.Bip01_L_Ulna"] = true,
	["ValveBiped.Bip01_R_Ulna"] = true,
	["ValveBiped.Bip01_R_Wrist"] = true,
	["ValveBiped.Bip01_L_Wrist"] = true
}

local function ResetEntityToDefault(ent)
	ent:SetSkin(0)
	for i = 0, #ent:GetBodyGroups() do
		ent:SetBodygroup(i, 0)
	end
	for i = 0, #ent:GetMaterials() do
		ent:SetSubMaterial(i, nil)
	end
	for i = 0, ent:GetBoneCount()-1 do
		local bname = ent:GetBoneName(i)
		
		if bname and bname != "__INVALIDBONE__" then
			ent:ManipulateBoneScale(i, bonescalevecRestore)
			ent:ManipulateBonePosition(i, Vector())
			ent:ManipulateBoneAngles(i, Angle())
		end
	end
end

function SWEP:_CreateHands()
	if !CLIENT then return end
	local gmod_hands = LocalPlayer():GetHands()
	local currig = GetConVar("pb_ins2_rig"):GetInt()
	
	if GetConVar("pb_ins2_rig_use_gmod_hands"):GetInt() == 1 then // gmod hands
		if !self.INS2_Linker then
			self.INS2_Linker = self:CreateClientModel( "models/gmod4phun/ins2/c_ins2_to_gmod_hands.mdl" )
		end
		self.INS2_Linker:SetNoDraw(true)
		self.INS2_Linker:SetupBones()
		self.INS2_Linker:SetParent(self.VM)
		self.INS2_Linker:AddEffects(EF_BONEMERGE)
		self.INS2_Linker:AddEffects(EF_BONEMERGE_FASTCULL)
		
		if !self.Hands then
			self.Hands = self:CreateClientModel( gmod_hands:GetModel() )
		end
		
		ResetEntityToDefault(self.Hands)
		
		self.Hands:SetNoDraw(true)
		self.Hands:SetupBones()
		self.Hands:SetParent(self.INS2_Linker)
		self.Hands:AddEffects(EF_BONEMERGE)
		self.Hands:AddEffects(EF_BONEMERGE_FASTCULL)
		self.Hands.GetPlayerColor = self._GetPlayerColor // player color proxy
		self:_CopyBodyGroups(LocalPlayer():GetHands(), self.Hands)
		
		if GetConVar("pb_ins2_rig_use_gmod_playermodel"):GetInt() == 1 then // playermodel merged as hands
			self.Hands:SetModel( LocalPlayer():GetModel() )
			self.Hands:SetupBones()
			self.Hands:SetParent(self.INS2_Linker)
			self.Hands:AddEffects(EF_BONEMERGE)
			self.Hands:AddEffects(EF_BONEMERGE_FASTCULL)
			self:_CopyBodyGroups(LocalPlayer(), self.Hands)
			
			for i = 0, self.Hands:GetBoneCount()-1 do
				local bname = self.Hands:GetBoneName(i)
				
				if bname and bname != "__INVALIDBONE__" then
					if !pmodel_bones[bname] then
						self.Hands:ManipulateBoneScale(i, bonescalevec)
					end
					
					if bname == "ValveBiped.Bip01_Pelvis" then
						self.Hands:ManipulateBonePosition(i, Vector(-32,0,-64))
					end
				end
			end
		end
	else
		if !self.Hands then
			self.Hands = self:CreateClientModel( PHUNBASE.INS2.RIGS[currig].model )
		end
		self.Hands:SetNoDraw(true)
		self.Hands:SetupBones()
		self.Hands:SetParent(self.VM)
		self.Hands:AddEffects(EF_BONEMERGE)
		self.Hands:AddEffects(EF_BONEMERGE_FASTCULL)
	end
end

function SWEP:_UpdateHands()
	if SERVER then
		SendUserMessage("PHUNBASE_UMSG_UPDATEHANDS", self.Owner)
	else
		local gmod_hands = LocalPlayer():GetHands()
		local currig = GetConVar("pb_ins2_rig"):GetInt()
		
		if GetConVar("pb_ins2_rig_use_gmod_hands"):GetInt() == 1 then // gmod hands
			if !self.Hands or !self.INS2_Linker then
				self:_CreateHands()
			end
			self.Hands:SetModel( gmod_hands:GetModel() )
			self.Hands:SetupBones()
			self.Hands:SetParent(self.INS2_Linker)
			ResetEntityToDefault(self.Hands)
			self:_CopyBodyGroups(gmod_hands, self.Hands)
			
			if GetConVar("pb_ins2_rig_use_gmod_playermodel"):GetInt() == 1 then // playermodel merged as hands
				self.Hands:SetModel( LocalPlayer():GetModel() )
				self.Hands:SetupBones()
				self.Hands:SetParent(self.INS2_Linker)
				ResetEntityToDefault(self.Hands)
				self:_CopyBodyGroups(LocalPlayer(), self.Hands)
				
				for i = 0, self.Hands:GetBoneCount()-1 do
					local bname = self.Hands:GetBoneName(i)
					
					if bname and bname != "__INVALIDBONE__" then
						if !pmodel_bones[bname] then
							self.Hands:ManipulateBoneScale(i, bonescalevec)
						end
						
						if bname == "ValveBiped.Bip01_Pelvis" then
							self.Hands:ManipulateBonePosition(i, Vector(-32,0,-64))
						end
					end
				end
			end
		else
			if !self.Hands then
				self:_CreateHands()
			end

			self.Hands:SetModel(PHUNBASE.INS2.RIGS[currig].model)
			self.Hands:SetupBones()
			self.Hands:SetParent(self.VM)
			ResetEntityToDefault(self.Hands)
			
			for k, v in pairs(PHUNBASE.INS2.RIGS[currig].bg) do
				self.Hands:SetBodygroup(k, v)
			end
			
			for k, v in pairs(PHUNBASE.INS2.RIGS[currig].submats) do
				self.Hands:SetSubMaterial(k, v)
			end
		end
	end
end

function SWEP:_drawHands()
	if self.Hands then
		if GetConVar("pb_ins2_rig_use_gmod_hands"):GetInt() == 1 then // gmod hands
			self.Hands.GetPlayerColor = self._GetPlayerColor
		end
		self.Hands:DrawModel()
	end
end
