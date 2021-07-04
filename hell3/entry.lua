function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "Gate to Hell"
    SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: В глубинах Абаддона 9 ["..posx..","..posy.."] появился портал на 10-17 уровни Абаддона. Удачи!")
end

function after_destroy_entry_hell3(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
end

function check_can_enter_hell3( role, copy_mgr )
if CRY[9]==0 then
		SystemNotice(role,"Силы тьмы запечатали проход. Теперь вы не сможете пройти через портал.")
	return 0
end
return 1
end

function begin_enter_hell3(role, copy_mgr) 
	SystemNotice(role,"На секунду земля уходит из-под твоих ног. И открыв глаза, ты оказываешься в темном Абаддоне.")

	if ( AddonSystem["Teleport"] == 1 ) then
		local n = 96
		teleport( role, n )
	else
		MoveCity( role, "Abaddon 3" )
	end
end