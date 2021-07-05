print("-- Massive Cook")																																								
--------------------------------------------------------
--           Массив с предметами кулинарии            --
--------------------------------------------------------
--                   Структура:                       --
-- 1 - ID пердмета;                                   --
-- 2 - Уровень предмета при использовании чертежа;    --
-- 3 - ID ингридиента для приготовления;              --
-- 4 - ID ингридиента для приготовления;              --
-- 5 - ID ингридиента для приготовления;              --
-- 6 - Кол-во предметов при использовании чертежа     --
--------------------------------------------------------
--              Количество строк: 41                  --
--------------------------------------------------------																																
	PENGREN_Qua	=	5	 				PENGREN_Mxcount	=	40																															
	PENGREN_ID	=	{}					PENGREN_LV	=	{}					PENGREN_ID1	=	{}					PENGREN_ID2	=	{}					PENGREN_ID3	=	{}					PENGREN__Rad	=	{}			
	PENGREN_ID	[	1	]	=	1857		PENGREN_LV	[	1	]	=	0		PENGREN_ID1	[	1	]	=	7731		PENGREN_ID2	[	1	]	=	854		PENGREN_ID3	[	1	]	=	7625		PENGREN__Rad	[	1	]	=	1
	PENGREN_ID	[	2	]	=	1856		PENGREN_LV	[	2	]	=	0		PENGREN_ID1	[	2	]	=	7732		PENGREN_ID2	[	2	]	=	854		PENGREN_ID3	[	2	]	=	7625		PENGREN__Rad	[	2	]	=	1
	PENGREN_ID	[	3	]	=	1855		PENGREN_LV	[	3	]	=	10		PENGREN_ID1	[	3	]	=	7728		PENGREN_ID2	[	3	]	=	854		PENGREN_ID3	[	3	]	=	7625		PENGREN__Rad	[	3	]	=	1
	PENGREN_ID	[	4	]	=	1858		PENGREN_LV	[	4	]	=	10		PENGREN_ID1	[	4	]	=	7729		PENGREN_ID2	[	4	]	=	854		PENGREN_ID3	[	4	]	=	7625		PENGREN__Rad	[	4	]	=	1
	PENGREN_ID	[	5	]	=	1859		PENGREN_LV	[	5	]	=	10		PENGREN_ID1	[	5	]	=	7730		PENGREN_ID2	[	5	]	=	854		PENGREN_ID3	[	5	]	=	7625		PENGREN__Rad	[	5	]	=	1
	PENGREN_ID	[	6	]	=	1859		PENGREN_LV	[	6	]	=	10		PENGREN_ID1	[	6	]	=	7731		PENGREN_ID2	[	6	]	=	854		PENGREN_ID3	[	6	]	=	7625		PENGREN__Rad	[	6	]	=	1
	PENGREN_ID	[	7	]	=	1856		PENGREN_LV	[	7	]	=	10		PENGREN_ID1	[	7	]	=	7732		PENGREN_ID2	[	7	]	=	854		PENGREN_ID3	[	7	]	=	7625		PENGREN__Rad	[	7	]	=	1
	PENGREN_ID	[	8	]	=	1854		PENGREN_LV	[	8	]	=	20		PENGREN_ID1	[	8	]	=	7727		PENGREN_ID2	[	8	]	=	7734		PENGREN_ID3	[	8	]	=	7625		PENGREN__Rad	[	8	]	=	1
	PENGREN_ID	[	9	]	=	1860		PENGREN_LV	[	9	]	=	20		PENGREN_ID1	[	9	]	=	7727		PENGREN_ID2	[	9	]	=	7734		PENGREN_ID3	[	9	]	=	7625		PENGREN__Rad	[	9	]	=	1
	PENGREN_ID	[	10	]	=	3100		PENGREN_LV	[	10	]	=	20		PENGREN_ID1	[	10	]	=	7732		PENGREN_ID2	[	10	]	=	7734		PENGREN_ID3	[	10	]	=	7625		PENGREN__Rad	[	10	]	=	1
	PENGREN_ID	[	11	]	=	3101		PENGREN_LV	[	11	]	=	20		PENGREN_ID1	[	11	]	=	7731		PENGREN_ID2	[	11	]	=	7734		PENGREN_ID3	[	11	]	=	7625		PENGREN__Rad	[	11	]	=	1
	PENGREN_ID	[	12	]	=	3102		PENGREN_LV	[	12	]	=	20		PENGREN_ID1	[	12	]	=	7730		PENGREN_ID2	[	12	]	=	7734		PENGREN_ID3	[	12	]	=	7625		PENGREN__Rad	[	12	]	=	1
	PENGREN_ID	[	13	]	=	3103		PENGREN_LV	[	13	]	=	30		PENGREN_ID1	[	13	]	=	7729		PENGREN_ID2	[	13	]	=	7746		PENGREN_ID3	[	13	]	=	7622		PENGREN__Rad	[	13	]	=	1
	PENGREN_ID	[	14	]	=	3104		PENGREN_LV	[	14	]	=	30		PENGREN_ID1	[	14	]	=	7728		PENGREN_ID2	[	14	]	=	7734		PENGREN_ID3	[	14	]	=	7622		PENGREN__Rad	[	14	]	=	1
	PENGREN_ID	[	15	]	=	2732		PENGREN_LV	[	15	]	=	30		PENGREN_ID1	[	15	]	=	7730		PENGREN_ID2	[	15	]	=	7746		PENGREN_ID3	[	15	]	=	7622		PENGREN__Rad	[	15	]	=	1
	PENGREN_ID	[	16	]	=	2720		PENGREN_LV	[	16	]	=	30		PENGREN_ID1	[	16	]	=	7729		PENGREN_ID2	[	16	]	=	7734		PENGREN_ID3	[	16	]	=	7622		PENGREN__Rad	[	16	]	=	1
	PENGREN_ID	[	17	]	=	2719		PENGREN_LV	[	17	]	=	30		PENGREN_ID1	[	17	]	=	7728		PENGREN_ID2	[	17	]	=	7746		PENGREN_ID3	[	17	]	=	7622		PENGREN__Rad	[	17	]	=	1
	PENGREN_ID	[	18	]	=	2721		PENGREN_LV	[	18	]	=	30		PENGREN_ID1	[	18	]	=	7728		PENGREN_ID2	[	18	]	=	7734		PENGREN_ID3	[	18	]	=	7622		PENGREN__Rad	[	18	]	=	1
	PENGREN_ID	[	19	]	=	2720		PENGREN_LV	[	19	]	=	30		PENGREN_ID1	[	19	]	=	7730		PENGREN_ID2	[	19	]	=	7734		PENGREN_ID3	[	19	]	=	7622		PENGREN__Rad	[	19	]	=	1
	PENGREN_ID	[	20	]	=	1083		PENGREN_LV	[	20	]	=	40		PENGREN_ID1	[	20	]	=	1855		PENGREN_ID2	[	20	]	=	7734		PENGREN_ID3	[	20	]	=	7622		PENGREN__Rad	[	20	]	=	1
	PENGREN_ID	[	21	]	=	2753		PENGREN_LV	[	21	]	=	40		PENGREN_ID1	[	21	]	=	1145		PENGREN_ID2	[	21	]	=	7734		PENGREN_ID3	[	21	]	=	7622		PENGREN__Rad	[	21	]	=	1
	PENGREN_ID	[	22	]	=	2777		PENGREN_LV	[	22	]	=	40		PENGREN_ID1	[	22	]	=	2729		PENGREN_ID2	[	22	]	=	7746		PENGREN_ID3	[	22	]	=	7622		PENGREN__Rad	[	22	]	=	1
	PENGREN_ID	[	23	]	=	3107		PENGREN_LV	[	23	]	=	40		PENGREN_ID1	[	23	]	=	7728		PENGREN_ID2	[	23	]	=	7746		PENGREN_ID3	[	23	]	=	7622		PENGREN__Rad	[	23	]	=	1
	PENGREN_ID	[	24	]	=	3107		PENGREN_LV	[	24	]	=	40		PENGREN_ID1	[	24	]	=	7727		PENGREN_ID2	[	24	]	=	7746		PENGREN_ID3	[	24	]	=	7622		PENGREN__Rad	[	24	]	=	1
	PENGREN_ID	[	25	]	=	1145		PENGREN_LV	[	25	]	=	40		PENGREN_ID1	[	25	]	=	7746		PENGREN_ID2	[	25	]	=	7746		PENGREN_ID3	[	25	]	=	7622		PENGREN__Rad	[	25	]	=	1
	PENGREN_ID	[	26	]	=	2729		PENGREN_LV	[	26	]	=	40		PENGREN_ID1	[	26	]	=	7727		PENGREN_ID2	[	26	]	=	7734		PENGREN_ID3	[	26	]	=	7622		PENGREN__Rad	[	26	]	=	1
	PENGREN_ID	[	27	]	=	4023		PENGREN_LV	[	27	]	=	50		PENGREN_ID1	[	27	]	=	4055		PENGREN_ID2	[	27	]	=	4013		PENGREN_ID3	[	27	]	=	2619		PENGREN__Rad	[	27	]	=	1
	PENGREN_ID	[	28	]	=	1080		PENGREN_LV	[	28	]	=	50		PENGREN_ID1	[	28	]	=	4730		PENGREN_ID2	[	28	]	=	4955		PENGREN_ID3	[	28	]	=	2619		PENGREN__Rad	[	28	]	=	1
	PENGREN_ID	[	29	]	=	1082		PENGREN_LV	[	29	]	=	50		PENGREN_ID1	[	29	]	=	4730		PENGREN_ID2	[	29	]	=	1324		PENGREN_ID3	[	29	]	=	2619		PENGREN__Rad	[	29	]	=	1
	PENGREN_ID	[	30	]	=	1088		PENGREN_LV	[	30	]	=	50		PENGREN_ID1	[	30	]	=	4730		PENGREN_ID2	[	30	]	=	1291		PENGREN_ID3	[	30	]	=	2619		PENGREN__Rad	[	30	]	=	1
	PENGREN_ID	[	31	]	=	1087		PENGREN_LV	[	31	]	=	50		PENGREN_ID1	[	31	]	=	4730		PENGREN_ID2	[	31	]	=	1358		PENGREN_ID3	[	31	]	=	2619		PENGREN__Rad	[	31	]	=	1
	PENGREN_ID	[	32	]	=	1860		PENGREN_LV	[	32	]	=	60		PENGREN_ID1	[	32	]	=	4061		PENGREN_ID2	[	32	]	=	1329		PENGREN_ID3	[	32	]	=	2589		PENGREN__Rad	[	32	]	=	1
	PENGREN_ID	[	33	]	=	4024		PENGREN_LV	[	33	]	=	60		PENGREN_ID1	[	33	]	=	4061		PENGREN_ID2	[	33	]	=	4014		PENGREN_ID3	[	33	]	=	2622		PENGREN__Rad	[	33	]	=	1
	PENGREN_ID	[	34	]	=	1083		PENGREN_LV	[	34	]	=	60		PENGREN_ID1	[	34	]	=	4864		PENGREN_ID2	[	34	]	=	1735		PENGREN_ID3	[	34	]	=	2622		PENGREN__Rad	[	34	]	=	1
	PENGREN_ID	[	35	]	=	1089		PENGREN_LV	[	35	]	=	60		PENGREN_ID1	[	35	]	=	4831		PENGREN_ID2	[	35	]	=	1359		PENGREN_ID3	[	35	]	=	2622		PENGREN__Rad	[	35	]	=	1
	PENGREN_ID	[	36	]	=	1090		PENGREN_LV	[	36	]	=	60		PENGREN_ID1	[	36	]	=	4727		PENGREN_ID2	[	36	]	=	4792		PENGREN_ID3	[	36	]	=	2622		PENGREN__Rad	[	36	]	=	1
	PENGREN_ID	[	37	]	=	4025		PENGREN_LV	[	37	]	=	70		PENGREN_ID1	[	37	]	=	2225		PENGREN_ID2	[	37	]	=	4015		PENGREN_ID3	[	37	]	=	2624		PENGREN__Rad	[	37	]	=	1
	PENGREN_ID	[	38	]	=	4026		PENGREN_LV	[	38	]	=	80		PENGREN_ID1	[	38	]	=	4057		PENGREN_ID2	[	38	]	=	4016		PENGREN_ID3	[	38	]	=	2624		PENGREN__Rad	[	38	]	=	1
	PENGREN_ID	[	39	]	=	4027		PENGREN_LV	[	39	]	=	90		PENGREN_ID1	[	39	]	=	1768		PENGREN_ID2	[	39	]	=	4017		PENGREN_ID3	[	39	]	=	2624		PENGREN__Rad	[	39	]	=	1
	PENGREN_ID	[	40	]	=	4028		PENGREN_LV	[	40	]	=	100		PENGREN_ID1	[	40	]	=	1768		PENGREN_ID2	[	40	]	=	4018		PENGREN_ID3	[	40	]	=	2624		PENGREN__Rad	[	40	]	=	1
