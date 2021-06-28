function config(map)
    MapCanSavePos(map, 0)
    --MapCanPK(map, 0)
    MapCopyNum(map, 1) 
    SingleMapCopyPlyNum(map, 300)  
    MapCanTeam(map , 1)
    MapType ( map , 1 )
end


function get_map_entry_pos_shalan2()   --Время открытия портала 

	local POS_X=2167
	local POS_Y=2768
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner")   --Регион портала
    SetMapEntryTime(map, "2005/10/30/22/0", "0/24/0", "0/24/0", "0/24/0")   --Время открытия портала

end

function after_enter_shalan2( role , map_copy )
end

function before_leave_shalan2( role )
end


