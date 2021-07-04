function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
	local EntryName = "Мир Демонов "
	SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: Аскарон ["..posx..","..posy.."] появился портал ведущий в [Мир Демонов]. Следите за новостями.") 
end

function after_destroy_entry_puzzleworld(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("Объявление: Портал в [Мир Демонов] закрылся. Следите за новостями. Удачи!") 
end

function after_player_login_puzzleworld(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "Объявление: Аскарон ["..posx..","..posy.."] появился портал ведущий в [Мир Демонов]. Следите за новостями.")
end

function check_can_enter_puzzleworld( role, copy_mgr )
	if Lv(role) >=50 then
		return 1
	else
		SystemNotice(role, "Чтобы войти в портал, ваш уровень должен быть больше 50!")
		return 0
	end
end

function begin_enter_puzzleworld( role, copy_mgr )
	SystemNotice( role, "Вы вошли в [Мир Демонов]" )

	if ( AddonSystem["Teleport"] == 1 ) then
		local n = math.random( 46, 49 )
		teleport( role, n )
	else
		MoveCity( role, "Demonic World" )
	end
end