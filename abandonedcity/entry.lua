function config_entry( entry )
	SetMapEntryEntiID( entry, 2492, 4 )
end

function after_create_entry( entry )
	local copy_mgr = GetMapEntryCopyObj( entry, 0 )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
	Notice( "Объявление: В Магическом океане, в точке ["..posx..","..posy.."] появилась таинственная воронка. Некоторые путники сообщают, что она ведет в [Затерянный Город]." )
end

function after_destroy_entry_abandonedcity(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
	Notice( "Портал, ведущий в [Затерянный Город], закрылся. Следите за новостями. Удачи всем, кто остался в этом жутком месте." )
end

function after_player_login_abandonedcity( entry, player_name )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
	ChaNotice( player_name, "В Магическом океане, в точке ["..posx..","..posy.."] появился портал, ведущий в [Затерянный Город]." )
end

function check_can_enter_abandonedcity( role, copy_mgr )
	local Cha = TurnToCha( role )
	if Lv( Cha ) >= 30 and Lv( Cha ) <= 45 then
		local Num
		Num = CheckBagItem( Cha, 1812 )
		if Num >= 1 then
			return 1
		else
			SystemNotice( role, "У вас нет Генератора древних. Невозможно войти в [Затерянный город]." )
			return 0
		end
	else
		SystemNotice( role, "Войти в [Затерянный город] могут только персонажи с 35 по 45 уровень." )
		return 0
	end
end

function begin_enter_abandonedcity( role, copy_mgr )
	local Cha = TurnToCha( role )
	local Dbag = 0
	Dbag = DelBagItem( Cha, 1812, 1 )
	if Dbag == 1 then
		SystemNotice( role, "Вход в [Затерянный город]" )
		if ( AddonSystem["Teleport"] == 1 ) then
			local n = 40
			teleport( role, n )
		else
			MoveCity( role, "Forsaken City" )
		end
	else
		SystemNotice( role, "У вас нет Генератора древних. Невозможно войти в [Затерянный город]!" )
	end
end