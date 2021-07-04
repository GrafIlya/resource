print( "Загрузка Ctrl.lua" )

function config( map )
	MapCanSavePos( map, 0 )
	MapCopyNum( map, 1 )
	SingleMapCopyPlyNum( map, 300 )
	MapCanTeam( map, 1 )
	MapType( map, 1 )
end

function get_map_entry_pos_binglang2()
	local POS_X = 2718
	local POS_Y = 659
	return POS_X, POS_Y
end

function init_entry( map )
	SetMapEntryMapName( map, "darkblue" )
	SetMapEntryTime( map, "2005/8/30/13/0", "0/6/0", "0/4/0", "0/4/0" )
end

function can_open_entry_binglang2( map )
	local Now_Time = GetNowTime()
	if Now_Time ==13 or Now_Time == 19 then
		return 1
	else
		return 0
	end
end

function after_enter_binglang2( role, map_copy )
end

function before_leave_binglang2( role )
end