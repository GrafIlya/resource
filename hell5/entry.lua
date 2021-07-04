function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "Вечный Абаддон"
    SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: В глубинах Абаддона 18 ["..posx..","..posy.."] открылся портал в Вечный Абаддон. Только отважные войны смогут выйти на схватку с самой смертью. Удачи!") 
end

function after_destroy_entry_hell5(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
end

function check_can_enter_hell5( role, copy_mgr )
	if CRY[18]==0 then
		SystemNotice(role,"Силы тьмы опечатали проход. Пройти через него невозможно.")
		return 0
	end
	return 1
end

function begin_enter_hell5( role, copy_mgr )
	SystemNotice( role, "Cердце начинает биться чаще, перед глазами быстро мелькают своды стен. И вот вы появляетесь в темном Вечном Абаддоне." )

	if ( AddonSystem["Teleport"] == 1 ) then
		local n = 98
		teleport( role, n )
	else
		MoveCity( role, "Abaddon 5" )
	end
end