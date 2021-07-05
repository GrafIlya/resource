print( "------------------------------------" )
print(  "Loading NPCScript01.lua " )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

function test_convert()
	Talk(1, "Hello. I can convert you items to IGS Crystall. ")
	
	Text(1, "Test.", ConvertItemToCrystall, 3457, 10, 10)
	Text(1, "Close.", CloseTalk)
end

function RBSTONE()
	Talk(1, "Привет. Я могу помочь тебе добыть камни перерождения. ")
	Text(1, "Посмотреть камни ", JumpPage, 2)
	
	Talk(2, "Выбирай камень, который хочешь получить: ")
	Text(2, "Камень 1 РБ ", JumpPage, 3)
	Text(2, "Камень 2 РБ ", JumpPage, 4)
	Text(2, "Камень 3 РБ ", JumpPage, 5)
	
	Talk(3,"Чтобы получить камень 1 РБ, принеси мне:_1.Осколок мистического кристалла - 75шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 4541, 75 )
	TriggerAction( 1, TakeItem, 4541,75 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 2235,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 3, "Обменять камень. ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk(4,"Чтобы получить камень 2 РБ, принеси мне:_1.Слезный камень богини - 150шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 150 )
	TriggerAction( 1, TakeItem, 2480,150 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 6949,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4, "Обменять камень. ", MultiTrigger, GetMultiTrigger(), 1)
	
	
end

function exch_bust()
	Talk(1, "Привет. Я могу обменять твои мешки на золото:_1. Мешок 1лвл на 5к;_1. Мешок 2лвл на 20к;_1. Мешок 3лвл на 60к;_1. Мешок 4лвл на 400к;_1. Мешок 5лвл на 1кк. ")
	Text(1, "Обменять 1 штуку ", JumpPage, 2)
	Text(1, "Обменять 10 штук ", JumpPage, 3)
	Text(1, "Обменять 100 штук ", JumpPage, 4)
	Text(1, "Уйти. ", CloseTalk)
	
	Talk(2,"Выбирай, какой мешок хочешь обменять: ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 7999, 1 )
	TriggerAction( 1, TakeItem, 7999,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 5000, 5000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "Мешок 1 уровня ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8000, 1 )
	TriggerAction( 1, TakeItem, 8000,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 20000, 20000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "Мешок 2 уровня ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8001, 1 )
	TriggerAction( 1, TakeItem, 8001,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 60000, 60000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "Мешок 3 уровня ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8002, 1 )
	TriggerAction( 1, TakeItem, 8002,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 400000, 400000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "Мешок 4 уровня ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8003, 1 )
	TriggerAction( 1, TakeItem, 8003,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 1000000, 1000000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "Мешок 5 уровня ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Уйти. ", CloseTalk)
	
	Talk(3,"Выбирай, какой мешок хочешь обменять: ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 7999, 10 )
	TriggerAction( 1, TakeItem, 7999,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 50000, 50000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 3, "(x10)Мешок 1 уровня ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8000, 10 )
	TriggerAction( 1, TakeItem, 8000,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 200000, 200000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 3, "(x10)Мешок 2 уровня ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8001, 10 )
	TriggerAction( 1, TakeItem, 8001,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 600000, 600000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 3, "(x10)Мешок 3 уровня ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8002, 10 )
	TriggerAction( 1, TakeItem, 8002,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 4000000, 4000000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 3, "(x10)Мешок 4 уровня ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8003, 10 )
	TriggerAction( 1, TakeItem, 8003,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 10000000, 10000000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 3, "(x10)Мешок 5 уровня ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "Уйти. ", CloseTalk)
	
	Talk(4,"Выбирай, какой мешок хочешь обменять: ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 7999, 100 )
	TriggerAction( 1, TakeItem, 7999,100 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 500000, 500000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4, "(x100)Мешок 1 уровня ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8000, 100 )
	TriggerAction( 1, TakeItem, 8000,100 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 2000000, 2000000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4, "(x100)Мешок 2 уровня ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8001, 100 )
	TriggerAction( 1, TakeItem, 8001,100 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 6000000, 6000000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4, "(x100)Мешок 3 уровня ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8002, 100 )
	TriggerAction( 1, TakeItem, 8002,100 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 40000000, 40000000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4, "(x100)Мешок 4 уровня ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8003, 100 )
	TriggerAction( 1, TakeItem, 8003,100 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 100000000, 100000000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4, "(x100)Мешок 5 уровня ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "Уйти. ", CloseTalk)
	
end



function ex_apparels()
	Talk( 1, "Привет. У меня ты можешь приобрести эксклюзивные аппарели! " )
	Text( 1, "Посмотреть ассортимент. ", BuyPage)
	InitTrade()
	Defence( 16122)
end

function new_acc()
	Talk( 1, "Привет. Я помогу тебе стать сильнее! " )
	Text( 1, "Купить аксессуары ", BuyPage)
	InitTrade()
	Other( 495)
	Other( 497)
	Other( 6638)
	Other( 6639)
	Other( 6640)
	Other( 6641)
	Other( 6642)
	Other( 6643)
	Other( 6644)
	Other( 6645)
	Other( 6646)
	Other( 6647)
	Other( 6648)
	Other( 6649)
	Other( 6650)
	Other( 6651)
	Other( 6652)
	Other( 6653)
	Other( 6654)
	Other( 6655)
	Other( 6656)
	Other( 6657)
	Other( 6658)
	Other( 6659)
	Other( 6660)
	Other( 6661)
	Other( 6662)
end

function guilds()
	Talk( 1, "Привет. Я помогу тебе создать гильдию! Для создания нужен Камень клятвы и 3.000.000 золота. " )
	Text( 1, "Купить камень ", BuyPage)
	InitTrade()
	Other( 1780)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerCondition( 1, NoGuild )
	TriggerAction( 1, CreateGuild, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Создать гильдию Флота ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerCondition( 1, NoGuild )
	TriggerAction( 1, CreateGuild, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "Создать пиратскую гильдию ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk(2, "У вас нет Камня Клятвы или 1 миллиона золота. ")
	Text(2, "Понял, ушел. ",CloseTalk)
end 

function guild1()
	Talk( 1, "Гевас: Привет! Мне известны все пиратские организации в мире! Хотите присмотреть местечко для себя? ")
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 1 )
	TriggerAction( 1, ListAllGuild, 1 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, NoGuild )
	TriggerAction( 3, ListAllGuild, 1 )
	TriggerFailure( 3, JumpPage, 3 )
	Text( 1, "Посмотреть пиратские гильдии ", MultiTrigger, GetMultiTrigger(), 3)

	Text( 1, "Прощайте ", CloseTalk)
	
	Talk( 2, "Гевас: Эй, да вы из флота! Я не буду говорить ни с кем из флота! ")

	Talk( 3, "Гевас: Хотите узнать кто самый известный пират? Я этого не скажу. ")
end

function guild2()
	Talk( 1, "Далонгдан: привет! Я осведомитель флота. У меня есть полный списко всех флотских гильдий! ")
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 0 )
	TriggerAction( 1, ListAllGuild, 0 )
	TriggerCondition( 2, IsGuildType, 1 )
	TriggerAction( 2, JumpPage, 3 )
	TriggerCondition( 3, NoGuild )
	TriggerAction( 3, ListAllGuild, 0 )
	TriggerFailure( 3, JumpPage, 2 )
	Text( 1, "Посмотреть список гильдий ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "До свидания ", CloseTalk)
	
	Talk( 2, "Далонгдан: Вы не можете посмотреть списки гильдий не имея при себе рекомендательного письма! ")

	Talk( 3, "Далонгдан: Вы не принадлежите к флоту. Я не буду давать вам никакую информацию! ")
end
-------------
-- PK очки --
-------------
function pk_points()
	InitTrigger()
	TriggerAction( 1, PK_points )
	Start( GetMultiTrigger(), 1 )
end

--------------
-- PVP очки --
--------------
function pvp_points()
	InitTrigger()
	TriggerAction( 1, PVP_points )
	Start( GetMultiTrigger(), 1 )
end

-----------------
-- Топ Гильдий --
-----------------
function top_guilds()
	Talk( 1,  "Сила в единстве! Хотите бросить вызов одной из 3 самых сильных гильдий? Хотите править этим миром? " )
	Text( 1,  "Топ 3 гильдий ", ListChallenge)
	
end
------------------------------------------------------------
-- 						Профессии						  --
------------------------------------------------------------
function npc_job ()

	Talk( 1, "Привет! Я помогаю освоить профессию. Выбирай:" )
	Text( 1, "Хочу первую ", JumpPage, 2)
	Text( 1, "Хочу вторую ", JumpPage, 3)
	Text( 1, "Уйти. ",  CloseTalk)


	Talk( 2, "Для получения требуется 9 лвл и 1к голда! " )
	Text( 2, "Мечник ", JumpPage, 4 )
	Text( 2, "Охотник ", JumpPage, 5 )
	Text( 2, "Знахарка ", JumpPage, 6 )
	Text( 2, "Путешевственник ", JumpPage, 7 )
	Text( 2, "Ебнуть и убежать ", CloseTalk )

	Talk( 3, "Для получения требуется 40 лвл и 50к голда! " )
	Text( 3, "Воитель ", JumpPage, 8 )
	Text( 3, "Чемпион ", JumpPage, 9 )
	Text( 3, "Стрелок ", JumpPage, 10 )
	Text( 3, "Целительница ", JumpPage, 11 )
	Text( 3, "Колдунья ", JumpPage, 12 )
	Text( 3, "Покоритель морей ", JumpPage, 13 )
	Text( 3, "Ебнуть и убежать ", CloseTalk )

	Talk( 4, "У тебя уже есть 9 лвл и 1к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000,1000 )
	TriggerAction( 1, TakeMoney, 1000,1000 )
	TriggerAction( 1, SetProfession, 1 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 8 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000,1000 )
	TriggerAction( 2, TakeMoney, 1000,1000 )
	TriggerAction( 2, SetProfession, 1 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerCondition( 3, LvCheck, ">", 8 )
	TriggerCondition( 3, IsCategory, 3 )
	TriggerCondition( 3, PfEqual, 0 )
	TriggerCondition( 3, HasMoney, 1000,1000 )
	TriggerAction( 3, TakeMoney, 1000,1000 )
	TriggerAction( 3, SetProfession, 1 )
	TriggerAction( 3, JumpPage, 14 )
	TriggerCondition( 4, LvCheck, ">", 8 )
	TriggerCondition( 4, IsCategory, 4 )
	TriggerCondition( 4, PfEqual, 0 )
	TriggerCondition( 4, HasMoney, 1000,1000 )
	TriggerAction( 4, TakeMoney, 1000,1000 )
	TriggerAction( 4, SetProfession, 1 )
	TriggerAction( 4, JumpPage, 14 )
	TriggerFailure( 4, JumpPage, 15 )
	Text( 4, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 4)
	Text( 4, "Перейти к выбору проф ", JumpPage, 2 )

	Talk( 5, "У тебя уже есть 9 лвл и 1к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000,1000 )
	TriggerAction( 1, TakeMoney, 1000,1000 )
	TriggerAction( 1, SetProfession, 2 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 8 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000,1000 )
	TriggerAction( 2, TakeMoney, 1000,1000 )
	TriggerAction( 2, SetProfession, 2 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerFailure( 2, JumpPage, 15 )
	Text( 5, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 2)
	Text( 5, "Перейти к выбору проф ", JumpPage, 2 )


	Talk( 6, "У тебя уже есть 9 лвл и 1к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000,1000 )
	TriggerAction( 1, TakeMoney, 1000,1000 )
	TriggerAction( 1, SetProfession, 5 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 8 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000,1000 )
	TriggerAction( 2, TakeMoney, 1000,1000 )
	TriggerAction( 2, SetProfession, 5 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerCondition( 3, LvCheck, ">", 8 )
	TriggerCondition( 3, IsCategory, 1 )
	TriggerCondition( 3, PfEqual, 0 )
	TriggerCondition( 3, HasMoney, 1000,1000 )
	TriggerAction( 3, TakeMoney, 1000,1000 )
	TriggerAction( 3, SetProfession, 5 )
	TriggerAction( 3, JumpPage, 14 )
	TriggerFailure( 3, JumpPage, 15 )
	Text( 6, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 6, "Перейти к выбору проф ", JumpPage, 2 )

	Talk( 7, "У тебя уже есть 9 лвл и 1к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000,1000 )
	TriggerAction( 1, TakeMoney, 1000,1000 )
	TriggerAction( 1, SetProfession, 4 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 8 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000,1000 )
	TriggerAction( 2, TakeMoney, 1000,1000 )
	TriggerAction( 2, SetProfession, 4 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerCondition( 3, LvCheck, ">", 8 )
	TriggerCondition( 3, IsCategory, 4 )
	TriggerCondition( 3, PfEqual, 0 )
	TriggerCondition( 3, HasMoney, 1000,1000 )
	TriggerAction( 3, TakeMoney, 1000,1000 )
	TriggerAction( 3, SetProfession, 4 )
	TriggerAction( 3, JumpPage, 14 )
	TriggerFailure( 3, JumpPage, 15 )
	Text( 7, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 7, "Перейти к выбору проф ", JumpPage, 2 )


	Talk( 8, "У тебя уже есть 40 лвл и 50к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 9 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 1 )
	TriggerCondition( 2, HasMoney, 50000,50000 )
	TriggerAction( 2, TakeMoney, 50000,50000 )
	TriggerAction( 2, SetProfession, 9 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerCondition( 3, LvCheck, ">", 39 )
	TriggerCondition( 3, IsCategory, 2 )
	TriggerCondition( 3, PfEqual, 1 )
	TriggerCondition( 3, HasMoney, 50000,50000 )
	TriggerAction( 3, TakeMoney, 50000,50000 )
	TriggerAction( 3, SetProfession, 9 )
	TriggerAction( 3, JumpPage, 14 )
	TriggerFailure( 3, JumpPage, 15 )
	Text( 8, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 8, "Перейти к выбору проф", JumpPage, 2 )

	Talk( 9, "У тебя уже есть 40 лвл и 50к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 2 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, HasMoney, 50000, 50000)
	TriggerAction( 1, SetProfession, 8 )
	TriggerAction( 1, TakeMoney, 50000, 50000 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 1 )
	TriggerCondition( 2, HasMoney, 50000, 50000)
	TriggerAction( 2, SetProfession, 8 )
	TriggerAction( 2, TakeMoney, 50000, 50000 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerCondition( 3, LvCheck, ">", 39 )
	TriggerCondition( 3, IsCategory, 3 )
	TriggerCondition( 3, PfEqual, 1 )
	TriggerCondition( 3, HasMoney, 50000, 50000)
	TriggerAction( 3, SetProfession, 8 )
	TriggerAction( 3, TakeMoney, 50000, 50000 )
	TriggerAction( 3, JumpPage, 14 )
	TriggerCondition( 4, LvCheck, ">", 39 )
	TriggerCondition( 4, IsCategory, 1 )
	TriggerCondition( 4, PfEqual, 1 )
	TriggerCondition( 4, HasMoney, 50000, 50000)
	TriggerAction( 4, SetProfession, 8 )
	TriggerAction( 4, TakeMoney, 50000, 50000 )
	TriggerAction( 4, JumpPage, 14 )
	TriggerFailure( 4, JumpPage, 15 )
	Text( 9, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 4)
	Text( 9, "Перейти к выбору проф ", JumpPage, 2 )

	Talk( 10, "У тебя уже есть 40 лвл и 50к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 12 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 50000,50000 )
	TriggerAction( 2, TakeMoney, 50000,50000 )
	TriggerAction( 2, SetProfession, 12 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerFailure( 2, JumpPage, 15 )
	Text( 10, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 2)
	Text( 10, "Перейти к выбору проф ", JumpPage, 2 )

	Talk( 11, "У тебя уже есть 40 лвл и 50к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 5 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 13 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 5 )
	TriggerCondition( 2, HasMoney, 50000,50000 )
	TriggerAction( 2, TakeMoney, 50000,50000 )
	TriggerAction( 2, SetProfession, 13 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerCondition( 3, LvCheck, ">", 39 )
	TriggerCondition( 3, IsCategory, 1 )
	TriggerCondition( 3, PfEqual, 5 )
	TriggerCondition( 3, HasMoney, 50000,50000 )
	TriggerAction( 3, TakeMoney, 50000,50000 )
	TriggerAction( 3, SetProfession, 13 )
	TriggerAction( 3, JumpPage, 14 )
	TriggerFailure( 3, JumpPage, 15 )
	Text( 11, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 11, "Перейти к выбору проф ", JumpPage, 2 )

	Talk( 12, "У тебя уже есть 40 лвл и 50к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 5 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 14 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 5 )
	TriggerCondition( 2, HasMoney, 50000,50000 )
	TriggerAction( 2, TakeMoney, 50000,50000 )
	TriggerAction( 2, SetProfession, 14 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerCondition( 3, LvCheck, ">", 39 )
	TriggerCondition( 3, IsCategory, 1 )
	TriggerCondition( 3, PfEqual, 5 )
	TriggerCondition( 3, HasMoney, 50000,50000 )
	TriggerAction( 3, TakeMoney, 50000,50000 )
	TriggerAction( 3, SetProfession, 14 )
	TriggerAction( 3, JumpPage, 14 )
	TriggerFailure( 3, JumpPage, 15 )
	Text( 12, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 12, "Перейти к выбору проф ", JumpPage, 2 )

	Talk( 13, "У тебя уже есть 40 лвл и 50к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 4 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 16 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 4 )
	TriggerCondition( 2, HasMoney, 50000,50000 )
	TriggerAction( 2, TakeMoney, 50000,50000 )
	TriggerAction( 2, SetProfession, 16 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerCondition( 3, LvCheck, ">", 39 )
	TriggerCondition( 3, IsCategory, 4 )
	TriggerCondition( 3, PfEqual, 4 )
	TriggerCondition( 3, HasMoney, 50000,50000 )
	TriggerAction( 3, TakeMoney, 50000,50000 )
	TriggerAction( 3, SetProfession, 16 )
	TriggerAction( 3, JumpPage, 14 )
	TriggerFailure( 3, JumpPage, 15 )
	Text( 13, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 13, "Перейти к выбору проф ", JumpPage, 2 )

	Talk( 14, "Сменщик проф: Поздравляю тебя с получением профессии ")
	Text( 14, "Спасибо ",  CloseTalk)

	Talk( 15, "Сменщик проф: Ты не подходишь под требования!")
	Text( 15, "Я понел ",  CloseTalk)

end

function kuznec ()
	Talk( 1,  "Голди: при улучшении экипировки,убедитесь что в вашем инвентаре достаточно свободного места! При полном инвентаре вещь исчезает! " )
	Text( 1,  "Торг ", BuyPage )
	Text( 1,  "Ремонт ", OpenRepair )
	Text( 1,  "Сделать слот ", OpenMilling)
	Text( 1,  "Вставить самоцвет ", OpenForge)
	Text( 1,  "Комбинация самоцветов ", OpenUnite)
	Text( 1,  "Улучшение аппарели ", OpenUpgrade)
	Text( 1,  "Вставить в аппарель ", OpenFusion)


	InitTrade()
	Weapon(	0891	)
	Weapon(	0890	)
	Weapon(	1020	)
	Weapon(	7916	)
	Weapon(	7917	)
	Weapon(	0886	)
	Weapon(	0885	)
	Weapon(	8130	)
	Weapon(	8131	)
	Weapon(	8132	)


	AddNpcMission ( 703  )
	AddNpcMission (	58	 )
	AddNpcMission (	59	 )
	AddNpcMission (	60	 )
	AddNpcMission (	1221 )
end 

function equip()
	Talk( 1,  "Бабушка Нилла: Добрый вечер! У меня для Вас в продаже лучшие вещи! Надеюсь Вам понравится! " )
	Text( 1,  "Торг ", BuyPage )

	InitTrade()
	Defence(	0290	)
	Defence(	0466	)
	Defence(	0642	)
	Defence(	0296	)
	Defence(	0472	)
	Defence(	0648	)
	Defence(	0291	)
	Defence(	0467	)
	Defence(	0643	)
	Defence(	0297	)
	Defence(	0473	)
	Defence(	0649	)
	Defence(	0293	)
	Defence(	0469	)
	Defence(	0645	)
	Defence(	0298	)
	Defence(	0474	)
	Defence(	0650	)
	Defence(	0300	)
	Defence(	0476	)
	Defence(	0652	)
	Defence(	0301	)
	Defence(	0477	)
	Defence(	0653	)
	Defence(	0228	)
	Defence(	0229	)
	Defence(	0230	)
	Defence(	0295	)
	Defence(	0471	)
	Defence(	0647	)
	Defence(	0302	)
	Defence(	0478	)
	Defence(	0654	)
	Defence(	0299	)
	Defence(	0475	)
	Defence(	0651	)
	Defence(	0303	)
	Defence(	0479	)
	Defence(	0655	)

	AddNpcMission ( 705 )	
end


function help_kuz()
	Talk( 1,  "Могу предложить тебе: " )
	Text( 1,  "Улучшение экипировки ", OpenItemTiChun)
	Text( 1,  "Комбинация самоцветов ", OpenUnite)
	Text( 1,  "Вытащить самоцвет ", OpenGetStone)
	Text( 1,  "Комбинирование рефов ", JumpPage, 2)
	Talk( 2, "Я могу скомбинировать твои очищающие самоцветы при условии, что:_1. Ты имеешь 8,16 или 32шт самоцветов;_2. У тебя есть 8,30 или 100кк золота! ")
	Text( 2,  "Реф 4 уровня ", FastCombiner, 885, 4)
	Text( 2,  "Реф 5 уровня ", FastCombiner, 885, 5)
	Text( 2,  "Реф 6 уровня ", FastCombiner, 885, 6)
end

function fairy ()
	
	
	Talk( 1, "Гомо: Привет! У меня можешь приобрести фей и все для них. " )
	Text( 1, "Торг ", BuyPage )
	Text( 1, "Рассмотреть обмен ", JumpPage, 2)
	Text( 1, "Свадьба фей ", OpenEidolonMetempsychosis )
	
	Talk( 2, "Привет, выбери, что ты хочешь обменять: " )
	Text( 2, "Монеты фей ", JumpPage, 3)
	Text( 2, "Эльф. печати ", JumpPage, 4)
	Text( 2, "Золотые эльф. печати ", JumpPage, 5)

	Talk( 3, "МФ - монета феи. Выбери обмен: " )
	InitTrigger()
	TriggerCondition( 1, HasItem,855,400 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 855,400 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 247,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 3, "Стандартный берсерк - 400МФ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,855,400 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 855,400 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 244,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 3, "Стандартный защита - 400МФ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,855,400 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 855,400 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 250,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 3, "Стандартный магия - 400МФ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,855,400 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 855,400 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 253,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 3, "Стандартное восстановление - 400МФ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,855,400 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 855,400 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 260,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 3, "Стандартная медитация - 400МФ ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "Уйти. ", CloseTalk)
	
	Talk( 4, "ЭП - эльфийская печать. Выбери обмен: " )
	InitTrigger()
	TriggerCondition( 1, HasItem,2588,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2588,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 578,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 4, "Фрукт роста феи 1шт - 1 ЭП ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2588,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2588,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 578,5,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 4, "Фрукт роста феи 5шт - 5 ЭП ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2588,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2588,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 578,10,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 4, "Фрукт роста феи 10шт - 10 ЭП ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "Уйти. ", CloseTalk)
	
	Talk( 5, "ЭКП - эльфийская королевская печать. Выбери обмен: ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2589,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2589,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 100000, 100000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "100.000 золота - 1 ЭКП ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2589,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2589,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 500000, 500000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "500.000 золота - 5 ЭКП ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2589,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2589,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 1000000, 1000000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "1.000.000 золота - 10 ЭКП ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 10, "Вам не хватает лута. ")
	Text( 10, "Уйти ", CloseTalk)

    Weapon(	0679	)		--Яйцо мордо
	Weapon(	2312	)
	Weapon(	0183	)
	Weapon(	0184	)
	Weapon(	0185	)
	Weapon(	0186	)
	Weapon(	0187	)
	Weapon(	0188	)
	Weapon(	0189	)
	Weapon(	0190	)
	Defence(	5343	)
	Defence(	5344	)
	Defence(	5345	)
	Defence(	5346	)
	Defence(	5347	)
	Defence(	5348	)
	Defence(	5349	)
	Defence(	5350	)
	Defence(	5351	)
	Defence(	5352	)
	

end 

function Skills()
    Talk( 1,  "Мастер умений: Привет,я помогу постичь не постижимое.А если у тебя не хватит очков навыков,ты всегда можешь вернутся позже " )
    --Text( 1,  "Автоматическое изучение(50к) ", AddSkillNPC)
    Text( 1,  "Купить книги ", BuyPage)
	InitTrigger()
	Weapon(   3297   )
   	Weapon(   3298   )
   	Weapon(   3164   )
   	Weapon(   3160   )
   	Weapon(   3161   )
   	Weapon(   3165   )
   	Weapon(   3238   )
   	Weapon(   3170   )
   	Weapon(   3293   )
   	Weapon(   3174   )
   	Weapon(   3163   )
   	Weapon(   3176   )
   	Weapon(   3180   )
   	Weapon(   3179   )
   	Weapon(   3177   )
   	Weapon(   3168   )
   	Weapon(   3162   )
   	Weapon(   3166   )
   	Weapon(   3167   )
   	Weapon(   3172   )
   	Weapon(   3173   )
   	Weapon(   3227   )
   	Weapon(   3231   )
   	Weapon(   3228   )
   	Weapon(   3229   )
   	Weapon(   3230   )
   	Weapon(   3232   )
   	Weapon(   3233   )
   	Weapon(   3234   )
   	Weapon(   3235   )
   	Weapon(   3236   )
   	Weapon(   3237   )
	
   	Defence(   3187   )
   	Defence(   3188   )
   	Defence(   3190   )
   	Defence(   3239   )
   	Defence(   3197   )
   	Defence(   3193   )
   	Defence(   3241   )
   	Defence(   3192   )
   	Defence(   3198   )
   	Defence(   3202   )
   	Defence(   3203   )
   	Defence(   3204   )
	
   	Other(   3206   )
   	Other(   3208   )
   	Other(   3205   )
   	Other(   3242   )
   	Other(   3210   )
   	Other(   3207   )
   	Other(   3211   )
   	Other(   3215   )
   	Other(   3212   )
   	Other(   3209   )
   	Other(   3220   )
   	Other(   3222   )
   	Other(   3219   )
   	Other(   3218   )
   	Other(   3216   )
   	Other(   3223   )
   	Other(   3217   )
   	Other(   3224   )
   	Other(   3225   )
   	Other(   3226   )
   	Other(   3294   )
   	Other(   3295   )
   	Other(   3296   )
	Other(	3299	)
	Other(	3300	)
	Other(	3301	)
	Other(	3462	)
	Other(	3463	)
	Other(	3143	)
	
    Text( 1,  "В другой раз ", CloseTalk )
end

function Skills_New()
	Talk( 1, "Приветствую тебя, упырь! Я могу обменять лут с Зимы на Новые скиллы! Выбирай: " )
	Text( 1, "Инвиз БК ",JumpPage, 2)
	Text( 1, "Огненный шар БК ",JumpPage, 3)
	Text( 1, "Вой для круза ",JumpPage, 4)
	Text( 1, "Уйти ", CloseTalk )
	
	InitTrigger()
	Talk( 2, "Инвиз для БК - 5000 плам.баксов")
	TriggerCondition( 1, HasItem,3458,5000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3458,5000 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 3583, 1, 4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2,  "Дарю Инвиз для БК ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 3, "Огненный шар для БК - 7500 плам.баксов")
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,7500 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3458,7500 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 3584, 1, 4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3,  "Дарю огненный шар для БК ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4, "Вой для Круза  - 3000 плам.баксов")
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,3000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3458,3000 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 3585, 1, 4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 4,  "Дарю Вой для Круза ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 5, "У вас не хватает Пламенных баксов! ")
	Text( 5, "Уйти. ", CloseTalk)
end


function Kleha()
	Talk( 1, "Приветствую тебя, упырь! Я могу обменять лут на клещи 2 и 3 слота!_Выбирай: " )
	Text( 1, "2 слот ",JumpPage, 2)
	Text( 1, "3 слот ",JumpPage, 3)
	Text( 1, "Уйти ", CloseTalk )
	Talk( 2, "Клещи для 2 слота - 50 плам.баксов и 20к голдишка")
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,50 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1,HasMoney,20000,20000)
	TriggerAction( 1, TakeItem, 3458,50 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 20000,20000 )
	TriggerAction( 1, GiveItem, 4274, 1, 4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 1 )
	Text( 2,  "Дарю Клещи для 2 слота ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 3, "Клещи для 3 слота - 50 плам.баксов и 20к голдишка")
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,50 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1,HasMoney,20000,20000)
	TriggerAction( 1, TakeItem, 3458,50 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 20000,20000 )
	TriggerAction( 1, GiveItem, 4275, 1, 4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 1 )
	Text( 3,  "Дарю Клещи для 3 слота ", MultiTrigger, GetMultiTrigger(), 1)
end

function Buster()
	Talk( 1, "Приветствую тебя, упырь! Я Капитан Бустеренко,помогу тебе ебашить врагов!_Выбирай: " )
	Text( 1, "1 Маг.Бустеры ",JumpPage, 2)
	Text( 1, "2 Физ.БУстеры ",JumpPage, 3)
	Text( 1, "Уйти ", CloseTalk )
	
	Talk( 2, "Выбирай, что хочешь получить:_1. Уровень 1 - 100 плам. баксов;_2. Уровень 2 - 200 плам. баксов;_3. Уровень 3 - 300 плам. баксов;_4. Уровень 4 - 400 плам. баксов;_5. Уровень 5 - 500 плам. баксов. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,100 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3458,100 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 4283, 1, 4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "1 Маг.Бустеры 1 лвл - 100 плам.баксов ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,200 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3458,200 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 4284, 1, 4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "1 Маг.Бустеры 2 лвл  - 200 плам.баксов", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,300 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3458,300 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 4285, 1, 4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "1 Маг.Бустеры 3 лвл  - 300 плам.баксов", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,400 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3458,400 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 4286, 1, 4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "1 Маг.Бустеры 4 лвл  - 400 плам.баксов", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,500 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3458,500 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 4287, 1, 4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "Маг.Бустеры 5 лвл", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "В начало ",JumpPage, 1 )
	
	Talk( 3,  "Выбирай, что хочешь получить:_1. Уровень 1 - 200 плам. баксов;_2. Уровень 2 - 400 плам. баксов;_3. Уровень 3 - 600 плам. баксов;_4. Уровень 4 - 800 плам. баксов;_5. Уровень 5 - 1000 плам. баксов. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,200 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3458,200 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 4276, 1, 4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 3, "Физ.Бустеры 1 лвл ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,400 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3458,400 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 4277, 1, 4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 3, "Физ.Бустеры 2 лвл ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,600 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3458,600 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 4278, 1, 4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 3, "Физ.Бустеры 3 лвл ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,800 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3458,800 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 4279, 1, 4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 3, "Физ.Бустеры 4 лвл ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,1000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3458,1000 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 4280, 1, 4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 3, "Физ.Бустеры 5 лвл ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "<-- Назад ",JumpPage, 1)
end


function bankir()
	Talk( 1,  "Чмо: Привет! Добро пожаловать в Банк Москвы. Могу ли я чем либо помочь? " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "Хранилище (2000 золота) ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1,  "Покупка Купюр ", BuyPage )
	Text( 1,  "Обмен репутации ", JumpPage, 3 )
	Talk( 2,  "Прости, но у тебя недостаточно денег на счету " )
	
	InitTrade()
	Weapon(	7476	)
	Weapon(	7491	)
	Weapon(	7492	)
	Weapon(	7493	)
	Weapon(	7742	)

	Talk( 3, "Выбирай, сколько репутации ты хочешь обменять на купюры: " )
	InitTrigger()
	TriggerCondition( 1, HasCredit, 10 )
	TriggerAction( 1, DelRoleCredit, 10 )
	TriggerFailure( 1, JumpPage, 4 )
	TriggerAction( 1, GiveItem, 7625,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 3, "10 репутации ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasCredit, 50 )
	TriggerAction( 1, DelRoleCredit, 50 )
	TriggerFailure( 1, JumpPage, 4 )
	TriggerAction( 1, GiveItem, 7622,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 3, "50 репутации ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasCredit, 100 )
	TriggerAction( 1, DelRoleCredit, 100 )
	TriggerFailure( 1, JumpPage, 4 )
	TriggerAction( 1, GiveItem, 7623,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 3, "100 репутации ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasCredit, 500 )
	TriggerAction( 1, DelRoleCredit, 500 )
	TriggerFailure( 1, JumpPage, 4 )
	TriggerAction( 1, GiveItem, 7624,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 3, "500 репутации ", MultiTrigger, GetMultiTrigger(), 1)
	
	
	
	Talk( 4, "Для обмена у вас не хватает репутации. ")
	Text( 4, "Уйти. ", CloseTalk)
end 

function for_newbie()

	Talk( 1, "Привет, пират! Выбирай, что ты хочешь обменять: " )
	Text( 1, "Сет Смерти(100лвл) ", JumpPage, 2)
	Text( 1, "Уйти. ", CloseTalk )
	Talk( 2, "Чтобы получить Сет Смерти, принеси мне:_1.Ясеневое бревно - 100;_2.Темный камень желаний - 100;_3.Необогащённая железная руда - 100;_4.Карта Ммини-босса Москвы - 5;_5.Золото - 1.000.000. " )
	InitTrigger()
	TriggerCondition( 1, HasItem,3989,100 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3905,100 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1667,100 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8125,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 3989,100 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3905,100 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1667,100 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8125,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 7487,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2, "Обменять Сет Смерти. ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Уйти. ", CloseTalk )
	
	Talk( 6, "Не пытайся меня обмануть. Собери все предметы! " )
	Text( 6, "Уйти. ", CloseTalk )
	
	AddNpcMission ( 1100 )
	AddNpcMission ( 1101 )
end

function buffer ()
	InitTrigger()
	TriggerAction( 1, MegaBuff )
	Start( GetMultiTrigger(), 1 )
end

function healer ()

	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, ReAll )
	TriggerFailure( 1, JumpPage, 2 )
	Start( GetMultiTrigger(),1 )
	
	Talk( 2, "Чтобы вылечиться, принеси мне 5000 золота! ")
	Text( 2, "Убежать. ", CloseTalk )
end

function change_items()

	Talk( 1, "Приветствую тебя, упырь! Я могу обменять лут с мини-боссов на золото! Выбирай: " )
	Text( 1, "Ящик кузнеца ",JumpPage, 2)
	Text( 1, "Руна Кэль ",JumpPage, 4)
	Text( 1, "Уйти ", CloseTalk )
	InitTrigger()
	TriggerCondition( 1, HasItem,8004,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8004,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 5000, 5000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2,  "Ящик кузнеца 1шт - 5к ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8004,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8004,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 50000, 50000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2,  "Ящик кузнеца 10шт - 50к ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8004,100 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8004,100 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 500000, 500000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2,  "Ящик кузнеца 100шт - 500к ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem,3457,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3457,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 9000, 9000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4,  "Руна Кэль 1шт - 9к ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3457,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 90000, 90000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4,  "Руна Кэль 10шт - 90к ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,100 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3457,100 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, AddMoney, 900000, 900000 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4,  "Руна Кэль 100шт - 900к ", MultiTrigger, GetMultiTrigger(), 1)

end

function r_forsak()
	Talk( 1, "Привет, сраный задрот! Вижу ты дорос до Затерянного очка? Тогда выбирай, чем ты хочешь получить по ебалу! ")
	Text( 1, "Телепортироваться ", GoTo, 308, 310,  "abandonedcity" )
	Text( 1, "Кости Храбреца на гемы 1ур. ", JumpPage, 2)
	Text( 1, "Кости Мертвеца на гемы 1ур. ", JumpPage, 4)
	Text( 1, "Сундуки на гемы 2ур. ", JumpPage, 3)
	Text( 1, "Обменять вещи ", SendExchangeData)
	Text( 1, "Уйти ",CloseTalk )

	InitExchange() 
	ExchangeData(	8041	,	1	,	3603	,	1	,	1)
	ExchangeData(	8042	,	1	,	3604	,	1	,	1)
	ExchangeData(	4837	,	1	,	5012	,	1	,	1)
	
	Talk( 2, "Чтобы получить самоцвет +4 первого уровня, принеси мне 10 костей Храбреца. Если готов, выбирай: ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1624,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 1624,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8006,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 2,  "Самоцвет Силы +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1624,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 1624,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8007,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 2,  "Самоцвет Духа +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1624,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 1624,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8008,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 2,  "Самоцвет Точности +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1624,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 1624,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8009,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 2,  "Самоцвет Телосложения +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1624,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 1624,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8010,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 2,  "Самоцвет Ловкости +4 ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "Чтобы получить самоцвет +4 второго уровня, принеси мне сундук брюлика +4 и 1 руну Кэль. Если готов, выбирай: ")
	InitTrigger()
	TriggerCondition( 1, HasItem,7925,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3457,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 7925,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3457,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8006,1,102 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 3,  "Самоцвет Силы +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7925,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3457,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 7925,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3457,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8007,1,102 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 3,  "Самоцвет Духа +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7925,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3457,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 7925,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3457,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8008,1,102 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 3,  "Самоцвет Точности +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7925,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3457,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 7925,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3457,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8009,1,102 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 3,  "Самоцвет Телосложения +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7925,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3457,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 7925,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3457,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8010,1,102 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 3,  "Самоцвет Ловкости +4 ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 4, "Чтобы получить самоцвет +4 первого уровня, принеси мне 10 костей Мертвеца. Если готов, выбирай: ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1625,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 1625,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8006,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 4,  "Самоцвет Силы +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1625,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 1625,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8007,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 4,  "Самоцвет Духа +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1625,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 1625,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8008,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 4,  "Самоцвет Точности +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1625,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 1625,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8009,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 4,  "Самоцвет Телосложения +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1625,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 1625,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8010,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 4,  "Самоцвет Ловкости +4 ", MultiTrigger, GetMultiTrigger(), 1)
	
	
	Talk( 15, "У вас не хватает вещей! ")
	Text( 15, "Уйти обоссанным. ", CloseTalk )
	
	AddNpcMission ( 1102 )
	AddNpcMission ( 1103 )
end

function r_ds ()

 Talk( 1, "Приветствую. Чем могу помочь? " )
Text( 1, "Телепортироваться ", GoTo, 302, 338,  "darkswamp" )
 Text( 1, "Узнать о костях ", JumpPage, 2)
 Text( 1, "Обмен кристалла ", JumpPage, 4)
 Text( 1, "Обмен самоцветов +7 ", JumpPage, 6)
 Text( 1, "Обмен сундуков +7 ", JumpPage, 8)
 Text( 1, "Съебаться ", CloseTalk )    

	Talk( 2, "Чтобы получить Волшебную кость, нужно собрать материалы:_1.Дерево - 50шт;_2. Руда - 50шт;_3. Метеорит - 50шт._После этого получить чертеж и создать кость. " )
	Text( 2, "Вернуться на страницу ", JumpPage, 1)
	Text( 2, "Съебаться ", CloseTalk)
	
	
	
	Talk( 4, "Есть два способа получить кристалл. Первый это убить босса Мира Дерьма и второй обмен. Второй - 4 осколка мистического кристалла и 1500 пламенных баксов. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,4541,4 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3458,1500 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 4541,4 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3458,1500 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 4550,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 4, "Обменять кристалл ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "Вернуться на страницу ", JumpPage, 1)
	Text( 4, "Съебаться ", CloseTalk)
	
	Talk( 5, "Вам не хватает осколков мистического кристалла. ")
	Text( 5, "Уйти. ", CloseTalk)
	
	Talk( 6, "Чтобы получить самоцвет +7 второго уровня, принеси мне 15 штук Грязи и 5 руны Кэль. Если готов, выбирай: ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3927,15 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3457,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3927,15 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3457,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8011,1,102 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6,  "Самоцвет Силы +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3927,15 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3457,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3927,15 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3457,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8012,1,102 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6,  "Самоцвет Духа +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3927,15 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3457,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3927,15 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3457,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8013,1,102 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6,  "Самоцвет Точности +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3927,15 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3457,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3927,15 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3457,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8014,1,102 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6,  "Самоцвет Телосложения +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3927,15 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3457,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3927,15 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3457,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8015,1,102 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6,  "Самоцвет Ловкости +7 ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 7, "Вам не зватает материалов, чтобы получить самоцвет. ")
	Text( 7, "Уйти. ", CloseTalk)
	
	Talk( 8, "Ты можешь обменять ящик брюлика +7 и 1 руну Кэль на нужный самоцвет +7 первого уровня! ")
	InitTrigger()
	TriggerCondition( 1, HasItem,7926,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3457,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 7926,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3457,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8011,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 8,  "Самоцвет Силы +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7926,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3457,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 7926,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3457,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8012,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 8,  "Самоцвет Духа +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7926,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3457,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 7926,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3457,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8013,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 8,  "Самоцвет Точности +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7926,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3457,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 7926,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3457,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8014,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 8,  "Самоцвет Телосложения +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7926,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3457,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 7926,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3457,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8015,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 8,  "Самоцвет Ловкости +7 ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "Уйти. ", CloseTalk)
	
	
	AddNpcMission ( 1104 )
	AddNpcMission ( 1105 )
	AddNpcMission ( 1106 )
	AddNpcMission ( 1107 )
	
end

function some_items()
	Talk(1, "Привет. Я продаю разнообразные артефакты. Хочешь взглянуть? ")
	Text(1, "Взглянуть. ", BuyPage )
	InitTrade()
	--Weapon()
	--Defence()
	Other(1847)
	Other(1848)
	Other(1849)
	Other(3129)
	Other(3130)
	Other(3131)
	
	Other(8148)
	Other(8149)
	Other(8150)
	Other(8151)
	Other(8152)
	Other(8153)
	Other(899)
	Other(900)
	Other(901)
	Other(902)
	Other(903)
	
	Other(3089)
	Other(3090)
	Other(3091)
	Other(3092)
	Other(3093)
	
	Other(0849)
	Other(3096)
	Other(1128)
	AddNpcMission ( 707 )
end

function r_ds21()
	Talk( 1, "Привет, нубок! Я помогаю Воителям обменять мечи Аббадона на мечи Мертвеца! Принеси мне 2 меча Аббадона и Камень Мертвеца! ")	
	InitTrigger()
	TriggerCondition( 1, HasItem,2332,2 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8043,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 2332,2 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8043,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 5002,2,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 1,  "Обменять мечи ", MultiTrigger, GetMultiTrigger(), 1)
end

function r_ds2()
	Talk( 1, "Привет, нубок! Хош че? ")
	Text( 1, "Сундук Мертвеца ", JumpPage, 2)
	Text( 1, "Бижутерия Мертвеца ", JumpPage, 3)
	Text( 1, "Камень Мертвеца ", JumpPage, 6)

	Talk( 2, "Чтобы получить Сундук Мертвеца, вам нужно:_1.Первая часть сундука Мертвеца;_2.Вторая часть сундука Мертвеца;_3.Третья часть сундука Мертвеца;_4.Четвертая часть сундука Мертвеца;_5.Кристалл;_6. Пламенный бакс - 2000шт;_7. Золото - 5.000.000. ")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerCondition( 1, HasItem,8090,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8091,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8092,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8093,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,4550,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3458,2000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, TakeItem, 8090,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8091,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8092,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8093,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 4550,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3458,2000 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8108,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 2, "Обменять  ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Вернуться на страницу ", JumpPage, 1)
	Text( 2, "Съебаться ", CloseTalk)
	
	Talk( 7, "У вас недостаточно лута! ")
	Text( 7, "Съебаться ", CloseTalk)
	
	Talk( 3, "Выбери, что тебя интересует: ")
	Text( 3, "Ожерелье ", JumpPage, 4 )
	Text( 3, "Кольцо ", JumpPage, 5 )
	
	Talk( 4, "Что получить Ожерелье Мертвеца принеси мне:_1. Осколков мистического кристалла - 10 шт;_2.Необогащённая железная руда - 280 шт;_3. Ожерелье Аббадона - 1шт;_4. Пламенный бакс - 700шт;_5. Золото - 3.000.000;_5. Ящик с брюликом +7 - 20шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,4541,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1667,280 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3604,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3458,700 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerCondition( 1, HasItem,7926,20 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 4541,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1667,280 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3604,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3458,700 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, TakeItem, 7926,20 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 5011,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 4,  "Обменять ожерелье ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 5, "Что получить Кольцо Мертвеца принеси мне:_1. Осколков мистического кристалла - 6 шт;_2.Необогащённая железная руда - 180 шт;_3. Кольцо Аббадона - 1шт;_4. Пламенный бакс - 400шт;_5. Золото - 1.500.000;_5. Ящик с брюликом +7 - 12шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,4541,6 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1667,180 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3603,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3458,400 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 1500000 )
	TriggerCondition( 1, HasItem,7926,12 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 4541,6 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1667,180 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3603,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3458,400 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 1500000 )
	TriggerAction( 1, TakeItem, 7926,12 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 5010,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 5,  "Обменять кольцо ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk(6, "Камень Мертвеца улучшает оружие Аббадона. Чтобы получить его, принеси мне:_1. Ящик с Брюликом +7 - 20шт;_2. Золото - 4.000.000;_3. Грязь - 150 шт;_4. Волшебная ветвь - 200 шт;_5. Ветвь с болота - 250 шт;_6. Чудо-ветвь - 50 шт;_7. Кристалл - 1шт;_8. Пламенный бакс - 3000шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,7926,20 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 4000000 )
	TriggerCondition( 1, HasItem,3927,150 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1593,200 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1846,250 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,4343,50 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,4550,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3458,3000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 7926,20 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 4000000 )
	TriggerAction( 1, TakeItem, 3927,150 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1593,200 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1846,250 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 4343,50 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 4550,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3458,3000 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8043,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	Text( 6,  "Обменять камень ", MultiTrigger, GetMultiTrigger(), 1)
	
end

function medal_etc()
	Talk( 1, "Привет, пездюк! Выбирай, что тебя интересует: ")
	Text( 1, "Медаль Отваги ", JumpPage, 2)
	Talk( 2, "Чтобы получить Медаль Отваги, принеси мне:_1. Золото - 2.500.000;_2. Пламенный бакс - 100шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,100 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasMoney, 2500000 )
	TriggerAction( 1, TakeItem, 3458,100 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeMoney, 2500000 )
	TriggerAction( 1, GiveItem, 3849, 1, 97 )
	Text( 2,  "Получить Медаль Отваги ", MultiTrigger, GetMultiTrigger(), 1)
end

function BT_NewUser001()

	Talk( 1, "Наставница: Здравствуй, я советник новичков. Я отвечаю на вопросы всех новоприбывших путешественников. Если тебе что-то неясно, спроси меня." )
	AddNpcMission ( 701  )
	AddNpcMission ( 702  )
	AddNpcMission ( 704  )
	AddNpcMission ( 706  )
	AddNpcMission ( 708  )
	AddNpcMission ( 200  )
	AddNpcMission (	402	 )
	AddNpcMission (	50	 )
	AddNpcMission (	51	 )
	AddNpcMission (	61	 )
	AddNpcMission (	62	 )
	AddNpcMission (	63	 )
	AddNpcMission (	64	 )
	AddNpcMission (	65	 )
	AddNpcMission (	82	 )
	Text( 1, "Я все понял",  CloseTalk)
end


--Левый сундук
function cm_1()
	Talk( 1, "Привет, бро! У меня ты можешь обменять свой лут с Хаоса Москвы на что-то нужное: ")
	Text( 1, "[1]Самоцветы +10 ", JumpPage, 2)
	Text( 1, "[2]Самоцветы +10 ", JumpPage, 7)
	Text( 1, "Усилитель дропа ", JumpPage, 3)
	Text( 1, "Бижутерия Беса(300лвл) ", JumpPage, 4)
	Text( 1, "Уйти ", CloseTalk )
	
	Talk( 2, "Чтобы получить самоцвет +10, принеси мне:_1. Кукла Бывшей - 3шт;_2. Кукла Екатерины II - 7шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8099,7 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8101,3 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8099,7 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8016,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 2, "Сила +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8099,7 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8101,3 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8099,7 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8017,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 2, "Дух +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8099,7 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8101,3 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8099,7 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8018,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 2, "Точность +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8099,7 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8101,3 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8099,7 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8019,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 2, "Телосложение +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8099,7 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8101,3 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8099,7 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8020,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 2, "Ловкость +10 ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Уйти ", CloseTalk )
	
	Talk( 7, "Чтобы получить самоцвет +10, принеси мне:_1. Кукла Бывшей - 7шт;_2. Кукла Екатерины II - 3шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,7 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8099,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8101,7 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8099,3 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8016,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "Сила +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,7 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8099,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8101,7 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8099,3 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8017,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "Дух +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,7 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8099,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8101,7 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8099,3 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8018,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "Точность +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,7 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8099,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8101,7 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8099,3 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8019,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "Телосложение +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,7 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8099,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8101,7 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8099,3 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8020,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "Ловкость +10 ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 7, "Уйти ", CloseTalk )
	
	Talk(3, "Чтобы получить усилитель выпадения вещей с множителем 3, принеси мне:_1. Камень пердуна - 5шт;_2. Камень Лоха - 5шт;_3. Кукла Бывшей - 5шт;_4. Кукла Екатерины II - 5шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,508,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,506,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8101,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8099,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 508,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 506,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8101,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8099,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 3097,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 3, "Обменять х3 ", MultiTrigger, GetMultiTrigger(), 1)InitTrigger()
	Text( 3, "Уйти ", CloseTalk )
	
	Talk( 4, "Выбирай, что ты хочешь получить: ")
	Text( 4, "Ожерелье Беса", JumpPage, 5)
	Text( 4, "Кольцо Беса", JumpPage, 6)
	Text( 4, "Уйти", CloseTalk)
	
	Talk( 5, "Чтобы получить камень улучшения Бижутерии Мертвеца до Беса, принеси мне:_1. Камень Лоха - 120шт;_2. Камень Пердуна - 120шт;_3. Пламенный бакс - 4000 шт;_4. Эмблема короля кольца - 3шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,508,120 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,506,120 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3458,4000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1032,3 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 508,120 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 506,120 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3458,4000 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1032,3 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8062,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "Обменять ожерелье ", MultiTrigger, GetMultiTrigger(), 1)InitTrigger()
	Text( 5, "Уйти", CloseTalk)
	
	Talk( 6, "Чтобы получить Кольцо Беса, принеси мне:_1. Камень Лоха - 80шт;_2. Камень Пердуна - 80шт_3. Пламенный бакс - 2500 шт;_4. Эмблема короля кольца - 1шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,508,80 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,506,80 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3458,2500 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1032,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 508,80 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 506,80 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 3458,2500 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 1032,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8063,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 6, "Обменять кольцо ", MultiTrigger, GetMultiTrigger(), 1)InitTrigger()
	Text( 6, "Уйти", CloseTalk)
	
	Talk( 10, "Вам не хватает лута для обмена! ")
	Text( 10, "Уйти. ", CloseTalk)
end

--Правый сундук
function cm_2()
	Talk( 1, "Привет, бро! У меня ты можешь получить экипировку и оружие и бижутерию Беса. Выбирай, что тебя интересует: ")
	Text( 1, "Камень снаряжения Беса(300лвл) ", JumpPage, 2)
	Text( 1, "Камень оружия Беса(300лвл) ", JumpPage, 3)
	Text( 1, "Обмен мечей Воителя ", JumpPage, 4)
	Text( 1, "Обмен очков Умений ", JumpPage, 5)
	Text( 1, "Уйти ", CloseTalk )
	
	Talk( 2, "Чтобы получить Камень Снаряжения Беса, принеси мне:_1. Часть Кремля 1 - 30шт;_2. Часть Кремля 2 - 30шт;_3. Часть Кремля 3 - 30шт;_4. Часть Кремля 4 - 30шт;_5. Камень Лоха - 10шт_6. Пламенный бакс - 10000шт;_7. Эмблема короля кольца - 7шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8095,30 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8096,30 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8097,30 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8098,30 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,506,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3458,10000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1032,7 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8095,30 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8096,30 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8097,30 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8098,30 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 506,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem,3458,10000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem,1032,7 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, GiveItem, 8044,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 2, "Получить снаряжение ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Уйти", CloseTalk)
	
	Talk( 3, "Чтобы получить Камень Оружия Беса, принеси мне:_1. Мощь Олега - 50шт;_2. Мощь Витька - 50шт;_3. Мощь Герыча - 50шт;_4. Мощь Мента - 50шт;_5. Камень Пердуна - 30шт;_6. Пламенный бакс - 8000шт;_7. Эмблема короля кольца - 7шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8102,50 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8103,50 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8104,50 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8105,50 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,508,30 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,3458,8000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,1032,7 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8102,50 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8103,50 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8104,50 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8105,50 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 508,30 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem,3458,8000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem,1032,7 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, GiveItem, 8045,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 3, "Получить оружие ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "Уйти", CloseTalk)
	
	Talk( 4, "Чтобы получить 2 меча Беса, принеси мне 2 меча Мертвеца и  Камень оружия Беса. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,5002,2 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8045,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 5002,2 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8045,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 5016,2,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 4, "Обменять мечи ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 5, "Чтобы получить свиток очков умений, принеси мне:_1. Деревянная лампа - 15шт. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8100,15 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8100,15 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 7454,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "Обменять свиток ", MultiTrigger, GetMultiTrigger(), 1)
	
	
	Talk( 10, "Вам не хватает лута для обмена! ")
	Text( 10, "Уйти. ", CloseTalk)
end

--Администратора Москвы
function cm_3()
	Talk( 1, "Привет, бро! Что ты хочешь? ")
	Text( 1, "Войти в ТОП ", Garner2RequestReorder)
	Text( 1, "ТОП Хаоса Москвы ", Garner2GetWiner)
	Text( 1, "Обмен эмблем ", JumpPage, 2)
	
	Talk(2, "Дай мне 5 Святы эмблемы кольца и я дам тебе 1 Эмблема Короля кольца " )
	InitTrigger()
	TriggerCondition( 1, HasItem,1031,5 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 1031,5 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 1032,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Обменять ", MultiTrigger, GetMultiTrigger(), 1)
end

function items_po()
	Talk(1, "Привет, друг. Я могу помочь тебе приобрести желаемое! ")
	Text(1, "Обменять Ящики Кузнеца! ", JumpPage, 2)
	Text(1, "Уйти ", CloseTalk)
	
	Talk(2, "Могу обменять твои Ящики сундука + 1 руна Кэль на то, что вам нужно. Выбирай: " )
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8004,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3457,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8004,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 0453,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Свиток Плавки ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8004,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3457,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8004,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 0454,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Катализатор Плавки ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8004,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3457,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8004,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 0455,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Усиливающий свиток ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerCondition( 1, HasItem,8004,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3457,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, TakeItem, 8004,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 0456,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Усиливающий кристалл ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 5, "У вас не хватает лута. ")
	Text( 5, "Уйти ", CloseTalk)
end

function tickets()
	Talk( 1, "Привет. Я продаю билеты. ")
	Text( 1, "Купить ", BuyPage)
	InitTrigger()
	Other(   4602   )
	Other(   3048   )
	Other(   3049   )
	Other(   3050   )
	Other(   3051   )
	Other(   3054   )
end

function change_medal()
	Talk( 1, "Меняю старые медали ресета на новые! ")
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  2 ) --Со второго ресета
	TriggerCondition( 1, HasItem,8109,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8109,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8110,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "1ур --> 2ур ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  3 ) --Со второго ресета
	TriggerCondition( 1, HasItem,8110,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8110,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8111,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "2ур --> 3ур ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  4 ) --Со второго ресета
	TriggerCondition( 1, HasItem,8111,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8111,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8112,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "3ур --> 4ур ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  5 ) --Со второго ресета
	TriggerCondition( 1, HasItem,8112,1 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 8112,1 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 8113,1,4 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "4ур --> 5ур ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "Чтобы обменять медаль 1 уровня на 2, вам нужно:_1. Медаль первого ресета;_2. Сделать ресет - 2ур. ")
	Text( 2, "Уйти. ", CloseTalk )
	
	Talk( 3, "Чтобы обменять медаль 2 уровня на 3, вам нужно:_1. Медаль второго ресета;_2. Сделать ресет - 3ур. ")
	Text( 3, "Уйти. ", CloseTalk )
end

function NP_telep()
	Talk( 1, "Хочешь попасть на остров оскровищ и раскопать клад с помощью Нового Пергамента? ")
	Text( 1, "Телепортироваться ", GoTo, 697, 1043,  "jialebi" )
	Text( 1, "Уйти. ", CloseTalk )
end

function wing_telep()
	Talk( 1, "Хочешь попасть на остров Смерти, чтобы заполучить легендарные крылья? ")
	Text( 1, "Телепортироваться ", GoTo, 61, 48,  "PyramidCity" )
	Text( 1, "Уйти. ", CloseTalk )
end

function hitdodje()
	Talk( 1, "Привет, бро! У меня ты можешь обменять свои кели на: ")
	Text( 1, "Удар Лока(+100 шанс попадания)", JumpPage, 2)
	Text( 1, "Уклонение Бинга(+100 к уклонению)", JumpPage, 3)
	
	Text( 2, "Взять 1 Лок", JumpPage, 4)
	Text( 2, "Взять 4 Лока ", JumpPage, 5)
	Text( 2, "Взять 16 Локов", JumpPage, 6)
	Text( 2, "Уйти ", CloseTalk )
	
	Text( 3, "Взять 1 Бинг", JumpPage, 7)
	Text( 3, "Взять 4 Бинга ", JumpPage, 8)
	Text( 3, "Взять 16 Бингов", JumpPage, 9)
	Text( 3, "Уйти ", CloseTalk )
	Talk( 4, "Чтобы получить лок, принеси мне:_10шт келей. ") -- Локи
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3457,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 15772,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 4, "1шт Лок ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 5, "Чтобы получить 4 лока, принеси мне:_40шт келей. ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,40 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3457,40 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 15772,4,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "4шт Лока ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 6, "Чтобы получить 16 локов, принеси мне:_160шт келей. ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,160 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3457,160 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 15772,16,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 6, "16шт Локов ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 7, "Чтобы получить бинг, принеси мне:_10шт келей. ") --Бинги
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,10 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3457,10 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 15773,1,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "1шт Бинг ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 8, "Чтобы получить 4 бинга, принеси мне:_40шт келей. ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,40 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3457,40 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 15773,4,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 8, "4шт Бинга ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 9, "Чтобы получить 16 бингов, принеси мне:_160шт келей. ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,160 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
	TriggerAction( 1, TakeItem, 3457,160 ) -- Это функция "изьятия" предмета и в каком количестве
	TriggerAction( 1, GiveItem, 15773,16,101 ) -- Это функция выдачи предмета (ID, кол-во)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 9, "16шт Бингов ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 10, "Вам не хватает лута для обмена! ")
	Text( 10, "Уйти. ", CloseTalk)
end