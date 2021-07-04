----------------------------------------------
--           Функции Телепортов				--
----------------------------------------------

print( "‡ Јаг§Є  NPCScript02.lua" )

---------------------------------------
-- Телепорт между основными городами --
---------------------------------------
--------------------------------------------------------------------------------------------------------------------
-- Портальщик Аргента - Джовиал, Портальщик Шайтана - Мэй, Портальщик Ледыни - Элен, Портальщик Громограда - Сара --
--------------------------------------------------------------------------------------------------------------------
function GoToWhere()
--Серебрянные Шахты--
local CurMapName1 = "garner"
	local GoTo02X = 1900
	local GoTo02Y = 2774
	local GoTo02M = CurMapName1

	Talk( 1, " Привет, куда желаешь перейти? " )
	Text( 1, " Отправиться в Серебрянные Шахты ", JumpPage, 2 )
	
	InitTrigger()
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	Talk( 2, " Джовиал: Хочешь в Шахты? - Не проблема. " )
	Text( 2, " Телепорт ",MultiTrigger, GetMultiTrigger(), 2)
end

------------------------------
-- Телепорт между деревнями --
------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Халдейская Портальщица - Мэйбл, Андийский Портальщик - Венди, Портальщица - Фелиция, Портальщица - Элизабет, Портальщик - Мия, Портальщик - Мейла, Телепорт - Берлин, Телепорт - Алина, Портальщик - Софья, Портальщик - Мина, Портальщик - Артемида, Портальщик - Лили --
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function transmittal()
	local CancelSelectTalk = "Забудь, я останусь здесь "
	local CancelSelectPage = 27
	
	--[[local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"
	
	local GoTo01X = 1903
	local GoTo01Y = 2807
	local GoTo01M = CurMapName1
	
	local GoTo02X = 1517
	local GoTo02Y = 3091
	local GoTo02M = CurMapName1
	
	local GoTo03X = 1120
	local GoTo03Y = 2773
	local GoTo03M = CurMapName1
	
	local GoTo04X = 535
	local GoTo04Y = 2433
	local GoTo04M = CurMapName1
	
	local GoTo05X = 633
	local GoTo05Y = 2100
	local GoTo05M = CurMapName1
	
	local GoTo06X = 1007
	local GoTo06Y = 2966
	local GoTo06M = CurMapName1
	
	local GoTo07X = 787
	local GoTo07Y = 3121
	local GoTo07M = CurMapName2
	
	local GoTo08X = 1214
	local GoTo08Y = 3203
	local GoTo08M = CurMapName2
	
	local GoTo09X = 807
	local GoTo09Y = 360
	local GoTo09M = CurMapName5
	
	local GoTo10X = 1050
	local GoTo10Y = 656
	local GoTo10M = CurMapName5
	
	local GoTo11X = 2146
	local GoTo11Y = 542
	local GoTo11M = CurMapName5
	
	local GoTo12X = 2681
	local GoTo12Y = 647
	local GoTo12M = CurMapName5]]--
	
	Talk( 1, "Мия: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 1, "Перейти в Скалистый удел ", JumpPage, 14 )
	Text( 1, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 2, "Фелиция: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 2, "Перейти в Заброшенную Шахту ", JumpPage, 13 )
	Text( 2, "Перейти в Андийский Лес ", JumpPage, 18 )
	Text( 2, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 3, "Венди: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 3, "Перейти в Валгаллу ", JumpPage, 15 )
	Text( 3, "Перейти в Скалистый Удел ", JumpPage, 14 )
	Text( 3, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 4, "Элизабет: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 4, "Перейти в Обитель Радости ", JumpPage, 16 )
	Text( 4, "Перейти в Андийский Лес ", JumpPage, 18 )
	Text( 4, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 5, "Мейла: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 5, "Перейти в Халдейский Оплот ", JumpPage, 17 )
	Text( 5, "Перейти в Валгаллу ", JumpPage, 15 )
	Text( 5, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 6, "Мэйбел: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 6, "Перейти в Обитель Радости ", JumpPage, 16 )
--	Text( 6, "Перейти в Громоград ", JumpPage, 29 )
	Text( 6, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 7, "Алина: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 7, "Перейти в Рощу Акаций ", JumpPage, 20 )
	Text( 7, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 8, "Берлин: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 8, "Перейти в Гавань Оазиса ", JumpPage, 19 )
	Text( 8, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 9, "Лили: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 9, "Перейти в бухту Атлантис ", JumpPage, 22 )
	Text( 9, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 10, "Софья: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 10, "Перейти на Берег Скелетов ", JumpPage, 23 )
	Text( 10, "Перейти в Пустошь Ледыни ", JumpPage, 21 )
	Text( 10, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 11, "Мина: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 11, "Перейти в Ледяной шип ", JumpPage, 24 )
	Text( 11, "Перейти в бухту Атлантис ", JumpPage, 22 )
	Text( 11, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 12, "Артемида: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 12, "Перейти на Берег Скелетов ", JumpPage, 23 )
	Text( 12, "Записать точку возвращения ", JumpPage, 25 )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 20 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 13, "Перейти в Заброшенную Шахту? Нет проблем! Стоимость 200 золотых " )
	Text( 13, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 13, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 21 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "Перейти в Скалистый Удел? Нет проблем! Стоимость 200 золотых " )
	Text( 14, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 22 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "Перейти в Валгаллу? Нет проблем! Стоимость 200 золотых " )
	Text( 15, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 23 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "Перейти в Обитель Радости? Нет проблем! Стоимость 200 золотых " )
	Text( 16, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 )  
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 18 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "Перейти в Халдейский Оплот? Нет проблем! Стоимость 200 золотых " )
	Text( 17, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 19 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "Перейти в Андийский Лес? Нет проблем! Стоимость 200 золотых " )
	Text( 18, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 24 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "Перейти в Гавань Оазиса? Нет проблем! Стоимость 200 золотых " )
	Text( 19, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 20, "Перейти в Рощу Акаций? Нет проблем! Стоимость 200 золотых " )
	Text( 20, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 26 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 21, "Перейти в Пустошь Ледыни? Нет проблем! Стоимость 200 золотых " )
	Text( 21, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 22, "Перейти в бухту Атлантис? Нет проблем! Стоимость 200 золотых " )
	Text( 22, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 22, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 28 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 23, "Перейти в Берег Скелетов? Нет проблем! Стоимость 200 золотых " )
	Text( 23, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 )  
	Text( 23, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 29 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 24, "Перейти в Ледяной Шип? Нет проблем! Стоимость 200 золотых " )
	Text( 24, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 24, CancelSelectTalk, JumpPage , CancelSelectPage )
	
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
	Talk( 25, "Записать точку возвращения? " )
	Text( 25, "Да, пожалуйста запиши ", MultiTrigger, GetMultiTrigger(), 12 )
	Text( 25, "Нет, спасибо ",CloseTalk )
	
	Talk( 26, "Простите, у вас недостаточно денег для перемещения! " )
	
	Talk( 27, "Не забудьте найти меня если потребуется помощь ", CloseTalk )
	
    Talk( 28, "Невозможно записать точку сохранения! ", CloseTalk )
	
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


------------------------------
-- Телепорт между островами --
------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Островной портальщик - Сильвий, Островной портальщик - Андреа, Островной портальщик - Арсин, Островной портальщик - Шейла, Островной портальщик - Джульета, Островной Телепорщик - Джули, Островной Телепорщик  - Винни, Островной Телепорщик  - Ванда --
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function island()
	local CancelSelectTalk = "Забудь, я останусь здесь "
	local CancelSelectPage = 27
	--[[local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"
	
	local GoTo01X = 3260
	local GoTo01Y = 3280
	local GoTo01M = CurMapName1
	
	local GoTo02X = 2273
	local GoTo02Y = 1122
	local GoTo02M = CurMapName1
	
	local GoTo03X = 3590
	local GoTo03Y = 755
	local GoTo03M = CurMapName1
	
	local GoTo04X = 2376
	local GoTo04Y = 725
	local GoTo04M = CurMapName2
	
	local GoTo05X = 1730
	local GoTo05Y = 3775
	local GoTo05M = CurMapName2
	
	local GoTo06X = 2529
	local GoTo06Y = 2406
	local GoTo06M = CurMapName2
	
	local GoTo07X = 1631
	local GoTo07Y = 1974
	local GoTo07M = CurMapName5
	
	local GoTo08X = 2231
	local GoTo08Y = 2788
	local GoTo08M = CurMapName1]]--
	
	Talk( 1, "Сильвий: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 1, "Перейти на остров Зефира ", JumpPage, 14 )
	Text( 1, "Перейти на Ледниковый остров ", JumpPage, 15 )
	Text( 1, "Перейти на остров Отверженных ", JumpPage, 16 )
	Text( 1, "Перейти на остров Стужи ", JumpPage, 17 )
	Text( 1, "Перейти на остров Канареек ", JumpPage, 18 )
	Text( 1, "Перейти на остров Купидона ", JumpPage, 19 )
	Text( 1, "Перейти на остров Удачи ", JumpPage, 20 )
	Text( 1, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 2, "Андреа: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 2, "Перейти в Аргент ", JumpPage, 21 )
	Text( 2, "Перейти на Ледниковый остров ", JumpPage, 15 )
	Text( 2, "Перейти на остров Отверженных ", JumpPage, 16 )
	Text( 2, "Перейти на остров Стужи ", JumpPage, 17 )
	Text( 2, "Перейти на остров Канареек ", JumpPage, 18 )
	Text( 2, "Перейти на остров Купидона ", JumpPage, 19 )
	Text( 2, "Перейти на остров Удачи ", JumpPage, 20 )
	Text( 2, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 3, "Арсин: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 3, "Перейти в Аргент ", JumpPage, 21 )
	Text( 3, "Перейти на остров Зефира ", JumpPage, 14 )
	Text( 3, "Перейти на остров Отверженных ", JumpPage, 16 )
	Text( 3, "Перейти на остров Стужи ", JumpPage, 17 )
	Text( 3, "Перейти на остров Канареек ", JumpPage, 18 )
	Text( 3, "Перейти на остров Купидона ", JumpPage, 19 )
	Text( 3, "Перейти на остров Удачи ", JumpPage, 20 )
	Text( 3, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 4, "Шейла: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 4, "Перейти в Аргент ", JumpPage, 21 )
	Text( 4, "Перейти на остров Зефира ", JumpPage, 14 )
	Text( 4, "Перейти на Ледниковый остров ", JumpPage, 15 )
	Text( 4, "Перейти на остров Стужи ", JumpPage, 17 )
	Text( 4, "Перейти на остров Канареек ", JumpPage, 18 )
	Text( 4, "Перейти на остров Купидона ", JumpPage, 19 )
	Text( 4, "Перейти на остров Удачи ", JumpPage, 20 )
	Text( 4, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 5, "Джули: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 5, "Перейти в Аргент ", JumpPage, 21 )
	Text( 5, "Перейти на остров Зефира ", JumpPage, 14 )
	Text( 5, "Перейти на Ледниковый остров ", JumpPage, 15 )
	Text( 5, "Перейти на остров Отверженных ", JumpPage, 16 )
	Text( 5, "Перейти на остров Канареек ", JumpPage, 18 )
	Text( 5, "Перейти на остров Купидона ", JumpPage, 19 )
	Text( 5, "Перейти на остров Удачи ", JumpPage, 20 )
	Text( 5, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 6, "Винни: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 6, "Перейти в Аргент ", JumpPage, 21 )
	Text( 6, "Перейти на остров Зефира ", JumpPage, 14 )
	Text( 6, "Перейти на Ледниковый остров ", JumpPage, 15 )
	Text( 6, "Перейти на остров Отверженных ", JumpPage, 16 )
	Text( 6, "Перейти на остров Стужи ", JumpPage, 17 )
	Text( 6, "Перейти на остров Купидона ", JumpPage, 19 )
	Text( 6, "Перейти на остров Удачи ", JumpPage, 20 )
	Text( 6, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 7, "Ванда: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 7, "Перейти в Аргент ", JumpPage, 21 )
	Text( 7, "Перейти на остров Зефира ", JumpPage, 14 )
	Text( 7, "Перейти на Ледниковый остров ", JumpPage, 15 )
	Text( 7, "Перейти на остров Отверженных ", JumpPage, 16 )
	Text( 7, "Перейти на остров Стужи ", JumpPage, 17 )
	Text( 7, "Перейти на остров Канареек ", JumpPage, 18 )
	Text( 7, "Перейти на остров Удачи ", JumpPage, 20 )
	Text( 7, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 8, "Джульета: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 8, "Перейти в Аргент ", JumpPage, 21 )
	Text( 8, "Перейти на остров Зефира ", JumpPage, 14 )
	Text( 8, "Перейти на Ледниковый остров ", JumpPage, 15 )
	Text( 8, "Перейти на остров Отверженных ", JumpPage, 16 )
	Text( 8, "Перейти на остров Стужи ", JumpPage, 17 )
	Text( 8, "Перейти на остров Канареек ", JumpPage, 18 )
	Text( 8, "Перейти на остров Купидона ", JumpPage, 19 )
	Text( 8, "Записать точку возвращения ", JumpPage, 25 )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 30 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "Перейти на остров Зефира? Нет проблем! Стоимость 2000 золотых " )
	Text( 14, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 )  
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 31 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "Перейти на Ледниковый остров? Нет проблем! Стоимость 2000 золотых " )
	Text( 15, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 32 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "Перейти на остров Отверженных? Нет проблем! Стоимость 2000 золотых " )
	Text( 16, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 )   
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 33 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "Перейти на остров Стужи? Нет проблем! Стоимость 2000 золотых " )
	Text( 17, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 )  
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 34 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "Перейти на остров Канареек? Нет проблем! Стоимость 2000 золотых " )
	Text( 18, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 )  
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 35 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "Перейти на остров Купидона? Нет проблем! Стоимость 2000 золотых " )
	Text( 19, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 36 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 20, "Перейти на остров Удачи? Нет проблем! Стоимость 2000 золотых " )
	Text( 20, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 1 )
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