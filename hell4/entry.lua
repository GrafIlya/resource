function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "Ворота в Ад"
    SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: В глубоких подземельях Абаддона ["..posx..","..posy.."] найден портал в Абаддон 18. Удачи.") 
end

function after_destroy_entry_hell4(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
end

function check_can_enter_hell4( role, copy_mgr )
	local i=0
	for i=10,17,1 do
		if CRY[i] == 0 then
			SystemNotice(role,"Силы тьмы запечатали портал. Невозможно попасть на следующий уровень.")
			return 0
		end
	end
	return 1
end

function begin_enter_hell4(role, copy_mgr) 
	SystemNotice(role,"На секунду земля уходит из-под твоих ног. И открыв глаза, ты оказываешься в темном Абаддоне.")

	if ( AddonSystem["Teleport"] == 1 ) then
		local n = 97
		teleport( role, n )
	else
		MoveCity(role, "Abaddon 4")
	end
end 