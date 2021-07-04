print( "‡ Јаг§Є  Init_Attr.lua" )

function Init_attr() 
	for i = 0, 240, 1 do
		SetChaAttrMax( i, 100000000) 
	end 
end
 
Init_attr() 
SetChaAttrMax( ATTR_LV			,	100				)	-- Максимальный Уровень Персонажа
SetChaAttrMax( ATTR_HP			,	2000000000		)	-- Максимальное ЖЗ
SetChaAttrMax( ATTR_SP			,	2000000000		)	-- Максимальное МН
SetChaAttrMax( ATTR_JOB			,	100				)	-- Максимальное кол-во Профессий
SetChaAttrMax( ATTR_CEXP		,	4200000000		)	-- Максимальное кол-во Опыта
SetChaAttrMax( ATTR_NLEXP		,	4200000000		)	-- Максимальное кол-во Опыта для поднятия уровня
SetChaAttrMax( ATTR_AP			,	300				)	-- Максимальное кол-во Очков Статов
SetChaAttrMax( ATTR_TP			,	200				)	-- Максимальное кол-во Очков Скиллов
SetChaAttrMax( ATTR_GD			,	2000000000		)	-- Максимальное кол-во Золота
SetChaAttrMax( ATTR_CLEXP		,	4200000000		)	-- Максимальное кол-во текущего Опыта
SetChaAttrMax( ATTR_MXHP		,	2000000000		)	-- Максимальное кол-во ХП
SetChaAttrMax( ATTR_MXSP		,	2000000000		)	-- Максимальное кол-во МН
SetChaAttrMax( ATTR_BSTR		,	100				)	-- Максимальное кол-во Силы
SetChaAttrMax( ATTR_BDEX		,	100				)	-- Максимальное кол-во Точности
SetChaAttrMax( ATTR_BAGI		,	100				)	-- Максимальное кол-во Ловкости
SetChaAttrMax( ATTR_BCON		,	100				)	-- Максимальное кол-во Телосложения
SetChaAttrMax( ATTR_BSTA		,	100				)	-- Максимальное кол-во Духа
SetChaAttrMax( ATTR_BLUK		,	100				)   -- Максимальное кол-во Удачи
SetChaAttrMax( ATTR_BMXHP		,	2000000000		)   -- Максимальное кол-во ЖЗ
SetChaAttrMax( ATTR_BMXSP		,	2000000000		)   -- Максимальное кол-во МН
SetChaAttrMax( ATTR_BMNATK		,	9999			)	-- Максимальное кол-во Мин. Атаки
SetChaAttrMax( ATTR_BMXATK		,	9999			)	-- Максимальное кол-во Макс. Атаки
SetChaAttrMax( ATTR_BDEF		,	9999			)   -- Максимальное кол-во ПР
SetChaAttrMax( ATTR_BHIT		,	9999			)   -- Максимальное кол-во Шанса Попадания
SetChaAttrMax( ATTR_BFLEE		,	9999			)   -- Максимальное кол-во Шанса Уклонения
SetChaAttrMax( ATTR_BMF			,	9999			)   -- Максимальное кол-во Шанса Выпадения
SetChaAttrMax( ATTR_BCRT		,	9999			)   -- Максимальное кол-во Шанса Критического Удара
SetChaAttrMax( ATTR_BHREC		,	9999			)   -- Максимальное кол-во Восстановления ЖЗ
SetChaAttrMax( ATTR_BSREC		,	9999			)   -- Максимальное кол-во Восстановления МН
SetChaAttrMax( ATTR_BASPD		,	9999			)   -- Максимальное кол-во Скорости Атаки
SetChaAttrMax( ATTR_BADIS		,	9999			)   -- Максимальное кол-во Диапозона Атаки
SetChaAttrMax( ATTR_BMSPD		,	9999			)   -- Максимальное кол-во Скорости Бега
SetChaAttrMax( ATTR_BCOL		,	9999			)	-- Максимальное кол-во Шанса Выпадения Ресурсов
SetChaAttrMax( ATTR_MSPD		,	9999			)	-- Максимальное кол-во Скорости Бега
SetChaAttrMax( ATTR_LHAND_ITEMV	,	9999			)	-- Максимальное кол-во Добавлений Реквизитов
SetChaAttrMax( ATTR_BOAT_SHIP	,	100000			)	-- Максимальное кол-во Кораблей
SetChaAttrMax( ATTR_BOAT_HEADER	,	100000			)	-- Максимальное кол-во Корабельных Типов Лука
SetChaAttrMax( ATTR_BOAT_BODY	,	100000			)	-- Максимальное кол-во Корпусов Корабля
SetChaAttrMax( ATTR_BOAT_ENGINE	,	100000			)	-- Максимальное кол-во Двигателей Корабля
SetChaAttrMax( ATTR_BOAT_CANNON	,	100000			)	-- Максимальное кол-во Корабельных Орудий
SetChaAttrMax( ATTR_BOAT_PART	,	100000			)	-- Максимальное кол-во Акссесуаров
SetChaAttrMax( ATTR_BOAT_BERTH	,	100000			)	-- Максимальное кол-во Точек Швартовки Корабля
SetChaAttrMax( ATTR_BOAT_DBID	,	2000000000		)	-- Максимальное кол-во Мест Для Хранения в Базе Данных Корабля