print( "Загрузка Ctrl.lua" )

function config( map )
	MapCanSavePos( map, 0 )
	MapCanPK( map, 1 )
	MapCopyNum( map, 1 )
	SingleMapCopyPlyNum( map, 300 )
	MapCanTeam( map, 1 )
	MapType( map, 4 )
end

function get_map_entry_pos_abandonedcity3()
	local POS_X = 249
	local POS_Y = 225
	return POS_X, POS_Y
end

function init_entry( map )
	SetMapEntryMapName( map, "abandonedcity2" )
	SetMapEntryTime( map, "2005/8/30/0/0", "0/3/0", "0/0/80", "0/2/0" )
end

function after_enter_abandonedcity3( role, map_copy )
end

function before_leave_abandonedcity3( role )
end