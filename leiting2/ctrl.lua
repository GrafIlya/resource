--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
    MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    --MapCanPK(map, 0) --设置地图是否可以PK，此设置影响该地图的所有副本
    MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
    SingleMapCopyPlyNum(map, 300)   --设置一个副本的玩家数
	MapCanTeam(map , 1)
    MapType ( map , 3 )
end


function get_map_entry_pos_leiting2()   --体耱?铗牮? 镱痱嚯?

	local POS_X=2160
	local POS_Y=2782
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner") --绣汨铐 镱�怆屙? 镱痱嚯??惕疣?隋潲龛
    SetMapEntryTime(map, "2010/10/18/0/0", "0/3/0", "0/0/30", "0/0/50") --吗屐� 镱�怆屙? 镱痱嚯??惕疣?隋潲龛

end


