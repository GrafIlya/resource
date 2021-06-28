------------------------------------------------------------
-- NPCScript02.lua Created by sky74
--
-- L.38 -> Line 38
------------------------------------------------------------
-- L.20   [ Й±№ЦИООсЈє°ЧТшОдЅ«µДЗлНР ]
-- L.289  [ RandMapList ] L.245 [ °ЧТш ] L.362 [ Йіб° ] L.422 [ АЧцЄ ] L.482 [ ±щАЗ ] L.542 [ µєУм ] L.612 [ НЁУГ ]
-- L.682  [ РЎЙЅіµµДЖЮЧУ ]
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
-- Й±№ЦИООсЈє°ЧТшОдЅ«µДЗлНР
------------------------------------------------------------

print( "Loading NPCScript02.lua" )


------------------------------------------------------------
-- НЁУГґ«ЛНЅЕ±ѕ
------------------------------------------------------------

function GoToWhere()

	--ИЎПыґ«ЛН·µ»ШСЎФсґ«ЛНµШµгµД¶Ф»°ДЪИЭєНТіГж±аєЕ
	local ReSelectTalk = "Я передумал "
	local ReSelectPage = 1

	--ИЎПыґ«ЛНєННЛіцґ«ЛНµД¶Ф»°єНТіГж±аєЕ
	local CancelSelectTalk = "Забудь, я останусь тут "
	local CancelSelectPage = 2

	--µШНјГыіЖРЕПў
	local CurMapName1 = "garner"
	local CurMapName3 = "eastgoaf"	
	local CurMapName4 = "lonetower"

	--°ЧТшЦ®іЗЧш±к
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--Йіб°Ц®іЗЧш±к
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--АЧцЄ±¤Чш±к
	local GoTo03X = 735
	local GoTo03Y = 1590
	local GoTo03M = CurMapName1

	--±щАЗ±¤Чш±к
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	--їЁ¶ыјУµВЧш±к
	local GoTo05X = 633
	local GoTo05Y = 2100
	local GoTo05M = CurMapName1

	--Аµ°ІЙ­БЦЧш±к
	local GoTo06X = 1007
	local GoTo06Y = 2966
	local GoTo06M = CurMapName1

	--µєУм3єЕЧш±к
	local GoTo07X = 1507
	local GoTo07Y = 2039
	local GoTo07M = CurMapName1

	--µєУм8єЕЧш±к
	local GoTo08X = 1711
	local GoTo08Y = 3448
	local GoTo08M = CurMapName1

	--µєУм2єЕЧш±к
	local GoTo09X = 2501
	local GoTo09Y = 2997
	local GoTo09M = CurMapName1

	--µєУм5єЕЧш±к
	local GoTo10X = 3197
	local GoTo10Y = 1254
	local GoTo10M = CurMapName1

	Talk( 1, "Джовиал: Привет, я местный портальщик. Могу тебе помочь? " )
	Text( 1, "Отправиться в Громоград ", JumpPage, 6 )
	Text( 1, "Записать точку сохранения ", JumpPage, 24 )
	--Text( 1, "Go to Forsanken City!", JumpPage, 8 )
	--Text( 1, "I want to roam the islands!", JumpPage, 3 )

	Talk( 2, "Найди меня, если потребуется помощь ", CloseTalk )

--	Talk( 3, "Want to Телепорт s to which island?" )
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
	Talk( 4, "Отправиться в Аргент? Нет проблем! Стоимость 500 золотых. Для игроков ниже 10 уровня бесплатно " )
	Text( 4, "Перейти ",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 5, "Отправиться в Шайтан? Нет проблем! Стоимость 500 золотых. Для игроков ниже 10 уровня бесплатно " )
	Text( 5, "Перейти ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 5, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 6, "Отправиться в Громоград? Нет проблем! Стоимость 500 золотых. Для игроков ниже 10 уровня бесплатно " )
	Text( 6, "Перейти ",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 6, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 7, "Отправиться в Ледынь? Нет проблем! Стоимость 500 золотых. Для игроков ниже 10 уровня бесплатно " )
	Text( 7, "Перейти ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 7, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 8, "Отправиться в Халдейский оплот? Нет проблем! Стоимость 500 золотых. Для игроков ниже 10 уровня бесплатно " )
	Text( 8, "Перейти ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 8, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 9, "Отправиться в Андийский лес? Нет проблем! Стоимость 500 золотых. Для игроков ниже 10 уровня бесплатно " )
	Text( 9, "Перейти ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 9, CancelSelectTalk, JumpPage , CancelSelectPage )

--	Talk( 10, "I heard that those islands are beautiful, enjoy!" )
--	Text( 10, "Телепорт ingЎ­Free of charge temporary", GoTo, GoTo07X, GoTo07Y, GoTo07M )
--	Text( 10, CancelSelectTalk, JumpPage , CancelSelectPage )
--
--	Talk( 11, "I heard that those islands are beautiful, enjoy!" )
--	Text( 11, "Телепорт ingЎ­Free of charge temporary", GoTo, GoTo08X, GoTo08Y, GoTo08M )
--	Text( 11, CancelSelectTalk, JumpPage , CancelSelectPage )
--
--	Talk( 12, "I heard that those islands are beautiful, enjoy!" )
--	Text( 12, "Телепорт ingЎ­Free of charge temporary", GoTo, GoTo09X, GoTo09Y, GoTo09M )
--	Text( 12, CancelSelectTalk, JumpPage , CancelSelectPage )
----
--	Talk( 13, "I heard that those islands are beautiful, enjoy!" )
--	Text( 13, "Телепорт ingЎ­Free of charge temporary", GoTo, GoTo10X, GoTo10Y, GoTo10M )
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
--	Talk( 14, "Телепорт s to any island? I will send you to anyplace then." )
--	Text( 14, "Телепорт ingЎ­Free of charge temporary", RandFunction, GetFuncList(), GetNumFunc() )
--	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )
--

	Talk( 18, "Мэй: Привет! Я местный портальщий. Могу чем то помочь? " )
	Text( 18, "Отправиться в Ледынь ", JumpPage, 7 )
	Text( 18, "Отправиться в Аргент ", JumpPage, 4 )
	Text( 18, "Отправиться в Громоград ", JumpPage, 6 )
	Text( 18, "Записать точку возвращения ", JumpPage, 25 )
	--Text( 18, "Go to Forsanken City!", JumpPage, 8 )
	--Text( 18, "I want to roam the islands!", JumpPage, 3 )

	Talk( 19, "Сара: Привет! Я местный портальщий. Могу чем то помочь? " )
	Text( 19, "Отправиться в Ледынь ", JumpPage, 7 )
	Text( 19, "Отправиться в Аргент ", JumpPage, 4 )
	Text( 19, "Отправиться в Шайтан ", JumpPage, 5 )
	Text( 19, "Записать точку возвращения ", JumpPage, 26 )

	Talk( 20, "Хэлен: Привет! Я местный портальщий. Могу чем то помочь? " )
	Text( 20, "Отправиться в Аргент ", JumpPage, 4 )
	Text( 20, "Отправиться в Шайтан ", JumpPage, 5 )
	Text( 20, "Отправится в Громоград ", JumpPage, 6 )
	Text( 20, "Записать точку возвращения ", JumpPage, 27 )


	--Talk( 21, "Mabel: Hi, I am the Телепорт er. Do you need any help?" )
	--Text( 21, "Перейти в Аргент ", JumpPage, 4 )
	--Text( 21, "Go to Shaitan City!", JumpPage, 5 )
	--Text( 21, "Go to Icicle City!", JumpPage, 7 )
	--Text( 20, "Go to Thundoria Castle!", JumpPage, 6 )
	--Text( 21, "Записать точку возвращения ", JumpPage, 31 )

	--Talk( 22, "Wendy: Hi! I am the Телепорт er of Andes Forest Haven. Where do you wish to go?" )
	--Text( 22, "Перейти в Аргент ", JumpPage, 4 )
	--Text( 22, "Go to Shaitan City!", JumpPage, 5 )
	--Text( 22, "Go to Icicle City!", JumpPage, 7 )
	--Text( 22, "Записать точку возвращения ", JumpPage, 32 )

	Talk( 23, "Прости, но у тебя недостаточно денег для перемещения " )

	Talk( 24, "Джовиал: Записаться в этой точке? " )
	Text( 24, "Да, пожалуйста запиши ", SetSpawnPos, "Argent City" )
	Text( 24, "Нет, спасибо ",CloseTalk )

	Talk( 25, "Мэй: Записаться в этой точке? " )
	Text( 25, "Да, пожалуйста запиши ", SetSpawnPos, "Shaitan City" )
	Text( 25, "Нет, спасибо ",CloseTalk )

	Talk( 26, "Сара: Записаться в этой точке? " )
	Text( 26, "Да, пожалуйста запиши ", SetSpawnPos, "Thundoria Castle" )
	Text( 26, "Нет, спасибо ",CloseTalk )

	Talk( 27, "Хэлен: Записаться в этой точке? " )
	Text( 27, "Да, пожалуйста запиши ", SetSpawnPos, "Icicle Castle" )
	Text( 27, "Нет, спасибо ",CloseTalk )

	Talk( 28, "Администратор Арены: Привет, я Администратор Арены. Куда желаете перейти? " )
	Text( 28, "Вернуться в город ", JumpPage, 29 )
	Text( 28, "Нет, спасибо ",CloseTalk )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerAction( 1, SetPkState, 0 )
	TriggerAction( 1, MoveCity, "" )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 29, "Желаете вернуться в город? В таком случае вам придется оплатить штраф в 2000 золотых за трусость! Вы не передумали? " )
	Text( 29, "Вот золото, я хочу уйти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 29, "Нет, спасибо " )

	Talk( 30, "Хотите убежать, но нет золота? Жаль, в таком случае вам придется драться до конца " )

	Talk( 31, "Мэйбел: Записаться в Халдейском оплоте? " )
	Text( 31, "Да, пожалуйста запиши ", SetSpawnPos, "Chaldea Haven" )
	Text( 31, "Нет, спасибо ",CloseTalk )

	Talk( 32, "Вэнди: Записаться в Андийском лесу? " )
	Text( 32, "Да, пожалуйста запиши ", SetSpawnPos, "Andes Forest Haven" )
	Text( 32, "Нет, спасибо ",CloseTalk )



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
-- І№ёшХѕґ«ЛНЅЕ±ѕ
------------------------------------------------------------

function transmittal ()

	--ИЎПыґ«ЛН·µ»ШСЎФсґ«ЛНµШµгµД¶Ф»°ДЪИЭєНТіГж±аєЕ
	--local ReSelectTalk = "I need to reconsider"
	--local ReSelectPage = 1

	--ИЎПыґ«ЛНєННЛіцґ«ЛНµД¶Ф»°єНТіГж±аєЕ
	local CancelSelectTalk = "Извините, но я откажусь "
	local CancelSelectPage = 27

	--µШНјГыіЖРЕПў
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"

	--·ПїуІ№ёшХѕ
	local GoTo01X = 1903
	local GoTo01Y = 2807
	local GoTo01M = CurMapName1

	--№ЕАпї©АыІ№ёшХѕ
	local GoTo02X = 1517
	local GoTo02Y = 3091
	local GoTo02M = CurMapName1

	--НЯ¶ыЕµІ№ёшХѕ
	local GoTo03X = 1120
	local GoTo03Y = 2773
	local GoTo03M = CurMapName1

	--ОВДЗІ№ёшХѕ
	local GoTo04X = 535
	local GoTo04Y = 2433
	local GoTo04M = CurMapName1

	--їЁ¶ыјУµВЧш±к
	local GoTo05X = 633
	local GoTo05Y = 2100
	local GoTo05M = CurMapName1

	--Аµ°ІЙ­БЦЧш±к
	local GoTo06X = 1007
	local GoTo06Y = 2966
	local GoTo06M = CurMapName1

	--ЙіИЄІ№ёшХѕ
	local GoTo07X = 787
	local GoTo07Y = 3121
	local GoTo07M = CurMapName2

	--°НІјІ№ёшХѕ
	local GoTo08X = 1214
	local GoTo08Y = 3203
	local GoTo08M = CurMapName2

	--±щ¶јІ№ёшХѕ
	local GoTo09X = 807
	local GoTo09Y = 360
	local GoTo09M = CurMapName5

	--°ўАј±ИЛ№І№ёшХѕ
	local GoTo10X = 1050
	local GoTo10Y = 656
	local GoTo10M = CurMapName5

	--чјчГУЄµШІ№ёшХѕ
	local GoTo11X = 2146
	local GoTo11Y = 542
	local GoTo11M = CurMapName5

	--±щј«І№ёшХѕ
	local GoTo12X = 2681
	local GoTo12Y = 647
	local GoTo12M = CurMapName5

	--АЧцЄ±¤Чш±к
	local GoTo13X = 735
	local GoTo13Y = 1590
	local GoTo13M = CurMapName1

	Talk( 1, "Привет ты хочешь куда то отправиться? Ну спеши быстрей пока места есть =)" )
	Text( 1, "В скалистый удел ", JumpPage, 14 )
	Text( 1, "Записать точку респа ", JumpPage, 25 )		--·ПїуІ№ёшХѕ
	
	Talk( 2, "Привет ты хочешь куда то отправиться? Ну спеши быстрей пока места есть =)" )
	Text( 2, "Обратно в шахты ", JumpPage, 13 )
	Text( 2, "В Андийский лес ", JumpPage, 18 )
	Text( 2, "Записать точку респа ", JumpPage, 25 )		--№ЕАпї©АыІ№ёшХѕ

	Talk( 3, "Привет ты хочешь куда то отправиться? Ну спеши быстрей пока места есть =)" )
	Text( 3, "В Вахаллу ", JumpPage, 15 )
	Text( 3, "Обратно в Скалистый удел ", JumpPage, 14 )
	Text( 3, "Записать точку респа ", JumpPage, 25 )		--Аµ°ІЙ­БЦІ№ёшХѕ

	Talk( 4, "Привет ты хочешь куда то отправиться? Ну спеши быстрей пока места есть =)" )
	Text( 4, "Go to Solace Haven!", JumpPage, 16 )
	Text( 4, "Обратно в Андийский лес ", JumpPage, 18 )
	Text( 4, "Записать точку респа ", JumpPage, 25 )		--НЯ¶ыЕµІ№ёшХѕ

	Talk( 5, "Привет ты хочешь куда то отправиться? Ну спеши быстрей пока места есть =)" )
	Text( 5, "В Оплот ", JumpPage, 17 )
	Text( 5, "Обратно в Валхаллу ", JumpPage, 15 )
	Text( 5, "Записать точку респа ", JumpPage, 25 )		--ОВДГІ№ёшХѕ

	Talk( 6, "Привет ты хочешь куда то отправиться? Ну спеши быстрей пока места есть =)" )
	Text( 6, "Go to Solace Haven!", JumpPage, 16 )
	Text( 6, "В Громоград ", JumpPage, 29 )
	Text( 6, "Записать точку респа ", JumpPage, 25 )		--їЁ¶ыјУµВІ№ёшХѕ

	Talk( 7, "Привет ты хочешь куда то отправиться? Ну спеши быстрей пока места есть =)" )
	Text( 7, "Go to Babul Haven!", JumpPage, 20 )
	Text( 7, "Record Spawn point", JumpPage, 25 )		--ЙіИЄІ№ёшХѕ

	Talk( 8, "Привет ты хочешь куда то отправиться? Ну спеши быстрей пока места есть =)" )
	Text( 8, "Go to Oasis Haven!", JumpPage, 19 )
	Text( 8, "Record Spawn point", JumpPage, 25 )		--°НІјІ№ёшХѕ

	Talk( 9, "Lily: Hi! I am Teleporter Lily. How can I help you?" )
	Text( 9, "Go to Atlantis Haven!", JumpPage, 22 )
	Text( 9, "Record Spawn point", JumpPage, 25 )		--±щ¶јІ№ёшХѕ

	Talk( 10, "Sofia: Hi, I am the teleporter. Do you need any help?" )
	Text( 10, "Go to Skeleton Haven!", JumpPage, 23 )
	Text( 10, "Go to Icicle Haven!", JumpPage, 21 )
	Text( 10, "Record Spawn point", JumpPage, 25 )		--°ўАј±ИЛ№І№ёшХѕ

	Talk( 11, "Mina: Hi, I am the teleporter. Do you need any help?" )
	Text( 11, "Go to Icespire Haven!", JumpPage, 24 )
	Text( 11, "Go to Atlantis Haven!", JumpPage, 22 )
	Text( 11, "Record Spawn point", JumpPage, 25 )		--чјчГУЄµШІ№ёшХѕ

	Talk( 12, "Artemis: Hi! I am the Teleporter! How may I help you?" )
	Text( 12, "Go to Skeleton Haven!", JumpPage, 23 )
	Text( 12, "Record Spawn point", JumpPage, 25 )		--±щј«І№ёшХѕ
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 13, "Что бы телепортироваться, вам надо 200G " )
	Text( 13, "Телепорт ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 13, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "Что бы телепортироваться, вам надо 200G" )
	Text( 14, "Телепорт ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "Что бы телепортироваться, вам надо 200G " )
	Text( 15, "Телепорт ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "Что бы телепортироваться, вам надо 200G " )
	Text( 16, "Телепорт ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "Что бы телепортироваться, вам надо 200G " )
	Text( 17, "Телепорт ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "Что бы телепортироваться, вам надо 200G " )
	Text( 18, "Телепорт ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "Что бы телепортироваться, вам надо 200G " )
	Text( 19, "Телепорт ",MultiTrigger, GetMultiTrigger(), 1 ) 
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
-- І№ёшХѕґ«ЛНЅЕ±ѕ
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
-- µєУмґ«ЛНЅЕ±ѕ
------------------------------------------------------------

function island()

	--ИЎПыґ«ЛН·µ»ШСЎФсґ«ЛНµШµгµД¶Ф»°ДЪИЭєНТіГж±аєЕ
	--local ReSelectTalk = "I need to reconsiderЎ ­"
	--local ReSelectPage = 1

	--ИЎПыґ«ЛНєННЛіцґ«ЛНµД¶Ф»°єНТіГж±аєЕ
	local CancelSelectTalk = "Забудь, я останусь здесь "
	local CancelSelectPage = 27

	--µШНјГыіЖРЕПў
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"

	--єЈ·зµє
	local GoTo01X = 3260
	local GoTo01Y = 3280
	local GoTo01M = CurMapName1

	--Лй±щµє
	local GoTo02X = 2273
	local GoTo02Y = 1122
	local GoTo02M = CurMapName1

	--С©Ффµє
	local GoTo03X = 3590
	local GoTo03Y = 755
	local GoTo03M = CurMapName1

	--±щС©µє
	local GoTo04X = 2376
	local GoTo04Y = 725
	local GoTo04M = CurMapName2

	--ГщЙіµє
	local GoTo05X = 1730
	local GoTo05Y = 3775
	local GoTo05M = CurMapName2

	--Хж°®µє
	local GoTo06X = 2529
	local GoTo06Y = 2406
	local GoTo06M = CurMapName2

	--єГФЛµє
	local GoTo07X = 1631
	local GoTo07Y = 1974
	local GoTo07M = CurMapName5

	--°ЧТшіЗ
	local GoTo08X = 2231
	local GoTo08Y = 2788
	local GoTo08M = CurMapName1

	Talk( 8, "Джульет: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 8, "Перейти в Аргент ", JumpPage, 21 )
	Text( 8, "Перейти на остров Зефира ", JumpPage, 14 )
	Text( 8, "Перейти на Ледниковый остров ", JumpPage, 15 )
	Text( 8, "Перейти на остров Отверженных ", JumpPage, 16 )
	Text( 8, "Перейти на остров Стужи ", JumpPage, 17 )
	Text( 8, "Перейти на остров Канареек ", JumpPage, 18 )
	Text( 8, "Перейти на остров Купидона ", JumpPage, 19 )
	Text( 8, "Записать точку возвращения ", JumpPage, 25 )          ---єГФЛµє

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "Перейти на остров Зефира? Нет проблем! Стоимость 2000 золотых " )
	Text( 14, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "Перейти на Ледниковый остров? Нет проблем! Стоимость 2000 золотых " )
	Text( 15, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "Перейти на остров Отверженных? Нет проблем! Стоимость 2000 золотых " )
	Text( 16, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "Перейти на остров Стужи? Нет проблем! Стоимость 2000 золотых " )
	Text( 17, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "Перейти на остров Канареек? Нет проблем! Стоимость 2000 золотых " )
	Text( 18, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "Перейти на остров Купидона? Нет проблем! Стоимость 2000 золотых " )
	Text( 19, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 20, "Перейти на остров Удачи? Нет проблем! Стоимость 2000 золотых " )
	Text( 20, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 21, "Перейти в Аргент? Нет проблем! Стоимость 2000 золотых " )
	Text( 21, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
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
	Talk( 25, "Записать точку возвращения? " )
	Text( 25, "Да, пожалуйста запиши ", MultiTrigger, GetMultiTrigger(), 8 )
	Text( 25, "Нет, спасибо ",CloseTalk )

	Talk( 26, "Простите, у вас недостаточно денег для перемещения! " )

	Talk( 27, "Найди меня если потребуется помощь ", CloseTalk )

	Talk( 28, "Невозможно записать точку сохранения! ", CloseTalk )

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

	Talk( 1, "Lamon:Я продаю кораллы,не хотите посмотреть?" )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Перезарядка кораллов", JumpPage, 2 )
	Text( 1, "Ничего...",CloseTalk )


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
	Talk(1, "Привет! Выбери место, куда ты хочешь отправиться:") 
	Text(1, "Край Авроры 1", GoTo, 175, 206, "mjing1") 
	Text(1, "Край Авроры 2", GoTo, 175, 206, "mjing2") 
	Text(1, "Край тьмы", GoTo, 205, 264, "mjing3")
	Text(1, "Край тьмы 2", GoTo, 205, 264, "mjing4")
	Text(1, "Мираж шайтана(лут зона лоу лвлов)!", GoTo, 185, 186, "shalan2")  
	Text(1, "Уйти", CloseTalk)
end