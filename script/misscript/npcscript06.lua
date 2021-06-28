--------------------------------------------------------------------------
--									--
--									--
--		NPCScript06.lua Created by knight.gong 2005.7.12.	--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading NPCScript06.lua" )

function kul_tp ()

--Some Chineze Blabla
	local CurMapName1 = "garner"
	local CurMapName2 = "guildwar"
	local CurMapName3 = "hell4"
	local CurMapName4 = "abandonedcity"
	local CurMapName5 = "garner2"
	local CurMapName6 = "zonagg"
	local CurMapName7 = "darkswamp" 
	local CurMapName8 = "hell5" 
 	local CurMapName9 = "hell"
	--local CurMapName10 = "binglang2"
	local CurMapName11 = "jialebi"
	local CurMapName12 = "hell2"
	local CurMapName13 = "hell3"
	--local CurMapName14 = "puzzleworld"
	local CurMapName15 = "garner"
	local CurMapName16 = "mjing1"



	--єЪБъіІСЁИэІгЧш±к
	local GoTo01X = 1901
	local GoTo01Y = 2783
	local GoTo01M = CurMapName1

	--єЪБъіІСЁИэІгЧш±к
	local GoTo02X = 290
	local GoTo02Y = 115
	local GoTo02M = CurMapName2

	local GoTo02X = 330
	local GoTo02Y = 510
	local GoTo02M = CurMapName2

	local GoTo02X = 410
	local GoTo02Y = 278
	local GoTo02M = CurMapName2

	local GoTo02X = 291
	local GoTo02Y = 331
	local GoTo02M = CurMapName2

	local GoTo02X = 225
	local GoTo02Y = 300
	local GoTo02M = CurMapName2

	--єЪБъіІСЁИэІгЧш±к
	local GoTo03X = 56
	local GoTo03Y = 32
	local GoTo03M = CurMapName3

	--єЪБъіІСЁИэІгЧш±к
	local GoTo04X = 307	
	local GoTo04Y = 309
	local GoTo04M = CurMapName4

	local GoTo04X = 307
	local GoTo04Y = 309
	local GoTo04M = CurMapName4

	--єЪБъіІСЁИэІгЧш±к
	local GoTo05X = 136
	local GoTo05Y = 135
	local GoTo05M = CurMapName5

	local GoTo05X = 78
	local GoTo05Y = 134
	local GoTo05M = CurMapName5

	local GoTo05X = 191
	local GoTo05Y = 100
	local GoTo05M = CurMapName5

	local GoTo05X = 165
	local GoTo05Y = 88
	local GoTo05M = CurMapName5

	local GoTo05X = 102
	local GoTo05Y = 86
	local GoTo05M = CurMapName5

	local GoTo06X = 70
	local GoTo06Y = 70
	local GoTo06M = CurMapName6

	local GoTo05X = 150
	local GoTo05Y = 36
	local GoTo05M = CurMapName5

	--єЪБъіІСЁИэІгЧш±к
	local GoTo07X = 297
	local GoTo07Y = 300
	local GoTo07M = CurMapName7
 
	--єЪБъіІСЁИэІгЧш±к
	local GoTo08X = 47
	local GoTo08Y = 108
	local GoTo08M = CurMapName8

	local GoTo09X = 2376
	local GoTo09Y = 301
	local GoTo09M = CurMapName9

	--єЪБъіІСЁИэІгЧш±к
	local GoTo10X = 124
	local GoTo10Y = 171
	local GoTo10M = CurMapName10

	--єЪБъіІСЁИэІгЧш±к
	local GoTo11X = 190
	local GoTo11Y = 815
	local GoTo11M = CurMapName11

	--єЪБъіІСЁИэІгЧш±к
	local GoTo12X = 24
	local GoTo12Y = 73
	local GoTo12M = CurMapName12

	--єЪБъіІСЁИэІгЧш±к
	local GoTo13X = 34
	local GoTo13Y = 34
	local GoTo13M = CurMapName13

	local GoTo14X = 36
	local GoTo14Y = 20
	local GoTo14M = CurMapName14

	local GoTo15X = 2273
	local GoTo15Y = 1122
	local GoTo15M = CurMapName15

	local GoTo16X = 379
	local GoTo16Y = 397
	local GoTo16M = CurMapName16


		Talk( 1, " Телепортер: Привет я могу телепортировать тебя куда угодно! Выбирай куда ты хочешь! " )
		Text( 1, " Фарм зона 1000 Купюр ", JumpPage, 2 )
                Text( 1, " Хочу в Аврору ", JumpPage, 21 )
		Text( 1, " Фарм зона КОЛЫ ", JumpPage, 7 )
		--Text( 1, " Забытый Город ", JumpPage, 4 )
								--Text( 1, " Хочу в БД Зону! ", JumpPage, 11 )

		--Text( 1, " Следущая страница ---> ", JumpPage, 17 )

		Talk( 17, " Телепортер: Привет я могу телепортировать тебя куда угодно! Выбирай куда ты хочешь! " )
		Text( 17, " Хочу на Священную Войну! ", JumpPage, 3 )
								--Text( 17, " Хочу на Войну Гильдий! ", JumpPage, 5 )
		--Text( 17, " Хочу в Серебряный Хаос! ", JumpPage, 6 )
		Text( 17, " Хочу в Аврору! ", JumpPage, 21 )
		--Text( 17, " Хочу в Мир Демонов (ДВ)! ", JumpPage, 15 )
		Text( 17, " Абаддоны ---> ", JumpPage, 18 )
		Text( 17, " <--- Назад ", JumpPage, 1 )


		Talk( 18, " Телепортер: Привет я могу телепортировать тебя куда угодно! Выбирай куда ты хочешь! " )
		Text( 18, " Хочу в Вечный Абаддон! ", JumpPage, 9 )
		Text( 18, " Хочу в Абаддон 1-4! ", JumpPage, 12 )
		Text( 18, " Хочу в Абаддон 5-7! ", JumpPage, 10 )
		Text( 18, " <--- Назад ", JumpPage, 17 )


		InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, " Телепортер: Привет я могу телепортировать тебя В Убер Луто-кач Зону. Ты точно этого хочеш?. " )
	Text( 2, " Да! Мне как раз нужны деньги и опыт! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 2, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	Talk( 3, " Телепортер: Привет я могу телепортировать тебя на Священную Войну. Ты точно этого хочеш?. " )
	Text( 3, " Да! Люблю воевать! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 4, " Телепортер: Привет я могу телепортировать тебя в Забытый Город. Ты точно этого хочеш?. " )
	Text( 4, " Да! Хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 4, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 5, " Телепортер: Привет я могу телепортировать тебя на Войну Гильдий. Ты точно этого хочеш?. " )
	Text( 5, " Ура! Воевать! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 5, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerCondition( 1, CheckTime)
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	Talk( 6, " Телепортер: Привет я могу телепортировать тебя в Серебряный Хаос. Ты точно этого хочеш?. " )
	Text( 6, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	Talk( 7, " Телепортер: Привет я могу телепортировать тебя в Фарм Зону КОЛЫ . Ты точно этого хочеш?. " )
	Text( 7, " Да! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 7, " Нет, я ошибся! ", JumpPage, 1 )

		
		InitTrigger()
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	Talk( 9, " Телепортер: Привет я могу телепортировать тебя в Вечный Абаддон. Ты точно этого хочеш?. " )
	Text( 9, " Да! Я хочу отомстить Каре! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 9, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo09X, GoTo09Y, GoTo09M )
	Talk( 10, " Телепортер: Привет я могу телепортировать тебя в Абаддон 5-8. Ты точно этого хочеш?. " )
	Text( 10, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 10, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerFailure( 1, JumpPage, 16 )
	Talk( 11, " Телепортер: Привет я могу телепортировать тебя в БД Зону. Ты точно этого хочеш?. " )
	Text( 11, " Да! Я хочу чемодан из кожи Черного Дракона! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 11, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	Talk( 12, " Телепортер: Привет я могу телепортировать тебя в Абаддон 1-4. Ты точно этого хочеш?. " )
	Text( 12, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 12, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	Talk( 13, " Телепортер: Привет я могу телепортировать тебя в Абаддон 9. Ты точно этого хочеш?. " )
	Text( 13, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 13, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	Talk( 14, " Телепортер: Привет я могу телепортировать тебя в Абаддон 10-17. Ты точно этого хочеш?. " )
	Text( 14, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 14, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo14X, GoTo14Y, GoTo14M )
	Talk( 15, " Телепортер: Привет я могу телепортировать тебя в Мир Демонов (ДВ). Ты точно этого хочеш?. " )
	Text( 15, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 15, " Нет, я ошибся! ", JumpPage, 1 )

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 94 )
	TriggerCondition( 1, LvCheck, "<", 301 )
	TriggerCondition( 1, HasItem, 1225,30 )
	TriggerAction( 1, TakeItem, 1225,30 )
	TriggerAction( 1, GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerFailure( 1, JumpPage, 19 )
	Talk( 20, " Чтобы телепортироваться в Морф зону нужно быть 95лвл и заплатить 30 валют! " )
	Text( 20, " Телепортироваться ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, " Нет, я ошибся! ", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo16X, GoTo16Y, GoTo16M )
	Talk( 21, " Телепортер: Привет я могу телепортировать тебя в Аврору. Ты точно этого хочеш? " )
	Text( 21, " Телепортироваться ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 21, " Нет, я ошибся! ", JumpPage, 1 )
 
	Talk( 16, " Приходи тогда когда у тебя появятся деньги!!! " )

	Talk( 19, " Приходи тогда когда у тебя появятся деньги и 700 лвл!!! " )
	
	AddNpcMission 	(47335)
	

end

function Unseal_95()
Talk( 1, " Что ты пялишься на меня?! Да я общипаная индюшка и что?! А вообще ты помоему чтото брать хотел?! Нет?! Тогда Проваливай! " )
Text( 1, " Да, хочу 95 ансы крузу ", JumpPage, 2)
Text( 1, " Да, хочу 95 ансы шарпу ", JumpPage, 8)

Talk( 2, " Ок, только не одолевай меня и выбирай быстрее! " )
Text( 2, " Страж Чести(тело) ", JumpPage, 3)
Text( 2, " Милосердие Чести(боты) ", JumpPage, 4)
Text( 2, " Благославление Чести(перчатки) ", JumpPage, 5)
Text( 2, " Меч Небес(меч) ", JumpPage, 6)
Text( 2, " Хочу 95 корону!(корона) ", JumpPage, 7)

Talk( 8, " Ок, только не одолевай меня и выбирай быстрее! " )
Text( 8, " Страж Эпической Доблести(тело) ", JumpPage, 9)
Text( 8, " Эпические ботинки(боты) ", JumpPage, 10)
Text( 8, " Эпические перчатки(перчатки) ", JumpPage, 11)
Text( 8, " Оружие Правосудия(пуха) ", JumpPage, 12)
Text( 8, " Карающий Лук(лук) ", JumpPage, 13)
Text( 8, " Искупление Эпической Доблести(корона) ", JumpPage, 14)

Talk(7," Давай 99 келей! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,99 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- Это функция проверки заблокирован ли инвентарь
TriggerAction( 1, TakeItem, 3457,40 ) -- Это функция "изьятия" предмета и в каком количестве
TriggerAction( 1, GiveItem, 6108,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
TriggerFailure( 1, JumpPage, 14)
Text(7," Отдать ",MultiTrigger,GetMultiTrigger(),1)

Talk(3," Давай 115 келей! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,115 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- Это функция проверки заблокирован ли инвентарь
TriggerAction( 1, TakeItem, 3457,40 ) -- Это функция "изьятия" предмета и в каком количестве
TriggerAction( 1, GiveItem, 6109,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
TriggerFailure( 1, JumpPage, 14)
Text(3," Отдать ",MultiTrigger,GetMultiTrigger(),1)

Talk(4," Давай 105 келей! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,105 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- Это функция проверки заблокирован ли инвентарь
TriggerAction( 1, TakeItem, 3457,40 ) -- Это функция "изьятия" предмета и в каком количестве
TriggerAction( 1, GiveItem, 6111,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
TriggerFailure( 1, JumpPage, 14)
Text(4," Отдать ",MultiTrigger,GetMultiTrigger(),1)

Talk(5," Давай 105 келей! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,105 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- Это функция проверки заблокирован ли инвентарь
TriggerAction( 1, TakeItem, 3457,40 ) -- Это функция "изьятия" предмета и в каком количестве
TriggerAction( 1, GiveItem, 6110,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
TriggerFailure( 1, JumpPage, 14)
Text(5," Отдать ",MultiTrigger,GetMultiTrigger(),1)

Talk(6," Давай 100 келей! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,100 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- Это функция проверки заблокирован ли инвентарь
TriggerAction( 1, TakeItem, 3457,40 ) -- Это функция "изьятия" предмета и в каком количестве
TriggerAction( 1, GiveItem, 6096,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
TriggerFailure( 1, JumpPage, 14)
Text(6," Отдать ",MultiTrigger,GetMultiTrigger(),1)

Talk(9," Давай 115 келей! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,115 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- Это функция проверки заблокирован ли инвентарь
TriggerAction( 1, TakeItem, 3457,40 ) -- Это функция "изьятия" предмета и в каком количестве
TriggerAction( 1, GiveItem, 6105,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
TriggerFailure( 1, JumpPage, 14)
Text(9," Отдать ",MultiTrigger,GetMultiTrigger(),1)

Talk(10," Давай 105 келей! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,105 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- Это функция проверки заблокирован ли инвентарь
TriggerAction( 1, TakeItem, 3457,40 ) -- Это функция "изьятия" предмета и в каком количестве
TriggerAction( 1, GiveItem, 6107,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
TriggerFailure( 1, JumpPage, 14)
Text(10," Отдать ",MultiTrigger,GetMultiTrigger(),1)

Talk(11," Давай 105 келей! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,105 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- Это функция проверки заблокирован ли инвентарь
TriggerAction( 1, TakeItem, 3457,40 ) -- Это функция "изьятия" предмета и в каком количестве
TriggerAction( 1, GiveItem, 6106,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
TriggerFailure( 1, JumpPage, 14)
Text(11," Отдать ",MultiTrigger,GetMultiTrigger(),1)

Talk(12," Давай 110 келей! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,110 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- Это функция проверки заблокирован ли инвентарь
TriggerAction( 1, TakeItem, 3457,40 ) -- Это функция "изьятия" предмета и в каком количестве
TriggerAction( 1, GiveItem, 6099,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
TriggerFailure( 1, JumpPage, 14)
Text(12," Отдать ",MultiTrigger,GetMultiTrigger(),1)

Talk(13," Давай 99 келей! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,99 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- Это функция проверки заблокирован ли инвентарь
TriggerAction( 1, TakeItem, 3457,30 ) -- Это функция "изьятия" предмета и в каком количестве
TriggerAction( 1, GiveItem, 6104,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
TriggerFailure( 1, JumpPage, 14)
Text(13," Отдать ",MultiTrigger,GetMultiTrigger(),1)

Talk(14," Давай 105 келей! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,105 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- Это функция проверки заблокирован ли инвентарь
TriggerAction( 1, TakeItem, 3457,40 ) -- Это функция "изьятия" предмета и в каком количестве
TriggerAction( 1, GiveItem, 6098,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
TriggerFailure( 1, JumpPage, 14)
Text(14," Отдать ",MultiTrigger,GetMultiTrigger(),1)

Talk(15," Ты что гавнюк, вздумал обмануть меня? Проваливай! " )
Text(15," Ладно, сваливаю, только ГМа не зови!! ",CloseTalk )
Text(15," Поискать заного! ",JumpPage, 1 )

end

function r_talk10 ()

Talk( 1, " Привет , я обмениваю лут на Одежду Мажора !  " )
Text( 1, " Покажи мне Одежду ", JumpPage, 2)
Text( 1, " Покажи мне Оружие ", JumpPage, 10)

Talk( 2, " Нажимай на вкладку , там указана цена " )
Text( 2, " Тело Мажора ", JumpPage, 3)
Text( 2, " Руки Мажора ", JumpPage, 4)
Text( 2, " Ноги Мажора ", JumpPage, 5)

Text( 10, " Меч Чампу Двуручный ", JumpPage, 6)
Text( 10, " Меч Чампу Одноручный ", JumpPage, 22)
Text( 10, " Меч Крузу ", JumpPage, 7)
Text( 10, " Лук ", JumpPage, 8)
Text( 10, " Пушка ", JumpPage, 9)
Text( 10, " Палка Вою ", JumpPage, 13)
Text( 10, " Посох БК ", JumpPage, 11)
Text( 10, " Посох СМ ", JumpPage, 12)

Talk(22," С Тебя 150 Рун Зла , 150 Рун Добра ,    100 Рун Усмирения , 10 Корон Вызова , 4 Знака Резни , 50 Монет Феи , 150 Костей ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )
TriggerAction( 1, TakeItem, 7465,100 )

TriggerAction( 1, GiveItem, 4270,2,4 )
TriggerFailure( 1, JumpPage, 19)
Text(22," Давай мне Меч х2 ",MultiTrigger,GetMultiTrigger(),1)


Talk(6," С Тебя 150 Рун Зла , 150 Рун Добра ,    100 Рун Усмирения , 10 Корон Вызова , 4 Знака Резни , 50 Монет Феи , 150 Костей ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 7465,100 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )

TriggerAction( 1, GiveItem, 115,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(6," Давай мне Меч ",MultiTrigger,GetMultiTrigger(),1)

Talk(7," С Тебя 150 Рун Зла , 150 Рун Добра ,    100 Рун Усмирения , 10 Корон Вызова , 4 Знака Резни , 50 Монет Феи , 150 Костей ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )
TriggerAction( 1, TakeItem, 7465,100 )

TriggerAction( 1, GiveItem, 7,2,4 )
TriggerFailure( 1, JumpPage, 19)
Text(7," Давай мне Меч х2 ",MultiTrigger,GetMultiTrigger(),1)


Talk(8," С Тебя 150 Рун Зла , 150 Рун Добра ,    100 Рун Усмирения , 10 Корон Вызова , 4 Знака Резни , 50 Монет Феи , 150 Костей ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 7465,100 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )

TriggerAction( 1, GiveItem, 117,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(8," Давай мне Лук ",MultiTrigger,GetMultiTrigger(),1)


Talk(9," С Тебя 150 Рун Зла , 150 Рун Добра ,    100 Рун Усмирения , 10 Корон Вызова , 4 Знака Резни , 50 Монет Феи , 150 Костей ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 7465,100 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )

TriggerAction( 1, GiveItem, 1411,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(9," Давай мне Пушку ",MultiTrigger,GetMultiTrigger(),1)

Talk(13," С Тебя 150 Рун Зла , 150 Рун Добра ,    100 Рун Усмирения , 10 Корон Вызова , 4 Знака Резни , 50 Монет Феи , 150 Костей ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 7465,100 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )

TriggerAction( 1, GiveItem, 79,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(13," Давай мне Палку Воя ",MultiTrigger,GetMultiTrigger(),1)


Talk(11," С Тебя 150 Рун Зла , 150 Рун Добра ,    100 Рун Усмирения , 10 Корон Вызова , 4 Знака Резни , 50 Монет Феи , 150 Костей ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 7465,100 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )

TriggerAction( 1, GiveItem, 109,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(11,"Давай мне Палку БК ",MultiTrigger,GetMultiTrigger(),1)


Talk(12," С Тебя 150 Рун Зла , 150 Рун Добра ,    100 Рун Усмирения , 10 Корон Вызова , 4 Знака Резни , 50 Монет Феи , 150 Костей ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )
TriggerAction( 1, TakeItem, 7465,100 )
TriggerAction( 1, GiveItem, 111,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(12," Давай мне Палку СМ ",MultiTrigger,GetMultiTrigger(),1)


Talk(3," Тебе потребуется принести 1) Из острова Мажора выбей мне 10 странных вещей, 30 Эмблем Мажора , 30 Эмблем Мажора Старшего и Драгоценное Письмо 2) 1000 Купюр на 1000 3)300 Банок колы 4)100 Монет феи.5) 100 Ангельских костей ")
InitTrigger()
TriggerCondition( 1, HasItem,7455,10 )
TriggerCondition( 1, HasItem,7456,30 )
TriggerCondition( 1, HasItem,7457,30 )
TriggerCondition( 1, HasItem,7458,1 )
TriggerCondition( 1, HasItem,7444,1000 )
TriggerCondition( 1, HasItem,7454,300 )
TriggerCondition( 1, HasItem,855,100 )
TriggerCondition( 1, HasItem,271,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7455,10 )
TriggerAction( 1, TakeItem, 7456,30 )
TriggerAction( 1, TakeItem, 7457,30 )
TriggerAction( 1, TakeItem, 7458,1 )
TriggerAction( 1, TakeItem, 7444,1000 )
TriggerAction( 1, TakeItem, 7454,300 )
TriggerAction( 1, TakeItem, 855,100 )
TriggerAction( 1, TakeItem, 271,100 )

TriggerAction( 1, GiveItem, 825,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(3," Да, я хочу Тело Мажора! ",MultiTrigger,GetMultiTrigger(),1)


Talk(4," Тебе потребуется принести 1) Из острова Мажора выбей мне 5 странных вещей, 15 Эмблем Мажора , 15 Эмблем Мажора Старшего и Драгоценное Письмо 2) 1000 Купюр на 1000 3)150 Банок колы 4)50 Монет феи.5) 50 Ангельских костей ")
InitTrigger()
TriggerCondition( 1, HasItem,7455,5 )
TriggerCondition( 1, HasItem,7456,15 )
TriggerCondition( 1, HasItem,7457,15 )
TriggerCondition( 1, HasItem,7458,1 )
TriggerCondition( 1, HasItem,7444,1000 )
TriggerCondition( 1, HasItem,7454,150 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,50 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7455,5 )
TriggerAction( 1, TakeItem, 7456,15 )
TriggerAction( 1, TakeItem, 7457,15 )
TriggerAction( 1, TakeItem, 7458,1 )
TriggerAction( 1, TakeItem, 7444,1000 )
TriggerAction( 1, TakeItem, 7454,150 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,50 )

TriggerAction( 1, GiveItem, 826,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(4," Да, я хочу Руку Мажора! ",MultiTrigger,GetMultiTrigger(),1)


Talk(5," Тебе потребуется принести 1) Из острова Мажора выбей мне 5 странных вещей, 15 Эмблем Мажора , 15 Эмблем Мажора Старшего и Драгоценное Письмо 2) 1000 Купюр на 1000 3)150 Банок колы 4)50 Монет феи.5) 50 Ангельских костей ")
InitTrigger()
TriggerCondition( 1, HasItem,7455,5 )
TriggerCondition( 1, HasItem,7456,15 )
TriggerCondition( 1, HasItem,7457,15 )
TriggerCondition( 1, HasItem,7458,1 )
TriggerCondition( 1, HasItem,7444,1000 )
TriggerCondition( 1, HasItem,7454,150 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,50 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7455,5 )
TriggerAction( 1, TakeItem, 7456,15 )
TriggerAction( 1, TakeItem, 7457,15 )
TriggerAction( 1, TakeItem, 7458,1 )
TriggerAction( 1, TakeItem, 7444,1000 )
TriggerAction( 1, TakeItem, 7454,150 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,50 )

TriggerAction( 1, GiveItem, 827,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(5," Да, я хочу Ногу Мажора! ",MultiTrigger,GetMultiTrigger(),1)




Talk( 19, "В ЧЕМ СИЛА , БРАТ !? " ) -- страница если не достаточно репы

end



function r_t123123xd ()


Talk( 1, " Привет , я обмениваю что-то на что-то  " )
Text( 1, " Покажи мне Прайс ", JumpPage, 2)

Talk( 2, " Нажимай на вкладку , там указана цена " )
Text( 2, " Монета величия x1 ", JumpPage, 3)
Text( 2, " Монета величия x10 ", JumpPage, 4)
Text( 2, " Монета величия x3 За кости ", JumpPage, 5)
Text( 2, " Рубли на Кости ", JumpPage, 6)
Text( 2, " Свиток Перефоржа ", JumpPage, 11)
Text( 2, " Лут с Острова Мажора ----> ", JumpPage, 15)
Text( 15, " Драгоценное Письмо ", JumpPage, 7)
Text( 2, " Гранаты и тп. ----> ", JumpPage, 16)
Text( 15, " Эмблема Мажора ", JumpPage, 8)
Text( 15, " Эмблема Мажора Старшего ", JumpPage, 9)
Text( 15, " Странная Вещь ", JumpPage, 10)
Text( 16, " Граната  х99 ", JumpPage, 12)
Text( 16, " Световая Бомба х99 ", JumpPage, 13)
Text( 16, " Излучатель х99 ", JumpPage, 14)
Text( 16, " Детектор Души х99 ", JumpPage, 17)
Text( 16, " Гьозы ", JumpPage, 25)
Text( 16, " Гьозы за кости ", JumpPage, 26)

Talk(3," 100 Купюр на 1000 рублей , за 1 шт ")
InitTrigger()

TriggerCondition( 1, HasItem,7444,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7444,100 )

TriggerAction( 1, GiveItem, 7445,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(3," Давай мне монетку ",MultiTrigger,GetMultiTrigger(),1)


Talk(4," 1000 Купюр на 1000 рублей , за 1 шт ")
InitTrigger()

TriggerCondition( 1, HasItem,7444,1000 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7444,1000 )

TriggerAction( 1, GiveItem, 7445,10,4 )
TriggerFailure( 1, JumpPage, 19)
Text(4," Давай мне монетку ",MultiTrigger,GetMultiTrigger(),1)


Talk(5," Я готов дать тебе 3 Монеты за 10 Костей ")
InitTrigger()

TriggerCondition( 1, HasItem,271,10 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,10 )

TriggerAction( 1, GiveItem, 7445,3,4 )
TriggerFailure( 1, JumpPage, 19)
Text(5," Давай мне монетку ",MultiTrigger,GetMultiTrigger(),1)

Talk(6," Я готов дать тебе 1000 Купюр за 35 Костей ")
InitTrigger()

TriggerCondition( 1, HasItem,271,35 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,35 )

TriggerAction( 1, GiveItem, 7444,1000,4 )
TriggerFailure( 1, JumpPage, 19)
Text(6," Давай мне денежки ",MultiTrigger,GetMultiTrigger(),1)

Talk(7," Я готов дать тебе Драгоценное Письмо за , 20 Монет Мажора + 20 Монет Мажора Старшего и 30 Ангельских Костей + 5 Странных вещей ")
InitTrigger()

TriggerCondition( 1, HasItem,7456,20 )
TriggerCondition( 1, HasItem,7457,20 )
TriggerCondition( 1, HasItem,271,30 )
TriggerCondition( 1, HasItem,7455,5 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7456,20 )
TriggerAction( 1, TakeItem, 7457,20 )
TriggerAction( 1, TakeItem, 271,30 )
TriggerAction( 1, TakeItem, 7455,5 )
TriggerAction( 1, GiveItem, 7458,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(7," Давай мне Письмо ",MultiTrigger,GetMultiTrigger(),1)

Talk(8," Я готов дать тебе Эмблему Мажора за   25 Костей ")
InitTrigger()

TriggerCondition( 1, HasItem,271,25 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,25 )
TriggerAction( 1, GiveItem, 7456,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(8," Давай мне Эмблему ",MultiTrigger,GetMultiTrigger(),1)

Talk(9," Я готов дать тебе Эмблему Мажора Старшего за 30 Костей ")
InitTrigger()

TriggerCondition( 1, HasItem,271,30 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,30 )
TriggerAction( 1, GiveItem, 7457,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(9," Давай мне Эмблему Мажора Старшего ",MultiTrigger,GetMultiTrigger(),1)

Talk(10," Я готов дать тебе Странную Вещь за за 30 Костей ")
InitTrigger()

TriggerCondition( 1, HasItem,271,30 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,30 )
TriggerAction( 1, GiveItem, 7455,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(10," Давай мне Странную Вещь ",MultiTrigger,GetMultiTrigger(),1)

Talk(11," Я готов дать тебе Свиток Перефоржа за  200 Костей ")
InitTrigger()

TriggerCondition( 1, HasItem,271,200 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,200 )
TriggerAction( 1, GiveItem, 7459,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(11," Давай мне Свиток ",MultiTrigger,GetMultiTrigger(),1)

Talk(12," Я готов дать тебе Гранаты 5 ур х99 за 100 Костей ")
InitTrigger()

TriggerCondition( 1, HasItem,271,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,100 )
TriggerAction( 1, GiveItem, 2791,99,4 )
TriggerFailure( 1, JumpPage, 19)
Text(12," Давай мне Гранату ",MultiTrigger,GetMultiTrigger(),1)

Talk(13," Я готов дать тебе Световая бомба 5 ур х99 за 100 Костей ")
InitTrigger()

TriggerCondition( 1, HasItem,271,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,100 )
TriggerAction( 1, GiveItem, 2792,99,4 )
TriggerFailure( 1, JumpPage, 19)
Text(13," Давай мне Гранаты ",MultiTrigger,GetMultiTrigger(),1)

Talk(14," Я готов дать тебе Излучатель 5 ур х99 за 100 Костей ")
InitTrigger()

TriggerCondition( 1, HasItem,271,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,100 )
TriggerAction( 1, GiveItem, 2793,99,4 )
TriggerFailure( 1, JumpPage, 19)
Text(14," Давай мне Излучатели ",MultiTrigger,GetMultiTrigger(),1)

Talk(17," Я готов дать тебе Детектор Души 5 ур х99 за 100 Костей ")
InitTrigger()

TriggerCondition( 1, HasItem,271,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,100 )
TriggerAction( 1, GiveItem, 2794,99,4 )
TriggerFailure( 1, JumpPage, 19)
Text(17," Давай мне Детекторы Души ",MultiTrigger,GetMultiTrigger(),1)

Talk(25," Я готов дать тебе 50 Гьоз за 100 Сундуков из Пурпурного Кристалла  ")
InitTrigger()

TriggerCondition( 1, HasItem,5710,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 5710,100 )
TriggerAction( 1, GiveItem, 3909,50,4 )
TriggerFailure( 1, JumpPage, 19)
Text(25," Давай мне Гьозы ",MultiTrigger,GetMultiTrigger(),1)

Talk(26," Я готов дать тебе 50 Гьоз за 25 Костей  ")
InitTrigger()

TriggerCondition( 1, HasItem,271,25 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,25 )
TriggerAction( 1, GiveItem, 3909,50,4 )
TriggerFailure( 1, JumpPage, 19)
Text(26," Давай мне Гьозы ",MultiTrigger,GetMultiTrigger(),1)

Talk( 19, "Недостаточно ресурсов" ) -- страница если не достаточно репы

	

end


function r_talk12222 ()

local CurMapName1 = "hell4"
--кординаты
local GoTo05X = 55
local GoTo05Y = 30
local GoTo05M = CurMapName1
InitTrigger()
TriggerAction( 1,  GoTo, GoTo05X, GoTo05Y, GoTo05M )
TriggerFailure(1, JumpPage, 2)
Talk(1," У меня можно получить Ожерелье Матроса ")
Text( 1, " Да, отправь меня. ", MultiTrigger, GetMultiTrigger(), 1 )


Text( 1, " Покажи мне Товар ", JumpPage, 4)

Text( 4, " Ожерелье Матроса ", JumpPage, 7)
Text( 1, " Яйца Дракона ", JumpPage, 9)
Talk(7," 10 Яиц Дракона,5000 Костей,30 Карт I,10 Драгоценных Писем,5000 Монет Величия,300 Монет Феи,20 Шишек и 20 Бошек ")

InitTrigger()
TriggerCondition( 1, HasItem,7506,10 )
TriggerCondition( 1, HasItem,271,5000 )
TriggerCondition( 1, HasItem,7450,30 )
TriggerCondition( 1, HasItem,7458,10 )
TriggerCondition( 1, HasItem,7445,5000 )
TriggerCondition( 1, HasItem,855,300 )
TriggerCondition( 1, HasItem,7490,10 )
TriggerCondition( 1, HasItem,7491,20 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7506,10 )
TriggerAction( 1, TakeItem, 271,5000 )
TriggerAction( 1, TakeItem, 7450,30 )
TriggerAction( 1, TakeItem, 7458,10 )
TriggerAction( 1, TakeItem, 7445,5000 )
TriggerAction( 1, TakeItem, 855,300 )
TriggerAction( 1, TakeItem, 7490,10 )
TriggerAction( 1, TakeItem, 7491,20 )
TriggerAction( 1, GiveItem, 5331,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(7," Давай мне Ожерелье ",MultiTrigger,GetMultiTrigger(),1)

Talk(9," 100 Эмблем Неистовой Феи , 30 Монеты Добра , 50 Монет Феи , 1 Останок Охраны ")

InitTrigger()
TriggerCondition( 1, HasItem,7706,1 )
TriggerCondition( 1, HasItem,7703,75 )
TriggerCondition( 1, HasItem,7704,30 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7706,1 )
TriggerAction( 1, TakeItem, 7703,75 )
TriggerAction( 1, TakeItem, 7704,30 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, GiveItem, 7506,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(9," Давай мне Яйцо ",MultiTrigger,GetMultiTrigger(),1)


end


function kul_tp5 ()

--Some Chineze Blabla
	local CurMapName1 = "garner"
	local CurMapName2 = "lonetower"
	local CurMapName3 = "hell4"
	local CurMapName4 = "abandonedcity"
	local CurMapName5 = "garner2"
	local CurMapName6 = "zonagg"
	local CurMapName7 = "darkswamp" 
	local CurMapName8 = "hell5" 
 	local CurMapName9 = "hell"
	--local CurMapName10 = "binglang2"
	local CurMapName11 = "jialebi"
	local CurMapName12 = "hell2"
	local CurMapName13 = "hell3"
	--local CurMapName14 = "puzzleworld"
	local CurMapName15 = "garner"
	local CurMapName16 = "mjing1"



	--єЪБъіІСЁИэІгЧш±к
	local GoTo01X = 998
	local GoTo01Y = 1282
	local GoTo01M = CurMapName1

	--єЪБъіІСЁИэІгЧш±к
	local GoTo02X = 541
	local GoTo02Y = 270
	local GoTo02M = CurMapName2

	--єЪБъіІСЁИэІгЧш±к
	local GoTo03X = 56
	local GoTo03Y = 32
	local GoTo03M = CurMapName3

	--єЪБъіІСЁИэІгЧш±к
	local GoTo04X = 307	
	local GoTo04Y = 309
	local GoTo04M = CurMapName4

	local GoTo04X = 307
	local GoTo04Y = 309
	local GoTo04M = CurMapName4

	--єЪБъіІСЁИэІгЧш±к
	local GoTo05X = 136
	local GoTo05Y = 135
	local GoTo05M = CurMapName5

	local GoTo05X = 78
	local GoTo05Y = 134
	local GoTo05M = CurMapName5

	local GoTo05X = 191
	local GoTo05Y = 100
	local GoTo05M = CurMapName5

	local GoTo05X = 165
	local GoTo05Y = 88
	local GoTo05M = CurMapName5

	local GoTo05X = 102
	local GoTo05Y = 86
	local GoTo05M = CurMapName5

	local GoTo06X = 70
	local GoTo06Y = 70
	local GoTo06M = CurMapName6

	local GoTo05X = 150
	local GoTo05Y = 36
	local GoTo05M = CurMapName5

	--єЪБъіІСЁИэІгЧш±к
	local GoTo07X = 297
	local GoTo07Y = 300
	local GoTo07M = CurMapName7
 
	--єЪБъіІСЁИэІгЧш±к
	local GoTo08X = 47
	local GoTo08Y = 108
	local GoTo08M = CurMapName8

	local GoTo09X = 2376
	local GoTo09Y = 301
	local GoTo09M = CurMapName9

	--єЪБъіІСЁИэІгЧш±к
	local GoTo10X = 124
	local GoTo10Y = 171
	local GoTo10M = CurMapName10

	--єЪБъіІСЁИэІгЧш±к
	local GoTo11X = 190
	local GoTo11Y = 815
	local GoTo11M = CurMapName11

	--єЪБъіІСЁИэІгЧш±к
	local GoTo12X = 24
	local GoTo12Y = 73
	local GoTo12M = CurMapName12

	--єЪБъіІСЁИэІгЧш±к
	local GoTo13X = 34
	local GoTo13Y = 34
	local GoTo13M = CurMapName13

	local GoTo14X = 36
	local GoTo14Y = 20
	local GoTo14M = CurMapName14

	local GoTo15X = 2273
	local GoTo15Y = 1122
	local GoTo15M = CurMapName15

	local GoTo16X = 379
	local GoTo16Y = 397
	local GoTo16M = CurMapName16


		Talk( 1, " Телепортер: Привет я могу отправить тебя в фарм зону RAGE Оружия! " )
		Text( 1, " Полетели ! ", JumpPage, 2 )
               Text( 1, " Одинокая Башня ", JumpPage, 3 )
		--Text( 1, " Фарм зона КОЛЫ ", JumpPage, 7 )
		--Text( 1, " Забытый Город ", JumpPage, 4 )
								--Text( 1, " Хочу в БД Зону! ", JumpPage, 11 )

		--Text( 1, " Следущая страница ---> ", JumpPage, 17 )

		Talk( 17, " Телепортер: Привет я могу телепортировать тебя куда угодно! Выбирай куда ты хочешь! " )
		Text( 17, " Хочу на Священную Войну! ", JumpPage, 3 )
								--Text( 17, " Хочу на Войну Гильдий! ", JumpPage, 5 )
		--Text( 17, " Хочу в Серебряный Хаос! ", JumpPage, 6 )
		Text( 17, " Хочу в Аврору! ", JumpPage, 21 )
		--Text( 17, " Хочу в Мир Демонов (ДВ)! ", JumpPage, 15 )
		Text( 17, " Абаддоны ---> ", JumpPage, 18 )
		Text( 17, " <--- Назад ", JumpPage, 1 )


		Talk( 18, " Телепортер: Привет я могу телепортировать тебя куда угодно! Выбирай куда ты хочешь! " )
		Text( 18, " Хочу в Вечный Абаддон! ", JumpPage, 9 )
		Text( 18, " Хочу в Абаддон 1-4! ", JumpPage, 12 )
		Text( 18, " Хочу в Абаддон 5-7! ", JumpPage, 10 )
		Text( 18, " <--- Назад ", JumpPage, 17 )


		InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, " Телепортер: Привет я могу телепортировать тебя В фарм зону RAGE . Ты точно этого хочешь?. " )
	Text( 2, " Да! Полетели ! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 2, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	Talk( 3, " Телепортер: Привет я могу телепортировать тебя в Одинокую Башню . Ты точно этого хочешь?. " )
	Text( 3, " Да! Люблю воевать! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 4, " Телепортер: Привет я могу телепортировать тебя в Забытый Город. Ты точно этого хочеш?. " )
	Text( 4, " Да! Хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 4, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 5, " Телепортер: Привет я могу телепортировать тебя на Войну Гильдий. Ты точно этого хочеш?. " )
	Text( 5, " Ура! Воевать! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 5, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerCondition( 1, CheckTime)
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	Talk( 6, " Телепортер: Привет я могу телепортировать тебя в Серебряный Хаос. Ты точно этого хочеш?. " )
	Text( 6, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	Talk( 7, " Телепортер: Привет я могу телепортировать тебя в Фарм Зону КОЛЫ . Ты точно этого хочеш?. " )
	Text( 7, " Да! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 7, " Нет, я ошибся! ", JumpPage, 1 )

		
		InitTrigger()
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	Talk( 9, " Телепортер: Привет я могу телепортировать тебя в Вечный Абаддон. Ты точно этого хочеш?. " )
	Text( 9, " Да! Я хочу отомстить Каре! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 9, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo09X, GoTo09Y, GoTo09M )
	Talk( 10, " Телепортер: Привет я могу телепортировать тебя в Абаддон 5-8. Ты точно этого хочеш?. " )
	Text( 10, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 10, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerFailure( 1, JumpPage, 16 )
	Talk( 11, " Телепортер: Привет я могу телепортировать тебя в БД Зону. Ты точно этого хочеш?. " )
	Text( 11, " Да! Я хочу чемодан из кожи Черного Дракона! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 11, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	Talk( 12, " Телепортер: Привет я могу телепортировать тебя в Абаддон 1-4. Ты точно этого хочеш?. " )
	Text( 12, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 12, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	Talk( 13, " Телепортер: Привет я могу телепортировать тебя в Абаддон 9. Ты точно этого хочеш?. " )
	Text( 13, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 13, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	Talk( 14, " Телепортер: Привет я могу телепортировать тебя в Абаддон 10-17. Ты точно этого хочеш?. " )
	Text( 14, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 14, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo14X, GoTo14Y, GoTo14M )
	Talk( 15, " Телепортер: Привет я могу телепортировать тебя в Мир Демонов (ДВ). Ты точно этого хочеш?. " )
	Text( 15, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 15, " Нет, я ошибся! ", JumpPage, 1 )

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 94 )
	TriggerCondition( 1, LvCheck, "<", 301 )
	TriggerCondition( 1, HasItem, 1225,30 )
	TriggerAction( 1, TakeItem, 1225,30 )
	TriggerAction( 1, GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerFailure( 1, JumpPage, 19 )
	Talk( 20, " Чтобы телепортироваться в Морф зону нужно быть 95лвл и заплатить 30 валют! " )
	Text( 20, " Телепортироваться ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, " Нет, я ошибся! ", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo16X, GoTo16Y, GoTo16M )
	Talk( 21, " Телепортер: Привет я могу телепортировать тебя в Аврору. Ты точно этого хочеш? " )
	Text( 21, " Телепортироваться ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 21, " Нет, я ошибся! ", JumpPage, 1 )
 
	Talk( 16, " Приходи тогда когда у тебя появятся деньги!!! " )

	Talk( 19, " Приходи тогда когда у тебя появятся деньги и 700 лвл!!! " )
	
	--AddNpcMission 	(47335)
	

end

function kul_tp6 ()

--Some Chineze Blabla
	local CurMapName1 = "garner"
	local CurMapName2 = "guildwar"
	local CurMapName3 = "hell4"
	local CurMapName4 = "abandonedcity"
	local CurMapName5 = "garner2"
	local CurMapName6 = "zonagg"
	local CurMapName7 = "darkswamp" 
	local CurMapName8 = "hell5" 
 	local CurMapName9 = "hell"
	--local CurMapName10 = "binglang2"
	local CurMapName11 = "jialebi"
	local CurMapName12 = "hell2"
	local CurMapName13 = "hell3"
	--local CurMapName14 = "puzzleworld"
	local CurMapName15 = "garner"
	local CurMapName16 = "mjing1"



	--єЪБъіІСЁИэІгЧш±к
	local GoTo01X = 2171
	local GoTo01Y = 2781
	local GoTo01M = CurMapName1

	--єЪБъіІСЁИэІгЧш±к
	local GoTo02X = 290
	local GoTo02Y = 115
	local GoTo02M = CurMapName2

	local GoTo02X = 330
	local GoTo02Y = 510
	local GoTo02M = CurMapName2

	local GoTo02X = 410
	local GoTo02Y = 278
	local GoTo02M = CurMapName2

	local GoTo02X = 291
	local GoTo02Y = 331
	local GoTo02M = CurMapName2

	local GoTo02X = 225
	local GoTo02Y = 300
	local GoTo02M = CurMapName2

	--єЪБъіІСЁИэІгЧш±к
	local GoTo03X = 56
	local GoTo03Y = 32
	local GoTo03M = CurMapName3

	--єЪБъіІСЁИэІгЧш±к
	local GoTo04X = 307	
	local GoTo04Y = 309
	local GoTo04M = CurMapName4

	local GoTo04X = 307
	local GoTo04Y = 309
	local GoTo04M = CurMapName4

	--єЪБъіІСЁИэІгЧш±к
	local GoTo05X = 136
	local GoTo05Y = 135
	local GoTo05M = CurMapName5

	local GoTo05X = 78
	local GoTo05Y = 134
	local GoTo05M = CurMapName5

	local GoTo05X = 191
	local GoTo05Y = 100
	local GoTo05M = CurMapName5

	local GoTo05X = 165
	local GoTo05Y = 88
	local GoTo05M = CurMapName5

	local GoTo05X = 102
	local GoTo05Y = 86
	local GoTo05M = CurMapName5

	local GoTo06X = 70
	local GoTo06Y = 70
	local GoTo06M = CurMapName6

	local GoTo05X = 150
	local GoTo05Y = 36
	local GoTo05M = CurMapName5

	--єЪБъіІСЁИэІгЧш±к
	local GoTo07X = 297
	local GoTo07Y = 300
	local GoTo07M = CurMapName7
 
	--єЪБъіІСЁИэІгЧш±к
	local GoTo08X = 47
	local GoTo08Y = 108
	local GoTo08M = CurMapName8

	local GoTo09X = 2376
	local GoTo09Y = 301
	local GoTo09M = CurMapName9

	--єЪБъіІСЁИэІгЧш±к
	local GoTo10X = 124
	local GoTo10Y = 171
	local GoTo10M = CurMapName10

	--єЪБъіІСЁИэІгЧш±к
	local GoTo11X = 190
	local GoTo11Y = 815
	local GoTo11M = CurMapName11

	--єЪБъіІСЁИэІгЧш±к
	local GoTo12X = 24
	local GoTo12Y = 73
	local GoTo12M = CurMapName12

	--єЪБъіІСЁИэІгЧш±к
	local GoTo13X = 34
	local GoTo13Y = 34
	local GoTo13M = CurMapName13

	local GoTo14X = 36
	local GoTo14Y = 20
	local GoTo14M = CurMapName14

	local GoTo15X = 2273
	local GoTo15Y = 1122
	local GoTo15M = CurMapName15

	local GoTo16X = 379
	local GoTo16Y = 397
	local GoTo16M = CurMapName16


		Talk( 1, " Телепортер: Привет я могу отправить тебя в Аргент " )
		Text( 1, " Полетели ! ", JumpPage, 2 )
               -- Text( 1, " Хочу в Аврору ", JumpPage, 21 )
		--Text( 1, " Фарм зона КОЛЫ ", JumpPage, 7 )
		--Text( 1, " Забытый Город ", JumpPage, 4 )
								--Text( 1, " Хочу в БД Зону! ", JumpPage, 11 )

		--Text( 1, " Следущая страница ---> ", JumpPage, 17 )

		Talk( 17, " Телепортер: Привет я могу телепортировать тебя куда угодно! Выбирай куда ты хочешь! " )
		Text( 17, " Хочу на Священную Войну! ", JumpPage, 3 )
								--Text( 17, " Хочу на Войну Гильдий! ", JumpPage, 5 )
		--Text( 17, " Хочу в Серебряный Хаос! ", JumpPage, 6 )
		Text( 17, " Хочу в Аврору! ", JumpPage, 21 )
		--Text( 17, " Хочу в Мир Демонов (ДВ)! ", JumpPage, 15 )
		Text( 17, " Абаддоны ---> ", JumpPage, 18 )
		Text( 17, " <--- Назад ", JumpPage, 1 )


		Talk( 18, " Телепортер: Привет я могу телепортировать тебя куда угодно! Выбирай куда ты хочешь! " )
		Text( 18, " Хочу в Вечный Абаддон! ", JumpPage, 9 )
		Text( 18, " Хочу в Абаддон 1-4! ", JumpPage, 12 )
		Text( 18, " Хочу в Абаддон 5-7! ", JumpPage, 10 )
		Text( 18, " <--- Назад ", JumpPage, 17 )


		InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, " Телепортер: Привет я могу телепортировать тебя В Аргент . Ты точно этого хочешь?. " )
	Text( 2, " Да! Полетели ! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 2, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	Talk( 3, " Телепортер: Привет я могу телепортировать тебя на Священную Войну. Ты точно этого хочеш?. " )
	Text( 3, " Да! Люблю воевать! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 4, " Телепортер: Привет я могу телепортировать тебя в Забытый Город. Ты точно этого хочеш?. " )
	Text( 4, " Да! Хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 4, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 5, " Телепортер: Привет я могу телепортировать тебя на Войну Гильдий. Ты точно этого хочеш?. " )
	Text( 5, " Ура! Воевать! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 5, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerCondition( 1, CheckTime)
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	Talk( 6, " Телепортер: Привет я могу телепортировать тебя в Серебряный Хаос. Ты точно этого хочеш?. " )
	Text( 6, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	Talk( 7, " Телепортер: Привет я могу телепортировать тебя в Фарм Зону КОЛЫ . Ты точно этого хочеш?. " )
	Text( 7, " Да! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 7, " Нет, я ошибся! ", JumpPage, 1 )

		
		InitTrigger()
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	Talk( 9, " Телепортер: Привет я могу телепортировать тебя в Вечный Абаддон. Ты точно этого хочеш?. " )
	Text( 9, " Да! Я хочу отомстить Каре! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 9, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo09X, GoTo09Y, GoTo09M )
	Talk( 10, " Телепортер: Привет я могу телепортировать тебя в Абаддон 5-8. Ты точно этого хочеш?. " )
	Text( 10, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 10, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerFailure( 1, JumpPage, 16 )
	Talk( 11, " Телепортер: Привет я могу телепортировать тебя в БД Зону. Ты точно этого хочеш?. " )
	Text( 11, " Да! Я хочу чемодан из кожи Черного Дракона! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 11, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	Talk( 12, " Телепортер: Привет я могу телепортировать тебя в Абаддон 1-4. Ты точно этого хочеш?. " )
	Text( 12, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 12, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	Talk( 13, " Телепортер: Привет я могу телепортировать тебя в Абаддон 9. Ты точно этого хочеш?. " )
	Text( 13, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 13, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	Talk( 14, " Телепортер: Привет я могу телепортировать тебя в Абаддон 10-17. Ты точно этого хочеш?. " )
	Text( 14, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 14, " Нет, я ошибся! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo14X, GoTo14Y, GoTo14M )
	Talk( 15, " Телепортер: Привет я могу телепортировать тебя в Мир Демонов (ДВ). Ты точно этого хочеш?. " )
	Text( 15, " Да! Я хочу туда! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 15, " Нет, я ошибся! ", JumpPage, 1 )

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 94 )
	TriggerCondition( 1, LvCheck, "<", 301 )
	TriggerCondition( 1, HasItem, 1225,30 )
	TriggerAction( 1, TakeItem, 1225,30 )
	TriggerAction( 1, GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerFailure( 1, JumpPage, 19 )
	Talk( 20, " Чтобы телепортироваться в Морф зону нужно быть 95лвл и заплатить 30 валют! " )
	Text( 20, " Телепортироваться ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, " Нет, я ошибся! ", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo16X, GoTo16Y, GoTo16M )
	Talk( 21, " Телепортер: Привет я могу телепортировать тебя в Аврору. Ты точно этого хочеш? " )
	Text( 21, " Телепортироваться ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 21, " Нет, я ошибся! ", JumpPage, 1 )
 
	Talk( 16, " Приходи тогда когда у тебя появятся деньги!!! " )

	Talk( 19, " Приходи тогда когда у тебя появятся деньги и 700 лвл!!! " )
	
	--AddNpcMission 	(47335)
	

end