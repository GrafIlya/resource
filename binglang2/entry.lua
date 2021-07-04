function config_entry( entry )
	SetMapEntryEntiID( entry, 193, 1 )
end

function after_create_entry( entry )
	local copy_mgr = GetMapEntryCopyObj( entry, 0 )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
	Notice( "Объявление: Поступают сообщения, что в Ледыни ["..posx..","..posy.."] игроки нашли портал, ведущий в [Мираж Ледыни]. Следите за новостями." )
end

function after_destroy_entry_binglang2( entry )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
	Notice( "Объявление: Портал в [Мираж Ледыни] закрылся. Следите за новостями. Удачи!" )
end

function after_player_login_binglang2( entry, player_name )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
	ChaNotice( player_name, "Объявление: Поступают сообщения, что в Ледыни ["..posx..","..posy.."] игроки нашли портал, ведущий в [Мираж Ледыни]. Следите за новостями." )
end

function check_can_enter_binglang2( role, copy_mgr )
	local i = IsChaStall( role )

	if i == LUA_TRUE then
		SystemNotice( role, "Невозможно телепортироваться, когда вы торгуете в лотке" )
		return 0
	end

	if Lv( role ) < 70 then
		SystemNotice( role, "Вы должны быть не ниже 70 уровня, чтобы войти в [Мираж Ледыни]" )
		return 0
	end
	if Lv( role ) > 89 then
		SystemNotice( role, "Вы должны быть не выше 90 уровня, чтобы войти в [Мираж Ледыни]" )
		return 0
	end

	local Num
	Num = CheckBagItem( role, 2326 )

	if Num < 1 then
		SystemNotice( role, "У вас нет маски реальности. Невозможно войти в [Мираж Ледыни]" )
		return 0
	end

	local Credit_Binglang2 = GetCredit( role )

	if Credit_Binglang2 < 10 then
		SystemNotice( role, "Недостаточно очков репутации. Невозможно войти в [Мираж Ледыни]" )
		return 0
	else
		DelCredit( role, 10 )
		return 1
	end
end

function begin_enter_binglang2( role, copy_mgr )
	local Cha = TurnToCha( role )
	local Dbag = 0
	Dbag = DelBagItem( Cha, 2326, 1 )

	if Dbag == 1 then
		SystemNotice( role, "Вход в [Мираж Ледыни]" )
		if ( AddonSystem["Teleport"] == 1 ) then
			local n = 18
			teleport( role, n )
		else
			MoveCity( role, "Icicle Mirage" )
		end
	else
		SystemNotice( role, "У вас нет маски реальности. Невозможно войти в [Мираж Ледыни]" )
	end
end