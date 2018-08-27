if CLIENT then
	spawnmenu.AddContentType("phunbase_weapon_ins2", function(container, obj) // 3d model spawn icons for insurgency weapons
	
		if ( !obj.material ) then return end
		if ( !obj.nicename ) then return end
		if ( !obj.spawnname ) then return end

		local icon = vgui.Create( "ContentIcon", container )
		icon:SetContentType( "weapon" )
		icon:SetSpawnName( obj.spawnname )
		icon:SetName("")
		icon:SetMaterial( obj.material )
		icon:SetAdminOnly( obj.admin )
		icon:SetColor( Color( 135, 206, 250, 255 ) )
		icon:SetTooltip( "INS2 | "..obj.nicename )
		
		icon.DoClick = function()
			RunConsoleCommand( "gm_giveswep", obj.spawnname )
			surface.PlaySound( "ui/buttonclickrelease.wav" )
		end

		icon.DoMiddleClick = function()
			RunConsoleCommand( "gm_spawnswep", obj.spawnname )
			surface.PlaySound( "ui/buttonclickrelease.wav" )
		end

		icon.OpenMenu = function( icon )
			local menu = DermaMenu()
				menu:AddOption( "Copy to Clipboard", function() SetClipboardText( obj.spawnname ) end )
				menu:AddOption( "Spawn Using Toolgun", function() RunConsoleCommand( "gmod_tool", "creator" ) RunConsoleCommand( "creator_type", "3" ) RunConsoleCommand( "creator_name", obj.spawnname ) end )
				menu:AddOption( "Rebuild Icon", function() icon:PB_UpdateSpawnIcon() end )
				menu:AddSpacer()
				menu:AddOption( "Delete", function() icon:Remove() hook.Run( "SpawnlistContentChanged", icon ) end )
			menu:Open()
		end
		
		local wepTable = weapons.GetStored(obj.spawnname)
		local params = wepTable.INS2_IconParams
		
		if !params then
			if ( IsValid( container ) ) then
				container:Add( icon )
			end
			return icon
		end // if no icon params exist, keep default
		
		icon.Paint = function(s, w, h) return end
		icon.Label:SetTextColor(Color(255,255,255,255))
		
		local modelpanel = vgui.Create("DModelPanel", icon)
		icon.PB_MODELPANEL = modelpanel
		icon.PB_WEPOBJ = obj
		
		modelpanel:SetSize(icon:GetSize())
		modelpanel:SetModel(wepTable.ViewModel)
		modelpanel:SetFOV( 60 )
		modelpanel:SetCamPos( Vector( -params.offset, -params.dist * 2, 0 ) )
		modelpanel:SetLookAng( Angle(0,90,0) )
		
		modelpanel:SetDirectionalLight( BOX_LEFT, Color( 255, 255, 255 ) )
		modelpanel:SetDirectionalLight( BOX_BOTTOM, Color( 255, 255, 255 ) )
		modelpanel:SetDirectionalLight( BOX_TOP, Color( 255, 255, 255 ) )
		
		modelpanel.PB_ShouldSpin = params.spin
		modelpanel.PB_Bodygroups = params.bodygroups
		modelpanel.PB_Mergemodels = params.mergemodels
		
		modelpanel.PB_ActiveMergedModels = {}
		modelpanel.PB_Finished = false

		function modelpanel:LayoutEntity()
			local mdl = self.Entity
			mdl:SetSequence("menu")
			self:RunAnimation()
			mdl:SetAngles( self.PB_ShouldSpin and Angle( 0, RealTime() * 100 % 360, 0 ) or Angle(0,180,0) )
			
			if !self.PB_Finished then
				for i = 0, #mdl:GetBodyGroups() do
					mdl:SetBodygroup(i, 0)
				end
				if self.PB_Bodygroups then
					for k, v in pairs(self.PB_Bodygroups) do
						if isnumber(k) and isnumber(v) then
							mdl:SetBodygroup(k, v)
						end
					end
				end
				for k, v in pairs(self.PB_ActiveMergedModels) do
					if IsValid(v) then v:Remove() end
				end
				if self.PB_Mergemodels then
					for k, v in pairs(self.PB_Mergemodels) do
						if isstring(v) then
							self.PB_ActiveMergedModels[k] = ClientsideModel(v, RENDERGROUP_BOTH)
							self.PB_ActiveMergedModels[k]:SetNoDraw(true)
							self.PB_ActiveMergedModels[k]:SetParent(mdl)
							self.PB_ActiveMergedModels[k]:AddEffects(EF_BONEMERGE)
							self.PB_ActiveMergedModels[k]:AddEffects(EF_BONEMERGE_FASTCULL)
						end
					end
				end
				self.PB_Finished = true
			end
		end
		
		function modelpanel:PostDrawModel(ent)
			for k, v in pairs(self.PB_ActiveMergedModels) do
				if IsValid(v) then
					v:DrawModel()
				end
			end
		end
		
		modelpanel.DoClick = function(self) icon:DoClick() end
		modelpanel.DoMiddleClick = function(self) icon:DoMiddleClick() end
		modelpanel.DoRightClick = function(self) icon:OpenMenu() end
		
		// edit by Daxble
		modelpanel.Paint = function( self, w, h )

			if ( !IsValid( self.Entity ) ) then return end

			local x, y = self:LocalToScreen( 0, 0 )

			self:LayoutEntity( self.Entity )

			local ang = self.aLookAngle
			if ( !ang ) then
				ang = ( self.vLookatPos - self.vCamPos ):Angle()
			end

			cam.Start3D( self.vCamPos, ang, self.fFOV, x, y, w, h, 1, self.FarZ )
				render.SuppressEngineLighting( true )
				render.SetLightingOrigin( self.Entity:GetPos() )
				render.ResetModelLighting( self.colAmbientLight.r / 255, self.colAmbientLight.g / 255, self.colAmbientLight.b / 255 )
				render.SetColorModulation( self.colColor.r / 255, self.colColor.g / 255, self.colColor.b / 255 )
				render.SetBlend( ( self:GetAlpha() / 255 ) * ( self.colColor.a / 255 ) )

				for i = 0, 6 do
					local col = self.DirectionalLight[ i ]
					if ( col ) then
						render.SetModelLighting( i, col.r / 255, col.g / 255, col.b / 255 )
					end
				end

				self:DrawModel()

				render.SuppressEngineLighting( false )
			cam.End3D()

			self.LastPaint = RealTime()

			local left = 1
			local top = 1
			local right = w - 1
			local bottom = h - 1

			surface.SetDrawColor( 30, 30, 30, 180 )
			surface.DrawLine( left, top + 1, left, bottom - 1 )
			surface.DrawLine( left + 1, top, right - 1, top )
			surface.DrawLine( right, top + 1, right, bottom - 1 )
			surface.DrawLine( left + 1, bottom, right - 1, bottom )
			surface.DrawLine( left + 1, top + 1, left + 1, bottom - 1 )
			surface.DrawLine( left + 1, top + 1, right - 1, top + 1 )
			surface.DrawLine( right - 1, top + 1, right - 1, bottom - 1 )
			surface.DrawLine( left + 1, bottom - 1, right - 1, bottom - 1 )

			surface.SetDrawColor( 200, 200, 200, 180 )
			surface.DrawLine( left + 2, top + 2, left + 2, bottom - 2 )
			surface.DrawLine( left + 2, top + 2, right - 2, top + 2 )
			surface.DrawLine( right - 2, top + 2, right - 2, bottom - 2 )
			surface.DrawLine( left + 2, bottom - 2, right - 2, bottom - 2 )

			surface.SetDrawColor( 48, 48, 48, 200 )
			surface.DrawRect( 0 + 4, h - ( h * 0.15 ) - 2, w - 8, h * 0.15 )

			surface.SetDrawColor( 255, 255, 255, 255 )
			surface.SetFont( "DermaDefault" )
			local textWidth, textHeight = surface.GetTextSize( "INS2 | "..obj.nicename )
			surface.SetTextPos( w / 2 - ( textWidth / 2 ), ( h - ( h * 0.15 / 2 ) - 2 - ( textHeight / 2 ) ) )
			surface.DrawText( "INS2 | "..obj.nicename )
		end
		//
		
		function icon:PB_UpdateSpawnIcon()
			local mp = self.PB_MODELPANEL
			local obj = self.PB_WEPOBJ
			local wepTable = weapons.GetStored(obj.spawnname)
			local params = wepTable.INS2_IconParams
			
			if !params then return end
			
			icon:SetName("")
			icon:SetTooltip( "INS2 | "..obj.nicename )
			
			mp:SetModel(wepTable.ViewModel)
			mp:SetCamPos( Vector( -params.offset, -params.dist * 2, 0 ) )
			
			mp.PB_ShouldSpin = params.spin
			mp.PB_Bodygroups = params.bodygroups
			mp.PB_Mergemodels = params.mergemodels
			mp.PB_Finished = false
		end

		if ( IsValid( container ) ) then
			container:Add( icon )
		end
		
		PHUNBASE.SpawnIcons[icon:GetSpawnName()] = icon

		return icon

	end)
end
