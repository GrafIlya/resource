-- This Script is edited by devilish http://devilish.servegame.org, edited by Sky

function config(map)
    MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    MapCanPK(map, 1) -- This Map Can be PK Set.
    MapCanTeam( map, 0 )
    MapType( map , 3 )
    MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
    SingleMapCopyPlyNum(map, 300)   --设置一个副本的玩家数
    --MapCanTeam(map , 1) -- map can be party.
    --MapCanStall(map , 0) -- map can set stall.
end


function get_map_entry_pos_bountypk()   -- Cordinates of portal

	local POS_X=1338
	local POS_Y=583
	return POS_X , POS_Y

end

function init_entry(map)

    SetMapEntryMapName(map, "darkblue") -- This Is where the portal map located
    SetMapEntryTime(map, "2006/10/18/1/0", "0/2/30", "0/0/30", "0/0/40") --设置入口的时间，地图对象，首次开启时间（年/月/日/时/分），以后再次开启的间隔（日/时/分，全０表示只有首次开启），每次开启到入口消失的间隔（日/时/分，全０表示永不消失），每次开启到地图关闭的间隔（日/时/分，全０表示永不关闭）。。
	-- The first set of numbers is the starting point (Year/Month/Day/Hour/Minute), next is opening interval (Day/Hour/Minute),
	-- portal open duration (Day/Hour/Minute), and last is the map duration (Day/Hour/Minute).

end

function after_enter_bountypk( role , map_copy )
end

function before_leave_bountypk( role )
end

--function map_copy_first_run_bountypk( map_copy )
--	lua_SetCopySpecialInter(map_copy , 10000)
--	Notice("10")
--
--end

--function map_copy_run_bountypk( map_copy )
----Notice("3")
--local new1 = CreateChaEx(791, 120, 120, 145, 50)
--	SetChaLifeTime(new1, 900000)
--		
--end

--每5分钟秒执行1次
function map_copy_run_special_bountypk( map_copy ) 
	local HowManyNoDead = GetMapActivePlayer(map_copy)
	Notice("There are current "..HowManyNoDead.." survivor in Bounty Hunter PK")

end
--每5秒执行一次的
function map_run_bountypk( map )
	
end

--地图关闭时执行
function map_copy_before_close_bountypk( map_copy )
	How_Many_Active = GetMapActivePlayer(map_copy)
	if How_Many_Active > 0 then
		DealAllActivePlayerInMap(map_copy,"GiveSpecItem2")
	end
	How_Many_Active = 0
	Money_all = 1000000
	Every_5_minute = 0
end

--地图关闭时执行
function map_copy_close_bountypk( map_copy )
	ClearAllSubMapCha(map_copy)
end
--
-----------------------------------------------------------------------
-- Privatia.serverdev.net
-- Portal opening
-----------------------------------------------------------------------
function can_open_entry_bountypk( map ) 
--	local time = GetTickCount ( ) 
	local Now_Time = GetNowTime()
	if Now_Time ==1 or Now_Time ==4 or Now_Time ==7 or Now_Time ==10 or Now_Time ==13 or Now_Time == 19 then  ------------bh 1 4 7 10 13 16 19 22
		return 1
	else
		return 1
	end

end 


function GiveSpecItem2( role )
	if How_Many_Active == 0 then
		return
	end
	
	local Money_bountypk = Money_all/How_Many_Active
--	SystemNotice(role,How_Many_Active)

	if How_Many_Active > 5 then
		AddMoney ( role , 0 , Money_bountypk )
	--	local message = "今天的乱斗共存活了"..How_Many_Active .. "位玩家,他们每人将获得"..Money_bountypk .."的金钱"
	--	SystemNotice(role,How_Many_Active)
		return
	end

	if How_Many_Active <  6 and How_Many_Active > 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 5866  , 1 , 4 )
		else
			GiveItem ( role , 0 , 5866  , 1 , 4 )
		end
			 
		AddMoney ( role , 0 , Money_bountypk )
		--SystemNotice(role,How_Many_Active)
					
		--local message = "今天的乱斗中共存活了"..How_Many_Active .."位玩家,他们每人将获得"..Money_bountypk .."的金钱和1个乱斗之星徽章"
		--Notice ( message )
		return
	end
	
	if How_Many_Active == 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 5867  , 1 , 4 )
		else
			GiveItem ( role , 0 , 5867  , 1 , 4 )
		end
		AddMoney ( role , 0 , Money_bountypk )
		local cha_name = GetChaDefaultName ( role )
		local message = "Congratulations "..cha_name.." you have earned ".. Money_bountypk .." gold and 1 Bounty King Emblem"
	--	SystemNotice(role,How_Many_Active)
		SystemNotice(role,message)
		return
	end
end 
