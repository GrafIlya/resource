function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1)

end 

function after_create_entry(entry) 

    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "Gate to Hell"
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("����������: � �������� �������� "["..posx..","..posy.."]" �������� ������, ������� � ����!")

end

function after_destroy_entry_hell3(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("Announcement: Challenge for today has ended.") 

end

function after_player_login_hell3(entry, player_name)

end


function check_can_enter_hell3( role, copy_mgr )

if CRY[9]==0 then
	SystemNotice(role,"������ ���� ���������� ������. �� �� ������� ������ ����� ����.")
	return 0
end
return 1

end

function begin_enter_hell3(role, copy_mgr) 
    

		SystemNotice(role,"��� ����� � ����� ������� ��������.")
		MoveCity(role, "Abaddon 3")
	

end 