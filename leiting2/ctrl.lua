--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
    MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    MapCanPK(map, 1) --设置地图是否可以PK，此设置影响该地图的所有副本
    MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
    SingleMapCopyPlyNum(map, 300)   --设置一个副本的玩家数
	MapCanTeam(map , 1)
    MapType ( map , 4 )
end

function map_run_leiting2( map )

end

function get_map_entry_pos_leiting2()   --体耱?铗牮? 镱痱嚯?

	local POS_X=2168
	local POS_Y=2805
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner") --绣汨铐 镱�怆屙? 镱痱嚯??惕疣?隋潲龛
    --SetMapEntryTime(map, "2010/10/18/0/0", "0/2/0", "0/1/0", "0/1/0") --吗屐� 镱�怆屙? 镱痱嚯??惕疣?隋潲龛
    SetMapEntryTime(map, "2010/10/18/0/0", "0/1/0", "0/1/0", "0/1/0") --吗屐� 镱�怆屙? 镱痱嚯??惕疣?隋潲龛

end


function can_open_entry_binglang2( map ) 
--	local time = GetTickCount ( ) 
	local Now_Time = GetNowTime()
	if Now_Time == 0 or Now_Time == 6 or Now_Time == 12 or Now_Time == 18 then
		return 1
	else
		return 1
	end

end 

function map_copy_run_leiting2(map_copy)
end

function map_copy_run_special_leiting2(map_copy)
end

function after_enter_leiting2( role , map_copy )
end

function before_leave_leiting2( role )
end