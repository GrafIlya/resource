function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 1)
	local EntryName = " Мираж СПБ "
	SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
   -- Notice("По координатам ["..posx..","..posy.."] портал в Мираж Санкт-Петербурга ")
end

function after_destroy_entry_shalan2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
   -- Notice("Обьявление: Портал в Мираж Санкт-Петербурга исчез. Ждите более подробной информации") 
end

function after_player_login_shalan2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ChaNotice(player_name, "По координатам ["..posx..","..posy.."] портал в Мираж Санкт-Петербурга ")
end

function check_can_enter_shalan2( role, copy_mgr )

	local i = IsChaStall(role)
	if i == 1 then
		SystemNotice(role, "Не возможно телепортироваться ")
		return 0    
	end
	if Lv(role) < 200 then
		SystemNotice(role, "Персонаж должен иметь 200 уровень(или выше), чтобы попасть в  Мираж Санкт-Петербурга!")
		return 0    
	end
	local Num
	Num = CheckBagItem(role,2326)
	if Num < 1 then
		SystemNotice(role, "Отсутствует талон на вход.")	
		return 0
	else
		return 1
	end
end

function begin_enter_shalan2(role, copy_mgr)
	local Cha = TurnToCha(role)	
	local Dbag = 0
	Dbag = DelBagItem(Cha, 2326, 1)
	
	if Dbag == 1 then
		SystemNotice(role,"Вы вошли в Мираж Санкт-Петербурга ") 
		MoveCity(role, "Shaitan Mirage")
	else
		SystemNotice(role, "У вас нет талона на вход. Вы не можете попасть в Мираж Санкт-Петербурга!")
	end
end