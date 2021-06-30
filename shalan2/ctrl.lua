print( "Загрузка Ctrl.lua" )

function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
	MapCopyNum(map, 1)
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 3 )
end

function get_map_entry_pos_shalan2()

	local POS_X=2173
	local POS_Y=2805
	return POS_X , POS_Y
end

function init_entry(map)
    SetMapEntryMapName(map, "garner")
   SetMapEntryTime(map, "2010/7/28/0/0", "0/3/0", "0/1/0", "0/1/0")
end
function map_run_shalan2( map )

end

function map_copy_run_shalan2(map_copy)
end

function map_copy_run_special_shalan2(map_copy)

end

function after_enter_shalan2( role , map_copy )
end


function before_leave_shalan2(role)
end

function map_copy_before_close_shalan2( map_copy )

end

function map_copy_close_shalan2( map_copy )
end