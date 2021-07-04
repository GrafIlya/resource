function config_entry( entry )
	SetMapEntryEntiID( entry, 193, 1 )
end

function after_create_entry( entry )
	local copy_mgr = GetMapEntryCopyObj( entry, 0 )
	local EntryName = "Мир Демонов 2"
	SetMapEntryEventName( entry, EntryName )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
end

function after_destroy_entry_puzzleworld2( entry )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo( entry )
end

function begin_enter_puzzleworld2( role, copy_mgr )
	SystemNotice( role, "Вы вошли в [Мир Демонов 2]" )

	if ( AddonSystem["Teleport"] == 1 ) then
		local n = math.random( 50, 53 )
		teleport( role, n )
	else
		MoveCity( role, "Demonic World 2" )
	end
end