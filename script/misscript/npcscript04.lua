print( "‡ Јаг§Є  NPCScript04.lua" )

--------------------------
--	Список сокращений	--
--------------------------
jp				= JumpPage
amp				= AutoMissionPage
ct				= CloseTalk
am				= AddMission
MissionCheck 	= HasFlag
mc				= MissionCheck

--------------------------------------------------------------------------------------------------------------------
--													b_talk (Начало)												  --
--------------------------------------------------------------------------------------------------------------------
function b_talk1()
	Talk( 1, "Ву Ксин: Изумрудное лезвие в левой руке, нож Голиафа в правой руке, шлем дракона на голове. Ничто меня не остановит! " )
	Text( 1, "Торг ", BuyPage )
	Text( 1, "Ремонт ", OpenRepair)
	Text( 1, "Узнать о вставке самоцветов ", JumpPage, 2)
	Text( 1, "Узнать о комбинировании ", JumpPage, 3)

	Talk( 2, "Ву Ксин: Вставка самоцветов? Только кузнец Шайтана знает о ней! " )

	Talk( 3, "Ву Ксин: Комбинирование? Советую обратиться к бакалейщику Амосу в Шайтане. Он должен знать об этом! " )

	Talk( 4, "Ву Ксин: Мая твая не панимать! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )

	InitTrade()
	Weapon(	0023	)
	Weapon(	1399	)
	Weapon(	0021	)
	Weapon(	1378	)
	Weapon(	1387	)
	Weapon(	0084	)
	Weapon(	1426	)
	Weapon(	1461	)
	Weapon(	0108	)
	Weapon(	4302	)
	Weapon(	1438	)
	Weapon(	1441	)
	Weapon(	1473	)
	Weapon(	1476	)
	Weapon(	0045	)
	Weapon(	1414	)

	AddNpcMission ( 393  )
    AddNpcMission ( 567  )
	AddNpcMission (	5817 )
	AddNpcMission (	5818 )
end

function b_talk2()
	Talk( 1, "Лонг Ер: Добрый день. Вы можете ознакомиться с ассортиментом нашего товара. Вас что нибудь заинтерисовало? ")

	Talk( 2, "Лонг Ер: Мая твая не панимать! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

   	InitTrade()
	Other(	1078	)
	Other(	1079	)
	Other(	1080	)
	Other(	1082	)  
	Other(	1083	)

	AddNpcMission ( 394 )
	AddNpcMission ( 536 )
	AddNpcMission ( 537 )
	AddNpcMission ( 538 )
    AddNpcMission ( 569 )
	AddNpcMission	(5819)
	AddNpcMission	(5820)
end

function b_talk3()
	Talk( 1, "Луна: Хм... Кажется кто то имеет такое же имя как и я. Думаю стоит предъявить иск о нарушении авторских прав! " )
	Text( 1, "Торг ", BuyPage )

	Talk( 2, "Луна: Мая твая не панимать! " )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission ( 395 )
	AddNpcMission ( 517 )
	AddNpcMission ( 519 )
	AddNpcMission ( 525 )
	AddNpcMission ( 526 )
    AddNpcMission ( 564 )
	AddNpcMission	(5821)
	AddNpcMission	(5822)
end

function b_talk4()
	Talk( 1, "Юрий: Ты не слышал о Фонтане Жизни? О Дьявольском отродье? Что? Не слышал? А о Маджонге? Боже мой...Какой же ты искатель приключений?" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 13 )
	TriggerAction( 1, TradeBerthList, 13 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 2, "Юрий: Простите, но у вас нет корабля в доке Веснограда. Я не могу произвести торг! " )

	Talk( 3, "Юрий: Привет! Если вы хотите торговать, то вы нуждаетесь в торговой лицензии. Узнать о торговой лицензии можно у купца Шайтана.")
	Text( 3, "Узнать о налоге ",JumpPage, 7)
	Text( 3, "Лицензия низкого уровня ",JumpPage, 4)
	Text( 3, "Лицензия стандартного уровня ",JumpPage, 5)
	Text( 3, "Лицензия высшего уровня ",JumpPage, 6)

	Talk( 4, "Юрий: Лицензию низкого уровня получить несложно. Для этого вам надо быть не менее 20 уровня и найти купца Шайтана.")

	Talk( 5, "Юрий: Чтобы получить лицензию стандартного уровня вы должны быть не менее 40 уровня и иметь не больше 20% налога.")

	Talk( 6, "Юрий: Чтобы получить лицензию высшего уровня вы должны быть не менее 60 уровня и иметь не больше 10% налога.")

	Talk( 7, "Юрий: Текущий уровень налога вы можете увидеть на вашей торговой лицензии. Он влияет на стоимость покупки и продажи товара торговцам.")

	Talk( 8, "Юрий: Мая твая не панимать! " )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	InitGoods()
	SaleGoodsData(	0	,	4573	,	900	,	279	,	62	)
	SaleGoodsData(	0	,	4574	,	800	,	342	,	76	)
	SaleGoodsData(	1	,	4575	,	700	,	391	,	87	)
	SaleGoodsData(	1	,	4576	,	480	,	432	,	96	)
	SaleGoodsData(	2	,	4577	,	300	,	495	,	110	)
	SaleGoodsData(	2	,	4578	,	240	,	522	,	116	)
	SaleGoodsData(	3	,	4579	,	60	,	589	,	131	)
	SaleGoodsData(	3	,	4580	,	40	,	648	,	144	)
	BuyGoodsData(0,	4581	,	-1	,	542	,	121	)
	BuyGoodsData(0,	4583	,	-1	,	724	,	161	)
	BuyGoodsData(0,	4585	,	-1	,	846	,	188	)
	BuyGoodsData(0,	4587	,	-1	,	846	,	564	)
	BuyGoodsData(0,	4593	,	-1	,	1000	,	223	)
	BuyGoodsData(0,	4595	,	-1	,	938	,	625	)
	BuyGoodsData(0,	4597	,	-1	,	881	,	195	)
	BuyGoodsData(0,	4598	,	-1	,	878	,	195	)
	BuyGoodsData(0,	4600	,	-1	,	866	,	577	)
	BuyGoodsData(0,	4552	,	-1	,	642	,	143	)
	BuyGoodsData(0,	4553	,	-1	,	789	,	175	)
	BuyGoodsData(0,	4554	,	-1	,	934	,	207	)
	BuyGoodsData(0,	4556	,	-1	,	870	,	193	)
	BuyGoodsData(0,	4557	,	-1	,	970	,	215	)
	BuyGoodsData(0,	4560	,	-1	,	1056	,	235	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4566	,	-1	,	785	,	175	)
	BuyGoodsData(0,	4569	,	-1	,	1014	,	225	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)
	BuyGoodsData(0,	4547	,	-1	,	100	,	0	)
	BuyGoodsData(0,	4549	,	-1	,	500	,	0	)
	BuyGoodsData(0,	4548	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission ( 396 )
	AddNpcMission ( 530 )
	AddNpcMission ( 545 )
	AddNpcMission ( 546 )
	AddNpcMission ( 547 )
    AddNpcMission ( 572 )
	AddNpcMission	(5825)
	AddNpcMission	(5826)
end

function b_talk5()
	local ReSelectTalk = "Я должен подумать "
	local ReSelectPage = 1
	local CancelSelectTalk = "Забудь! Я остаюсь здесь "
	local CancelSelectPage = 7
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5
	Talk( 1, "Чун Ли: Я горжусь что не остался на небесах " )
	Text( 1, "В Аргент ", JumpPage, 2 )
	Text( 1, "В Шайтан ", JumpPage, 3 )
	Text( 1, "В Ледынь ", JumpPage, 4 )
	Text( 1, "Записать точку возвращения ", JumpPage, 5 )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 2, "Переместить в Аргент? Нет проблем. Стоимость 500 золотых! " )
	Text( 2, "Переместить ",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 3, "Переместить в Шайтан? Нет проблем. Стоимость 500 золотых! " )
	Text( 3, "Переместить ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 4, "Переместить в Ледынь? Нет проблем. Стоимость 500 золотых! " )
	Text( 4, "Переместить ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 5, "Чун Ли: Хотите записать точку возвращения в Веснограде? " )
	Text( 5, "Да, пожалуйста запишите. ", SetSpawnPos, "Spring Town" )
	Text( 5, "Нет, спасибо ",CloseTalk )

	Talk( 6, "Простите, но у вас недостаточно денег для телепортации " )

	Talk( 7, "Обратитесь ко мне если вновь потребуется помощь! ", CloseTalk )

	Talk( 8, "Чун Ли: Мая твая не панимать! " )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 397 )
	AddNpcMission ( 559 )

	MisListPage(8)

	AddNpcMission	(5827)
	AddNpcMission	(5828)	
end

function b_talk6()
	Talk( 1, "Фокус Покус: Привет! Я вижу сегодня вам улыбается удача! Я продам вам пиратское руководство всего за 500 золотых! " )
	Text( 1, "Мне надо 1 жребий удачи ", JumpPage, 2 )
	Text( 1, "Мне надо 1 жребий фортуны ", JumpPage, 3 )
	Text( 1, "Сделка со смертью ", JumpPage, 6 )

	Talk( 6, "Фокус Покус: Тьма это маска смерти. Что вы хотите выкупить? ")
	Text( 6, "Силуэт смерти ",JumpPage,7)
	Text( 6, "Проклятье ", JumpPage,8)
	Text( 6, "Душу ", JumpPage,9)

	Talk( 7, "Фокус Покус: 1 Меланхолия Барона-фантома, 1 Меланхолия Огненного демона, 1 Меланхолия Дикого зверя, 1 Меланхолия Тайрана, 1 Меланхолия Отчаяния, 1 Меланхолия Дракана и 1 Меланхолия Тидаля в обмен на 1 Силуэт смерти. ")
	Text( 7, "Обменять ",GetChaName_7, 1) 

	Talk( 8, "Фокус Покус: Добрый ребенок не будет идти вокруг проклятья других. ")
	Text( 8, "Проклятье Хардина ",JumpPage,11)
	Text( 8, "Проклятье Тьмы ", JumpPage,12)
	Text( 8, "Проклятье Бездны ", JumpPage,13)
	Text( 8, "Проклятье Абисса ", JumpPage,14)
	Text( 8, "Проклятье Стикса ", JumpPage,15)
	Text( 8, "Проклятье Асура ", JumpPage,16)

	Talk( 11, "Фокус Покус: 1 Волос смерти, 1 Зуб смерти, 1 Глаз смерти, 1 Сердце смерти и 1 Запечатанную душу Хардина в обмен на 1 проклятье Хардина. ")
	Text( 11, "Обменять ",GetChaName_8, 1) 

	Talk( 12, "Фокус Покус: 1 Волос смерти, 1 Зуб смерти, 1 Глаз смерти, 1 Сердце смерти и 1 Запечатанную душу Тьмы в обмен на 1 проклятье Тьмы. ")
	Text( 12, "Обменять ",GetChaName_9, 1)

	Talk( 13, "Фокус Покус: 1 Волос смерти, 1 Зуб смерти, 1 Глаз смерти, 1 Сердце смерти и 1 Запечатанную душу Бездны в обмен на 1 проклятье Бездны. ")
	Text( 13, "Обменять ",GetChaName_10, 1) 

	Talk( 14, "Фокус Покус: 1 Волос смерти, 1 Зуб смерти, 1 Глаз смерти, 1 Сердце смерти и 1 Запечатанную душу Абисса в обмен на 1 проклятье Абисса. ")
	Text( 14, "Обменять ",GetChaName_11, 1) 

	Talk( 15, "Фокус Покус: 1 Волос смерти, 1 Зуб смерти, 1 Глаз смерти, 1 Сердце смерти и 1 Запечатанную душу Стикса в обмен на 1 проклятье Стикса. ")
	Text( 15, "Обменять ",GetChaName_12, 1) 

	Talk( 16, "Фокус Покус: 1 Волос смерти, 1 Зуб смерти, 1 Глаз смерти, 1 Сердце смерти и 1 Запечатанную душу Асура в обмен на 1 проклятье Асура. ")
	Text( 16, "Обменять ",GetChaName_13, 1) 

	Talk( 9, "Фокус Покус: Я слышал душа человека весит меньше грамма... Интересно сколько весит душа смерти. ")
	Text( 9, "Душа Хардина ",JumpPage,17)
	Text( 9, "Душа Тьмы ", JumpPage,18)
	Text( 9, "Душа Бездны ", JumpPage,19)
	Text( 9, "Душа Абисса ", JumpPage,20)
	Text( 9, "Душа Стикса ", JumpPage,21)
	Text( 9, "Душа Асура ", JumpPage,22)
	Text( 9, "Душа Черного дракона ", JumpPage,23)

	Talk( 17, "Фокус Покус: 1 Силуэт смерти и 1 Проклятье Хардина в обмен на 1 Душу Хардина ")
	Text( 17, "Обменять ",GetChaName_14, 1) 

	Talk( 18, "Фокус Покус: 1 Силуэт смерти и 1 Проклятье Тьмы в обмен на 1 Душу Тьмы ")
	Text( 18, "Обменять ",GetChaName_15, 1) 

	Talk( 19, "Фокус Покус: 1 Силуэт смерти и 1 Проклятье Бездны в обмен на 1 Душу Бездны ")
	Text( 19, "Обменять ",GetChaName_16, 1)  

	Talk( 20, "Фокус Покус: 1 Силуэт смерти и 1 Проклятье Абисса в обмен на 1 Душу Абисса ")
	Text( 20, "Обменять ",GetChaName_17, 1)

	Talk( 21, "Фокус Покус: 1 Силуэт смерти и 1 Проклятье Стикса в обмен на 1 Душу Стикса ")
	Text( 21, "Обменять ",GetChaName_18, 1)

	Talk( 22, "Фокус Покус: 1 Силуэт смерти и 1 Проклятье Асура в обмен на 1 Душу Асура ")
	Text( 22, "Обменять ",GetChaName_19, 1) 

	Talk( 23, "Фокус Покус: 1 Душа Тьмы, 1 Душа Асура, 1 Душа Хардина, 1 Душа Бездны, 1 Душа Абисса, 1 Душа Стикса, 1 Силуэт смерти и 1 Смех Черного дракона в обмен на 1 Душу Черного дракона. ")
	Text( 23, "Обменять ",GetChaName_20, 1)

	Talk( 10, "У вас нет всех необходимых компонентов для обмена, или у вас недостаточно мест в инвентаре. Возможно также ваш инвентарь заблокирован. " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3086,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 2, "Жребий удачи? С вас 5000 золота! " )
	Text( 2, "Получить ",MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3087,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "Жребий фортуны? С вас 5000 золота! " )
	Text( 3, "Получить ",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 4, "Фокус Покус: Мая твая не панимать! " )

	Talk( 5, "У вас недостаточно денег, или у вас недостаточно мест в инвентаре. Возможно также ваш инвентарь заблокирован." )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 4 )

	AddNpcMission ( 520 )
    AddNpcMission ( 900 )
	AddNpcMission(	5065)
	AddNpcMission(	595	)
	AddNpcMission(	599	)
	AddNpcMission(	5000	)
	AddNpcMission(	5001	)
	AddNpcMission(	5002	)
	AddNpcMission(	5003 )
	AddNpcMission(	5066)
	AddNpcMission	(5829)
	AddNpcMission	(5830)	
end

function b_talk7()
	Talk( 1, "Санг Ди: Парни! Приготовтесь принимать гостей! " )
   	
	Talk( 2, "Санг Ди: Мая твая не панимать! " )
	InitTrade()
	Other(	1084	)
	Other(	1085	)
	Other(	1087	)
	Other(	1088	)
	Other(	1089	)
	Other(	1090	) 
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 392 )
	AddNpcMission ( 514 )
	AddNpcMission ( 516 )
	AddNpcMission ( 527 )
	AddNpcMission ( 528 )
	AddNpcMission ( 529 )
	AddNpcMission ( 548 )
	AddNpcMission ( 550 )
	AddNpcMission ( 551 )
    AddNpcMission ( 558 )
    AddNpcMission ( 571 )
	AddNpcMission(	592	)
	AddNpcMission(	5004	)
	AddNpcMission(	5005	)
	AddNpcMission(	5006	)
	AddNpcMission(	5007	)
	AddNpcMission(	5008	)
	AddNpcMission(	5043	)
	AddNpcMission(	5054	)
	AddNpcMission(	5055	)
	AddNpcMission	(5831)
	AddNpcMission	(5832)
end

function b_talk8()
	Talk( 1, "Шуанг: Починка корабля? Заправка? ЧТо вам угодно? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 13 )
	TriggerAction( 1, LuanchBerthList, 13, 3426, 2575, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, RepairBerthList, 13 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, SupplyBerthList, 13 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 13 )
	TriggerAction( 1, SalvageBerthList, 13 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Простите, но у вас в этом порту не записано судно! " )

	Talk( 4, "Простите, я ремонтирую лишь суда приписанные к этому порту. Стоимость 1000 золотых! " )

	Talk( 5, "Простите, но я заправляю суда лишь приписанные к этому порту. Стоимость 500 золотых! " )

	Talk( 6, "Простите, но я востанавливаю суда лишь приписанные к этому порту. Стоимость 1000 золотых! " )

	Talk( 7, "Шуанг: Мая твая не панимать! " )

	AddNpcMission ( 398 )
	AddNpcMission ( 565 )
	AddNpcMission	(5833)
	AddNpcMission	(5834)
end

function b_talk9()
	Talk( 1, "Ванг Мо: Вы хотите что то оставить на хранение? " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Хранилище (200 золотых)", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "Простите, но у вас недостаточно денег для доступа к банку! " )

	Talk( 3, "Ванг Мо: Мая твая не панимать! " )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 399 )
	AddNpcMission ( 510 )
	AddNpcMission ( 511 )
	AddNpcMission ( 512 )
	AddNpcMission ( 513 )
	AddNpcMission ( 543 )
	AddNpcMission ( 544 )
    AddNpcMission ( 570 )
	AddNpcMission	(5839)
	AddNpcMission	(5840)
end

function b_talk10()
	Talk( 1, "Жао: Я так голоден! Когда же наконец обед? " )
	Talk( 2, "Жао: Мая твая не панимать! " )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
	AddNpcMission	(5835)
	AddNpcMission	(5836)
end

function b_talk11()
	Talk( 1, "Жоу: Один плюс один равняется двум? Или не двум? Не обращайте внимание, я говорю сам с собой. " )

	Talk( 2, "Жоу: Мая твая не панимать! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
	AddNpcMission ( 531 )
	AddNpcMission ( 532 )
	AddNpcMission ( 533 )
	AddNpcMission ( 534 )
	AddNpcMission	(5837)
	AddNpcMission	(5838)
end

function b_talk12()
	Talk( 1, "Клауд: Вы встречали Мисти? Она моя девушка! " )

	Talk( 2, "Клауд: Мая твая не панимать! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 533 )
	AddNpcMission ( 563 )
	AddNpcMission	(5841)
	AddNpcMission	(5842)
end

function b_talk13()
	Talk( 1, "Мисти: Вы встречали Клауда? Он мой парень!" )

	Talk( 2, "Мисти: Мая твая не панимать! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
	AddNpcMission	(5843)
	AddNpcMission	(5844)
end

function b_talk14()
	Talk( 1, "Билл: Проблема? Какая проблема? Я зарабатываю миллионы каждую секунду! Не тревожьте меня!" )

	Talk( 2, "Билл: Мая твая не панимать! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
    
	AddNpcMission ( 568 )
	AddNpcMission	(5847)
	AddNpcMission	(5848)
end

function b_talk15()
	Talk( 1, "Ванг Ронг: Я не разбираюсь в военном искусстве. Пожалуйста не измывайтесь надо мной... " )

	Talk( 2, "Ванг Ронг: Мая твая не панимать! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(5845)
	AddNpcMission	(5846)
end

function b_talk16()
	Talk( 1, "Якамото: Разве вы не видете что мы грабители? " )

	Talk( 2, "Якамото: Мая твая не панимать! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(5641)
	AddNpcMission	(5642)
	AddNpcMission	(5849)
	AddNpcMission	(5850)
end

function b_talk17()
	Talk( 1, "Парикмахер: Нужна помощь? " )
	Text( 1, "Я хочу сменить прическу ", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "Парикмахер: Вы желаете сменить прическу? Вам потребуется Парикмахерская расписка! ")
	Text( 2, "Да, я знаю ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Нет, спасибо ", CloseTalk )

	Talk( 3, "Парикмахер: У вас нет расписки, я не могу сменить прическу! ")

	Talk( 4, "Парикмахер: Мая твая не панимать! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(6003)
	AddNpcMission	(6004)
	AddNpcMission	(6005)
	AddNpcMission	(6006)
	AddNpcMission	(6007)
	AddNpcMission	(6008)
	AddNpcMission	(6009)
	AddNpcMission	(5851)
	AddNpcMission	(5852)
end

function b_talk18()
	Talk( 1, "Хамми: Уууууу " )

	Talk( 2, "Хамми: Мая твая не панимать! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 515 )
	AddNpcMission ( 518 )
	AddNpcMission ( 524 )
end

function b_talk21()
	local ReSelectTalk = "Я должен подумать "
	local ReSelectPage = 1
	local CancelSelectTalk = "Забудь! Я остаюсь здесь. "
	local CancelSelectPage = 5
	local CurMapName = "eastgoaf"
	local GoTo01X = 767
	local GoTo01Y = 602
	local GoTo01M = CurMapName
	Talk( 1, "Защитная статуя: Богиней запечатана сама смерть внутри меня! " )
	Text( 1, "Перейти в Логово Дракона 2 ", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 179,1 )
	TriggerCondition( 1, HasItem, 3084,1 )
	TriggerCondition( 1, HasItem, 3085,1 )
	TriggerAction( 1, TakeItem, 179,1 )
	TriggerAction( 1, TakeItem, 3084,1 )
	TriggerAction( 1, TakeItem, 3085,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Для перемещения в Логово Дракона 2 необходимо 1 Печать Анубиса, 1 Маску короля мумий и 1 Вечный двигатель! " )
	Text( 2, "Переместить ",MultiTrigger, GetMultiTrigger(), 2 )  
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 3, "Защитная статуя: Мая твая не панимать! " )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 3 )
	Talk( 4, "Простите, но у вас нет всех 3 необходимых предмета! " )

	Talk( 5, "Ищите меня снова если решите войти в логово смерти! ", CloseTalk )
end

function b_talk22()
	local ReSelectTalk = "Я должен подумать "
	local ReSelectPage = 1
	local CancelSelectTalk = "Забудь! Я остаюсь здесь. "
	local CancelSelectPage = 4
	local CurMapName = "eastgoaf"
	local GoTo01X = 847
	local GoTo01Y = 247
	local GoTo01M = CurMapName
	Talk( 1, "Защитная статуя: Богиня запечатала саму смерть внутри меня! " )
	Text( 1, "Перейти в Логово Дракона 1 !", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, "Вы точно хотите выйти? " )
	Text( 2, "Переместить ",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 3, "Защитная статуя: Мая твая не панимать! " )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 3 )
	Talk( 4, "Найдите меня снова если решите выйти ", CloseTalk )
end

function b_talk23()
	local CurMapName = "eastgoaf"
	local GoTo01X = 772
	local GoTo01Y = 722
	local GoTo01M = CurMapName
	InitTrigger()
	TriggerCondition( 1, HasItem, 182,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "Защитная статуя: Богиней запечатана сама смерть внутри меня! " )
	Text( 1, "Перейти в Логово Дракона 3 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 4, "Проход запечатан. Вам необходим Ключ Дракона чтобы пройти!" )
end

function b_talk24()
	InitTrigger()
	TriggerCondition( 1, HasItem, 182, 1 )
	TriggerAction( 1, TakeItem, 182, 1 )
	TriggerAction( 1, AddMoney, 10000000 )
	TriggerAction(1, GiveItem, 0266, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "Это таинственный сундук и кажется он заперт... " )
	Text( 1, "Открыть ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "Не могу открыть! Кажется нужен ключ... " )
end
--------------------------------------------------------------------------------------------------------------------
--													b_talk (Конец)												  --
--------------------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------------------
--													l_talk (Начало)												  --
--------------------------------------------------------------------------------------------------------------------
function l_talk01()
	Talk(1, "Джек Воробей и я были здесь почти месяц, но не сумели найти выход... И я не знаю где мой любимый теперь. Я ненавижу это место! ")
	AddNpcMission(894)
	AddNpcMission(487)
	AddNpcMission(504)
	AddNpcMission(508)
	AddNpcMission(509)
	AddNpcMission(573)
	AddNpcMission(581)
	AddNpcMission(582)
	AddNpcMission(583)
end

function l_talk02()
	Talk(1, "Ходят слухи что Барбороса получил свою силу из за проклятья! Здесь больше не безопасно, и эти монстры далеко не вегетарианцы. Будь осторожен! ")
	AddNpcMission(895)
	AddNpcMission(896)
	AddNpcMission(482)
	AddNpcMission(485)
	AddNpcMission(486)
	AddNpcMission(574)
	AddNpcMission(575)
	AddNpcMission(584)
	AddNpcMission(585)
	AddNpcMission(586)
	AddNpcMission	(5676)
end

function l_talk03()
	Talk(1, "Проклятый Джек! Если бы он не украл наше военное судно, то я бы не оказался в этой адской бездне! ")
	AddNpcMission(897)
	AddNpcMission(898)
	AddNpcMission(899)
	AddNpcMission(476)
	AddNpcMission(479)
	AddNpcMission(480)
	AddNpcMission(481)
	AddNpcMission(576)
	AddNpcMission(577)
	AddNpcMission(578)
	AddNpcMission(589)
	AddNpcMission(590)
end

function l_talk04()
	Talk( 1, "Где я? Как я оказалась здесь? О Марк! ...Плач... ")
	Text( 1, "Торг ", BuyPage )
	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission(505)
	AddNpcMission(506)
	AddNpcMission(507)
	AddNpcMission(579)
	AddNpcMission(580)
	AddNpcMission(587)
	AddNpcMission(588)
	AddNpcMission(591)
	AddNpcMission	(5573)
	AddNpcMission	(5574)
	AddNpcMission	(5661)
	AddNpcMission	(5662)
	AddNpcMission( 6171 )
	AddNpcMission( 6172 )
end
--------------------------------------------------------------------------------------------------------------------
--													l_talk (Конец)												  --
--------------------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------------------
--													mmm_talk (Начало)											  --
--------------------------------------------------------------------------------------------------------------------
function mmm_talk06()
	Talk( 1, "Пенни: Желаете отправиться в путь? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 650,999, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Простите, но в этом порту нет вашего судна! " )
	Talk( 4, "Простите, но я ремонтирую суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 5, "Простите, но я заправляю суда лишь приписанные к этому порту! Стоимость 200 золотых. " )
	Talk( 6, "Простите, но я восстанавливаю суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 7, "Пенни: Мая твая не панимать! " )
end

function mmm_talk05()
	Talk( 1, "Кэтчи: Вы хотите отправиться в плавание? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 625,925, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Простите, но в этом порту нет вашего судна! " )
	Talk( 4, "Простите, но я ремонтирую суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 5, "Простите, но я заправляю суда лишь приписанные к этому порту! Стоимость 200 золотых. " )
	Talk( 6, "Простите, но я восстанавливаю суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 7, "Кэтчи: Мая твая не панимать! " )
end

function mmm_talk07()
	Talk( 1, "Командующий портом: Вы хотите отправиться в плавание? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 620,628, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Простите, но в этом порту нет вашего судна! " )
	Talk( 4, "Простите, но я ремонтирую суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 5, "Простите, но я заправляю суда лишь приписанные к этому порту! Стоимость 200 золотых. " )
	Talk( 6, "Простите, но я восстанавливаю суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 7, "Командующий портом: Мая твая не панимать! " )
end

function mmm_talk08()
Talk( 1, "Таинственный моряк: Вы хотите отправиться в плавание? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 380,161, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Простите, но в этом порту нет вашего судна! " )
	Talk( 4, "Простите, но я ремонтирую суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 5, "Простите, но я заправляю суда лишь приписанные к этому порту! Стоимость 200 золотых. " )
	Talk( 6, "Простите, но я восстанавливаю суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 7, "Таинственный моряк: Мая твая не панимать! " )
end

function mmm_talk09()
	Talk( 1, "Командующий портом: Вы хотите отправиться в плавание? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1070,212, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Простите, но в этом порту нет вашего судна! " )
	Talk( 4, "Простите, но я ремонтирую суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 5, "Простите, но я заправляю суда лишь приписанные к этому порту! Стоимость 200 золотых. " )
	Talk( 6, "Простите, но я восстанавливаю суда лишь приписанные к этому порту! Стоимость 1000 золотых. " )
	Talk( 7, "Командующий портом: Мая твая не панимать! " )
end

function mmm_talk10()
	Talk( 1, "Забу: Здравствуйте! Я местный фрахтовщик. Могу я чем то помочь? " )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить кристаллы ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Забу: Протите, но у вас нет судна в этом порту! " )
end

function mmm_talk11()
	local CurMapName = "jialebi" 
	local GoTo01X = 190
	local GoTo01Y = 815
	local GoTo01M = CurMapName
	InitTrigger()
	TriggerCondition( 1, HasItem, 2438,20 )
	TriggerCondition( 1, HasItem, 2419,15 )
	TriggerCondition( 1, HasItem, 2386,15 )
	TriggerAction( 1, TakeItem, 2438,20 )
	TriggerAction( 1, TakeItem, 2419,15 )
	TriggerAction( 1, TakeItem, 2386,15 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "Портальщик Абаддона: Вы хотите войти в Абаддон? Будьте готовы принести мне 20 Золотых монет, 15 Пиратских костей и 20 Душ нежити. " )
	Text( 1, "Войти в Абаддон 1 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 4, "Возвращайтесь как соберете все предметы! " )
	AddNpcMission	(5593)
	AddNpcMission	(5594)
end

function mmm_talk12()
	local CurMapName = "jialebi" 
	local GoTo01X = 1604
	local GoTo01Y = 906
	local GoTo01M = CurMapName
	Talk( 1, "Небесный портальщик: Я посыльный Богини. Вы должны пройти через меня, чтобы попасть на Небеса! Там Богиня вознаградит вас в зависимости от вашей чести. Больше честь - выше награда! " )
	Text( 1, "Я прошел через Ад! ", JumpPage, 2 )
	Text( 1, "Я получил Покровительство Богини ", JumpPage, 3 )
	Text( 1, "Я слышал у вас есть нечто полезное? ", JumpPage, 7 )
	InitTrigger()
	TriggerCondition( 1, HasItem, 2488,1 )
	TriggerCondition( 1, HasItem, 2489,1 )
	TriggerCondition( 1, HasItem, 2490,1 )
	TriggerCondition( 1, HasItem, 2436,1 )
	TriggerAction( 1, TakeItem, 2488,1 )
	TriggerAction( 1, TakeItem, 2489,1 )
	TriggerAction( 1, TakeItem, 2490,1 )
	TriggerAction( 1, TakeItem, 2436,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Небесный портальщик: Хотите войти на Небеса? Тогда вы должны собрать 1 Кость мумии, 1 Душу мертвого солдата, 1 Сердце фараона и 1 Святую библию! " )
	Text( 2, "Я хочу войти на Небеса! ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasItem, 0938,1 )
	TriggerAction( 1, TakeItem, 0938,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "Небесный портальщик: У вас есть Покровительство Богини? Тогда не смею вас задерживать! " )
	Text( 3, "Я хочу войти на Небеса! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "Узнать о Покровительстве Богини ", JumpPage, 6 )

	Talk( 4, "Возвращайся как соберешь все нужные предметы! " )

	Talk( 5, "У тебя нет покровительства Богини! " )

	Talk( 6, "Богиней было оставлено покровительство на земле, чтобы игроки могли войти на Небеса!" )
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 2386, 10 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, TakeItem, 2386, 10 )
	TriggerAction( 1, GiveItem, 0271, 1, 4 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 7, "Небесный портальщик: Ангельские кости - сокровище оставленное Богиней. Вы получите его в обмен на 10 Душ нежити и 5 рун Кэль. " )
	Text( 7, "Получить Ангельские кости ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "Возвращайся как соберешь все нужные предметы! " )
	AddNpcMission	(5595)
	AddNpcMission	(5596)
	AddNpcMission ( 6056 )
	AddNpcMission ( 6057 )
	AddNpcMission ( 6058 )
	AddNpcMission ( 6059 )
	AddNpcMission ( 6060 )
	AddNpcMission	(5726)
	AddNpcMission	(5727)
end

function mmm_talk13()
	Talk( 1, "Растерянный исследователь A: У меня есть кое что для вас. Желаете взглянуть?" )
	Text( 1, "Получить вещи из таинственного набора", JumpPage, 2)

	Talk( 2, "Растерянный исследователь A: Эти замечательные вещи так же известны как Набор Цунами!" )
	Text( 2, "Выкупить Таинственный доспех (Ланс Воитель)", JumpPage, 3)
	Text( 2, "Выкупить Таинственные перчатки (Ланс Воитель)", JumpPage, 4)
	Text( 2, "Выкупить Таинственные сапоги (Ланс Воитель)", JumpPage, 5)
	Text( 2, "Выкупить Дракан (Ланс Воитель)", JumpPage, 6)

	Talk( 3, "Растерянный исследователь A: Чтобы получить Таинственный Доспех необходимо: 1 Личина камня пелены, 30 Радужных Фруктов, 20 Кож животного, 10 Блестящей ткани и 100000 золота ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2467, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2467, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0396, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Получить Таинственный Доспех", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Растерянный исследователь A: Чтобы получить Таинственные Перчатки необходимо: 1 Чернильный камень, 30 Радужных Фруктов, 20 Тяжелых панцирей, 10 Частей элемента земли и 50000 золота ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2473, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2473, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0588, 1 , 4)
	TriggerFailure( 1, JumpPage, 7)
	Text( 4, "Получить Таинственные Перчатки", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "Растерянный исследователь A: Чтобы получить Таинственные Сапоги необходимо: 1 Тень-камень миражей, 30 Радужных фруктов, 20 Особого газа, 10 Жемчужин и 50000 золота ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0748, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "Получить Таинственные Сапоги", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Растерянный исследователь A: Чтобы получить Дракан необходимо: 1 Демонический рудный камень, 30 Кристаллов агата, 20 Расширителей, 10 Волшебных костей и 100000 золота ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2463, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2463, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0114, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "Получить Дракан", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "Растерянный исследователь A: Извини, но на данный момент у тебя нет необходимых предметов чтобы совершить обмен ")
end

function mmm_talk14()
	Talk( 1, "Растерянный исследователь B: У меня есть кое что для вас. Желаете взглянуть?" )
	Text( 1, "Получить вещи из Олимпийского набора ", JumpPage, 2)

	Talk( 2, "Растерянный исследователь В: Эти замечательные вещи так же известны как Набор Олимпа!" )
	Text( 2, "Выкупить Олимпийский доспех (Карциз Чемпион)", JumpPage, 3)
	Text( 2, "Выкупить Рукавицы Олимпа (Карциз Чемпион)", JumpPage, 4)
	Text( 2, "Выкупить Поножи Олимпа (Карциз Чемпион)", JumpPage, 5)
	Text( 2, "Выкупить Колосс (Карциз Чемпион)", JumpPage, 6)

	Talk( 3, "Растерянный исследователь B: Чтобы получить Олимпийский доспех необходимо: 1 Мифический огненный камень, 30 Волшебных ветвей, 20 Кож животного, 10 Блестящих тканей и 100000 золота ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0398, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Получить Олимпийский доспех ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Растерянный исследователь B: Чтобы получить Рукавицы Олимпа необходимо: 1 Радужный камень истины, 30 Волшебных ветвей, 20 Тяжелых панцирей, 10 Частей элемента земли и 50000 золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0604, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "Получить Рукавицы Олимпа ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "Растерянный исследователь B: Чтобы получить Поножи Олимпа необходимо: 1 Духовный рудный камень, 30 Волшебных ветвей, 20 Особых газа, 10 Жемчужин и 50000 золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2484, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2484, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0830, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "Получить Поножи Олимпа ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Растерянный исследователь B: Чтобы получить Колосс необходимо: 1 Тающий огненный камень, 30 Кристаллов агата, 20 Расширителей, 10 Волшебных костей и 100000 золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2464, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2464, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0116, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "Получить Колосс ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "Растерянный исследователь B: Извини, но на данный момент у тебя нет необходимых предметов чтобы совершить обмен ")
end

function mmm_talk15()
	Talk( 1, "Растерянный исследователь C: У меня есть кое что для вас. Желаете взглянуть?" )
	Text( 1, "Выкупить набор Повелителя Драконов ", JumpPage, 2)
	Text( 1, "Выкупить набор Цунами ", JumpPage, 9)

	Talk( 2, "Растерянный исследователь C: Эти замечательные вещи так же известны как Набор Олимпа!" )
	Text( 2, "Выкупить Костюм повелителя драконов (Ами Покоритель Морей)", JumpPage, 3)
	Text( 2, "Выкупить Перчатки повелителя драконов (Ами Покоритель Морей)", JumpPage, 4)
	Text( 2, "Выкупить Сапоги повелителя драконов (Ами Покоритель Морей)", JumpPage, 5)
	Text( 2, "Выкупить Шлем повелителя драконов (Ами Покоритель Морей)", JumpPage, 6)
	Text( 2, "Выкупить Расщепленная душа (Ами Покоритель Морей)", JumpPage, 7)

	Talk(3,"Растерянный исследователь C: Чтобы получить Костюм повелителя драконов необходимо: 1 Изящный камень зверя, 30 Радужных стакана, 20 Кож животного, 10 Блестящей ткани и 100000 золота")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0413, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Получить Костюм повелителя драконов", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Растерянный исследователь C: Чтобы получить Перчатки повелителя драконов необходимо: 1 Зубной камень зверя, 30 Радужных стакана, 20 Тяжелых панцирей, 10 Части элемента земли и 50000 золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2477, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2477, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0602, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Получить Перчатки повелителя драконов", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "Растерянный исследователь C: Чтобы получить Сапоги повелителя драконов необходимо: 1 Рудный камень кадавра, 30 Радужных стаканов, 20 Особого газа, 10 Жемчужин и 50000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2483, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2483, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0824, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Получить Сапоги повелителя драконов", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Растерянный исследователь C: Чтобы получить Шлем повелителя драконов необходимо: 1 Отталкивающий камень зверей, 30 Радужных стаканов, 20 Животворных каменей, 10 Метеоритов и 50000 золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2487, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2487, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 2223, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Получить Шлем повелителя драконов", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "Растерянный исследователь C: Чтобы получить Расщепленная душа необходимо: 1 Слезный камень истины, 30 Кристаллов агата, 20 Расширителей, 10 Волшебных костей и 100000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2466, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2466, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0151, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Получить Расщепленная душа", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "Растерянный исследователь C: Извини, но на данный момент у тебя нет необходимых предметов чтобы совершить обмен ")

	Talk( 9, "Растерянный исследователь C: Эти замечательные вещи так же известны как Набор Цунами!" )
	Text( 9, "Выкупить Мантия цунами (Ланс, Филлис Покоритель Морей)", JumpPage, 10)
	Text( 9, "Выкупить Перчатки цунами (Ланс, Филлис Покоритель Морей)", JumpPage, 11)
	Text( 9, "Выкупить Башмаки цунами (Ланс, Филлис Покоритель Морей)", JumpPage, 12)
	Text( 9, "Выкупить Расщепленная душа (Ланс, Филлис Покоритель Морей)", JumpPage, 7)

	Talk( 10, "Растерянный исследователь C: Чтобы получить Мантию цунами необходимо: 1 Изящный камень зверя, 30 Кристаллов агата, 20 Кож животного, 10 Части элемента земли и 100000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0411, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Получить Мантию цунами", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "Растерянный исследователь C: Чтобы получить Перчатки цунами необходимо: 1 Нефрит Зеста, 30 Кристаллов кварца, 20 Расширителей, 10 Части элемента земли и 50000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0600, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "Получить Перчатки цунами ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "Растерянный исследователь C: Чтобы получить Башмаки цунами необходимо: 1 Тень-камень миражей, 30 Кристаллов агата, 20 Животворных каменей, 10 Части элемента земли и 50000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0760, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Получить Башмаки цунами ", MultiTrigger, GetMultiTrigger(), 1)
end

function mmm_talk26()
	Talk( 1, "Растерянный исследователь D: У меня есть кое что для вас. Желаете взглянуть?" )
	Text( 1, "Выкупить набор Рыбной Феи ", JumpPage, 2)
	Text( 1, "Выкупить набор феи ", JumpPage, 9)

	Talk( 2, "Растерянный исследователь D: Эти замечательные вещи так же известны как Набор Рыбной Феи!" )
	Text( 2, "Выкупить Костюм рыбной феи (Ами Целитель)", JumpPage, 3)
	Text( 2, "Выкупить Перчатки рыбной феи (Ами Целитель)", JumpPage, 4)
	Text( 2, "Выкупить Башмаки рыбной феи (Ами Целитель)", JumpPage, 5)
	Text( 2, "Выкупить Шапочка рыбной феи (Ами Целитель)", JumpPage, 6)
	Text( 2, "Выкупить Посох уважения (Ами Целитель)", JumpPage, 7)

	Talk( 3, "Растерянный исследователь D: Чтобы получить Костюм рыбной феи необходимо: 1 Ссохшийся деб-камень, 30 Осколков животворного камня, 20 Кож животного, 10 Блестящих тканей и 100000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2471, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2471, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0408, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Получить Костюм рыбной феи ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Растерянный исследователь D: Чтобы получить Перчатки рыбной феи необходимо: 1 Темный камень истины, 30 Осколков животворного камня, 20 Тяжелых панцирей, 10 Части элемента земли и 50000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0598, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Получить Перчатки рыбной феи ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "Растерянный исследователь D: Чтобы получить Башмаки рыбной феи необходимо: 1 Жемчужный камень истины, 30 Осколков животворного камня, 20 Особого газа, 10 Жемчужин и 50000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0758, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Получить Башмаки рыбной феи ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Растерянный исследователь D: Чтобы получить Шапочка рыбной феи необходимо: 1 Океанский струнный камень, 30 Осколков животворного камня, 20 Животворных каменей, 10 Метеоритов и 50000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2486, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2486, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 2221, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Получить Шапочка рыбной феи ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "Растерянный исследователь D: Чтобы получить Посох уважения необходимо: 1 Божественный аргиллит, 30 Кристаллов агата, 20 Расширителей, 10 Волшебных костей и 100000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2461, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2461, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0110, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Получить Посох уважения ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "Растерянный исследователь D: Извини, но на данный момент у тебя нет необходимых предметов чтобы совершить обмен ")

	Talk( 9, "Растерянный исследователь D: Эти замечательные вещи так же известны как набор Феи!" )
	Text( 9, "Выкупить Халат феи (Филлис Целитель)", JumpPage, 10)
	Text( 9, "Выкупить Сказочные перчатки (Филлис Целитель)", JumpPage, 11)
	Text( 9, "Выкупить Башмачки феи (Филлис Целитель)", JumpPage, 12)
	Text( 9, "Выкупить Посох уважения (Филлис Целитель)", JumpPage, 7)

	Talk(10,"Растерянный исследователь D: Чтобы получить Халат феи необходимо: 1 Мифический огненный камень, 30 Осколков животворного камня, 20 Животворных каменей, 10 Жемчужин и 100000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0406, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Получить Выкупить Халат феи ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "Растерянный исследователь D: Чтобы получить Сказочные перчатки необходимо: 1 Темный камень истины, 30 Кристаллов агата, 20 Кож животного, 10 Блестящих тканей и 50000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0596, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "Получить Сказочные перчатки ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "Растерянный исследователь D: Чтобы получить Башмачки феи необходимо: 1 Слезный камень богини, 30 Осколков животворного камня, 20 Животворных каменей, 10 Жемчужин и 50000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0756, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Получить Башмачки феи ", MultiTrigger, GetMultiTrigger(), 1)
end

function mmm_talk27()
	Talk( 1, "Растерянный исследователь E: У меня есть кое что для вас. Желаете взглянуть?" )
	Text( 1, "Выкупить набор Загадочной Панды ", JumpPage, 2)
	Text( 1, "Выкупить набор Мудреца ", JumpPage, 9)

	Talk( 2, "Растерянный исследователь E: Эти замечательные вещи так же известны как набор Загадочной Панды!" )
	Text( 2, "Выкупить Костюм загадочной панды (Ами Колдунья)", JumpPage, 3)
	Text( 2, "Выкупить Перчатки загадочной панды (Ами Колдунья)", JumpPage, 4)
	Text( 2, "Выкупить Башмаки загадочной панды (Ами Колдунья)", JumpPage, 5)
	Text( 2, "Выкупить Мистическая шапочка панды  (Ами Колдунья)", JumpPage, 6)
	Text( 2, "Выкупить Малиновая ветвь (Ами Колдунья)", JumpPage, 7)

	Talk( 3, "Растерянный исследователь E: Чтобы получить Костюм загадочной панды необходимо: 1 Мутный Нефрит, 30 Кристаллов кварца, 20 Кож животного, 10 Блестящих тканей и 100000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0404, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Получить Костюм загадочной панды ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Растерянный исследователь E: Чтобы получить Перчатки загадочной панды необходимо: 1 Камень мира, 30 Кристаллов кварца, 20 Тяжелых панцирей, 10 Части элемента земли и 50000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2475, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2475, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0594, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Получить Перчатки загадочной панды ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "Растерянный исследователь E: Чтобы получить Башмаки загадочной панды необходимо: 1 Кристалл сионского камня, 30 Кристаллов кварца, 20 Особого газа, 10 Жемчужин и 50000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2481, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2481, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0754, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Получить Башмаки загадочной панды ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Растерянный исследователь E: Чтобы получить Мистическую шапочку панды необходимо: 1 Небесный тень-камень, 30 Кристаллов кварца, 20 Животворных каменей, 10 Метеоритов и 50000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2485, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2485, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2219, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Получить Мистическую шапочку панды ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "Растерянный исследователь E: Чтобы получить Малиновую ветвь необходимо: 1 Потертый рудный камень, 30 Кристаллов агата, 20 Расширителей, 10 Волшебных костей и 100000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2462, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2462, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0112, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Получить Малиновую ветвь ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "Растерянный исследователь E: Извини, но на данный момент у тебя нет необходимых предметов чтобы совершить обмен ")

	Talk( 9, "Растерянный исследователь E: Эти замечательные вещи так же известны как набор Мудреца!" )
	Text( 9, "Выкупить Плащ мудреца (Филлис Колдунья)", JumpPage, 10)
	Text( 9, "Выкупить Перчатки мудреца (Филлис Колдунья)", JumpPage, 11)
	Text( 9, "Выкупить Сапоги мудреца (Филлис Колдунья)", JumpPage, 12)
	Text( 9, "Выкупить Малиновую ветвь (Филлис Колдунья)", JumpPage, 7)

	Talk( 10, "Растерянный исследователь E: Чтобы получить Плащ мудреца необходимо: 1 Мутный Нефрит, 30 Кристаллов кварца, 20 Тяжелых панцирей, 10 Блестящих тканей и 100000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0402, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Получить Плащ мудреца ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "Растерянный исследователь E: Чтобы получить Перчатки мудреца необходимо: 1 Радужный камень истины, 30 Осколков животворного камня, 20 Расширителей, 10 Жемчужин и 50000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0592, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "Получить Перчатки мудреца ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "Растерянный исследователь E: Чтобы получить Сапоги мудреца необходимо: 1 Жемчужный камень истины, 30 Кристаллов агата, 20 Кож животного, 10 Волшебных костей и 50000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0752, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Получить Сапоги мудреца ", MultiTrigger, GetMultiTrigger(), 1)
end

function mmm_talk28()
	Talk( 1, "Растерянный исследователь F: У меня есть кое что для вас. Желаете взглянуть?" )
	Text( 1, "Выкупить набор Аполлона ", JumpPage, 2)

	Talk( 2, "Растерянный исследователь F: Эти замечательные вещи так же известны как набор Аполлона!" )
	Text( 2, "Выкупить Камзол Аполлона (Ланс, Филлис Стрелок)", JumpPage, 3)
	Text( 2, "Выкупить Перчатки Аполлона (Ланс, Филлис Стрелок)", JumpPage, 4)
	Text( 2, "Выкупить Сапоги Аполлона (Ланс, Филлис Стрелок)", JumpPage, 5)
	Text( 2, "Выкупить Сумерки (Ланс, Филлис Стрелок)", JumpPage, 6)

	Talk(3,"Растерянный исследователь F: Чтобы получить Камзол Аполлона необходимо: 1 Кровавый камень Хирво, 30 Проясняющих кристалла, 20 Кож животного, 10 Блестящих тканей и 100000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2469, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2469, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0400, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Получить Камзол Аполлона ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Растерянный исследователь F: Чтобы получить Перчатки Аполлона необходимо: 1 Нефрит Зеста, 30 Проясняющих кристалла, 20 Тяжелых панцирей, 10 Части элемента земли и 50000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0590, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "Получить Перчатки Аполлона ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "Растерянный исследователь F: Чтобы получить Сапоги Аполлона необходимо: 1 Слезный камень богини, 30 Проясняющих кристалла, 20 Особого газа, 10 Жемчужин и 50000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0750, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "Получить Сапоги Аполлона ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Растерянный исследователь F: Чтобы получить Сумерки необходимо: 1 Океанский Камень душ, 30 Кристаллов агата, 20 Расширителей, 10 Волшебных костей и 100000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2465, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2465, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0118, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "Получить Сумерки ", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Растерянный исследователь F: Извини, но на данный момент у тебя нет необходимых предметов чтобы совершить обмен ")
end

function mmm_talk16()
	local CurMapName = "jialebi"
	local GoTo01X = 1250
	local GoTo01Y = 1010
	local GoTo01M = CurMapName
	Talk( 1, "Портальщик на суше: Хотите узнать, что находится внизу? Заплати мне 5000 Золотых и я дам тебе пройти!" )
	Text( 1, "Вот! Держи свои деньги.", JumpPage, 2 )
	Text( 1, "Я не стану тебе платить!", JumpPage, 3 )
	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Портальщик на суше: Проход ведет в док Мертвых Душ. Достаточно ли ты храбр, чтобы войти?" )
	Text( 2, "Подтвердить.", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "Портальщик на суше: Уйди нищий!" )
	Talk( 4, "Портальщик на суше: У Вас недостаточно золота.", CloseTalk)
end

function mmm_talk17()
	local CurMapName = "jialebi"
	local GoTo01X = 968
	local GoTo01Y = 828
	local GoTo01M = CurMapName
	Talk( 1, "Хранитель исследований A: Хотите узнать, что там внутри? Заплати мне 5000 Золотых и я дам тебе пройти!" )
	Text( 1, "Вот! Держи свои деньги.", JumpPage, 2 )
	Text( 1, "Забудь! Я не стану платить.", JumpPage, 3 )
	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Хранитель исследований A: Проход ведет в док Мертвых Душ. Достаточно ли ты храбр, чтобы войти?" )
	Text( 2, "Исследовать комнату А! ", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "Хранитель исследований A: Уйди нищий!" )
	Talk( 4, "Хранитель исследований A: У Вас недостаточно золота.", CloseTalk)
end

function mmm_talk18()
	local CurMapName = "jialebi"
	local GoTo01X = 968
	local GoTo01Y = 906
	local GoTo01M = CurMapName
	Talk( 1, "Хранитель исследований B: Вы хотите знать, что там внутри? Принесите мне 20 Душ Нежити и я пропущу вас." )
	Text( 1, "Дай пройти.", JumpPage, 2 )
	Text( 1, "Забудь об этом! Я не хочу идти.", JumpPage, 3 )
	InitTrigger()
	TriggerCondition( 1, HasItem, 2386, 20 )
	TriggerAction( 1, TakeItem, 2386, 20 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Хранитель исследований B: Этот путь ведет к Командиру Мертвых Душ. Вы все еще хотите войти?" )
	Text( 2, "Исследовать комнату В!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Хранитель исследований B: Уйди отсюда трус!" )
	Talk( 4, "Хранитель исследований B: У тебя нет 20 Душ Нежити.", CloseTalk)
end

function mmm_talk19()
	local CurMapName = "jialebi"
	local GoTo01X = 968
	local GoTo01Y = 993
	local GoTo01M = CurMapName
	Talk( 1, "Хранитель исследований C: Хотите узнать, что там внутри? Заплатите мне 5000 Золотых и я позволю вам пройти." )
	Text( 1, "Дай пройти.", JumpPage, 2 )
	Text( 1, "Забудь об этом! Я передумал идти.", JumpPage, 3 )
	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Хранитель исследований C: Этот путь ведет в Комнату С." )
	Text( 2, "Исследовать Комнату С.", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Хранитель исследований C: Уйди нищий!" )
	Talk( 4, "Хранитель исследований C: Вам не хватает золота.", CloseTalk)
end

function mmm_talk20()
	local CurMapName = "jialebi"
	local GoTo01X = 1076
	local GoTo01Y = 869
	local GoTo01M = CurMapName
	Talk( 1, "Док Стюарт: Хотите знать, что там внутри?" )
	Text( 1, "Что там находится?", JumpPage, 2 )
	Text( 1, "Не хочу знать.", JumpPage, 3 )
	InitTrigger()
	TriggerCondition(1,HasItem , 2408,1)
	TriggerCondition(1,HasItem , 2409,1)
	TriggerCondition(1,HasItem , 2410,1)
	TriggerCondition(1,HasItem , 2411,1)
	TriggerCondition(1,HasItem , 2412,1)
	TriggerAction(1,TakeItem,2408,1)
	TriggerAction(1,TakeItem,2409,1)
	TriggerAction(1,TakeItem,2410,1)
	TriggerAction(1,TakeItem,2411,1)
	TriggerAction(1,TakeItem,2412,1)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Док Стюарт: Внутри находится Зал Мертвых Душ, чтобы туда пройти, соберите полный комплект паролей: AB, BC, CD, DE, EF." )
	Text( 2, "Приступить к исследованию.", MultiTrigger, GetMultiTrigger(), 1 )
	Talk( 3, "Док Стюарт: ......Пока!" )
	Talk( 4, "Док Стюарт: Вы не добыли нужные пароли.", CloseTalk)
end

function mmm_talk22()
	local CurMapName = "jialebi"
	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName
	Talk( 1, "Хотите знать что там? Заплатите мне 500G и я Вас отправлю туда. " )
	Text( 1, "Хочу в Абаддон 2! ", JumpPage, 2 )
	Text( 1, "Забудь! У меня мало денег... ", JumpPage, 3 )
	Text( 1, "Я слышал, что здесь у вас есть хорошие вещи ", JumpPage, 5 )


	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "Полетели в Абаддон 2?" )
	Text( 2, "Да!", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 3, "Уходи нищий! " )
	Talk( 4, "Сам такой! " ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0267, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Привет! Да у меня есть некотторые вещи, но ты должен принести 1 руну Кель чтобы я тебе их показал " )
	Text( 5, "Получить огнетворную силу. ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Подойдите потом, когда у Вас появятся нужные вещи. " )
end

function mmm_talk23()
	local CurMapName = "jialebi"
	local GoTo01X = 199
	local GoTo01Y = 824
	local GoTo01M = CurMapName
	local GoTo02X = 70
	local GoTo02Y = 952
	local GoTo02M = CurMapName
	Talk( 1, "Хотите знать что там? Заплатите мне 500G и я Вас отправлю туда. " )
	Text( 1, "В Абаддон 1 ", JumpPage, 2 )
	Text( 1, "В Абаддон 3 ", JumpPage, 3 )
	Text( 1, "Я слышал, что у вас есть хорошие вещи здесь ", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Вы хотите попасть в Абаддон 1? " )
	Text( 2, "Да! ", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "Вы точно хотите в Абаддон 3?" )
	Text( 3, "Да!", MultiTrigger, GetMultiTrigger(),2 )
	
	Talk( 4, "У Вас мало золота! " ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0268, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Привет! Да у меня есть некотторые вещи, но ты должен принести 1 руну Кель чтобы я тебе их показал " )
	Text( 5, "Получить Мощь Ветра ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Подойдите потом, когда у Вас появятся нужные вещи. " )
end

function mmm_talk24()
	local CurMapName = "jialebi"
	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName
	local GoTo02X = 209
	local GoTo02Y = 955
	local GoTo02M = CurMapName
	Talk( 1, "Хотите знать что там? Заплатите мне 500G и я Вас отправлю туда. " )
	Text( 1, "В Абаддон 2 ", JumpPage, 2 )
	Text( 1, "В Абаддон 4 ", JumpPage, 3 )
	Text( 1, "Я слышал, что у вас есть хорошие вещи здесь ", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Вы точно хотите отправиться в Абаддон 2?" )
	Text( 2, "Да! ", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "Вы точно хотите отправиться в Абаддон 4?" )
	Text( 3, "Да ", MultiTrigger, GetMultiTrigger(), 2 )
	
	Talk( 4, "У Вас мало золота " ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0269, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Привет! Да у меня есть некотторые вещи, но ты должен принести 1 руну Кель чтобы я тебе их показал " )
	Text( 5, "Получить Силу Грома ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Подойдите потом, когда у Вас появятся нужные вещи. " )
end

function mmm_talk25()
	local CurMapName = "jialebi"

	local GoTo01X = 70
	local GoTo01Y = 952
	local GoTo01M = CurMapName

	local GoTo02X = 690
	local GoTo02Y = 1043
	local GoTo02M = CurMapName

	Talk( 1, "Хотите знать что там? Заплатите мне 500G и я Вас отправлю туда. " )
	Text( 1, "Хочу в Абаддон 3 ", JumpPage, 2 )
	Text( 1, "Я хочу оставить это адское место ", JumpPage, 3 )
	Text( 1, "Я слышал, что у вас есть хорошие вещи здесь ", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Отправиться в Аббадон 3?" )
	Text( 2, "Да!", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "Вы хотите уйти отсюда??" )
	Text( 3, "Да! Выпустите меня! ", MultiTrigger, GetMultiTrigger(), 2 )
	
	Talk( 4, "У Вас не хватает золота " ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0270, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Привет! Да у меня есть некотторые вещи, но ты должен принести 1 руну Кель чтобы я тебе их показал " )
	Text( 5, "Получить Силу Мороза ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Подойдите потом, когда у Вас появятся нужные вещи. " )
end

function mmm_talk29()
	local ReSelectTalk = "Мне нужно подумать "
	local ReSelectPage = 1

	local CancelSelectTalk = "Я остануь здесь "
	local CancelSelectPage = 7

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	Talk( 1, "Вы хотите выйти из красивейших мест Сокровищ Залива?" )
	Text( 1, "В Аргент", JumpPage, 2 )
	Text( 1, "В Шайтан!", JumpPage, 3 )
	Text( 1, "В Ледынь!", JumpPage, 4 )
	Text( 1, "Записать точку возраждения ", JumpPage, 5 )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 2, "Переместить Вас в Аргент? Нет проблем! Пожалуйста заплатите 500G." )
	Text( 2, "Переместить ",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 3, "Я люблю Шайтан! Пожалуйста заплатите 500G" )
	Text( 3, "Переместить ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 4, "Переместить в Ледынь? Нет проблем! Пожалуйста заплатите 500G." )
	Text( 4, "Переместить ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 6, "Прости, но у тебя не хватает золота для перемещения." )

	Talk( 7, "Незабудте заглянуть ко мне если захотите уйти отсюда ", CloseTalk )
	Talk( 8, "Мая твая не панимать! " )

	InitTrigger()
	TriggerAction( 1, JumpPage, 1 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )
end

function mmm_talk30()
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1	

	Talk( 1, "Богиня: Хотите получить от меня награду? Ответь на несколько моих вопросов, но имей в виду, я не терплю лжи. " )
	Text( 1, "Я готов ", JumpPage, 2 )
	Text( 1, "Я не буду отвечать на эти скучные вопросы ", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1322 )
	TriggerAction ( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 1, "Сердце разума", MultiTrigger, GetMultiTrigger() ,1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 631, 927, "jialebi" )
	Text( 1, "Отправь меня пожалуйста на Остров Сокровищ ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Богиня: Каждый может получить от меня награду в зависимости от уровня персонажа. Пожалуйста выбирите Ваш уровень. Помните, я не терплю лжи. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerCondition( 1, LvCheck, ">", 14 )
	TriggerAction ( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 16 )
	
	Text( 2, "Мой уровень 15-40",MultiTrigger, GetMultiTrigger() ,1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 40 )
	TriggerCondition( 1, LvCheck, "<", 61 )
	TriggerAction ( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 16 )

	Text( 2, "Мой уровень 41-60",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 60 )
	TriggerAction ( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 16 )
	Text( 2, "Мой уровень больше 60",MultiTrigger, GetMultiTrigger(), 1)


	Talk( 4, "Богиня: Похоже, вы совершенно честный. Я могу обменять ваши очки чести в золото или опыт. Если вы готовы посвятить все очки чести мне, вы можете получить сюрприз. " )
	Text( 4, "Поменять очки Чести на Золото ", JumpPage, 7 )
	Text( 4, "Поменять очки Чести на Опыт ", JumpPage, 8 )
	Text( 4, "Посвятить всю честь Богини ", JumpPage, 9 )


	Talk( 5, "Богиня: Похоже, вы совершенно честный. Я могу обменять ваши очки чести в золото или опыт. Если вы готовы посвятить все очки чести мне, вы можете получить сюрприз. " )
	Text( 5, "Поменять очки Чести на Золото", JumpPage, 10 )
	Text( 5, "Поменять очки Чести на Опыт", JumpPage, 11 )
	Text( 5, "Посвятить всю честь Богини", JumpPage, 12 )

	Talk( 6, "Богиня: Похоже, вы совершенно честный. Я могу обменять ваши очки чести в золото или опыт. Если вы готовы посвятить все очки чести мне, вы можете получить сюрприз. " )
	Text( 6, "Поменять очки Чести на Золото", JumpPage, 13 )
	Text( 6, "Поменять очки Чести на Опыт", JumpPage, 14 )
	Text( 6, "Посвятить всю честь Богини", JumpPage, 15 )

		InitFuncList()
	AddFuncList( CreditExchange,0 )
	Talk( 7, "Богиня: Вы хотите обменять все очки Чести на Золото? Все очки накопленные Вами будут потеряны." )
	Text( 7, "Обменять ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 7,"Позвольте мне ещё подумать ",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,3 )
	Talk( 8, "Богиня: Вы хотите обменять все очки Чести на Опыт? Все очки накопленные Вами будут потеряны." )
	Text( 8, "Обменять ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 8,"Позвольте мне ещё подумать ",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 6 )
	Talk( 9, "Богиня: Вы хотите посвятить всю Честь Богини? Все очки накопленные Вами будут потеряны, и вы можете даже ничего не получить взамен." )
	Text( 9, "Обменять ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 9,"Позвольте мне ещё подумать ",JumpPage , 4 )


	InitFuncList()
	AddFuncList( CreditExchange,1 )
	Talk( 10, "Богиня: Вы хотите обменять все очки Чести на Золото? Все очки накопленные Вами будут потеряны." )
	Text( 10, "Обменять ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 10,"Позвольте мне ещё подумать ",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,4 )
	Talk( 11, "Богиня: Вы хотите обменять все очки Чести на Опыт? Все очки накопленные Вами будут потеряны." )
	Text( 11, "Обменять ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 11,"Позвольте мне ещё подумать ",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 7 )
	Talk( 12, "Богиня: Вы хотите посвятить всю Честь Богини? Все очки накопленные Вами будут потеряны, и вы можете даже ничего не получить взамен." )
	Text( 12, "Обменять ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 12,"Позвольте мне ещё подумать ",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,2 )
	Talk( 13, "Богиня: Вы хотите обменять все очки Чести на Золото? Все очки накопленные Вами будут потеряны." )
	Text( 13, "Обменять ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 13,"Позвольте мне ещё подумать ",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,5 )
	Talk( 14, "Богиня: Вы хотите обменять все очки Чести на Опыт? Все очки накопленные Вами будут потеряны." )
	Text( 14, "Обменять ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 14,"Позвольте мне ещё подумать ",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 8 )
	Talk( 15, "Богиня: Вы хотите посвятить всю Честь Богини? Все очки накопленные Вами будут потеряны, и вы можете даже ничего не получить взамен." )
	Text( 15, "Обменять ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 15,"Позвольте мне ещё подумать ",JumpPage , 4 )

	Talk( 16, "Богиня: Я знаю, что ваше сердце лжёт. Не пытайся меня обмануть. Я даю тебе ещё один шанс, не подведи меня." )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Text( 16, "Я всегда говорю правду", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 16, "Пожалуйста, простите мое невежество",JumpPage , 2 )

	Talk( 25, "Богиня: Теперь ты должен ответить на следующие вопросы без колебания. Только если ты ответишь правильно на все вопросы, ты пройдешь испытание.")
	Text( 25, "Да, я могу начать сейчас.", JumpPage, 27)
	Text( 25, "Нет, мне нужно время.", CloseTalk )
	
	Talk( 26, "Богиня: Если ты не завершил выполнение задания или твой инвентарь полон, я не смогу отдать тебе Сердце Мудрости.")
	Text( 26, "Закрыть ", CloseTalk )
	
	Talk( 27, "Богиня: В каком городе проводились Олимпийские Игры 2008?")
	Text( 27, "Афины ", JumpPage, 28)
	Text( 27, "Пекин ", JumpPage, 29)
	Text( 27, "Шанхай ", JumpPage, 28)
	Text( 27, "Сидней ", JumpPage, 28)
	
	Talk( 28, "Богиня: Прости, ты ошибся. Возвращайся, когда найдешь правильный ответ.")
	Text( 28, "Закрыть ", CloseTalk )
	
	Talk( 29, "Богиня: Когда началось закрытое бета-тестирование Пиратии-Онлайн? ")
	Text( 29, "Июнь 2007 года ", JumpPage, 28)
	Text( 29, "Ноябрь 2007 года ", JumpPage, 28)
	Text( 29, "Август 2006 года ", JumpPage, 28)
	Text( 29, "Август 2007 года ", JumpPage, 30)
	Text( 29, "Январь 2008 года ", JumpPage, 28)
	
	Talk( 30, "Богиня: Что символизируют пять олимпийских колец? ")
	Text( 30, "Они символизируют силу пяти океанов ", JumpPage, 28)
	Text( 30, "Они символизируют пять Олимпийских добродетелей ", JumpPage, 28)
	Text( 30, "Они символизируют единство пяти континентов ", JumpPage, 31)
	Text( 30, "Они символизируют единство пяти народов ", JumpPage, 28)
	
	Talk( 31, "Богиня: Сколько судов находятся в порту Морского Флота? ")
	Text( 31, "1 ", JumpPage, 28)
	Text( 31, "2 ", JumpPage, 32)
	Text( 31, "3 ", JumpPage, 28)
	Text( 31, "4 ", JumpPage, 28)
		
	Talk( 32, "Ты закончил испытания. Принеси Сердце Мудрости, Сердце Верности, Сердце Бесстрашия, Любящее Сердце и Священный факел офицеру связи. ")
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1322 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, ClearRecord, 1322 )
	TriggerAction( 1, GiveItem, 5801, 1, 4 )
	TriggerAction( 1, SetRecord, 1323 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 32, "Хорошо, я уже ухожу. ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 32, "Закрыть ", CloseTalk )
	AddNpcMission(6000)
end
--------------------------------------------------------------------------------------------------------------------
--													mmm_talk (Конец)											  --
--------------------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------------------
--													dydz_talk (Начало)											  --
--------------------------------------------------------------------------------------------------------------------
function dydz_talk()
	Talk( 1, "Бродяга Абаддона: Если вы дорожите своей жизнью, то убирайтесь побыстрее от сюда. " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 40,74, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить судно ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Диспетчер порта абаддона: Что вы думаете? У вас нет лодки, на которой можно отсправиться в плавание. А теперь проваливай, если вам дорога ваша жизнь!" )
	
	Talk( 4, "Диспетчер порта абаддона: Не думайте, что ваша лодка будет отремонтирован бесплатно здесь. Пришвартуйте ваши лодки и приготовьтесь уплатить 1000 золотых." )
	
	Talk( 5, "Диспетчер порта абаддона: Не думайте, что ваша лодка будет заправлена бесплатно здесь. Пришвартуйте ваши лодки и приготовьтесь уплатить 200 золотых." )
	
	Talk( 6, "Диспетчер порта абаддона: Простите, но я восстанавливаю суда лишь приписанные к этому порту! Стоимость 1000 золотых." )
	
	Talk( 7, "Диспетчер порта абаддона: Мая твая не панимать! " )
end

function dysr_talk ()
	Talk( 1, "Купец Абаддона: По команде господина моего, Лорда - Смерти. Я здесь, чтобы помочь вам храбрым воинам, и быть свидетелем вашей смерти. Ха-ха!" )
	Text( 1, "Торг ", BuyPage)
	Text( 1, "Ремонт ", OpenRepair)

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Other(	637	)
	Other(	819	)
	Other(	869	)
	Other(	874	)
end
--------------------------------------------------------------------------------------------------------------------
--													dydz_talk (Конец)											  --
--------------------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------------------
--											Одиночные_функции (Начало)											  --
--------------------------------------------------------------------------------------------------------------------
function zsts_talk()
	Talk( 1, "Ангел перерождения: Только самые лучшие и элитные Флотилии или Пираты смогут переродится!")
	Text( 1, "Подробнее о Перерождение ", JumpPage, 2)
	Text( 1, "Я хочу Переродиться ", JumpPage, 6)

	Talk( 2, "Ангел перерождения: Что вы хотите узнать?")
	Text( 2, "Классы после перерождения?", JumpPage, 3)
	Text( 2, "Что будет с очками статов, и очками умений после перерождения?", JumpPage, 4)
	Text( 2, "Какие условия перерождения?", JumpPage, 5)

	Talk( 3, "Ангел перерождения: Игроки могут повторно выбрать класс после перерождения: Ланс может стать Воителем, Покорителем морей или Стрелком. Карциз может стать чемпионом. Филлис может стать Цилителем, Колдуньей, Покорителем морей или Стрелком. Ами может стать Целителем, Колдуньей или Покорителем морей.")
	Text( 3, "Спасибо, я все понял ", CloseTalk)

	Talk( 4, "Ангел перерождения: Все очки статов и умений будут сброшены и вы сможете заного их перераспределить.")
	Text( 4, "Спасибо, я все понял ", CloseTalk)

	Talk( 5, "Ангел перерождения: Перерождение могут пройти лишь те кто пройдёт квест Перерождение Феникса, который можно получить у богини, после которого вы получите камень перерождения. Также вы можете переродится с помощью карты перерождения, для этого после её использования подойдите сразу ко мне.")
	Text( 5, "Спасибо, я все понял ", CloseTalk)

	Talk( 6, "Ангел перерождения: Кем бы вы хотели стать после перерождения?" )
	Text( 6, "Стать Воителем, чтобы нести справедливость и мир ",  GetChaName1_born, 1)
	Text( 6, "Стать Чемпионом, чтобы защишать своих спутников ",  GetChaName2_born, 1)
	Text( 6, "Стать Покорителем морей, чтобы бороздить моря ",  GetChaName3_born, 1)
	Text( 6, "Стать Стрелком, чтобы победить всех врагов ",  GetChaName4_born, 1)
	Text( 6, "Стать Целителем, чтобы исцелять ближних ", GetChaName5_born, 1)
	Text( 6, "Стать Колдуньей, чтобы делать все что угодно ", GetChaName6_born, 1)

	AddNpcMission ( 6071 )
end

function k_talk002()
	Talk (1, "Страж Бермуд: Везде море, вокруг этой гористой зелёной земли одно море, находясь здесь забываешь как течёт время! Вы сможете передать Привет моим друзьям из далека, если вы найдете место, называемое Весноградом, пожалуйста? Может тогда они заберут меня домой.") 
	Text( 1, "Обменять Сундук Бермуд ", JumpPage, 2)

	Talk (2, "Страж Бермуд: Я Страж Бермуд, Я живу здесь уже много лет, и всё время без еды, дайте мне расписку на кусок Кекса!")
	InitTrigger()
	TriggerCondition( 1, HasItem, 1097, 1)             
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 1097, 1)
	TriggerAction(1, GiveItem, 1104, 1, 4)              
	TriggerFailure(1, JumpPage, 3)
	Text( 2, "Вот держи ", MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "Страж Бермуд: Вы смеётесь надо мной? Я голоден, и вы не можете мне ничем помочь, досвидания!") 

	Text( 1, "Получить ФастФуд ", JumpPage, 4)

	Talk(4, "Страж Бермуд: Я Страж Бермуд, Я живу здесь уже много лет, и всё время без еды, дайте мне Супер-Суши!") 
	InitTrigger()
	TriggerCondition( 1, HasItem, 2989, 1)             
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 2989, 1)
	TriggerAction(1, GiveItem, 0992, 10, 4)              
	TriggerFailure(1, JumpPage, 5)
	Text( 4, "Вот держи ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "Страж Бермуд: Вы смеётесь надо мной? Я голоден, и вы не можете мне ничем помочь, досвидания!") 
end
--------------------------------------------------------------------------------------------------------------------
--											Одиночные_функции (Конец)											  --
--------------------------------------------------------------------------------------------------------------------