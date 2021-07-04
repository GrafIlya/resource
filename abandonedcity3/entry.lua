function config_entry( entry )
	SetMapEntryEntiID( entry, 193, 1 )
end

function after_create_entry( entry )
	local copy_mgr = GetMapEntryCopyObj( entry, 0 )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
end

function after_destroy_entry_abandonedcity3( entry )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
end

function begin_enter_abandonedcity3( role, copy_mgr )
	SystemNotice( role, "Вход в [Затерянный город 3]" )

	if ( AddonSystem["Teleport"] == 1 ) then
		local n = 45
		teleport( role, n )
	else
		MoveCity( role, "Forsaken City 3" )
	end
end