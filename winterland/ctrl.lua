function config(map)
    MapCanSavePos(map, 1) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    MapCanPK(map, 0) --设置地图是否可以PK，此设置影响该地图的所有副本
  --  MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
  --  SingleMapCopyPlyNum(map, 300)
  --  MapCanTeam(map , 1)
 --   MapType ( map , 4 )

end

function init_entry(map)

end

function map_run_winterland ( map )
	local now_hour= tonumber(os.date("%H"))		-------------时 
	local now_miniute= tonumber(os.date("%M"))	-------------分    
	local CheckDateNum = now_hour*100 +now_miniute
	local NowSecond = tonumber(os.date("%S"))			-------秒
	if now_hour == 0  and now_miniute == 0 and  NowSecond < 6 then
		Clear_Event_Record_By_Event_Name( "海港指挥的聚会" )
		Clear_Event_Record_By_Event_Name( "生化危机" )
		Clear_Event_Record_By_Event_Name( "维尔傀儡娃娃" )
		Clear_Event_Record_By_Event_Name( "卡拉傀儡娃娃" )
		Clear_Event_Record_By_Event_Name( "黑龙情报员" )
	end
end