PHUNBASE = PHUNBASE or {}
PHUNBASE.INS2 = PHUNBASE.INS2 or {}

if !CLIENT then return end

AddCSLuaFile()

CreateClientConVar("pb_ins2_rig", 1, true, false)
CreateClientConVar("pb_ins2_rig_use_gmod_hands", 0, true, false)
CreateClientConVar("pb_ins2_rig_use_gmod_playermodel", 0, true, false)

PHUNBASE.INS2.RIGS = {}

PHUNBASE.INS2.RIG_ADD = function(name, model, bg, submats)
	if PHUNBASE.INS2.RIGS[name] then return end // return if rig is already registered
	if bg == nil then bg = {} end
	if submats == nil then submats = {} end
	table.insert(PHUNBASE.INS2.RIGS, {["name"] = name, ["model"] = model, ["bg"] = bg, ["submats"] = submats})
	PHUNBASE.INS2.RIGS[name] = {["name"] = name, ["model"] = model, ["bg"] = bg, ["submats"] = submats}
end

PHUNBASE.INS2.RIG_ADD("Insurgent (Light)", "models/weapons/v_hands_ins_l.mdl")
PHUNBASE.INS2.RIG_ADD("Insurgent (Medium)", "models/weapons/v_hands_ins_m.mdl")
PHUNBASE.INS2.RIG_ADD("Insurgent (Heavy)", "models/weapons/v_hands_ins_h.mdl")
PHUNBASE.INS2.RIG_ADD("Security (Light)", "models/weapons/v_hands_sec_l.mdl")
PHUNBASE.INS2.RIG_ADD("Security (Medium)", "models/weapons/v_hands_sec_m.mdl")
PHUNBASE.INS2.RIG_ADD("Security (Heavy)", "models/weapons/v_hands_sec_h.mdl")
PHUNBASE.INS2.RIG_ADD("V.I.P.", "models/weapons/v_hands_vip.mdl")

PHUNBASE.INS2.RIG_ADD("CT Black (Light)", "models/gmod4phun/ins2/arms/mrb_arms_ct.mdl", {[0] = 1})
PHUNBASE.INS2.RIG_ADD("CT Black (Medium)", "models/gmod4phun/ins2/arms/mrb_arms_ct.mdl", {[0] = 0})
PHUNBASE.INS2.RIG_ADD("CT Black (Heavy)", "models/gmod4phun/ins2/arms/mrb_arms_ct.mdl", {[0] = 2})
PHUNBASE.INS2.RIG_ADD("CT Tan (Light)", "models/gmod4phun/ins2/arms/mrb_arms_ct.mdl", {[0] = 4})
PHUNBASE.INS2.RIG_ADD("CT Tan (Medium)", "models/gmod4phun/ins2/arms/mrb_arms_ct.mdl", {[0] = 3})
PHUNBASE.INS2.RIG_ADD("CT Tan (Heavy)", "models/gmod4phun/ins2/arms/mrb_arms_ct.mdl", {[0] = 5})

PHUNBASE.INS2.RIG_ADD("VIP Black (Light)", "models/gmod4phun/ins2/arms/mrb_arms_ct.mdl", {[0] = 1}, {[0] = "gmod4phun/ins2/arms/glove_vip_color"})
PHUNBASE.INS2.RIG_ADD("VIP Black (Medium)", "models/gmod4phun/ins2/arms/mrb_arms_ct.mdl", {[0] = 0}, {[0] = "gmod4phun/ins2/arms/glove_vip_color"})
PHUNBASE.INS2.RIG_ADD("VIP Black (Heavy)", "models/gmod4phun/ins2/arms/mrb_arms_ct.mdl", {[0] = 2}, {[0] = "gmod4phun/ins2/arms/glove_vip_color"})
PHUNBASE.INS2.RIG_ADD("VIP Tan (Light)", "models/gmod4phun/ins2/arms/mrb_arms_ct.mdl", {[0] = 4}, {[3] = "gmod4phun/ins2/arms/glove_vip_color"})
PHUNBASE.INS2.RIG_ADD("VIP Tan (Medium)", "models/gmod4phun/ins2/arms/mrb_arms_ct.mdl", {[0] = 3}, {[3] = "gmod4phun/ins2/arms/glove_vip_color"})
PHUNBASE.INS2.RIG_ADD("VIP Tan (Heavy)", "models/gmod4phun/ins2/arms/mrb_arms_ct.mdl", {[0] = 5}, {[3] = "gmod4phun/ins2/arms/glove_vip_color"})

PHUNBASE.INS2.RIG_ADD("T Black (Light)", "models/gmod4phun/ins2/arms/mrb_arms_t.mdl", {[0] = 0})
PHUNBASE.INS2.RIG_ADD("T Black (Medium)", "models/gmod4phun/ins2/arms/mrb_arms_t.mdl", {[0] = 1})

if PHUNBASE.INS2.DOIHANDS then
	PHUNBASE.INS2.RIG_ADD("Brit Hands", "models/v_hands_brit.mdl")
	PHUNBASE.INS2.RIG_ADD("Brit Gloves", "models/v_hands_brit_gloves.mdl")
	PHUNBASE.INS2.RIG_ADD("Brit Indian", "models/v_hands_brit_indian.mdl")
	PHUNBASE.INS2.RIG_ADD("Ger Hands", "models/v_hands_ger.mdl")
	PHUNBASE.INS2.RIG_ADD("Ger Gloves", "models/v_hands_ger_gloves.mdl")
	PHUNBASE.INS2.RIG_ADD("Ger Gloves Para.", "models/v_hands_ger_gloves_paratrooper.mdl")
	PHUNBASE.INS2.RIG_ADD("Ger Gloves Wehr.", "models/v_hands_ger_gloves_wehrmacht.mdl")
	PHUNBASE.INS2.RIG_ADD("Ger Hands Wehr.", "models/v_hands_ger_wehrmacht.mdl")
	PHUNBASE.INS2.RIG_ADD("Brit Short", "models/v_hands_short_brit.mdl")
	PHUNBASE.INS2.RIG_ADD("Brit Indian Short", "models/v_hands_short_brit_indian.mdl")
	PHUNBASE.INS2.RIG_ADD("Ger Short", "models/v_hands_short_ger.mdl")
	PHUNBASE.INS2.RIG_ADD("US Short", "models/v_hands_short_us.mdl")
	PHUNBASE.INS2.RIG_ADD("US Buffalo Short", "models/v_hands_short_us_buffalo.mdl")
	PHUNBASE.INS2.RIG_ADD("US Hands", "models/v_hands_us.mdl")
	PHUNBASE.INS2.RIG_ADD("US Buffalo", "models/v_hands_us_buffalo.mdl")
	PHUNBASE.INS2.RIG_ADD("US Glove", "models/v_hands_us_glove.mdl")
	PHUNBASE.INS2.RIG_ADD("US Glove Air.", "models/v_hands_us_glove_airborne.mdl")
end

local function PB_INS2_MENU_PANEL(panel)
	panel:ClearControls()
	panel:AddControl("Label", {Text = "INS2 Weapons Hands"})
	
	panel:AddControl("CheckBox", {Label = "Use GMod Player Hands?", Command = "pb_ins2_rig_use_gmod_hands"})
	panel:AddControl("CheckBox", {Label = "Use the Playermodel merged as Hands?", Command = "pb_ins2_rig_use_gmod_playermodel"})
	
	// GLOVES
	panel:AddControl("Label", {Text = "Hands"})
	local rig_selector = vgui.Create("DComboBox", panel)
	local currig = GetConVar("pb_ins2_rig"):GetInt()
	
	if #PHUNBASE.INS2.RIGS > 0 then
		if currig > 0 and PHUNBASE.INS2.RIGS[currig] then
			rig_selector:SetValue( currig..": "..PHUNBASE.INS2.RIGS[currig].name )
		else
			rig_selector:SetValue( "1"..": "..PHUNBASE.INS2.RIGS[1].name  )
		end
		for i = 1, #PHUNBASE.INS2.RIGS do
			rig_selector:AddChoice( i..": "..PHUNBASE.INS2.RIGS[i].name )
		end
	else
		rig_selector:SetValue("No Rigs available yet")
	end
	
	rig_selector.OnSelect = function(panel, index, value)
		GetConVar("pb_ins2_rig"):SetInt( index )
	end
	
	rig_selector:SetSortItems(false)
	panel:AddItem(rig_selector)
	
	local panel_update_button = vgui.Create("DButton", panel)
	panel_update_button:SetText("Refresh menu")
	panel_update_button.DoClick = function() PB_INS2_MENU_PANEL(panel) end
	panel:AddItem(panel_update_button)
end

local function PB_INS2_PopulateToolMenu()
	spawnmenu.AddToolMenuOption("Utilities", "PHUNBASE", "PB_INS2_MENU", "Insurgency", "", "", PB_INS2_MENU_PANEL)
end

hook.Add("PopulateToolMenu", "PB_INS2_PopulateToolMenu", PB_INS2_PopulateToolMenu)

local function PB_INS2_HandChange()
	local ply = LocalPlayer()
	local wep = ply:GetActiveWeapon()
	
	if IsValid(wep) and wep.PHUNBASEWEP and wep.PHUNBASEWEP_INS2 then
		wep:_UpdateHands()
	end
end
cvars.AddChangeCallback("pb_ins2_rig", PB_INS2_HandChange)
cvars.AddChangeCallback("pb_ins2_rig_use_gmod_hands", PB_INS2_HandChange)
cvars.AddChangeCallback("pb_ins2_rig_use_gmod_playermodel", PB_INS2_HandChange)
