--*---------------------------------------------*--
--* dir parent		: addon	     	   	 		*--
--* File name		: tempBagEquip.lua			*--
--* Coded by		: Valdiney Eviles			*--
--* Discord			: Eviles#2759				*--
--* Credits			: @Victor Nesterov			*--
--*---------------------------------------------*--
print("* Loading TempBagEquip.lua")

tempBagEquip							= {}
tempBagEquip.Conf						= {}
tempBagEquip.Conf.Type					= {}
tempBagEquip.Conf.Slot					= {}

tempBagEquip.Conf.TimerCycle			= 1						-- Time in seconds to execute the cha_timer verification.

tempBagEquip.Conf.MaxSlot				= 15					-- Maximum temporary bag slots.

tempBagEquip.Conf.Type.Bracelet			= 81					-- Bracelet itemtype (iteminfo.txt)
tempBagEquip.Conf.Type.Belt				= 82					-- Belt itemtype (iteminfo.txt)
tempBagEquip.Conf.Type.Handguard		= 83					-- Handguard itemtype (iteminfo.txt)

tempBagEquip.Conf.Slot.Bracelet_Left	= 0						-- Temporary bag slot which left bracelet will provide attributes when equipped (slot 1).
tempBagEquip.Conf.Slot.Bracelet_Right	= 1						-- Temporary bag slot which right bracelet will provide attributes when equipped (slot 2).
tempBagEquip.Conf.Slot.Belt				= 2						-- Temporary bag slot which belt will provide attributes when equipped (slot 3).
tempBagEquip.Conf.Slot.Handguard		= 3						-- Temporary bag slot which handguard will provide attributes when equipped (slot 3).

tempBagEquip.Conf.State					= {
	leftBracelet						= 208,					-- State for left bracelet bonuses (skilleff.txt)
	rightBracelet						= 209,					-- State for right bracelet bonuses (skilleff.txt)
	belt								= 210,					-- State for belt bonuses (skilleff.txt)
	handguard							= 211,					-- State for handguard bonuses (skilleff.txt)
}

tempBagEquip.Conf.Job					= {
	[8]  								= {7294, 7295, 7296}, 	-- Champion
	[9]  								= {7297, 7298, 7299}, 	-- Crusader
	[12] 								= {7309, 7310, 7311}, 	-- Sharpshooter
	[13] 								= {7300, 7301, 7302}, 	-- Cleric
	[14] 								= {7303, 7304, 7305}, 	-- Seal Master
	[16] 								= {7306, 7307, 7308}, 	-- Voyager
}

tempBagEquip.Conf.Slot.Req				= {
	[tempBagEquip.Conf.Type.Bracelet]	= {tempBagEquip.Conf.Slot.Bracelet_Left, tempBagEquip.Conf.Slot.Bracelet_Right},
	[tempBagEquip.Conf.Type.Belt]		= {tempBagEquip.Conf.Slot.Belt},
	[tempBagEquip.Conf.Type.Handguard]	= {tempBagEquip.Conf.Slot.Handguard},
}

tempBagEquip.Talk						= {
	"%s \237\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238 \226\238 \226\240\229\236\255 \239\235\224\226\224\237\232\255!",
	"\211 \226\224\241 \228\238\235\230\237\224 \225\251\242\252 1 \241\226\238\225\238\228\237\224\255 \255\247\229\233\234\224 \226\238 \226\240\229\236\229\237\237\238\233 \241\243\236\234\229 \247\242\238\225\251 \232\241\239\238\235\252\231\238\226\224\242\252 %s!",
	"%s \237\229 \241\238\238\242\226\229\242\241\242\226\243\229\242 \242\240\229\225\238\226\224\237\232\255\236 \194\224\248\229\227\238 \234\235\224\241\241\224 \228\235\255 \232\241\239\238\235\252\231\238\226\224\237\232\255!",
	"\194\224\248 \243\240\238\226\229\237\252 \228\238\235\230\229\237 \225\251\242\252 \237\229 \236\229\237\229\229 65 \247\242\238\225\251 \232\241\239\238\235\252\231\238\226\224\242\252 %s!",
	"\221\234\232\239\232\240\238\226\224\237\238: %s"
}

-- Prevent data reloading
if (TBE_NO_RELOAD == nil) then
	-- Item attr table
	item_attr = {}
	-- Characters table
	role_equip = {}
end
TBE_NO_RELOAD = true

PIO_Equip_Gear							= function(role, Item)
	-- Help function to check if table has a value
	local function Contains(arr, val)
		for i 							= 1, table.getn(arr) do
			if (arr[i] == val) then 
				return true
			end
		end
		return false
	end
	-- Help function to check how many items in the temp bag
	local function CheckTempBagItem(role, id)
		local n 						= 0
		for i 							= 0, tempBagEquip.Conf.MaxSlot, 1 do
			local Cell 					= GetChaItem(role, 3, i)
			if (Cell ~= nil and GetItemID(Cell) == id) then
				n 						= n + 1
			end
		end
		return n	
	end	
	-- Help function to get last free cell
	local function GetLastFreeCell(role)
		for i 							= 0, tempBagEquip.Conf.MaxSlot, 1 do
			local Cell 					= GetChaItem(role, 3, i)
			if (Cell == nil) then
				return i
			end
		end
		return -1	
	end	
	
	-- The item ID and type
	local item_id 						= GetItemID(Item)
	local item_type 					= GetItemType(Item)	
	
	-- Check that player is not in a boat
	if (ChaIsBoat(role) == 1) then
		BickerNotice(role, string.format(tempBagEquip.Talk[1], GetItemName(item_id)))		
		UseItemFailed(role)
		return
	end	
	
	-- Check if temp bag has free slot
	local tmp_last_free_slot 			= GetLastFreeCell(role)
	if (tmp_last_free_slot == -1) then
		BickerNotice(role, string.format(tempBagEquip.Talk[2], GetItemName(item_id)))		
		UseItemFailed(role)
		return
	end	
	
	-- Check job requirements
	local job_id 						= GetChaAttr(role, ATTR_JOB)
	if (tempBagEquip.Conf.Job[job_id] == nil or Contains(tempBagEquip.Conf.Job[job_id], item_id) == false) then
		BickerNotice(role, string.format(tempBagEquip.Talk[3], GetItemName(item_id)))		
		UseItemFailed(role)
		return
	end	
	
	-- Check level requirements
	if (Lv(role) < 65) then
		BickerNotice(role, string.format(tempBagEquip.Talk[4], GetItemName(item_id)))		
		UseItemFailed(role)
		return
	end	
	
	-- Check if temp bag already has the item
	local item_num 						= CheckTempBagItem(role, item_id)
	if ( (item_num > 1 and item_type == tempBagEquip.Conf.Type.Bracelet) or (item_num > 0 and item_type ~= tempBagEquip.Conf.Type.Bracelet) ) then
		TakeItemBagTemp(role, 0, item_id, 1)
		GiveItem(role, 0, item_id, 1, 4)
		tmp_last_free_slot 				= tmp_last_free_slot - 1
	end	
	
	-- Add the item to the temp bag
	if ( GiveItemX(role, 0, item_id, 1, 4) ) then
		-- Check if the item is equipped
		if (tempBagEquip.Conf.Slot.Req[item_type] ~= nil and Contains(tempBagEquip.Conf.Slot.Req[item_type], tmp_last_free_slot) == true) then
			BickerNotice(role, string.format(tempBagEquip.Talk[5], GetItemName(item_id)))
			
			if (tmp_last_free_slot == tempBagEquip.Conf.Slot.Bracelet_Left) then
				AddState(role, role, tempBagEquip.Conf.State.leftBracelet, 1, 3600)
			elseif (tmp_last_free_slot == tempBagEquip.Conf.Slot.Bracelet_Right) then
				AddState(role, role, tempBagEquip.Conf.State.rightBracelet, 1, 3600)
			elseif (tmp_last_free_slot == tempBagEquip.Conf.Slot.Belt) then
				AddState(role, role, tempBagEquip.Conf.State.belt, 1, 3600)
			elseif (tmp_last_free_slot == tempBagEquip.Conf.Slot.Handguard) then
				AddState(role, role, tempBagEquip.Conf.State.handguard, 1, 3600)
			end
		end
	end	
end

tempBagEquip.Check						= function(role, now_tick)
	if (math.mod(now_tick, tempBagEquip.Conf.TimerCycle) == 0 and now_tick > 0) then
		if (IsPlayer(role) == 1) then
		
			-- Get equip slots from temp bag
			local leftBraceletSlot		= GetChaItem(role, 3, tempBagEquip.Conf.Slot.Bracelet_Left)		
			local rightBraceletSlot		= GetChaItem(role, 3, tempBagEquip.Conf.Slot.Bracelet_Right)
			local beltSlot				= GetChaItem(role, 3, tempBagEquip.Conf.Slot.Belt)	
			local handguardSlot			= GetChaItem(role, 3, tempBagEquip.Conf.Slot.Handguard)	

			-- Check left bracelet slot
			if (leftBraceletSlot ~= nil and GetItemType(leftBraceletSlot) == tempBagEquip.Conf.Type.Bracelet) then
				-- Add effect
				AddState(role, role, tempBagEquip.Conf.State.leftBracelet, 1, 3600)
			else
				-- Remove effect
				if (GetChaStateLv(role, tempBagEquip.Conf.State.leftBracelet) > 0) then
					RemoveState(role, tempBagEquip.Conf.State.leftBracelet)
				end
			end
			
			-- Check right bracelet slot
			if (rightBraceletSlot ~= nil and GetItemType(rightBraceletSlot) == tempBagEquip.Conf.Type.Bracelet) then
				-- Add effect
				AddState(role, role, tempBagEquip.Conf.State.rightBracelet, 1, 3600)
			else
				-- Remove effect
				if (GetChaStateLv(role, tempBagEquip.Conf.State.rightBracelet) > 0) then
					RemoveState(role, tempBagEquip.Conf.State.rightBracelet)
				end
			end
			
			-- Check belt slot
			if (beltSlot ~= nil and GetItemType(beltSlot) == tempBagEquip.Conf.Type.Belt) then
				-- Add effect
				AddState(role, role, tempBagEquip.Conf.State.belt, 1, 3600)
			else
				-- Remove effect
				if (GetChaStateLv(role, tempBagEquip.Conf.State.belt) > 0) then
					RemoveState(role, tempBagEquip.Conf.State.belt)
				end
			end
			
			-- Check handguard slot
			if (handguardSlot ~= nil and GetItemType(handguardSlot) == tempBagEquip.Conf.Type.Handguard) then
				-- Add effect
				AddState(role, role, tempBagEquip.Conf.State.handguard, 1, 3600)
			else
				-- Remove effect
				if (GetChaStateLv(role, tempBagEquip.Conf.State.handguard) > 0) then
					RemoveState(role, tempBagEquip.Conf.State.handguard)
				end
			end
		end
	end			
end

-- Hook for GetItemAttrRange function
local GetItemAttrRange_original = GetItemAttrRange
GetItemAttrRange = function(item_id, attr_id, type_id)
	
	local value = GetItemAttrRange_original(item_id, attr_id, type_id)
	if (item_attr[item_id] == nil) then
		item_attr[item_id] = {}
	end
	
	if (item_attr[item_id][attr_id] == nil) then
		item_attr[item_id][attr_id] = value
	end
	
	return value
end

-- Save item ID in the slot
function SaveItemId(role, cell_id, item_id)

	local cha_id = GetRoleID(role)
	if (role_equip[cha_id] == nil) then
		role_equip[cha_id] = {}
	end
	
	role_equip[cha_id][cell_id] = item_id
	
end

-- Get saved item ID
function GetSavedItemId(role, cell_id)

	local cha_id = GetRoleID(role)
	if (role_equip[cha_id][cell_id] ~= nil) then
		return role_equip[cha_id][cell_id]
	end
	
	return 0
end

-- Get saved item attr
function GetSavedItemAttr(item_id, attr_id)
	
	if (item_attr[item_id][attr_id] ~= nil) then
		return item_attr[item_id][attr_id]
	end
	
	return 0
end

-- Apply item attrs
function ApplyItemAttr(role, cell_id)

	-- Get the item descriptor
	local Item = GetChaItem(role, 3, cell_id)
	if (Item ~= nil) then
	
		-- Get the item ID
		local item_id = GetItemID(Item)
		
		-- Add VALUE attrs to character
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_STR, 0), role, ATTR_STATEV_STR, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_AGI, 0), role, ATTR_STATEV_AGI, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_DEX, 0), role, ATTR_STATEV_DEX, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_CON, 0), role, ATTR_STATEV_CON, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_STA, 0), role, ATTR_STATEV_STA, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_LUK, 0), role, ATTR_STATEV_LUK, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_ASPD, 0), role, ATTR_STATEV_ASPD, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_ADIS, 0), role, ATTR_STATEV_ADIS, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_MNATK, 0), role, ATTR_STATEV_MNATK, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_MXATK, 0), role, ATTR_STATEV_MXATK, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_DEF, 0), role, ATTR_STATEV_DEF, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_MXHP, 0), role, ATTR_STATEV_MXHP, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_MXSP, 0), role, ATTR_STATEV_MXSP, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_FLEE, 0), role, ATTR_STATEV_FLEE, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_HIT, 0), role, ATTR_STATEV_HIT, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_CRT, 0), role, ATTR_STATEV_CRT, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_MF, 0), role, ATTR_STATEV_MF, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_HREC, 0), role, ATTR_STATEV_HREC, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_SREC, 0), role, ATTR_STATEV_SREC, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_MSPD, 0), role, ATTR_STATEV_MSPD, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_COL, 0), role, ATTR_STATEV_COL, "STATE_TEMP_"..cell_id) 
		SetCharaStatev(GetItemAttrRange(item_id, ITEMATTR_VAL_PDEF, 0), role, ATTR_STATEV_PDEF, "STATE_TEMP_"..cell_id) 
		
		-- Add COEF attrs to character
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_STR, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_STR, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_AGI, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_AGI, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_DEX, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_DEX, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_CON, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_CON, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_STA, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_STA, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_LUK, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_LUK, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_ASPD, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_ASPD, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_ADIS, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_ADIS, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_MNATK, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MNATK, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_MXATK, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MXATK, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_DEF, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_DEF, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_MXHP, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MXHP, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_MXSP, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MXSP, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_FLEE, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_FLEE, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_HIT, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_HIT, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_CRT, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_CRT, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_MF, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MF, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_HREC, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_HREC, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_SREC, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_SREC, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_MSPD, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MSPD, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_COL, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_COL, "STATE_TEMP_"..cell_id)
		SetCharaStatev(math.floor(((GetItemAttrRange(item_id, ITEMATTR_COE_PDEF, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_PDEF, "STATE_TEMP_"..cell_id)
	
		-- Refresh character attrs
		RefreshCha(role)
		-- Save item id
		SaveItemId(role, cell_id, item_id)	
	end
end

-- Remove item attrs
function RemoveItemAttr(role, cell_id)
	
	-- Get the item ID
	local item_id = GetSavedItemId(role, cell_id)
	if (item_id ~= 0) then
		
		-- Remove VALUE item attrs
		RemCharaStatev(0, role, ATTR_STATEV_STR, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_AGI, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_DEX, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_CON, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_STA, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_LUK, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_ASPD, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_ADIS, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_MNATK, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_MXATK, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_DEF, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_MXHP, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_MXSP, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_FLEE, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_HIT, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_CRT, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_MF, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_HREC, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_SREC, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_MSPD, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_COL, "STATE_TEMP_"..cell_id) 
		RemCharaStatev(0, role, ATTR_STATEV_PDEF, "STATE_TEMP_"..cell_id) 
		
		-- Remove COEF item attrs
		RemCharaStatev(0, role, ATTR_STATEC_STR, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_AGI, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_DEX, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_CON, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_STA, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_LUK, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_ASPD, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_ADIS, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_MNATK, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_MXATK, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_DEF, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_MXHP, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_MXSP, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_FLEE, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_HIT, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_CRT, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_MF, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_HREC, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_SREC, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_MSPD, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_COL, "STATE_TEMP_"..cell_id)
		RemCharaStatev(0, role, ATTR_STATEC_PDEF, "STATE_TEMP_"..cell_id)
		
		-- Refresh character attrs
		RefreshCha(role)	
	end
end

-- Left bracelet effect 
function PIO_Equip_LeftBracelet_Add(role, statelv)
	ApplyItemAttr(role, tempBagEquip.Conf.Slot.Bracelet_Left)
end

function PIO_Equip_LeftBracelet_Rem(role, statelv)
	RemoveItemAttr(role, tempBagEquip.Conf.Slot.Bracelet_Left)
end

-- Right bracelet effect 
function PIO_Equip_RightBracelet_Add(role, statelv)
	ApplyItemAttr(role, tempBagEquip.Conf.Slot.Bracelet_Right)
end

function PIO_Equip_RightBracelet_Rem(role, statelv)
	RemoveItemAttr(role, tempBagEquip.Conf.Slot.Bracelet_Right)
end

-- Belt effect 
function PIO_Equip_Belt_Add(role, statelv)
	ApplyItemAttr(role, tempBagEquip.Conf.Slot.Belt)
end

function PIO_Equip_Belt_Rem(role, statelv)
	RemoveItemAttr(role, tempBagEquip.Conf.Slot.Belt)
end

-- Handguard effect
function PIO_Equip_Handguard_Add(role, statelv)
	ApplyItemAttr(role, tempBagEquip.Conf.Slot.Handguard)
end

function PIO_Equip_Handguard_Rem(role, statelv)
	RemoveItemAttr(role, tempBagEquip.Conf.Slot.Handguard)
end