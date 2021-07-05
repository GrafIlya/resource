function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) 
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("В Москве по координатам ["..posx..","..posy.."] открыт портал в Мир Дерьма!") 
    Notice("\194 \204\238\241\234\226\229 \239\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \238\242\234\240\251\242 \239\238\240\242\224\235 \226 \204\232\240 \196\229\240\252\236\224!") 

    --local EntryName = "Мир Дерьма"
    local EntryName = "\204\232\240 \196\229\240\252\236\224"
    SetMapEntryEventName( entry, EntryName )
end

function after_destroy_entry_PyramidCity(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("В Москве по координатам ["..posx..","..posy.."] открыт портал в Мир Дерьма!") 
    Notice("\194 \204\238\241\234\226\229 \239\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \238\242\234\240\251\242 \239\238\240\242\224\235 \226 \204\232\240 \196\229\240\252\236\224!") 
end

function after_player_login_PyramidCity(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    --ChaNotice(player_name, "В Москве по координатам ["..posx..","..posy.."] открыт портал в Мир Дерьма!") --通知本组服务器的所有玩家
    ChaNotice(player_name, "\194 \204\238\241\234\226\229 \239\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \238\242\234\240\251\242 \239\238\240\242\224\235 \226 \204\232\240 \196\229\240\252\236\224!") --通知本组服务器的所有玩家

end

function check_can_enter_PyramidCity( role, copy_mgr )
    local Cha = TurnToCha(role)
	----------------------
	-- Проверка на форж --
	----------------------
	--Проверяем тело на форж
	local checkBody = EquipForgeCheck(Cha, enumEQUIP_BODY, '>', 3)
	--Проверяем перчатки на форж
	local checkGloves = EquipForgeCheck(Cha, enumEQUIP_GLOVE, '>', 3)
	--Проверяем ботинки на форж
	local checkBoots = EquipForgeCheck(Cha, enumEQUIP_SHOES, '>', 3)
	--Проверяем оружие слева в инвентаре на форж
	local checkWeap = EquipForgeCheck(Cha, enumEQUIP_RHAND, '>', 3)
	--Проверяем оружие справа в инвентаре на форж
	local checkWeap2 = EquipForgeCheck(Cha, enumEQUIP_LHAND, '>', 3)
	--Проверяем ожерелье на форж
	local checkNeck = EquipForgeCheck(Cha, enumEQUIP_NECK, '>', 3)
	--Проверяем кольцо слева в инвентаре на форж
	local checkRingL = EquipForgeCheck(Cha, enumEQUIP_HAND1, '>', 3)
	--Проверяем кольцо справа в инвентаре на форж
	local checkRingR = EquipForgeCheck(Cha, enumEQUIP_HAND2, '>', 3)
	if (checkBody == true and checkGloves == true and checkBoots == true and (checkWeap == true or checkWeap2 == true)and checkNeck == true and checkRingL == true and checkRingR == true) then
		return 1
	else
		Dbag = DelBagItem(Cha, 8129, 1)
		if Dbag == 1 then
			return 1
		else
		--HelpInfo( Cha, 0, "Чтобы войти в Тёмную Топь, у тебя должен быть форж:_1. Тело +4 или выше;_2. Перчатки +4 или выше;_3. Ботинки +4 или выше;_4. Оружие +4 или выше;_5. Ожерелье +4 или выше;_6. Кольца +4 или выше. ")
		HelpInfo( Cha, 0,  "\215\242\238\225\251 \226\238\233\242\232 \226 \210\184\236\237\243\254 \210\238\239\252, \243 \242\229\225\255 \228\238\235\230\229\237 \225\251\242\252 \244\238\240\230:_1. \210\229\235\238 +4 \232\235\232 \226\251\248\229;_2. \207\229\240\247\224\242\234\232 +4 \232\235\232 \226\251\248\229;_3. \193\238\242\232\237\234\232 +4 \232\235\232 \226\251\248\229;_4. \206\240\243\230\232\229 +4 \232\235\232 \226\251\248\229;_5. \206\230\229\240\229\235\252\229 +4 \232\235\232 \226\251\248\229;_6. \202\238\235\252\246\224 +4 \232\235\232 \226\251\248\229.")
		return 0
		end
	end
	----------------------------
	-- Конец проверки на форж --
	----------------------------
	if Lv(Cha) >=150 then
		return 1
	else
		--PopupNotice(role, "Чтобы войти, персонаж должен быть выше 150 уровня!")
		PopupNotice(role, "\215\242\238\225\251 \226\238\233\242\232, \239\229\240\241\238\237\224\230 \228\238\235\230\229\237 \225\251\242\252 \226\251\248\229 150 \243\240\238\226\237\255!")
		return 0
	end
end

function begin_enter_PyramidCity(role, copy_mgr) 
	MoveCity(role, "Dark Swamp")
end 