print( "Загрузка Ctrl.lua" )

function config( map )
	MapCanSavePos( map, 0 )
	MapCanPK( map, 1 )
	MapCopyNum( map, 1 )
	SingleMapCopyPlyNum( map, 300 )
	MapCanTeam( map, 1 )
	MapType( map, 4 )
end

function get_map_entry_pos_abandonedcity2()
	local POS_X = 84
	local POS_Y = 246
	return POS_X, POS_Y
end

function init_entry( map )
	SetMapEntryMapName( map, "abandonedcity" )
	SetMapEntryTime( map, "2005/8/30/0/0", "0/3/0", "0/0/40", "0/2/0" )
end

function after_enter_abandonedcity2( role, map_copy )
end

function before_leave_abandonedcity2( role )
end