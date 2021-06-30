--------------------------------------------------------------------------
--									--
--									--
--				MissionSdk.lua				--
--									--
--�恄鵜腴竟缺�諉諳隅砱							--
--------------------------------------------------------------------------
print( "Loading MissionSdk.lua" )


--腳本系統返回值定義
LUA_TRUE 			= 1
LUA_FALSE			= 0
LUA_ERROR			= -1
LUA_NULL			= 0

--任務系統腳本
TE_MAPINIT		= 0			--出生
TE_NPC				= 1			--npc攜帶
TE_KILL				= 2			--摧毀物件
TE_GAMETIME		= 3			--遊戲時間
TE_CHAT			= 4			--聊天關鍵字
TE_GETITEM		= 5			--拾取物品
TE_EQUIPITEM	= 6			--裝備物品
TE_GOTO_MAP    = 7			--到達目標點	（角色觸發器存儲）參數1，地圖ID， 參數2，地圖到達radom 率，參數3，地圖坐標x，參數4, 地圖坐標y
TE_LEVELUP      	= 8			--升級			（角色觸發器存儲）參數1，是否主動關閉（觸發器動作後關閉），參數2，是否每個等級都觸發，參數3，指定等級觸發

--觸發器時間類型
TT_CYCLETIME	= 0			--時間循環
TT_MULTITIME	= 1			--循環運行n次
		
--觸發器最大攜帶條件數量
TR_MAXNUM_CONDITIONS		= 12
TR_MAXNUM_ACTIONS			= 12

--npc任務狀態信息定義
MIS_ACCEPT       = 1			--有符合條件可以接的任務
MIS_DELIVERY     = 2			--已完成可交付的任務
MIS_PENDING		= 4			--已完成可交付的任務
MIS_IGNORE		= 8			--不符合條件可以接的任務

--任務列表頁操作命令
MIS_PREV			= 0			--請求發送任務列表的上一頁信息
MIS_NEXT			= 1			--請求發送任務列表的下一頁信息
MIS_PREV_END	= 2			--任務列表沒有上一頁信息
MIS_NEXT_END	= 3			--任務列表沒有下一頁信息
MIS_SEL				= 4			--請求選擇任務列表項目
MIS_TALK			= 5			--請求任務對話信息
MIS_BTNACCEPT	= 6			--請求接受任務
MIS_BTNDELIVERY= 7			--請求交付任務
MIS_BTNPENDING	= 8			--未決任務請求（客戶端禁止按鈕）
MIS_LOG			= 9			--請求任務日誌信息

--任務信息定義
--完成 任務需求類型定義
MIS_NEED_ITEM		= 0		--需要獲取物品
MIS_NEED_KILL		= 1		--需要摧毀物件
MIS_NEED_SEND		= 2        --需要送給某人
MIS_NEED_CONVOY	= 3 		--需要護送到某的
MIS_NEED_EXPLORE = 4		--需要探索某的
MIS_NEED_DESP		= 5		--文字表述的任務目標

--完成任務獎勵類型定義
MIS_PRIZE_ITEM		= 0		--獎勵物品
MIS_PRIZE_MONEY	= 1		--獎勵金錢
MIS_PRIZE_FAME		= 2		--獎勵聲望
MIS_PRIZE_CESS		= 3		--獎勵貿易稅率
MIS_PRIZE_PETEXP  = 4		--獎勵寵物經驗值

--角色職業類型
MIS_NOVICE			= 0		--新手
MIS_FENCER			= 1		--劍士
MIS_HUNTER			= 2		--獵人
MIS_EXPERIENCED	= 2		--水手
MIS_RISKER			= 4		--冒險者
MIS_DOCTOR			= 5		--醫生(祈願使)
MIS_TECHNICIAN		= 6		--技師
MIS_TRADER			= 7		--商人
MIS_LARGE_FENCER  = 8		--巨劍士
MIS_TWO_FENCER    = 9		--雙劍士
MIS_SHIELD_FENCER = 10		--劍盾士
MIS_WILD_ANIMAL_TRAINER = 11 --馴獸師
MIS_GUNMAN			= 12      --狙擊手
MIS_CLERGY			= 13		--聖職者
MIS_SEALER			= 14		--封印師
MIS_SHIPMASTER	= 15		--船長
MIS_VOYAGE			= 16		--航海士
MIS_ARRIVISTE		= 17		--暴發戶
MIS_ENGINEER			= 18		--工程師

--公會類型
MIS_GUILD_NAVY		= 0		--海軍公會
MIS_GUILD_PIRATE   = 1		--海盜公會

--永遠為假
function AlwaysFailure()
	return LUA_FALSE
end

--永久為真
function AlwaysTrue()
	return LUA_TRUE
end

--沒有歷史標籤
function NoRecord( character, record )
	if record == nil then
		SystemNotice( character, "NoRecord:Function parameter error!" )
		return LUA_ERROR
	end
	local ret = IsValidRecord( character, record )
	if ret == LUA_FALSE then
		SystemNotice( character, "NoRecord:Invalid story record index error or character index error!" )
		return LUA_ERROR
	end
	
	ret = IsRecord( character, record )
	if ret ~= LUA_TRUE then
		return LUA_TRUE
	end
	return LUA_FALSE
end

--檢測技能狀態
function HasState( character, state_id )
	if state_id == nil then
		SystemNotice( character, "HasState:Function parameter error!" )
		return LUA_ERROR
	end
	
	local ret = GetChaStateLv( character, state_id )
	if ret ~= nil then
		if ret > 0 then
			return LUA_TRUE
		end
	end
	return LUA_FALSE
end

--檢測角色體型
function IsChaType( character, type_id )
	if type_id == nil then
		SystemNotice( character, "IsChaType:Function parameter error!" )
		return LUA_ERROR
	end
	
	local ret = GetChaBody( character )
	if ret == type_id then
		return LUA_TRUE
	end
	return LUA_FALSE
end

--檢測不是角色體型
function NoChaType( character, type_id )
	if type_id == nil then
		SystemNotice( character, "NoChaType:Function parameter error!" )
		return LUA_ERROR
	end
	
	local ret = GetChaBody( character )
	if ret ~= type_id then
		return LUA_TRUE
	end
	return LUA_FALSE
end
--播放特效
function Starteffect( character, npc, tp )
		
	if tp == nil then
		PRINT( "Starteffect:Function parameter error!" )
		SystemNotice( character, "Starteffect:Function parameter error!" )
		return LUA_ERROR	
	end
	
	PRINT( "Starteffect, p1 = "..tp )
	PlayEffect( npc, tp )
	return LUA_TRUE
end
--是否有歷史標籤
function HasRecord( character, record )
	if record == nil then
		SystemNotice( character, "HasRecord:Function parameter error!" )
		return LUA_ERROR
	end
	local ret = IsValidRecord( character, record )
	if ret == LUA_FALSE then
		SystemNotice( character, "HasRecord:Invalid story record index error or character index error!" )
		return LUA_ERROR
	end
	return IsRecord( character, record )
end

--沒有任務記錄標籤
function NoFlag( character, id, flag )
	if id == nil or flag == nil then
		SystemNotice( character, "NoFlag:Function parameter error!" )
		return LUA_ERROR
	end	
	local ret = IsValidFlag( character, flag )
	if ret == LUA_FALSE then
		SystemNotice( character, "NoFlag:Invalid quest record index error or character index error!" )
		return LUA_ERROR
	end
	ret = IsFlag( character, id, flag )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	return LUA_TRUE
end

--不能有該任務護送NPC
function NoConvoyNpc( character, misid )
	if misid == nil then
		SystemNotice( character, "NoConvoyNpc:Function parameter error!" )
		return LUA_ERROR
	end
	
	local ret = HasConvoyNpc( character, misid )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	
	return LUA_TRUE
end

--radom 任務送物件給npc時，判斷是否npc已經接受過該物品
--function NoRandNpcItemFlag( character, misid, npcid )
--	if misid == nil or npcid == nil then
--		SystemNotice( character, "NoRandNpcItemFlag:Function parameter error!" )
--		return LUA_ERROR
--	end
--	
--	local ret = HasRandNpcItemFlag( character, misid, npcid )
--	if ret == LUA_TRUE then
--		return LUA_FALSE
--	end
--	return LUA_TRUE
--end

--沒有任務標籤
function NoMission( character, id )
	if id == nil then
		SystemNotice( character, "NoMission:Function parameter error!" )
		return LUA_ERROR
	end
	local ret = HasMission( character, id )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	return LUA_TRUE
end

--沒有指定得radom 任務
function NoRandMission( character, id )
	if id == nil then
		SystemNotice( character, "NoRandMission:function parameter error" )
		return LUA_ERROR
	end
	
	local ret = HasRandMission( character, id )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	return LUA_TRUE
end

--任務沒有失敗
function NoMisssionFailure( character, id )
	if id == nil then
		SystemNotice( character, "NoMisssionFailure:function parameter error" )
		return LUA_ERROR
	end
	
	local ret = HasMisssionFailure( character, id )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	return LUA_TRUE	
end

function IsMission( character, id )
	if id == nil then
		SystemNotice( character, "IsMission:Function parameter error!" )
		return LUA_ERROR
	end
	return HasMission( character, id )
end

function NoGuild( character )
	local ret = HasGuild( character )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	return LUA_TRUE
end

function NoPfEqual( character, pf )
	local ret = PfEqual( character, pf )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	return LUA_TRUE
end

--添加指定的下一個任務記錄標籤
function AddNextFlag( character, id, startflag, count )
	if id == nil or startflag == nil or count == nil then
		SystemNotice( character, "AddNextFlag:Function parameter error!" )
	end
	local num = 0
	for i = 1, count, 1 do
		local ret = IsFlag( character, id, startflag + num )
		if ret == LUA_FALSE then
			PRINT( "AddNextFlag: flag = ", startflag + num )
			ret = SetFlag( character, id, startflag + num )
			if ret ~= LUA_TRUE then
				SystemNotice( character, "AddNextFlag:Unable to set quest record label notice error!" )
				return LUA_ERROR
			end
			return LUA_TRUE
		end
		num = num + 1
	end
	return LUA_TRUE
end

--設置下一個radom 任務記錄標籤
function AddRMNextFlag( character, id, startflag, count )
	if id == nil or startflag == nil or count == nil then
		SystemNotice( character, "AddRMNextFlag:Function parameter error!" )
	end
	local num = 0
	for i = 1, count, 1 do
		local ret = HasFlag( character, id, startflag + num )
		if ret == LUA_FALSE then
			PRINT( "AddRMNextFlag: flag = ", startflag + num )
			ret = SetFlag( character, id, startflag + num )
			if ret ~= LUA_TRUE then
				SystemNotice( character, "AddRMNextFlag:Unable to set quest record label notice error!" )
				return LUA_ERROR
			end
			return LUA_TRUE
		end
		num = num + 1
	end
	return LUA_TRUE
end
-----------船或者在這個港口或者在那個港口
-- function HasAllBoatInBerth_eitheror( character, p1, p2 )
-- 	local ret1 = HasAllBoatInBerth( character, p1 )
--	local ret2 = HasAllBoatInBerth( character, p2 )
--	if ret1 ~= LUA_TRUE and  ret2 ~= LUA_TRUE  then
--		PRINT( "ConditionsTest:HasAllBoatInBerth_eitheror = false" )
--		return LUA_FALSE
--	end
--	if ret1 == LUA_TRUE  then
--		return LUA_TRUE
--	end
--	if  ret2 == LUA_TRUE  then
--		return LUA_TRUE
--	end
-- end
--檢測任務記錄標籤信息
function HasFlag( character, id, flag )
	if id == nil or flag == nil then
		SystemNotice( character, "HasFlag:Function parameter error!" )
		return LUA_ERROR
	end
	local ret = IsValidFlag( character, flag )
	if ret ~= LUA_TRUE then
		SystemNotice( character, "HasFlag:Function parameter error!" )
		return LUA_ERROR
	end
	ret = IsFlag( character, id, flag )
	return ret
end

--檢測一個序列的任務記錄標籤信息
function HasAllFlag( character, id, startflag, count )
	if id == nil or startflag == nil or count then
		SystemNotice( character, "HasAllFlag:Function parameter error!" )
		return LUA_ERROR
	end
	local num = 0
	for i = 1, count, 1 do
		local ret = IsFlag( character, id, startflag + num )
		if ret ~= LUA_TRUE then
			return LUA_FALSE
		end
		num = num + 1
	end
	return LUA_TRUE
end

--獲取一個序列的任務標籤記錄數量信息
function GetNumFlag( character, id, startflag, count )
	if id == nil or startflag == nil or count == nil then
		SystemNotice( character, "GetNumFlag:Function parameter error!" )
		return 0
	end
	local num = 0
	for i = 1, count, 1 do
		local ret = IsFlag( character, id, startflag + num )
		if ret ~= LUA_TRUE then
			break
		end
		num = num + 1
	end
	return num
end

--檢驗值
function IsValue( id1, id2 )
	if id1 == nil or id2 == nil then
		PRINT( "IsValue:Function parameter error!" )
		return LUA_ERROR
	end
	if id1 == id2 then
		return LUA_TRUE
	end
	return LUA_FALSE
end

--檢測是否是指定的怪物類型
function IsMonster( id1, id2 )
	return IsValue( id1, id2 )
end

--檢測是否指定的物品類型
function IsItem( id1, id2 )
	return IsValue( id1, id2 )
end

function NoItem( character, itemid, count )
	if itemid == nil or count == nil then
		PRINT( "NoItem:parameter error!" )
		return LUA_ERROR
	end
	
	local ret = HasItem( character, itemid, count )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	
	return LUA_TRUE
end

function BankNoItem( character, itemid, count )
	if itemid == nil or count == nil then
		PRINT( "BankNoItem:parameter error!" )
		return LUA_ERROR
	end
	
	local ret = BankHasItem( character, itemid, count )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	
	return LUA_TRUE
end

function EquipNoItem( character, itemid, count )
	if itemid == nil or count == nil then
		PRINT( "EquipNoItem:parameter error!" )
		return LUA_ERROR
	end
	
	local ret = EquipHasItem( character, itemid, count )
	if ret == LUA_TRUE then
		return LUA_FALSE
	end
	
	return LUA_TRUE
end

----Leo的聲望函數判斷，判斷角色聲上是否有固定枝的聲望
function HasCredit(character,value)
	local Role_Credit = GetCredit(character)
	if value > Role_Credit then
		return LUA_FALSE
	else
		return LUA_TRUE
	end
end


--Leo end

----Leo的聲望扣除，扣除角色聲上的聲望
function DelRoleCredit(character,npc,value)
	DelCredit(character,value)
	return LUA_TRUE
end
--Leo end


-------------------死亡證明----------missdk
function CheckPoint (character,value)
		--SystemNotice( character , "value=="..value)
	local i= CheckBagItem( character, value )
	if i~=1 then
		SystemNotice( character , "Please ensure you have at least 1 Proof of Death on you")
	return LUA_FALSE
	end
	local Point_dead = GetChaItem2 ( character , 2 , value )
	local Point = GetItemAttr(Point_dead, ITEMATTR_VAL_STR)
		--SystemNotice( character , "您死了"..Point.."次")
	if Point<41 then
		SystemNotice( character , "Please ensure that you have died enough times")
		return LUA_FALSE
		
	end
	return LUA_TRUE
end
		
--------------------判斷背包內無某種道具
function HaveNoItem (character,value)
		--SystemNotice( character , "value=="..value)
	local i= CheckBagItem( character, value )
	--SystemNotice( character , "i=="..i)
	if i~=0 then
		SystemNotice( character , "Please ensure that you do not have any Proof of Death")
		return LUA_FALSE
	end
	return LUA_TRUE
end
----給角色背包固定位置添加道具
function AddChaItem1(character,npc,value)
	--SystemNotice( character ,"value=="..value)		
	local item_number = CheckBagItem( character, value )			
	if item_number >=1 then
		SystemNotice( character ,"You already possess a Challenge Letter")
		return LUA_FALSE 
	end
	------------判斷背包第一欄是否為空
	--local item1=GetItemP(character,0)
	--local itemid1=GetItemID( item1 )
	--if itemid1==0 or itemid1==nil then
	--	SystemNotice( character, "請把背包第一欄的物品移開" )
	--	return LUA_FALSE
	--end

	------------取挑戰書的指針
	local r1=0
	local r2=0
		--SystemNotice( character ,"r1=="..r1)
	r1,r2 =MakeItem ( character , value  , 1 , 4 )
	local Item_new = GetChaItem ( character , 2 , r2 )

	----------記錄時間
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------時
	local now_miniute= os.date("%M")	-------------分
	local now_scend=  os.date("%S")		-------------秒
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------時     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_scend= tonumber(now_scend)		-------------秒     
	--local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	--SystemNotice ( character , "now_yes=="..now_yes )
	--SystemNotice ( character , "now_month=="..now_month )
	--SystemNotice ( character , "now_day=="..now_day )
	--SystemNotice ( character , "now_hour=="..now_hour )
	--SystemNotice ( character , "now_miniute=="..now_miniute )
	--SystemNotice ( character , "now_scend=="..now_scend )
	SetItemAttr(Item_new, ITEMATTR_VAL_STA, now_month )		-------------月 	
	SetItemAttr(Item_new, ITEMATTR_VAL_STR, now_day )		-------------日  
	SetItemAttr(Item_new, ITEMATTR_VAL_CON, now_hour )		-------------時   
	SetItemAttr(Item_new, ITEMATTR_VAL_DEX, now_miniute )		-------------分   
	SetItemAttr(Item_new, ITEMATTR_VAL_AGI, now_scend )		-------------秒 
	SynChaKitbag(character,13)
	return LUA_TRUE
end
function AddChaItem2(character,npc,value)
	local cha = ChaIsBoat ( character ) 
	if cha ==1 then
		SystemNotice( character ,"You need to land to complete Genesis quest")
		return LUA_FALSE 
	end	
	------------取挑戰書的指針
	local item1=GetItemP(character,0)
	local itemid1=GetItemID( item1 )
	if itemid1~=2911 then
		SystemNotice( character, "Please place the Challenge Letter in the 1st slot of your inventory." )
		return LUA_FALSE
	end
	----------記錄時間
	local now_yes = os.date("%y")			-------------年
	local now_month= os.date("%m")			-------------月
	local now_day= os.date("%d")			-------------日
	local now_hour= os.date("%H")			-------------時
	local now_miniute= os.date("%M")		-------------分
	local now_scend=  os.date("%S")			-------------秒
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------時     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_scend= tonumber(now_scend)		-------------秒     
	--SystemNotice ( character , "now_yes=="..now_yes )
	--SystemNotice ( character , "now_month=="..now_month )
	--SystemNotice ( character , "now_day=="..now_day )
	--SystemNotice ( character , "now_hour=="..now_hour )
	--SystemNotice ( character , "now_miniute=="..now_miniute )
	--SystemNotice ( character , "now_scend=="..now_scend )

	local item_old=GetItemP(character,0)
	---------去好漢書的時間	
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------月 	
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------日  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------時   
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)		-------------分   
	local old_scend = GetItemAttr(item_old, ITEMATTR_VAL_AGI)			-------------秒 
	--SystemNotice ( character , "old_month=="..old_month )
	--SystemNotice ( character , "old_day=="..old_day )       
	--SystemNotice ( character , "old_hour=="..old_hour )    
	--SystemNotice ( character , "old_miniute=="..old_miniute)
	--SystemNotice ( character , "old_scend=="..old_scend ) 

	---------刪除挑戰書
	local del_item =TakeItem( character, 0,2911, 1 )			                   
	if del_item==0  then
		SystemNotice ( character ,"Deletion of Challenge Letter failed")
		return LUA_FALSE
	end


	local used_time=(now_scend - old_scend)+(now_miniute - old_miniute)*60+(now_hour - old_hour)*3600+(now_day - old_day)*86400+(JNSTime_Flag[now_month] - JNSTime_Flag[old_month] )*86400
	local cha_name = GetChaDefaultName ( character )

	if used_time>28800 or used_time<0 then
		SystemNotice ( character ,"You took too long to complete Genesis's quest and will not receive any reward. Please try again!")
		return LUA_TRUE
	elseif used_time < 2400 and used_time>0 then
		Notice("Congratulations to "..cha_name.." for completing Genesis Challenge in "..used_time.." sec(s)!")
	end
	if used_time < JINISI_TIME then
		JINISI_TIME=used_time
	end
	------------取好漢書的指針
	local r1=0
	local r2=0
	r1,r2 =MakeItem ( character , value  , 1 , 4 )
	local Item_new = GetChaItem ( character , 2 , r2 )
	GiveItem ( character , 0 , 3094  , 1 , 4 )	
	SetItemAttr(Item_new, ITEMATTR_VAL_AGI, used_time )		-------------秒  
	SynChaKitbag(character,13)
	return LUA_TRUE
end


----給角色背包添加道具
function AddChaItem3(character,npc,value)

	local item_number = CheckBagItem( character, value )			
	if item_number >=1 then
		SystemNotice( character ,"You already possess a Special Operation Card")
		return LUA_FALSE 
	end
	
	local r1=0
	local r2=0
		--SystemNotice( character ,"r1=="..r1)
	r1,r2 =MakeItem ( character , value  , 1 , 4 )
	local Item_new = GetChaItem ( character , 2 , r2 )
	


	----------記錄時間
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------時
	local now_miniute= os.date("%M")	-------------分
	local now_scend=  os.date("%S")		-------------秒
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------時     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_scend= tonumber(now_scend)		-------------秒     
	--local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	--SystemNotice ( character , "now_yes=="..now_yes )
	--SystemNotice ( character , "now_month=="..now_month )
	--SystemNotice ( character , "now_day=="..now_day )
	--SystemNotice ( character , "now_hour=="..now_hour )
	--SystemNotice ( character , "now_miniute=="..now_miniute )
	--SystemNotice ( character , "now_scend=="..now_scend )
	SetItemAttr(Item_new, ITEMATTR_VAL_STA, now_month )		-------------月 	
	SetItemAttr(Item_new, ITEMATTR_VAL_STR, now_day )		-------------日  
	SetItemAttr(Item_new, ITEMATTR_VAL_CON, now_hour )		-------------時   
	SetItemAttr(Item_new, ITEMATTR_VAL_DEX, now_miniute )		-------------分   
	SetItemAttr(Item_new, ITEMATTR_VAL_AGI, now_scend )		-------------秒 
	SynChaKitbag(character,13)
	return LUA_TRUE
end

function AddChaItem4(character,npc,value)
	
	local i= CheckBagItem( character, value )
		--SystemNotice( character , "i=="..i)
	if i~=1 then
		SystemNotice( character , "Please ensure that you have only 1 Special Operation Card")
		return LUA_FALSE
	end
	
	
	----------記錄時間
	local now_yes = os.date("%y")			-------------年
	local now_month= os.date("%m")			-------------月
	local now_day= os.date("%d")			-------------日
	local now_hour= os.date("%H")			-------------時
	local now_miniute= os.date("%M")		-------------分
	local now_scend=  os.date("%S")			-------------秒
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------時     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_scend= tonumber(now_scend)		-------------秒     
	--SystemNotice ( character , "now_yes=="..now_yes )
	--SystemNotice ( character , "now_month=="..now_month )
	--SystemNotice ( character , "now_day=="..now_day )
	--SystemNotice ( character , "now_hour=="..now_hour )
	--SystemNotice ( character , "now_miniute=="..now_miniute )
	--SystemNotice ( character , "now_scend=="..now_scend )

	local item_old = GetChaItem2 ( character , 2 , value )--------特別行動卡
	---------取特別行動卡的時間	
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------月 	
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------日  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------時   
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)		-------------分   
	local old_scend = GetItemAttr(item_old, ITEMATTR_VAL_AGI)			-------------秒 
	--SystemNotice ( character , "old_month=="..old_month )
	--SystemNotice ( character , "old_day=="..old_day )       
	--SystemNotice ( character , "old_hour=="..old_hour )    
	--SystemNotice ( character , "old_miniute=="..old_miniute)
	--SystemNotice ( character , "old_scend=="..old_scend ) 

	---------刪除特別行動卡
	local del_item =TakeItem( character, 0,value, 1 )--------------			                   
	if del_item==0  then
		SystemNotice ( character ,"Deletion of Special Operation Card failed")
		return LUA_FALSE
	end


	local used_time=(now_scend - old_scend)+(now_miniute - old_miniute)*60+(now_hour - old_hour)*3600+(now_day - old_day)*86400+(JNSTime_Flag[now_month] - JNSTime_Flag[old_month] )*86400
	local cha_name = GetChaDefaultName ( character )

	if used_time>900 or used_time<0 then
		SystemNotice ( character ,"You took too long to complete this special quest. Please abandon the quest and try again!")
		return LUA_FALSE
	elseif used_time <= 900 and used_time>0 then
		SystemNotice(character ,"Congratulations! You have completed the Special quest! You took "..used_time.." sec(s).")
	end
	
	SynChaKitbag(character,13)
	return LUA_TRUE
end


---------------判斷角色是否有某亂斗點數
function HasFightingPoint(character,value)
		--SystemNotice( character , "HasFightingPoint" )
		local i= CheckBagItem( character, 3849 )
		--SystemNotice( character , "i=="..i)
		if i~=1 then
			SystemNotice( character , "Please ensure that you have a Medal of Honor")
			return LUA_FALSE
		end
		local ATKER_LD = GetChaItem2 ( character , 2 , 3849 )
		local FightingPoint=GetItemAttr ( ATKER_LD , ITEMATTR_MAXENERGY)
	      --SystemNotice( character , "HasFightingPoint=="..FightingPoint )
	if value > FightingPoint then
		return LUA_FALSE
	else
		return LUA_TRUE
	end
end

---------------判斷角色是否有某榮譽點數
function HasHonorPoint(character,value)
		--SystemNotice( character , "HasHonorPoint" )
		local i= CheckBagItem( character, 3849 )
		--SystemNotice( character , "i=="..i)
		if i~=1 then
			SystemNotice( character , "Please ensure that you have a Medal of Honor")
			return LUA_FALSE
		end
		local DEFER_RYZ1 = GetChaItem2 ( character , 2 , 3849 )
		local HonorPoint = GetItemAttr ( DEFER_RYZ1 , ITEMATTR_VAL_STR)
	if value > HonorPoint then
		return LUA_FALSE
	else
		return LUA_TRUE
	end
end

--判斷好漢書時間是否小於某個值
function LessTime( character, value)
	local HHS_Num = 0
	HHS_Num = CheckBagItem( character, 2912 )
	---SystemNotice(character,""..HHS_Num)
	if HHS_Num ~= 1 then
		SystemNotice( character, "Please make sure your inventory has only one copy of Bawcock Letter")
		return 0
	end
	local role_HHS = GetChaItem2 ( character , 2 , 2912 )	
	local attr_num = GetItemAttr ( role_HHS, ITEMATTR_VAL_AGI)
	----SystemNotice(character,""..attr_num)
	if value > attr_num then
		return LUA_TRUE
	end

	return LUA_FALSE
end
----LOG---------金牛水手獎勵 
function JINNiuSS(character)

	local cha_name = GetChaDefaultName ( character )
	
	end

	------------------------------------金牛海盜獎勵
function JINNiuHD ( character,npc )

	local cha_name = GetChaDefaultName ( character )
	
end

------------------------------------金牛船長獎勵
function JINNiuCZ ( character,npc )

	local cha_name = GetChaDefaultName ( character )
	
end
----LOG---------雙子水手獎勵 
function ShuangZiSS (character,npc)

	local cha_name = GetChaDefaultName ( character )
	
	end

	------------------------------------雙子海盜獎勵
function ShuangZiHD ( character,npc )

	local cha_name = GetChaDefaultName ( character )
	
end

------------------------------------雙子船長獎勵
function ShuangZiCZ ( character,npc )

	local cha_name = GetChaDefaultName ( character )
	
end

-----------------------------------開始轉生
function ZSSTART ( character,npc )

	local cha_name = GetChaDefaultName ( character )
	
end

------------------------------------結束轉生
function ZSSTOP ( character,npc )

	local cha_name = GetChaDefaultName ( character )
	
end

------------------------------------結束二次轉生----dina
function ZSSTOP2 ( character,npc )

	local cha_name = GetChaDefaultName ( character )
	
end

--判斷好漢書時間是否大於某個值
function MoreTime( character, value)
	local HHS_Num = 0
	HHS_Num = CheckBagItem( character, 2912 )
	---SystemNotice(character,""..HHS_Num)
	if HHS_Num ~= 1 then
		SystemNotice( character, "Please make sure your inventory has only one copy of Bawcock Letter")
		return 0
	end
	local role_HHS = GetChaItem2 ( character , 2 , 2912 )	
	local attr_num = GetItemAttr ( role_HHS, ITEMATTR_VAL_AGI)
	----SystemNotice(character,""..attr_num)
	if value < attr_num then
		return LUA_TRUE
	end

	return LUA_FALSE
end

--判斷是否穿ぴ白羊套裝
function BaiyangOn( character )
	local head = GetChaItem ( character , 1 , 0 )
	local body = GetChaItem ( character , 1 , 2 )
	local hand = GetChaItem ( character , 1 , 3 )
	local foot = GetChaItem ( character , 1 , 4 )

	local Head_ID = GetItemID ( head )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
	local Cha_Num = GetChaTypeID( cha )

	if Body_ID ~= 5341 and Body_ID ~= 5345 and Body_ID ~= 5349 and Body_ID ~= 5353 then
		return LUA_FALSE
	end
	if Hand_ID ~= 5342 and Hand_ID ~= 5346 and Hand_ID ~= 5350 and Hand_ID ~= 5354 then
		return LUA_FALSE
	end
	if Foot_ID ~= 5343 and Foot_ID ~= 5347 and Foot_ID ~= 5351 and Foot_ID ~= 5355 then
		return LUA_FALSE
	end
	if Cha_Num == 4 then
		if Head_ID ~= 5352 then
		return LUA_FALSE
		end
	end

	return LUA_TRUE
end

---------------扣除角色身上的亂斗點數
function TakeFightingPoint(character,value)
		--SystemNotice( character , "TakeFightingPoint" )
		local i= CheckBagItem( character, 3849 )
		--SystemNotice( character , "i=="..i)
		if i~=1 then
			SystemNotice( character , "Please ensure that you have a Medal of Honor")
			return LUA_FALSE
		end
		local ATKER_LD = GetChaItem2 ( character , 2 , 3849 )
		local FightingPoint=GetItemAttr ( ATKER_LD , ITEMATTR_MAXENERGY)
	      --SystemNotice( character , "HasFightingPoint=="..FightingPoint )
	if value > FightingPoint then
		return LUA_FALSE
	else
		local new_point=FightingPoint - value
		SetItemAttr ( ATKER_LD , ITEMATTR_MAXENERGY , new_point)
		return LUA_TRUE
	end
end

---------------扣除角色身上的榮譽點數
function TakeHonorPoint(character,value)
		--SystemNotice( character , "TakeHonorPoint" )
		local i= CheckBagItem( character, 3849 )
		--SystemNotice( character , "i=="..i)
		if i~=1 then
			SystemNotice( character , "Please ensure that you have a Medal of Honor")
			return LUA_FALSE
		end
		local DEFER_RYZ1 = GetChaItem2 ( character , 2 , 3849 )
		local HonorPoint = GetItemAttr ( DEFER_RYZ1 , ITEMATTR_VAL_STR)
		if value > HonorPoint then
			return LUA_FALSE
		else
			local new_point=HonorPoint - value
			SetItemAttr ( DEFER_RYZ1 , ITEMATTR_VAL_STR , new_point)
			return LUA_TRUE
		end
end

--判斷組隊貢獻度
function HasOffer( character, value )
	local ret = HasZuDuiGongXianDu( character, value )
	if ret == LUA_TRUE then
		return LUA_TRUE
	end
	
	return LUA_FALSE
end

--扣除組隊貢獻度
function TakeOffer( character, value )
	local ret = TakeZuDuiGongXianDu( character, value )
	if ret == LUA_TRUE then
		return LUA_TRUE
	end
	
	return LUA_FALSE
end

-------判斷角色移動速度是否達到某值
function CheckSpeed( character, value)
	local Role_Speed = GetChaAttr( character, ATTR_MSPD )
	if Role_Speed < value then
		return LUA_FALSE
	end

	return LUA_TRUE

end
	
---------------------------------------------------------------金牛特別行動卡---------missionsdk

function AddChaItem5(character,npc,value)
	
	local i= CheckBagItem( character, value )
		--SystemNotice( character , "i=="..i)
	if i~=1 then
		SystemNotice( character , "Please make sure you have 1 Taurus Special Operation Card on you")
		return LUA_FALSE
	end
	
	
	----------記錄時間
	local now_yes = os.date("%y")			-------------年
	local now_month= os.date("%m")			-------------月
	local now_day= os.date("%d")			-------------日
	local now_hour= os.date("%H")			-------------時
	local now_miniute= os.date("%M")		-------------分
	local now_scend=  os.date("%S")			-------------秒
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------時     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_scend= tonumber(now_scend)		-------------秒     
	--SystemNotice ( character , "now_yes=="..now_yes )
	--SystemNotice ( character , "now_month=="..now_month )
	--SystemNotice ( character , "now_day=="..now_day )
	--SystemNotice ( character , "now_hour=="..now_hour )
	--SystemNotice ( character , "now_miniute=="..now_miniute )
	--SystemNotice ( character , "now_scend=="..now_scend )

	local item_old = GetChaItem2 ( character , 2 , value )--------金牛特別行動卡
	---------取特別行動卡的時間	
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------月 	
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------日  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------時   
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)		-------------分   
	local old_scend = GetItemAttr(item_old, ITEMATTR_VAL_AGI)			-------------秒 
	--SystemNotice ( character , "old_month=="..old_month )
	--SystemNotice ( character , "old_day=="..old_day )       
	--SystemNotice ( character , "old_hour=="..old_hour )    
	--SystemNotice ( character , "old_miniute=="..old_miniute)
	--SystemNotice ( character , "old_scend=="..old_scend ) 

	---------刪除特別行動卡
	local del_item =TakeItem( character, 0,value, 1 )--------------			                   
	if del_item==0  then
		SystemNotice ( character ,"Deletion of Taurus special quest card failed")
		return LUA_FALSE
	end


	local used_time=(now_scend - old_scend)+(now_miniute - old_miniute)*60+(now_hour - old_hour)*3600+(now_day - old_day)*86400+(JNSTime_Flag[now_month] - JNSTime_Flag[old_month] )*86400
	local cha_name = GetChaDefaultName ( character )

	if used_time>420 or used_time<0 then
		SystemNotice ( character ,"You took too long to complete this special quest. Please abandon the quest and try again!")
		return LUA_FALSE
	elseif used_time <= 420 and used_time>0 then
		SystemNotice(character ,"Congratulations! You have completed the Special quest! You took "..used_time.." sec(s).")
	end
	
	SynChaKitbag(character,13)
	return LUA_TRUE
end

------------------判斷是否轉生過
function CheckZS( character )
	local Zs_Exp = GetChaAttr ( character , ATTR_CSAILEXP )
	if Zs_Exp < 1 then
		return LUA_FALSE
	end

	return LUA_TRUE

end

--判斷榮譽值是否小於某個值
function LessCredit( character, p1, value )
	local ret = LessYongYuZhi( character, p1, value )
	if ret == LUA_TRUE then
		return LUA_TRUE
	end
	
	return LUA_FALSE
end
------------------檢測道具上編號是否相同
function CheckItem( character, itemid1, itemid2 )
	if itemid1 == nil or itemid2 == nil then
		PRINT( "CheckItem:parameter error!" )
		return LUA_ERROR
	end
	local item1=GetItemP(character,2)
	local item2=GetItemP(character,3)
	local itemida=GetItemID( item1 )
	local itemidb=GetItemID( item2 )
	local itemid1_number=GetItemAttr ( item1 , ITEMATTR_VAL_STR )
	local itemid2_number=GetItemAttr ( item2 , ITEMATTR_VAL_STR )
		
		
	if itemid1_number~=itemid2_number or itemida~=2902  or itemidb~=2903 then
	SystemNotice( character, "Love number does not match or is not placed at correct inventory position" )
		return LUA_FALSE	
	end
	return LUA_TRUE
end

function CheckBag( character, itemid, value1, value2)-----------value1===位置，value2===數量
	local cha = ChaIsBoat ( character ) 
	if cha ==1 then
		--SystemNotice( character ,"請您上岸接任務")
		return LUA_TRUE 
	end	
	if itemid== nil or value1== nil or value2== nil then
		PRINT( "CheckBag:parameter error!" )
		return LUA_ERROR
	end
	local item=GetItemP(character,value1)
	local itemida=GetItemID( item )
	local i = CheckBagItem( character, itemid )			---取數量
	local item_name=GetItemName ( itemid )
	local item_pos=value1+1
	if itemid~=itemida or i~=value2 then
		SystemNotice( character, "Please ensure that inventory "..item_pos.." position still have "..value2.." "..item_name )
		return LUA_FALSE	
	end
	return LUA_TRUE
end

function CheckBagEmp( character,value)-----------value===位置
	if value==nil then
		PRINT( "CheckBagEmp:parameter error!" )
		return LUA_ERROR
	end
	local item=GetItemP(character,value)
	local itemid=GetItemID( item )
	local item_pos=value+1
	local cha = ChaIsBoat ( character ) 
	if cha ==1 then
		SystemNotice( character, "To challenge Genesis, player can go to (2217, 2911) and look for Coddy. Also remove your inventory "..item_pos.."move inventory off this space. All players at sea please land")
		return LUA_FALSE 
	end	
	if itemid~=0 then
		SystemNotice( character, "To challenge Genesis, player can go to (2217, 2911) and look for Coddy. Also remove your inventory "..item_pos.."move inventory off this space. All players at sea please land")
		return LUA_FALSE	
	end
	return LUA_TRUE
end
--清除PK榮譽值
function AddCredit( character, value )
	local ret = AddYongYuZhi( character, value )
	if ret == LUA_TRUE then
		return LUA_TRUE
	end
	
	return LUA_FALSE
end

--檢測錢不足
function NoMoney( character, money )
	PRINT( "NoMoney:HasMoney" )
	local ret = HasMoney( character, money )
	PRINT( "NoMoney:HasMoney return ret = ", ret )
	if ret ~= LUA_TRUE then
		return LUA_TRUE
	end
	return LUA_FALSE
end

--檢查是否符合轉職條件
function CheckConvertProfession( character, newpf )
	if newpf == nil then
		PRINT( "CheckConvertProfession:Function parameter error!" )
		SystemNotice( character, "CheckConvertProfession:Function parameter error!" )
		return LUA_ERROR
	end
	
	--取得角色職業和類型
	local ret, cat, pf = GetCatAndPf( character )
	PRINT( "CheckConvertProfession: GetCatAndPf: ret =, pf = , newpf = , cat = , Profession = ", ret, pf, newpf, cat, Profession )
	--判斷是否新手，新手沒有轉職限制
	if pf ~= 0 then	
		--檢測是否有轉職限制
		if Profession ~= nil and Profession[pf] ~= nil then
			local flag = 0
			PRINT( "CheckConvertProfession: pf count = ", Profession[pf].count )
			for n = 1, Profession[pf].count, 1 do
				PRINT( "CheckConvertProfession: n =, newpf = , pf = ", n, newpf, Profession[pf][n] )
				if Profession[pf][n] == newpf then
					--該職業允許轉職
					flag = 1
					break
				end
			end
			
			--判斷是否可以轉職
			if flag ~= 1 then
				PRINT( "CheckConvertProfession: return false" )
				return LUA_FALSE
			end
		else
			PRINT( "CheckConvertProfession: return false fo Profession[pf] == nil " )
			return LUA_FALSE
		end
	end
	
	PRINT( "CheckConvertProfession: Category check cat =, newpf = ", cat, newpf )
	--檢測是否有體形限制
	if Category ~= nil and Category[cat] ~= nil then
		local flag = 0
		for n = 1, Category[cat].count, 1 do
			PRINT( "CheckConvertProfession:n = , newpf = , catpf = ", n, newpf, Category[cat][n] )
			if Category[cat][n] == newpf then
				PRINT( "CheckConvertProfession: return false" )
				flag = 1
				break
			end
		end
		
		if flag ~= 1 then
			PRINT( "CheckConvertProfession: return false" )
			return LUA_FALSE
		end
	else
		PRINT( "CheckConvertProfession: return false fo Category[cat] == nil " )
	end
	
	PRINT( "CheckConvertProfession: return true" )
	return LUA_TRUE
end

--中斷任務
function CancelMission( character, id, sid )
	PRINT( "CancelMission, sid = ", sid )
	if sid == nil or Mission[sid] == nil then
		PRINT( "CancelMission: abandoned quest function parameter cannot be as null!sid = "..sid )
		SystemNotice( character, "CancelMission: abandoned quest function parameter cannot be as null!sid = "..sid )
		local ret = ClearMission( character, id )
		if ret ~= LUA_TRUE then
		else
			SystemNotice( character, "has cleared invalid quest notice !ID = "..sid )
		end
		
		return LUA_FALSE
	end
	
	local mission = Mission[sid]
	
	PRINT( "CancelMission:mission.cancel", mission.cancel )
	if mission.tp == NOMAL_MISSION or mission.tp == WORLD_MISSION then
		if mission.cancel == nil then
			PRINT( "CancelMission:Target quest has not cancel operation. Return true" )
			return LUA_TRUE
		end
	
		local ret = NpcCancelTrigger( character,  mission.cancel, mission.id, mission.sid )
		if ret ~= LUA_TRUE then
			PRINT( "CancelMission:NpcCancelTrigger accept deliver quest trigger failed!" )
			SystemNotice( character, "CancelMission:NpcCancelTrigger accept deliver quest trigger failed!" )
			return LUA_FALSE
		end
		PRINT( "CancelMission: NpcTrigger, return true" ) 
	elseif mission.tp == RAND_MISSION then
		--初始化全局radom 任務參數
		InitRandParam()
		
		--獲取角色的radom 任務配置信息
		PRINT( "CancelMission:GetRandMission, id = ", id  )
		local ret
		RandParam.id = id
		ret, RandParam.tp, RandParam.level, RandParam.exp, RandParam.money, RandParam.prizedata, RandParam.prizetp, RandParam.numdata = GetRandMission( character, id )
		if ret ~= LUA_TRUE then
			PRINT( "CancelMission:GetRandMission error." )
			SystemNotice( character, "CancelMission:GetRandMission error." )
			return LUA_FALSE
		end
		PRINT( "CancelMission:tp, level, exp, money, item, numdata",  RandParam.tp, RandParam.level, RandParam.exp, RandParam.money, RandParam.prizedata, RandParam.prizetp, RandParam.numdata )
		
		local index = GetRandMissionTypeIndex( mission, RandParam.tp )
		PRINT( "CancelMission:GetRandMissionTypeIndex index = ", index )
		if index == 0  then
			PRINT( "CancelMission:obtain random quest matching type notice failed!" )
			SystemNotice( character, "CancelMission:obtain random quest matching type notice failed!" )
			return LUA_FALSE
		end
	
		if mission.missionlist == nil or mission.missionlist[index] == nil then
			PRINT( "CancelMission:random quest: quest notice error!mission.missionlist = , tpindex = ", mission.missionlist, index )
			SystemNotice( character, "CancelMission:random quest: quest notice error!mission.missionlist = , tpindex = ", mission.missionlist, index )
			return LUA_FALSE
		end
		
		if mission.missionlist[index].cancel == nil then
			PRINT( "CancelMission:Target quest has not cancel operation. Return true" )
			return LUA_TRUE
		end
	
		ret = NpcCancelTrigger( character, mission.missionlist[index].cancel, mission.id, mission.sid )
		if ret ~= LUA_TRUE then
			PRINT( "CancelMission:NpcCancelTrigger accept deliver quest trigger failed!" )
			SystemNotice( character, "CancelMission:NpcCancelTrigger accept deliver quest trigger failed!" )
			return LUA_FALSE
		end
		PRINT( "CancelMission: random quest: NpcCancelTrigger, return true" )
	else
		PRINT( "CancelMission:incorrect quest type notice.ID = "..mission.sid )
		SystemNotice( character, "CancelMission:incorrect quest type notice.ID = "..mission.sid )
		return LUA_FALSE
	end
	
	return LUA_TRUE
end

--接受任務
function AcceptMission( character, npc, missionlist, tpindex )
	PRINT( "AcceptMission" )
	local npcid = GetCharID( npc )
	local ret, id, state, tp = GetMissionTempInfo( character, npcid )
	if ret ~= LUA_TRUE then 
		SystemNotice( character, "AcceptMission:obtain character dialogue temporary quest notice error!" )
		return LUA_FALSE
	end
	
	local mission
	if tp == WORLD_MISSION then
		if Mission[id] == nil then
			SystemNotice( character, "AcceptMission:Obtain character incorrect world quest index notice!ID = "..id )
			return LUA_FALSE
		end
		mission = Mission[id]
	else
		if missionlist[id] == nil then
			PRINT( "AcceptMission:obtain character incorrect common quest index notice!ID = "..id )
			SystemNotice( character, "AcceptMission:obtain character incorrect common quest index notice!ID = "..id )
			return LUA_FALSE
		end
		if missionlist == nil then
			PRINT( "AcceptMission:Function parameter error!missionlist = "..missionlist )
			SystemNotice( character, "AcceptMission:Function parameter error!missionlist = "..missionlist )
			return LUA_ERROR
		end
		mission = missionlist[id]
	end
	
	if mission.begin == nil then
		PRINT( "AcceptMission:obtain character incorrect quest start trigger notice!ID = "..id )
		SystemNotice( character, "AcceptMission:obtain character incorrect quest start trigger notice!" )
		return LUA_FALSE
	end
	
	PRINT( "AcceptMission:npcid = %d ", npcid )
	if mission.tp == NOMAL_MISSION or mission.tp == WORLD_MISSION then
		PRINT( "AcceptMission:Required number of empty slots in inventory:numgrid = ", mission.begin.baggrid )
		local ret = HasLeaveBagGrid( character, mission.begin.baggrid )
		if ret ~= LUA_TRUE then
			PRINT( "AcceptMission:insufficient inventory slot when character accept quest! num = ", mission.begin.baggrid )
			BickerNotice( character, "Inventory space insufficient, requires "..mission.begin.baggrid.." space. Activation of quest failed!" )
			return LUA_FALSE
		end
		
		local ret = NpcTrigger( character,  npc, mission.begin, mission.id, mission.sid )
		if ret ~= LUA_TRUE then
			PRINT( "AcceptMission:NpcTrigger accept quest trigger management failed!" )
			SystemNotice( character, "AcceptMission:NpcTrigger accept quest trigger management failed!" )
			return LUA_FALSE
		end		
		PRINT( "AcceptMission: NpcTrigger, return true" ) 
	elseif mission.tp == RAND_MISSION then
		if mission.missionlist == nil or mission.missionlist[tpindex] == nil or mission.missionlist[tpindex].begin.baggrid == nil then
			PRINT( "AcceptMission:random quest: quest notice error!mission.missionlist = , tpindex = ", mission.missionlist, tpindex )
			SystemNotice( character, "AcceptMission:random quest: quest notice error!mission.missionlist = , tpindex = ", mission.missionlist, tpindex )
			return LUA_FALSE
		end
		
		PRINT( "AcceptMission:Required number of empty slots in inventory:numgrid = ", mission.missionlist[tpindex].begin.baggrid )
		local numgrid = mission.missionlist[tpindex].begin.baggrid
		local ret = HasLeaveBagGrid( character, numgrid )
		if ret ~= LUA_TRUE then
			PRINT( "AcceptMission:insufficient inventory slot when character accept quest! num = ", numgrid )
			BickerNotice( character, "Inventory space insufficient, requires "..numgrid.." space. Activation of quest failed!" )
			return LUA_FALSE
		end
		
		ret = NpcTrigger( character,  npc, mission.missionlist[tpindex].begin, mission.id, mission.sid )
		if ret ~= LUA_TRUE then
			PRINT( "AcceptMission:NpcTrigger accept quest trigger management failed!" )
			SystemNotice( character, "AcceptMission:NpcTrigger accept quest trigger management failed!" )
			return LUA_FALSE
		end
		PRINT( "AcceptMission: random quest: NpcTrigger, return true" )
	else
		PRINT( "AcceptMission:incorrect quest type notice.ID = "..mission.sid )
		SystemNotice( character, "AcceptMission:incorrect quest type notice.ID = "..mission.sid )
		return LUA_FALSE
	end

	if tp ~= WORLD_MISSION then
		ret = RefreshMissionState( character, npc )
		if ret ~= LUA_TRUE then
			PRINT( "AcceptMission:random quest: RefreshMissionState accept quest reset npc quest status failed!" )
			SystemNotice( character, "AcceptMission:random quest:RefreshMissionState accept quest change npc quest status failed!" )
			return LUA_FALSE
		end
	end
	
	return LUA_TRUE
end

--完成任務
function CompleteMission( character, npc, missionlist, selitem, param )
	PRINT( "CompleteMission" )
	if missionlist == nil then
		SystemNotice( character, "CompleteMission:Function parameter error!" )
		return LUA_ERROR
	end
	
	local npcid = GetCharID( npc )
	local ret, id, state, tp = GetMissionTempInfo( character, npcid )
	if ret ~= LUA_TRUE then 
		SystemNotice( character, "CompleteMission:obtain character dialogue temporary quest notice error!" )
		return LUA_FALSE
	end

	local mission	
	if tp == WORLD_MISSION then
		if Mission[id] == nil then
			SystemNotice( character, "CompleteMission:Obtain character incorrect world quest index notice!ID = "..id )
			return LUA_FALSE
		end
		mission = Mission[id]
	else		
		if missionlist[id] == nil then
			SystemNotice( character, "CompleteMission:obtain character incorrect common quest index notice!ID = "..id )
			return LUA_FALSE
		end
		mission = missionlist[id]
	end
	
	local ret = HasMisssionFailure( character, mission.id )
	if ret == LUA_TRUE then
		BickerNotice( character, "Quest["..mission.name.."]has failed, please select to abandon to clear quest log!" )
		return LUA_TRUE
	end
	
	if mission.tp == NOMAL_MISSION or mission.tp == WORLD_MISSION then
		PRINT( "CompleteMission:Required number of empty slots in inventory:numgrid = ", mission.result.baggrid )
		local ret = HasLeaveBagGrid( character, mission.result.baggrid )
		if ret ~= LUA_TRUE then
			PRINT( "CompleteMission:insufficient inventory slot when character completes quest!num = ", mission.result.baggrid )
			BickerNotice( character, "Inventory space insufficient, requires "..mission.result.baggrid.."1 slot. Completion of quest failed!" )
			return LUA_FALSE
		end
		
		local ret = NpcTrigger( character,  npc, mission.result, mission.id, mission.sid )
		if ret ~= LUA_TRUE then
			PRINT( "CompleteMission:NpcTrigger function manage delievery trigger failed!" )
			SystemNotice( character, "CompleteMission:NpcTrigger function manage delievery trigger failed!" )
			return LUA_FALSE
		end
		
		PRINT( "CompleteMission:prize count = "..mission.prize.count )
		if mission.prize.count > 0 then
			local ret = MisPrizeProc( character, npc, mission, selitem, param )
			if ret ~= LUA_TRUE then
				PRINT( "CompleteMission:MisPrizeProc function manage quest reward failed!" )
				SystemNotice( character, "CompleteMission:MisPrizeProc function manage quest reward failed!" )
			end
		end
	elseif mission.tp == RAND_MISSION then
		local ret, index, loopdata = GetCharRandMission( character, mission.id, mission )
		if ret ~= LUA_TRUE or index == 0 then
			--根據radom 任務參數生成radom 任務信息錯誤
			PRINT( "CompleteMission:GetcharRandMission, according to random quest parameter generate random quest notice error!" )
			SystemNotice( character, "CompleteMission:GetcharRandMission, according to random quest parameter generate random quest notice error!" )
			return LUA_FALSE
		end
		
		PRINT( "CompleteMission:Required number of empty slots in inventory:numgrid = ", mission.missionlist[index].result.baggrid )
		local numgrid = mission.missionlist[index].result.baggrid
		local ret = HasLeaveBagGrid( character, numgrid )
		if ret ~= LUA_TRUE then
			PRINT( "CompleteMission:insufficient inventory slot when character accept quest! num = ", numgrid )
			BickerNotice( character, "Inventory space insufficient, requires "..numgrid.."1 slot. Completion of quest failed!" )
			return LUA_FALSE
		end
		
		local ret = NpcTrigger( character,  npc, mission.missionlist[index].result, mission.id, mission.sid )
		if ret ~= LUA_TRUE then
			PRINT( "CompleteMission:random quest: NpcTrigger function manage delievery trigger failed!" )
			SystemNotice( character, "CompleteMission:random quest: NpcTrigger function manage delievery trigger failed!" )
			return LUA_FALSE
		end
		
		PRINT( "CompleteMission:prize count = "..mission.missionlist[index].prize.count )
		if mission.missionlist[index].prize.count > 0 then
			local ret = MisPrizeProc( character, npc, mission.missionlist[index], selitem, param )
			if ret ~= LUA_TRUE then
				PRINT( "CompleteMission:MisPrizeProc function manage quest reward failed!" )
				SystemNotice( character, "CompleteMission:MisPrizeProc function manage quest reward failed!" )
			end
		end
		
		PRINT( "CompleteMission:CompleteRandMission, id = ", mission.id )
		ret = CompleteRandMissionCount( character, mission.id )
		if ret ~= LUA_TRUE then
			PRINT( "CompleteRandMission:random quest completion completes calculation function transfer failed:misid = ", mission.id )
		end
		
		--判斷是否跑環結束
		local ret, loopnum = GetRandMissionNum( character, mission.id )
		if ret ~= LUA_TRUE then
			PRINT( "CompleteRandMission:GetRandMissionNum function transfer failed. Unable to obtain character random quest loop count!id = ", id )
			SystemNotice( character, "CompleteRandMission:GetRandMissionNum function transfer failed. Unable to obtain character random quest loop count!id = "..id )
			--清除該角色該radom 任務計數
			ResetRandMissionNum( character, mission.id )
		else
			loopnum = loopnum + 1 --轉換為lua數組索引
			PRINT( "CompleteRandMission:loopnum, loopinfo", loopnum, mission.loopinfo[loopnum] )
			
			if loopdata == nil or mission.loopinfo[loopnum] == nil then
				PRINT( "CompleteRandMission:quest cycle data error!loopnum = "..loopnum.." id = "..mission.id.." loopdata = "..loopdata )
				SystemNotice( character, "CompleteRandMission:quest cycle data error!loopnum = "..loopnum.." id = "..mission.id.." loopdata = "..loopdata )
				ResetRandMissionNum( character, mission.id )
				return LUA_FALSE
			end
			
			local ret = HasRandMissionCount( character, mission.id, mission.loopinfo[loopnum].num )
			if ret == LUA_TRUE then
				--清除該環任務計數，同時環計數增加
				ret = AddRandMissionNum( character, mission.id )
				if ret ~= LUA_TRUE then
					PRINT( "CompleteRandMission:AddRandMissionNum reset quest cycle calculation failed!id = ", mission.id  )
					SystemNotice( character, "CompleteRandMission:AddRandMissionNum reset quest cycle calculation failed!id = "..mission.id )
					return LUA_FALSE
				end
				if loopdata[loopnum + 1] == nil then
					--清除該radom 任務計數因為已經跑環完畢,任務計數從頭開始
					PRINT( "CompleteRandMission:ResetRandMissionNum:quest cycle completed!" )
					ResetRandMissionNum( character, mission.id )
					SystemNotice( character, "quest cycle completed!" )
				end
			end
		end
		
	else
		PRINT( "CompleteMission:Parameter quest type unknown. Invalid!" )
		SystemNotice( character, "CompleteMission:Parameter quest type unknown. Invalid!" )
		return LUA_FALSE
	end
	
	if tp ~= WORLD_MISSION then
		PRINT( "CompleteMission:ResetMissionState" )
		ret = RefreshMissionState( character, npc )
		if ret ~= LUA_TRUE then
			PRINT( "CompleteMission:RefreshMissionState deliver quest reset npc quest status failed!" )
			SystemNotice( character, "CompleteMission:RefreshMissionState deliver quest change npc quest status failed!" )
			return LUA_FALSE
		end
	end
	
	PRINT( "CompleteMission: return true" )
	return LUA_TRUE
end

--選擇任務列表
function SelMissionList( character, npc, selindex, missionlist )
	local npcid = GetCharID( npc )
	local ret, id, state = GetMissionInfo( character, npcid, selindex )
	if ret ~= LUA_TRUE then
		PRINT( "SelMissionList:obtain quest notice failed!" )
		return SystemNotice( character, "MissionProc:obtain quest notice failed!" )
	end
	
	PRINT( "SelMissionList:id = %d, state = %d", id, state )
	if missionlist[id] == nil then
		PRINT( "SelMissionList:Server does not have requested quest notice error!" )
		return SystemNotice( character, "MissionProc:Server does not have requested quest notice error!" )
	end
	
	ret = SetMissionTempInfo( character, npcid, id, state, missionlist[id].tp )
	if ret ~= LUA_TRUE then
		PRINT( "SelMissionList:set quest temporary data notice failed!" )
		return SystemNotice( character, "MissionProc:set quest temporary data notice failed!" )
	end
	
	if missionlist[id].tp == NOMAL_MISSION then
		PRINT( "SelMissioinList:NomalMission type" )
		--根據任務狀態發送任務的不同信息
		if state == MIS_DELIVERY then
			return SendDeliveryPage( character, npcid, missionlist[id], missionlist[id].id )
		elseif state == MIS_ACCEPT then
			return SendAcceptPage( character, npcid, missionlist[id], missionlist[id].id )
		elseif state == MIS_PENDING then
			return SendPendingPage( character, npcid, missionlist[id], missionlist[id].id )
		else
			PRINT( "SelMissionList:incorrect type of quest status notice!" )
			return SystemNotice( character, "SelMissionList:incorrect type of quest status notice!" )
		end
	elseif missionlist[id].tp == RAND_MISSION then
		PRINT( "SelMissioinList:RandMission type" )
		--判斷是否已經接受了該radom 任務，如果接受了則是來還任務得
		ret = HasRandMission( character, missionlist[id].id )
		if ret ~= LUA_TRUE then			
			--radom 任務在選擇時就已經產生並且Player接受任務
			local ret = IsMissionFull( character )
			if ret == LUA_TRUE then
				return SystemNotice( character, "You quest log is full. Please abandon an existing quest before activating another!" )
			end
			
			local ret = NpcTriggerCheck( character, missionlist[id].begin )
			if ret ~= LUA_TRUE then
				PRINT( "SelMissionList:NpcTriggerCheck accept random quest condition trigger management failed!" )
				SystemNotice( character, "SelMissionList:NpcTriggerCheck accept random quest condition trigger management failed!" )
				return LUA_FALSE
			end
		
			PRINT( "SelMissionList:missionlist[id] = , id = ", missionlist[id], id )
			local ret, index = CreateRandMission( character, npc, missionlist[id] )
			if ret ~= LUA_TRUE then
				if index ~= nil then
					-- 表明背包容量不足
					return LUA_TRUE
				end
				
				PRINT( "SelMissionList:CreateRandMission, generate random quest failed!" )
				return LUA_FALSE
			end
			
			ret = AcceptMission( character, npc, missionlist, index )
			if ret ~= LUA_TRUE then
				PRINT( "SelMissionList:AcceptMission: accept quest failed!" )
				SystemNotice( character, "SelMissionList:AcceptMission: accept quest failed!" )
				return LUA_FALSE
			end
			
			--發送radom 任務的交付頁面信息
			local ret, randid, state = GetMissionInfo( character, npcid, selindex )
			if ret ~= LUA_TRUE or id ~= randid then
				ret, state = GetCharMission( character, npcid, id )
				if ret ~= LUA_TRUE then
					PRINT( "SelMissionList:GetCharMissionobtain quest notice failed!" )
					return SystemNotice( character, "MissionProc:GetCharMissionobtain quest notice failed!" )
				end
			end
			
			--if state == MIS_PENDING then
				PRINT( "SelMissionList:SendPendingPage, index =, mission = ", index, missionlist[id].missionlist[index] )
				return SendPendingPage( character, npcid, missionlist[id].missionlist[index], missionlist[id].id )
			--elseif state == MIS_DELIVERY then
				--PRINT( "SelMissionList:SendDeliveryPage, index = , mission = ", index, missionlist[id].missionlist[index] )
				--return SendDeliveryPage( character, npcid, missionlist[id].missionlist[index], missionlist[id].id )
			--else
				--PRINT( "SelMissionList:radom 任務接受時應為PENDING or DELIVERY狀態，但是檢測出狀態不對。state = "..state )
				--return SystemNotice( character, "SelMissionList:radom 任務接受時應為PENDING or DELIVERY狀態，但是檢測出狀態不對。state = "..state )
			--end
		else
			local ret, index = GetCharRandMission( character, missionlist[id].id, missionlist[id] )
			if ret ~= LUA_TRUE or index == 0 then
				--根據radom 任務參數生成radom 任務信息錯誤
				PRINT( "SelMissionList:GetcharRandMission, according to random quest parameter generate random quest notice error!" )
				return SystemNotice( character, "SelMissionList:GetcharRandMission, according to random quest parameter generate random quest notice error!" )
			end
			
			if state ~= MIS_DELIVERY then
				PRINT( "SelMissionList:SendPendingPage, index =, mission = ", index, missionlist[id].missionlist[index] )
				return SendPendingPage( character, npcid, missionlist[id].missionlist[index], missionlist[id].id )
			end
			
			PRINT( "SelMissionList:SendDeliveryPage, index = , mission = ", index, missionlist[id].missionlist[index] )
			return SendDeliveryPage( character, npcid, missionlist[id].missionlist[index], missionlist[id].id )
		end
		
	else
		PRINT( "SelMissionList:Parameter quest type unknown. Invalid!" )
		SystemNotice( character, "SelMissionList:Parameter quest type unknown. Invalid!" )
		return LUA_FALSE
	end
	
end

--任務處理
function MissionProc( character, npc, rpk, missionlist )
	if missionlist == nil then
		SystemNotice( character, "MissionProc:parameter error!" )
		return LUA_FALSE
	end
	
	local byCmd = ReadByte( rpk )
	if byCmd == MIS_SEL then
		local selindex = ReadByte( rpk )
		return SelMissionList( character, npc, selindex, missionlist )
	elseif byCmd == MIS_BTNACCEPT then
		local ret = IsMissionFull( character )
		if ret == LUA_TRUE then
			return BickerNotice( character, "Quest slots are all taken. accept quest failed!" )
		end
		return AcceptMission( character, npc, missionlist )
	elseif byCmd == MIS_BTNDELIVERY then
		local byParam1 = ReadByte( rpk )
		local byParam2 = ReadByte( rpk )
		local ret = CompleteMission( character, npc, missionlist, byParam1, byParam2 )
		--if ret == LUA_TRUE then
			--完成任務後繼續下一個任務
			--local npcid = GetCharID( npc )
			--local ret, index, id, state = GetNextMission( character, npcid )
			--PRINT( "MissionProc:GetNextMission: ret, index, id, state", ret, index, id, state )
			--if ret == LUA_TRUE then
				--PRINT( "MissionProc:SelMissionList" )
				--return SelMissionList( character, npc, index, missionlist )
			--end
		--end
	--elseif byCmd == MIS_BTNPENDING then
	--elseif byCmd == MIS_TALK then
	else
		PRINT( "MissionProc:incorrect quest page command type!" )
		return SystemNotice( character, "MissionProc:incorrect quest page command type!" )
	end
end

--查詢任務日誌信息
function MissionLog( character, sid )
	PRINT( "MissionLog" )
	if sid == nil  or Mission[sid] == nil then
		PRINT( "MissionLog: cannot locate quest script notice，sid = "..sid )		
		SystemNotice( character, "MissionLog: cannot locate quest script notice，sid = "..sid )
		return
	end
	
	if Mission[sid].tp == NOMAL_MISSION or Mission[sid].tp == WORLD_MISSION then
		SendMissionLog( character, Mission[sid], Mission[sid].id, Mission[sid].name )
	elseif Mission[sid].tp == RAND_MISSION then
		local ret, index, loopdata = GetCharRandMission( character, Mission[sid].id, Mission[sid] )
		if ret ~= LUA_TRUE or index == 0 then
			--根據radom 任務參數生成radom 任務信息錯誤
			PRINT( "MissionLog:GetcharRandMission, according to random quest parameter generate random quest notice error!" )
			SystemNotice( character, "MissionLog:GetcharRandMission, according to random quest parameter generate random quest notice error!" )
			return
		end
		
		PRINT( "MissionLog:SendMissionLog, index = , mission = ", index, Mission[sid].missionlist[index] )
		SendMissionLog( character, Mission[sid].missionlist[index], Mission[sid].id, Mission[sid].name )
	else
		PRINT( "MissionLog:Parameter quest type unknown. Invalid!ID = "..sid )
		SystemNotice( character, "SelMissionList:Parameter quest type unknown. Invalid!ID = "..sid )		
	end
end

--發送任務日誌信息
function SendMissionLog( character, mission, id, name )
	PRINT( "SendMissionLog" )
	if id == nil or mission == nil then
		return SystemNotice( character, "Have not found target quest log notice,ID = "..id )		
	end
	
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_MISLOGINFO )
	WriteWord( packet, id )
	
	--發送任務需求信息
	WriteString( packet, name )
	PRINT( "SendMissionLog:misname = ", name )
	WriteByte( packet, mission.need.count )
	PRINT( "SendMissionLog:need count = "..mission.need.count )
	for n = 1, mission.need.count, 1 do
		PRINT( "SendMissionLog:need n = , tp, p1, p2, p3 ", n, mission.need[n].tp, mission.need[n].p1, mission.need[n].p2, mission.need[n].p3 )
		WriteByte( packet, mission.need[n].tp )
		if mission.need[n].tp == MIS_NEED_ITEM then
			WriteWord( packet, mission.need[n].p1 )
			WriteWord( packet, mission.need[n].p2 )
			--獲取任務需求完成計數
			local ret, num = GetNeedItemCount( character, id, mission.need[n].p1 )
			PRINT( "SendMissionLog:GetNeedItemCount, num = ", num )
			if ret ~= LUA_TRUE then
				PRINT( "SendMissionLog:GetNeedItemCount,error。misid = , itemid = , num = ", id, mission.need[n].p1, mission.need[n].p2 )
				SystemNotice( character, "SendMissionLog:GetNeedItemCount,error。" )
				num = 0
			end
			WriteByte( packet, num )
		elseif mission.need[n].tp == MIS_NEED_KILL then
			WriteWord( packet, mission.need[n].p1 )
			WriteWord( packet, mission.need[n].p2 )
			--獲取任務需求完成計數
			WriteByte( packet, GetNumFlag( character, id, mission.need[n].p3, mission.need[n].p2 ) )	
		elseif mission.need[n].tp == MIS_NEED_DESP then
			WriteString( packet, mission.need[n].p1 )
		else
			PRINT( "SendMissionLog:unknown quest required type!mission id = ", id )
			SystemNotice( character, "SendMissionLog:unknown quest required type!mission id = ", id )
			return
		end
	end
	
	--發送任務獎勵信息
	WriteByte( packet, mission.prize.seltp )
	WriteByte( packet, mission.prize.count )
	PRINT( "SendMissionLog:prize count = , seltype =", mission.prize.count, mission.prize.seltp )
	for i = 1, mission.prize.count, 1 do
		PRINT( "SendMissionLog:prize i = , tp, p1, p2 ", i, mission.prize[i].tp, mission.prize[i].p1, mission.prize[i].p2 )
		WriteByte( packet, mission.prize[i].tp )
		WriteWord( packet, mission.prize[i].p1 )
		WriteWord( packet, mission.prize[i].p2 )
	end
	
	--發送任務描述信息
	PRINT( "SendMissionLog:begin talk = "..mission.begin.talk )
	WriteString( packet, mission.begin.talk )
	SendPacket( character, packet )
end

function SendDeliveryPage( character, npcid, mission, id )
	PRINT( "SendDeliveryPage" )

	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_MISPAGE )
	WriteByte( packet, MIS_BTNDELIVERY )
	WriteDword( packet, npcid )	
	WriteString( packet, mission.name )
	PRINT( "SenddeliveryPage:missionname = ", mission.name )
	PRINT( "SendDeliveryPage:need = ", mission.need )
	WriteByte( packet, 0 )
	WriteByte( packet, mission.prize.seltp )
	WriteByte( packet, mission.prize.count )
	PRINT( "SendDeliveryPage:prize count = , seltype =", mission.prize.count, mission.prize.seltp )
	for i = 1, mission.prize.count, 1 do
		PRINT( "SendDeliveryPage:prize i = , tp, p1, p2 ", i, mission.prize[i].tp, mission.prize[i].p1, mission.prize[i].p2 )
		WriteByte( packet, mission.prize[i].tp )
		WriteWord( packet, mission.prize[i].p1 )
		WriteWord( packet, mission.prize[i].p2 )
	end
	
	PRINT( "SendDeliveryPage:result talk = "..mission.result.talk )
	WriteString( packet, mission.result.talk )
	SendPacket( character, packet )
end

--發送一個任務給角色
function GiveMission( character, id )
	if id == nil or Mission[id] == nil then
		PRINT( "GiveMission:Invalid quest! ID = "..id )
		SystemNotice( character, "GiveMission:Invalid quest! ID = "..id )
		return LUA_FALSE
	end
	
	local ret, npc = GetEudemon()
	if ret ~= LUA_TRUE then
		PRINT( "GetEudemon:functiontransfer failed!" )
		SystemNotice( character, "GetEudemon:functiontransfer failed!" )
		return LUA_FALSE
	end
	
	local npcid = GetCharID( npc )
	PRINT( "GiveMission: npcid, id, mistp", npcid, id, Mission[id].tp )
	ret = SetMissionTempInfo( character, npcid, id, MIS_ACCEPT, Mission[id].tp )
	if ret ~= LUA_TRUE then 
		PRINT( "SelMissionList:set quest temporary data notice failed!" )
		SystemNotice( character, "MissionProc:set quest temporary data notice failed!" )
		return LUA_FALSE
	end
	
	SendAcceptPage( character, npcid, Mission[id], Mission[id].id )
	return LUA_TRUE
end

--強制交付一個任務
function ObligeCompleteMission( character, id )
	if id == nil or Mission[id] == nil then
		PRINT( "ObligeCompleteMission:Invalid quest! ID = "..id )
		SystemNotice( character, "ObligeCompleteMission:Invalid quest! ID = "..id )
		return LUA_FALSE
	end
	
	local ret, npc = GetEudemon()
	if ret ~= LUA_TRUE then
		PRINT( "ObligeCompleteMission:GetEudemon:functiontransfer failed!" )
		SystemNotice( character, "ObligeCompleteMission:GetEudemon:functiontransfer failed!" )
		return LUA_FALSE
	end
	
	local npcid = GetCharID( npc )
	PRINT( "ObligeCompleteMission: npcid, id, mistp", npcid, id, Mission[id].tp )
	ret = SetMissionTempInfo( character, npcid, id, MIS_ACCEPT, Mission[id].tp )
	if ret ~= LUA_TRUE then
		PRINT( "ObligeCompleteMission:SetMissionTempInfo:set quest temporary data notice failed!" )
		SystemNotice( character, "ObligeCompleteMission:SetMissionTempInfo:set quest temporary data notice failed!" )
		return LUA_FALSE
	end
	
	ret = CompleteMission( character, npc )
	if ret ~= LUA_TRUE then
		SystemNotice( "ObligeCompleteMission:CompleteMission: force character accept completion failed!" )
		return LUA_FALSE
	end
	
	--SendPendingPage( character, npcid, Mission[id], Mission[id].id )
	BickerNotice( character, "Quest["..Mission[id].name.."]Successfully completed delivery!" )
	return LUA_TRUE
end

--強制接受一個任務
function ObligeAcceptMission( character, id )
	if id == nil or Mission[id] == nil then
		PRINT( "ObligeMission:Invalid quest! ID = "..id )
		SystemNotice( character, "ObligeMission:Invalid quest! ID = "..id )
		return LUA_FALSE
	end
	
	local ret, npc = GetEudemon()
	if ret ~= LUA_TRUE then
		PRINT( "ObligeMission:GetEudemon:functiontransfer failed!" )
		SystemNotice( character, "ObligeMission:GetEudemon:functiontransfer failed!" )
		return LUA_FALSE
	end
	
	ret = IsMissionFull( character )
	if ret == LUA_TRUE then
		SystemNotice( character, "Your quest log is full. Please make space before activating a new quest!" )
		return LUA_TRUE
	end

	local npcid = GetCharID( npc )
	PRINT( "ObligeMission: npcid, id, mistp", npcid, id, Mission[id].tp )
	ret = SetMissionTempInfo( character, npcid, id, MIS_ACCEPT, Mission[id].tp )
	if ret ~= LUA_TRUE then
		PRINT( "ObligeMission:set quest temporary data notice failed!" )
		SystemNotice( character, "ObligeMission:set quest temporary data notice failed!" )
		return LUA_FALSE
	end
	
	ret = AcceptMission( character, npc )
	if ret ~= LUA_TRUE then
		SystemNotice( "ObligeMission:AcceptMission: forced character accept quest failed!" )
		return LUA_FALSE
	end
	
	SendPendingPage( character, npcid, Mission[id], Mission[id].id )
	return LUA_TRUE
end

--發送任務接受頁信息
function SendAcceptPage( character, npcid, mission, id )	
	PRINT( "SendAcceptPage" )

	--發送報文信息
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_MISPAGE )
	WriteByte( packet, MIS_BTNACCEPT )
	WriteDword( packet, npcid )	
	WriteString( packet, mission.name )
	PRINT( "SendAcceptPage: name = ", mission.name )
	
	--發送任務需求信息
	WriteByte( packet, mission.need.count )
	PRINT( "SendAcceptPage:need count = "..mission.need.count )
	for n = 1, mission.need.count, 1 do
		PRINT( "SendAcceptPage:need n = , tp, p1, p2, p3 ", n, mission.need[n].tp, mission.need[n].p1, mission.need[n].p2, mission.need[n].p3 )
		WriteByte( packet, mission.need[n].tp )
		if mission.need[n].tp == MIS_NEED_ITEM or mission.need[n].tp == MIS_NEED_KILL then
			WriteWord( packet, mission.need[n].p1 )
			WriteWord( packet, mission.need[n].p2 )
			--獲取任務需求完成計數
			WriteByte( packet, 0 )
		elseif mission.need[n].tp == MIS_NEED_DESP then
			WriteString( packet, mission.need[n].p1 )
		else
			PRINT( "SendAcceptPage:unknown quest required type!mission id = ", id )
			SystemNotice( character, "SendAcceptPage:unknown quest required type!mission id = ", id )
			return
		end
	end
	
	--發送任務獎勵信息
	WriteByte( packet, mission.prize.seltp )
	WriteByte( packet, mission.prize.count )
	PRINT( "SendAcceptPage:prize count = , seltype =", mission.prize.count, mission.prize.seltp )
	for i = 1, mission.prize.count, 1 do
		PRINT( "SendAcceptPage:prize i = , tp, p1, p2 ", i, mission.prize[i].tp, mission.prize[i].p1, mission.prize[i].p2 )
		WriteByte( packet, mission.prize[i].tp )
		WriteWord( packet, mission.prize[i].p1 )
		WriteWord( packet, mission.prize[i].p2 )
		--WriteWord( packet, mission.prize[i].p3 )
		--WriteWord( packet, mission.prize[i].p4 )
	end
	
	--發送任務描述信息
	PRINT( "SendAcceptPage:begin talk = "..mission.begin.talk )
	WriteString( packet, mission.begin.talk )
	SendPacket( character, packet )
end

--發送任務未決頁信息
function SendPendingPage( character, npcid, mission, id )
	PRINT( "SendPendingPage" )
	
	--發送報文信息
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_MISPAGE )
	WriteByte( packet, MIS_BTNPENDING )
	WriteDword( packet, npcid )
	WriteString( packet, mission.name )
	PRINT( "SendPendingPage: name = ", mission.name )
	
	--發送任務需求信息
	WriteByte( packet, mission.need.count )
	PRINT( "SendPendingPage:need count = "..mission.need.count )
	for n = 1, mission.need.count, 1 do
		PRINT( "SendPendingPage:need n = , tp, p1, p2, p3 ", n, mission.need[n].tp, mission.need[n].p1, mission.need[n].p2, mission.need[n].p3 )
		WriteByte( packet, mission.need[n].tp )
		if mission.need[n].tp == MIS_NEED_ITEM then
			WriteWord( packet, mission.need[n].p1 )
			WriteWord( packet, mission.need[n].p2 )
			--獲取任務需求完成計數
			local ret, num = GetNeedItemCount( character, id, mission.need[n].p1 )
			PRINT( "SendPendingPage:GetNeedItemCount, num = ", num )
			if ret ~= LUA_TRUE then
				PRINT( "SendPendingPage:GetNeedItemCount,error。itemid = , num = ", mission.need[n].p1, mission.need[n].p2 )
				SystemNotice( character, "SendPendingPage:GetNeedItemCount,error。" )
				num = 0
			end
			WriteByte( packet, num )
		elseif mission.need[n].tp == MIS_NEED_KILL then
			WriteWord( packet, mission.need[n].p1 )
			WriteWord( packet, mission.need[n].p2 )
			--獲取任務需求完成計數
			local numflag  = GetNumFlag( character, id, mission.need[n].p3, mission.need[n].p2 )
			PRINT( "SendPendingPage:GetNumFlag, numflag = ", numflag )
			WriteByte( packet, numflag )		
		elseif mission.need[n].tp == MIS_NEED_DESP then
			WriteString( packet, mission.need[n].p1 )
		else
			PRINT( "SendPendingPage:unknown quest required type!mission id = ", id )
			SystemNotice( character, "SendPendingPage:unknown quest required type!mission id = "..id )
			return
		end
	end
	
	--發送任務獎勵信息
	WriteByte( packet, mission.prize.seltp )
	WriteByte( packet, mission.prize.count )
	PRINT( "SendPendingPage:prize count = , seltype =", mission.prize.count, mission.prize.seltp )
	for i = 1, mission.prize.count, 1 do
		PRINT( "SendPendingPage:prize i = , tp, p1, p2 ", i, mission.prize[i].tp, mission.prize[i].p1, mission.prize[i].p2 )
		WriteByte( packet, mission.prize[i].tp )
		WriteWord( packet, mission.prize[i].p1 )
		WriteWord( packet, mission.prize[i].p2 )
		--WriteWord( packet, mission.prize[i].p3 )
		--WriteWord( packet, mission.prize[i].p4 )
	end
	
	--發送任務描述信息
	PRINT( "SendPendingPage:help = ", mission.result.help )
	WriteString( packet, mission.result.help )
	SendPacket( character, packet )
end

--任務獎勵操作
function MisPrizeProc( character, npc, mission, selitem, param )
	if mission == nil then
		SystemNotice( character, "MisPrizeProc:parameter error!" )
		return LUA_FALSE
	end
	PRINT( "MisPrizeProc:prize count =, sel type = , selitem = ", mission.prize.count, mission.prize.seltp, selitem )
	if mission.prize.seltp == PRIZE_SELONE then
	--單選
		if selitem == nil then
			SystemNotice( character, "MisPrizeProc: select parameter invalid!" )
			return LUA_FALSE
		end
		selitem = selitem + 1
		if selitem > mission.prize.count or mission.prize == nil or mission.prize[selitem] == nil then
			SystemNotice( character, "MisPrizeProc: select an invalid reward notice index !" )
			return LUA_FALSE
		end
		if mission.prize[selitem].tp == nil or mission.prize[selitem].p1 == nil or mission.prize[selitem].p2 == nil  then
			SystemNotice( character, "MisPrizeProc:selected reward notice invalid! Please check!" )
			return LUA_FALSE
		end
		return MisPrizeAction( character, npc, mission.prize[selitem].tp, mission.prize[selitem].p1, mission.prize[selitem].p2, mission.prize[selitem].p3, mission.prize[selitem].p4 )
	elseif mission.prize.seltp == PRIZE_SELALL then 
	--全選
		for n = 1, mission.prize.count, 1 do
			PRINT( "MisPrizeProc: prize n = "..n )
			if mission.prize[n].tp == nil or mission.prize[n].p1 == nil or mission.prize[n].p2 == nil  then
				SystemNotice( character, "MisPrizeProc:selected reward notice invalid! Please check!" )
				return LUA_FALSE
			end
			local ret = MisPrizeAction( character, npc, mission.prize[n].tp, mission.prize[n].p1, mission.prize[n].p2, mission.prize[n].p3, mission.prize[n].p4 )
			if ret ~= LUA_TRUE then
				return LUA_FALSE
			end
		end
	else
		PRINT( "MisPrizeProc: Invalid reward notice selection data type!" )
		SystemNotice( character, "MisPrizeProc: Invalid reward notice selection data type!" )
		return LUA_FALSE
	end
	return LUA_TRUE
end

function AddPetExp( character, p1, p2 )
	PRINTF( "AddPetExp: p1 = , p2 = ", p1, p2 )
	if p1 == nil or p2 == nil then
		SystemNotice( character, "AddRMNextFlag:Function parameter error!" )
		return LUA_FALSE
	end
	
	return Give_ElfEXP_MISSION ( character , p1 + Rand( p2 ) )
end

--任務獎勵操作
function MisPrizeAction( character, npc, tp, p1, p2, p3, p4 )
	PRINT( "MisPrizeAction:tp, p1, p2, p3, p4", tp, p1, p2, p3, p4 )
	if tp == MIS_PRIZE_ITEM then
		PRINT( "MisPrizeAction:GiveItem, p1 = , p2 = ", p1, p2, p3 )
		local ret = GiveItem( character, npc, p1, p2, p3 )
		if ret ~= LUA_TRUE then
			SystemNotice( character, "MisPrizeAction:GiveItem:functiontransfer failed!" )
			return LUA_FALSE
		end
	elseif tp == MIS_PRIZE_MONEY then
		PRINT( "MisPrizeAction:AddMoney, p1 = "..p1 )
		local ret = AddMoney( character, npc, p1 )
		if ret ~= LUA_TRUE then
			SystemNotice( character, "MisPrizeAction:AddMoney:functiontransfer failed!" )
			return LUA_FALSE
		end		
	elseif tp == MIS_PRIZE_FAME then
		PRINT( "MisPrizeAction:AddFame, p1 = "..p1 )
		--local ret = AddFame( character, npc, p1 )
		--if ret ~= LUA_TRUE then
			--SystemNotice( character, "MisPrizeAction:AddFame:functiontransfer failed!" )
			--return LUA_FALSE
		--end
	elseif tp == MIS_PRIZE_CESS then
		PRINT( "MisPrizeAction:AdjustTradeCess" )
		local ret = AdjustTradeCess( character, p1, p2 )
		if ret ~= LUA_TRUE then
			SystemNotice( character, "MisPrizeAction:AdjustTradeCess:functiontransfer failed!" )
			return LUA_FALSE
		end
	elseif tp == MIS_PRIZE_PETEXP then
		PRINT( "MisPrizeAction:AddPetExp" )
		local ret = AddPetExp( character, p1, p2 )
		if ret ~= LUA_TRUE then
			SystemNotice( character, "MisPrizeAction:AddPetExp:functiontransfer failed!" )
			return LUA_FALSE
		end
	else
		SystemNotice( character, "MisPrizeAction: Invalid reward type notice!" )
		return LUA_FALSE
	end
	return LUA_TRUE
end

--任務NPC狀態檢測
function MissionState( character, npcid, missionlist )
	PRINT( "MissionState" )
	if missionlist == nil then
		SystemNotice( character, "MissionState:Npc quest notice as null!" )
		return LUA_FALSE
	end
	--檢測任務狀態
	for i = 1, 32, 1 do
		if missionlist[i] == nil then
			break
		end
		local mission = missionlist[i]
		if mission.name == nil or mission.id == nil then
			SystemNotice( character, "MissionState:NPC quest list name ord id value cannot be as null!" )
			return LUA_FALSE
		end
		if mission.tp == NOMAL_MISSION then
			PRINT( "MissionState:nomal mission" )
			--判斷角色是否有該任務		
			PRINT( "MissionState:2, ID =", mission.id )		
			local ret = HasMission( character, mission.id )
			PRINT( "MissionState:5" )
			if ret == LUA_TRUE then
				if mission.result == nil then
					SystemNotice( character, "MissionState:quest completion trigger cannot be as null!" )
				else
					local ret = NpcTriggerCheck( character, mission.result )
					if ret == LUA_TRUE then
						--檢測到可以還任務跳出循環檢測並記錄數據信息
						PRINT( "MissionState:Add state = %d delivery, i = %d", MIS_DELIVERY, i )
						AddMissionState( character, npcid, i, MIS_DELIVERY )
					elseif mission.show ~= COMPLETE_SHOW then
						PRINT( "MissionState:Add state = %d pending, i = %d", MIS_PENDING, i )
						AddMissionState( character, npcid, i, MIS_PENDING )
					end
				end
			else
				PRINT( "MissionState:3" )
				if mission.begin == nil then
					SystemNotice( character, "MissionState: quest start trigger cannot be as null!" )
				else
					local ret = NpcTriggerCheck( character, mission.begin )
					if ret == LUA_TRUE then
						--檢測到可以接任務記錄數據信息
						PRINT( "MissionState:Add state = %d accept, i = %d", MIS_ACCEPT, i )
						AddMissionState( character, npcid, i, MIS_ACCEPT )
					end
				end
			end
		elseif mission.tp == RAND_MISSION then
			PRINT( "MissionState:rand mission, mission.id", mission.id )
			local ret = HasRandMission( character, mission.id )
			if ret == LUA_TRUE then
				--已經接了radom 任務，查看他是否可以交付
				PRINT( "MissionState, GetCharRandMission" )
				local ret, index = GetCharRandMission( character, mission.id, mission )
				PRINT( "MissionState:GetCharRandMission, ret =, index =  ", ret, index )
				if ret == LUA_TRUE and index ~= 0 then
					PRINT( "MissionState: proc rand mission" )
					if mission.missionlist[index] == nil or mission.missionlist[index].result == nil then
						SystemNotice( character, "MissionState:radom quest completion trigger cannot be as null!" )
					else
						PRINT( "MissionState: RandMission, NpcTriggerCheck" )
						ret = NpcTriggerCheck( character, mission.missionlist[index].result )
						if ret == LUA_TRUE then
							--檢測到可以還任務跳出循環檢測並記錄數據信息		
							PRINT( "MissionState:random quest: Add state = %d delivery, i = %d", MIS_DELIVERY, i )
							AddMissionState( character, npcid, i, MIS_DELIVERY )
						else
							PRINT( "MissionState:random quest: Add state = %d pending, i = %d", MIS_PENDING, i )
							AddMissionState( character, npcid, i, MIS_PENDING )
						end
					end
				end
			else
				--未接radom 任務，看是否可以接
				local ret = IsRandMissionAccept( character, mission )
				if ret == LUA_TRUE then
					ret = NpcTriggerCheck( character, mission.begin )
					if ret == LUA_TRUE then
						PRINT( "MissionState:random quest: Add state = %d accept, i = %d", MIS_ACCEPT, i )
						AddMissionState( character, npcid, i, MIS_ACCEPT )					
					end
				end
			end
			
		else
			PRINT( "MissionState:mission tp error, mission.tp = ", mission.tp )			
		end
	end
	
	PRINT( "MissionState:return true" )
	return LUA_TRUE
end

--刷新npc任務狀態標誌信息
function RefreshMissionState( character, npc )
	if character == nil or npc == nil then
		PRINT( "RefreshMissionState: parameter error!" )
	end
	return ResetMissionState( character, npc )
end

--刷新任務完成狀態
function RefreshCompleteFlag( character, sid )
	PRINT( "RefreshCompleteFlag" )
	if sid == nil or Mission[sid] == nil then
		PRINT( "RefreshCompleteFlag:incorrect quest script ID number,sid = "..sid )
		SystemNotice( character, "RefreshCompleteFlag:incorrect quest script ID number,sid = "..sid )
		return LUA_FALSE
	end

	local mission
	if Mission[sid].tp == NOMAL_MISSION then
		mission = Mission[sid]
	elseif Mission[sid].tp == RAND_MISSION then
		--已經接了radom 任務，查看他是否可以交付
		PRINT( "RefreshCompleteFlag, GetCharRandMission" )
		local ret, index = GetCharRandMission( character, Mission[sid].id, Mission[sid] )
		PRINT( "RefreshCompleteFlag:GetCharRandMission, ret =, index =  ", ret, index )
		if ret == LUA_TRUE and index ~= 0 then
			PRINT( "RefreshCompleteFlag: proc rand mission" )
			if Mission[sid].missionlist[index] == nil or Mission[sid].missionlist[index].result == nil then
				SystemNotice( character, "MissionState:radom quest completion trigger cannot be as null!" )
				return LUA_FALSE
			end
			mission = Mission[sid].missionlist[index]
		else
			PRINT( "RefreshCompleteFlag:GetCharRandMission: Function transfer error!" )
			return LUA_FALSE
		end
	end
	
	PRINT( "RefreshCompleteFlag:NpcTriggerCheck" )
	local ret = NpcTriggerCheck( character, mission.result )
	if ret == LUA_TRUE then
		--檢測到任務完成
		PRINT( "RefreshCompleteFlag:quest has completed!" )
		--SystemNotice( character, "RefreshCompleteFlag:quest has completed!" )
		ret = SetMissionComplete( character, Mission[sid].id )
		if ret ~= LUA_TRUE then
			PRINT( "RefreshCompleteFlag:SetMissionComplete set quest completion label failed!" )
			SystemNotice( character, "RefreshCompleteFlag:SetMissionComplete set quest completion label failed!" )
		end
	end
	
	PRINT( "RefreshCompleteFlag:return true" )
	return LUA_TRUE
end

--任務條件判斷處理函數
function ConditionsTest( character, conditions, param1, param2, npc )
	if conditions == nil then
		SystemNotice( character, "ConditionsTest: condition test function conditions parameter cannot be as null!" )
		return LUA_FALSE
	end

	if conditions[1] == nil then
		PRINT( "ConditionsTest: condition as null return real!" )
	else
		local num = TR_MAXNUM_CONDITIONS
		if conditions.count ~= nil then
			num = conditions.count
		end
		for i = 1, num, 1 do --檢測觸發器限制條件最多12個條件
			if conditions[i] == nil then			
				break;
			end
			if conditions[i].func == nil then
				--SystemNotice( character, "ConditionsTest: condition management function cannot be as null!" )			
			end
			if conditions[i].func == NoMission then
				PRINT( "ConditionsTest:NoMission, p1 = ", conditions[i].p1 )
				local Ret = NoMission( character, conditions[i].p1 )
				if Ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: NoMission = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckTime then
                PRINT( "ConditionsTest: CheckTime")
                local ret = CheckTime(character)
                if ret ~= LUA_TRUE then
                    PRINT( "ConditionsTest: CheckTime = false" )
                    return LUA_FALSE
                end
			-----------------------
			-- ?????????? ?????? --
			-----------------------
			elseif conditions[i].func == IsGiveQuest then
				local ret = IsGiveQuest(character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsGiveQuest = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasMission then
				PRINT( "ConditionsTest:HasMission, p1 = ", conditions[i].p1 )
				local ret = HasMission( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: HasMission = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasRandMission then
				PRINT( "ConditionsTest:HasRandMission, p1 = ", conditions[i].p1 )
				local ret = HasRandMission( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: HasRandMission = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasMisssionFailure then
				PRINT( "ConditionsTest:HasMisssionFailure, p1 = ", conditions[i].p1 )
				local ret = HasMisssionFailure( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: HasMisssionFailure = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoMisssionFailure then
				PRINT( "ConditionsTest:NoMisssionFailure, p1 = ", conditions[i].p1 )
				local ret = NoMisssionFailure( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: NoMisssionFailure = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoRecord then
				PRINT( "ConditionsTest:NoRecord, p1 = ", conditions[i].p1 )
				local ret = NoRecord( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: NoRecord = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasState then
				PRINT( "ConditionsTest:HasState, p1 = ", conditions[i].p1 )
				local ret = HasState( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: HasState = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsChaType then
				PRINT( "ConditionsTest:IsChaType, p1 = ", conditions[i].p1 )
				local ret = IsChaType( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: IsChaType = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoChaType then
				PRINT( "ConditionsTest:NoChaType, p1 = ", conditions[i].p1 )
				local ret = NoChaType( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: NoChaType = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasRecord then
				PRINT( "ConditionsTest:HasRecord, p1 = ", conditions[i].p1 )
				local ret = HasRecord( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest: HasRecord = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoFlag then
				PRINT( "ConditionsTest:NoFlag, p1 =, p2 = ", conditions[i].p1, conditions[i].p2 )
				local ret = NoFlag( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoFlag = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasAllFlag then
				PRINT( "ConditionsTest:HasAllFlag, p1 =, p2 = ", conditions[i].p1, conditions[i].p2, conditions[i].p3 ) 
				local ret = HasAllFlag( character, conditions[i].p1, conditions[i].p2, conditions[i].p3 ) 
				if ret ~= LUA_TRUE then 
					PRINT( "ConditionsTest: HasAllFlag = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasFlag then
				PRINT( "ConditionsTest:HasFlag, p1 =, p2 = ", conditions[i].p1, conditions[i].p2 )
				local ret = HasFlag( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasFlag = false" )
					return LUA_FALSE
				end		
			elseif conditions[i].func == HasItem then
				PRINT( "ConditionsTest: HasItem, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = HasItem( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasItem = false" )
					return LUA_FALSE
				end
			
			elseif conditions[i].func == NoItem then
				PRINT( "ConditionsTest: NoItem, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = NoItem( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoItem = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasCredit then
				PRINT( "ConditionsTest: HasCredit, p1 = ", conditions[i].p1)
				local ret = HasCredit( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasCredit = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasHonorPoint then
				PRINT( "ConditionsTest: HasHonorPoint, p1 = ", conditions[i].p1)
				local ret = HasHonorPoint( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasHonorPoint = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasFightingPoint then
				PRINT( "ConditionsTest: HasFightingPoint, p1 = ", conditions[i].p1)
				local ret = HasFightingPoint( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasFightingPoint = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckPoint then
				PRINT( "ConditionsTest: CheckPoint, p1 = ", conditions[i].p1)
				local ret = CheckPoint( character,conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckPoint = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HaveNoItem then
				PRINT( "ConditionsTest: HaveNoItem, p1 = ", conditions[i].p1)
				local ret = HaveNoItem( character,conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HaveNoItem = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == BankNoItem then
				PRINT( "ConditionsTest: BankNoItem, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = BankNoItem( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:BankNoItem = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == EquipNoItem then
				PRINT( "ConditionsTest: EquipNoItem, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = EquipNoItem( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:EquipNoItem = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckTeam then
				local ret = CheckTeam( character)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckTeam = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckTeam1 then
				PRINT( "ConditionsTest:CheckTeam1, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = CheckTeam1( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckTeam1 = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckRightNum then
				PRINT( "ConditionsTest:CheckRightNum, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = CheckRightNum( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckRightNum = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckErroNum then
				PRINT( "ConditionsTest:CheckErroNum, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = CheckErroNum( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckErroNum = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasReadExp then		--小測驗時必須有經驗
				local ret = HasReadExp( character )
				if ret ~= LUA_TRUE then
					return LUA_FALSE
				end
			elseif conditions[i].func == HasNoItem then
				PRINT( "ConditionsTest: HasNoItem, p1 = ", conditions[i].p1)
				local ret = HasNoItem( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasNoItem = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckXSZCh then
				PRINT( "ConditionsTest: CheckXSZCh, p1 = ", conditions[i].p1)
				local ret = CheckXSZCh( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckXSZCh = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == Checksailexpless then
				PRINT( "ConditionsTest: Checksailexpless, p1 = ", conditions[i].p1)
				local ret = Checksailexpless( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:Checksailexpless = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == Checksailexpmore then
				PRINT( "ConditionsTest: Checksailexpmore, p1 = ", conditions[i].p1)
				local ret = Checksailexpmore( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:Checksailexpmore = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckKJNum then
				PRINT( "ConditionsTest: CheckKJNum, p1 = ", conditions[i].p1)
				local ret = CheckKJNum( character, conditions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckKJNum = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckRealNpc then
				PRINT( "ConditionsTest:CheckRealNpc, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = CheckRealNpc( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckRealNpc = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoMoney then
				PRINT( "ConditionsTest: NoMoney, p1 = ", conditions[i].p1 )
				local ret = NoMoney( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoMoney = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasMoney then
				PRINT( "ConditionsTest: HasMoney, p1 = ", conditions[i].p1 )
				local ret = HasMoney( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasMoney = false" )
					return LUA_FALSE
				end
			-----------------
			-- Check Reset --
			-----------------
			elseif conditions[i].func == Check_Reset then
				PRINT( "ConditionsTest: Check_Reset, p1 = ", conditions[i].p1 )
				local ret = Check_Reset( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:Check_Reset = false" )
					return LUA_FALSE
				end
			-----------------
			-- Check Forge --
			-----------------
			elseif conditions[i].func == CheckForge then
				PRINT( "ConditionsTest: CheckForge, p1 = ", conditions[i].p1 )
				local ret = CheckForge( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckForge = false" )
					return LUA_FALSE
				end
			--------------
			-- Check GM --
			--------------
			elseif conditions[i].func == CheckGM then
				PRINT( "ConditionsTest: CheckGM, p1 = ", conditions[i].p1 )
				local ret = CheckGM( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckGM = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasCancelMissionMoney then
				PRINT( "ConditionsTest: HasCancelMissionMoney" )
				local ret = HasCancelMissionMoney( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasCancelMissionMoney = false" )
					return LUA_FALSE
				end				
			elseif conditions[i].func == IsMonster then
				PRINT( "ConditionsTest:IsMonster, p1 =, p2 =", conditions[i].p1, param1 )
				if param1 == nil then
					SystemNotice( "ConditionsTest: determine destroy item type function, parameter invalid!param1 = nil" )
					return LUA_FALSE
				end
				local ret = IsMonster( conditions[i].p1, param1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsMonster = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsItem then
				PRINT( "ConditionsTest:IsItem, p1 =, p2 =", conditions[i].p1, param1 )
				if param1 == nil then
					SystemNotice( "ConditionsTest:determine obtain item type function, parameter invalid!param1 = nil" )
					return LUA_FALSE
				end
				local ret = IsItem( conditions[i].p1, param1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsItem = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsMapNpc then
				PRINT( "ConditionsTest:IsMapNpc, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = IsMapNpc( npc, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsMapNpc = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsMapChar then
				PRINT( "ConditionsTest:IsMapChar, p1 =", conditions[i].p1 )
				local ret = IsMapChar( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsMapChar = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == LvCheck then
				PRINT( "ConditionsTest:LvCheck, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = LvCheck( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:LvCheck = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HpCheck then
				PRINT( "ConditionsTest:HpCheck, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = HpCheck( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HpCheck = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == SpCheck then
				PRINT( "ConditionsTest:SpCheck, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = SpCheck( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:SpCheck = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == PfEqual then
				PRINT( "ConditionsTest:PfEqual, p1 =", conditions[i].p1 )
				local ret = PfEqual( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:PfEqual = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoPfEqual then
				PRINT( "ConditionsTest:PfEqual, p1 =", conditions[i].p1 )
				local ret = NoPfEqual( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:PfEqual = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasFame then
				PRINT( "ConditionsTest:HasFame, p1 =", conditions[i].p1 )
				local ret = HasFame( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasFame = false" )
					return LUA_FALSE
				end				
			elseif conditions[i].func == IsInArea then
				PRINT( "ConditionsTest:IsInArea, p1 =", conditions[i].p1 )
				local ret = IsInArea( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsInArea = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == Checkjlktime then
				PRINT( "ConditionsTest:Checkjlktime, p1 =", conditions[i].p1 )
				local ret = Checkjlktime( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:Checkjlktime = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsInMap then
				PRINT( "ConditionsTest:IsInMap, p1 =, p2 =, p3 = , p4 = ", conditions[i].p1, conditions[i].p2, conditions[i].p3, conditions[i].p4 )
				local ret = IsInMap( character, conditions[i].p1, conditions[i].p2, conditions[i].p3, conditions[i].p4, 10000, 10000 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsInMap = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == AlwaysFailure then
				PRINT( "ConditionsTest:AlwaysFailure," )
				local ret = AlwaysFailure()
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:AlwaysFailure = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == AlwaysTrue then
				PRINT( "ConditionsTest:AlwaysTrue," )
				local ret = AlwaysTrue()
				--if ret ~= LUA_TRUE then
					--PRINT( "ConditionsTest:AlwaysTrue = false" )
					--return LUA_FALSE
				--end				
			elseif conditions[i].func == HasRandMissionNpc then
				PRINT( "ConditionsTest:HasRandMissionNpc,p1, p2, p3", conditions[i].p1, conditions[i].p2, conditions[i].p3 )
				local ret = HasRandMissionNpc( character, conditions[i].p1, conditions[i].p2, conditions[i].p3 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasRandMissionNpc = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasRandNpcItemFlag then
				PRINT( "ConditionsTest:HasRandNpcItemFlag,p1, p2", conditions[i].p1, conditions[i].p2 )
				local ret = HasRandNpcItemFlag( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasRandNpcItemFlag = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoRandNpcItemFlag then
				PRINT( "ConditionsTest:NoRandNpcItemFlag,p1, p2", conditions[i].p1, conditions[i].p2 )
				local ret = NoRandNpcItemFlag( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoRandNpcItemFlag = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasConvoyNpc then
				PRINT( "ConditionsTest:HasConvoyNpc,p1 = ", conditions[i].p1 )
				local ret = HasConvoyNpc( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasConvoyNpc = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func ==CheckItem then
				PRINT( "ConditionsTest: CheckItem, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = CheckItem( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckItem = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func ==CheckBag then
				PRINT( "ConditionsTest: CheckBag, p1 =, p2 =", conditions[i].p1, conditions[i].p2 ,conditions[i].p3)
				local ret = CheckBag( character, conditions[i].p1, conditions[i].p2 ,conditions[i].p3)
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckBag = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func ==CheckBagEmp then
				PRINT( "ConditionsTest: CheckBagEmp, p1 =, p2 =", conditions[i].p1)
				local ret = CheckBagEmp( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckBagEmp = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoConvoyNpc then
				PRINT( "ConditionsTest:NoConvoyNpc,p1 = ", conditions[i].p1 )
				local ret = NoConvoyNpc( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoConvoyNpc = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsConvoyNpc then
				PRINT( "ConditionsTest:IsConvoyNpc,p1 = , p2 = ", conditions[i].p1, conditions[i].p2 )
				local ret = IsConvoyNpc( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsConvoyNpc = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsCategory then
				PRINT( "ConditionsTest:IsCategory,p1 = ", conditions[i].p1 )
				local ret = IsCategory( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsCategory = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckConvertProfession then
				PRINT( "ConditionsTest:CheckConvertProfession,p1 = ", conditions[i].p1 )
				local ret = CheckConvertProfession( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckConvertProfession = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsSpawnPos then
				PRINT( "ConditionsTest:IsSpawnPos, p1 =", conditions[i].p1 )
				local ret = IsSpawnPos( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsSpawnPos = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasLeaveBagGrid then
				PRINT( "ConditionsTest:HasLeaveBagGrid, p1 =", conditions[i].p1 )
				local ret = HasLeaveBagGrid( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasLeaveBagGrid = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasLeaveBagTempGrid then
				PRINT( "ConditionsTest:HasLeaveBagTempGrid, p1 =", conditions[i].p1 )
				local ret = HasLeaveBagTempGrid( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasLeaveBagTempGrid = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsBoatFull then
				PRINT( "ConditionsTest:IsBoatFull" )
				local ret = IsBoatFull( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsBoatFull = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == BoatBuildCheck then
				PRINT( "ConditionsTest:BoatBuildCheck, p1 =", conditions[i].p1 )
				local ret = BoatBuildCheck( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:BoatBuildCheck = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasBoatInBerth then
				PRINT( "ConditionsTest:HasBoatInBerth, p1 =", conditions[i].p1 )
				local ret = HasBoatInBerth( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasBoatInBerth = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasDeadBoatInBerth then
				PRINT( "ConditionsTest:HasDeadBoatInBerth, p1 =", conditions[i].p1 )
				local ret = HasDeadBoatInBerth( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasDeadBoatInBerth = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == XmasNotice then
				PRINT( "ConditionsTest: XmasNotice, p1 =, p2 =", conditions[i].p1, conditions[i].p2 )
				local ret = XmasNotice( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:XmasNotice = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckSpeed then
				PRINT( "ConditionsTest:CheckSpeed, p1 = ", conditions[i].p1 )
				local ret = CheckSpeed( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckSpeed = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckZS then
				PRINT( "ConditionsTest:CheckZS, p1 = ", conditions[i].p1 )
				local ret = CheckZS( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckZS = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasAllBoatInBerth then
				PRINT( "ConditionsTest:HasAllBoatInBerth, p1 =", conditions[i].p1 )
				local ret = HasAllBoatInBerth( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasAllBoatInBerth = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasLuanchOut then
				PRINT( "ConditionsTest:HasLuanchOut" )
				local ret = HasLuanchOut( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasLuanchOut = false" )
					return LUA_FALSE
				end				
			elseif conditions[i].func == HasGuild then
				PRINT( "ConditionsTest:HasGuild" )
				local ret = HasGuild( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasGuild = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoGuild then
				PRINT( "ConditionsTest:NoGuild" )
				local ret = NoGuild( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoGuild = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasPirateGuild then
				PRINT( "ConditionsTest:HasPirateGuild" )
				local ret = HasPirateGuild( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasPirateGuild = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoPirateGuild then
				PRINT( "ConditionsTest:NoPirateGuild" )
				local ret = NoPirateGuild( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoPirateGuild = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasNavyGuild then
				PRINT( "ConditionsTest:HasNavyGuild" )
				local ret = HasNavyGuild( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasNavyGuild = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == NoNavyGuild then
				PRINT( "ConditionsTest:NoNavyGuild" )
				local ret = NoNavyGuild( character )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:NoNavyGuild = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == IsGuildType then
				PRINT( "ConditionsTest:IsGuildType, p1 = ", conditions[i].p1 )
				local ret = IsGuildType( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:IsGuildType = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == TradeItemLevelCheck then
				PRINT( "ConditionsTest:TradeItemLevelCheck, p1 = , p2 = ", conditions[i].p1, conditions[i].p2 )
				local ret = TradeItemLevelCheck( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:TradeItemLevelCheck = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == TradeItemDataCheck then
				PRINT( "ConditionsTest:TradeItemDataCheck, p1 = , p2 = ", conditions[i].p1, conditions[i].p2 )
				local ret = TradeItemDataCheck( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:TradeItemDataCheck = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasOffer then
				PRINT( "ConditionsTest:HasOffer, p1 = ", conditions[i].p1 )
				local ret = HasOffer( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasOffer = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == LessCredit then
				PRINT( "ConditionsTest:LessCredit, p1 = , p2 = ", conditions[i].p1, conditions[i].p2 )
				local ret = LessCredit( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:LessCredit = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == LessTime then
				PRINT( "ConditionsTest:LessTime, p1 = ", conditions[i].p1 )
				local ret = LessTime( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:LessTime = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == MoreTime then
				PRINT( "ConditionsTest:MoreTime, p1 = ", conditions[i].p1 )
				local ret = MoreTime( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:MoreTime = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == BaiyangOn then
				PRINT( "ConditionsTest:BaiyangOn, p1 = ", conditions[i].p1 )
				local ret = BaiyangOn( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:BaiyangOn = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckEnergy then
				PRINT( "ConditionsTest:CheckEnergy, p1 = ", conditions[i].p1 )
				local ret = CheckEnergy( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckEnergy = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasXmasYB then
				PRINT( "ConditionsTest:HasXmasYB,p1, p2", conditions[i].p1, conditions[i].p2 )
				local ret = HasXmasYB( character, conditions[i].p1, conditions[i].p2 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasXmasYB = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == CheckHJ then
				PRINT( "ConditionsTest:CheckHJ, p1 = ", conditions[i].p1 )
				local ret = CheckHJ( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckHJ = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == HasNOZSExp then
				PRINT( "ConditionsTest:HasNOZSExp, p1 = ", conditions[i].p1 )
				local ret = HasNOZSExp( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasNOZSExp = false" )
					return LUA_FALSE
				end				
			elseif conditions[i].func == HasGuildLevel then
				PRINT( "ConditionsTest:HasGuildLevel, p1 = ", conditions[i].p1 )
				local ret = HasGuildLevel( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:HasGuildLevel = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == crablife then
				PRINT( "ConditionsTest:crablife, p1 = ", conditions[i].p1 )
				local ret = crablife( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:crablife = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func == KitbagLock then
				PRINT( "ConditionsTest:KitbagLock, p1 = ", conditions[i].p1 )
				local ret = KitbagLock( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:KitbagLock = false" )
					return LUA_FALSE
				end	
			elseif conditions[i].func == ValentinesRing then
				PRINT( "ConditionsTest:ValentinesRing, p1 = ", conditions[i].p1 )
				local ret = ValentinesRing( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:ValentinesRing = false" )
					return LUA_FALSE
				end	
			elseif conditions[i].func == ValentinesRingJudge then
				PRINT( "ConditionsTest:ValentinesRingJudge, p1 = ", conditions[i].p1 )
				local ret = ValentinesRingJudge( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:ValentinesRingJudge = false" )
					return LUA_FALSE
				end
			elseif conditions[i].func ==CheckTime then
				PRINT( "ConditionsTest: CheckTime, p1 =, p2 =", conditions[i].p1)
				local ret = CheckTime( character, conditions[i].p1 )
				if ret ~= LUA_TRUE then
					PRINT( "ConditionsTest:CheckTime = false" )
					return LUA_FALSE
				end
			else
				PRINT( "ConditionsTest: unknown condition function!i = %d", i )
				--SystemNotice( character, "ConditionsTest:unknown condition function error!" )
				return LUA_ERROR
			end
		end
	end
	
	PRINT( "ConditionsTest: return true" )
	return LUA_TRUE
end

--任務動作處理函數
function ActionsProc( character, actions, npc, page, misid, scriptid, param1, param2 )
	PRINT( "ActionProc: actions proc" )
	if actions == nil then
		PRINT( "ActionProc:quest action management function parameter actions cannot be as null!" )
		SystemNotice( character, "ActionProc:quest action management function parameter actions cannot be as null!" )
		return LUA_ERROR
	end
	
	--觸發器符合條件動作
	local num = TR_MAXNUM_ACTIONS
	if actions.count ~= nil then
		num = actions.count
	end
	PRINT( "ActionsProc:Actions num = ", num )
	for i = 1, num, 1 do
		PRINT( "ActionProc23: actions i = ", i, actions[i] )
		if actions[i] == nil then
			PRINT( "ActionProc23: break" )
			break
		end
		PRINT( "ActionProc: actions i = ", i )
		if actions[i].func == JumpPage then
			PRINT( "ActionProc:JumpPage, page =, p1 = ", page, actions[i].p1 )
			JumpPage( character, npc, page, actions[i].p1 )
		elseif actions[i].func == CloseTalk then
			PRINT( "ActionProc:CloseTalk" )
			CloseTalk( character, npc )
		--?????????? ??????
		elseif actions[i].func == SaveQuest then
			SaveQuest( character, actions[i].p1 )
		elseif actions[i].func == AddMission then
			PRINT( "ActionProc: AddMission actions[i].p1 = , scriptid = ", actions[i].p1, scriptid )
			local ret = AddMission( character, actions[i].p1, scriptid )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddMission failed!" )
				SystemNotice( character, "ActionProc: Adds quest failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddTrigger then
			PRINT( "ActionProc: AddTrigger, misid, p1 = , p2 = , p3 = , p4 = , p5 = , p6 = , p7 = , p8 = ", misid, actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4, actions[i].p5, actions[i].p6, actions[i].p7, actions[i].p8 )
			local ret = AddTrigger( character, misid, actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4, actions[i].p5, actions[i].p6, actions[i].p7, actions[i].p8 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddTrigger failed!" )
				SystemNotice( character, "ActionProc:  adds trigger failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddNpcTrigger then
			PRINT( "ActionProc: AddNpcTrigger, p1 = , p2 = , p3 = , p4 = , p5 = , p6 = ", actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4, actions[i].p5, actions[i].p6 )
			local ret = AddNpcTrigger( character, actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4, actions[i].p5, actions[i].p6 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddNpcTrigger failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddNextFlag then
			PRINT( "ActionProc:AddNextFlag, p1, p2, p3", actions[i].p1, actions[i].p2, actions[i].p3 )
			local ret = AddNextFlag( character, actions[i].p1, actions[i].p2, actions[i].p3 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddNextFlag failed!" )
				SystemNotice( character, "ActionProc: adds list quest record label failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddRMNextFlag then
			PRINT( "ActionProc:AddRMNextFlag, p1, p2, p3", actions[i].p1, actions[i].p2, actions[i].p3 )
			local ret = AddRMNextFlag( character, actions[i].p1, actions[i].p2, actions[i].p3 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddRMNextFlag failed!" )
				SystemNotice( character, "ActionProc: AddRMNextFlag adds list to quest record label failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetFlag then
			PRINT( "ActionProc:SetFlag, p1, p2 ", actions[i].p1, actions[i].p2 )
			local ret = SetFlag( character, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:SetFlag failed!" )
				SystemNotice( character, "ActionProc: Set quest record label failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetRecord then
			PRINT( "ActionProc:SetRecord, p1 = ", actions[i].p1 )
			local ret = SetRecord( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:SetRecord failed!" )
				SystemNotice( character, "ActionProc:Set story record label failed!" )
				return LUA_FALSE
			end
		------------------
		-- ???? ??????? --
		------------------
		elseif actions[i].func == GuildBank.InitNPC then
			local ret = GuildBank.InitNPC(character, npc)
			if ret ~= LUA_TRUE then
				return LUA_FALSE
			end	
		elseif actions[i].func == GuildBank.CheckAccess then
			local ret = GuildBank.CheckAccess(character, npc)
			if ret ~= LUA_TRUE then
				return LUA_FALSE
			end
		elseif actions[i].func == GuildBank.GiveKey then
			local ret = GuildBank.GiveKey(character, actions[i].p1)
			if ret ~= LUA_TRUE then
				return LUA_FALSE
			end
		elseif actions[i].func == GuildBank.RemoveAccess then
			local ret = GuildBank.RemoveAccess(character)
			if ret ~= LUA_TRUE then
				return LUA_FALSE
			end	
		-------------------------
		-- ????? ????? ??????? --
		-------------------------
		elseif actions[i].func == GiveNSDX then
			PRINT( "ActionProc: GiveNSDX, p1 = ", actions[i].p1)
			local ret = GiveNSDX( character,npc, actions[i].p1)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:GiveNSDX = false" )
				return LUA_FALSE
			end
		elseif actions[i].func == JINNiuSS then
			PRINT( "ActionProc:JINNiuSS, p1 = " )
			local ret = JINNiuSS( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:JINNiuSS failed!" )
				--SystemNotice( character, "ActionProc:Set story record label failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == JINNiuHD then
			PRINT( "ActionProc:JINNiuHD, p1 = " )
			local ret = JINNiuHD( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:JINNiuHD failed!" )
				--SystemNotice( character, "ActionProc:Set story record label failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == JINNiuCZ then
			PRINT( "ActionProc:JINNiuCZ, p1 = " )
			local ret = JINNiuCZ( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:JINNiuCZ failed!" )
				--SystemNotice( character, "ActionProc:Set story record label failed!" )
				return LUA_FALSE
			end

		elseif actions[i].func == ShuangZiSS then
			PRINT( "ActionProc:ShuangZiSS, p1 = " )
			local ret = ShuangZiSS( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ShuangZiSS failed!" )
				--SystemNotice( character, "ActionProc:Set story record label failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == ShuangZiHD then
			PRINT( "ActionProc:ShuangZiHD, p1 = " )
			local ret = ShuangZiHD( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ShuangZiHD failed!" )
				--SystemNotice( character, "ActionProc:Set story record label failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == ShuangZiCZ then
			PRINT( "ActionProc:ShuangZiCZ, p1 = " )
			local ret = ShuangZiCZ( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ShuangZiCZ failed!" )
				--SystemNotice( character, "ActionProc:Set story record label failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddReadingBook then
			PRINT( "ActionProc:AddReadingBook, p1 = ", actions[i].p1 )
			local ret = AddReadingBook( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:AddReadingBook failed!" )
				SystemNotice( character, "ActionProc:添加書本failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddExpPer then
			PRINT( "ActionProc:AddExpPer, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = AddExpPer( character, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddExpPer failed!" )
				SystemNotice( character, "ActionProc: 給予經驗failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == ZSSTART then
			PRINT( "ActionProc:ZSSTART, p1 = " )
			local ret = ZSSTART( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ZSSTART failed!" )
				--SystemNotice( character, "ActionProc:Set story record label failed!" )
				return LUA_FALSE
			end

		elseif actions[i].func == AddChaHJ then
			PRINT( "ActionProc: AddChaHJ, p1 = ", actions[i].p1)
			local ret = AddChaHJ( character,npc, actions[i].p1)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:AddChaHJ = false" )
				return LUA_FALSE
			end

		elseif actions[i].func == AddExpNextLv1 then
			PRINT( "ActionProc:AddExpNextLv1, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = AddExpNextLv1( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddExpNextLv1 failed!" )
				SystemNotice( character, "ActionProc: AddExpNextLv1 Add Exp failed!" )
				return LUA_FALSE
			end

		elseif actions[i].func == AddExpNextLv2 then
			PRINT( "ActionProc:AddExpNextLv2, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = AddExpNextLv2( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddExpNextLv2 failed!" )
				SystemNotice( character, "ActionProc:AddExpNextLv2 Add Exp failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == ZSSTOP then
			PRINT( "ActionProc:ZSSTOP, p1 = " )
			local ret = ZSSTOP( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ZSSTOP failed!" )
				--SystemNotice( character, "ActionProc:Set story record label failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == ZSSTOP2 then
			PRINT( "ActionProc:ZSSTOP2, p1 = " )
			local ret = ZSSTOP2( character)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ZSSTOP2 failed!" )
				--SystemNotice( character, "ActionProc:Set story record label failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddExp then
PRINT( "ActionProc:AddExp, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
local ret = AddExp( character, npc, actions[i].p1, actions[i].p2 )
if ret ~= LUA_TRUE then
PRINT( "ActionProc: AddExp Failed!" )
SystemNotice( character, "ActionProc: AddExp add experience failed!" )
return LUA_FALSE
end

		elseif actions[i].func == AddSailExp then
			PRINT( "ActionProc:AddSailExp, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = AddSailExp( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddSailExp failed!" )
				SystemNotice( character, "ActionProc: AddSailExp Add Exp failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddLifeExp then
			PRINT( "ActionProc:AddLifeExp, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = AddLifeExp( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddLifeExp failed!" )
				SystemNotice( character, "ActionProc: AddLifeExp Add Exp failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddChaItem7 then
			PRINT( "ActionsProc:AddChaItem7, p1 = ", actions[i].p1 )
			local ret = AddChaItem7( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:AddChaItem7 failed!" )
				SystemNotice( character, "ActionsProc:AddChaItem7 failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddChaItem8 then
			PRINT( "ActionsProc:AddChaItem8, p1 = ", actions[i].p1 )
			local ret = AddChaItem8( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:AddChaItem8 failed!" )
				SystemNotice( character, "ActionsProc:AddChaItem8 failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == checkcytime then
			PRINT( "ActionsProc:checkcytime, p1 = ", actions[i].p1 )
			local ret = checkcytime( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:checkcytime failed!" )
				SystemNotice( character, "ActionsProc:checkcytime failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == checksjtime then
			PRINT( "ActionsProc:checksjtime, p1 = ", actions[i].p1 )
			local ret = checksjtime( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:checksjtime failed!" )
				SystemNotice( character, "ActionsProc:checksjtime failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddExpAndType then
			PRINT( "ActionProc:AddExpAndType, p1 = , p2 = , p3 = ", actions[i].p1, actions[i].p2, actions[i].p3 )
			local ret = AddExpAndType( character, npc, actions[i].p1, actions[i].p2, actions[i].p3 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddExpAndType failed!" )
				SystemNotice( character, "ActionProc: AddExpAndType Add Exp failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddMoney then
			PRINT( "ActionProc:AddMoney, p1 =", actions[i].p1 )
			local ret = AddMoney( character, npc, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: AddMoney failed!param1 = %d", actions[i].p1 )
				SystemNotice( character, "ActionProc: AddMoney failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == TakeCredit then
				PRINT( "ActionProc: TakeCredit, p1 = ", actions[i].p1)
				local ret = DelRoleCredit( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:TakeCredit = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == TakeFightingPoint then
				PRINT( "ActionProc: TakeFightingPoint, p1 = ", actions[i].p1)
				local ret = TakeFightingPoint( character,actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:DelRoleFightingPoint = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == Leaveprison then
				PRINT( "ActionProc: Leaveprison, p1 = ", actions[i].p1)
				local ret = Leaveprison( character, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:Leaveprison = false" )
					return LUA_FALSE
				end	
		elseif actions[i].func == Givejiluka then
				PRINT( "ActionProc: Givejiluka, p1 = ", actions[i].p1)
				local ret = Givejiluka( character, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:Givejiluka = false" )
					return LUA_FALSE
				end

		elseif actions[i].func == TakeHonorPoint then
				PRINT( "ActionProc: TakeHonorPoint, p1 = ", actions[i].p1)
				local ret = TakeHonorPoint( character, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:TakeHonorPoint = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == Starteffect then
				PRINT( "ActionProc: Starteffect, p1 = ", actions[i].p1)
				local ret = Starteffect( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:Starteffect = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == AddChaItem1 then
				PRINT( "ActionProc: AddChaItem1, p1 = ", actions[i].p1)
				local ret = AddChaItem1( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddChaItem1 = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == AddChaItem2 then
				PRINT( "ActionProc: AddChaItem2, p1 = ", actions[i].p1)
				local ret = AddChaItem2( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddChaItem2 = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == AddChaItem3 then
				PRINT( "ActionProc: AddChaItem1, p1 = ", actions[i].p1)
				local ret = AddChaItem3( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddChaItem1 = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == AddChaItem5 then
				PRINT( "ActionProc: AddChaItem2, p1 = ", actions[i].p1)
				local ret = AddChaItem5( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddChaItem2 = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == AddChaItem4 then
				PRINT( "ActionProc: AddChaItem2, p1 = ", actions[i].p1)
				local ret = AddChaItem4( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddChaItem2 = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == DelRoleCredit then
				PRINT( "ActionProc: DelRoleCredit, p1 = ", actions[i].p1)
				local ret = DelRoleCredit( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:DelRoleCredit = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == TakeMoney then
			PRINT( "ActionProc:TakeMoney, p1 = ", actions[i].p1 )
			local ret = TakeMoney( character, npc, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: TakeMoney failed!param1 = %d", actions[i].p1 )
				SystemNotice( character, "ActionProc: TakeMoney failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == TakeCancelMissionMoney then
			PRINT( "ActionProc:TakeMoney" )
			local ret = TakeCancelMissionMoney( character, npc )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: TakeCancelMissionMoney failed!param1 = %d", actions[i].p1 )
				SystemNotice( character, "ActionProc: TakeCancelMissionMoney failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == GiveItem then
			PRINT( "ActionProc:GiveItem, p1 = , p2 = , p3 = ", actions[i].p1, actions[i].p2, actions[i].p3 )
			local ret = GiveItem( character, npc, actions[i].p1, actions[i].p2, actions[i].p3 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: GiveItem failed!" )
				SystemNotice( character, "ActionProc: give character item failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == TakeItem then
			PRINT( "ActionProc:TakeItem, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = TakeItem( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: TakeItem failed!" )
				SystemNotice( character, "ActionProc: obtain character item failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == TakeRandNpcItem then
			PRINT( "ActionProc:TakeRandNpcItem, p1 = , p2 = , p3 = ", actions[i].p1, actions[i].p2, actions[i].p3 )
			local ret = TakeRandNpcItem( character, actions[i].p1, actions[i].p2, actions[i].p3 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: TakeRandNpcItem failed!" )
				SystemNotice( character, "ActionProc: TakeRandNpcItem obtain NPC item failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == TakeAllRandItem then
			PRINT( "ActionProc:TakeAllRandItem, p1 = ", actions[i].p1 )
			local ret = TakeAllRandItem( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: TakeAllRandItem failed!" )
				SystemNotice( character, "ActionProc: TakeAllRandItem: obtain NPC item failed!" )
				return LUA_FALSE
			end			
		elseif actions[i].func == ClearMission then
			PRINT( "ActionProc:ClearMission, p1 = ", actions[i].p1 )
			local ret = ClearMission( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: ClearMission failed!" )
				SystemNotice( character, "ActionProc: clear quest ID failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == ClearTrigger then
			PRINT( "ActionProc:ClearTrigger, p1 = ", actions[i].p1 )
			local ret = ClearTrigger( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: ClearTrigger failed!" )
				SystemNotice( character, "ActionProc: clear trigger ID failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == DeleteTrigger then
			PRINT( "ActionProc:DeleteTrigger, p1 = ", actions[i].p1 )
			local ret = DeleteTrigger( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: DeleteTrigger failed!" )
				SystemNotice( character, "ActionProc:delete trigger ID failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == ClearFlag then
			PRINT( "ActionProc:ClearFlag, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = ClearFlag( character, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: ClearFlag failed!" )
				SystemNotice( character, "ActionProc: Clear quest label failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == ClearRecord then
			PRINT( "ActionProc:ClearRecord, p1 = ", actions[i].p1 )
			local ret = ClearRecord( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ClearRecord failed!" )
				SystemNotice( character, "ActionProc: clearn history record label failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == RefreshCompleteFlag then
			PRINT( "ActionProc:RefreshCompleteFlag, p1 = ", actions[i].p1 )
			local ret = RefreshCompleteFlag( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:RefreshCompleteFlag failed!" )
				SystemNotice( character, "ActionProc:RefreshCompleteFlag, refresh quest completion status error!" )
				return LUA_FALSE
			end
		elseif actions[i].func == MegaBuff then
			PRINT( "ActionProc:MegaBuff" ) 
			MegaBuff( character, npc )
		----------------------------
		-- ?????? ?????? ?? ????? --
		----------------------------
		elseif actions[i].func == Spawn_MiniBoss then
			PRINT( "ActionProc:Spawn_MiniBoss, p1 = , p2 = , p3 =  , p4 = ", actions[i].p1 , actions[i].p2 , actions[i].p3 , actions[i].p4)
			Spawn_MiniBoss( character, actions[i].p1 , actions[i].p2 , actions[i].p3 , actions[i].p4)
		elseif actions[i].func == PK_points then
			PRINT( "ActionProc:PK_points" ) 
			PK_points( character, npc )
		elseif actions[i].func == PVP_points then
			PRINT( "ActionProc:PVP_points" ) 
			PVP_points( character, npc )
		elseif actions[i].func == ReAll then
			PRINT( "ActionProc:ReAll" )
			ReAll( character )
		elseif actions[i].func == ReAllHp then
			PRINT( "ActionProc:ReAllHp" )
			ReAllHp( character )
		elseif actions[i].func == ReAllSp then
			PRINT( "ActionProc:ReAllSp" )
			ReAllSp( character )
		elseif actions[i].func == ReHp then
			PRINT( "ActionProc:ReHp, p1 = ", actions[i].p1 )
			ReHp( character, actions[i].p1 )
		elseif actions[i].func == ReSp then
			PRINT( "ActionProc:ReSp, p1 = ", actions[i].p1 )
			ReSp( character, actions[i].p1 )
		elseif actions[i].func == SystemNotice then
			PRINT( "ActionProc:SystemNotice, p1 = ", actions[i].p1 )
			SystemNotice( character, actions[i].p1 )
		elseif actions[i].func == BickerNotice then
			PRINT( "ActionProc:BickerNotice, p1 = ", actions[i].p1 )
			BickerNotice( character, actions[i].p1 )			
		elseif actions[i].func == HelpInfo then
			PRINT( "ActionProc:HelpInfo, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			HelpInfo( character, actions[i].p1, actions[i].p2 )
		elseif actions[i].func == Show then
			PRINT( "ActionProc:Show" )
			Show( character )
		elseif actions[i].func == Hide then
			PRINT( "ActionProc:Hide" )
			Hide( character )
		elseif actions[i].func == UpdateGoodsData then
			PRINT( "ActionProc:UpdateGoodsData" )
			UpdateGoodsData( character )
		elseif actions[i].func == UpdateGoodsKinds then
			PRINT( "ActionProc:UpdateGoodsKinds" )
			UpdateGoodsKinds( character )
		elseif actions[i].func == GiveMission then
			PRINT( "ActionsProc:GiveMission, p1 = ", actions[i].p1 )
			local ret = GiveMission( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:GiveMission failed!" )
				SystemNotice( character, "ActionProc:GiveMissionfailed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == ObligeAcceptMission then
			PRINT( "ActionsProc:ObligeAcceptMission, p1 = ", actions[i].p1 )
			local ret = ObligeAcceptMission( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ObligeAcceptMission failed!" )
				SystemNotice( character, "ActionProc:ObligeAcceptMissionfailed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == ObligeCompleteMission then
			PRINT( "ActionsProc:ObligeCompleteMission, p1 = ", actions[i].p1 )
			local ret = ObligeCompleteMission( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:ObligeCompleteMission failed!" )
				SystemNotice( character, "ActionProc:ObligeCompleteMissionfailed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == SummonNpc then
			PRINT( "ActionsProc:SummonNpc, p1, p2, p3, p4", actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			local ret = SummonNpc( actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SummonNpc failed!" )
				SystemNotice( character, "ActionsProc:SummonNpc failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == ConvoyNpc then
			PRINT( "ActionsProc:ConvoyNpc, p1, p2, p3, p4", actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			local ret = ConvoyNpc( character, actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:ConvoyNpc failed!" )
				SystemNotice( character, "ActionsProc:ConvoyNpc failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == ClearConvoyNpc then
			PRINT( "ActionsProc:ClearConvoyNpc, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = ClearConvoyNpc( character, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:ClearConvoyNpc failed!" )
				SystemNotice( character, "ActionsProc:ClearConvoyNpc failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == TakeXmasYB then
			PRINT( "ActionProc:TakeXmasYB, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = TakeXmasYB( character, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: TakeXmasYB failed!" )
				SystemNotice( character, "ActionProc: 提取硬幣failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == CpHuojiNum then
			PRINT( "ActionsProc:CpHuojiNum, p1 = ", actions[i].p1 )
			local ret = CpHuojiNum( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:CpHuojiNum failed!" )
				SystemNotice( character, "ActionsProc:CpHuojiNum failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == CpMiluNum then
			PRINT( "ActionsProc:CpMiluNum, p1 = ", actions[i].p1 )
			local ret = CpMiluNum( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:CpMiluNum failed!" )
				SystemNotice( character, "ActionsProc:CpMiluNum failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == CpXuerenNum then
			PRINT( "ActionsProc:CpXuerenNum, p1 = ", actions[i].p1 )
			local ret = CpXuerenNum( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:CpXuerenNum failed!" )
				SystemNotice( character, "ActionsProc:CpXuerenNum failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == ClearAllConvoyNpc then
			PRINT( "ActionsProc:ClearAllConvoyNpc, p1 = ", actions[i].p1 )
			local ret = ClearAllConvoyNpc( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:ClearAllConvoyNpc failed!" )
				SystemNotice( character, "ActionsProc:ClearAllConvoyNpc failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetMissionFailure then
			PRINT( "ActionsProc:SetMissionFailure, p1 = ", actions[i].p1 )
			local ret = SetMissionFailure( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SetMissionFailure failed!" )
				SystemNotice( character, "ActionsProc:SetMissionFailure failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetMissionComplete then
			PRINT( "ActionsProc:SetMissionComplete, p1 = ", actions[i].p1 )
			local ret = SetMissionComplete( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SetMissionComplete failed!" )
				SystemNotice( character, "ActionsProc:SetMissionComplete failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetTestTime then
			PRINT( "ActionProc:SetTestTime, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = SetTestTime( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: SetTestTime failed!" )
				SystemNotice( character, "ActionProc: SetTestTime設置初始時間failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == RenewTestTime1 then
			PRINT( "ActionProc:RenewTestTime1, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = RenewTestTime1( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: RenewTestTime1 failed!" )
				SystemNotice( character, "ActionProc: RenewTestTime1檢測新的時間failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == RenewTestTime2 then
			PRINT( "ActionProc:RenewTestTime2, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = RenewTestTime2( character, npc, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc: RenewTestTime2 failed!" )
				SystemNotice( character, "ActionProc: RenewTestTime2檢測新的時間failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == FailureRandMissionCount then
			PRINT( "ActionsProc:FailureRandMissionCount, p1 = ", actions[i].p1 )
			local ret = FailureRandMissionCount( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:FailureRandMissionCount failed!" )
				SystemNotice( character, "ActionsProc:FailureRandMissionCount failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetSpawnPos then
			PRINT( "ActionsProc:SetSpawnPos, p1 = ", actions[i].p1 )
			local ret = SetSpawnPos( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SetSpawnPos failed!" )
				SystemNotice( character, "ActionsProc:SetSpawnPos failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetProfession then
			PRINT( "ActionsProc:SetProfession, p1 = ", actions[i].p1 )
			local ret = SetProfession( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SetProfession failed!" )
				SystemNotice( character, "ActionsProc:SetProfession failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == GoTo then
			PRINT( "ActionsProc:GoTo, p1 = , p2 = , p3 = ", actions[i].p1, actions[i].p2, actions[i].p3 )
			local ret = GoTo( character, actions[i].p1, actions[i].p2, actions[i].p3 )
			PRINT( "Goto: ret = ", ret )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:GoTo failed!" )
				SystemNotice( character, "ActionsProc:GoTo failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == MultiTrigger then
			PRINT( "ActionsProc:MultiTrigger, p1, p2 ", actions[i].p1, actions[i].p2 )
			local ret = MultiTrigger( character, npc, page, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:MultiTrigger failed!" )
				SystemNotice( character, "ActionsProc:MultiTrigger failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == SaveMissionData then
			PRINT( "ActionsProc:SaveMissionData" )
			local ret = SaveMissionData( character )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SaveMissionData failed!" )
				SystemNotice( character, "ActionsProc:SaveMissionData failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetPkState then
			PRINT( "ActionsProc:SetPkState, p1 = ", actions[i].p1 )
			local ret = SetPkState( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SetPkState failed!" )
				SystemNotice( character, "ActionsProc:SetPkState failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == MoveCity then
			PRINT( "ActionsProc:MoveCity, p1 = ", actions[i].p1 )
			local ret = MoveCity( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:MoveCity failed!" )
				SystemNotice( character, "ActionsProc:MoveCity failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == CreateGuild then
			PRINT( "ActionsProc:CreateGuild, p1 = ", actions[i].p1 )
			local ret = CreateGuild( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:CreateGuild failed!" )
				SystemNotice( character, "ActionsProc:CreateGuild failed!" )
				return LUA_FALSE
			end
			if ret ~= LUA_TRUE then
				return LUA_FALSE
			end
		elseif actions[i].func == ListAllGuild then
			PRINT( "ActionsProc:ListAllGuild, p1 = ", actions[i].p1 )
			local ret = ListAllGuild( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:ListAllGuild ?? ???????!" )
				SystemNotice( character, "ActionsProc:ListAllGuild ?? ???????!" )
				return LUA_FALSE
			end
		elseif actions[i].func == RepairBoat then
			PRINT( "ActionsProc:RepairBoat" )
			local ret = RepairBoat( character )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:RepairBoat failed!" )
				SystemNotice( character, "ActionsProc:RepairBoat failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == SupplyBoat then
			PRINT( "ActionsProc:SupplyBoat" )
			local ret = SupplyBoat( character )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SupplyBoat failed!" )
				SystemNotice( character, "ActionsProc:SupplyBoat failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == CreateBoat then
			PRINT( "ActionsProc:CreateBoat, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = CreateBoat( character, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:CreateBoat failed!" )
				--SystemNotice( character, "ActionsProc:CreateBoat failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == BoatLuanchOut then
			PRINT( "ActionsProc:BoatLuanchOut, p1 = , p2 = , p3 = , p4 = , p5 = ", actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4, actions[i].p5 )
			local ret = BoatLuanchOut( character, actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4, actions[i].p5 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:BoatLuanchOut failed!" )
				SystemNotice( character, "ActionsProc:BoatLuanchOut failed!" )
				return LUA_FALSE
			end			
		elseif actions[i].func == LuanchBerthList then
			
			PRINT( "ActionsProc:BoatBerthList, p1 = , p2 = , p3 = , p4 = ", actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			local ret = LuanchBerthList( character, npc, actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:LuanchBerthList ?? ???????!" )
				SystemNotice( character, "ActionsProc:LuanchBerthList ?? ???????!" )
				return LUA_FALSE
			end
		elseif actions[i].func == TradeBerthList then
			PRINT( "ActionsProc:TradeBerthList, p1 = ", actions[i].p1 )
			local ret = TradeBerthList( character, npc, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:TradeBerthList failed!" )
				SystemNotice( character, "ActionsProc:TradeBerthList failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == CreatBBBB then
			local ret = CreatBBBB( character, actions[i].p1)
			if ret ~= LUA_TRUE then
				return LUA_FALSE
			end
		elseif actions[i].func == CheckBBBB then
			local ret = CheckBBBB( character )
			if ret ~= LUA_TRUE then
				return LUA_FALSE
			end	
		elseif actions[i].func == RepairBerthList then
			PRINT( "ActionsProc:RepairBerthList, p1 = ", actions[i].p1 )
			local ret = RepairBerthList( character, npc, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:RepairBerthList failed!" )
				SystemNotice( character, "ActionsProc:RepairBerthList failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == SalvageBerthList then
			PRINT( "ActionsProc:SalvageBerthList, p1 = ", actions[i].p1 )
			local ret = SalvageBerthList( character, npc, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SalvageBerthList failed!" )
				SystemNotice( character, "ActionsProc:SalvageBerthList failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == SupplyBerthList then
			PRINT( "ActionsProc:SupplyBerthList, p1 = ", actions[i].p1 )
			local ret = SupplyBerthList( character, npc, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SupplyBerthList failed!" )
				SystemNotice( character, "ActionsProc:SupplyBerthList failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == BoatLevelBerthList then
			PRINT( "ActionsProc:BoatLevelBerthList, p1 = ", actions[i].p1 )
			local ret = BoatLevelBerthList( character, npc, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:BoatLevelBerthList failed!" )
				SystemNotice( character, "ActionsProc:BoatLevelBerthList failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == BoatBerth then
			PRINT( "ActionsProc:BoatBerth, p1 = , p2 = , p3 = , p4 = ", actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			local ret = BoatBerth( character, actions[i].p1, actions[i].p2, actions[i].p3, actions[i].p4 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:BoatBerth failed!" )
				SystemNotice( character, "ActionsProc:BoatBerth failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == PackBagList then
			PRINT( "ActionsProc:PackBagList, p1 = , p2 = , p3 = ", actions[i].p1, actions[i].p2, actions[i].p3 )
			local ret = PackBagList( character, actions[i].p1, actions[i].p2, actions[i].p3 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:PackBagList failed!" )
				SystemNotice( character, "ActionsProc:PackBagList failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == SetTradeItemLevel then
			PRINT( "ActionsProc:SetTradeItemLevel, p1 = ", actions[i].p1 )
			local ret = SetTradeItemLevel( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:SetTradeItemLevel failed!" )
				SystemNotice( character, "ActionsProc:SetTradeItemLevel failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == AdjustTradeCess then
			PRINT( "ActionsProc:AdjustTradeCess, p1 = , p2 = ", actions[i].p1, actions[i].p2 )
			local ret = AdjustTradeCess( character, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:AdjustTradeCess failed!" )
				SystemNotice( character, "ActionsProc:AdjustTradeCess failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == OpenBank then
			PRINT( "ActionsProc:OpenBank" )
			local ret = OpenBank( character, npc )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:OpenBank failed!" )
				SystemNotice( character, "ActionsProc:OpenBank failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == OpenHair then
			PRINT( "ActionsProc:OpenHair" )
			local ret = OpenHair( character, npc )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:OpenHair failed!" )
				SystemNotice( character, "ActionsProc:OpenHair failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == OpenRepair then
			PRINT( "ActionsProc:OpenRepair" )
			local ret = OpenRepair( character, npc )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:OpenRepair failed!" )
				SystemNotice( character, "ActionsProc:OpenRepair failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == RandFunction then
			PRINT( "ActionsProc:RandFunction, page = , p1 = , p2 = ", page, actions[i].p1, actions[i].p2 )
			local ret = RandFunction( character, npc, page, actions[i].p1, actions[i].p2 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:RandFunction failed!" )
				SystemNotice( character, "ActionsProc:RandFunction failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddCredit then
			PRINT( "ActionsProc:AddCredit, p1 = ", actions[i].p1 )
			local ret = AddCredit( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:AddCredit failed!" )
				SystemNotice( character, "ActionsProc:AddCredit failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == Givecrab then
			PRINT( "ActionProc: Givecrab, p1 = ", actions[i].p1)
			local ret = Givecrab( character,npc, actions[i].p1)
			if ret ~= LUA_TRUE then
				PRINT( "ActionProc:Givecrab = false" )
				return LUA_FALSE
			end
		elseif actions[i].func == TakeOffer then
			PRINT( "ActionsProc:TakeOffer, p1 = ", actions[i].p1 )
			local ret = TakeOffer( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:TakeOffer failed!" )
				SystemNotice( character, "ActionsProc:TakeOffer failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == ValentinesRing then
			PRINT( "ActionsProc:ValentinesRing, p1 = ", actions[i].p1 )
			local ret = ValentinesRing( character, actions[i].p1 )
			if ret ~= LUA_TRUE then
				PRINT( "ActionsProc:ValentinesRing failed!" )
				SystemNotice( character, "ActionsProc:ValentinesRing failed!" )
				return LUA_FALSE
			end
		elseif actions[i].func == AddExp_1 then
				PRINT( "ActionProc: AddExp_1, p1 = ", actions[i].p1)
				local ret = AddExp_1( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddExp_1 = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == AddExp_2 then
				PRINT( "ActionProc: AddExp_2, p1 = ", actions[i].p1)
				local ret = AddExp_2( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddExp_2 = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == AddExp_3 then
				PRINT( "ActionProc: AddExp_3, p1 = ", actions[i].p1)
				local ret = AddExp_3( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddExp_3 = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == AddExp_4 then
				PRINT( "ActionProc: AddExp_4, p1 = ", actions[i].p1)
				local ret = AddExp_4( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddExp_4 = false" )
					return LUA_FALSE
				end

		elseif actions[i].func == AddExp_5 then
				PRINT( "ActionProc: AddExp_5, p1 = ", actions[i].p1)
				local ret = AddExp_5( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddExp_5 = false" )
					return LUA_FALSE
				end
		elseif actions[i].func == AddExp_6 then
				PRINT( "ActionProc: AddExp_6, p1 = ", actions[i].p1)
				local ret = AddExp_6( character,npc, actions[i].p1)
				if ret ~= LUA_TRUE then
					PRINT( "ActionProc:AddExp_6 = false" )
					return LUA_FALSE
				end
		else
			PRINT( "ActionProc:unknown operation error function notice!" )
			SystemNotice( character, "ActionProc:unknown operation error function!" )
			return LUA_FALSE
		end
	end
	
	PRINT( "ActionProc: return true" )
	return LUA_TRUE
end

--NPC觸發器條件檢查函數
function NpcTriggerCheck( character, trigger )
	PRINT( "NpcTriggerCheck" )
	if trigger == nil or trigger.conditions == nil then
		SystemNotice( character, "NpcTriggerCheck:Function parameter error!" )
		return LUA_ERROR
	end
	PRINT( "NpcTriggerCheck: ConditionsTest" )
	return ConditionsTest( character, trigger.conditions )
end

--是否任務已經完成
function NpcTriggerResult( character, trigger )
	PRINT( "NpcTriggerResult" )
	if trigger == nil then
		SystemNotice( character, "NpcTriggerResult:Function parameter error!" )
		return LUA_ERROR
	end
	
	--默認如果觸發器沒有結果條件則為永遠不符合條件
	if trigger.restul == nil or trigger.result[1] == nil then
		PRINT( "NpcTriggerResult: condition as null, consent return FALSE, denote does not match requirement permanently!" )
		return LUA_FALSE
	end
	
	PRINT( "NpcTriggerResult: ConditionsTest" )
	return ConditionsTest( character, trigger.result )
end

--取消一個任務
function NpcCancelTrigger( character, trigger, misid, scriptid )
	PRINT( "NpcCancelTrigger" )
	if trigger == nil or trigger.actions == nil then
		SystemNotice( character, "NpcCancelTrigger:Function parameter error!" )
		return LUA_ERROR
	end
	
	--檢測觸發器限制條件
	PRINT( "NpcCancelTrigger:conditions test" )
	if trigger.conditions ~= nil and trigger.conditions[1] ~= nil then
		local ret = ConditionsTest( character, trigger.conditions )
		if ret ~= LUA_TRUE then
			PRINT( "NpcCancelTrigger: conditions return false, return false" )
			return LUA_FALSE
		end
	end
	
	PRINT( "NpcCancelTrigger:actions proc" )
	if trigger.actions.count ~= nil then
		local actions = {}
		actions[1] = {}
		actions.count = 1
		for n = 1, trigger.actions.count, 1 do
			actions[1].func = trigger.actions[n].func
			actions[1].p1 = trigger.actions[n].p1
			actions[1].p2 = trigger.actions[n].p2
			actions[1].p3 = trigger.actions[n].p3
			actions[1].p4 = trigger.actions[n].p4
			actions[1].p5 = trigger.actions[n].p5
			actions[1].p6 = trigger.actions[n].p6
			actions[1].p7 = trigger.actions[n].p7
			actions[1].p8 = trigger.actions[n].p8
			PRINT( "NpcCancelTrigger:actions proc, func, p1, p2, p3, p4, p5, p6", trigger.actions[n].func, trigger.actions[n].p1, trigger.actions[n].p2, trigger.actions[n].p3, trigger.actions[n].p4 )
			local ret = ActionsProc( character, actions, nil, nil, misid, scriptid )
			if ret ~= LUA_TRUE then
				PRINT( "NpcCancelTrigger: actions return false, return false" )
			end
		end
	end
	
	PRINT( "NpcCancelTrigger: return true" )
	return LUA_TRUE
end

function NpcTrigger( character, npc, trigger, misid, scriptid )
	PRINT( "NpcTrigger" )
	if trigger == nil or trigger.actions == nil then
		SystemNotice( character, "NpcTrigger:Function parameter error!" )
		return LUA_ERROR
	end
	
	--檢測觸發器限制條件
	PRINT( "NpcTrigger:conditions test" )
	if trigger.conditions ~= nil and trigger.conditions[1] ~= nil then
		local ret = ConditionsTest( character, trigger.conditions )
		if ret ~= LUA_TRUE then
			PRINT( "NpcTrigger: conditions return false, return false" )
			return LUA_FALSE
		end
	end
	
	PRINT( "NpcTrigger:actions proc" )
	if trigger.actions ~= nil and trigger.actions[1] ~= nil then
		local ret = ActionsProc( character, trigger.actions, npc, nil, misid, scriptid )
		if ret ~= LUA_TRUE then
			PRINT( "NpcTrigger: actions return false, return false" )
		end
	end
	
	PRINT( "NpcTrigger: return true" )
	return LUA_TRUE
end

function TriggerProc( character, id, param1, param2, param3, param4 )
	PRINT( "TriggerProc:2 ID = , Trigger = , p1 = , p2 = , p3 = , p4 = ", id, TriggerList[id], param1, param2, param3, param4 )	
	if id == nil or TriggerList[id] == nil or TriggerList[id].actions == nil or param1 == nil or param2 == nil then
		SystemNotice( character, "TriggerProc:incorrect function notice or trigger does not have action notice!ID = "..id )
		return LUA_ERROR
	end
	
	PRINT( "TriggerProc: conditions proc!" )
	local trigger = TriggerList[id]
	if trigger.tp == MIS_TRIGGER_NOMAL then
		--檢測觸發器限制條件
		if trigger.conditions ~= nil and trigger.conditions[1] ~= nil then
			local ret = ConditionsTest( character, trigger.conditions, param1, param2 )
			if ret ~= LUA_TRUE then
				PRINT( "TriggerProc: conditions return false, return false" )
				return LUA_FALSE
			end
		end
		
		--處理觸發器動作
		PRINT( "TriggerProc:actions proc" )
		if trigger.actions ~= nil and trigger.actions[1] ~= nil then
			local ret = ActionsProc( character, trigger.actions, nil, nil, 0, 0, param1, param2 )
			if ret ~= LUA_TRUE then
				PRINT( "TriggerProc: actions return false, return false" )
				SystemNotice( character, "TriggerProc: actions return false, return false" )
				return LUA_FALSE
			end
		end
	
	elseif trigger.tp == MIS_TRIGGER_RAND then
		PRINT( "TriggerProc:random quest: param3, param4", param3, param4 )
		if trigger.actions[1].func == AddRMNextFlag then
			if param3 == nil or param4 == nil then
				PRINT( "TriggerProc:random quest:while reseting AddRMNextFlagfunction parameter, param3, param4 cannot be nil" )
				SystemNotice( character, "TriggerProc:random quest:while reseting AddRMNextFlagfunction parameter, param3, param4 cannot be nil" )
				return LUA_FALSE
			end
			
			trigger.actions[1].p2 = param3
			trigger.actions[1].p3 = param4
		end
		
		--檢測觸發器限制條件
		if trigger.conditions ~= nil and trigger.conditions[1] ~= nil then
			local ret = ConditionsTest( character, trigger.conditions, param1, param2 )
			if ret ~= LUA_TRUE then
				PRINT( "TriggerProc: random quest: conditions return false, return false" )
				return LUA_FALSE
			end
		end
		
		--處理觸發器動作
		PRINT( "TriggerProc:random quest: actions proc" )
		if trigger.actions ~= nil and trigger.actions[1] ~= nil then
			local ret = ActionsProc( character, trigger.actions )
			if ret ~= LUA_TRUE then
				PRINT( "TriggerProc: random quest: actions return false, return false" )
				SystemNotice( character, "TriggerProc: random quest: actions return false, return false" )
				return LUA_FALSE
			end
		end
		--reset rand mission trigger actions's value
		trigger.actions[1].p2 = 0
		trigger.actions[1].p3 = 0
	else
		PRINT( "TriggerProc:incorrect trigger type notice.id = ", id )
		SystemNotice( character, "TriggerProc:incorrect trigger type notice.id = "..id )
		return LUA_FALSE
	end
	
	PRINT( "TriggerProc: return true." )
	return LUA_TRUE
end

function TriggerResult( character, id, param1, param2 )
	PRINT( "TriggerResult" )	
	if id == nil or TriggerList[id] == nil or param1 == nil or param2 == nil then
		SystemNotice( character, "TriggerResult:incorrect function notice!" )
		return LUA_ERROR
	end
	
	PRINT( "TriggerResult: conditions proc!" )
	local trigger = TriggerList[id]
	
	--處理觸發器結束動作
	PRINT( "TriggerProc:failures proc" )
	if trigger.failures ~= nil and trigger.failures[1] ~= nil then
		local ret = ActionsProc( character, trigger.failures )
		if ret ~= LUA_TRUE then
			PRINT( "TriggerProc: failures return false, return false" )
		end
	end
	
	PRINT( "TriggerResult: return true" )
	return LUA_TRUE
end 

--獲取角色的適合的radom 任務生成信息段
function GetRandMissionLevel( character, sid, leveltp )
	if leveltp == MIS_LEVEL_CHAR then	    --角色radom 任務等級類型
		local level = GetCharMissionLevel( character )
		if level == nil then
			return 10000
		end
		return level --1 + GetSection( level, 5 )
	elseif leveltp == MIS_LEVEL_GANG then	--公會radom 任務等級類型
		local level = GetCharGangLevel( character )
		return level
	else
		SystemNotice( character, "GetRandMissionLevel:incorrect random quest level type!missid = "..sid )
		return 10000
	end
	return 10000
end

--根據radom 任務送物件庫中radom 生成一個物件，給Player送到NPC處
function GetRandMissionSendItem( itemlist )
	PRINT( "GetRandMissionSendItem:itemlist = , itemlist.count = ", itemlist, itemlist.count )
	local id = Rand( itemlist.count ) + 1
	PRINT( "GetRandMissionSendItem:rand value = , item id = ", id, itemlist[id] )
	return itemlist[id]
end

--根據角色完成的radom 任務次數radom 產生一個高級物品，作為任務獎勵
function GetRandMissionPrize( character, misname, id, loopinfo, loopdata )
	PRINT( "GetRandMissionPrize" )
	if loopinfo == nil or loopdata == nil or id == nil or misname == nil then
		PRINT( "GetRandMissionPrize: id = , loopdata = ", id, loopdata )
		SystemNotice( character, "GetRandMissionPrize:function parameter error，reward failed!" )
		return 0, 0
	end
	
	local ret, loopnum = GetRandMissionNum( character, id )
	if ret ~= LUA_TRUE then
		PRINT( "GetRandMissionPrize:GetRandMissionNum function transfer failed. Unable to obtain character random quest loop count!id = ", id )
		SystemNotice( character, "GetRandMissionPrize:GetRandMissionNum function transfer failed. Unable to obtain character random quest loop count!id = "..id )
		--清除該角色該radom 任務計數
		ResetRandMissionNum( character, id )
		return 0, 0
	else		
		loopnum = loopnum + 1 --轉換為lua數組索引
		PRINT( "GetRandMissionPrize:GetRandMissionNum: return loopnum = ", loopnum )
		PRINT( "loopdata, loopdata", loopdata, loopdata[loopnum] )
		if loopinfo[loopnum] == nil or loopdata[loopnum] == nil or loopdata[loopnum].Prize == nil then
			PRINT( "GetRandMissionPrize: invalid random quest cycle data notice or reward item notice,id = , loopnum = ", id, loopnum )
			SystemNotice( character, "GetRandMissionPrize: invalid random quest cycle data notice or reward item notice,id = "..id.." loopnum = "..loopnum )
			--清除該角色該radom 任務計數
			ResetRandMissionNum( character, id )
			return 0, 0
		end
		
		local ret, miscount = GetRandMissionCount( character, id )
		miscount = miscount + 1
		SystemNotice( character, "You have accepted quest ["..misname.."] No."..miscount.."!" )
		
		PRINT( "GetRandMissionPrize:HasRandMissionCount, id = , num = ", loopinfo[loopnum].num )
		local ret = HasRandMissionCount( character, id, loopinfo[loopnum].num - 1 )
		if ret == LUA_TRUE then
			--清除該環任務計數，同時環計數增加
			--ret = AddRandMissionNum( character, id )
			--if ret ~= LUA_TRUE then
				--PRINT( "GetRandMissionPrizeItem:AddRandMissionNum reset quest cycle calculation failed!id = ", id  )
				--SystemNotice( character, "GetRandMissionPrizeItem:AddRandMissionNum reset quest cycle calculation failed!id = "..id )
				--return 0, 0
			--end
			
			PRINT( "GetRandMissionPrize:Prize", loopdata[loopnum].Prize )
			--角色不同段位作radom 任務獲得高級物品的幾率將會隨段位增加而下降
			local prizelist = loopdata[loopnum].Prize
			local value = Rand( 100 )
			PRINT( "GetRandMissionPrize: prize rand value = , odds = ", value, loopinfo[loopnum].odds )
			if value >= loopinfo[loopnum].odds then
				return 0, 0
			end
			
			if prizelist.tp == MIS_PRIZE_ITEM then
				--計算高級物品獎勵radom 率
				local randdata = 0
				for n = 1, prizelist.count, 1 do
					randdata = randdata + prizelist[n].p2
					PRINT( "GetRandMissionPrize: n = , randdata = , p2 = ", n, randdata, prizelist[n].p2 )
				end
				local prizevalue = Rand( randdata )
				local tempdata = 0
				for n = 1, prizelist.count, 1 do
					if prizevalue >= tempdata and prizevalue < tempdata + prizelist[n].p2 then
						PRINT( "GetRandMissionPrize: return n = , prizevalue = , prizetp = , p1 = ", n, prizevalue, prizelist[n].tp, prizelist[n].p1 )
						return prizelist[n].tp, prizelist[n].p1
					end
					tempdata = tempdata + prizelist[n].p2
				end
			else
				local index = Rand( prizelist.count ) + 1
				PRINT( "GetRandMissionPrize:prizetp = , p1 = , p2 = index = ", prizelist[index].tp, prizelist[index].p1, prizelist[index].p2, index )		
				if prizelist[index] == nil then
					SystemNotice( character, "Error: cannot locate random quest high level equipment reward notice!id = "..id.."prize index = "..index )
					return 0
				end
				
				--local charname = GetCharName( character )
				--local str = "GetRandMissionPrizeItem, 分配給了角色一個高等級radom 任務裝備！name = 《"
				--str = str..charname.."》 item id = "..prizelist[index].."misid = "..id.."loopnum = "..loopnum
				
				PRINT( "GetRandMissionPrize: return prizetp = , p1 = ", prizelist[index].tp, prizelist[index].p1 )
				return prizelist[index].tp, prizelist[index].p1
			end
		end
	end
	
	PRINT( "GetRandMissionPrize: return 0" )
	return 0, 0
end

--判斷該radom 任務是否可以被該角色接受
function IsRandMissionAccept( character, mission )
	PRINT( "IsRandMissionAccept:character, mission", character, mission )
	if mission == nil or mission.tp ~= RAND_MISSION then
		PRINT( "IsRandMissionAccept:parameter error or non random quest type data notice!" )
		SystemNotice( character, "IsRandMissionAccept:parameter error or non random quest type data notice!" )		
		return LUA_FALSE
	end
	
	--獲取該角色radom 任務數據段值
	local level = GetRandMissionLevel( character, mission.sid, mission.leveltp )
	PRINT( "IsRandMissionAccept:GetRandMissionLevel : level = ", level )
	if mission.RandInfo == nil or mission.RandInfo[level] == nil then
		PRINT( "IsRandMissionAccept: no level info and return false " )
		return LUA_FALSE
	end
	
	PRINT( "IsRandMissionAccept:GetRandMissionLevel : return true " )
	return LUA_TRUE
end
	
--測試計算radom 任務公式
function GetRandMissionExp( loopnum, miscount, exp )
	--X*(350+Z*550)*0.0001*((10+Y*15)*0.001+INT(Y*0.1)*0.075)
	--x=總經驗
	--y=小環數
	--z=大環數 
	
	if loopnum == nil or miscount == nil or exp == nil then
		PRINT( "GetRandMissionExp:Function parameter error!loopnum, miscount, exp", loopnum, miscount, exp )
		return 0
	end
	
	--local value = exp*(350 + loopnum*550)*0.0001*((10 + miscount*15)*0.001 + (miscount*0.1)*0.075)
	local value = exp*((20 + miscount*5)*0.002 + ToDword(miscount*0.1)*0.05)
	local newexp = ToDword( value )
	PRINT( "GetRandMissionExp:newexp = ", newexp )
	if newexp == nil then
		return 0
	end
	PRINT( "GetRandMissionExp:loopnum, miscount, exp, newexp", loopnum, miscount, exp, newexp )
	return newexp
end

function GetRandMissionMoney( loopnum, miscount, money )
	if loopnum == nil or miscount == nil or money == nil then
		PRINT( "GetRandMissionExp:Function parameter error!loopnu, miscount, money", loopnum, miscount, money )
		return 0
	end
	
	--local value = money*(350 + loopnum*550)*0.0001*((10 + miscount*15)*0.001 + (miscount*0.1)*0.075)
	local value = money*((20 + miscount*5)*0.002 + ToDword(miscount*0.1)*0.05)
	local newmoney = ToDword( value )
	PRINT( "GetRandMissionExp:newmoney = ", newmoney )
	if newmoney == nil then
		return 0
	end
	
	return newmoney
end

--根據角色的信息生成一個radom 任務
function CreateRandMission( character, npc, mission )
	PRINT( "CreateRandMission:character, npc, mission", character, npc, mission )
	if mission == nil or mission.tp ~= RAND_MISSION then
		PRINT( "CreateRandMission:parameter error or non random quest type data notice!" )
		SystemNotice( character, "CreateRandMission:parameter error or non random quest type data notice!" )		
		return LUA_FALSE
	end
				
	--初始化全局radom 任務參數
	InitRandParam()
	RandParam.id = mission.id
	RandParam.sid = mission.sid
	RandParam.bounty = mission.bounty
	RandParam.npcname = mission.npcname
	RandParam.npcarea  = mission.npcarea	
	PRINT( "CreateRandMission:RandParam.id = , RandParam.sid = ,  bounty = , name = , area = ", RandParam.id, RandParam.sid, RandParam.bounty, RandParam.npcname, RandParam.npcarea )
	
	--獲取該角色radom 任務數據段值
	RandParam.level = GetRandMissionLevel( character, mission.sid, mission.leveltp )
	PRINT( "CreateRandMission:RandParam.level =, mission.RandInfo =, mission.RandInfo[level] = ", RandParam.level, mission.RandInfo, mission.RandInfo[RandParam.level] )
	if mission.RandInfo == nil or mission.RandInfo[RandParam.level] == nil then
		PRINT( "CreateRandMission:mission notice does not exist random quest data generated notice, please checl.llevel = "..RandParam.level )
		local desp = GetCharName( npc )
		desp = desp..": Sorry, I do not have any quest suitable for your level. Please look elsewhere."
		HelpInfo( character, MIS_HELP_DESP, desp )
		return LUA_FALSE
	end
	
	PRINT( "CreateRandMission: rand type count = ", mission.RandInfo[RandParam.level].tpinfo.count )
	--radom 一個任務類型
	--local tpinfoid = Rand( mission.RandInfo[RandParam.level].tpinfo.count ) + 1
	local tpinfoid = GetRandTpinfoIndex( mission.RandInfo[RandParam.level].tpinfo )
	
	PRINT( "CreateRandMission:Rand mission info, tpinfoid =, type = ", tpinfoid, mission.RandInfo[RandParam.level].tpinfo[tpinfoid].tp )
	if mission.RandInfo[RandParam.level].tpinfo[tpinfoid] == nil or mission.RandInfo[RandParam.level].tpinfo[tpinfoid].tp == nil then
		PRINT( "CreateRandMission:Random quest type shortcut notice as nil.level, tpinfoid", RandParam.level, tpinfoid )
		SystemNotice( character, "CreateRandMission:Random quest type shortcut notice as nil.level = , tpinfoid = "..RandParam.level..tpinfoid )
		return LUA_FALSE
	end
	
	--radom 取一個任務數據
	RandParam.tp = mission.RandInfo[RandParam.level].tpinfo[tpinfoid].tp
	local tpindex = GetRandMissionTypeIndex( mission, RandParam.tp )
	PRINT( "CreateRandMission:tpindex = ", tpindex )
	if tpindex == 0 then
		PRINT( "CreateRandMission:GetRandMission:GetRandMissionTypeIndex has not found any quest mission that matches with random question type initialization date notice" )
		SystemNotice( character, "CreateRandMission:GetRandMissionGetRandMissionTypeIndex has not found any quest mission that matches with random question type initialization date notice" )
		return LUA_FALSE
	end
	
	local randnum = mission.missionlist[tpindex].randnum
	if randnum == nil or randnum < 1 or randnum > 4 then
		PRINT( "CreateRandMission:random quest highest random value type cannot be less than 1 or greater than 4! num = "..randnum )
		SystemNotice( character, "CreateRandMission:random quest highest random value type cannot be less than 1 or greater than 4! num = "..randnum )
		return LUA_FALSE
	end
	PRINT( "CreateRandMission:randnum = , val = ", mission.missionlist[tpindex].randnum, randnum )
	
	--獲取radom 任務的計數
	local ret, miscount = GetRandMissionCount( character, mission.id )
	--if miscount == 0 then
		--miscount = 1
	--end
	miscount = miscount + 1
	
	local ret, misloopnum = GetRandMissionNum( character, mission.id )
	--if misloopnum == 0 then
		--misloopnum = 1
	--end
	misloopnum = misloopnum + 1
	
	--X*(350+Z*550)*0.0001*((10+Y*15)*0.001+INT(Y*0.1)*0.075)
	--x=總經驗
	--y=小環數
	--z=大環數 

	if RandParam.tp == MIS_RAND_KILL then					--獵殺怪物
		--radom 最大4個怪物類型
		RandParam.numdata = Rand( randnum ) + 1
		PRINT( "CreateRandMission:rand numdata = ", RandParam.numdata )
		if RandParam.numdata > mission.RandInfo[RandParam.level].KillInfo.count then
			RandParam.numdata = mission.RandInfo[RandParam.level].KillInfo.count
		end
		PRINT( "CreateRandMission:rand numdata = ", RandParam.numdata )
		if RandParam.numdata <= 0 then
			PRINT( "CreateRandMission, hunt monster quest random value cannot be less than zero. Please check if level of monster item matches! Level = ", RandParam.level )
			SystemNotice( character, "CreateRandMission, hunt monster quest random value cannot be less than zero. Please check if level of monster item matches!Level = "..RandParam.level )
			return LUA_FALSE
		end
		
		for n = 1, RandParam.numdata, 1 do
			local flag = 1
			local infoid = Rand( mission.RandInfo[RandParam.level].KillInfo.count ) + 1
			PRINT( "CreateRandMission:rand infoid = ", infoid )
			--檢查是否有重複的數據索引信息
			for i = 1, n - 1, 1 do
				if RandParam.data[i].id == infoid then
					PRINT( "CreateRandMission:3" )
					n = n - 1
					flag = 0
					break
				end
				PRINT( "CreateRandMission:2" )
			end
			PRINT( "CreateRandMission:4" )
			if flag == 1 then
				--保存數據
				PRINT( "CreateRandMission:5" )
				RandParam.data[n].id = infoid
				RandParam.data[n].p1 = mission.RandInfo[RandParam.level].KillInfo[infoid].p1
				RandParam.data[n].p2 = mission.RandInfo[RandParam.level].KillInfo[infoid].p2 + Rand(mission.RandInfo[RandParam.level].KillInfo[infoid].p3)
				PRINT( "CreateRandMission:6" )
				RandParam.data[n].p3 = 0
				RandParam.data[n].p4 = 0
				RandParam.data[n].p5 = 0
				RandParam.data[n].p6 = 0
				RandParam.data[n].p7 = 0
				RandParam.data[n].p8 = 0
				--RandParam.exp = GetRandMissionExp( misloopnum, miscount, RandParam.exp + mission.RandInfo[RandParam.level].KillInfo[infoid].p4 * RandParam.data[n].p2 )
				RandParam.exp = GetRandMissionExp( misloopnum, miscount, RandParam.exp + mission.RandInfo[RandParam.level].KillInfo[infoid].p4 )
				PRINT( "CreateRandMission:7" )
				--RandParam.money = GetRandMissionMoney( misloopnum, miscount, RandParam.money + mission.RandInfo[RandParam.level].KillInfo[infoid].p5 * RandParam.data[n].p2 )
				RandParam.money = GetRandMissionMoney( misloopnum, miscount, RandParam.money + mission.RandInfo[RandParam.level].KillInfo[infoid].p5 )
				PRINT( "CreateRandMission:rand data info: id, p1, p2, p3, p4", RandParam.data[n].id, RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4 )
			end
		end
		
	elseif RandParam.tp == MIS_RAND_GET then			--獲取物品
		--radom 最大4個怪物類型
		RandParam.numdata = Rand( randnum ) + 1
		if RandParam.numdata > mission.RandInfo[RandParam.level].GetInfo.count then
			RandParam.numdata = mission.RandInfo[RandParam.level].GetInfo.count
		end
		if RandParam.numdata <= 0 then
			PRINT( "CreateRandMission, Obtain item random quest quantity must be greater than zero, please check if target's level quest notice is correct! Level = ", RandParam.level )
			SystemNotice( character, "CreateRandMission, Obtain item random quest quantity must be greater than zero, please check if target's level quest notice is correct! Level = "..RandParam.level )
			return LUA_FALSE
		end
		
		for n = 1, RandParam.numdata, 1 do
			local flag = 1
			local infoid = Rand( mission.RandInfo[RandParam.level].GetInfo.count ) + 1
			PRINT( "CreateRandMission:rand infoid = ", infoid )
			--檢查是否有重複的數據索引信息
			for i = 1, n - 1, 1 do
				if RandParam.data[i].id == infoid then
					n = n - 1
					flag = 0
					break
				end
			end
			
			if flag == 1 then
			--保存數據
				RandParam.data[n].id = infoid
				RandParam.data[n].p1 = mission.RandInfo[RandParam.level].GetInfo[infoid].p1
				RandParam.data[n].p2 = mission.RandInfo[RandParam.level].GetInfo[infoid].p2 + Rand(mission.RandInfo[RandParam.level].GetInfo[infoid].p3)
				RandParam.data[n].p3 = 0
				RandParam.data[n].p4 = 0
				RandParam.data[n].p5 = 0
				RandParam.data[n].p6 = 0
				RandParam.data[n].p7 = 0
				RandParam.data[n].p8 = 0
				--RandParam.exp = GetRandMissionExp( misloopnum, miscount, RandParam.exp + mission.RandInfo[RandParam.level].GetInfo[infoid].p4 * RandParam.data[n].p2 )
				RandParam.exp = GetRandMissionExp( misloopnum, miscount, RandParam.exp + mission.RandInfo[RandParam.level].GetInfo[infoid].p4 )
				--RandParam.money = GetRandMissionMoney( misloopnum, miscount, RandParam.money + mission.RandInfo[RandParam.level].GetInfo[infoid].p5 * RandParam.data[n].p2 )
				RandParam.money = GetRandMissionMoney( misloopnum, miscount, RandParam.money + mission.RandInfo[RandParam.level].GetInfo[infoid].p5 )
				PRINT( "CreateRandMission:rand data info: id, p1, p2, p3, p4", RandParam.data[n].id, RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4 )
			end
		end
		
	elseif RandParam.tp == MIS_RAND_SEND then			--送給物品
		--radom 選擇一定類型數量的NPC
		PRINT( "Rand send" )
		local npcinfoid = nil --GetNpcInfoID( npc ) --獲取當前NPC的infoid，避免有自己發信自己收信的情況出現
		RandParam.numdata = Rand( randnum ) + 1
		PRINT( "CreateRandMission1: numdata = , randnum = , RandParam.level = , infocount = , itemcount = ", RandParam.numdata, randnum, RandParam.level, mission.RandInfo[RandParam.level].SendInfo.count, mission.RandInfo[RandParam.level].SendItem.count )
		if RandParam.numdata > mission.RandInfo[RandParam.level].SendInfo.count then
			RandParam.numdata = mission.RandInfo[RandParam.level].SendInfo.count
		end
		if RandParam.numdata > mission.RandInfo[RandParam.level].SendItem.count then
			RandParam.numdata = mission.RandInfo[RandParam.level].SendItem.count
		end
		if RandParam.numdata <= 0 then
			PRINT( "CreateRandMission, send letter quest random value cannot be greater than zero. Please check target level of send letter notice is correct!Level = ", RandParam.level )
			SystemNotice( character, "CreateRandMission, send letter quest random value cannot be greater than zero. Please check target level of send letter notice is correct!Level = "..RandParam.level )
			return LUA_FALSE
		end
		
		PRINT( "CreateRandMission2: numdata = , randnum = ", RandParam.numdata, randnum )
		for n = 1, RandParam.numdata, 1 do
			local flag = 1
			local infoid = Rand( mission.RandInfo[RandParam.level].SendInfo.count ) + 1
			local itemid = GetRandMissionSendItem( mission.RandInfo[RandParam.level].SendItem )
			PRINT( "CreateRandMission:rand infoid = , itemid = ", infoid, itemid )
			--檢查是否有重複的數據索引信息
			if mission.RandInfo[RandParam.level].SendInfo[infoid].p1 == npcinfoid then
				n = n - 1
				flag = 0
			else
				for i = 1, n - 1, 1 do
					if RandParam.data[i].id == infoid or RandParam.data[i].p2 == itemid then
						PRINT( "CreateRandMission:send item ,rand value repeat" )
						n = n - 1
						flag = 0
						break
					end
				end
			end
			
			if flag == 1 then
				--保存數據
				RandParam.data[n].id = infoid
				RandParam.data[n].p1 = mission.RandInfo[RandParam.level].SendInfo[infoid].p1 --npc info id
				RandParam.data[n].p2 = itemid --item id
				RandParam.data[n].p3 = mission.RandInfo[RandParam.level].SendInfo[infoid].p2 --area id
				RandParam.data[n].p4 = 0
				RandParam.data[n].p5 = 0
				RandParam.data[n].p6 = 0
				RandParam.data[n].p7 = 0
				RandParam.data[n].p8 = 0
				RandParam.exp = GetRandMissionExp( misloopnum, miscount, RandParam.exp + mission.RandInfo[RandParam.level].SendInfo[infoid].p4 )
				RandParam.money = GetRandMissionMoney( misloopnum, miscount, RandParam.money + mission.RandInfo[RandParam.level].SendInfo[infoid].p5 )
				PRINT( "CreateRandMission:rand data info: id, p1, p2, p3, p4", RandParam.data[n].id, RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4 )
			end
		end
		
	elseif RandParam.tp == MIS_RAND_CONVOY then		--護送NPC
		PRINT( "Convoy npc" )
		--radom 選擇一個護送NPC目標		
		RandParam.numdata = 1 --護送任務暫時只支持護送一個NPC，但是程序支持護送多個NPC
		if RandParam.numdata > mission.RandInfo[RandParam.level].ConvoyInfo.count then
			RandParam.numdata = mission.RandInfo[RandParam.level].ConvoyInfo.count
		end
		if RandParam.numdata <= 0 then
			PRINT( "CreateRandMission, escort NPC quest quantity must be greater than zero, please check if target's level escort notice is correct!Level = ", RandParam.level )
			SystemNotice( character, "CreateRandMission, escort NPC quest quantity must be greater than zero, please check if target's level escort notice is correct! Level = "..RandParam.level )
			return LUA_FALSE
		end
		
		for n = 1, RandParam.numdata, 1 do
			local flag = 1
			local infoid = Rand( mission.RandInfo[RandParam.level].ConvoyInfo.count ) + 1
			--檢查是否有重複的數據索引信息
			for i = 1, n - 1, 1 do
				if RandParam.data[i].id == infoid then
					PRINT( "CreateRandMission:convoy npc ,rand value repeat" )
					n = n - 1
					flag = 0
					break
				end
			end
			
			if flag == 1 then
				--保存數據
				RandParam.data[n].id = infoid
				RandParam.data[n].p1 = mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p1 --char info id
				RandParam.data[n].p2 = mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p2 --map id
				RandParam.data[n].p3 = mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p3 --areaid
				RandParam.data[n].p4 = mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p4 --x
				RandParam.data[n].p5 = mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p5 --y
				RandParam.data[n].p6 = mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p6 --scope
				RandParam.data[n].p7 = 0
				RandParam.data[n].p8 = 0
				RandParam.exp = GetRandMissionExp( misloopnum, miscount, RandParam.exp + mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p7 )
				RandParam.money = GetRandMissionMoney( misloopnum, miscount, RandParam.money + mission.RandInfo[RandParam.level].ConvoyInfo[infoid].p8 )
				PRINT( "CreateRandMission:rand data info: id, p1, p2, p3, p4, p5, p6", RandParam.data[n].id, RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4, RandParam.data[n].p5, RandParam.data[n].p6 )
			end
		end
		
	elseif RandParam.tp == MIS_RAND_EXPLORE then		--探索地圖
		
	else
		PRINT( "CreateRandMission: invalid random quest type!tp = "..RandParam.tp )
		SystemNotice( character, "CreateRandMission: invalid random quest type!tp = "..RandParam.tp )
		return LUA_FALSE
	end
	
	PRINT( "CreateRandMission: name, id, level, loopinfo, loopdata", mission.name, RandParam.id, mission.loopinfo, mission.RandInfo[RandParam.level].LoopData )
	RandParam.prizetp, RandParam.prizedata = GetRandMissionPrize( character, mission.name, RandParam.id, mission.loopinfo, mission.RandInfo[RandParam.level].LoopData )

	--設置radom 任務的經驗類型
	if mission.missionlist[tpindex].exptp == nil then
		PRINT( "Invalid random quest experience type!exptp = ", mission.missionlist[tpindex].exptp )
		SystemNotice( character, "Invalid random quest experience type!exptp = ", mission.missionlist[tpindex].exptp )
		return LUA_FALSE
	end
	RandParam.exptp = mission.missionlist[tpindex].exptp
	PRINT( "CreateRandMission:exptp = ", RandParam.exptp )
	
	--根據參數生成radom 任務信息
	local ret = RandMission( mission.missionlist[tpindex], RandParam )
	if ret ~= LUA_TRUE then
		PRINT( "CreateRandMission:RandMission generate random quest notice error!" )
		SystemNotice( character, "CreateRandMission:RandMission generate random quest notice error!" )
		return LUA_FALSE
	end
	
	--檢測radom 任務背包需求
	PRINT( "CreateRandMission:Required number of empty slots in inventory:numgrid = ", mission.missionlist[tpindex].begin.baggrid )
	local numgrid = mission.missionlist[tpindex].begin.baggrid
	local ret = HasLeaveBagGrid( character, numgrid )
	if ret ~= LUA_TRUE then
		PRINT( "CreateRandMission:insufficient inventory slot when character accept quest! num = ", numgrid )
		BickerNotice( character, "Inventory space insufficient, requires "..numgrid.." space. Activation of quest failed!" )
		return LUA_FALSE, 0
	end
		
	--存儲生成的數據到角色中	
	PRINT( "CreateRandMission:AddRandMission:id, sid, tp, level, exp, money, prizedata, prizetp, numdata", RandParam.id, RandParam.sid, RandParam.tp, RandParam.level, RandParam.exp, RandParam.money, RandParam.prizedata, RandParam.prizetp, RandParam.numdata )
	local ret = AddRandMission( character, RandParam.id, RandParam.sid, RandParam.tp, RandParam.level, RandParam.exp, RandParam.money, RandParam.prizedata, RandParam.prizetp, RandParam.numdata )
	if ret ~= LUA_TRUE then 
		PRINT( "CreateRandMission:AddRandMission add character random quest notice failed!" )
		SystemNotice( character, "CreateRandMission:AddRandMission add character random quest notice failed!" )
		return LUA_FALSE
	end
	
	for n = 1, RandParam.numdata, 1 do
		PRINT( "CreateRandMission:SetRandMissionData:id, index, p1, p2, p3, p4, p5, p6", RandParam.id, n - 1, RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4, RandParam.data[n].p5, RandParam.data[n].p6 )
		ret = SetRandMissionData( character, RandParam.id, n - 1, RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4, RandParam.data[n].p5, RandParam.data[n].p6 )
		if ret ~= LUA_TRUE then
			PRINT( "CreateRandMission:SetRandMissionData adds character random quest notice failed!, n = ", n )
			SystemNotice( character, "CreateRandMission:SetRandMissionData adds character random quest notice failed!n = "..n )
			return LUA_FALSE
		end
	end
	local str = "["
	local name = GetCharName( npc )
	str = str..name.."] has given you a random quest. Complete it!"
	SystemNotice( character, str )
	
	return LUA_TRUE, tpindex
end

--獲取radom 任務的匹配類型索引
function GetRandMissionTypeIndex( mission, tp )
	if mission == nil or tp == nil then
		PRINT( "GetRandMissionTypeIndex:parameter cannot be equal to nil. mission = nil or tp = nil" )
		return 0
	end
	PRINT( "GetRandMissionTypeIndex:mission, tp, mission.missionlist.count", mission, tp, mission.missionlist.count )
	for i = 1, mission.missionlist.count, 1 do
		PRINT( "GetRandMissionTypeIndex,mission.missionlist[i].tp = ", mission.missionlist[i].tp )
		if tp == mission.missionlist[i].tp then
			return i
		end
	end
	
	return 0
end

--獲取radom 任務信息radom 數
function GetRandTpinfoIndex( tpinfo )
	local randdata = 0
	for n = 1, tpinfo.count, 1 do					
		randdata = randdata + tpinfo[n].tprand
		PRINT( "GetRandTpinfoIndex: n = , randdata = , tprand = ", n, randdata, tpinfo[n].tprand )
	end
	local randvalue = Rand( randdata )
	local tempdata = 0
	for n = 1, tpinfo.count, 1 do
		if randvalue >= tempdata and randvalue < tempdata + tpinfo[n].tprand then
			PRINT( "GetRandTpinfoIndex: return n = , tprandvalue = , tprand = ", n, randvalue, tpinfo[n].tprand )
			return n
		end
		tempdata = tempdata + tpinfo[n].tprand
	end
	return 0
end

--根據角色的保存的radom 生成任務配置信息重構任務
function GetCharRandMission( character, id, mission )
	PRINT( "GetRandMission:character", character )
	
	--判斷角色是否有radom 任務配置信息
	if HasRandMission( character, id ) ~= LUA_TRUE then
		PRINT( "GetRandMission:HasRandMission does not detect random quest notice on target,ID = "..id )
		SystemNotice( character, "GetRandMission: does not detect random quest notice on target,ID = "..id )
		return LUA_TRUE, 0
	end
	
	--初始化全局radom 任務參數
	InitRandParam()
	
	--獲取角色的radom 任務配置信息
	PRINT( "GetCharRandMission:GetRandMission, id = ", id  )
	local ret
	RandParam.id = id
	RandParam.bounty = mission.bounty
	RandParam.npcname = mission.npcname
	RandParam.npcarea  = mission.npcarea	
	PRINT( "CreateRandMission:RandParam.id = , RandParam.sid = ,  bounty = , name = , area = ", RandParam.id, RandParam.sid, RandParam.bounty, RandParam.npcname, RandParam.npcarea )
	
	ret, RandParam.tp, RandParam.level, RandParam.exp, RandParam.money, RandParam.prizedata, RandParam.prizetp, RandParam.numdata = GetRandMission( character, id )
	if ret ~= LUA_TRUE then
		PRINT( "GetCharRandMission:GetRandMission error." )
		SystemNotice( character, "GetCharRandMission:GetRandMission error." )
		return LUA_FALSE
	end
	PRINT( "GetCharRandMission:tp, level, exp, money, prizedata, prizetp, numdata",  RandParam.tp, RandParam.level, RandParam.exp, RandParam.money, RandParam.prizedata, RandParam.prizetp, RandParam.numdata )
	--獲取配置信息列表
	for n = 1, RandParam.numdata, 1 do
		ret, RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4, RandParam.data[n].p5, RandParam.data[n].p6 = GetRandMissionData( character, id, n - 1 )
		PRINT( "GetRandMissionData: p1, p2, p3, p4, p5, p6 ", RandParam.data[n].p1, RandParam.data[n].p2, RandParam.data[n].p3, RandParam.data[n].p4, RandParam.data[n].p5, RandParam.data[n].p6 )
		if ret ~= LUA_TRUE then
			PRINT( "GetCharRandMission:GetRandMissionData error." )
			SystemNotice( character, "GetCharRandMission:GetRandMissionData error." )
			return LUA_FALSE
		end
	end
	
	local index = GetRandMissionTypeIndex( mission, RandParam.tp )
	PRINT( "GetCharRandMission:GetRandMissionTypeIndex index = ", index )
	if index == 0  then
		PRINT( "GetRandMission:obtain random quest matching type notice failed!" )
		SystemNotice( character, "GetRandMission:obtain random quest matching type notice failed!" )
		return LUA_FALSE
	end

	--設置radom 任務的經驗類型
	if mission.missionlist[index].exptp == nil then
		PRINT( "Invalid random quest experience type!exptp = ", mission.missionlist[index].exptp )
		SystemNotice( character, "Invalid random quest experience type!exptp = ", mission.missionlist[index].exptp )
		return LUA_FALSE
	end
	RandParam.exptp = mission.missionlist[index].exptp
	PRINT( "CreateRandMission:exptp = ", RandParam.exptp )
	
	local ret = RandMission( mission.missionlist[index], RandParam )
	if ret ~= LUA_TRUE then
		PRINT( "GetRandMission: according to random quest setting notice resulted in random quest failed!" )
		SystemNotice( character, "GetRandMission: according to random quest setting notice resulted in random quest failed!" )
		return LUA_FALSE
	end
	
	PRINT( "GetRandMission: return true, index = ", index )
	return LUA_TRUE, index, mission.RandInfo[RandParam.level].LoopData
end

--radom 生成一個任務
function RandMission( mission, param )
	PRINT( "RandMission" )
	if mission == nil or param == nil or param.tp ~= mission.tp then
		PRINT( "RandMission:mission = nil or param = nil or param.tp ~= mission.tp" )
		return LUA_FALSE
	end
	
	--初始化角色任務背包容量需求
	mission.begin.baggrid = 0
	mission.result.baggrid = 0
	
	PRINT( "RandMission, mission.tp = , param.tp", mission.tp, param.tp )	
	--根據隨機任務的類型和參數生成一個新任務
	if mission.tp == MIS_RAND_KILL then				--摧毀物件
		--獵殺的怪物類型數量
		local num = 0
		mission.begin.actions.count = param.numdata
		mission.result.conditions.count = param.numdata
		mission.need.count = param.numdata + 1
		mission.need[1].p1 = "  <b"..param.npcarea..">'s<y"..param.npcname.."> needs you to hunt"

		--mission.begin.talk = "<t>嗨，朋友。有興趣掙個小錢嗎？我這裡剛好有個捕獵任務，只要捕到"
		--mission.result.help = "<t>嗨，朋友，你要時刻記得答應我的事情哦，只要捕到"
		
		PRINT( mission.begin.talkstart, mission.result.talkstart, mission.result.helpstart )
		PRINT( mission.begin.talkend, mission.result.talkend, mission.result.helpend )
		mission.begin.talk = mission.begin.talkstart
		mission.result.talk = mission.result.talkstart
		mission.result.help = mission.result.helpstart
		PRINT( "RandMission,1" )
		for n = 1, param.numdata, 1 do
			--更新任務需求
			mission.need[n+1].p1 = param.data[n].p1 	--怪物類型ID
			mission.need[n+1].p2 = param.data[n].p2 	--怪物數量
			mission.need[n+1].p3 = num						--開始記錄標籤位置
			
			--更新任務開始觸發器動作信息(AddTrigger)
			mission.begin.actions[n].p3 = param.data[n].p1 --怪物類型ID
			mission.begin.actions[n].p4 = param.data[n].p2 --怪物數量
			mission.begin.actions[n].p5 = num --開始記錄標籤位置
			mission.begin.actions[n].p6 = 0
			
			--更新任務完成條件信息
			num = num + param.data[n].p2
			mission.result.conditions[n].p2 = num - 1 --殺死怪物觸發器記錄的標記
			
			--任務開始描述信息
			PRINT( "RandMission, 2" )
		    local monstername = GetMonsterName( param.data[n].p1 )
			PRINT( "RandMission, 3, count, talk, need[count].p2, monstername", n, mission.begin.talk, mission.need[n].p2, monstername )			
			local nummonster = 0
			if mission.need[n+1].p2 ~= nil then
				nummonster = mission.need[n+1].p2
			end
			mission.begin.talk = mission.begin.talk.."<r"..nummonster.."> <r\""..monstername.."\">"
			mission.result.help = mission.result.help.."<r"..nummonster.."> <r\""..monstername.."\">"
			mission.need[1].p1 = mission.need[1].p1.."<r"..nummonster.."> <r\""..monstername.."\">"
			if n < param.numdata then
				mission.begin.talk = mission.begin.talk.."，"
				mission.result.help = mission.result.help.."，"
				mission.need[1].p1 = mission.need[1].p1.."，"
			end
		end

		--任務結束動作(AddExpAndType)	
		mission.result.actions[2].p1 = param.exptp
		mission.result.actions[2].p2 = param.exp
		mission.result.actions[2].p3 = param.exp
		PRINT( "RandMission:AddExpAndType, exp = ", mission.result.actions[2].p1 )
		
		--任務描述信息
		--mission.begin.talk = mission.begin.talk.."。"
		--mission.result.talk = "<t>嗯，看起來你蠻具備賞金獵人的能力的嘛，喏，這是給你獎勵，希望我們下次再合作。"
		--mission.result.help = mission.result.help.."。"

		mission.begin.talk = mission.begin.talk..mission.begin.talkend
		mission.result.talk = mission.result.talk..mission.result.talkend
		mission.result.help = mission.result.help..mission.result.helpend
		mission.need[1].p1 = mission.need[1].p1.."。"
		
		PRINT( "RandMission,4 " )
		--隨機任務獎勵
		mission.prize[1].p1 = param.money
		if param.prizedata ~= 0 then
			PRINT( "RandMission,5, prizetp, prizedata", param.prizetp, param.prizedata )
			mission.prize[2].tp = param.prizetp
			mission.prize[2].p1 = param.prizedata
			mission.prize.count = 2
			if param.prizetp == MIS_PRIZE_ITEM then
				mission.prize[2].p2 = 1
				mission.prize[2].p3 = param.bounty
				mission.result.baggrid = 1
			elseif param.prizetp == MIS_PRIZE_CESS then
				mission.prize[2].p2 = 0
			elseif param.prizetp == MIS_PRIZE_FAME then
				mission.prize[2].p2 = 0
			else
				PRINT( "RandMission:Invalid reward type notice!misid = , tp = , p1 = ", param.id, param.prizetp, param.prizedata )
				mission.prize[2].tp = 0
				mission.prize[2].p1 = 0
				mission.prize.count = 1
			end
		else
			PRINT( "RandMission,6" )
			mission.prize.count = 1
		end
		PRINT( "RandMission,7" )
	elseif mission.tp == MIS_RAND_GET then		--獲取物品
		--獲取的物品類型數量
		PRINT( "RandMission:tp = MIS_RAND_GET:param.numdata = ", param.numdata ) 
		local num = 0
		mission.begin.actions.count = param.numdata
		mission.result.conditions.count = param.numdata * 2
		mission.result.actions.count = 2 + param.numdata
		mission.need.count = param.numdata + 1
		mission.need[1].p1 = "  <b"..param.npcarea..">'s<y"..param.npcname..">requires your help to collect"
		mission.need[1].p1 = mission.need[1].p1.."<r"..param.numdata.."> items,"
		
		--mission.begin.talk = "<t>你好，朋友。我這裡急需"
		--mission.begin.talk = mission.begin.talk.."<r"..param.numdata..">樣東西，請你幫我收集到："
		--mission.result.help = "hmm，你有幫我收集我要的東西麼？你不會忘記了吧？我需要"
		--mission.result.help = mission.result.help.."<r"..param.numdata..">樣東西，"
		PRINT( mission.begin.talkstart, mission.result.talkstart, mission.result.helpstart )
		PRINT( mission.begin.talkend, mission.result.talkend, mission.result.helpend )
		mission.begin.talk = mission.begin.talkstart
		mission.result.talk = mission.result.talkstart
		mission.result.help = mission.result.helpstart
		
		for n = 1, param.numdata, 1 do
			--更新任務需求
			mission.need[n+1].p1 = param.data[n].p1   	--物品類型ID
			mission.need[n+1].p2 = param.data[n].p2 	--物品數量
			mission.need[n+1].p3 = num						--開始記錄標籤位置
			
			--更新任務開始觸發器動作信息(AddTrigger)
			mission.begin.actions[n].p3 = param.data[n].p1	 --物品類型ID
			mission.begin.actions[n].p4 = param.data[n].p2  --物品數量
			mission.begin.actions[n].p5 = num --開始記錄標籤位置
			mission.begin.actions[n].p6 = 0
			
			--任務結束動作(TakeItem)
			mission.result.actions[n+2].p1 = param.data[n].p1
			mission.result.actions[n+2].p2 = param.data[n].p2
			PRINT( "RandMission:TakeItem, item = , num = ", mission.result.actions[n+2].p1, mission.result.actions[n+2].p2 )
			
			--更新任務完成條件信息
			num = num + param.data[n].p2
			--設置HasFlag 函數參數
			mission.result.conditions[1 + (n - 1)*2].p2 = num - 1 --獲取物品觸發器記錄的標記
			--設置HasItem 函數參數
			mission.result.conditions[2 + (n - 1)*2].p1 = param.data[n].p1 --獲取物品類型ID
			mission.result.conditions[2 + (n - 1)*2].p2 = param.data[n].p2 --獲取物品數量
			
			--任務開始描述信息
			local itemname = GetItemName( param.data[n].p1 )
			mission.begin.talk = mission.begin.talk.."<r"..mission.need[n+1].p2.."> <r"..itemname..">"
			mission.result.help = mission.result.help.."<r"..mission.need[n+1].p2.."> <r"..itemname..">"
			mission.need[1].p1 = mission.need[1].p1.."<r"..mission.need[n+1].p2.."> <r"..itemname..">"
			if n < param.numdata then
				mission.begin.talk = mission.begin.talk.."，"
				mission.result.help = mission.result.help.."，"
				mission.need[1].p1 = mission.need[1].p1.."，"
			end
		end
		
		--任務結束動作(AddExpAndType)	
		mission.result.actions[2].p1 = param.exptp
		mission.result.actions[2].p2 = param.exp
		mission.result.actions[2].p3 = param.exp
		PRINT( "RandMission:AddExpAndType, exp = ", mission.result.actions[2].p1 )
		
		--任務描述信息
		--mission.begin.talk = mission.begin.talk.."。"
		--mission.result.help = mission.begin.talk.."記好了，少一個都不行！"
		--mission.result.talk = "<t>啊哈，幸好有你幫忙，這次我的收藏品更加豐富了，這是給你的獎勵，如果你有興趣再來找我。"
		mission.need[1].p1 = mission.need[1].p1.."。"

		mission.begin.talk = mission.begin.talk..mission.begin.talkend
		mission.result.talk = mission.result.talk..mission.result.talkend
		mission.result.help = mission.result.help..mission.result.helpend
		
		--隨機任務獎勵
		mission.prize[1].p1 = param.money
		if param.prizedata ~= 0 then
			PRINT( "RandMission,5, prizetp, prizedata", param.prizetp, param.prizedata )
			mission.prize[2].tp = param.prizetp
			mission.prize[2].p1 = param.prizedata
			mission.prize.count = 2
			if param.prizetp == MIS_PRIZE_ITEM then
				mission.prize[2].p2 = 1
				mission.prize[2].p3 = param.bounty
				mission.result.baggrid = 1
			elseif param.prizetp == MIS_PRIZE_CESS then
				mission.prize[2].p2 = 0
			elseif param.prizetp == MIS_PRIZE_FAME then
				mission.prize[2].p2 = 0
			else
				PRINT( "RandMission:Invalid reward type notice!misid = , tp = , p1 = ", param.id, param.prizetp, param.prizedata )
				mission.prize[2].tp = 0
				mission.prize[2].p1 = 0
				mission.prize.count = 1
			end
		else
			PRINT( "RandMission,6" )
			mission.prize.count = 1
		end
		
	elseif mission.tp == MIS_RAND_SEND then			--送物品
		--送的物品類型數量
		local num = 0
		mission.begin.actions.count = param.numdata
		mission.result.conditions.count = param.numdata
		mission.need.count = param.numdata + 1 --需要以後添加新的任務目標類型
		mission.need[1].p1 = "  <b"..param.npcarea..">'s<y"..param.npcname..">needs you to help him on an errand. He will reward you after you return."

		--mission.begin.talk = "<t>你好，朋友。我這裡有"
		--mission.begin.talk = mission.begin.talk.."<r"..param.numdata..">樣東西，請把"
		--mission.result.help = "<t>嗨，朋友，我托你送的"
		--mission.result.help = mission.result.help.."<r"..param.numdata..">樣東西都送到了沒有哦？把"
				
		PRINT( mission.begin.talkstart, mission.result.talkstart, mission.result.helpstart )
		PRINT( mission.begin.talkend, mission.result.talkend, mission.result.helpend )
		mission.begin.talk = mission.begin.talkstart
		mission.result.talk = mission.result.talkstart
		mission.result.help = mission.result.helpstart
		
		for n = 1, param.numdata, 1 do
			--更新任務開始觸發器動作信息(GiveItem)
			mission.begin.actions[n].p1 = param.data[n].p2	 --物品ID
			mission.begin.actions[n].p2 = 1
			PRINT( "RandMission: GiveItem item = , count = ", mission.begin.actions[n].p2, 1 )
			
			--更新任務完成條件信息(HasRandItemFlag)
			mission.result.conditions[n].p2 = param.data[n].p1 --檢測是否有NPC收到物件的標記
			
			--任務開始描述信息
			local npcname = GetNpcName( param.data[n].p1 )
			PRINT( "RandMission, npcname = ", npcname )
			local areaname = GetAreaName( param.data[n].p3 )
			PRINT( "RandMission, areaname = ", areaname )
			local itemname = GetItemName( param.data[n].p2 )
			mission.begin.talk = mission.begin.talk.."<r["..itemname.."]> to give <p"..areaname..">'s <b\""..npcname.."\">"
			mission.result.help = mission.result.help.."<r["..itemname.."]> to give <p"..areaname..">'s <b\""..npcname.."\">"
			if n < param.numdata then				
				mission.begin.talk = mission.begin.talk.."，"
				mission.result.help = mission.result.help.."，"
			end
			PRINT( "RandMission, talk = ", mission.begin.talk )
			
			--更新任務需求
			mission.need[n+1].p1 = n..") hold <r["..itemname.."]> pass to <p"..areaname..">'s <b\""..npcname.."\">"   --任務目標			
			PRINT( "RandMission: need.p1 = ", mission.need[n+1].p1 )
		end
		
		--任務結束動作(AddExpAndType)	
		mission.result.actions[2].p1 = param.exptp
		mission.result.actions[2].p2 = param.exp
		mission.result.actions[2].p3 = param.exp
		PRINT( "RandMission:AddExpAndType, exp = ", mission.result.actions[2].p1 )		
		
		--任務描述信息
		mission.begin.baggrid = param.numdata
		--mission.begin.talk = mission.begin.talk.."。"		
		--mission.result.help = mission.result.help.."。"
		--mission.result.talk = "<t>哇，你的速度好快嘛，就已經把東西送到了哦，謝謝你朋友，這是你的勞動所得，下次有空再來哦。"
		
		mission.begin.talk = mission.begin.talk..mission.begin.talkend
		mission.result.talk = mission.result.talk..mission.result.talkend
		mission.result.help = mission.result.help..mission.result.helpend
		
		--隨機任務獎勵
		mission.prize[1].p1 = param.money
		if param.prizedata ~= 0 then
			PRINT( "RandMission,5, prizetp, prizedata", param.prizetp, param.prizedata )
			mission.prize[2].tp = param.prizetp
			mission.prize[2].p1 = param.prizedata
			mission.prize.count = 2
			if param.prizetp == MIS_PRIZE_ITEM then
				mission.prize[2].p2 = 1
				mission.prize[2].p3 = param.bounty
				mission.result.baggrid = 1
			elseif param.prizetp == MIS_PRIZE_CESS then
				mission.prize[2].p2 = 0
			elseif param.prizetp == MIS_PRIZE_FAME then
				mission.prize[2].p2 = 0
			else
				PRINT( "RandMission:Invalid reward type notice!misid = , tp = , p1 = ", param.id, param.prizetp, param.prizedata )
				mission.prize[2].tp = 0
				mission.prize[2].p1 = 0
				mission.prize.count = 1
			end
		else
			PRINT( "RandMission,6" )
			mission.prize.count = 1
		end
		
	elseif mission.tp == MIS_RAND_CONVOY then		--護送NPC
		--護送的NPC
		local num = 0
		mission.begin.actions.count = 1 + param.numdata*2
		mission.result.conditions.count = param.numdata
		mission.need.count = param.numdata + 1 --需要以後添加新的任務目標類型
		mission.need[1].p1 = "  <b"..param.npcarea..">'s <y"..param.npcname..">needs your help to escort some people to another place. You can get your reward from him after you return."
		
		--mission.begin.talk = "<t>你好，朋友。你願意"
		
		PRINT( mission.begin.talkstart, mission.result.talkstart, mission.result.helpstart )
		PRINT( mission.begin.talkend, mission.result.talkend, mission.result.helpend )		
		mission.begin.talk = mission.begin.talkstart
		mission.result.talk = mission.result.talkstart
		mission.result.help = mission.result.helpstart
		
		for n = 1, param.numdata, 1 do
			--更新任務開始觸發器動作信息(AddTrigger)
			mission.begin.actions[2 + (n - 1)*2].p3 = param.data[n].p2	 --map ID
			mission.begin.actions[2 + (n - 1)*2].p4 = param.data[n].p4  --x
			mission.begin.actions[2 + (n - 1)*2].p5 = param.data[n].p5  --y
			mission.begin.actions[2 + (n - 1)*2].p6 = param.data[n].p6  --scope
			
			--ConvoyNpc
			mission.begin.actions[3 + (n - 1)*2].p2 = n - 1	 --convoy index npc
			mission.begin.actions[3 + (n - 1)*2].p3 = param.data[n].p1	 -- charid
			
			PRINT( "RandMission: Convoy npcid =  to map = , x = , y = , scope = ", mission.begin.actions[3 + (n - 1)*2].p3, mission.begin.actions[2 + (n - 1)*2].p3, mission.begin.actions[2 + (n - 1)*2].p4, mission.begin.actions[2 + (n - 1)*2].p5, mission.begin.actions[2 + (n - 1)*2].p6 )

			--更新任務完成條件信息(HasFlag)
			
			--任務開始描述信息
			local npcname = GetMonsterName( param.data[n].p1 ) --charinfo name
			PRINT( "RandMission, npcname = ", npcname )
			local areaname = GetAreaName( param.data[n].p3 )
			PRINT( "RandMission, areaname = ", areaname )
			
			mission.begin.talk = mission.begin.talk.."escort <b\""..npcname.."\"> reached <p"..areaname..">'s <b"..param.data[n].p4.."，"..param.data[n].p5.."> nearby?"
			PRINT( "RandMission, talk = ", mission.begin.talk )
			
			--更新任務需求
			mission.need[n+1].p1 = n..") escort <b\""..npcname.."\"> reached <p"..areaname..">"   --任務目標
			PRINT( "RandMission: need.p1 = ", mission.need[n+1].p1 )
		end

		--任務結束動作(AddExpAndType)	
		mission.result.actions[2].p1 = param.exptp
		mission.result.actions[2].p2 = param.exp
		mission.result.actions[2].p3 = param.exp
		PRINT( "RandMission:AddExpAndType, exp = ", mission.result.actions[2].p1 )
		
		--任務描述信息
		--mission.begin.talk = mission.begin.talk.."你要在<r一個小時>以內辦妥這件事。"
		--mission.result.talk = mission.begin.talk
		--mission.result.help = mission.begin.talk
		
		mission.begin.talk = mission.begin.talk..mission.begin.talkend
		mission.result.talk = mission.result.talk..mission.result.talkend
		mission.result.help = mission.result.help..mission.result.helpend
		
		--隨機任務獎勵
		mission.prize[1].p1 = param.money
		if param.prizedata ~= 0 then
			PRINT( "RandMission,5, prizetp, prizedata", param.prizetp, param.prizedata )
			mission.prize[2].tp = param.prizetp
			mission.prize[2].p1 = param.prizedata
			mission.prize.count = 2
			if param.prizetp == MIS_PRIZE_ITEM then
				mission.prize[2].p2 = 1
				mission.prize[2].p3 = param.bounty
				mission.result.baggrid = 1
			elseif param.prizetp == MIS_PRIZE_CESS then
				mission.prize[2].p2 = 0
			elseif param.prizetp == MIS_PRIZE_FAME then
				mission.prize[2].p2 = 0
			else
				PRINT( "RandMission:Invalid reward type notice!misid = , tp = , p1 = ", param.id, param.prizetp, param.prizedata )
				mission.prize[2].tp = 0
				mission.prize[2].p1 = 0
				mission.prize.count = 1
			end
		else
			PRINT( "RandMission,6" )
			mission.prize.count = 1
		end
		
	elseif mission.tp == MIS_RAND_EXPLORE then		--探索地圖
		
	end
	
	return LUA_TRUE
end

------------給予0能量的女神雕像
function GiveNSDX ( character , npc , value )
	local r1=0
	local r2=0
	r1,r2 =MakeItem ( character , value , 1 , 4 )
	local Item_NSDX = GetChaItem2 ( character , 2 , r2 )
	local NUM_NOW = 0
	local Item_NSDX_NOW = GetChaItem2 ( character , 2 , 3010 )
	SetItemAttr( Item_NSDX_NOW , ITEMATTR_ENERGY , NUM_NOW )
	RefreshCha( character )
end

-----------判斷女神雕像能量是否達到999
function CheckEnergy ( character )
	local NSDX_Num = CheckBagItem( character, 3010 )
	---SystemNotice(character,""..HHS_Num)
	if NSDX_Num ~= 1 then
		return 0
	end
	local role_NSDX = GetChaItem2 ( character , 2 , 3010 )	
	local attr_energy = GetItemAttr ( role_NSDX, ITEMATTR_ENERGY)
	if attr_energy ~= 999 then
		return LUA_FALSE
	end

	return LUA_TRUE
end

-----------------------判斷角色沒有轉生經驗
function HasNOZSExp ( character )
	local attr_zsexp = GetChaAttr ( character , ATTR_CSAILEXP )
	if attr_zsexp == 0 then
		return LUA_TRUE
	end

	return LUA_FALSE
end

------------------------判斷身上沒有某種道具
function HasNoItem( character ,value )
	local item_number = CheckBagItem( character, value )			
	if item_number >= 1 then
		return LUA_FALSE
	end
	return LUA_TRUE
end
function AddChaItem7(character)        
	------------取升級考卷的指針
	local r1=0
	local r2=0
	r1,r2 =MakeItem ( character , 3280  , 1 , 4 )
	local Item_new = GetChaItem ( character , 2 , r2 )

	----------記錄時間
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------時
	local now_miniute= os.date("%M")	-------------分
	local now_scend=  os.date("%S")		-------------秒
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------時     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_scend= tonumber(now_scend)		-------------秒     
	SetItemAttr(Item_new, ITEMATTR_VAL_STA, now_month )		-------------月 	
	SetItemAttr(Item_new, ITEMATTR_VAL_STR, now_day )		-------------日  
	SetItemAttr(Item_new, ITEMATTR_VAL_CON, now_hour )		-------------時   
	SetItemAttr(Item_new, ITEMATTR_VAL_DEX, now_miniute )		-------------分   
	SetItemAttr(Item_new, ITEMATTR_VAL_AGI, now_scend )		-------------秒 
	SynChaKitbag(character,13)
	return LUA_TRUE
end

function CheckKJNum ( character )
	local num_kj=CheckBagItem( character , 3280 )
	if num_kj == 1 then
		return LUA_TRUE
	end
end	
function AddChaItem8(character)
	------------取升級考卷的指針
	local role_kj=GetChaItem2( character , 2 , 3280 )
	----------記錄時間
	local now_yes = os.date("%y")			-------------年
	local now_month= os.date("%m")			-------------月
	local now_day= os.date("%d")			-------------日
	local now_hour= os.date("%H")			-------------時
	local now_miniute= os.date("%M")		-------------分
	local now_scend=  os.date("%S")			-------------秒
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------時     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_scend= tonumber(now_scend)		-------------秒     

	---------取升級考卷的時間	
	local old_month = GetItemAttr(role_kj, ITEMATTR_VAL_STA)		-------------月 	
	local old_day = GetItemAttr(role_kj, ITEMATTR_VAL_STR)			-------------日  
	local old_hour = GetItemAttr(role_kj, ITEMATTR_VAL_CON)			-------------時   
	local old_miniute = GetItemAttr(role_kj, ITEMATTR_VAL_DEX)		-------------分   
	local old_scend = GetItemAttr(role_kj, ITEMATTR_VAL_AGI)			-------------秒 
	---------刪除升級考卷
	local del_item =TakeItem( character, 0,3280, 1 )			                   
	if del_item==0  then
		SystemNotice ( character ,"刪除升級考卷失敗")
	end

	local used_time=(now_scend - old_scend)+(now_miniute - old_miniute)*60+(now_hour - old_hour)*3600+(now_day - old_day)*86400+(JNSTime_Flag[now_month] - JNSTime_Flag[old_month] )*86400
	------------取升級成績單的指針
	local r1=0
	local r2=0
	r1,r2 =MakeItem ( character , 3281  , 1 , 4 )
	local Item_new = GetChaItem ( character , 2 , r2 )
	SetItemAttr(Item_new, ITEMATTR_VAL_AGI, used_time )		-------------秒  
	SynChaKitbag(character,13)
	return LUA_TRUE
end


----------測驗判斷成績單時間               
function checkcytime( character , npc )
	local role_xsz = GetChaItem2 ( character , 2 , 3289 )
	local exp_xsz = GetItemAttr ( role_xsz , ITEMATTR_ENERGY )		-----取學生證當前經驗
	local mexp_xsz = GetItemAttr ( role_xsz , ITEMATTR_MAXENERGY )		-----取學生證最大經驗
	local newexp_xsz = exp_xsz * 1000
	local ch_xsz = GetItemAttr ( role_xsz , ITEMATTR_URE )		-----取學生證當前學分
	local mch_xsz = GetItemAttr ( role_xsz, ITEMATTR_MAXURE )	-----取學生證最大學分
	local role_cjd = GetChaItem2 ( character , 2 , 3279 )
	local cha_name = GetChaDefaultName ( character )
	local newch_xsz = ch_xsz + math.floor(50*(exp_xsz/mexp_xsz))
	if newch_xsz <= mch_xsz then
		SystemNotice ( character , "恭喜你通過了考試學分增加")
		SetItemAttr ( role_xsz , ITEMATTR_URE , newch_xsz )	------設置學生證新的學分
		AddExp ( character , npc , newexp_xsz , newexp_xsz )
		SetItemAttr ( role_xsz, ITEMATTR_ENERGY, 0 )
		RefreshCha( character )
	else
		SystemNotice( character , "恭喜你通過考試，學分已達上限，不能增加")
		AddExp ( character , npc, newexp_xsz , newexp_xsz )
		SetItemAttr ( role_xsz , ITEMATTR_URE , mch_xsz )	------設置學生證新的學分
		SetItemAttr ( role_xsz, ITEMATTR_ENERGY, 0 )
		RefreshCha( character )
	end
	local del_item =TakeItem( character, 0,3279, 1 )
	if del_item == 0 then
		SystemNotice( character, "刪除測驗成績單失敗")
	end
	return LUA_TRUE
end

----------升級考試判斷成績單時間
function checksjtime( character ,npc )
	local role_xsz = GetChaItem2 ( character , 2 , 3289 )
	local lv_ch = GetItemAttr ( role_xsz , ITEMATTR_FORGE )		----取學生證當前學歷
	local role_cjd = GetChaItem2 ( character , 2 , 3281 )
	local time_cjd = GetItemAttr ( role_cjd , ITEMATTR_VAL_AGI )
	local cha_name = GetChaDefaultName ( character )
	if time_cjd > 0 and time_cjd <= 1800 then
		lv_ch = lv_ch + 1
		SetItemAttr( role_xsz , ITEMATTR_FORGE , lv_ch )	----設置學生證新的學歷
		SetItemAttr( role_xsz , ITEMATTR_URE , 0 )		----學分清零
		local new_mch = Reading_Credit[lv_ch]
		local new_mexp = Reading_EXP[lv_ch]
		SetItemAttr( role_xsz , ITEMATTR_MAXURE , new_mch )	----設置學生證新的最大學分
		SetItemAttr( role_xsz , ITEMATTR_MAXENERGY , new_mexp )	----設置學生證新的最大經驗
		RefreshCha( character )
	elseif time_cjd > 1800 then
	end
	local del_item =TakeItem( character, 0,3281, 1 )
	if del_item == 0 then
		SystemNotice( character, "刪除升級考試成績單失敗")
	end
	return LUA_TRUE
end
------------------addexp經驗瓶處理包殼
--function AddExp2 ( role , npc, p1, p2 )
--	local lv = GetChaAttr(role, ATTR_LV)
--	if lv == 100 then
--		local i = CheckBagItem ( role, 171 )
--		if i == 1 then
--			local role_jyp = GetChaItem2 ( role, 2, 171)
--			local exp_store = GetItemAttr ( role_jyp, ITEMATTR_VAL_PARAM1 )
--			local exp_add = (p1+p2)/2
--			exp_store = exp_store+exp_add
--			SetItemAttr ( role_jyp, ITEMATTR_VAL_PARAM1, exp_store)
--			SystemNotice( role, "你的經驗瓶中的積分增加了"..exp_add)
--		else
--			AddExp ( role , npc , p1 , p2 )
--		end
--	else
--		AddExp ( role , npc , p1 , p2 )
--	end
--	return LUA_TRUE
--end

function HasXmasYB ( role, value )				-------------判斷是否有足夠硬幣
	local num_wyyb = CheckBagItem( role, 2962 )
	local num_bwyb = CheckBagItem( role, 2963 )
	local money = num_wyyb + num_bwyb * 100
	if money >= value then
		return LUA_TRUE
	end
end

function TakeXmasYB ( role, value )				-------------提取硬幣
	local num_bwyb = math.floor( value/100 )
	local num_wyyb = math.mod ( value , 100 )
	local bag_bwyb = CheckBagItem( role, 2963 )
	local bag_wyyb = CheckBagItem( role, 2962 )
	if bag_wyyb < num_wyyb then
		num_bwyb = num_bwyb +1
		zhaoling = num_bwyb * 100 - value
		num_wyyb = 0
		GiveItem ( role , 0, 2962, zhaoling, 4)
	elseif bag_bwyb < num_bwyb then
		num_bwyb = bag_bwyb
		num_wyyb = value - ( num_bwyb * 100 )
	end
	if num_wyyb ~= 0 then
		local ret1 = TakeItem ( role, 0, 2962, num_wyyb)
	end
	if num_bwyb ~= 0 then
		local ret2 = TakeItem ( role, 0, 2963, num_bwyb)
	end
	return LUA_TRUE
end

function CpHuojiNum ( role )					-----------------計算被殺火雞數量
	XmasMonsterNum1 = XmasMonsterNum1 + 100
	XmasMonsterNum4 = XmasMonsterNum4 + 100
	XmasMonsterNum5 = XmasMonsterNum5 + 100
	return LUA_TRUE
end

function CpMiluNum ( role )					------------------計算被殺麋鹿數量			
	XmasMonsterNum2 = XmasMonsterNum2 + 100
	XmasMonsterNum4 = XmasMonsterNum4 + 100
	XmasMonsterNum5 = XmasMonsterNum5 + 100
	return LUA_TRUE
end

function CpXuerenNum ( role )					------------------計算被殺雪人數量
	XmasMonsterNum3 = XmasMonsterNum3 + 100
	XmasMonsterNum5 = XmasMonsterNum5 + 100
	return LUA_TRUE
end

function XmasNotice ( role, value )				------------------聖誕村自動提示
	local cha_name = GetChaDefaultName ( role ) 
	local message={}
	message[1]="Santa Claus: Welcome to the Christmas Village," .. cha_name .. ", if you are a first time here, you can find next to the Christmas Village ?mushrooms first to find out the village!"
	message[2]="Indigenous revelers:" .. cha_name .. "~ to dance with us, dancing around the campfire together dance, prayer will be better next year!"
	message[3]="Cohen said quietly to you:" .. cha_name .. ", Come on, I referred to you to complete the task to so that more of the BOSS comes to Christmas in the Arena!"
	message[4]="small Tom: see ah ah ~ ~ look at that person I know that he called" .. cha_name .. ", I grow up I as he must be so strong!"
	SystemNotice( role , message[value] )
	return LUA_TRUE
end
