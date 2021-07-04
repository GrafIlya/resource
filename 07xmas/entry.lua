function config_entry( entry )
	SetMapEntryEntiID( entry, 193, 1 )
end

function after_create_entry( entry )
	local copy_mgr = GetMapEntryCopyObj( entry, 0 )

	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
	Notice( "Объявление: Поступают сообщения, что в Аскароне ["..posx..","..posy.."] появился портал в Рождественскую Деревню. Все игроки поспешите туда!" )
end

function after_destroy_entry_07xmas( entry )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
	Notice( "Объявление: Согласно сообщениям, портал в Рождественскую Деревню исчез!" )
end

function after_player_login_07xmas( entry, player_name )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
	ChaNotice( player_name, "Объявление: Поступают сообщения, что в Аскароне ["..posx..","..posy.."] появился портал в Рождественскую Деревню. Все игроки поспешите туда!" )
end

function begin_enter_07xmas( role, copy_mgr )
	SystemNotice( role, "Вы вошли в Рождественскую Деревню" )

	if ( AddonSystem["Teleport"] == 1 ) then
		local n = math.random( 114, 115 )
		teleport( role, n )
	else
		MoveCity( role, "Christmas Village" )
	end
end