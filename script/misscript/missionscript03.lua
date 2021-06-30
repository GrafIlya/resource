print( "Loading MissionScript03.lua")
------------------------------------
--------- Мисии в Миражах ----------
------------------------------------
function MirageIcicle()
	-------------------
	-- Руна Снегурки --
	-------------------
	DefineMission( 1000, "Руна Снегурки", 1000 )
	MisBeginTalk( "<t>Приветствую тебя, Пират! Вижу ты окреп и решил собрать свое первое оружие Ада? Помоги мне расчистить путь в Мираже Сибири и я выдам тебе первую Руну Ада. " )
	MisBeginAction(AddMission, 1000)
	--MisBeginCondition(NoRecord, 1000)
	MisBeginAction(AddTrigger, 10001, TE_KILL, 960, 100 )
	MisBeginAction(AddTrigger, 10002, TE_KILL, 963, 1 )
	MisCancelAction(ClearMission, 1000)

	MisNeed(MIS_NEED_KILL, 960, 100, 10, 100)
	MisNeed(MIS_NEED_KILL, 963, 1, 20, 1)

	
	MisPrize(MIS_PRIZE_ITEM, 8154, 1, 4) 
	MisPrizeSelAll() 
	
	MisHelpTalk( "<t>Приветствую тебя, Пират! Вижу ты окреп и решил собрать свое первое оружие Ада? Помоги мне расчистить путь в Мираже Сибири и я выдам тебе первую Руну Ада. " )
	MisResultTalk( "<t>Поздравляю! Ты получил свою первую Руну Ада! " )
	MisResultCondition(NoRecord, 1000)
	MisResultCondition(HasMission, 1000)
	MisResultCondition(HasFlag, 1000, 109 )
	MisResultCondition(HasFlag, 1000, 20 )
	MisResultAction(ClearMission, 1000)
	--MisResultAction(SetRecord, 1000 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 960 )	
	TriggerAction( 1, AddNextFlag, 1000, 10,  100)
	RegCurTrigger( 10001 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 963 )	
	TriggerAction( 1, AddNextFlag, 1000, 20,  1)
	RegCurTrigger( 10002 )
	------------------
	-- Руна Медведя --
	------------------
	DefineMission( 1001, "Руна Медведя", 1001 )
	MisBeginTalk( "<t>Приветствую тебя, Пират! Вижу ты окреп и решил собрать свое первое оружие Ада? Помоги мне расчистить путь в Мираже Сибири и я выдам тебе вторую Руну Ада. " )
	MisBeginAction(AddMission, 1001)
	--MisBeginCondition(NoRecord, 1001)
	MisBeginAction(AddTrigger, 10011, TE_KILL, 961, 100 )
	MisBeginAction(AddTrigger, 10012, TE_KILL, 963, 1 )
	MisCancelAction(ClearMission, 1001)

	MisNeed(MIS_NEED_KILL, 961, 100, 10, 100)
	MisNeed(MIS_NEED_KILL, 963, 1, 20, 1)

	
	MisPrize(MIS_PRIZE_ITEM, 8155, 1, 4) 
	MisPrizeSelAll() 
	
	MisHelpTalk( "<t>Приветствую тебя, Пират! Вижу ты окреп и решил собрать свое первое оружие Ада? Помоги мне расчистить путь в Мираже Сибири и я выдам тебе вторую Руну Ада. " )
	MisResultTalk( "<t>Поздравляю! Ты получил свою вторую Руну Ада! " )
	MisResultCondition(NoRecord, 1001)
	MisResultCondition(HasMission, 1001)
	MisResultCondition(HasFlag, 1001, 109 )
	MisResultCondition(HasFlag, 1001, 20 )
	MisResultAction(ClearMission, 1001)
	--MisResultAction(SetRecord, 1001 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 961 )	
	TriggerAction( 1, AddNextFlag, 1001, 10,  100)
	RegCurTrigger( 10011 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 963 )	
	TriggerAction( 1, AddNextFlag, 1001, 20,  1)
	RegCurTrigger( 10012 )
	-----------------
	-- Руна Стража --
	-----------------
	DefineMission( 1002, "Руна Стража", 1002 )
	MisBeginTalk( "<t>Приветствую тебя, Пират! Вижу ты окреп и решил собрать свое первое оружие Ада? Помоги мне расчистить путь в Мираже Сибири и я выдам тебе третью Руну Ада. " )
	MisBeginAction(AddMission, 1002)
	--MisBeginCondition(NoRecord, 1002)
	MisBeginAction(AddTrigger, 10021, TE_KILL, 962, 100 )
	MisBeginAction(AddTrigger, 10022, TE_KILL, 963, 1 )
	MisCancelAction(ClearMission, 1002)

	MisNeed(MIS_NEED_KILL, 962, 100, 10, 100)
	MisNeed(MIS_NEED_KILL, 963, 1, 20, 1)

	
	MisPrize(MIS_PRIZE_ITEM, 8156, 1, 4) 
	MisPrizeSelAll() 
	
	MisHelpTalk( "<t>Приветствую тебя, Пират! Вижу ты окреп и решил собрать свое первое оружие Ада? Помоги мне расчистить путь в Мираже Сибири и я выдам тебе третью Руну Ада. " )
	MisResultTalk( "<t>Поздравляю! Ты получил свою третью Руну Ада! " )
	MisResultCondition(NoRecord, 1002)
	MisResultCondition(HasMission, 1002)
	MisResultCondition(HasFlag, 1002, 109 )
	MisResultCondition(HasFlag, 1002, 20 )
	MisResultAction(ClearMission, 1002)
	--MisResultAction(SetRecord, 1002 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 962 )	
	TriggerAction( 1, AddNextFlag, 1002, 10,  100)
	RegCurTrigger( 10021 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 963 )	
	TriggerAction( 1, AddNextFlag, 1002, 20,  1)
	RegCurTrigger( 10022 )
	-------------------
	-- Руна Фантазма --
	-------------------
	DefineMission( 1003, "Руна Фантазма", 1003 )
	MisBeginTalk( "<t>Приветствую тебя, Пират! Вижу ты окреп и решил собрать свое первое оружие Ада? Помоги мне расчистить путь в Мираже Сибири и я выдам тебе 4 Руну Ада. " )
	MisBeginAction(AddMission, 1003)
	--MisBeginCondition(NoRecord, 1003)
	MisBeginAction(AddTrigger, 10031, TE_KILL, 963, 10 )
	MisCancelAction(ClearMission, 1003)

	MisNeed(MIS_NEED_KILL, 963, 10, 10, 10)

	
	MisPrize(MIS_PRIZE_ITEM, 8157, 1, 4) 
	MisPrizeSelAll() 
	
	MisHelpTalk( "<t>Приветствую тебя, Пират! Вижу ты окреп и решил собрать свое первое оружие Ада? Помоги мне расчистить путь в Мираже Сибири и я выдам тебе 4 Руну Ада. " )
	MisResultTalk( "<t>Поздравляю! Ты получил свою 4 Руну Ада! " )
	MisResultCondition(NoRecord, 1003)
	MisResultCondition(HasMission, 1003)
	MisResultCondition(HasFlag, 1003, 19 )
	MisResultAction(ClearMission, 1003)
	--MisResultAction(SetRecord, 1003 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 963 )	
	TriggerAction( 1, AddNextFlag, 1003, 10,  10)
	RegCurTrigger( 10031 )
	-----------------
	-- Руна Кабана --
	-----------------
	DefineMission( 1004, "Руна Кабана", 1004 )
	MisBeginTalk( "<t>Приветствую тебя, Пират! Вижу ты окреп и решил собрать свое первое оружие Ада? Помоги мне расчистить путь в Мираже Сибири и я выдам тебе 5 Руну Ада. " )
	MisBeginAction(AddMission, 1004)
	--MisBeginCondition(NoRecord, 1004)
	MisBeginAction(AddTrigger, 10041, TE_KILL, 970, 100 )
	MisBeginAction(AddTrigger, 10042, TE_KILL, 963, 1 )
	MisCancelAction(ClearMission, 1004)

	MisNeed(MIS_NEED_KILL, 970, 100, 10, 100)
	MisNeed(MIS_NEED_KILL, 963, 1, 20, 1)

	
	MisPrize(MIS_PRIZE_ITEM, 8158, 1, 4) 
	MisPrizeSelAll() 
	
	MisHelpTalk( "<t>Приветствую тебя, Пират! Вижу ты окреп и решил собрать свое первое оружие Ада? Помоги мне расчистить путь в Мираже Сибири и я выдам тебе 5 Руну Ада. " )
	MisResultTalk( "<t>Поздравляю! Ты получил свою 5 Руну Ада! " )
	MisResultCondition(NoRecord, 1004)
	MisResultCondition(HasMission, 1004)
	MisResultCondition(HasFlag, 1004, 109 )
	MisResultCondition(HasFlag, 1004, 20 )
	MisResultAction(ClearMission, 1004)
	--MisResultAction(SetRecord, 1004 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 970 )	
	TriggerAction( 1, AddNextFlag, 1004, 10,  100)
	RegCurTrigger( 10041 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 963 )	
	TriggerAction( 1, AddNextFlag, 1004, 20,  1)
	RegCurTrigger( 10042 )
	---------------------------
	-- Руна Повелителя Снега --
	---------------------------
	DefineMission( 1005, "Руна Повелителя Снега", 1005 )
	MisBeginTalk( "<t>Приветствую тебя, Пират! Вижу ты окреп и решил собрать свое первое оружие Ада? Помоги мне расчистить путь в Мираже Сибири и я выдам тебе последнюю Руну Ада. " )
	MisBeginAction(AddMission, 1005)
	--MisBeginCondition(NoRecord, 1005)
	MisBeginAction(AddTrigger, 10051, TE_KILL, 971, 100 )
	MisBeginAction(AddTrigger, 10052, TE_KILL, 963, 1 )
	MisCancelAction(ClearMission, 1005)

	MisNeed(MIS_NEED_KILL, 971, 100, 10, 100)
	MisNeed(MIS_NEED_KILL, 963, 1, 20, 1)

	
	MisPrize(MIS_PRIZE_ITEM, 8159, 1, 4) 
	MisPrizeSelAll() 
	
	MisHelpTalk( "<t>Приветствую тебя, Пират! Вижу ты окреп и решил собрать свое первое оружие Ада? Помоги мне расчистить путь в Мираже Сибири и я выдам тебе последнюю Руну Ада. " )
	MisResultTalk( "<t>Поздравляю! Ты получил свою последнюю Руну Ада! " )
	MisResultCondition(NoRecord, 1005)
	MisResultCondition(HasMission, 1005)
	MisResultCondition(HasFlag, 1005, 109 )
	MisResultCondition(HasFlag, 1005, 20 )
	MisResultAction(ClearMission, 1005)
	--MisResultAction(SetRecord, 1005 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 971 )	
	TriggerAction( 1, AddNextFlag, 1005, 10,  100)
	RegCurTrigger( 10051 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 963 )	
	TriggerAction( 1, AddNextFlag, 1005, 20,  1)
	RegCurTrigger( 10052 )
end
MirageIcicle()
