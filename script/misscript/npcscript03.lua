print( "‡ Јаг§Є  NPCScript03.lua")

--------------------------
--	Список сокращений	--
--------------------------
jp				= JumpPage
amp				= AutoMissionPage
ct				= CloseTalk
am				= AddMission
MissionCheck 	= HasFlag
mc				= MissionCheck

function combine_gems()
	Talk( 1, "Привет! Я могу скомбинировать твои самоцветы при условии, что:_1. Ты имеешь 8,16 или 32шт самоцветов;_2. У тебя есть 8,30 или 100кк золота! ")
	Text( 1, "Самоцветы +10 ", JumpPage, 10)
	Text( 1, "Уйти.", CloseTalk)
	--+10
	Talk( 10, "Выберите уровень:")
	Text( 10, "4 уровень ", JumpPage, 11)
	Text( 10, "5 уровень ", JumpPage, 12)
	Text( 10, "6 уровень ", JumpPage, 13)
	
	Talk( 11, "Выберите самоцвет: ")
	Text( 11, "Самоцвет Силы ", FastCombiner, 8016, 4)
	Text( 11, "Самоцвет Духа ", FastCombiner, 8017, 4)
	Text( 11, "Самоцвет Точности ", FastCombiner, 8018, 4)
	Text( 11, "Самоцвет Телосложения ", FastCombiner, 8019, 4)
	Text( 11, "Самоцвет Ловкости ", FastCombiner, 8020, 4)
	
	Talk( 12, "Выберите самоцвет: ")
	Text( 12, "Самоцвет Силы ", FastCombiner, 8016, 5)
	Text( 12, "Самоцвет Духа ", FastCombiner, 8017, 5)
	Text( 12, "Самоцвет Точности ", FastCombiner, 8018, 5)
	Text( 12, "Самоцвет Телосложения ", FastCombiner, 8019, 5)
	Text( 12, "Самоцвет Ловкости ", FastCombiner, 8020, 5)
	
	Talk( 13, "Выберите самоцвет: ")
	Text( 13, "Самоцвет Силы ", FastCombiner, 8016, 6)
	Text( 13, "Самоцвет Духа ", FastCombiner, 8017, 6)
	Text( 13, "Самоцвет Точности ", FastCombiner, 8018, 6)
	Text( 13, "Самоцвет Телосложения ", FastCombiner, 8019, 6)
	Text( 13, "Самоцвет Ловкости ", FastCombiner, 8020, 6)
end

function combine_gems2()
	Talk( 1, "Привет! Я могу скомбинировать твои самоцветы при условии, что:_1. Ты имеешь 8,16 или 32шт самоцветов;_2. У тебя есть 8,30 или 100кк золота! ")
	Text( 1, "Самоцветы +14 ", JumpPage, 2)
	Text( 1, "Самоцветы +17 ", JumpPage, 6)
	Text( 1, "Самоцветы +20 ", JumpPage, 10)
	Text( 1, "Уйти.", CloseTalk)
	--+14
	Talk( 2, "Выберите уровень:")
	Text( 2, "4 уровень ", JumpPage, 3)
	Text( 2, "5 уровень ", JumpPage, 4)
	Text( 2, "6 уровень ", JumpPage, 5)
	
	Talk( 3, "Выберите самоцвет: ")
	Text( 3, "Самоцвет Силы ", FastCombiner, 8021, 4)
	Text( 3, "Самоцвет Духа ", FastCombiner, 8022, 4)
	Text( 3, "Самоцвет Точности ", FastCombiner, 8023, 4)
	Text( 3, "Самоцвет Телосложения ", FastCombiner, 8024, 4)
	Text( 3, "Самоцвет Ловкости ", FastCombiner, 8025, 4)
	
	Talk( 4, "Выберите самоцвет: ")
	Text( 4, "Самоцвет Силы ", FastCombiner, 8021, 5)
	Text( 4, "Самоцвет Духа ", FastCombiner, 8022, 5)
	Text( 4, "Самоцвет Точности ", FastCombiner, 8023, 5)
	Text( 4, "Самоцвет Телосложения ", FastCombiner, 8024, 5)
	Text( 4, "Самоцвет Ловкости ", FastCombiner, 8025, 5)
	
	Talk( 5, "Выберите самоцвет: ")
	Text( 5, "Самоцвет Силы ", FastCombiner, 8021, 6)
	Text( 5, "Самоцвет Духа ", FastCombiner, 8022, 6)
	Text( 5, "Самоцвет Точности ", FastCombiner, 8023, 6)
	Text( 5, "Самоцвет Телосложения ", FastCombiner, 8024, 6)
	Text( 5, "Самоцвет Ловкости ", FastCombiner, 8025, 6)
	--+17
	Talk( 6, "Выберите уровень:")
	Text( 6, "4 уровень ", JumpPage, 7)
	Text( 6, "5 уровень ", JumpPage, 8)
	Text( 6, "6 уровень ", JumpPage, 9)
	
	Talk( 7, "Выберите самоцвет: ")
	Text( 7, "Самоцвет Силы ", FastCombiner, 9145, 4)
	Text( 7, "Самоцвет Духа ", FastCombiner, 9146, 4)
	Text( 7, "Самоцвет Точности ", FastCombiner, 9147, 4)
	Text( 7, "Самоцвет Телосложения ", FastCombiner, 9148, 4)
	Text( 7, "Самоцвет Ловкости ", FastCombiner, 9149, 4)
	
	Talk( 8, "Выберите самоцвет: ")
	Text( 8, "Самоцвет Силы ", FastCombiner, 9145, 5)
	Text( 8, "Самоцвет Духа ", FastCombiner, 9146, 5)
	Text( 8, "Самоцвет Точности ", FastCombiner, 9147, 5)
	Text( 8, "Самоцвет Телосложения ", FastCombiner, 9148, 5)
	Text( 8, "Самоцвет Ловкости ", FastCombiner, 9149, 5)
	
	Talk( 9, "Выберите самоцвет: ")
	Text( 9, "Самоцвет Силы ", FastCombiner, 9145, 6)
	Text( 9, "Самоцвет Духа ", FastCombiner, 9146, 6)
	Text( 9, "Самоцвет Точности ", FastCombiner, 9147, 6)
	Text( 9, "Самоцвет Телосложения ", FastCombiner, 9148, 6)
	Text( 9, "Самоцвет Ловкости ", FastCombiner, 9149, 6)
	
	--+20
	Talk( 10, "Выберите уровень:")
	Text( 10, "4 уровень ", JumpPage, 11)
	Text( 10, "5 уровень ", JumpPage, 12)
	Text( 10, "6 уровень ", JumpPage, 13)
	
	Talk( 11, "Выберите самоцвет: ")
	Text( 11, "Самоцвет Силы ", FastCombiner, 8026, 4)
	Text( 11, "Самоцвет Духа ", FastCombiner, 8027, 4)
	Text( 11, "Самоцвет Точности ", FastCombiner, 8028, 4)
	Text( 11, "Самоцвет Телосложения ", FastCombiner, 8029, 4)
	Text( 11, "Самоцвет Ловкости ", FastCombiner, 8030, 4)
	
	Talk( 12, "Выберите самоцвет: ")
	Text( 12, "Самоцвет Силы ", FastCombiner, 8026, 5)
	Text( 12, "Самоцвет Духа ", FastCombiner, 8027, 5)
	Text( 12, "Самоцвет Точности ", FastCombiner, 8028, 5)
	Text( 12, "Самоцвет Телосложения ", FastCombiner, 8029, 5)
	Text( 12, "Самоцвет Ловкости ", FastCombiner, 8030, 5)
	
	Talk( 13, "Выберите самоцвет: ")
	Text( 13, "Самоцвет Силы ", FastCombiner, 8026, 6)
	Text( 13, "Самоцвет Духа ", FastCombiner, 8027, 6)
	Text( 13, "Самоцвет Точности ", FastCombiner, 8028, 6)
	Text( 13, "Самоцвет Телосложения ", FastCombiner, 8029, 6)
	Text( 13, "Самоцвет Ловкости ", FastCombiner, 8030, 6)
end

function npc_cook()
	Talk( 1, "Привет. Я могу обменять твой лут на некоторый кук. Выбирай: ")
	Text( 1, "Свиток +1 к характеристикам ", JumpPage, 2)
	Text( 1, "Зелье Легкости ", JumpPage, 3)
	Text( 1, "Зелье ускорения ", JumpPage, 4)
	Text( 1, "Генератор землетрясений ", JumpPage, 5)
	Text( 1, "Световая бомба ", JumpPage, 6)
	Text( 1, "Детектор души ", JumpPage, 7)
	Text( 1, "-------->", JumpPage, 8)
	Text( 8, "Граната ", JumpPage, 9)
	Text( 8, "Радиация ", JumpPage,10)
	Text( 8, "<-------- ", JumpPage,1)
	Text( 8, "Уйти ", CloseTalk)
	
	
	
	Talk( 2, "Чтобы получить Свиток, принеси мне:_1. Сигара - 15шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1736,15 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 1736,15 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 7453,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 2, "Обменять свиток ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "Чтобы получить Зелье Скорости, принеси мне:_1. Душа нежити - 30шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2386,30 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2386,30 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 850,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 3, "Обменять зелье ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 4, "Чтобы получить Зелье Ускорения, принеси мне:_1. Душа нежити - 15шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2386,15 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2386,15 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 3339,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 4, "Обменять зелье ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 5, "Чтобы получить Генератор землетрясений, принеси мне:_1. Карта мини-босса Москвы - 3шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8125,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8125,3 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 1148,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 5, "Обменять зелье ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 6, "Чтобы получить Световую бомбу, принеси мне:_1. Страница из библии - 5шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2392,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2392,5 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 1136,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 6, "Обменять бомбу ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 7, "Чтобы получить Детектор души, принеси мне:_1. Страница из библии - 7шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2392,7 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2392,7 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 1138,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 7, "Обменять детектор души ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 9, "Чтобы получить Гранату, принеси мне:_1. Неупокоенная душа - 5шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1765,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 1765,5 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 1135,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 9, "Обменять гранату ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 10, "Чтобы получить Радиацию, принеси мне:_1. Грозовая метка - 5шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1754,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 1754,5 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 1137,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 10, "Обменять Радиацию ", MultiTrigger, GetMultiTrigger(), 1)
	
	
	Talk(13, "Не хватает лута! ")
	Text(13, "Уйти ", CloseTalk)
end

function skelet_is2()
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  2 ) --Больше или равно этому уровню ресета.
	TriggerCondition( 1, LvCheck, ">", 189 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 12 )
	Start( GetMultiTrigger(), 1 )
	
	Talk( 1, "Привет, Пират. Хочешь получить кольца Гончей Ада? Выбирай:")
	Text( 1, "Кольцо(400 лвл) ", JumpPage, 2)
	Text( 1, "Уйти.", CloseTalk)
	--Кольцо 200
	Talk( 2, "Чтобы получить кольцо Гончей Ада, принеси мне:_1. Часть силы - 200шт;_2. Золото - 125 миллионов. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1775,200 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 125000000,125000000 )
	TriggerAction( 1, TakeItem, 1775,200 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 125000000,125000000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 7690,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 2, "Обменять кольцо ", MultiTrigger, GetMultiTrigger(), 1)
	Text(2 , "Уйти ", CloseTalk)
	
	Talk(12, "Вы не достойны со мной разговаривать. Вам нужно:_1. Сделать ресет - 2 лвл;_2. Быть выше 190 уровня. ")
	Text(12, "Уйти ", CloseTalk)
	
	Talk(13, "Не хватает лута! ")
	Text(13, "Уйти ", CloseTalk)
end

function angela()
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  2 ) --Больше или равно этому уровню ресета.
	TriggerCondition( 1, LvCheck, ">", 199 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 12 )
	Start( GetMultiTrigger(), 1 )
	
	Talk( 1, "Привет, Пират! Я могу помочь тебе с улучшением характеристик! ")
	Text( 1, "Фрукт памяти СССР ", JumpPage, 3)
	Text( 1, "Экипировка Апокалипсиса ", JumpPage, 4)
	Text( 1, "Уйти. ", CloseTalk)
	
	Talk( 3, "Чтобы получить фрукт памяти СССР, принеси мне:_1. Слезный камень богини - 40 шт;_2. Душа нежити - 100 шт;_3. Ржавый наконечник копья - 70 шт;_4. Золото - 1,5 миллиона. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2480,40 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,2386,100 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1731,70 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 1500000,1500000 )
	TriggerAction( 1, TakeItem, 2480,40 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 2386,100 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1731,70 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 1500000,1500000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 3919,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 3, "Обменять фрукт ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "Уйти. ", CloseTalk)

	Talk( 4, "Выбирай, что ты хочешь обменять: ")
	Text( 4, "Шапка Апокалипсиса ", JumpPage, 5)
	Text( 4, "Броня Апокалипсиса ", JumpPage, 6)
	Text( 4, "Перчатки Апокалипсиса ", JumpPage, 7)
	Text( 4, "Ботинки Апокалипсиса ", JumpPage, 8)

	Talk( 5, "Чтобы получить шапку Апокалипсиса, принеси мне:_1. Женьшеневая кукла - 500 шт;_2. Брошка феи - 500 шт;_3. Металлическое сердце-насос - 500 шт;_4. Грозовая метка - 500шт;_5. Золото - 300.000.000. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1761,500 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1762,500 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1763,500 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1754,500 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 300000000,300000000 )
	TriggerAction( 1, TakeItem, 1761,500 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1762,500 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1763,500 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1754,500 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 300000000,300000000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8055,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 5, "Обменять шапку ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "Уйти. ", CloseTalk)

	Talk( 6, "Чтобы получить броню Апокалипсиса, принеси мне:_1. Женьшеневая кукла - 1000 шт;_2. Брошка феи - 1000 шт;_3. Металлическое сердце-насос - 1000 шт;_4. Грозовая метка - 1000 шт;_5. Отметка капитана стражи - 1000 шт;_6. Неупокоенная душа - 1000шт;_7. Золото - 500.000.000. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1761,1000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1762,1000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1763,1000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1754,1000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1764,1000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1765,1000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 500000000,500000000 )
	TriggerAction( 1, TakeItem, 1761,1000 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1762,1000 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1763,1000 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1754,1000 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1764,1000 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1765,1000 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 500000000,500000000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8056,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 6, "Обменять броню ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "Уйти. ", CloseTalk)

	Talk( 7, "Чтобы получить перчатки Апокалипсиса, принеси мне:_1. Женьшеневая кукла - 600 шт;_2. Брошка феи - 600 шт;_3. Металлическое сердце-насос - 600 шт;_4. Грозовая метка - 600 шт;_5. Отметка капитана стражи - 600 шт;_6. Неупокоенная душа - 600 шт;_7. Золото - 200.000.000. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1761,600 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1762,600 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1763,600 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1754,600 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1764,600 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1765,600 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 200000000,200000000 )
	TriggerAction( 1, TakeItem, 1761,600 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1762,600 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1763,600 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1754,600 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1764,600 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1765,600 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 200000000,200000000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8057,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 7, "Обменять перчатки ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 7, "Уйти. ", CloseTalk)

	Talk( 8, "Чтобы получить ботинки Апокалипсиса, принеси мне:_1. Женьшеневая кукла - 600 шт;_2. Брошка феи - 600 шт;_3. Металлическое сердце-насос - 600 шт;_4. Грозовая метка - 600 шт;_5. Отметка капитана стражи - 600 шт;_6. Неупокоенная душа - 600 шт;_7. Золото - 200.000.000. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1761,600 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1762,600 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1763,600 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1754,600 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1764,600 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1765,600 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 200000000,200000000 )
	TriggerAction( 1, TakeItem, 1761,600 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1762,600 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1763,600 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1754,600 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1764,600 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1765,600 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 200000000,200000000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8058,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 8, "Обменять перчатки ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "Уйти. ", CloseTalk)

	
	
	Talk(12, "Вы не достойны со мной разговаривать. Вам нужно:_1. Сделать ресет - 2 лвл;_2. Быть выше 200 уровня. ")
	Text(12, "Уйти ", CloseTalk)
	
	Talk(13, "У вас недостаточно лута для обмена. ")
	Text(13, "Уйти ", CloseTalk)
end

function skelet_isl()
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  2 ) --Больше или равно этому уровню ресета.
	TriggerCondition( 1, LvCheck, ">", 189 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 12 )
	Start( GetMultiTrigger(), 1 )
	
	Talk( 1, "Привет. Я могу телепортировать тебя на Остров Сокровищ. ")
	Text( 1, "Телепортироваться ", GoTo, 604, 614,  "jialebi" )
	Text( 1, "Сет Гончей Ада(400лвл)", JumpPage, 2)
	Text( 1, "Запечатанное оружие 400 ", JumpPage, 7)
	Text( 1, "Распечатка оружия Гончей Ада", JumpPage, 8)
	Text( 1, "Обмен свитка дропа х4", JumpPage, 10)
	Text( 1, "Обмен свитка опыта х4", JumpPage, 11)
	Text( 1, "Уйти. ", CloseTalk)
	
	Talk( 2, "Выбери вещь, которую хочешь получить: ")
	Text( 2, "Шапка 400 ", JumpPage, 3)
	Text( 2, "Торс 400 ", JumpPage, 4)
	Text( 2, "Перчатки 400 ", JumpPage, 5)
	Text( 2, "Ботинки 400 ", JumpPage, 6)
	Text( 2, "Уйти. ", CloseTalk)
	
	--Шапка 175
	Talk( 3, "Чтобы получить шапку Гончей Ада, принеси мне:_1. Кошачий колокольчик - 350шт;_2. Трава кошачьей души - 350шт;_3. Золото - 75 миллионов;_4. Репутация - 350. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1743,350 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1768,350 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 75000000,75000000 )
	TriggerCondition( 1, HasCredit, 350 )
	TriggerAction( 1, TakeItem, 1743,350 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1768,350 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 75000000,75000000 )
	TriggerAction( 1, DelRoleCredit, 350 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8048,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 3, "Обменять шапку ", MultiTrigger, GetMultiTrigger(), 1)
	
	--Торс 175
	Talk( 4, "Чтобы получить торс Гончей Ада, принеси мне:_1. Фрагмент дневника - 200шт;_2. Перо вождя - 200шт;_3. Золото - 45 миллионов;_4. Репутация - 220. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1745,200 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1734,200 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 45000000,45000000 )
	TriggerCondition( 1, HasCredit, 220 )
	TriggerAction( 1, TakeItem, 1745,200 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1734,200 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 45000000,45000000 )
	TriggerAction( 1, DelRoleCredit, 220 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8049,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 4, "Обменять торс ", MultiTrigger, GetMultiTrigger(), 1)
	
	--Перчатки 175
	Talk( 5, "Чтобы получить перчатки Гончей Ада, принеси мне:_1. Фальшивие документы - 220шт;_2. Странная маска - 240шт;_3. Золото - 50 миллионов;_4. Репутация - 240. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1747,220 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1752,240 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 50000000,50000000 )
	TriggerCondition( 1, HasCredit, 240 )
	TriggerAction( 1, TakeItem, 1747,220 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1752,240 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 50000000,50000000 )
	TriggerAction( 1, DelRoleCredit, 240 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8050,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 5, "Обменять перчатки ", MultiTrigger, GetMultiTrigger(), 1)
	
	--Ботинки 175
	Talk( 6, "Чтобы получить ботинки Гончей Ада, принеси мне:_1. Золотой пояс - 300шт;_2. Грязный кристалл - 300шт;_3. Золото - 60 миллионов;_4. Репутация - 300. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1750,300 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1751,300 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 60000000,60000000 )
	TriggerCondition( 1, HasCredit, 300 )
	TriggerAction( 1, TakeItem, 1750,300 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1751,300 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 60000000,60000000 )
	TriggerAction( 1, DelRoleCredit, 300 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8051,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 6, "Обменять ботинки ", MultiTrigger, GetMultiTrigger(), 1)
	
	--Оружие 175
	Talk( 7, "Чтобы получить оружие Гончей Ада, принеси мне:_1. Грязный кристалл - 1000шт;_2. Бакс - 5000;_3. Золото - 100 миллионов;_3. Репутация - 5000. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1751,1000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3458,5000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 100000000,100000000 )
	TriggerCondition( 1, HasCredit, 5000 )
	TriggerAction( 1, TakeItem, 1751,1000 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3458,5000 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 100000000,100000000 )
	TriggerAction( 1, DelRoleCredit, 5000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 6165,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 7, "Обменять оружие ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 8, "Чтобы распечатать оружие Гончей Ада, принеси мне:_1. Запечатанное оружие Гончей Ада;_2. Купюра на 100 миллионов - 1шт;_3. 500 репутации. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,7742,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,6165,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasCredit, 500 )
	TriggerAction( 1, TakeItem, 7742,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 6165,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, DelRoleCredit, 500 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 6256,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 8, "Обменять оружие ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "Уйти ", CloseTalk)
	
	Talk( 10, "Чтобы получить свиток дропа х4, принеси мне:_1. 400 репутации; 2. Золото - 40.000.000. ")
	InitTrigger()
	TriggerCondition( 1, HasCredit, 400 )
	TriggerCondition( 1, HasMoney, 40000000,40000000 )
	TriggerAction( 1, DelRoleCredit, 400 )
	TriggerAction( 1, TakeMoney, 40000000,40000000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 7484,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 10, "Обменять свиток ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 10, "Уйти ", CloseTalk)
	
	Talk( 11, "Чтобы получить свиток опыта х4, принеси мне:_1. 400 репутации; 2. Золото - 40.000.000. ")
	InitTrigger()
	TriggerCondition( 1, HasCredit, 400 )
	TriggerCondition( 1, HasMoney, 40000000,40000000 )
	TriggerAction( 1, DelRoleCredit, 400 )
	TriggerAction( 1, TakeMoney, 40000000,40000000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 15695,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 11, "Обменять свиток ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 11, "Уйти ", CloseTalk)
	
	
	Talk(12, "Вы не достойны со мной разговаривать. Вам нужно:_1. Сделать ресет - 2 лвл;_2. Быть выше 190 уровня. ")
	Text(12, "Уйти ", CloseTalk)
	
	Talk(13, "Не хватает лута или репутации для обмена! ")
	Text(13, "Уйти ", CloseTalk)
end

function gems_14()
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  2 ) --Больше или равно этому уровню ресета.
	TriggerCondition( 1, LvCheck, ">", 179 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Start( GetMultiTrigger(), 1 )
	
	Talk( 1, "Привет. Хочешь получить самоцвет +14 к характеристикам? Выбирай, за что ты хочешь их обменять: ")
	Text( 1, "За Ссохшиеся деб-камени ", JumpPage, 2 )
	Text( 1, "За Слезные камни ", JumpPage, 4 )
	Text( 1, "Уйти. ", CloseTalk )
	
	Talk( 2, "Чтобы получить самоцвет, дай мне 5 ссохшихся деб-камней. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2471,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2471,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8021,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 2, "Самоцвет Силы ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2471,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2471,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8022,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 2, "Самоцвет Духа ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2471,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2471,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8023,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 2, "Самоцвет Точности ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2471,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2471,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8024,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 2, "Самоцвет Телосложения ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2471,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2471,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8025,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 2, "Самоцвет Ловкости ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Уйти. ", CloseTalk)
	
	Talk(3, "Принеси мне 5 деб-камней или 5 слезных камней богини. ")
	Text(3, "Уйти. ",CloseTalk)
	
	Talk( 4, "Чтобы получить самоцвет, дай мне 5 слезных камней богини. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2480,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2480,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8021,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 4, "Самоцвет Силы ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2480,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2480,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8022,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 4, "Самоцвет Духа ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2480,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2480,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8023,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 4, "Самоцвет Точности ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2480,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2480,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8024,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 4, "Самоцвет Телосложения ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2480,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2480,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8025,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 4, "Самоцвет Ловкости ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "Уйти. ", CloseTalk)
	
	Talk(5, "Вы не достойны со мной разговаривать. Вам нужно:_1. Сделать ресет - 2 лвл;_2. Быть выше 180 уровня. ")
	Text(5, "Уйти ", CloseTalk)
end

function cloak_trade()
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  2 ) --Больше или равно этому уровню ресета.
	TriggerCondition( 1, LvCheck, ">", 194 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Start( GetMultiTrigger(), 1 )
	
	Talk(1, "Чтобы получить плащ Адмирала, принеси мне:_1. Часть плаща - 100шт;_2. Золото - 30 миллионов;_3. Кость Х - 15шт;_4. Запечатанный плащ - 1шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,7528,100 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 30000000,30000000 )
	TriggerCondition( 1, HasItem,8106,15 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8005,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 7528,100 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 30000000,30000000 )
	TriggerAction( 1, TakeItem, 8106,15 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8005,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 7469,1,88 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 1, "Обменять плащ ", MultiTrigger, GetMultiTrigger(), 1)
	Text(1, "Уйти. ", CloseTalk)
	
	Talk(5, "Вы не достойны со мной разговаривать. Вам нужно:_1. Сделать ресет - 2 лвл;_2. Быть выше 190 уровня. ")
	Text(5, "Уйти ", CloseTalk)
end

function t_diana()
	InitTrigger()
	TriggerCondition( 1, HasItem,2412,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2412,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Start( GetMultiTrigger(), 1 )
	
	Talk( 1, "Хочешь попасть в Лагерь Мертвых Душ 2? ")
	Text( 1, "Телепортироваться ", GoTo, 1583, 1170,  "jialebi" )
	Text( 1, "Уйти. ", CloseTalk )
	
	Talk( 3, "Чтобы говорить со мной, принеси Пароль DEATH. ")
	Text( 3, "Уйти. ",CloseTalk)
end

function rb_angel2()
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  2 ) --Больше или равно этому уровню ресета.
	TriggerCondition( 1, LvCheck, ">", 194 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 15 )
	Start( GetMultiTrigger(), 1 )
	
	Talk( 1, "Привет, странник. Хочешь преродиться? Выбирай профессию. ")
	Text( 1, "Воитель ", GetChaName1_born2)
	Text( 1, "Чемпион ", GetChaName2_born2)
	Text( 1, "Покоритель морей ", GetChaName3_born2)
	Text( 1, "Стрелок ", GetChaName4_born2)
	Text( 1, "Целительница ", GetChaName5_born2)
	Text( 1, "Колдунья ", GetChaName6_born2)
	Text( 1, "Уйти. ", CloseTalk)
	
	Talk(15, "Вы не достойны со мной разговаривать. Вам нужно:_1. Сделать ресет - 2 лвл;_2. Быть выше 195 уровня. ")
	Text(15, "Уйти ", CloseTalk)
end

function card_trade()
	Talk( 1, "Привет! Я обмениваю карты мини-боссов Москвы на мешки._Карты -- мешки ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8125,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8125,3 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 7999,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 1, "3 -- 1 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8125,30 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8125,30 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 7999,10,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 1, "30 -- 10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8125,300 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8125,300 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 7999,100,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 1, "300 -- 100 ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "Уйти. ", CloseTalk)
end

function card_trade1()
	Talk( 1, "Привет! Я обмениваю карты мини-боссов Очка на Сундуки дропа._Карты -- сундуки ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8126,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8126,3 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8123,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 1, "3 -- 1 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8126,30 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8126,30 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8123,10,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 1, "30 -- 10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8126,300 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8126,300 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8123,100,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 1, "300 -- 100 ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "Уйти. ", CloseTalk)
end

function card_trade2()
	Talk( 1, "Привет! Я обмениваю карты мини-боссов Дерьма на Сундуки дропа._Карты -- сундуки ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8127,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8127,3 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8124,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 1, "3 -- 1 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8127,30 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8127,30 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8124,10,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 1, "30 -- 10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8127,300 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8127,300 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8124,100,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 1, "300 -- 100 ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "Уйти. ", CloseTalk)
end

function card_trade3()
	Talk( 1, "Привет! Я обмениваю карты мини-боссов Хаоса Москвы на Сундуки дропа._Карты -- сундуки ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8128,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8128,3 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8122,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 1, "3 -- 1 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8128,30 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8128,30 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8122,10,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 1, "30 -- 10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8128,300 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8128,300 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8122,100,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 1, "300 -- 100 ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "Уйти. ", CloseTalk)
end