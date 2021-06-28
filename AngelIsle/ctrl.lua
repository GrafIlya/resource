function config(map)
    MapCanSavePos(map, 0) 
    MapCanPK(map, 1) 
    MapCopyNum(map, 1) 
    SingleMapCopyPlyNum(map, 300)   
	MapCanTeam(map , 1)
    MapType ( map , 4 )
end

function get_map_entry_pos_AngelIsle()  

	local POS_X=2232
	local POS_Y=2782
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner") 
    SetMapEntryTime(map, "2005/8/30/16/0", "0/24/0", "0/0/20", "0/0/30") 

end