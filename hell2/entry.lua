function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1) 
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
    local EntryName = "Announcement"
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("Объявление: В глубинах Абаддона 8 ["..posx..","..posy.."] открылся портал в Абаддон 9. Удачи!") 
end

function after_destroy_entry_hell2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
end

function check_can_enter_hell2( role, copy_mgr )
	local i=0
	for i=5,8,1 do
		if CRY[i] == 0 then
		SystemNotice(role,"Силы тьмы опечатали проход. Пройти через него невозможно.")
			return 0
		end
	end
	return 1
end

function begin_enter_hell2(role, copy_mgr) 
	SystemNotice(role,"Cердце начинает биться чаще, перед глазами быстро мелькают своды стен. И вот вы появляетесь в темном Абаддоне.")

	if ( AddonSystem["Teleport"] == 1 ) then
		local n = 95
		teleport( role, n )
	else
		MoveCity(role, "Abaddon 2")
	end
end