function config_entry( entry )
	SetMapEntryEntiID( entry, 2492, 1 )
end

function after_create_entry( entry )
	local copy_mgr = GetMapEntryCopyObj( entry, 0 )
	local EntryName = "������ � ��"
	SetMapEntryEventName( entry, EntryName )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
	Notice( "����������: �� ������ �������� ������ ����� �������. ���������, ������� ���������� �� ������� �������� ["..posx..","..posy.."] ���� ����� �������� ����. ������� �������� �������, ������� ���������� ����?" )
end

function after_destroy_entry_hell( entry )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
end

function begin_enter_hell( role, copy_mgr )
	SystemNotice( role, "�� ������� ����� ������ ��-��� ����� ���. � ������ �����, �� ������������ � ������ ��������." )

	if ( AddonSystem["Teleport"] == 1 ) then
		local n = math.random( 92, 94 )
		teleport( role, n )
	else
		MoveCity( role, "Abaddon 1" )
	end
end