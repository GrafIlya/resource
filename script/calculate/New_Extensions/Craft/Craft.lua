print("-- Massiv Craft")
--------------------------------------------------------
--          Массив с предметами производства          --
--------------------------------------------------------
--                   Структура:                       --
-- 1 - ID предмета;                                   --
-- 2 - Уровень предмета при использовании чертежа;    --
-- 3 - ID ингридиента для приготовления;              --
-- 4 - ID ингридиента для приготовления;              --
-- 5 - ID ингридиента для приготовления;              --
-- 6 - Кол-во предметов при использовании чертежа     --
--------------------------------------------------------
--              Количество строк: 281                 --
--------------------------------------------------------																															
	ZHIZAO_Qua	=	5	 			ZHIZAO_Mxcount	=	10																															
	ZHIZAO_ID	=	{}						ZHIZAO_LV	=	{}					ZHIZAO_ID1	=	{}						ZHIZAO_ID2	=	{}						ZHIZAO_ID3	=	{}					ZHIZAO__Rad	=	{}			
	ZHIZAO_ID	[	1	]	=	1626		ZHIZAO_LV	[	1	]	=	10		ZHIZAO_ID1	[	1	]	=	3989		ZHIZAO_ID2	[	1	]	=	3905		ZHIZAO_ID3	[1	]	=	1667		ZHIZAO__Rad	[	1	]	=	45
	ZHIZAO_ID	[	2	]	=	7453		ZHIZAO_LV	[	2	]	=	10		ZHIZAO_ID1	[	2	]	=	1736		ZHIZAO_ID2	[	2	]	=	1749		ZHIZAO_ID3	[2	]	=	2386		ZHIZAO__Rad	[	2	]	=	15
	ZHIZAO_ID	[	3	]	=	850			ZHIZAO_LV	[	3	]	=	10		ZHIZAO_ID1	[	3	]	=	1768		ZHIZAO_ID2	[	3	]	=	1746		ZHIZAO_ID3	[3	]	=	1752		ZHIZAO__Rad	[	3	]	=	10
	ZHIZAO_ID	[	4	]	=	3339		ZHIZAO_LV	[	4	]	=	10		ZHIZAO_ID1	[	4	]	=	1735		ZHIZAO_ID2	[	4	]	=	1744		ZHIZAO_ID3	[4	]	=	1734		ZHIZAO__Rad	[	4	]	=	20
	ZHIZAO_ID	[	5	]	=	2326		ZHIZAO_LV	[	5	]	=	10		ZHIZAO_ID1	[	5	]	=	2386		ZHIZAO_ID2	[	5	]	=	1735		ZHIZAO_ID3	[5	]	=	1748		ZHIZAO__Rad	[	5	]	=	15
	ZHIZAO_ID	[	6	]	=	1148		ZHIZAO_LV	[	6	]	=	10		ZHIZAO_ID1	[	6	]	=	1761		ZHIZAO_ID2	[	6	]	=	1762		ZHIZAO_ID3	[6	]	=	1763		ZHIZAO__Rad	[	6	]	=	10
	ZHIZAO_ID	[	7	]	=	1136		ZHIZAO_LV	[	7	]	=	10		ZHIZAO_ID1	[	7	]	=	2392		ZHIZAO_ID2	[	7	]	=	1731		ZHIZAO_ID3	[7	]	=	1764		ZHIZAO__Rad	[	7	]	=	20
	ZHIZAO_ID	[	8	]	=	1138		ZHIZAO_LV	[	8	]	=	10		ZHIZAO_ID1	[	8	]	=	2392		ZHIZAO_ID2	[	8	]	=	1766		ZHIZAO_ID3	[8	]	=	1749		ZHIZAO__Rad	[	8	]	=	15
	ZHIZAO_ID	[	9	]	=	1135		ZHIZAO_LV	[	9	]	=	10		ZHIZAO_ID1	[	9	]	=	1765		ZHIZAO_ID2	[	9	]	=	1766		ZHIZAO_ID3	[9	]	=	1729		ZHIZAO__Rad	[	9	]	=	10
	ZHIZAO_ID	[	10	]	=	1139		ZHIZAO_LV	[	10	]	=	10		ZHIZAO_ID1	[	10	]	=	1730		ZHIZAO_ID2	[	10	]	=	1754		ZHIZAO_ID3	[10	]	=	1755		ZHIZAO__Rad	[	10	]	=	20
	-- ZHIZAO_ID	[	2	]	=	1626		ZHIZAO_LV	[	1	]	=	10		ZHIZAO_ID1	[	1	]	=	3989		ZHIZAO_ID2	[	1	]	=	3905		ZHIZAO_ID3	[1	]	=	1667		ZHIZAO__Rad	[	1	]	=	45
	-- ZHIZAO_ID	[	3	]	=	1626		ZHIZAO_LV	[	1	]	=	10		ZHIZAO_ID1	[	1	]	=	3989		ZHIZAO_ID2	[	1	]	=	3905		ZHIZAO_ID3	[1	]	=	1667		ZHIZAO__Rad	[	1	]	=	45
	-- ZHIZAO_ID	[	4	]	=	1626		ZHIZAO_LV	[	1	]	=	10		ZHIZAO_ID1	[	1	]	=	3989		ZHIZAO_ID2	[	1	]	=	3905		ZHIZAO_ID3	[1	]	=	1667		ZHIZAO__Rad	[	1	]	=	45
	-- ZHIZAO_ID	[	5	]	=	1626		ZHIZAO_LV	[	1	]	=	10		ZHIZAO_ID1	[	1	]	=	3989		ZHIZAO_ID2	[	1	]	=	3905		ZHIZAO_ID3	[1	]	=	1667		ZHIZAO__Rad	[	1	]	=	45
	-- ZHIZAO_ID	[	6	]	=	1626		ZHIZAO_LV	[	1	]	=	10		ZHIZAO_ID1	[	1	]	=	3989		ZHIZAO_ID2	[	1	]	=	3905		ZHIZAO_ID3	[1	]	=	1667		ZHIZAO__Rad	[	1	]	=	45
	-- ZHIZAO_ID	[	7	]	=	1626		ZHIZAO_LV	[	1	]	=	10		ZHIZAO_ID1	[	1	]	=	3989		ZHIZAO_ID2	[	1	]	=	3905		ZHIZAO_ID3	[1	]	=	1667		ZHIZAO__Rad	[	1	]	=	45
	-- ZHIZAO_ID	[	8	]	=	1626		ZHIZAO_LV	[	1	]	=	10		ZHIZAO_ID1	[	1	]	=	3989		ZHIZAO_ID2	[	1	]	=	3905		ZHIZAO_ID3	[1	]	=	1667		ZHIZAO__Rad	[	1	]	=	45
	-- ZHIZAO_ID	[	9	]	=	1626		ZHIZAO_LV	[	1	]	=	10		ZHIZAO_ID1	[	1	]	=	3989		ZHIZAO_ID2	[	1	]	=	3905		ZHIZAO_ID3	[1	]	=	1667		ZHIZAO__Rad	[	1	]	=	45
	-- ZHIZAO_ID	[	10	]	=	1626		ZHIZAO_LV	[	1	]	=	10		ZHIZAO_ID1	[	1	]	=	3989		ZHIZAO_ID2	[	1	]	=	3905		ZHIZAO_ID3	[1	]	=	1667		ZHIZAO__Rad	[	1	]	=	45
	
	
