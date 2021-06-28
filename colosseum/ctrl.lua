function config(map)
    MapCanSavePos(map, 0) 
    MapCanPK(map, 1)
    MapCopyNum(map, 1) 
    SingleMapCopyPlyNum(map, 300)  
    MapCanTeam(map , 0)
    MapType ( map , 3 )
end


function get_map_entry_pos_colosseum()  

	local POS_X=1541
	local POS_Y=2613
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner") 
    SetMapEntryTime(map, "2005/8/30/0/0", "0/1/0", "0/1/0", "0/1/0") 

end

function after_enter_colosseum( role , map_copy )
end

function before_leave_colosseum( role )
end





function map_copy_close_colosseum( map_copy )
	ClearAllSubMapCha(map_copy)
end