print( "Загрузка Ctrl.lua" )
function config(map)
    MapCanSavePos(map, 1) 
    MapCanPK(map, 1) 
    MapCopyNum(map, 1) 
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 3 )

end
function get_map_entry_pos_darkblue()
end

function init_entry( map )
end

function after_enter_darkblue( role, map_copy )
end

function before_leave_darkblue( role )
end

function map_copy_first_run_darkblue( map_copy )
end

function map_copy_run_darkblue( map_copy )
end

function map_run_darkblue( map )
end

function map_copy_close_darkblue( map_copy )
end

function can_open_entry_darkblue( map )
end
function map_copy_run_special_darkblue(map)
end