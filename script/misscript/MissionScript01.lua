--ћаксимум убийств 30, максимум действий 5
print( "------------------------------------" )
print( "Loading Mission Files:" )
print( "------------------------------------" )
print( "Loading MissionScript01.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

-------------
-- 100 сет --
-------------
function FirstQuest()
	--DefineMission( 700, "Экипировка Абаддона ", 700 )
	DefineMission( 1100, "\221\234\232\239\232\240\238\226\234\224 \192\225\224\228\228\238\237\224", 1100 )
	--MisBeginTalk( "Пиздуй в ѕодмосковье и покажи ублюдкам, кто тут хозяин!" )
	MisBeginTalk( "\207\232\231\228\243\233 \226 \207\238\228\236\238\241\234\238\226\252\229 \232 \239\238\234\224\230\232 \243\225\235\254\228\234\224\236, \234\242\238 \242\243\242 \245\238\231\255\232\237!" )
	MisBeginCondition(LvCheck, ">", 1 )
	MisBeginAction(AddMission, 1100)
	MisBeginCondition(NoRecord, 1100)
	MisBeginAction(AddTrigger,11001, TE_GETITEM, 8125, 1 )
	MisBeginAction(AddTrigger, 11002, TE_KILL, 103, 100 )
	MisCancelAction(ClearMission, 1100)

	MisNeed(MIS_NEED_ITEM, 8125, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 103, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 4999, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( "<t>Пиздуй в ѕодмосковье и покажи ублюдкам, кто тут хозяин!" )
	MisHelpTalk( "<t>\207\232\231\228\243\233 \226 \207\238\228\236\238\241\234\238\226\252\229 \232 \239\238\234\224\230\232 \243\225\235\254\228\234\224\236, \234\242\238 \242\243\242 \245\238\231\255\232\237!" )
	--MisResultTalk( "<t>Поздравляю, забирай сундук Абаддона! " )
	MisResultTalk( "<t>\207\238\231\228\240\224\226\235\255\254, \231\224\225\232\240\224\233 \241\243\237\228\243\234 \192\225\224\228\228\238\237\224!" )
	MisResultCondition(NoRecord, 1100)
	MisResultCondition(HasMission, 1100)
	MisResultCondition(HasItem, 8125,1)
	MisResultAction(TakeItem, 8125, 1 )
	MisResultCondition(HasFlag, 1100, 119 )
	MisResultAction(ClearMission, 1100)
	MisResultAction(SetRecord, 1100 )
	MisResultBagNeed(1)

		InitTrigger()
	TriggerCondition( 1, IsItem, 8125 )	
	TriggerAction( 1, AddNextFlag, 1100, 10, 1 )
	RegCurTrigger( 11001 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 103 )	
	TriggerAction( 1, AddNextFlag, 1100, 20,  100)
	RegCurTrigger( 11002 )
	
	-------------------------------
	-- Вторая часть пути новичка --
	-------------------------------
	--DefineMission( 701, "Оружие Абаддона ", 701 )
	DefineMission( 1101, "\206\240\243\230\232\229 \192\225\224\228\228\238\237\224", 1101 )
	--MisBeginTalk( "Пиздуй в Подмосковье и покажи ублюдкам, кто тут хозяин!" )
	MisBeginTalk( "\207\232\231\228\243\233 \226 \207\238\228\236\238\241\234\238\226\252\229 \232 \239\238\234\224\230\232 \243\225\235\254\228\234\224\236, \234\242\238 \242\243\242 \245\238\231\255\232\237!" )
	MisBeginCondition(LvCheck, ">", 1 )
	MisBeginAction(AddMission, 1101)
	MisBeginCondition(NoRecord, 1101)
	MisBeginAction(AddTrigger,11011, TE_GETITEM, 8125, 1 )
	MisBeginAction(AddTrigger, 11012, TE_KILL, 71, 100 )
	MisCancelAction(ClearMission, 1101)

	MisNeed(MIS_NEED_ITEM, 8125, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 71, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 5000, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( " <t>Пиздуй в Подмосковье и покажи ублюдкам, кто тут хозяин! " )
	MisHelpTalk( "<t>\207\232\231\228\243\233 \226 \207\238\228\236\238\241\234\238\226\252\229 \232 \239\238\234\224\230\232 \243\225\235\254\228\234\224\236, \234\242\238 \242\243\242 \245\238\231\255\232\237!" )
	--MisResultTalk( "<t>Поздравл€ю, забирай сундук Абаддона! " )
	MisResultTalk( "<t>\207\238\231\228\240\224\226\235€\254, \231\224\225\232\240\224\233 \241\243\237\228\243\234 \192\225\224\228\228\238\237\224!" )
	MisResultCondition(NoRecord, 1101)
	MisResultCondition(HasMission, 1101)
	MisResultCondition(HasItem, 8125,1)
	MisResultAction(TakeItem, 8125, 1 )
	MisResultCondition(HasFlag, 1101, 119 )
	MisResultAction(ClearMission, 1101)
	MisResultAction(SetRecord, 1101 )
	MisResultBagNeed(1)

		InitTrigger()
	TriggerCondition( 1, IsItem, 8125 )	
	TriggerAction( 1, AddNextFlag, 1101, 10, 1 )
	RegCurTrigger( 11011 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 71 )	
	TriggerAction( 1, AddNextFlag, 1101, 20,  100)
	RegCurTrigger( 11012 )
end
FirstQuest()

---------------
-- ФС квесты --
---------------
function FCQuest()
	--DefineMission( 702, "Кровавый Камень", 702 )
	DefineMission( 1102, "\202\240\238\226\224\226\251\233 \202\224\236\229\237\252", 1102 )
	--MisBeginTalk( "<t>Чтобы выполнить задание, пиздуй в Затерянное очко! " )
	MisBeginTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \199\224\242\229\240\255\237\237\238\229 \238\247\234\238!" )
	MisBeginCondition(LvCheck, ">", 124 )
	MisBeginAction(AddMission, 1102)
	--MisBeginCondition(NoRecord, 1102)
	MisBeginAction(AddTrigger,11021, TE_GETITEM, 1625, 1 )
	MisBeginAction(AddTrigger, 11022, TE_KILL, 686, 100 )
	MisCancelAction(ClearMission, 1102)

	MisNeed(MIS_NEED_ITEM, 1625, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 686, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 8041, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( "<t>Чтобы выполнить задание, пиздуй в Затерянное очко! " )
	MisHelpTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \199\224\242\229\240\255\237\237\238\229 \238\247\234\238!" )
	--MisResultTalk( "<t>Лови Кровавый камень! " )
	MisResultTalk( "<t>\203\238\226\232 \202\240\238\226\224\226\251\233 \234\224\236\229\237\252!" )
	MisResultCondition(NoRecord, 1102)
	MisResultCondition(HasMission, 1102)
	MisResultCondition(HasItem, 1625,1)
	MisResultAction(TakeItem, 1625, 1 )
	MisResultCondition(HasFlag, 1102, 119 )
	MisResultAction(ClearMission, 1102)
	--MisResultAction(SetRecord, 1102 )
	MisResultBagNeed(1)

		InitTrigger()
	TriggerCondition( 1, IsItem, 1625 )	
	TriggerAction( 1, AddNextFlag, 1102, 10, 1 )
	RegCurTrigger( 11021 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 686 )	
	TriggerAction( 1, AddNextFlag, 1102, 20,  100)
	RegCurTrigger( 11022 )
	
	----------------------
	-- Второй камень ФС --
	----------------------
	--DefineMission( 703, "Лунный Камень ", 703 )
	DefineMission( 1103, "\203\243\237\237\251\233 \202\224\236\229\237\252", 1103 )
	--MisBeginTalk( "<t>Чтобы выполнить задание, пиздуй в Затерянное очко!" )
	MisBeginTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \199\224\242\229\240\255\237\237\238\229 \238\247\234\238!" )
	MisBeginCondition(LvCheck, ">", 129 )
	MisBeginAction(AddMission, 1103)
	MisBeginCondition(NoRecord, 1103)
	MisBeginAction(AddTrigger,11031, TE_GETITEM, 4837, 1 )
	MisBeginAction(AddTrigger, 11032, TE_KILL, 687, 100 )
	MisCancelAction(ClearMission, 1103)

	MisNeed(MIS_NEED_ITEM, 4837, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 687, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 8042, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( "<t>Чтобы выполнить задание, пиздуй в Затерянное очко! " )
	MisHelpTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \199\224\242\229\240\255\237\237\238\229 \238\247\234\238!" )
	--MisResultTalk( "Лови Лунный камень! " )
	MisResultTalk( "\203\238\226\232 \203\243\237\237\251\233 \234\224\236\229\237\252!" )
	MisResultCondition(NoRecord, 1103)
	MisResultCondition(HasMission, 1103)
	MisResultCondition(HasItem, 4837,1)
	MisResultAction(TakeItem, 4837, 1 )
	MisResultCondition(HasFlag, 1103, 119 )
	MisResultAction(ClearMission, 1103)
	MisResultAction(SetRecord, 1103 )
	MisResultBagNeed(1)

		InitTrigger()
	TriggerCondition( 1, IsItem, 4837 )	
	TriggerAction( 1, AddNextFlag, 1103, 10, 1 )
	RegCurTrigger( 11031 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 687 )	
	TriggerAction( 1, AddNextFlag, 1103, 20,  100)
	RegCurTrigger( 11032 )
end
FCQuest()

---------------
-- ДС квесты --
---------------
function DSQuest()
	--DefineMission( 704, "1 часть сундука Мертвеца", 704 )
	DefineMission( 1104, "1 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224", 1104 )
	--MisBeginTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма! " )
	MisBeginTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	MisBeginCondition(LvCheck, ">", 124 )
	MisBeginAction(AddMission, 1104)
	MisBeginCondition(NoRecord, 1104)
	MisBeginAction(AddTrigger,11041, TE_GETITEM, 3927, 1 )
	MisBeginAction(AddTrigger, 11042, TE_KILL, 695, 100 )
	MisCancelAction(ClearMission, 1104)

	MisNeed(MIS_NEED_ITEM, 3927, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 695, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 8090, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма! " )
	MisHelpTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	--MisResultTalk( "<t>Лови Первую часть сундука Мертвеца! " )
	MisResultTalk( "<t>\203\238\226\232 \207\229\240\226\243\254 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224!" )
	MisResultCondition(NoRecord, 1104)
	MisResultCondition(HasMission, 1104)
	MisResultCondition(HasItem, 3927,1)
	MisResultAction(TakeItem, 3927, 1 )
	MisResultCondition(HasFlag, 1104, 119 )
	MisResultAction(ClearMission, 1104)
	MisResultAction(SetRecord, 1104 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3927 )	
	TriggerAction( 1, AddNextFlag, 1104, 10, 1 )
	RegCurTrigger( 11041 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 695 )	
	TriggerAction( 1, AddNextFlag, 1104, 20,  100)
	RegCurTrigger( 11042 )
	
	-----------------------------------
	-- Вторая часть сундука мертвеца --
	-----------------------------------
	--DefineMission( 705, "2 часть сундука Мертвеца ", 705 )
	DefineMission( 1105, "2 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224", 1105 )
	--MisBeginTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма!" )
	MisBeginTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	MisBeginCondition(LvCheck, ">", 129 )
	MisBeginAction(AddMission, 1105)
	MisBeginCondition(NoRecord, 1105)
	MisBeginAction(AddTrigger,11051, TE_GETITEM, 4571, 1 )
	MisBeginAction(AddTrigger, 11052, TE_KILL, 696, 100 )
	MisCancelAction(ClearMission, 1105)

	MisNeed(MIS_NEED_ITEM, 4571, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 696, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 8091, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма! " )
	MisHelpTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	--MisResultTalk( "Лови Вторую часть сундука Мертвеца! " )
	MisResultTalk( "\203\238\226\232 \194\242\238\240\243\254 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224!" )
	MisResultCondition(NoRecord, 1105)
	MisResultCondition(HasMission, 1105)
	MisResultCondition(HasItem, 4571,1)
	MisResultAction(TakeItem, 4571, 1 )
	MisResultCondition(HasFlag, 1105, 119 )
	MisResultAction(ClearMission, 1105)
	MisResultAction(SetRecord, 1105 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4571 )	
	TriggerAction( 1, AddNextFlag, 1105, 10, 1 )
	RegCurTrigger( 11051 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 696 )	
	TriggerAction( 1, AddNextFlag, 1105, 20,  100)
	RegCurTrigger( 11052 )
	
	-----------------------------------
	-- Третья часть сундука мертвеца --
	-----------------------------------
	--DefineMission( 706, "3 часть сундука Мертвеца ", 706 )
	DefineMission( 1106, "3 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224", 1106 )
	--MisBeginTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма!" )
	MisBeginTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	MisBeginCondition(LvCheck, ">", 129 )
	MisBeginAction(AddMission, 1106)
	MisBeginCondition(NoRecord, 1106)
	MisBeginAction(AddTrigger,11061, TE_GETITEM, 1846, 1 )
	MisBeginAction(AddTrigger, 11062, TE_KILL, 697, 100 )
	MisCancelAction(ClearMission, 1106)

	MisNeed(MIS_NEED_ITEM, 1846, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 697, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 8092, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма! " )
	MisHelpTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	--MisResultTalk( "Лови Третью часть сундука Мертвеца! " )
	MisResultTalk( "\203\238\226\232 \210\240\229\242\252\254 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224!" )
	MisResultCondition(NoRecord, 1106)
	MisResultCondition(HasMission, 1106)
	MisResultCondition(HasItem, 1846,1)
	MisResultAction(TakeItem, 1846, 1 )
	MisResultCondition(HasFlag, 1106, 119 )
	MisResultAction(ClearMission, 1106)
	MisResultAction(SetRecord, 1106 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1846 )	
	TriggerAction( 1, AddNextFlag, 1106, 10, 1 )
	RegCurTrigger( 11061 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 697 )	
	TriggerAction( 1, AddNextFlag, 1106, 20,  100)
	RegCurTrigger( 11062 )
	
	--------------------------------------
	-- Четвертая часть сундука мертвеца --
	--------------------------------------
	--DefineMission( 707, "4 часть сундука Мертвеца", 707 )
	DefineMission( 1107, "4 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224", 1107 )
	--MisBeginTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма!" )
	MisBeginTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	MisBeginCondition(LvCheck, ">", 129 )
	MisBeginAction(AddMission, 1107)
	MisBeginCondition(NoRecord, 1107)
	MisBeginAction(AddTrigger,11071, TE_GETITEM, 4343, 1 )
	MisBeginAction(AddTrigger, 11072, TE_KILL, 698, 100 )
	MisCancelAction(ClearMission, 1107)

	MisNeed(MIS_NEED_ITEM, 4343, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 698, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 8093, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма!" )
	MisHelpTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	--MisResultTalk( "Лови Четвертую часть сундука Мертвеца!" )
	MisResultTalk( "\203\238\226\232 \215\229\242\226\229\240\242\243\254 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224!" )
	MisResultCondition(NoRecord, 1107)
	MisResultCondition(HasMission, 1107)
	MisResultCondition(HasItem, 4343,1)
	MisResultAction(TakeItem, 4343, 1 )
	MisResultCondition(HasFlag, 1107, 119 )
	MisResultAction(ClearMission, 1107)
	MisResultAction(SetRecord, 1107 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4343 )	
	TriggerAction( 1, AddNextFlag, 1107, 10, 1 )
	RegCurTrigger( 11071 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 698 )	
	TriggerAction( 1, AddNextFlag, 1107, 20,  100)
	RegCurTrigger( 11072 )
	
end
DSQuest()

	
	

	