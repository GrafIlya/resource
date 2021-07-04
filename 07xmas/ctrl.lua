print( "Загрузка Ctrl.lua" )

function config( map )
	MapCanSavePos( map, 0 )
	MapCopyNum( map, 1 )
	SingleMapCopyPlyNum( map, 300 )
	MapCanTeam( map, 1 )
	MapType( map, 1 )
end

function get_map_entry_pos_07xmas()
	return 0
end

function init_entry( map )
end

function map_run_07xmas( map )
end

function can_open_entry_07xmas( map )
end

function after_enter_07xmas( role, map_copy )
end

function before_leave_07xmas( role )
end