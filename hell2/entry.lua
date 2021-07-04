function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1) 
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
    local EntryName = "Announcement"
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("����������: � �������� �������� 8 ["..posx..","..posy.."] �������� ������ � ������� 9. �����!") 
end

function after_destroy_entry_hell2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
end

function check_can_enter_hell2( role, copy_mgr )
	local i=0
	for i=5,8,1 do
		if CRY[i] == 0 then
		SystemNotice(role,"���� ���� ��������� ������. ������ ����� ���� ����������.")
			return 0
		end
	end
	return 1
end

function begin_enter_hell2(role, copy_mgr) 
	SystemNotice(role,"C����� �������� ������ ����, ����� ������� ������ �������� ����� ����. � ��� �� ����������� � ������ ��������.")

	if ( AddonSystem["Teleport"] == 1 ) then
		local n = 95
		teleport( role, n )
	else
		MoveCity(role, "Abaddon 2")
	end
end