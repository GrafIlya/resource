--------------------------------------
-- Пояс, браслеты и наручи от Графа --
--------------------------------------
print("* Loading TempBagEquip.lua")

-- Тип новой экипировки
local tyBracelet = 81
local tyBelt = 82
local tyHandguard = 83
	
-- Ячейки для вещейй
local SlotBraceletLeft  = 0
local SlotBraceletRight  = 1
local SlotBelt = 2
local SlotHandguard = 3

-- ID эффектов со skilleff
local stBraceletLeft = 208
local stBraceletRight = 209
local stBelt = 210
local stHandguard = 211

function ApplyBraselets(role, now_tick)
if (math.mod(now_tick, 1) == 0) then
		if (IsPlayer(role) == 1) then
    -- Проверяем, находятся ли вещи в нужных слотах
	local slLeftBracelet = GetChaItem(role, 3, SlotBraceletLeft)
	local slRightBracelet = GetChaItem(role, 3, SlotBraceletRight)
	local slBelt = GetChaItem(role, 3, SlotBelt)
	local slHandguard = GetChaItem(role, 3, SlotHandguard)
	-- Проверяем левый браслет
	if (slLeftBracelet ~= nil and GetItemType(slLeftBracelet) == tyBracelet) then
		AddState(role, role, stBraceletLeft, 1, 3600)
	else
		if (GetChaStateLv(role, stBraceletLeft) > 0) then
			RemoveState(role, stBraceletLeft)
		end
	end
	
	-- Проверяем правый браслет
	if (slRightBracelet ~= nil and GetItemType(slRightBracelet) == tyBracelet) then
		AddState(role, role, stBraceletRight, 1, 3600)
	else
		if (GetChaStateLv(role, stBraceletRight) > 0) then
			RemoveState(role, stBraceletRight)
		end
	end
	
	-- Проверяем пояс
	if (slBelt ~= nil and GetItemType(slBelt) == tyBelt) then
		AddState(role, role, stBelt, 1, 3600)
	else
		if (GetChaStateLv(role, stBelt) > 0) then
			RemoveState(role, stBelt)
		end
	end
	
	-- Проверяем наручи
	if (slHandguard ~= nil and GetItemType(slHandguard) == tyHandguard) then
		AddState(role, role, stHandguard, 1, 3600)
	else
		if (GetChaStateLv(role, stHandguard) > 0) then
			RemoveState(role, stHandguard)
		end
	end
		end
	end
end

--Одеваемся во временный мешок
function PIO_Equip_Gear(role, Item)
	-- The item ID and type
	local item_id = GetItemID(Item)
	local item_type = GetItemType(Item)
	
	-- Check that player is not in a boat
	if (ChaIsBoat(role) == 1) then
		BickerNotice(role, string.format("%s \237\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238 \226\238 \226\240\229\236\255 \239\235\224\226\224\237\232\255!", GetItemName(item_id)))
		--BickerNotice(role, string.format("%s не может быть использовано во время плавания!", GetItemName(item_id)))
		UseItemFailed(role)
		return
	end
	
	
	-- Add the item to the temp bag
	if ( GiveItemX(role, 0, item_id, 1, 4) ) then
		-- Check if the item is equipped
			BickerNotice(role, string.format("\221\234\232\239\232\240\238\226\224\237\238: %s", GetItemName(item_id)))
			-- BickerNotice(role, string.format("Экипировано: %s", GetItemName(item_id)))
			
			if (tmp_last_free_slot == SlotBraceletLeft) then
				AddState(role, role, stBraceletLeft, 1, 3600)
			elseif (tmp_last_free_slot == SlotBraceletRight) then
				AddState(role, role, stBraceletRight, 1, 3600)
			elseif (tmp_last_free_slot == SlotBelt) then
				AddState(role, role, stBelt, 1, 3600)
			elseif (tmp_last_free_slot == SlotHandguard) then
				AddState(role, role, stHandguard, 1, 3600)
			end
			
		end
end

-- Активируем эффект
function AddStateAttr(role, cell_id)
	-- Узнаем вещь
	local Item = GetChaItem(role, 3, cell_id)
	if (Item ~= nil) then
	-- Берем ID вещи
	local item_id = GetItemID(Item)
	
	-- Добавляем обычные характеристики
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_STR) + GetItemAttrRange(item_id, ITEMATTR_VAL_STR, 0), role, ATTR_STATEV_STR) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_AGI) + GetItemAttrRange(item_id, ITEMATTR_VAL_AGI, 0), role, ATTR_STATEV_AGI) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_DEX) + GetItemAttrRange(item_id, ITEMATTR_VAL_DEX, 0), role, ATTR_STATEV_DEX) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_CON) + GetItemAttrRange(item_id, ITEMATTR_VAL_CON, 0), role, ATTR_STATEV_CON) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_STA) + GetItemAttrRange(item_id, ITEMATTR_VAL_STA, 0), role, ATTR_STATEV_STA) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_LUK) + GetItemAttrRange(item_id, ITEMATTR_VAL_LUK, 0), role, ATTR_STATEV_LUK) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_ASPD) + GetItemAttrRange(item_id, ITEMATTR_VAL_ASPD, 0), role, ATTR_STATEV_ASPD) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_ADIS) + GetItemAttrRange(item_id, ITEMATTR_VAL_ADIS, 0), role, ATTR_STATEV_ADIS) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_MNATK) + GetItemAttrRange(item_id, ITEMATTR_VAL_MNATK, 0), role, ATTR_STATEV_MNATK) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_MXATK) + GetItemAttrRange(item_id, ITEMATTR_VAL_MXATK, 0), role, ATTR_STATEV_MXATK) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_DEF) + GetItemAttrRange(item_id, ITEMATTR_VAL_DEF, 0), role, ATTR_STATEV_DEF) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_MXHP) + GetItemAttrRange(item_id, ITEMATTR_VAL_MXHP, 0), role, ATTR_STATEV_MXHP) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_MXSP) + GetItemAttrRange(item_id, ITEMATTR_VAL_MXSP, 0), role, ATTR_STATEV_MXSP) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_FLEE) + GetItemAttrRange(item_id, ITEMATTR_VAL_FLEE, 0), role, ATTR_STATEV_FLEE) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_HIT) + GetItemAttrRange(item_id, ITEMATTR_VAL_HIT, 0), role, ATTR_STATEV_HIT) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_CRT) + GetItemAttrRange(item_id, ITEMATTR_VAL_CRT, 0), role, ATTR_STATEV_CRT) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_MF) + GetItemAttrRange(item_id, ITEMATTR_VAL_MF, 0), role, ATTR_STATEV_MF) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_HREC) + GetItemAttrRange(item_id, ITEMATTR_VAL_HREC, 0), role, ATTR_STATEV_HREC) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_SREC) + GetItemAttrRange(item_id, ITEMATTR_VAL_SREC, 0), role, ATTR_STATEV_SREC) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_MSPD) + GetItemAttrRange(item_id, ITEMATTR_VAL_MSPD, 0), role, ATTR_STATEV_MSPD) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_COL) + GetItemAttrRange(item_id, ITEMATTR_VAL_COL, 0), role, ATTR_STATEV_COL) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_PDEF) + GetItemAttrRange(item_id, ITEMATTR_VAL_PDEF, 0), role, ATTR_STATEV_PDEF) 
	
	-- Добавляем характеристики в процентах
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_STR) + GetItemAttrRange(item_id, ITEMATTR_COE_STR, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_STR)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_AGI) + GetItemAttrRange(item_id, ITEMATTR_COE_AGI, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_AGI)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_DEX) + GetItemAttrRange(item_id, ITEMATTR_COE_DEX, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_DEX)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_CON) + GetItemAttrRange(item_id, ITEMATTR_COE_CON, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_CON)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_STA) + GetItemAttrRange(item_id, ITEMATTR_COE_STA, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_STA)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_LUK) + GetItemAttrRange(item_id, ITEMATTR_COE_LUK, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_LUK)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_ASPD) + GetItemAttrRange(item_id, ITEMATTR_COE_ASPD, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_ASPD)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_ADIS) + GetItemAttrRange(item_id, ITEMATTR_COE_ADIS, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_ADIS)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_MNATK) + GetItemAttrRange(item_id, ITEMATTR_COE_MNATK, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MNATK)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_MXATK) + GetItemAttrRange(item_id, ITEMATTR_COE_MXATK, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MXATK)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_DEF) + GetItemAttrRange(item_id, ITEMATTR_COE_DEF, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_DEF)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_MXHP) + GetItemAttrRange(item_id, ITEMATTR_COE_MXHP, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MXHP)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_MXSP) + GetItemAttrRange(item_id, ITEMATTR_COE_MXSP, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MXSP)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_FLEE) + GetItemAttrRange(item_id, ITEMATTR_COE_FLEE, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_FLEE)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_HIT) + GetItemAttrRange(item_id, ITEMATTR_COE_HIT, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_HIT)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_CRT) + GetItemAttrRange(item_id, ITEMATTR_COE_CRT, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_CRT)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_MF) + GetItemAttrRange(item_id, ITEMATTR_COE_MF, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MF)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_HREC) + GetItemAttrRange(item_id, ITEMATTR_COE_HREC, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_HREC)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_SREC) + GetItemAttrRange(item_id, ITEMATTR_COE_SREC, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_SREC)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_MSPD) + GetItemAttrRange(item_id, ITEMATTR_COE_MSPD, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MSPD)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_COL) + GetItemAttrRange(item_id, ITEMATTR_COE_COL, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_COL)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_PDEF) + GetItemAttrRange(item_id, ITEMATTR_COE_PDEF, 0)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_PDEF)

	-- Обновляем персонажа
	ALLExAttrSet(role) 
	end
end

-- Удаляем эффект
function RemoveStateAttr(role, cell_id)
	local Item = GetChaItem(role, 3, cell_id)
	local item_id = GetItemID(Item)
	if (item_id ~= 0) then
	-- Удаляем обычные характеристики
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_STR) - GetSavedItemAttr(item_id, ITEMATTR_VAL_STR), role, ATTR_STATEV_STR) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_AGI) - GetSavedItemAttr(item_id, ITEMATTR_VAL_AGI), role, ATTR_STATEV_AGI) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_DEX) - GetSavedItemAttr(item_id, ITEMATTR_VAL_DEX), role, ATTR_STATEV_DEX) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_CON) - GetSavedItemAttr(item_id, ITEMATTR_VAL_CON), role, ATTR_STATEV_CON) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_STA) - GetSavedItemAttr(item_id, ITEMATTR_VAL_STA), role, ATTR_STATEV_STA) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_LUK) - GetSavedItemAttr(item_id, ITEMATTR_VAL_LUK), role, ATTR_STATEV_LUK) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_ASPD) - GetSavedItemAttr(item_id, ITEMATTR_VAL_ASPD), role, ATTR_STATEV_ASPD) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_ADIS) - GetSavedItemAttr(item_id, ITEMATTR_VAL_ADIS), role, ATTR_STATEV_ADIS) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_MNATK) - GetSavedItemAttr(item_id, ITEMATTR_VAL_MNATK), role, ATTR_STATEV_MNATK) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_MXATK) - GetSavedItemAttr(item_id, ITEMATTR_VAL_MXATK), role, ATTR_STATEV_MXATK) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_DEF) - GetSavedItemAttr(item_id, ITEMATTR_VAL_DEF), role, ATTR_STATEV_DEF) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_MXHP) - GetSavedItemAttr(item_id, ITEMATTR_VAL_MXHP), role, ATTR_STATEV_MXHP) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_MXSP) - GetSavedItemAttr(item_id, ITEMATTR_VAL_MXSP), role, ATTR_STATEV_MXSP) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_FLEE) - GetSavedItemAttr(item_id, ITEMATTR_VAL_FLEE), role, ATTR_STATEV_FLEE) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_HIT) - GetSavedItemAttr(item_id, ITEMATTR_VAL_HIT), role, ATTR_STATEV_HIT) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_CRT) - GetSavedItemAttr(item_id, ITEMATTR_VAL_CRT), role, ATTR_STATEV_CRT) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_MF) - GetSavedItemAttr(item_id, ITEMATTR_VAL_MF), role, ATTR_STATEV_MF) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_HREC) - GetSavedItemAttr(item_id, ITEMATTR_VAL_HREC), role, ATTR_STATEV_HREC) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_SREC) - GetSavedItemAttr(item_id, ITEMATTR_VAL_SREC), role, ATTR_STATEV_SREC) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_MSPD) - GetSavedItemAttr(item_id, ITEMATTR_VAL_MSPD), role, ATTR_STATEV_MSPD) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_COL) - GetSavedItemAttr(item_id, ITEMATTR_VAL_COL), role, ATTR_STATEV_COL) 
	SetCharaAttr(GetChaAttr(role, ATTR_STATEV_PDEF) - GetSavedItemAttr(item_id, ITEMATTR_VAL_PDEF), role, ATTR_STATEV_PDEF) 
	
	-- Удаляем проценты характеристик
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_STR) - GetSavedItemAttr(item_id, ITEMATTR_COE_STR)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_STR)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_AGI) - GetSavedItemAttr(item_id, ITEMATTR_COE_AGI)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_AGI)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_DEX) - GetSavedItemAttr(item_id, ITEMATTR_COE_DEX)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_DEX)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_CON) - GetSavedItemAttr(item_id, ITEMATTR_COE_CON)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_CON)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_STA) - GetSavedItemAttr(item_id, ITEMATTR_COE_STA)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_STA)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_LUK) - GetSavedItemAttr(item_id, ITEMATTR_COE_LUK)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_LUK)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_ASPD) - GetSavedItemAttr(item_id, ITEMATTR_COE_ASPD)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_ASPD)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_ADIS) - GetSavedItemAttr(item_id, ITEMATTR_COE_ADIS)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_ADIS)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_MNATK) - GetSavedItemAttr(item_id, ITEMATTR_COE_MNATK)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MNATK)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_MXATK) - GetSavedItemAttr(item_id, ITEMATTR_COE_MXATK)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MXATK)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_DEF) - GetSavedItemAttr(item_id, ITEMATTR_COE_DEF)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_DEF)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_MXHP) - GetSavedItemAttr(item_id, ITEMATTR_COE_MXHP)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MXHP)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_MXSP) - GetSavedItemAttr(item_id, ITEMATTR_COE_MXSP)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MXSP)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_FLEE) - GetSavedItemAttr(item_id, ITEMATTR_COE_FLEE)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_FLEE)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_HIT) - GetSavedItemAttr(item_id, ITEMATTR_COE_HIT)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_HIT)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_CRT) - GetSavedItemAttr(item_id, ITEMATTR_COE_CRT)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_CRT)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_MF) - GetSavedItemAttr(item_id, ITEMATTR_COE_MF)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MF)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_HREC) - GetSavedItemAttr(item_id, ITEMATTR_COE_HREC)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_HREC)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_SREC) - GetSavedItemAttr(item_id, ITEMATTR_COE_SREC)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_SREC)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_MSPD) - GetSavedItemAttr(item_id, ITEMATTR_COE_MSPD)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_MSPD)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_COL) - GetSavedItemAttr(item_id, ITEMATTR_COE_COL)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_COL)
	SetCharaAttr(math.floor(((GetChaAttr(role, ATTR_STATEC_PDEF) - GetSavedItemAttr(item_id, ITEMATTR_COE_PDEF)) / ATTR_RADIX ) * ATTR_RADIX), role, ATTR_STATEC_PDEF)
	
	-- Обновляем характеристики персонажа
	ALLExAttrSet(role)
	end
end


-- Эффект левого браслета
function PIO_Equip_LeftBracelet_Add(role, statelv)
	AddStateAttr(role, SlotBraceletLeft)
end

function PIO_Equip_LeftBracelet_Rem(role, statelv)
	RemoveStateAttr(role, SlotBraceletLeft)
end

-- Эффект правого браслета
function PIO_Equip_RightBracelet_Add(role, statelv)
	AddStateAttr(role, SlotBraceletRight)
end

function PIO_Equip_RightBracelet_Rem(role, statelv)
	RemoveStateAttr(role, SlotBraceletRight)
end

-- Эффект пояса
function PIO_Equip_Belt_Add(role, statelv)
	AddStateAttr(role, SlotBelt)
end

function PIO_Equip_Belt_Rem(role, statelv)
	RemoveStateAttr(role, SlotBelt)
end

-- Эффект наручей
function PIO_Equip_Handguard_Add(role, statelv)
	AddStateAttr(role, SlotHandguard)
end

function PIO_Equip_Handguard_Rem(role, statelv)
	RemoveStateAttr(role, SlotHandguard)
end