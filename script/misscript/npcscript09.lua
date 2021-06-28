--scripted by skyfear919@hotmail.com
print( "Loading NpcScript09.lua" )
print( "------------------------------------" )

function rubka1()

Talk(1,"Я Новогодняя Ёлочка , а тебя как зовут? В этой деревне ты сможешь выбить различные новогодние предметы , которые тебе пригодятся для обмена подарков у Деда Мороза ")

Text(1,"Срочно Фармить ", CloseTalk)


    
end  

function rubka2()

Talk(1,"ХО-ХО-ХО Я Дедушка Мороз , ты сможешь обменять подарки после 31 Декабря , но для Новогоднего настроения ты можешь обменять Новгоднюю Шапочку )  ")
Text( 1, "Покажи мне подарки   ", JumpPage, 2)
Talk( 2, " Дождись 31 Декабря ! Без Новогодней Шапочки , ты не сможешь получить подарки !" )
Text( 2, " Новогодняя Шапочка ", JumpPage, 4)
Text( 2, " Подарки ", JumpPage, 3)

Talk(4," 50 Носков , 50 Конфет , 50 Открыток ")
InitTrigger()
TriggerCondition( 1, HasItem,2887,50,50 )
TriggerCondition( 1, HasItem,3895,50,50 )
TriggerCondition( 1, HasItem,3899,50,50 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 2887,50,50 )
TriggerAction( 1, TakeItem, 3895,50,50 )
TriggerAction( 1, TakeItem, 3899,50,50 )
TriggerAction( 1, GiveItem, 5865,1,105 )
TriggerAction( 1, GiveItem, 5865,1,105 )
Text(4," Получить  ",MultiTrigger,GetMultiTrigger(),1)

Talk(3," На вот! ")
InitTrigger()
TriggerCondition( 1, HasItem,271,1,101 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,1,101 )
TriggerAction( 1, GiveItem, 271,1,105 )
TriggerFailure( 1, JumpPage, 19)
Text(3," Неистовая Фея ",MultiTrigger,GetMultiTrigger(),1)
Text(3," Новогодний Костюм ",MultiTrigger,GetMultiTrigger(),1)
Text(3," Скидка в ИМ 5-15% ",MultiTrigger,GetMultiTrigger(),1)
Text(3," Новогоднее Кольцо ",MultiTrigger,GetMultiTrigger(),1)
Text(3," Купон на Смену Ника ",MultiTrigger,GetMultiTrigger(),1)
Text(3," И другие плюшки  ",MultiTrigger,GetMultiTrigger(),1)

Text(1,"Идти Фармить  ", CloseTalk)
end