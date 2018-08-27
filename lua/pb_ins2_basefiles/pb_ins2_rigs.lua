// INS2 HANDS

SWEP.UseHands = true
SWEP.INS2_Rig_GMod_Scale = 0.9

local vec_scale_hide = Vector(1,1,1) * 0.01 // scale for playermodel bones that we want to hide
local vec_scale_normal = Vector(1,1,1) // default scale

local pmodel_bones = {
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

local csgorigscalevec = Vector(1,1,1) * 0.8

local ins2_csgo_rig_bones = {
    -- ["v_weapon.Bip01_L_Finger42"] = true,
    -- ["v_weapon.Bip01_L_Finger41"] = true,
    -- ["v_weapon.Bip01_L_Finger4"] = true,

    -- ["v_weapon.Bip01_L_Finger32"] = true,
    -- ["v_weapon.Bip01_L_Finger31"] = true,
    -- ["v_weapon.Bip01_L_Finger3"] = true,

    -- ["v_weapon.Bip01_L_Finger22"] = true,
    -- ["v_weapon.Bip01_L_Finger21"] = true,
    -- ["v_weapon.Bip01_L_Finger2"] = true,

    -- ["v_weapon.Bip01_L_Finger12"] = true,
    -- ["v_weapon.Bip01_L_Finger11"] = true,
    -- ["v_weapon.Bip01_L_Finger1"] = true,

    -- ["v_weapon.Bip01_L_Finger02"] = true,
    -- ["v_weapon.Bip01_L_Finger01"] = true,
    -- ["v_weapon.Bip01_L_Finger0"] = true,

    ["v_weapon.Bip01_L_Hand"] = true,

    -- ["v_weapon.Bip01_R_Finger42"] = true,
    -- ["v_weapon.Bip01_R_Finger41"] = true,
    -- ["v_weapon.Bip01_R_Finger4"] = true,

    -- ["v_weapon.Bip01_R_Finger32"] = true,
    -- ["v_weapon.Bip01_R_Finger31"] = true,
    -- ["v_weapon.Bip01_R_Finger3"] = true,

    -- ["v_weapon.Bip01_R_Finger22"] = true,
    -- ["v_weapon.Bip01_R_Finger21"] = true,
    -- ["v_weapon.Bip01_R_Finger2"] = true,

    -- ["v_weapon.Bip01_R_Finger12"] = true,
    -- ["v_weapon.Bip01_R_Finger11"] = true,
    -- ["v_weapon.Bip01_R_Finger1"] = true,

    -- ["v_weapon.Bip01_R_Finger02"] = true,
    -- ["v_weapon.Bip01_R_Finger01"] = true,
    -- ["v_weapon.Bip01_R_Finger0"] = true,

    ["v_weapon.Bip01_R_Hand"] = true,
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
			ent:ManipulateBoneScale(i, vec_scale_normal)
			ent:ManipulateBonePosition(i, Vector())
			ent:ManipulateBoneAngles(i, Angle())
		end
	end
end

function SWEP:_CreateHands()
	if !CLIENT then return end
	local gmod_hands = LocalPlayer():GetHands()
	local gmod_hands_scale = self.INS2_Rig_GMod_Scale
	local currig = GetConVar("pb_ins2_rig"):GetInt()
	local currigsleeve = GetConVar("pb_ins2_rig_sleeve"):GetInt()

    // csgo rig
	local curglove = GetConVar("pb_ins2_csgo_rig_glove"):GetInt()
	local cursleeve = GetConVar("pb_ins2_csgo_rig_sleeve"):GetInt()

	if GetConVar("pb_ins2_rig_use_gmod_hands"):GetInt() == 1 then // gmod hands
		if !self.INS2_Linker then
			self.INS2_Linker = self:CreateClientModel( "models/gmod4phun/ins2/c_ins2_to_gmod_hands.mdl" ) // gmod linker
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
		
		for i = 0, self.Hands:GetBoneCount()-1 do // rescale bones of gmod hands in case its needed
			local bname = self.Hands:GetBoneName(i)

			if bname and bname != "__INVALIDBONE__" then
				self.Hands:ManipulateBoneScale(i, vec_scale_normal * gmod_hands_scale)
			end
		end

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
					if pmodel_bones[bname] then // scale down all other bones to near zero except the hand bones of playermodel
						self.Hands:ManipulateBoneScale(i, vec_scale_normal * gmod_hands_scale )
					else
						self.Hands:ManipulateBoneScale(i, vec_scale_hide)
					end

					if bname == "ValveBiped.Bip01_Pelvis" then
						self.Hands:ManipulateBonePosition(i, Vector(-32,0,-64))
					end
				end
			end
		end
	else // non-gmod hands, ins2, csgo or other future rigs maybe
        if GetConVar("pb_ins2_rig_use_csgo_hands"):GetInt() == 1 then // csgo hands
            if !self.INS2_Linker then
                self.INS2_Linker = self:CreateClientModel( "models/gmod4phun/ins2/c_ins2_csgo_linker.mdl" ) // csgo linker
            end
            self.INS2_Linker:SetNoDraw(true)
            self.INS2_Linker:SetupBones()
            self.INS2_Linker:SetParent(self.VM)
            self.INS2_Linker:AddEffects(EF_BONEMERGE)
            self.INS2_Linker:AddEffects(EF_BONEMERGE_FASTCULL)

            if !self.CSGO_Glove then
                self.CSGO_Glove = self:CreateClientModel( PHUNBASE.INS2_CSGO.RIGS_GLOVE[curglove].model )
            end
            self.CSGO_Glove:SetNoDraw(true)
            self.CSGO_Glove:SetupBones()
            self.CSGO_Glove:SetParent(self.INS2_Linker)
            self.CSGO_Glove:AddEffects(EF_BONEMERGE)
            self.CSGO_Glove:AddEffects(EF_BONEMERGE_FASTCULL)

            for i = 0, self.CSGO_Glove:GetBoneCount()-1 do
                local bname = self.CSGO_Glove:GetBoneName(i)

                if bname and bname != "__INVALIDBONE__" then
                    if ins2_csgo_rig_bones[bname] then
                        self.CSGO_Glove:ManipulateBoneScale(i, Vector(1,1,1) * csgorigscalevec)
                    end
                end
            end

            if !self.CSGO_Sleeve then
                self.CSGO_Sleeve = self:CreateClientModel( PHUNBASE.INS2_CSGO.RIGS_SLEEVE[cursleeve].model )
            end
            self.CSGO_Sleeve:SetNoDraw(true)
            self.CSGO_Sleeve:SetupBones()
            self.CSGO_Sleeve:SetParent(self.INS2_Linker)
            self.CSGO_Sleeve:AddEffects(EF_BONEMERGE)
            self.CSGO_Sleeve:AddEffects(EF_BONEMERGE_FASTCULL)
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
	
	if !self.Sleeves then
		self.Sleeves = self:CreateClientModel( PHUNBASE.INS2.RIGS_SLEEVE[currigsleeve].model )
	end
	
	self.Sleeves:SetNoDraw(true)
	self.Sleeves:SetupBones()
	self.Sleeves:SetParent(self.VM)
	self.Sleeves:AddEffects(EF_BONEMERGE)
	self.Sleeves:AddEffects(EF_BONEMERGE_FASTCULL)
end

function SWEP:_UpdateHands()
	if SERVER then
		SendUserMessage("PHUNBASE_UMSG_UPDATEHANDS", self.Owner)
	else
		local gmod_hands = LocalPlayer():GetHands()
		local gmod_hands_scale = self.INS2_Rig_GMod_Scale
		local currig = GetConVar("pb_ins2_rig"):GetInt()
		local currigsleeve = GetConVar("pb_ins2_rig_sleeve"):GetInt()
		
		local currigskin = GetConVar("pb_ins2_rig_skin"):GetInt()
		local currigskinsleeve = GetConVar("pb_ins2_rig_skin_sleeve"):GetInt()

        // csgo rig related stuff
        local curglove = GetConVar("pb_ins2_csgo_rig_glove"):GetInt()
        local cursleeve = GetConVar("pb_ins2_csgo_rig_sleeve"):GetInt()
		local curskin = GetConVar("pb_ins2_csgo_rig_skin"):GetInt()

		if GetConVar("pb_ins2_rig_use_gmod_hands"):GetInt() == 1 then // gmod hands
			if !self.Hands or !self.INS2_Linker then
				self:_CreateHands()
			end

            self.INS2_Linker:SetModel( "models/gmod4phun/ins2/c_ins2_to_gmod_hands.mdl" ) // gmod linker
			self.Hands:SetModel( gmod_hands:GetModel() )
			self.Hands:SetupBones()
			self.Hands:SetParent(self.INS2_Linker)
			ResetEntityToDefault(self.Hands)
			self:_CopyBodyGroups(gmod_hands, self.Hands)
			
			for i = 0, self.Hands:GetBoneCount()-1 do // rescale bones of gmod hands in case its needed
				local bname = self.Hands:GetBoneName(i)

				if bname and bname != "__INVALIDBONE__" then
					self.Hands:ManipulateBoneScale(i, vec_scale_normal * gmod_hands_scale)
				end
			end

			if GetConVar("pb_ins2_rig_use_gmod_playermodel"):GetInt() == 1 then // playermodel merged as hands
				self.Hands:SetModel( LocalPlayer():GetModel() )
				self.Hands:SetupBones()
				self.Hands:SetParent(self.INS2_Linker)
				ResetEntityToDefault(self.Hands)
				self:_CopyBodyGroups(LocalPlayer(), self.Hands)

				for i = 0, self.Hands:GetBoneCount()-1 do
					local bname = self.Hands:GetBoneName(i)

					if bname and bname != "__INVALIDBONE__" then
						if pmodel_bones[bname] then // scale down all other bones to near zero except the hand bones of playermodel
							self.Hands:ManipulateBoneScale(i, vec_scale_normal * gmod_hands_scale )
						else
							self.Hands:ManipulateBoneScale(i, vec_scale_hide)
						end

						if bname == "ValveBiped.Bip01_Pelvis" then
							self.Hands:ManipulateBonePosition(i, Vector(-32,0,-64))
						end
					end
				end
			end
		else
            if GetConVar("pb_ins2_rig_use_csgo_hands"):GetInt() == 1 then // csgo hands
                if !self.INS2_Linker or !self.CSGO_Glove or !self.CSGO_Sleeve then
                    self:_CreateHands()
                end

                self.INS2_Linker:SetModel( "models/gmod4phun/ins2/c_ins2_csgo_linker.mdl" ) // csgo linker

                ResetEntityToDefault(self.CSGO_Glove)

                self.CSGO_Glove:SetModel(PHUNBASE.INS2_CSGO.RIGS_GLOVE[curglove].model)
                self.CSGO_Glove:SetSkin(curskin - 1)

                for i = 0, #self.CSGO_Glove:GetBodyGroups() do
                    self.CSGO_Glove:SetBodygroup(i, 0)
                end
                for k, v in pairs(PHUNBASE.INS2_CSGO.RIGS_GLOVE[curglove].bg) do
                    self.CSGO_Glove:SetBodygroup(k, v)
                end

                for i = 0, #self.CSGO_Glove:GetMaterials() do
                    self.CSGO_Glove:SetSubMaterial(i, nil)
                end
                for k, v in pairs(PHUNBASE.INS2_CSGO.RIGS_GLOVE[curglove].submats) do
                    self.CSGO_Glove:SetSubMaterial(k, v)
                end

                if PHUNBASE.INS2_CSGO.RIGS_GLOVE[curglove].nosleeve then // sometimes we dont want to use any sleeves
                    self.CSGO_Sleeve:SetModel( "models/gmod4phun/csgo/arms/bare/c_bare_hands.mdl" )
                    self.CSGO_Sleeve:SetBodygroup(0, 1) // makes invisible model
                else
                    self.CSGO_Sleeve:SetModel(PHUNBASE.INS2_CSGO.RIGS_SLEEVE[cursleeve].model)

                    for i = 0, #self.CSGO_Sleeve:GetBodyGroups() do
                        self.CSGO_Sleeve:SetBodygroup(i, 0)
                    end
                    for k, v in pairs(PHUNBASE.INS2_CSGO.RIGS_SLEEVE[cursleeve].bg) do
                        self.CSGO_Sleeve:SetBodygroup(k, v)
                    end

                    for i = 0, #self.CSGO_Sleeve:GetMaterials() do
                        self.CSGO_Sleeve:SetSubMaterial(i, nil)
                    end
                    for k, v in pairs(PHUNBASE.INS2_CSGO.RIGS_SLEEVE[cursleeve].submats) do
                        self.CSGO_Sleeve:SetSubMaterial(k, v)
                    end
                end

                self.CSGO_Glove:SetupBones()
                self.CSGO_Glove:SetParent(self.INS2_Linker)

                self.CSGO_Sleeve:SetupBones()
                self.CSGO_Sleeve:SetParent(self.INS2_Linker)

				for i = 0, self.CSGO_Glove:GetBoneCount()-1 do
					local bname = self.CSGO_Glove:GetBoneName(i)

					if bname and bname != "__INVALIDBONE__" then
						if ins2_csgo_rig_bones[bname] then
							self.CSGO_Glove:ManipulateBoneScale(i, Vector(1,1,1) * csgorigscalevec)
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
				
				self.Hands:SetSkin(currigskin)

                for k, v in pairs(PHUNBASE.INS2.RIGS[currig].bg) do
                    self.Hands:SetBodygroup(k, v)
                end

                for k, v in pairs(PHUNBASE.INS2.RIGS[currig].submats) do
                    self.Hands:SetSubMaterial(k, v)
                end
            end
		end
		
		if !self.Sleeves then
			self:_CreateHands()
		end

		self.Sleeves:SetModel(PHUNBASE.INS2.RIGS_SLEEVE[currigsleeve].model)
		self.Sleeves:SetupBones()
		self.Sleeves:SetParent(self.VM)
		ResetEntityToDefault(self.Sleeves)
		
		self.Sleeves:SetSkin(currigskinsleeve)

		for k, v in pairs(PHUNBASE.INS2.RIGS_SLEEVE[currigsleeve].bg) do
			self.Sleeves:SetBodygroup(k, v)
		end

		for k, v in pairs(PHUNBASE.INS2.RIGS_SLEEVE[currigsleeve].submats) do
			self.Sleeves:SetSubMaterial(k, v)
		end
		
	end
end

function SWEP:_drawHands()
	if self.UseHands then
		if GetConVar("pb_ins2_rig_use_csgo_hands"):GetInt() == 1 then // gmod hands
			if self.CSGO_Glove then
				self.CSGO_Glove:DrawModel()
			end
			if self.CSGO_Sleeve then
				self.CSGO_Sleeve:DrawModel()
			end
		else
			if GetConVar("pb_ins2_rig_use_gmod_hands"):GetInt() == 1 then // gmod hands
				if self.Hands then
					self.Hands.GetPlayerColor = self._GetPlayerColor
					self.Hands:DrawModel()
				end
			else
				if self.Hands then
					self.Hands:DrawModel()
				end
				if self.Sleeves then
					self.Sleeves:DrawModel()
				end
			end
		end
	end
end
