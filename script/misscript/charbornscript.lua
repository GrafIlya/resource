print( "‡ Јаг§Є  CharBornScript.lua" )

---------------
-- Подсказки --
---------------

function PCBorn ()
	InitTrigger()
	TriggerCondition( 1, IsSpawnPos, "Argent City" )
	TriggerAction( 1, ObligeAcceptMission, 1 )
	TriggerCondition( 2, IsSpawnPos, "Shaitan City" )
	TriggerAction( 2, ObligeAcceptMission, 2 )
	TriggerCondition( 3, IsSpawnPos, "Icicle Castle" )
	TriggerAction( 3, ObligeAcceptMission, 3 )
	local triggerlist = GetMultiTrigger()
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"Добро Пожаловать в Пиратию Онлайн. Я расскажу вам основные фукции начальной игры. Для того чтобы передвигаться по городам или же по той или иной области нажимай 'Левую кнопку мыши'. ля атаки мостров нажимаем на монстра и персонаж начинает пинать монстра. Точно также нажатием 'Левый кнопкой мыши' можно поговорить с NPC! Если Вы хотите поговорить с персонажем в ЛС, то правая кнопка мыши и выбираем то что Вам надо. Также зажатием правой кнопки мыши можно изменить масштаю карты." )
	TriggerAction( 1, AddTrigger, 60000, TE_LEVELUP, 2, 1 )
	TriggerAction( 1, AddTrigger, 60001, TE_LEVELUP, 5, 1 )
	TriggerAction( 1, AddTrigger, 60002, TE_LEVELUP, 9, 1 )
	TriggerAction( 1, AddTrigger, 60003, TE_LEVELUP, 10, 1 )
	TriggerAction( 1, MultiTrigger, triggerlist, 3 )
	TriggerAction( 1, SaveMissionData )

	RegTrigger( 88888, 1 )

	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    Поздравляем! Сейчас я объясню Вам как использовать радар. Сначала нажмите комбинацию клавиш Alt+R. Откроется сам радар. Выберите регион, который нуен вам, а затем поместите туда координаты. Появится стрелка, ведущая в точку указанных координат." )
	RegTrigger( 60000, 1 )

	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    Серьезная битва еще впереди! Нажмите кнопку \"Insert\" чтобы сесть, таким образом ваша мана и здоровье будет востонавливатся намного быстрее. Нажмите \"Alt + Левый кнопка мыши\" по игроку, чтобы следовать за ним." )
	RegTrigger( 60001, 1 )

	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    Я верю, что вы понимаете основную систему боя. Теперь настало время, чтобы выбрать класс. Руководство Новичка будет рекомендовать вам соответствующих тренеров. Идите к Наставнице сейчас и выберите класс, который вы пожелаете. Вы должны будете пройти небольшое испытание, чтобы получит класс." )
	RegTrigger( 60002, 1 )

	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    Поздравляем! Вы достигли 10 уровня. Вы получили ваше первое очко навыка. Каждый уровень теперь позволит получить очко навыка. Вы можете изучать новые навыки после получения професии. Различные навыки продаются у бакалейщика в любом городе!" )
	RegTrigger( 60003, 1 )
end
PCBorn()