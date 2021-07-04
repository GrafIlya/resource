-- ����� ������� ������ ������������� ��������� �����, ����� ��� after_destroy_entry_07xmas2
-- ���������� ����� �������� � ������ ���������� 255

function config_entry( entry )
	SetMapEntryEntiID( entry, 2492, 1 )
end

function after_create_entry( entry )
	local copy_mgr = GetMapEntryCopyObj( entry, 0 )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
	Notice("����������: �� ����������� ["..posx..","..posy.."] � ���������� ������ ���������� ������� �����!")

	local Now_Time = tonumber(os.date("%H"))

	if Now_Time == 5 or Now_Time == 12 or Now_Time == 21 then
		local EntryName = "������� ����� � 30 �� 60 ������"
		SetMapEntryEventName( entry, EntryName )
	else
		local EntryName = "������� ����� � 61 ������"
		SetMapEntryEventName( entry, EntryName )
	end
end

function after_destroy_entry_07xmas2( entry )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
	Notice( "����������: ������ � ������� ����� ��������!" )
end

function after_player_login_07xmas2( entry, player_name )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
	ChaNotice( player_name, "����������: �� ����������� ["..posx..","..posy.."] � ���������� ������ ���������� ������� �����!" )
end

function check_can_enter_07xmas2( role, copy_mgr )
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role, 3849 )

	if FightingBook_Num <= 0 then
		SystemNotice( role, "� ��� ������ ���� ������ ������, ����� ����������� � ������� ������" )
		return 0
	elseif FightingBook_Num > 1 then
		LG( "RYZ_PK", "Possess more than 1 Medal of Valor" )
		return 0
	end

	local Now_Time = tonumber( os.date( "%H" ))
	if Now_Time == 5 or Now_Time == 12 or Now_Time == 21 then
		if Lv(role) < 30 then
			SystemNotice(role, "�� ������ ���� �� ���� 30 ������, ����� ����������� � ������� ������ " )
			return 0
		end

		if Lv(role) > 60 then
			SystemNotice(role, "�� ������ ���� �� ���� 60 ������, ����� ����������� � ������� ������ " )
			return 0
		end
	else
		if Lv(role) <= 60 then
			SystemNotice(role, "�� ������ ���� �� ���� 61 ������, ����� ����������� � ������� ������ " )
			return 0
		end
	end
end

function begin_enter_07xmas2( role, copy_mgr )
	SystemNotice( role, "�� ����� � [������� �����]" )

	if ( AddonSystem["Teleport"] == 1 ) then
		local n = math.random( 116, 126 )
		teleport( role, n )
	else
		MoveCity( role, "Snow War" )
	end
end