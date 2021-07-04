function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "������ �������"
    SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("����������: � �������� �������� 18 ["..posx..","..posy.."] �������� ������ � ������ �������. ������ �������� ����� ������ ����� �� ������� � ����� �������. �����!") 
end

function after_destroy_entry_hell5(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
end

function check_can_enter_hell5( role, copy_mgr )
	if CRY[18]==0 then
		SystemNotice(role,"���� ���� ��������� ������. ������ ����� ���� ����������.")
		return 0
	end
	return 1
end

function begin_enter_hell5( role, copy_mgr )
	SystemNotice( role, "C����� �������� ������ ����, ����� ������� ������ �������� ����� ����. � ��� �� ����������� � ������ ������ ��������." )

	if ( AddonSystem["Teleport"] == 1 ) then
		local n = 98
		teleport( role, n )
	else
		MoveCity( role, "Abaddon 5" )
	end
end