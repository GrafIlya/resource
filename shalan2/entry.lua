function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
	local EntryName = " Мираж Шайтана "
	SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("Обьявление: В Магическом океане, игроки нашли в ["..posx..","..posy.."] портал в Мираж Шайтана. Будьте осторожны!")
end

function after_destroy_entry_shalan2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Обьявление: Портал в Мираж Шайтана исчез. Ждите более подробной информации. Будьте счастливы!") 
end

function after_player_login_shalan2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ChaNotice(player_name, "Обьявление: В Магическом океане, игроки нашли в ["..posx..","..posy.."] портал в Мираж Шайтана. Будьте осторожны!")
end

function check_can_enter_shalan2( role, copy_mgr )
	local i = IsChaStall(role)
	if i == LUA_TRUE then
		SystemNotice(role, "Не возможно телепортироваться ")
		return 0    
	end
	if Lv(role) < 70 then
		SystemNotice(role, "Персонаж должен иметь 70 уровень(или выше), чтобы попасть в мираж Шайтана!")
		return 0    
	end
	if Lv(role) > 89 then
		SystemNotice(role, "Персонаж не должен быть выше 90 уровня, чтобы попасть в мираж Шайтана!")
		return 0    
	end
	local Num
	Num = CheckBagItem(role,2326)
	if Num < 1 then
		SystemNotice(role, "Отсутствует Маска Реальности.")	
		return 0
	end
	local Credit_Shalan2 = GetCredit(role)
	if Credit_Shalan2 < 10 then
		SystemNotice(role, "У вас не хватает репутации. Вы не можете пройти в Мираж Шайтана!")
		return 0
	else
		DelCredit(role,10)
		return 1
	end
end

function begin_enter_shalan2( role, copy_mgr )
	local Cha = TurnToCha( role )
	local Dbag = 0
	Dbag = DelBagItem( Cha, 2326, 1 )
	
	if Dbag == 1 then
		SystemNotice( role, "Вы вошли в Мираж Шайтана" )

		if ( AddonSystem["Teleport"] == 1 ) then
			local n = 100
			teleport( role, n )
		else
			MoveCity( role, "Shaitan Mirage" )
		end
	else
		SystemNotice( role, "У вас нет Маски Реальности. Вы не можете попасть в Мираж Шайтана!" )
	end
end