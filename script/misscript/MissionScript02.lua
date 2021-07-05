print( "Loading MissionScript02.lua" )
----------------------
-- Начальные квесты --
----------------------
function For_Newbie()
	DefineMission( 701, "Добро Пожаловать!", 1, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk("<t> Добро Пожаловать!<n><t>Приходи ко мне, если у тебя есть вопросы относительно классов персонажей. И обдумывай свой выбор по мнению кем быть.<n><t>Ещё я хочу тебе поведать где продаётся неплохое оружие в <pАргенте>.<n><t>Теперь когды ты поднимаешь драгоценные уровни нажимай клавиши Ctrl + A, для того чтобы зайти в окно своих характеристик. Каждый поднятый тобой уровень даёт тебе очки характеристик. <n><t>У тебя в расположении имеется 5 видов антрибутов, таких как: Сила ,которая увеличивает твою атаку в ближнем бою; Ловкость, которая увеличивает твою скорость боя и уворот; Точность, которая увеличивает твоё шанс на попадение и усиливает твою мощь; Дух, который увеличивает твой максимальноый запас маны и магический урон;И Телесложение, которое увеличивает твой запас жизни и Брони.")
	MisHelpTalk("<t>Привет! Я наставница этого города. Навещай меня когда тебе будет нужна помощь в игре.<n><t>Без моей помощи тебе будет очень трудно.")
	MisResultCondition(NoRecord, 1)
	MisResultCondition(HasMission, 1)

	MisResultAction(ClearMission, 1)
	MisResultAction(SetRecord, 1)
	MisResultAction(AddExp, 6, 6)


	DefineMission( 702, "Приветствие Кузнеца ", 701 )
	
	MisBeginTalk( "<t>Ты не сможешь выжить в этом жесточайшем мире,если у тебя нет оружия.<n><t>Отнеси это письмо <pМосковскому> <b[Кузнецу]>, по координатам (2193, 2706). Я думаю он тебе поможет, если прийдешь к нему с этим письмом.<n><t>Ты можешь использовать радар (Alt + R) что бы найти его." )
	MisBeginCondition(HasRecord, 1)
	MisBeginCondition(NoRecord, 701)
	MisBeginCondition(NoMission, 701)
	MisBeginAction(AddMission, 701)
	MisBeginAction(SetFlag, 701, 1)
	MisBeginAction(GiveItem, 3950, 1, 4)
	MisCancelAction(ClearMission, 701 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправть письмо <b[Кузнецу> в <pМоскве> по координатам (2193, 2706). И вернись к [Наставнице](2223, 2785)")
		
	MisResultTalk("<t>Я смотрю ты уже встретился с <bГолди>. Он тебе всегда дешего и выгодно отдаст любое оружие.")
	MisHelpTalk("<t>Не забудь вручить письмо для Голди лично. Он стоит всегда в левом углу Аргента по координатам (2193, 2706).<n><t> Используй радар(Alt + R) для того,чтобы его найти.")
	MisResultCondition(NoRecord, 701)
	MisResultCondition(HasMission, 701)
	MisResultCondition(HasFlag, 701, 10)
	MisResultAction(ClearMission, 701)
	MisResultAction(SetRecord, 701)
	MisResultAction(AddExp, 9, 9 )

	DefineMission( 703, "Приветствие Кузнеца ", 701, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Я смотрю вы здесь новичок? Меня зовут <bКузнец>, Я кузнец города <pМосква>. Я кую оружие, вставляю в них самоцветы, придаю им красивый вид, могу делать слота в вещах, а также могу вынимать самоцветы из твоих вещей и т.д... Я действительно занятой в эти дни, но сделаю исключение, чтобы помочь тебе, так как я вижу что у тебя есть Рекомендательное письмо от Наставницы Сенны.<n><t>Не забудь поговорить с <bНаставницей> по координатам (2223, 2785) я длеаю это все только ради нее, ахаха!<n><t>(Кузнец дал тебе Нож новичка. Открой инвентарь и двойным щелчком нажми на него.)")
	MisResultCondition(NoRecord, 701)
	MisResultCondition(HasMission, 701)
	MisResultCondition(NoFlag, 701, 10)
	MisResultCondition(HasItem, 3950, 1)
	MisResultAction(TakeItem, 3950, 1)
	MisResultAction(GiveItem, 8, 1, 4)
	MisResultAction(SetFlag, 701, 10)
	MisResultBagNeed(1)

	DefineMission( 704, "Приветсвие Портного ", 702 )
	
	MisBeginTalk( "<t>Это второе рекамендательное письмо. Отнеси его в <pAргент> <bБабушке - Ниле> по координатам (2266, 2705)." )
	MisBeginCondition(HasRecord, 701)
	MisBeginCondition(NoRecord, 702)
	MisBeginCondition(NoMission, 702)
	MisBeginAction(AddMission, 702)
	MisBeginAction(SetFlag, 702, 1)
	MisBeginAction(GiveItem, 3951, 1, 4)
	MisCancelAction(SystemNotice, "Это задание не может быть остановленно." )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо <bПортнихе - Бабушке - Ниле> в <pAргенте> по координатам (2267, 2704) и вернитесь к Наставнице - Сенне (2223, 2785)")
		
	MisResultTalk("<t>Вау! Неужели <bБабушка Нила> сделала для тебя перчатки персонально? Они идеальные! Я надеюсь,что ты будешь за ними ухаживать.")
	MisHelpTalk("<t>Неужели ты не нашел бабушку Нилу? Я тебе помогу,она на северной части Аргента по координатам (2267, 2704). Используй радар,для нахождения цели.")
	MisResultCondition(NoRecord, 702)
	MisResultCondition(HasMission, 702)
	MisResultCondition(HasFlag, 702, 10)
	MisResultAction(ClearMission, 702)
	MisResultAction(SetRecord, 702)
	MisResultAction(AddExp, 21, 21 )

	DefineMission( 705, "Приветствие Бифа Какао ", 702, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Это было интересно. Я видела тебя, когда ты тут пробегал. Я <bБабушка Нила>, Портная города <pМосква>. С тех пор, как Наставница зарекомендовала тебя, я хочу подарить тебе вот эту <Экипировку новичка> сделанные специально для тебя.<n><t>Теперь вернись к Наставнице - Сенне (2223, 2785).<n><t>(Нила дала тебе Экипировку новичка. Открой инвентарь и дважды кликни на них,чтобы одеть.)")
	MisResultCondition(NoRecord, 702)
	MisResultCondition(HasMission, 702)
	MisResultCondition(NoFlag, 702, 10)
	MisResultCondition(HasFlag, 702, 1)
	MisResultCondition(HasItem, 3951, 1)
	MisResultAction(TakeItem, 3951, 1)
	MisResultAction(SetFlag, 702, 10)
	MisResultAction(GiveItem, 289, 1, 4)
	MisResultAction(GiveItem, 641, 1, 4)
	MisResultAction(GiveItem, 465, 1, 4)
	MisResultBagNeed(1)
	
	DefineMission( 706, "Приветствие Бифа Какао ", 703 )
	
	MisBeginTalk( "<t>Теперь, отнеси мое последнее письмо <bБифу Какао> (2240, 2784). Я уверен он поможет тебе в игре." )
	MisBeginCondition(HasRecord, 702)
	MisBeginCondition(NoRecord, 703)
	MisBeginCondition(NoMission, 703)
	MisBeginAction(AddMission, 703)
	MisBeginAction(SetFlag, 703, 1)
	MisBeginAction(GiveItem, 3952, 1, 4)
	MisCancelAction(SystemNotice, "Задание не может быть остановленно." )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправьте письмо <bБифу Какао> в <pМоскве> по координатам (2240, 2784). И вернитесь к Наставнице (2223, 2785).")
		
	MisResultTalk("<t><bБиф Какао> Дал тебе несколько <rЯблок и травы-мупавы>.Яблоки и траву-мураву можно купить у него! Они востонавливают некоторое количество жизней	и маны.")
	MisHelpTalk("<t>Дито находиться справа от фонтана Аргента. Его координаты (2240, 2784). Ты можешь найти его с помощью радара.")
	MisResultCondition(NoRecord, 703)
	MisResultCondition(HasMission, 703)
	MisResultCondition(HasFlag, 703, 10)
	MisResultAction(ClearMission, 703)
	MisResultAction(SetRecord, 703)
	MisResultAction(AddExp, 66, 66 )

	DefineMission( 707, "Приветствие Бифа Какао ", 703, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Я вижу вы здесь новенький? Добро пожаловать! Возьмите эти <rЯблоки и траву-мураву>, я их сам ростил! Я думаю они вам прегодятся.<n><t>А сейчас возвращайтесь к Наставнице (2223, 2785).<n><t>(Биф Какао дал вам несколько яблок. Перетащите их на кнопки F1 - F12 для быстрого использования.)")
	MisResultCondition(NoRecord, 703)
	MisResultCondition(HasMission, 703)
	MisResultCondition(NoFlag, 703, 10)
	MisResultCondition(HasFlag, 703, 1)
	MisResultCondition(HasItem, 3952, 1)
	MisResultAction(TakeItem, 3952, 1)
	MisResultAction(SetFlag, 703, 10)
	MisResultAction(GiveItem, 1847, 30, 4)
	MisResultAction(GiveItem, 3129, 30, 4)
	MisResultBagNeed(1)
	
	DefineMission( 708, "Боевая тренировка ", 704 )
	
	MisBeginTalk( "<t>Хмм, неплохо, теперь ты подготовлен к жизни. Пускай будет твоим испытанием жизнь, бегай по миру, воюй. Только не забегай слишком далеко.<n><t>Выйти из города ты можешь через левый выход или через верхний.<n><t>Убей 5 Лесных духов и принеси пару крыльев.<n><t>Лесных духов ты можешь найти в окраинах Аргента. Заверши миссию,и я дам тебе хорошую награду.<n><t>(Начать драться ты можешь выйдя из города. Просто кликни левой кнопкой миши на монстра." )
	MisBeginCondition(HasRecord, 703)
	MisBeginCondition(NoRecord, 704)
	MisBeginCondition(NoMission, 704)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 10 )
	MisBeginAction(AddMission, 704)
	MisBeginAction(SetFlag, 704, 1)
	MisBeginAction(AddTrigger, 7041, TE_GETITEM, 1620, 1 )
	MisBeginAction(AddTrigger, 7042, TE_KILL, 103, 5 )
	MisCancelAction(ClearMission, 704)

	MisNeed(MIS_NEED_ITEM, 1620, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 103, 5, 20, 5)
	
	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Очень хорошо, ты справилься, а также доказал, что можешь идти воевать.<n><t> Если борьба это твоя страсть, то иди к Маркусу по координатам (2065, 2732). Другой человек, который вам может немного помочь - это Доктор Дито (2250, 2770). Он ищет работника, который сможет поставлять ему много ингридиентов.<n><t>Удачи!")
	MisHelpTalk("<t>Не будь озабоченым, Возвращайся после того, как убьешь 5 <bЛесных духов> и получишь 1 из <rКрыльев>.")
	MisResultCondition(NoRecord, 704)
	MisResultCondition(HasMission, 704)
	MisResultCondition(HasItem, 1620, 1)
	MisResultCondition(HasFlag, 704, 24)
	MisResultAction(TakeItem, 1620, 1)
	MisResultAction(ClearMission, 704)
	MisResultAction(SetRecord, 704)
	MisResultAction(AddExp, 75, 75 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1620 )	
	TriggerAction( 1, AddNextFlag, 704, 10, 1 )
	RegCurTrigger( 7041 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 103 )	
	TriggerAction( 1, AddNextFlag, 704, 20, 5 )
	RegCurTrigger( 7042 )
-----------------------------
-- Конец начальных квестов --
-----------------------------
end
For_Newbie()