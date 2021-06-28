--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
    MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    MapCanPK(map, 1) --设置地图是否可以PK，此设置影响该地图的所有副本
    MapCanTeam( map, 1 )
    MapType( map , 3 )
    MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
    SingleMapCopyPlyNum(map, 300)   --设置一个副本的玩家数
    --MapCanTeam(map , 1)
    MapCanStall(map , 0)
end


function get_map_entry_pos_secretgarden()   --设置入口的位置的坐标（坐标（米））

	local POS_X=2211
	local POS_Y=2789

	return POS_X , POS_Y

end

function init_entry(map)

    SetMapEntryMapName(map, "garner") --设置入口的位置（地图名）
     SetMapEntryTime(map, "2010/8/1/0/0", "0/1/0", "0/0/30", "0/0/55") --设置入口的时间，地图对象，首次开启时间（年/月/日/时/分），以后再次开启的间隔（日/时/分，全０表示只有首次开启），每次开启到入口消失的间隔（日/时/分，全０表示永不消失），每次开启到地图关闭的间隔（日/时/分，全０表示永不关闭）。。

end

function after_enter_secretgarden( role , map_copy )
end

function before_leave_secretgarden( role )
end

--function map_copy_first_run_secretgarden( map_copy )
--	lua_SetCopySpecialInter(map_copy , 10000)
--	Notice("10")
--
--end

--function map_copy_run_secretgarden( map_copy )

	local HowManyNoDead = GetMapActivePlayer(map_copy)
	Notice("� 彦疱狃�眄铎 踵铖� "..HowManyNoDead.." 恹骅怿桴")
	


function map_copy_before_close_secretgarden( map_copy )
	How_Many_Active = GetMapActivePlayer(map_copy)
	if How_Many_Active > 0 then
		DealAllActivePlayerInMap(map_copy,"GiveSpecItem")
	end
	How_Many_Active = 0
	Money_all = 100000000
	Every_5_minute = 0
end

--鐦�?鼧+晩+�?悙
function map_copy_close_secretgarden( map_copy )
	ClearAllSubMapCha(map_copy)
end
--
--地图开关判断——————————————————————————————————————————

function can_open_entry_secretgarden( map )
	local Now_Time = GetNowTime()
		return 1

end 


function GiveSpecItem( role )
	if How_Many_Active == 0 then
		return
	end
	
	local Money_secretgarden = Money_all/How_Many_Active
--	SystemNotice(role,How_Many_Active)

	if How_Many_Active > 5 then
		AddMoney ( role , 0 , Money_secretgarden )
	--	local message = "傠Θ "..How_Many_Active .. "ǎ喈�, � 绋 "..Money_secretgarden .." ぅ� "
	--	SystemNotice(role,How_Many_Active)
		return
	end

	if How_Many_Active <  6 and How_Many_Active > 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 1031  , 1 , 4 )
		else
			GiveItem ( role , 0 , 1031  , 1 , 4 )
		end
			 
		AddMoney ( role , 0 , Money_secretgarden )
		--SystemNotice(role,How_Many_Active)
					
		--local message = "傠Θ "..How_Many_Active .."ǎ喈獱, 埇 犰 "..Money_secretgarden .."．� � 1 憿镡泐 憩～ガ� 鏍 "
		--Notice ( message )
		return
	end
	
	if How_Many_Active == 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 1032  , 1 , 4 )
		else
			GiveItem ( role , 0 , 1032  , 1 , 4 )
		end
		AddMoney ( role , 1000000 , Money_secretgarden )
		local cha_name = GetChaDefaultName ( role )
		local message = "项玟疣怆�屐 "..cha_name.."! 蔓 恹桡疣腓  ".. Money_secretgarden .." 珙腩蜞 � 1 蒽犭屐鬆 "
	--	SystemNotice(role,How_Many_Active)
		SystemNotice(role,message)
		return
	end
end 