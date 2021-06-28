------------------------------------------------------------
-- NPCScript02.lua Created by sky74
--
-- L.38 -> Line 38
------------------------------------------------------------
-- L.20   [ 杀怪任务：白银武将的请托 ]
-- L.289  [ RandMapList ] L.245 [ 白银 ] L.362 [ 沙岚 ] L.422 [ 雷霆 ] L.482 [ 冰狼 ] L.542 [ 岛屿 ] L.612 [ 通用 ]
-- L.682  [ 小山车的妻子 ]
--
--
--
--
--
--
--
--
--
--
------------------------------------------------------------
-- 杀怪任务：白银武将的请托
------------------------------------------------------------

print( "Loading NPCScript02.lua" )


------------------------------------------------------------
-- 通用传送脚本
------------------------------------------------------------

function GoToWhere()

	--取消传送返回选择传送地点的对话内容和页面编号
	local ReSelectTalk = "� 镥疱潴爨� "
	local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "青狍潼, � 铖蜞眢顸 蝮� "
	local CancelSelectPage = 2

	--地图名称信息
	local CurMapName1 = "garner"
	local CurMapName3 = "eastgoaf"	
	local CurMapName4 = "lonetower"

	--白银之城坐标
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--沙岚之城坐标
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--雷霆堡坐标
	local GoTo03X = 735
	local GoTo03Y = 1590
	local GoTo03M = CurMapName1

	--冰狼堡坐标
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	--卡尔加德坐标
	local GoTo05X = 633
	local GoTo05Y = 2100
	local GoTo05M = CurMapName1

	--赖安森林坐标
	local GoTo06X = 1007
	local GoTo06Y = 2966
	local GoTo06M = CurMapName1

	--岛屿3号坐标
	local GoTo07X = 1507
	local GoTo07Y = 2039
	local GoTo07M = CurMapName1

	--岛屿8号坐标
	local GoTo08X = 1711
	local GoTo08Y = 3448
	local GoTo08M = CurMapName1

	--岛屿2号坐标
	local GoTo09X = 2501
	local GoTo09Y = 2997
	local GoTo09M = CurMapName1

	--岛屿5号坐标
	local GoTo10X = 3197
	local GoTo10Y = 1254
	local GoTo10M = CurMapName1

	Talk( 1, "逆钼栲�: 橡桠弪, � 戾耱睇� 镱痱嚯桕. 填泱 蝈徨 镱祛鼽? " )
	Text( 1, "悟镳噔栩� � 灭铎钽疣� ", JumpPage, 6 )
	Text( 1, "青镨襦螯 蝾麝� 耦躔囗屙�� ", JumpPage, 24 )
	--Text( 1, "Go to Forsanken City!", JumpPage, 8 )
	--Text( 1, "I want to roam the islands!", JumpPage, 3 )

	Talk( 2, "袜殇� 戾��, 羼腓 镱蝠遽箦蝰� 镱祛 ", CloseTalk )

--	Talk( 3, "Want to 义脲镱痱 s to which island?" )
--	Text( 3, "Island No. 1", JumpPage, 9 )
--	Text( 3, "Island No. 2", JumpPage, 10 )
--	Text( 3, "Island No. 3", JumpPage, 11 )
--	Text( 3, "Island No. 4", JumpPage, 12 )
--	Text( 3, "Island No. 5", JumpPage, 13 )
--	Text( 3, "Anyone please", JumpPage, 14 )

	
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 4, "悟镳噔栩� � 鲤沐眚? 湾� 镳钺脲�! 羊铊祛耱� 500 珙腩螓�. 碾� 桡痤觐� 龛驽 10 箴钼�� 徨耧豚蝽� " )
	Text( 4, "襄疱轵� ",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 5, "悟镳噔栩� � 剜轵囗? 湾� 镳钺脲�! 羊铊祛耱� 500 珙腩螓�. 碾� 桡痤觐� 龛驽 10 箴钼�� 徨耧豚蝽� " )
	Text( 5, "襄疱轵� ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 5, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 6, "悟镳噔栩� � 灭铎钽疣�? 湾� 镳钺脲�! 羊铊祛耱� 500 珙腩螓�. 碾� 桡痤觐� 龛驽 10 箴钼�� 徨耧豚蝽� " )
	Text( 6, "襄疱轵� ",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 6, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 7, "悟镳噔栩� � 隋潲睃? 湾� 镳钺脲�! 羊铊祛耱� 500 珙腩螓�. 碾� 桡痤觐� 龛驽 10 箴钼�� 徨耧豚蝽� " )
	Text( 7, "襄疱轵� ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 7, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 8, "悟镳噔栩� � 锗脘彘耜栝 铒腩�? 湾� 镳钺脲�! 羊铊祛耱� 500 珙腩螓�. 碾� 桡痤觐� 龛驽 10 箴钼�� 徨耧豚蝽� " )
	Text( 8, "襄疱轵� ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 8, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 9, "悟镳噔栩� � 理滂轳觇� 脲�? 湾� 镳钺脲�! 羊铊祛耱� 500 珙腩螓�. 碾� 桡痤觐� 龛驽 10 箴钼�� 徨耧豚蝽� " )
	Text( 9, "襄疱轵� ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 9, CancelSelectTalk, JumpPage , CancelSelectPage )

--	Talk( 10, "I heard that those islands are beautiful, enjoy!" )
--	Text( 10, "义脲镱痱 ing…Free of charge temporary", GoTo, GoTo07X, GoTo07Y, GoTo07M )
--	Text( 10, CancelSelectTalk, JumpPage , CancelSelectPage )
--
--	Talk( 11, "I heard that those islands are beautiful, enjoy!" )
--	Text( 11, "义脲镱痱 ing…Free of charge temporary", GoTo, GoTo08X, GoTo08Y, GoTo08M )
--	Text( 11, CancelSelectTalk, JumpPage , CancelSelectPage )
--
--	Talk( 12, "I heard that those islands are beautiful, enjoy!" )
--	Text( 12, "义脲镱痱 ing…Free of charge temporary", GoTo, GoTo09X, GoTo09Y, GoTo09M )
--	Text( 12, CancelSelectTalk, JumpPage , CancelSelectPage )
----
--	Talk( 13, "I heard that those islands are beautiful, enjoy!" )
--	Text( 13, "义脲镱痱 ing…Free of charge temporary", GoTo, GoTo10X, GoTo10Y, GoTo10M )
--	Text( 13, CancelSelectTalk, JumpPage , CancelSelectPage )
--
--	InitFuncList()
--
--	AddFuncList( GoTo, GoTo06X, GoTo06Y, GoTo06M )
--	AddFuncList( GoTo, GoTo07X, GoTo07Y, GoTo07M )
--	AddFuncList( GoTo, GoTo08X, GoTo08Y, GoTo08M )
--	AddFuncList( GoTo, GoTo09X, GoTo09Y, GoTo09M )
--	AddFuncList( GoTo, GoTo10X, GoTo10Y, GoTo10M )
--
--	Talk( 14, "义脲镱痱 s to any island? I will send you to anyplace then." )
--	Text( 14, "义脲镱痱 ing…Free of charge temporary", RandFunction, GetFuncList(), GetNumFunc() )
--	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )
--

	Talk( 18, "听�: 橡桠弪! � 戾耱睇� 镱痱嚯栝. 填泱 麇� 蝾 镱祛鼽? " )
	Text( 18, "悟镳噔栩� � 隋潲睃 ", JumpPage, 7 )
	Text( 18, "悟镳噔栩� � 鲤沐眚 ", JumpPage, 4 )
	Text( 18, "悟镳噔栩� � 灭铎钽疣� ", JumpPage, 6 )
	Text( 18, "青镨襦螯 蝾麝� 忸玮疣龛� ", JumpPage, 25 )
	--Text( 18, "Go to Forsanken City!", JumpPage, 8 )
	--Text( 18, "I want to roam the islands!", JumpPage, 3 )

	Talk( 19, "燕疣: 橡桠弪! � 戾耱睇� 镱痱嚯栝. 填泱 麇� 蝾 镱祛鼽? " )
	Text( 19, "悟镳噔栩� � 隋潲睃 ", JumpPage, 7 )
	Text( 19, "悟镳噔栩� � 鲤沐眚 ", JumpPage, 4 )
	Text( 19, "悟镳噔栩� � 剜轵囗 ", JumpPage, 5 )
	Text( 19, "青镨襦螯 蝾麝� 忸玮疣龛� ", JumpPage, 26 )

	Talk( 20, "正脲�: 橡桠弪! � 戾耱睇� 镱痱嚯栝. 填泱 麇� 蝾 镱祛鼽? " )
	Text( 20, "悟镳噔栩� � 鲤沐眚 ", JumpPage, 4 )
	Text( 20, "悟镳噔栩� � 剜轵囗 ", JumpPage, 5 )
	Text( 20, "悟镳噔栩�� � 灭铎钽疣� ", JumpPage, 6 )
	Text( 20, "青镨襦螯 蝾麝� 忸玮疣龛� ", JumpPage, 27 )


	--Talk( 21, "Mabel: Hi, I am the 义脲镱痱 er. Do you need any help?" )
	--Text( 21, "襄疱轵� � 鲤沐眚 ", JumpPage, 4 )
	--Text( 21, "Go to Shaitan City!", JumpPage, 5 )
	--Text( 21, "Go to Icicle City!", JumpPage, 7 )
	--Text( 20, "Go to Thundoria Castle!", JumpPage, 6 )
	--Text( 21, "青镨襦螯 蝾麝� 忸玮疣龛� ", JumpPage, 31 )

	--Talk( 22, "Wendy: Hi! I am the 义脲镱痱 er of Andes Forest Haven. Where do you wish to go?" )
	--Text( 22, "襄疱轵� � 鲤沐眚 ", JumpPage, 4 )
	--Text( 22, "Go to Shaitan City!", JumpPage, 5 )
	--Text( 22, "Go to Icicle City!", JumpPage, 7 )
	--Text( 22, "青镨襦螯 蝾麝� 忸玮疣龛� ", JumpPage, 32 )

	Talk( 23, "橡铖蜩, 眍 � 蝈�� 礤漕耱囹铟眍 溴礤� 潆� 镥疱戾龛� " )

	Talk( 24, "逆钼栲�: 青镨襦螯�� � 铋 蝾麝�? " )
	Text( 24, "泥, 镱驵塍轳蜞 玎镨 ", SetSpawnPos, "Argent City" )
	Text( 24, "湾�, 耧囫栳� ",CloseTalk )

	Talk( 25, "听�: 青镨襦螯�� � 铋 蝾麝�? " )
	Text( 25, "泥, 镱驵塍轳蜞 玎镨 ", SetSpawnPos, "Shaitan City" )
	Text( 25, "湾�, 耧囫栳� ",CloseTalk )

	Talk( 26, "燕疣: 青镨襦螯�� � 铋 蝾麝�? " )
	Text( 26, "泥, 镱驵塍轳蜞 玎镨 ", SetSpawnPos, "Thundoria Castle" )
	Text( 26, "湾�, 耧囫栳� ",CloseTalk )

	Talk( 27, "正脲�: 青镨襦螯�� � 铋 蝾麝�? " )
	Text( 27, "泥, 镱驵塍轳蜞 玎镨 ", SetSpawnPos, "Icicle Castle" )
	Text( 27, "湾�, 耧囫栳� ",CloseTalk )

	Talk( 28, "冷扈龛耱疣蝾� 鲤屙�: 橡桠弪, � 冷扈龛耱疣蝾� 鲤屙�. 鼠溧 驽豚弪� 镥疱轵�? " )
	Text( 28, "洛痦篁� � 泐痤� ", JumpPage, 29 )
	Text( 28, "湾�, 耧囫栳� ",CloseTalk )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerAction( 1, SetPkState, 0 )
	TriggerAction( 1, MoveCity, "" )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 29, "棋豚弪� 忮痦篁� � 泐痤�? � 蜞觐� 耠篦噱 忄� 镳桎弪�� 铒豚蜩螯 疣� � 2000 珙腩螓� 玎 蝠篑铖螯! 蔓 礤 镥疱潴爨腓? " )
	Text( 29, "骂� 珙腩蝾, � 躅黧 箝蜩 ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 29, "湾�, 耧囫栳� " )

	Talk( 30, "疹蜩蝈 筢彐囹�, 眍 礤� 珙腩蜞? 凄朦, � 蜞觐� 耠篦噱 忄� 镳桎弪�� 漯囹� 漕 觐眦� " )

	Talk( 31, "听獒咫: 青镨襦螯�� � 锗脘彘耜铎 铒腩蝈? " )
	Text( 31, "泥, 镱驵塍轳蜞 玎镨 ", SetSpawnPos, "Chaldea Haven" )
	Text( 31, "湾�, 耧囫栳� ",CloseTalk )

	Talk( 32, "慢礓�: 青镨襦螯�� � 理滂轳觐� 脲耋? " )
	Text( 32, "泥, 镱驵塍轳蜞 玎镨 ", SetSpawnPos, "Andes Forest Haven" )
	Text( 32, "湾�, 耧囫栳� ",CloseTalk )



	InitTrigger()

	TriggerCondition( 1, IsMapNpc, "garner", 0 )
	TriggerAction( 1, JumpPage, 1 )

	TriggerCondition( 2, IsMapNpc, "magicsea", 0 )
	TriggerAction( 2, JumpPage, 18 )

	TriggerCondition( 3, IsMapNpc, "garner", 43 )
	TriggerAction( 3, JumpPage, 19 )

	TriggerCondition( 4, IsMapNpc, "darkblue", 12 )
	TriggerAction( 4, JumpPage, 20 )

	TriggerCondition( 5, IsMapNpc, "darkblue", 15 )
	TriggerAction( 5, JumpPage, 28 )

	--TriggerCondition( 6, IsMapNpc, "garner", 55 )
	--TriggerAction( 6, JumpPage, 21 )

	--TriggerCondition( 7, IsMapNpc, "garner", 56 )
	--TriggerAction( 7, JumpPage, 22 )

	--TriggerCondition( 9, IsMapNpc, "Ascaron", 8 )
	--TriggerAction( 9, JumpPage, 22 )

	--TriggerCondition( 10, IsMapNpc, "Ascaron", 9 )
	--TriggerAction( 10, JumpPage, 22 )

	--TriggerCondition( 11, IsMapNpc, "Ascaron", 27 )
	--TriggerAction( 11, JumpPage, 21 )

	Start( GetMultiTrigger(), 5 )

end


------------------------------------------------------------
-- 补给站传送脚本
------------------------------------------------------------

function transmittal ()

	--取消传送返回选择传送地点的对话内容和页面编号
	--local ReSelectTalk = "I need to reconsider"
	--local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "如忤龛蝈, 眍 � 铗赅骟顸 "
	local CancelSelectPage = 27

	--地图名称信息
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"

	--废矿补给站
	local GoTo01X = 1903
	local GoTo01Y = 2807
	local GoTo01M = CurMapName1

	--古里咯利补给站
	local GoTo02X = 1517
	local GoTo02Y = 3091
	local GoTo02M = CurMapName1

	--瓦尔诺补给站
	local GoTo03X = 1120
	local GoTo03Y = 2773
	local GoTo03M = CurMapName1

	--温那补给站
	local GoTo04X = 535
	local GoTo04Y = 2433
	local GoTo04M = CurMapName1

	--卡尔加德坐标
	local GoTo05X = 633
	local GoTo05Y = 2100
	local GoTo05M = CurMapName1

	--赖安森林坐标
	local GoTo06X = 1007
	local GoTo06Y = 2966
	local GoTo06M = CurMapName1

	--沙泉补给站
	local GoTo07X = 787
	local GoTo07Y = 3121
	local GoTo07M = CurMapName2

	--巴布补给站
	local GoTo08X = 1214
	local GoTo08Y = 3203
	local GoTo08M = CurMapName2

	--冰都补给站
	local GoTo09X = 807
	local GoTo09Y = 360
	local GoTo09M = CurMapName5

	--阿兰比斯补给站
	local GoTo10X = 1050
	local GoTo10Y = 656
	local GoTo10M = CurMapName5

	--骷髅营地补给站
	local GoTo11X = 2146
	local GoTo11Y = 542
	local GoTo11M = CurMapName5

	--冰极补给站
	local GoTo12X = 2681
	local GoTo12Y = 647
	local GoTo12M = CurMapName5

	--雷霆堡坐标
	local GoTo13X = 735
	local GoTo13Y = 1590
	local GoTo13M = CurMapName1

	Talk( 1, "橡桠弪 螓 躅麇 牦溧 蝾 铗镳噔栩�? 腕 耧屮� 猁耱疱� 镱赅 戾耱� 羼螯 =)" )
	Text( 1, "� 耜嚯桉螓� 箐咫 ", JumpPage, 14 )
	Text( 1, "青镨襦螯 蝾麝� 疱耧� ", JumpPage, 25 )		--废矿补给站
	
	Talk( 2, "橡桠弪 螓 躅麇 牦溧 蝾 铗镳噔栩�? 腕 耧屮� 猁耱疱� 镱赅 戾耱� 羼螯 =)" )
	Text( 2, "吾疣蝽� � 躜� ", JumpPage, 13 )
	Text( 2, "� 理滂轳觇� 脲� ", JumpPage, 18 )
	Text( 2, "青镨襦螯 蝾麝� 疱耧� ", JumpPage, 25 )		--古里咯利补给站

	Talk( 3, "橡桠弪 螓 躅麇 牦溧 蝾 铗镳噔栩�? 腕 耧屮� 猁耱疱� 镱赅 戾耱� 羼螯 =)" )
	Text( 3, "� 锣踵腚� ", JumpPage, 15 )
	Text( 3, "吾疣蝽� � 殃嚯桉螓� 箐咫 ", JumpPage, 14 )
	Text( 3, "青镨襦螯 蝾麝� 疱耧� ", JumpPage, 25 )		--赖安森林补给站

	Talk( 4, "橡桠弪 螓 躅麇 牦溧 蝾 铗镳噔栩�? 腕 耧屮� 猁耱疱� 镱赅 戾耱� 羼螯 =)" )
	Text( 4, "Go to Solace Haven!", JumpPage, 16 )
	Text( 4, "吾疣蝽� � 理滂轳觇� 脲� ", JumpPage, 18 )
	Text( 4, "青镨襦螯 蝾麝� 疱耧� ", JumpPage, 25 )		--瓦尔诺补给站

	Talk( 5, "橡桠弪 螓 躅麇 牦溧 蝾 铗镳噔栩�? 腕 耧屮� 猁耱疱� 镱赅 戾耱� 羼螯 =)" )
	Text( 5, "� 物腩� ", JumpPage, 17 )
	Text( 5, "吾疣蝽� � 锣膈嚯塍 ", JumpPage, 15 )
	Text( 5, "青镨襦螯 蝾麝� 疱耧� ", JumpPage, 25 )		--温拿补给站

	Talk( 6, "橡桠弪 螓 躅麇 牦溧 蝾 铗镳噔栩�? 腕 耧屮� 猁耱疱� 镱赅 戾耱� 羼螯 =)" )
	Text( 6, "Go to Solace Haven!", JumpPage, 16 )
	Text( 6, "� 灭铎钽疣� ", JumpPage, 29 )
	Text( 6, "青镨襦螯 蝾麝� 疱耧� ", JumpPage, 25 )		--卡尔加德补给站

	Talk( 7, "橡桠弪 螓 躅麇 牦溧 蝾 铗镳噔栩�? 腕 耧屮� 猁耱疱� 镱赅 戾耱� 羼螯 =)" )
	Text( 7, "Go to Babul Haven!", JumpPage, 20 )
	Text( 7, "Record Spawn point", JumpPage, 25 )		--沙泉补给站

	Talk( 8, "橡桠弪 螓 躅麇 牦溧 蝾 铗镳噔栩�? 腕 耧屮� 猁耱疱� 镱赅 戾耱� 羼螯 =)" )
	Text( 8, "Go to Oasis Haven!", JumpPage, 19 )
	Text( 8, "Record Spawn point", JumpPage, 25 )		--巴布补给站

	Talk( 9, "Lily: Hi! I am Teleporter Lily. How can I help you?" )
	Text( 9, "Go to Atlantis Haven!", JumpPage, 22 )
	Text( 9, "Record Spawn point", JumpPage, 25 )		--冰都补给站

	Talk( 10, "Sofia: Hi, I am the teleporter. Do you need any help?" )
	Text( 10, "Go to Skeleton Haven!", JumpPage, 23 )
	Text( 10, "Go to Icicle Haven!", JumpPage, 21 )
	Text( 10, "Record Spawn point", JumpPage, 25 )		--阿兰比斯补给站

	Talk( 11, "Mina: Hi, I am the teleporter. Do you need any help?" )
	Text( 11, "Go to Icespire Haven!", JumpPage, 24 )
	Text( 11, "Go to Atlantis Haven!", JumpPage, 22 )
	Text( 11, "Record Spawn point", JumpPage, 25 )		--骷髅营地补给站

	Talk( 12, "Artemis: Hi! I am the Teleporter! How may I help you?" )
	Text( 12, "Go to Skeleton Haven!", JumpPage, 23 )
	Text( 12, "Record Spawn point", JumpPage, 25 )		--冰极补给站
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 13, "昨� 猁 蝈脲镱痱桊钼囹�, 忄� 磬漕 200G " )
	Text( 13, "义脲镱痱 ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 13, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "昨� 猁 蝈脲镱痱桊钼囹�, 忄� 磬漕 200G" )
	Text( 14, "义脲镱痱 ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "昨� 猁 蝈脲镱痱桊钼囹�, 忄� 磬漕 200G " )
	Text( 15, "义脲镱痱 ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "昨� 猁 蝈脲镱痱桊钼囹�, 忄� 磬漕 200G " )
	Text( 16, "义脲镱痱 ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "昨� 猁 蝈脲镱痱桊钼囹�, 忄� 磬漕 200G " )
	Text( 17, "义脲镱痱 ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "昨� 猁 蝈脲镱痱桊钼囹�, 忄� 磬漕 200G " )
	Text( 18, "义脲镱痱 ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "昨� 猁 蝈脲镱痱桊钼囹�, 忄� 磬漕 200G " )
	Text( 19, "义脲镱痱 ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 20, "Teleports to Babul Haven? No problem! Please pay 200G!" )
	Text( 20, "Teleport",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo09X, GoTo09Y, GoTo09M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 21, "Teleports to Icicle Haven? No problem! Please pay 200G. Thanks!" )
	Text( 21, "Teleport",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 22, "Teleport to Atlantis Haven? No problem! Please pay 200G!" )
	Text( 22, "Teleport",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 22, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 23, "Teleports to Skeleton Haven? No problem! Please pay 200G. Thanks!" )
	Text( 23, "Teleport",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 23, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 24, "Teleports to Icespire Haven? No problem! Please pay 200G. Thanks!" )
	Text( 24, "Teleport",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 24, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 29, "Teleports to Thundoria Castle? No problem! Please pay 200G. Thanks!" )
	Text( 29, "Teleport",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 29, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 96 )
	TriggerAction( 1, SetSpawnPos, "Abandon Mine Haven")
	TriggerCondition( 2, IsMapNpc, "garner", 94 )
	TriggerAction( 2, SetSpawnPos, "Rockery Haven")
	TriggerCondition( 3, IsMapNpc, "garner", 95 )
	TriggerAction( 3, SetSpawnPos, "Valhalla Haven")
	TriggerCondition( 4, IsMapNpc, "garner", 97 )
	TriggerAction( 4, SetSpawnPos, "Solace Haven")
	TriggerCondition( 5, IsMapNpc, "garner", 55 )
	TriggerAction( 5, SetSpawnPos, "Chaldea Haven")
	TriggerCondition( 6, IsMapNpc, "garner", 56 )
	TriggerAction( 6, SetSpawnPos, "Andes Forest Haven")
	TriggerCondition( 7, IsMapNpc, "magicsea", 50 )
	TriggerAction( 7, SetSpawnPos, "Oasis Haven")
	TriggerCondition( 8, IsMapNpc, "magicsea", 46 )
	TriggerAction( 8, SetSpawnPos, "Babul Haven")
	TriggerCondition( 9, IsMapNpc, "darkblue", 56 )
	TriggerAction( 9, SetSpawnPos, "Icicle Haven")
	TriggerCondition( 10, IsMapNpc, "darkblue", 42 )
	TriggerAction( 10, SetSpawnPos, "Atlantis Haven")
	TriggerCondition( 11, IsMapNpc, "darkblue", 46 )
	TriggerAction( 11, SetSpawnPos, "Skeleton Haven")
	TriggerCondition( 12, IsMapNpc, "darkblue", 51 )
	TriggerAction( 12, SetSpawnPos, "Icespire Haven")
	TriggerFailure( 12, JumpPage, 28 )
	Talk( 25, "Do you wish to record here?" )
	Text( 25, "Yes. Please record.", MultiTrigger, GetMultiTrigger(), 12 )
	Text( 25, "No, thank you",CloseTalk )

	Talk( 26, "Sorry! You do not have enough gold to teleport." )

	Talk( 27, "Remember to look for me if you need teleportation services", CloseTalk )

	Talk( 28, "Error, unable to record, Call Robin", CloseTalk )
	
	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 96 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, IsMapNpc, "garner", 94 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, IsMapNpc, "garner", 95 )
	TriggerAction( 3, JumpPage, 4 )
	TriggerCondition( 4, IsMapNpc, "garner", 97 )
	TriggerAction( 4, JumpPage, 5 )
	TriggerCondition( 5, IsMapNpc, "garner", 55 )
	TriggerAction( 5, JumpPage, 6 )
	TriggerCondition( 6, IsMapNpc, "garner", 56 )
	TriggerAction( 6, JumpPage, 3 )
	TriggerCondition( 7, IsMapNpc, "magicsea", 50 )
	TriggerAction( 7, JumpPage, 7 )
	TriggerCondition( 8, IsMapNpc, "magicsea", 46 )
	TriggerAction( 8, JumpPage, 8 )
	TriggerCondition( 9, IsMapNpc, "darkblue", 56 )
	TriggerAction( 9, JumpPage, 9 )
	TriggerCondition( 10, IsMapNpc, "darkblue", 42 )
	TriggerAction( 10, JumpPage, 10 )
	TriggerCondition( 11, IsMapNpc, "darkblue", 46 )
	TriggerAction( 11, JumpPage, 11 )
	TriggerCondition( 12, IsMapNpc, "darkblue", 51 )
	TriggerAction( 12, JumpPage, 12 )
	Start( GetMultiTrigger(), 12 )

end

------------------------------------------------------------
-- 补给站传送脚本
------------------------------------------------------------

function JoJo_99 () -- Pirate Chest

	Talk( 1, "Hello! Iam Story Question" )
	Text( 1, "\202\243\239\232\242\252", BuyPage)

	InitTrade()
	Weapon(	854  )
	Weapon(	127  )
	Weapon(	776  )
	Weapon(	784  )
	Weapon(	773  )
	Weapon(	802  )
	Weapon(	2820  )
	Weapon(	2817  )
	Weapon(	2339  )
	Weapon(	2821  )
	Weapon(	2822  )
	Weapon(	2332  )
	Weapon(	2338  )
	Weapon(	2337  )
	Weapon(	2823  )
	Weapon(	2824  )
	Weapon(	2825  )
	Weapon(	864  )
	Weapon(	865  )
	Weapon(	866  )
	Weapon(	885  )
	Weapon(	5845  )
	Weapon(	5846  )
	Weapon(	5847  )
	Weapon(	5848  )
	Weapon(	5849  )
	Weapon(	1145  )
	Weapon(	2729  )
	Weapon(	2753  )
	Weapon(	2777  )
	Weapon(	2801  )
	Weapon(	2794  )
	Weapon(	2367  )
	Weapon(	0807  )
	Weapon(	0808  )
	Weapon(	0809  )
	Weapon(	0810  )
	Weapon(	0811  )
	Weapon(	0812  )
	Weapon(	0813  )
	Weapon(	0814  )
	Weapon(	0815  )
	Weapon(	3404  ) 
	Weapon(	3416  )
	Weapon(	3417  )
	Weapon(	3418  )
	Weapon(	3419  )
	Weapon(	3420  )
	Weapon(	2941  )
	Defence(	585	) -- Wings of Light
	Defence(	4976	) -- Nature's Whisper
	Defence(	4938	) -- Hammer of Thunder
	Defence(	4957	) -- Eye of Lighting
	Defence(	4974	) -- Morning Bell
	Defence(	860	) -- Ray's Fury
	Defence(	861	) -- Kiss of Nic
	Defence(	862	) -- Consecration of Priestess
	Defence(	863	) -- Peter's Call
	Defence(	1012	) -- Daniel's Regret
	Defence(	5773	) -- Nimble Venturer
	Defence(	5774	) -- Soul Generator
	Defence(	2956	) -- Daniel's Regret
	Defence(	2326	) -- Nimble Venturer
	Defence(	2844	) -- Soul Generator

	Defence(	5775	) -- Daniel's Regret
	Defence(	5772	) -- Nimble Venturer
	Defence(	5771	) -- Daniel's Regret
	Defence(	5770	) -- Nimble Venturer

	Defence(	5751	) -- Daniel's Regret
	Defence(	5772	) -- Nimble Venturer
	Defence(	5771	) -- Daniel's Regret
	Defence(	5770	) -- Nimble Venturer

	Other(	584	) -- Skeletar Chest of Swordsman
	Other(	3880	) -- Skeletar Chest of Hunter
	Other(	3882	) -- Skeletar Chest of Herbalist
	Other(	1134	) -- Skeletar Chest of Explorer
	Other(	2898	) -- Incantation Chest of Crusader
	Other(	2953	) -- Incantation Chest of Champion
	Other(	3338	) -- Incantation Chest of Sharpshooter
	Other(	2988	) -- Incantation Chest of Cleric
	Other(	1083	) -- Incantation Chest of Seal Master
	Other(	1854	) -- Incantation Chest of Voyager
	Other(	3116	) -- Evanescence Chest of Crusader
	Other(	1858	) -- Evanescence Chest of Champion
	Other(	3458	) -- Evanescence Chest of Sharpshooter
	Other(	1854	) -- Evanescence Chest of Cleric
	Other(	3414	) -- Evanescence Chest of Seal Master
	Other(	3415	) -- Evanescence Chest of Voyager
	Other(	3416	) -- Enigma Chest of Crusader
	Other(	3417	) -- Enigma Chest of Champion
	Other(	3418	) -- Enigma Chest of Sharpshooter
	Other(	3419	) -- Enigma Chest of Cleric
	Other(	3420	) -- Enigma Chest of Seal Master
	Other(	3421	) -- Enigma Chest of Voyager



end

------------------------------------------------------------
-- 岛屿传送脚本
------------------------------------------------------------

function island()

	--取消传送返回选择传送地点的对话内容和页面编号
	--local ReSelectTalk = "I need to reconsider� �"
	--local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "青狍潼, � 铖蜞眢顸 玟羼� "
	local CancelSelectPage = 27

	--地图名称信息
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"

	--海风岛
	local GoTo01X = 3260
	local GoTo01Y = 3280
	local GoTo01M = CurMapName1

	--碎冰岛
	local GoTo02X = 2273
	local GoTo02Y = 1122
	local GoTo02M = CurMapName1

	--雪贼岛
	local GoTo03X = 3590
	local GoTo03Y = 755
	local GoTo03M = CurMapName1

	--冰雪岛
	local GoTo04X = 2376
	local GoTo04Y = 725
	local GoTo04M = CurMapName2

	--鸣沙岛
	local GoTo05X = 1730
	local GoTo05Y = 3775
	local GoTo05M = CurMapName2

	--真爱岛
	local GoTo06X = 2529
	local GoTo06Y = 2406
	local GoTo06M = CurMapName2

	--好运岛
	local GoTo07X = 1631
	local GoTo07Y = 1974
	local GoTo07M = CurMapName5

	--白银城
	local GoTo08X = 2231
	local GoTo08Y = 2788
	local GoTo08M = CurMapName1

	Talk( 8, "逆箅�: 橡桠弪, � 铖蝠钼眍� 镱痱嚯桕. 羊铊祛耱� 镥疱戾龛� 2000 珙腩螓�. 鼠溧 躅蜩蝈 铗镳噔栩�? " )
	Text( 8, "襄疱轵� � 鲤沐眚 ", JumpPage, 21 )
	Text( 8, "襄疱轵� 磬 铖蝠钼 清翳疣 ", JumpPage, 14 )
	Text( 8, "襄疱轵� 磬 隋漤桕钼 铖蝠钼 ", JumpPage, 15 )
	Text( 8, "襄疱轵� 磬 铖蝠钼 悟忮疰屙睇� ", JumpPage, 16 )
	Text( 8, "襄疱轵� 磬 铖蝠钼 羊箧� ", JumpPage, 17 )
	Text( 8, "襄疱轵� 磬 铖蝠钼 枢磬疱尻 ", JumpPage, 18 )
	Text( 8, "襄疱轵� 磬 铖蝠钼 鼠镨漕磬 ", JumpPage, 19 )
	Text( 8, "青镨襦螯 蝾麝� 忸玮疣龛� ", JumpPage, 25 )          ---好运岛

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "襄疱轵� 磬 铖蝠钼 清翳疣? 湾� 镳钺脲�! 羊铊祛耱� 2000 珙腩螓� " )
	Text( 14, "襄疱轵� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "襄疱轵� 磬 隋漤桕钼 铖蝠钼? 湾� 镳钺脲�! 羊铊祛耱� 2000 珙腩螓� " )
	Text( 15, "襄疱轵� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "襄疱轵� 磬 铖蝠钼 悟忮疰屙睇�? 湾� 镳钺脲�! 羊铊祛耱� 2000 珙腩螓� " )
	Text( 16, "襄疱轵� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "襄疱轵� 磬 铖蝠钼 羊箧�? 湾� 镳钺脲�! 羊铊祛耱� 2000 珙腩螓� " )
	Text( 17, "襄疱轵� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "襄疱轵� 磬 铖蝠钼 枢磬疱尻? 湾� 镳钺脲�! 羊铊祛耱� 2000 珙腩螓� " )
	Text( 18, "襄疱轵� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "襄疱轵� 磬 铖蝠钼 鼠镨漕磬? 湾� 镳钺脲�! 羊铊祛耱� 2000 珙腩螓� " )
	Text( 19, "襄疱轵� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 20, "襄疱轵� 磬 铖蝠钼 愉圜�? 湾� 镳钺脲�! 羊铊祛耱� 2000 珙腩螓� " )
	Text( 20, "襄疱轵� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 21, "襄疱轵� � 鲤沐眚? 湾� 镳钺脲�! 羊铊祛耱� 2000 珙腩螓� " )
	Text( 21, "襄疱轵� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 123 )
	TriggerAction( 1, SetSpawnPos, "Argent City")
	TriggerCondition( 2, IsMapNpc, "garner", 124 )
	TriggerAction( 2, SetSpawnPos, "Zephyr Isle")
	TriggerCondition( 3, IsMapNpc, "garner", 125 )
	TriggerAction( 3, SetSpawnPos, "Glacier Isle")
	TriggerCondition( 4, IsMapNpc, "garner", 126 )
	TriggerAction( 4, SetSpawnPos, "Outlaw Isle")
	TriggerCondition( 5, IsMapNpc, "magicsea", 69 )
	TriggerAction( 5, SetSpawnPos, "Isle of Chill")
	TriggerCondition( 6, IsMapNpc, "magicsea", 70)
	TriggerAction( 6, SetSpawnPos, "Canary Isle")
	TriggerCondition( 7, IsMapNpc, "magicsea", 71 )
	TriggerAction( 7, SetSpawnPos, "Cupid Isle")
	TriggerCondition( 8, IsMapNpc, "darkblue", 65 )
	TriggerAction( 8, SetSpawnPos, "Isle of Fortune")
	TriggerFailure( 8, JumpPage, 28 )
	Talk( 25, "青镨襦螯 蝾麝� 忸玮疣龛�? " )
	Text( 25, "泥, 镱驵塍轳蜞 玎镨 ", MultiTrigger, GetMultiTrigger(), 8 )
	Text( 25, "湾�, 耧囫栳� ",CloseTalk )

	Talk( 26, "橡铖蜩蝈, � 忄� 礤漕耱囹铟眍 溴礤� 潆� 镥疱戾龛�! " )

	Talk( 27, "袜殇� 戾�� 羼腓 镱蝠遽箦蝰� 镱祛 ", CloseTalk )

	Talk( 28, "湾忸珈铈眍 玎镨襦螯 蝾麝� 耦躔囗屙��! ", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 123 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, IsMapNpc, "garner", 124 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, IsMapNpc, "garner", 125 )
	TriggerAction( 3, JumpPage, 3 )
	TriggerCondition( 4, IsMapNpc, "garner", 126 )
	TriggerAction( 4, JumpPage, 4 )
	TriggerCondition( 5, IsMapNpc, "magicsea", 69 )
	TriggerAction( 5, JumpPage, 5)
	TriggerCondition( 6, IsMapNpc, "magicsea", 70)
	TriggerAction( 6, JumpPage, 6 )
	TriggerCondition( 7, IsMapNpc, "magicsea", 71 )
	TriggerAction( 7, JumpPage, 7)
	TriggerCondition( 8, IsMapNpc, "darkblue", 65 )
	TriggerAction( 8, JumpPage, 8 )
	Start( GetMultiTrigger(), 8 )
end

function r_talk221()

	Talk( 1, "Lamon:� 镳钿帼 觐疣腚�,礤 躅蜩蝈 镱耢铗疱螯?" )
	Text( 1, "翌疸", BuyPage )
	Text( 1, "襄疱玎��潢� 觐疣腚钼", JumpPage, 2 )
	Text( 1, "丸麇泐...",CloseTalk )


	Talk( 2, "Lamon: Corals can be recharged. In the sea, there are many regions. Wind corals need to go to Wind region, Thunder corals to Thunder region and Fog coral to Fog regions...I remember that there is a Thunder region near Argent at (2500, 2850). You can try it there. Remember to equip back the coral after it is recharged.")


	InitTrade()
	Weapon(	0508	)
	Weapon(	0509	)
	Weapon(	0510	)
	Weapon(	0522	)
	Weapon(	0523	)
	Weapon(	0498	)
	Weapon(	0503	)
	Weapon(	0504	)
	Weapon(	0505	)
	Weapon(	0506	)
	Weapon(	0872	)--Fog Coral Lvl 1
	Weapon(	0873	)--Fog Coral Lvl 2
	Weapon(	0874	)--Fog Coral Lvl 3
	Weapon(	0875	)--Fog Coral Lvl 4
	Weapon( 0876	)--Fog Coral Lvl 5
	Weapon(	0635	)
	Weapon(	0636	)
	Weapon(	0637	)
	Weapon(	0638	)
	Weapon(	0639	)
end
function Spirit_04()
	Talk(1, "橡桠弪! 蔓徨痂 戾耱�, 牦溧 螓 躅麇 铗镳噔栩�:") 
	Text(1, "署嚅 棱痤瘥 1", GoTo, 175, 206, "mjing1") 
	Text(1, "署嚅 棱痤瘥 2", GoTo, 175, 206, "mjing2") 
	Text(1, "署嚅 螯禧", GoTo, 205, 264, "mjing3")
	Text(1, "署嚅 螯禧 2", GoTo, 205, 264, "mjing4")
	Text(1, "惕疣� 轵囗�(塍� 珙磬 腩� 脞腩�)!", GoTo, 185, 186, "shalan2")  
	Text(1, "娱蜩", CloseTalk)
end