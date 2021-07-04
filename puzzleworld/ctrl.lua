print( "Загрузка Ctrl.lua" )

function config( map )
	MapCanSavePos( map, 0 )
	MapCanPK( map, 1 )
	MapCopyNum( map, 1 )
	SingleMapCopyPlyNum( map, 300 )
	MapCanTeam( map, 1 )
	MapType( map, 4 )
end

function get_map_entry_pos_puzzleworld()
	local POS_X = 910
	local POS_Y = 1069
	return POS_X, POS_Y
end

function init_entry( map )
	SetMapEntryMapName( map, "garner" )
	SetMapEntryTime( map, "2005/8/30/0/0", "0/3/0", "0/0/40", "0/2/0" )
end

function after_enter_puzzleworld( role, map_copy )
end

function before_leave_puzzleworld( role )
end