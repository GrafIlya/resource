--scripted by skyfear919@hotmail.com

print( "Loading MissionScript09.lua" )
print( "------------------------------------" )


----------------------------铁人六项之一------------bragi（for 北美)----

	DefineMission( 6114, "铁人六项之一", 1444)

	MisBeginTalk( "<t>帮我一个忙吧,把这封信送给沙岚城商会会长·古利击(873,3545),赶快去吧!")
	MisBeginCondition( NoMission, 1444)
	MisBeginCondition( NoRecord, 1444)
	MisBeginAction( GiveItem, 3292, 1, 4)
	MisBeginAction( AddMission, 1444)
	MisCancelAction( ClearMission, 1444)
	MisBeginBagNeed(1)
	
	MisNeed( MIS_NEED_DESP, "把这封信送给沙岚城商会会长·古利击")
	
	MisHelpTalk( "<t>古利击就在沙岚城里(873,3545),快去吧.")
	MisResultCondition( AlwaysFailure )

----------------------------铁人六项之一
	DefineMission( 6115, "铁人六项之一", 1444, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>给我的信吗？多谢啦.")
	MisResultCondition( HasMission, 1444)
	MisResultCondition( HasItem, 3292, 1)
	MisResultCondition( NoRecord, 1444)
	MisResultAction( TakeItem, 3292, 1)
	MisResultAction( SetRecord, 1444)
	MisResultAction( AddExp_1)
	MisResultAction( ClearMission, 1444)

-----------------------------铁人六项之二

	DefineMission( 6116, "铁人六项之二", 1445)

	MisBeginTalk( "<t>白银城的医护小姐·岚岚好象急需复活叶,去药草商人·帝姆那里买一根送去吧.")
	MisBeginCondition( CheckTime )
	MisBeginCondition( HasRecord, 1444)
	MisBeginCondition( NoMission, 1445)
	MisBeginCondition( NoRecord, 1445)
	MisBeginAction( AddMission, 1445)
	MisBeginAction(AddTrigger, 14451, TE_GETITEM, 3143, 1)
	MisCancelAction( ClearMission, 1445)

	MisNeed( MIS_NEED_DESP, "去药草商人·帝姆那买一根狗尾巴草送去给医护小姐·岚岚")
	MisNeed( MIS_NEED_ITEM, 3143, 1, 10, 1)

	MisHelpTalk( "<t>复活叶的话帝姆那里就有卖.")
	MisResultCondition( AlwaysFailure )

----------------------------铁人六项之二
	DefineMission( 6117, "铁人六项之二", 1445, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>你的复活叶真是太及时了,我正需要这东西呢!")
	MisResultCondition( HasMission, 1445)
	MisResultCondition( NoRecord, 1445)
	MisResultCondition( HasItem, 3143, 1)
	MisResultAction( SetRecord, 1445)
	MisResultAction( AddExp_1 )
	MisResultAction( ClearMission, 1445)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3143)	
	TriggerAction( 1, AddNextFlag, 1445, 10, 1 )
	RegCurTrigger( 14451 )

---------------------------铁人六项之三A
	DefineMission( 6118, "铁人六项之三", 1446)
	
	MisBeginTalk( "<t>最近看草原鹿很不爽，去帮我教训下它们.")
	MisBeginCondition( HasRecord, 1445)
	MisBeginCondition( NoMission, 1446)
	MisBeginCondition( NoRecord, 1446)
	MisBeginCondition( NoRecord, 1447)
	MisBeginCondition( LvCheck, "<", 40)
	MisBeginAction( AddMission, 1446)
	MisBeginAction( AddTrigger, 14461, TE_KILL, 299, 20 )
	MisCancelAction( ClearMission, 1446)
	
	MisNeed( MIS_NEED_DESP, "杀死20只草原鹿(加纳1360，2683)")
	MisNeed( MIS_NEED_KILL, 299, 20, 10, 20)

	MisResultTalk( "<t>恩!你做的很好,这么快就完成了,我不会亏待你的.")
	MisHelpTalk( "<t>草原鹿就在加纳大陆(1360,2683)附近")
	MisResultCondition( HasMission, 1446)
	MisResultCondition( NoRecord, 1446)
	MisResultCondition( HasFlag, 1446, 29)
	MisResultAction( SetRecord, 1446)
	MisResultAction( SetRecord, 1447)
	MisResultAction( ClearMission, 1446)
	MisResultAction( AddExp, 13000, 13000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 299)	
	TriggerAction( 1, AddNextFlag, 1446, 10, 20 )
	RegCurTrigger( 14461 )

----------------------------铁人三项之三B
	DefineMission( 6119, "铁人六项之三", 1448)
	
	MisBeginTalk( "<t>最近看草原鹿很不爽，去帮我教训下它们.")
	MisBeginCondition( HasRecord, 1445)
	MisBeginCondition( NoMission, 1447)
	MisBeginCondition( NoRecord, 1447)
	MisBeginCondition( NoRecord, 1448)
	MisBeginCondition( LvCheck, ">", 39)
	MisBeginAction( AddMission, 1448)
	MisBeginAction( AddTrigger, 14481, TE_KILL, 37, 20 )
	MisCancelAction( ClearMission, 1448)
	
	MisNeed( MIS_NEED_DESP, "杀死20只南瓜骑士(加纳622，3364)")
	MisNeed( MIS_NEED_KILL, 37, 20, 10, 20)

	MisResultTalk( "<t>恩!你做的很好,这么快就完成了,我不会亏待你的.")
	MisHelpTalk( "<t>南瓜骑士就在加纳大陆(622，3364)附近")
	MisResultCondition( HasMission, 1448)
	MisResultCondition( NoRecord, 1448)
	MisResultCondition( HasFlag, 1448, 29)
	MisResultAction( SetRecord, 1448)
	MisResultAction( SetRecord, 1447)
	MisResultAction( ClearMission, 1448)
	MisResultAction( AddExp_3)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 37)	
	TriggerAction( 1, AddNextFlag, 1448, 10, 20 )
	RegCurTrigger( 14481 )

----------------------------------铁人六项之四
	DefineMission( 6120, "铁人六项之四", 1449)
	MisBeginTalk( "<t>现在你可以做第四项任务了，加油吧。去找10个木头，10个铁矿给废矿补给站的淘淘(1893,2812)送去.")
	MisBeginCondition( HasRecord, 1447)
	MisBeginCondition( NoMission, 1449)
	MisBeginCondition( NoRecord, 1449)
	MisBeginAction( AddMission, 1449)
	MisBeginAction(AddTrigger, 14491, TE_GETITEM, 4543, 10 )
	MisBeginAction(AddTrigger, 14492, TE_GETITEM, 4545, 10 )
	MisCancelAction( ClearMission, 1449)

	MisNeed( MIS_NEED_DESP, "给废矿补给站的淘淘(1893,2812)送去10个木头，10个铁矿.")
	MisNeed( MIS_NEED_ITEM, 4543, 10, 10, 10)
	MisNeed( MIS_NEED_ITEM, 4545, 10, 20, 10)

	MisHelpTalk( "<t>木头的话伐木就有了,铁矿的话挖矿也可以得到.")
	MisResultCondition( AlwaysFailure )

---------------------------------铁人六项之四
	DefineMission( 6121, "铁人六项之四", 1449, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>你的木头真和铁矿真是太及时了,我正需要呢!非常感谢.")
	MisResultCondition( HasMission, 1449)
	MisResultCondition( NoRecord, 1449)
	MisResultCondition( HasItem, 4543, 10)
	MisResultCondition( HasItem, 4545, 10)
	MisResultAction( TakeItem, 4543, 10)
	MisResultAction( TakeItem, 4545, 10)
	MisResultAction( SetRecord, 1449)
	MisResultAction( ClearMission, 1449)
	MisResultAction( AddExp_4)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4543)	
	TriggerAction( 1, AddNextFlag, 1449, 10, 10 )
	RegCurTrigger( 14491 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4545)	
	TriggerAction( 1, AddNextFlag, 1449, 20, 10 )
	RegCurTrigger( 14492 )


-----------------------------------铁人六项之五
	DefineMission( 6122, "铁人六项之五", 1450)
	MisBeginTalk( "<t>下一个任务是收集两颗粉红珍珠,然后送去白银城的佛姆(2226,2726)")
	MisBeginCondition( HasRecord, 1449)
	MisBeginCondition( NoMission, 1450)
	MisBeginCondition( NoRecord, 1450)
	MisBeginAction( AddMission, 1450)
	MisBeginAction(AddTrigger, 14501, TE_GETITEM, 3363, 2 )
	MisCancelAction( ClearMission, 1450)

	MisNeed( MIS_NEED_DESP, "收集两颗粉红珍珠，并送去给白银城的佛姆(2226,2726)")
	MisNeed( MIS_NEED_ITEM, 3363, 2, 10, 2)

	MisHelpTalk( "<t>好象只有珍珠贝才有粉红珍珠哦")
	MisResultCondition( AlwaysFailure )

-----------------------------------铁人六项之五
	DefineMission( 6123, "铁人六项之五", 1450, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>你真是太厉害了!珍珠好漂亮哦!怎是太感谢了,你可以闯最后一关了 !我相信你一定行的!出发吧")
	MisResultCondition( HasMission, 1450)
	MisResultCondition( NoRecord, 1450)
	MisResultCondition( HasItem, 3363, 2)
	MisResultAction( TakeItem, 3363, 2)
	MisResultAction( SetRecord, 1450)
	MisResultAction( ClearMission, 1450)
	MisResultAction( AddExp_5)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3363)	
	TriggerAction( 1, AddNextFlag, 1450, 10, 2 )
	RegCurTrigger( 14501 )

-----------------------------------铁人六项之六
	DefineMission( 6124, "铁人六项之六", 1451)
	MisBeginTalk( "<t>最后一关其实也很简单,你只要找两个同伴,凑齐三个人，并且你们三个人中必须满足至少有一个人是20到30级,一个人是31到40级,还有一个人高于40级就行了,找齐了人你就可以去找冰狼堡剑士·雷欧领取奖励了!")
	MisBeginCondition( HasRecord, 1450)
	MisBeginCondition( NoMission, 1451)
	MisBeginCondition( NoRecord, 1451)
	MisBeginAction( AddMission, 1451)
	MisCancelAction( ClearMission, 1451)

	MisHelpTalk( "<t>快去找同伴吧")

	MisResultCondition( AlwaysFailure )

----------------------------------铁人六项之六
	DefineMission( 6125, "铁人六项之六", 1451, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultCondition( HasMission, 1451)
	MisResultCondition( NoRecord, 1451)
	MisResultCondition( CheckTeam )
	MisResultAction( SetRecord, 6125)
	MisResultAction( ClearMission, 6125)
	MisResultAction( AddExp_6)

-----------------------------------铁人六项结束

-----------------------------------------------------猪光宝气---------马来西亚

       DefineMission(6126,"猪光宝气",1452)

	MisBeginTalk("<t>最近我再研究一道新菜色需要些特别的材料,我猜你一定愿意帮忙,因为回报够好哦.")
	MisBeginCondition(NoMission, 1452)
	MisBeginCondition(NoRecord,1452)
	MisBeginAction(AddMission,1452)
	MisBeginAction(AddTrigger, 14521, TE_GETITEM, 4325, 5)
	MisBeginAction(AddTrigger, 14522, TE_GETITEM, 1680, 5)
	MisBeginAction(AddTrigger, 14523, TE_GETITEM, 4433, 5)
	MisBeginAction(AddTrigger, 14524, TE_GETITEM, 4357, 5)
	MisBeginAction(AddTrigger, 14525, TE_GETITEM, 4461, 40)
	MisBeginAction(AddTrigger, 14526, TE_GETITEM, 4462, 40)


	MisCancelAction(ClearMission, 1452)

	MisNeed(MIS_NEED_DESP, "收集到雪白猪尾 5个(深蓝1179,371),粉红猪尾 5个(加纳1950,2563),豪猪短尾 5个(加纳1384,3065),粗糙的猪尾 5个(加纳910,2971),变异猪蹄 40 深蓝1455,560)及 强壮猪蹄 40(深蓝2266,590).")
	MisNeed(MIS_NEED_ITEM, 4325, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1680, 5, 15, 5)
	MisNeed(MIS_NEED_ITEM, 4433, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 4357, 5, 25, 5)
	MisNeed(MIS_NEED_ITEM, 4461, 40, 30, 40)
	MisNeed(MIS_NEED_ITEM, 4462, 40, 70, 40)

	
	
	MisHelpTalk("<t>及早回来复命,我会给您最好的犒赏")
	MisResultTalk("<t>这个神秘的幸运猪宝箱就是我要送给你的奖赏了,我有很多事需要帮忙,你可以经常过来找我.")

	MisResultCondition(HasMission, 1452)
	MisResultCondition(NoRecord,1452)
	MisResultCondition(HasItem, 4325, 5)
	MisResultCondition(HasItem, 1680, 5)
	MisResultCondition(HasItem, 4433, 5)
	MisResultCondition(HasItem, 4357, 5)
	MisResultCondition(HasItem, 4461, 40)
	MisResultCondition(HasItem, 4462, 40)

	
	
	MisResultAction(TakeItem, 4325, 5 )
	MisResultAction(TakeItem, 1680, 5 )
	MisResultAction(TakeItem, 4433, 5 )
	MisResultAction(TakeItem, 4357, 5 )
	MisResultAction(TakeItem, 4461, 40 )
	MisResultAction(TakeItem, 4462, 40 )

	
	
	MisResultAction(GiveItem, 2909,1,4)------------给幸运猪宝箱
	MisResultAction(ClearMission, 1452)
	MisResultAction(SetRecord, 1452)
	MisResultAction(ClearRecord, 1452)---------------可以反复接
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 4325)	
	TriggerAction( 1, AddNextFlag, 1452, 10, 5 )
	RegCurTrigger( 14521 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1680)	
	TriggerAction( 1, AddNextFlag, 1452, 15, 5 )
	RegCurTrigger( 14522 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4433)	
	TriggerAction( 1, AddNextFlag, 1452, 20, 5 )
	RegCurTrigger( 14523 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4357)	
	TriggerAction( 1, AddNextFlag, 1452, 25, 5 )
	RegCurTrigger( 14524 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4461)	
	TriggerAction( 1, AddNextFlag, 1452, 30, 40 )
	RegCurTrigger( 14525 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4462)	
	TriggerAction( 1, AddNextFlag, 1452, 70, 40 )
	RegCurTrigger( 14526 )
	
	----------------------------------马来西亚-------拥抱小熊活动（闯5关）----------之第一关

	------------------------------活动NPC---------白银城医护小姐岚岚(2244,2770)

	DefineMission(5868,"拥抱小熊",1350)

        MisBeginTalk("<t>你即将开始一场与小熊挑战的任务,这可不是一项容易挑战的任务哦!你必须接受闯荡5关的考验,任务中不可中断!否则将不会得到我们的奖励.自然啦,完成闯关任务的朋友,回报也是很丰厚的喔!你愿意接受挑战吗?")
	MisBeginCondition(NoMission, 1350)
	MisBeginCondition(NoRecord, 1350)
	MisBeginCondition(LvCheck, ">",19)
	MisBeginAction(AddMission, 1350)
	MisBeginAction(AddTrigger, 13501, TE_KILL, 258, 20)


	MisCancelAction(SystemNotice, "闯关任务无法中断")

	MisNeed(MIS_NEED_DESP, "很好,勇气可嘉!现在就出发吧!第一项任务指示:找到等级最低的小熊,杀20只回来覆命!")
	MisNeed(MIS_NEED_KILL, 258, 20, 10, 20)

	MisHelpTalk("<t>给你一点小提示喔,等级最低的熊宝宝通常在加纳大陆的(1905,2853)处活动,赶快执行你的任务吧!")
	MisResultTalk("<t>真是厉害呀!嗯,好吧!算你通过,赶快去找下一个NPC接任务吧!她在白银城坐标是(2281,2745)喔!")


	MisResultCondition(HasMission, 1350)
	MisResultCondition(NoRecord, 1350)
	MisResultCondition(HasFlag, 1350, 29)


	MisResultAction(ClearMission, 1350)
	MisResultAction(SetRecord, 1350)


	InitTrigger()
	TriggerCondition(1, IsMonster, 258)
	TriggerAction(1, AddNextFlag, 1350, 10, 20)
	RegCurTrigger( 13501)


	----------------------------------马来西亚-------拥抱小熊活动（闯5关）----------之第二关

	------------------------------活动NPC---------白银城居民·玛格丽特(2281,2745)

	DefineMission(5869,"我要接任务", 1351)

	MisBeginTalk("<t>哦!真是勇敢的年轻人呀!没想到你这么快就通过了第一关的考验!接下来一定要鼓足信心哦!")
	MisBeginCondition(NoMission, 1351)
	MisBeginCondition(NoRecord, 1351)
	MisBeginCondition(HasRecord, 1350)
	MisBeginAction(AddMission, 1351)
	MisBeginAction(AddTrigger, 13511, TE_KILL, 189, 20)

	MisCancelAction(SystemNotice, "闯关任务无法中断")


	MisNeed(MIS_NEED_DESP, "帮我杀死20只会掉竹笋的小熊,完成任务后再来向我覆命吧!")
	MisNeed(MIS_NEED_KILL, 189, 20, 10, 20)

	MisHelpTalk("<t>在我们海盗王的世界里,那些会掉竹笋的小熊们,通常生活在加纳大陆的(1655,2563),周围大片的竹林,可是飞熊猫们赖以生存的宝地!")
	MisResultTalk("<t>好!算你过关了!赶快找到下一个NPC接任务吧!他在冰狼堡(1294,498),加油喔!前面的路可不好走呐!")

	MisResultCondition(HasMission, 1351)
	MisResultCondition(NoRecord, 1351)
	MisResultCondition(HasFlag, 1351, 29)


	
	MisResultAction(ClearMission, 1351)
	MisResultAction(SetRecord, 1351)

	InitTrigger()
	TriggerCondition(1, IsMonster, 189)
	TriggerAction(1, AddNextFlag, 1351, 10, 20)
	RegCurTrigger( 13511 )


	----------------------------------马来西亚-------拥抱小熊活动（闯5关）----------之第三关

	------------------------------活动NPC---------冰狼堡商會會長．艾立克(1294,498)

	DefineMission(5870, "我要接小熊挑战任务", 1352)

	MisBeginTalk("<t>嗯…真是难得呀!不愧是海盗世家的后代,好吧!就请你接受闯关挑战!")
	MisBeginCondition(NoMission, 1352)
	MisBeginCondition(NoRecord, 1352)
	MisBeginCondition(HasRecord, 1351)
	MisBeginAction(AddMission, 1352)
	MisBeginAction(AddTrigger, 13521, TE_KILL, 142, 20)

	MisCancelAction(SystemNotice, "闯关任务无法中断")

	MisNeed(MIS_NEED_DESP, "先帮我杀20只雪熊宝宝吧!平安回来后再给你通关密语!")
	MisNeed(MIS_NEED_KILL, 142, 20, 10, 20)

	MisHelpTalk("<t>深蓝群岛上的雪熊宝宝,经常出没于(958,661),它们身上掉落的调皮浣熊帽子是艾米的最爱!")
	MisResultTalk("<t>恭喜你平安回来!证明你的实力不俗!好吧,赶紧到下一关去吧!别太得意哦,年轻人,前面有更大的挑战呐!去找下一个关主吧,他在沙岚城的(792,3670),他可是会考倒你的哦!")

	MisResultCondition(HasMission, 1352)
	MisResultCondition(NoRecord, 1352)
	MisResultCondition(HasFlag, 1352, 29)


	MisResultAction(ClearMission, 1352)
	MisResultAction(SetRecord, 1352)

	InitTrigger()
	TriggerCondition(1, IsMonster, 142)
	TriggerAction(1, AddNextFlag, 1352, 10, 20)
	RegCurTrigger( 13521 )


	----------------------------------马来西亚-------拥抱小熊活动（闯5关）----------之第四关

	------------------------------活动NPC---------海盜．德克(792,3670)

	DefineMission(5871, "我想当你的手下", 1353)

	MisBeginTalk("<t>喔?哈哈!想当我的手下可没那么简单哦!先通过我的考验再说吧!")

	MisBeginCondition(NoMission, 1353)
	MisBeginCondition(NoRecord, 1353)
	MisBeginCondition(HasRecord, 1352)
	MisBeginAction(AddMission, 1353)
	MisBeginAction(AddTrigger, 13531, TE_KILL, 259, 15)

	MisCancelAction(SystemNotice, "闯关任务无法中断")

	MisNeed(MIS_NEED_DESP, "提示:先帮我去杀了15只极地熊!!")
	MisNeed(MIS_NEED_KILL, 259, 15, 10, 15)

	MisHelpTalk("<t>哈,不知道那些极地熊藏在哪了吧?让大名顶顶的海盜．德克给你点小提示!沿着深蓝群岛大陆的(1982,530)区域,你准能嗅到它们藏匿的信息!")
	MisResultTalk("<t>嗯,虽然伤痕累累,可总算是完成任务了!加油吧!年轻人!最后一关才是证明你实力的最后关卡呐!千万别放弃啊!超多经验等待你!去冰狼堡的(1365,570)那找他吧!")

	MisResultCondition(HasMission, 1353)
	MisResultCondition(NoRecord, 1353)
	MisResultCondition(HasFlag, 1353, 24)


	MisResultAction(ClearMission, 1353)
	MisResultAction(SetRecord, 1353)

	InitTrigger()
	TriggerCondition(1, IsMonster, 259)
	TriggerAction(1, AddNextFlag, 1353, 10, 15)
	RegCurTrigger( 13531 )


	----------------------------------马来西亚-------拥抱小熊活动（闯5关）----------之第五关

	------------------------------活动NPC---------冰狼堡劍士．雷歐(1365,570)

	DefineMission(5872, "我要通关", 1354)

	MisBeginTalk("<t>呀?你的闯关速度可真快,最后一关虽然简单,但却更需要你的智慧!有信心挑战吗?")

	MisBeginCondition(NoMission, 1354)
	MisBeginCondition(NoRecord, 1354)
	MisBeginCondition(HasRecord, 1353)
	MisBeginAction(AddMission, 1354)
	MisBeginAction(AddTrigger, 13541, TE_KILL, 504, 10)
	MisBeginAction(AddTrigger, 13542, TE_GETITEM, 4824, 1)

	MisCancelAction(SystemNotice, "闯关任务无法中断")

	MisNeed(MIS_NEED_DESP, "我这人最好啦!最后的闯关任务其实很简单哦!先帮我杀死10只大型极地熊,然后收集1颗锋利的熊牙!")
	MisNeed(MIS_NEED_KILL, 504, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 4824, 1, 20, 1)

	MisHelpTalk("<t>怎么?你不会连大型极地熊都找不到吧?放心我一定会帮你的!嗯,我想起来了,祖父曾告诉我深蓝群岛的(3101,666)那可是那些熊的活动乐园!")
	MisResultTalk("<t>哇!那么难的任务都让你完成了!真是恭喜你!这个小熊宝箱是我赠送给你的闯关礼物,快打开看看吧!超多经验绝对令你美不胜收!")

	MisResultCondition(HasMission, 1354)
	MisResultCondition(NoRecord, 1354)
	MisResultCondition(HasFlag, 1354, 19)
	MisResultCondition(HasItem, 4824, 1)


	MisResultAction(ClearMission, 1354)
	MisResultAction(SetRecord, 1354)
	MisResultAction(ClearRecord, 1354)
	MisResultAction(ClearRecord, 1353)
	MisResultAction(ClearRecord, 1352)
	MisResultAction(ClearRecord, 1351)                          ----------------清空所有的任务可重复接
	MisResultAction(ClearRecord, 1350)
	MisResultAction(TakeItem, 4824,1)
	MisResultAction(GiveItem, 144, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition(1, IsMonster, 504)
	TriggerAction(1, AddNextFlag, 1354, 10, 10)
	RegCurTrigger( 13541 )

	InitTrigger()
	TriggerCondition(1, IsItem, 4824)
	TriggerAction(1, AddNextFlag, 1354, 20, 1)
	RegCurTrigger( 13542 )

	-------------------------------------------kokora-----------------------------------------------


