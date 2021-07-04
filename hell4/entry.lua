function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "������ � ��"
    SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("����������: � �������� ����������� �������� ["..posx..","..posy.."] ������ ������ � ������� 18. �����.") 
end

function after_destroy_entry_hell4(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
end

function check_can_enter_hell4( role, copy_mgr )
	local i=0
	for i=10,17,1 do
		if CRY[i] == 0 then
			SystemNotice(role,"���� ���� ���������� ������. ���������� ������� �� ��������� �������.")
			return 0
		end
	end
	return 1
end

function begin_enter_hell4(role, copy_mgr) 
	SystemNotice(role,"�� ������� ����� ������ ��-��� ����� ���. � ������ �����, �� ������������ � ������ ��������.")

	if ( AddonSystem["Teleport"] == 1 ) then
		local n = 97
		teleport( role, n )
	else
		MoveCity(role, "Abaddon 4")
	end
end 