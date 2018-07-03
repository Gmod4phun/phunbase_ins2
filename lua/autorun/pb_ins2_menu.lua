PHUNBASE = PHUNBASE or {}
PHUNBASE.INS2 = PHUNBASE.INS2 or {}
PHUNBASE.INS2_CSGO = PHUNBASE.INS2_CSGO or {}

if !CLIENT then return end

AddCSLuaFile()

CreateClientConVar("pb_ins2_rig", 1, true, false)
CreateClientConVar("pb_ins2_rig_use_gmod_hands", 0, true, false)
CreateClientConVar("pb_ins2_rig_use_gmod_playermodel", 0, true, false)

CreateClientConVar("pb_ins2_csgo_rig_glove", 1, true, false)
CreateClientConVar("pb_ins2_csgo_rig_sleeve", 1, true, false)
CreateClientConVar("pb_ins2_csgo_rig_skin", 1, true, false)
CreateClientConVar("pb_ins2_rig_use_csgo_hands", 0, true, false)

PHUNBASE.INS2.RIGS = {}

PHUNBASE.INS2.RIG_ADD = function(name, model, bg, submats)
	if PHUNBASE.INS2.RIGS[name] then return end // return if rig is already registered
	if bg == nil then bg = {} end
	if submats == nil then submats = {} end
	table.insert(PHUNBASE.INS2.RIGS, {["name"] = name, ["model"] = model, ["bg"] = bg, ["submats"] = submats})
	PHUNBASE.INS2.RIGS[name] = {["name"] = name, ["model"] = model, ["bg"] = bg, ["submats"] = submats}
end

PHUNBASE.INS2_CSGO.RIGS_GLOVE = {}
PHUNBASE.INS2_CSGO.RIGS_SLEEVE = {}

PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE = function(name, model, bg, nosleeve, submats)
	if bg == nil then bg = {} end
	if nosleeve == nil then nosleeve = false end
	if submats == nil then submats = {} end
	table.insert(PHUNBASE.INS2_CSGO.RIGS_GLOVE, {["name"] = name, ["model"] = model, ["bg"] = bg, ["nosleeve"] = nosleeve, ["submats"] = submats})
end

PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE = function(name, model, bg, submats)
	if bg == nil then bg = {} end
	if submats == nil then submats = {} end
	table.insert(PHUNBASE.INS2_CSGO.RIGS_SLEEVE, {["name"] = name, ["model"] = model, ["bg"] = bg, ["submats"] = submats})
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

// csgo hands for ins2
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("No gloves", "models/gmod4phun/csgo/arms/bare/c_bare_hands.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Anarchist", "models/gmod4phun/csgo/arms/anarchist/c_glove_anarchist.mdl", nil, true)
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Fingerless", "models/gmod4phun/csgo/arms/glove_fingerless/c_glove_fingerless.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Leather Fullfinger", "models/gmod4phun/csgo/arms/glove_fullfinger/c_glove_fullfinger.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Oakley (Tan)", "models/gmod4phun/csgo/arms/glove_hardknuckle/c_glove_hardknuckle.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Oakley (Black)", "models/gmod4phun/csgo/arms/glove_hardknuckle/c_glove_hardknuckle.mdl", nil, nil, {[0] = "gmod4phun/csgo/arms/glove_hardknuckle/glove_hardknuckle_black"})
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Oakley (Blue)", "models/gmod4phun/csgo/arms/glove_hardknuckle/c_glove_hardknuckle.mdl", nil, nil, {[0] = "gmod4phun/csgo/arms/glove_hardknuckle/glove_hardknuckle_blue"})
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Oakley Fingerless (Tan)", "models/gmod4phun/csgo/arms/glove_hardknuckle/c_glove_hardknuckle.mdl", {[0] = 1, [1] = 1})
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Oakley Fingerless (Black)", "models/gmod4phun/csgo/arms/glove_hardknuckle/c_glove_hardknuckle.mdl", {[0] = 1, [1] = 1}, nil, {[0] = "gmod4phun/csgo/arms/glove_hardknuckle/glove_hardknuckle_black"})
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Oakley Fingerless (Blue)", "models/gmod4phun/csgo/arms/glove_hardknuckle/c_glove_hardknuckle.mdl", {[0] = 1, [1] = 1}, nil, {[0] = "gmod4phun/csgo/arms/glove_hardknuckle/glove_hardknuckle_blue"})
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Hand Wraps", "models/gmod4phun/csgo/arms/glove_handwrap_leathery/c_glove_handwrap_leathery.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Bloodhound Gloves", "models/gmod4phun/csgo/arms/glove_bloodhound/c_glove_bloodhound.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Moto Gloves", "models/gmod4phun/csgo/arms/glove_motorcycle/c_glove_motorcycle.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Driver Gloves", "models/gmod4phun/csgo/arms/glove_slick/c_glove_slick.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Specialist Gloves", "models/gmod4phun/csgo/arms/glove_specialist/c_glove_specialist.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Sport Gloves", "models/gmod4phun/csgo/arms/glove_sporty/c_glove_sporty.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_GLOVE("Hydra Gloves", "models/gmod4phun/csgo/arms/glove_bloodhound/c_glove_bloodhound_hydra.mdl")

PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("No sleeves", "models/gmod4phun/csgo/arms/bare/c_bare_hands.mdl", {[0] = 1})
PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("Watch", "models/gmod4phun/csgo/arms/pirate/c_pirate_watch.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("Anarchist", "models/gmod4phun/csgo/arms/anarchist/c_sleeve_anarchist.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("Balkan", "models/gmod4phun/csgo/arms/balkan/c_sleeve_balkan.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("FBI", "models/gmod4phun/csgo/arms/fbi/c_sleeve_fbi.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("GIGN", "models/gmod4phun/csgo/arms/gign/c_sleeve_gign.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("GSG9", "models/gmod4phun/csgo/arms/gsg9/c_sleeve_gsg9.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("IDF", "models/gmod4phun/csgo/arms/idf/c_sleeve_idf.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("Heavy Suit (T)", "models/gmod4phun/csgo/arms/phoenix_heavy/c_sleeve_heavy.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("Heavy Suit (CT)", "models/gmod4phun/csgo/arms/phoenix_heavy/c_sleeve_heavy.mdl", {[0] = 1})
PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("Professional", "models/gmod4phun/csgo/arms/professional/c_sleeve_professional.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("SAS", "models/gmod4phun/csgo/arms/sas/c_sleeve_sas.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("Separatist", "models/gmod4phun/csgo/arms/separatist/c_sleeve_separatist.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("ST6", "models/gmod4phun/csgo/arms/st6/c_sleeve_st6.mdl")
PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("MARPAT Desert", "models/gmod4phun/csgo/arms/st6/c_sleeve_st6.mdl", nil, {[0] = "gmod4phun/csgo/arms/st6/sleeve_digicamo"})
PHUNBASE.INS2_CSGO.RIG_ADD_SLEEVE("SWAT", "models/gmod4phun/csgo/arms/swat/c_sleeve_swat.mdl")

local function PB_INS2_MENU_PANEL(panel)
	panel:ClearControls()
	panel:AddControl("Label", {Text = "INS2 Base Weapons Hands"})
	
	panel:AddControl("CheckBox", {Label = "Use GMod Player Hands?", Command = "pb_ins2_rig_use_gmod_hands"})
	panel:AddControl("CheckBox", {Label = "Use the Playermodel merged as Hands?", Command = "pb_ins2_rig_use_gmod_playermodel"})
	
	// GLOVES
	panel:AddControl("Label", {Text = "\nINS2 Rig Options"})
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
    
    /*
    // UNFINISHED!
    // CSGO Rigs
    //

	panel:AddControl("Label", {Text = "\nCS:GO Rig Options"})
    panel:AddControl("CheckBox", {Label = "Use CS:GO Rigs?", Command = "pb_ins2_rig_use_csgo_hands"})
	
	// GLOVES
	panel:AddControl("Label", {Text = "Gloves"})
	local glove_selector = vgui.Create("DComboBox", panel)
	local curglove = GetConVar("pb_ins2_csgo_rig_glove"):GetInt()
	
	if #PHUNBASE.INS2_CSGO.RIGS_GLOVE > 0 then
		if curglove > 0 then
			glove_selector:SetValue( curglove..": "..PHUNBASE.INS2_CSGO.RIGS_GLOVE[curglove].name )
		else
			glove_selector:SetValue( "1"..": "..PHUNBASE.INS2_CSGO.RIGS_GLOVE[1].name  )
		end
		for i = 1, #PHUNBASE.INS2_CSGO.RIGS_GLOVE do
			glove_selector:AddChoice( i..": "..PHUNBASE.INS2_CSGO.RIGS_GLOVE[i].name )
		end
	else
		glove_selector:SetValue("No Rigs available yet")
	end
	
	glove_selector.OnSelect = function(panel, index, value)
		GetConVar("pb_ins2_csgo_rig_glove"):SetInt( index )
	end
	
	glove_selector:SetSortItems(false)
	panel:AddItem(glove_selector)
	
	// SLEEVES
	panel:AddControl("Label", {Text = "Sleeves"})
	local sleeve_selector = vgui.Create("DComboBox", panel)
	local cursleeve = GetConVar("pb_ins2_csgo_rig_sleeve"):GetInt()
	
	if #PHUNBASE.INS2_CSGO.RIGS_SLEEVE > 0 then
		if cursleeve > 0 then
			sleeve_selector:SetValue( cursleeve..": "..PHUNBASE.INS2_CSGO.RIGS_SLEEVE[cursleeve].name )
		else
			sleeve_selector:SetValue( "1"..": "..PHUNBASE.INS2_CSGO.RIGS_SLEEVE[1].name  )
		end
		for i = 1, #PHUNBASE.INS2_CSGO.RIGS_SLEEVE do
			sleeve_selector:AddChoice( i..": "..PHUNBASE.INS2_CSGO.RIGS_SLEEVE[i].name )
		end
	else
		sleeve_selector:SetValue("No Rigs available yet")
	end
	
	sleeve_selector.OnSelect = function(panel, index, value)
		GetConVar("pb_ins2_csgo_rig_sleeve"):SetInt( index )
	end
	
	sleeve_selector:SetSortItems(false)
	panel:AddItem(sleeve_selector)
	
	local skin_selector = vgui.Create("DNumSlider", panel)
	skin_selector:SetDecimals(0)
	skin_selector:SetMin(1)
	skin_selector:SetMax(4)
	skin_selector:SetValue(GetConVar("pb_ins2_csgo_rig_skin"):GetInt())
	skin_selector:SetConVar("pb_ins2_csgo_rig_skin")
	skin_selector:SetText("Skin Color")
	panel:AddItem(skin_selector)
    */
    
    // panel update
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
cvars.AddChangeCallback("pb_ins2_rig_use_csgo_hands", PB_INS2_HandChange)

cvars.AddChangeCallback("pb_ins2_csgo_rig_glove", PB_INS2_HandChange)
cvars.AddChangeCallback("pb_ins2_csgo_rig_sleeve", PB_INS2_HandChange)
cvars.AddChangeCallback("pb_ins2_csgo_rig_skin", PB_INS2_HandChange)
