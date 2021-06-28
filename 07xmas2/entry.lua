-- Имена функций должны заканчиваться названием карты, такие как after_destroy_entry_07xmas2
-- Наибольшее число символов в строке составляет 255

function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1)
end 

function after_create_entry(entry) 
    	local copy_mgr = GetMapEntryCopyObj(entry, 0)
   	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
 	Notice("Объявление: По координатам ["..posx..","..posy.."] в Магическом океане начинаются Снежные войны!")

	local Now_Time = tonumber(os.date("%H"))
	if Now_Time == 5 or Now_Time == 13 or Now_Time == 21 then
		local EntryName = "Снежные войны с 0 по 500 уровни"
		SetMapEntryEventName( entry, EntryName )
	else
		local EntryName = "Снежные войны с 0 уровня"
		SetMapEntryEventName( entry, EntryName )
	end
end

function after_destroy_entry_07xmas2(entry)
    	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("Объявление: Портал в Снежные войны закрылся!")
end

function after_player_login_07xmas2(entry, player_name)
    	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "Объявление: По координатам ["..posx..","..posy.."] в Магическом океане начинаются Снежные войны!")
end

function check_can_enter_07xmas2( role, copy_mgr )
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )

	if FightingBook_Num <= 0 then
		SystemNotice ( role , "У вас должна быть Медаль отваги, чтобы участвовать в Снежных войнах " )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","Possess more than 1 Medal of Valor")
		return 0
	end

	local Now_Time = tonumber(os.date("%H"))
	if Now_Time == 5 or Now_Time == 13 or Now_Time == 21 then
		if Lv(role) < 100 then
			SystemNotice(role, "Вы должны быть не ниже 100 уровня, чтобы участвовать в Снежных войнах ")
			return 0    
		end

		if Lv(role) > 500 then
			SystemNotice(role, "Вы должны быть не выше 175 уровня, чтобы участвовать в Снежных войнах ")
			return 0    
		end
	else
		if Lv(role) <= 100 then
			SystemNotice(role, "Вы должны быть не ниже 61 уровня, чтобы участвовать в Снежных войнах ")
			return 0    
		end
	end
end

function begin_enter_07xmas2(role, copy_mgr) 
	SystemNotice(role,"Вы вошли в [Снежные войны] ")
	MoveCity(role, "Snow War")
end