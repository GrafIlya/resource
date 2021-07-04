print( "����㧪� NPCScript04.lua" )

--------------------------
--	������ ����������	--
--------------------------
jp				= JumpPage
amp				= AutoMissionPage
ct				= CloseTalk
am				= AddMission
MissionCheck 	= HasFlag
mc				= MissionCheck

--------------------------------------------------------------------------------------------------------------------
--													b_talk (������)												  --
--------------------------------------------------------------------------------------------------------------------
function b_talk1()
	Talk( 1, "�� ����: ���������� ������ � ����� ����, ��� ������� � ������ ����, ���� ������� �� ������. ����� ���� �� ���������! " )
	Text( 1, "���� ", BuyPage )
	Text( 1, "������ ", OpenRepair)
	Text( 1, "������ � ������� ���������� ", JumpPage, 2)
	Text( 1, "������ � �������������� ", JumpPage, 3)

	Talk( 2, "�� ����: ������� ����������? ������ ������ ������� ����� � ���! " )

	Talk( 3, "�� ����: ��������������? ������� ���������� � ����������� ����� � �������. �� ������ ����� �� ����! " )

	Talk( 4, "�� ����: ��� ���� �� ��������! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )

	InitTrade()
	Weapon(	0023	)
	Weapon(	1399	)
	Weapon(	0021	)
	Weapon(	1378	)
	Weapon(	1387	)
	Weapon(	0084	)
	Weapon(	1426	)
	Weapon(	1461	)
	Weapon(	0108	)
	Weapon(	4302	)
	Weapon(	1438	)
	Weapon(	1441	)
	Weapon(	1473	)
	Weapon(	1476	)
	Weapon(	0045	)
	Weapon(	1414	)

	AddNpcMission ( 393  )
    AddNpcMission ( 567  )
	AddNpcMission (	5817 )
	AddNpcMission (	5818 )
end

function b_talk2()
	Talk( 1, "���� ��: ������ ����. �� ������ ������������ � ������������� ������ ������. ��� ��� ������ ��������������? ")

	Talk( 2, "���� ��: ��� ���� �� ��������! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

   	InitTrade()
	Other(	1078	)
	Other(	1079	)
	Other(	1080	)
	Other(	1082	)  
	Other(	1083	)

	AddNpcMission ( 394 )
	AddNpcMission ( 536 )
	AddNpcMission ( 537 )
	AddNpcMission ( 538 )
    AddNpcMission ( 569 )
	AddNpcMission	(5819)
	AddNpcMission	(5820)
end

function b_talk3()
	Talk( 1, "����: ��... ������� ��� �� ����� ����� �� ��� ��� � �. ����� ����� ���������� ��� � ��������� ��������� ����! " )
	Text( 1, "���� ", BuyPage )

	Talk( 2, "����: ��� ���� �� ��������! " )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission ( 395 )
	AddNpcMission ( 517 )
	AddNpcMission ( 519 )
	AddNpcMission ( 525 )
	AddNpcMission ( 526 )
    AddNpcMission ( 564 )
	AddNpcMission	(5821)
	AddNpcMission	(5822)
end

function b_talk4()
	Talk( 1, "����: �� �� ������ � ������� �����? � ����������� �������? ���? �� ������? � � ��������? ���� ���...����� �� �� �������� �����������?" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 13 )
	TriggerAction( 1, TradeBerthList, 13 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 2, "����: ��������, �� � ��� ��� ������� � ���� ����������. � �� ���� ���������� ����! " )

	Talk( 3, "����: ������! ���� �� ������ ���������, �� �� ���������� � �������� ��������. ������ � �������� �������� ����� � ����� �������.")
	Text( 3, "������ � ������ ",JumpPage, 7)
	Text( 3, "�������� ������� ������ ",JumpPage, 4)
	Text( 3, "�������� ������������ ������ ",JumpPage, 5)
	Text( 3, "�������� ������� ������ ",JumpPage, 6)

	Talk( 4, "����: �������� ������� ������ �������� ��������. ��� ����� ��� ���� ���� �� ����� 20 ������ � ����� ����� �������.")

	Talk( 5, "����: ����� �������� �������� ������������ ������ �� ������ ���� �� ����� 40 ������ � ����� �� ������ 20% ������.")

	Talk( 6, "����: ����� �������� �������� ������� ������ �� ������ ���� �� ����� 60 ������ � ����� �� ������ 10% ������.")

	Talk( 7, "����: ������� ������� ������ �� ������ ������� �� ����� �������� ��������. �� ������ �� ��������� ������� � ������� ������ ���������.")

	Talk( 8, "����: ��� ���� �� ��������! " )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	InitGoods()
	SaleGoodsData(	0	,	4573	,	900	,	279	,	62	)
	SaleGoodsData(	0	,	4574	,	800	,	342	,	76	)
	SaleGoodsData(	1	,	4575	,	700	,	391	,	87	)
	SaleGoodsData(	1	,	4576	,	480	,	432	,	96	)
	SaleGoodsData(	2	,	4577	,	300	,	495	,	110	)
	SaleGoodsData(	2	,	4578	,	240	,	522	,	116	)
	SaleGoodsData(	3	,	4579	,	60	,	589	,	131	)
	SaleGoodsData(	3	,	4580	,	40	,	648	,	144	)
	BuyGoodsData(0,	4581	,	-1	,	542	,	121	)
	BuyGoodsData(0,	4583	,	-1	,	724	,	161	)
	BuyGoodsData(0,	4585	,	-1	,	846	,	188	)
	BuyGoodsData(0,	4587	,	-1	,	846	,	564	)
	BuyGoodsData(0,	4593	,	-1	,	1000	,	223	)
	BuyGoodsData(0,	4595	,	-1	,	938	,	625	)
	BuyGoodsData(0,	4597	,	-1	,	881	,	195	)
	BuyGoodsData(0,	4598	,	-1	,	878	,	195	)
	BuyGoodsData(0,	4600	,	-1	,	866	,	577	)
	BuyGoodsData(0,	4552	,	-1	,	642	,	143	)
	BuyGoodsData(0,	4553	,	-1	,	789	,	175	)
	BuyGoodsData(0,	4554	,	-1	,	934	,	207	)
	BuyGoodsData(0,	4556	,	-1	,	870	,	193	)
	BuyGoodsData(0,	4557	,	-1	,	970	,	215	)
	BuyGoodsData(0,	4560	,	-1	,	1056	,	235	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4566	,	-1	,	785	,	175	)
	BuyGoodsData(0,	4569	,	-1	,	1014	,	225	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)
	BuyGoodsData(0,	4547	,	-1	,	100	,	0	)
	BuyGoodsData(0,	4549	,	-1	,	500	,	0	)
	BuyGoodsData(0,	4548	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission ( 396 )
	AddNpcMission ( 530 )
	AddNpcMission ( 545 )
	AddNpcMission ( 546 )
	AddNpcMission ( 547 )
    AddNpcMission ( 572 )
	AddNpcMission	(5825)
	AddNpcMission	(5826)
end

function b_talk5()
	local ReSelectTalk = "� ������ �������� "
	local ReSelectPage = 1
	local CancelSelectTalk = "������! � ������� ����� "
	local CancelSelectPage = 7
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5
	Talk( 1, "��� ��: � ������� ��� �� ������� �� ������� " )
	Text( 1, "� ������ ", JumpPage, 2 )
	Text( 1, "� ������ ", JumpPage, 3 )
	Text( 1, "� ������ ", JumpPage, 4 )
	Text( 1, "�������� ����� ����������� ", JumpPage, 5 )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 2, "����������� � ������? ��� �������. ��������� 500 �������! " )
	Text( 2, "����������� ",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 3, "����������� � ������? ��� �������. ��������� 500 �������! " )
	Text( 3, "����������� ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 4, "����������� � ������? ��� �������. ��������� 500 �������! " )
	Text( 4, "����������� ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 5, "��� ��: ������ �������� ����� ����������� � ����������? " )
	Text( 5, "��, ���������� ��������. ", SetSpawnPos, "Spring Town" )
	Text( 5, "���, ������� ",CloseTalk )

	Talk( 6, "��������, �� � ��� ������������ ����� ��� ������������ " )

	Talk( 7, "���������� �� ��� ���� ����� ����������� ������! ", CloseTalk )

	Talk( 8, "��� ��: ��� ���� �� ��������! " )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 397 )
	AddNpcMission ( 559 )

	MisListPage(8)

	AddNpcMission	(5827)
	AddNpcMission	(5828)	
end

function b_talk6()
	Talk( 1, "����� �����: ������! � ���� ������� ��� ��������� �����! � ������ ��� ��������� ����������� ����� �� 500 �������! " )
	Text( 1, "��� ���� 1 ������ ����� ", JumpPage, 2 )
	Text( 1, "��� ���� 1 ������ ������� ", JumpPage, 3 )
	Text( 1, "������ �� ������� ", JumpPage, 6 )

	Talk( 6, "����� �����: ���� ��� ����� ������. ��� �� ������ ��������? ")
	Text( 6, "������ ������ ",JumpPage,7)
	Text( 6, "��������� ", JumpPage,8)
	Text( 6, "���� ", JumpPage,9)

	Talk( 7, "����� �����: 1 ���������� ������-�������, 1 ���������� ��������� ������, 1 ���������� ������ �����, 1 ���������� �������, 1 ���������� ��������, 1 ���������� ������� � 1 ���������� ������ � ����� �� 1 ������ ������. ")
	Text( 7, "�������� ",GetChaName_7, 1) 

	Talk( 8, "����� �����: ������ ������� �� ����� ���� ������ ��������� ������. ")
	Text( 8, "��������� ������� ",JumpPage,11)
	Text( 8, "��������� ���� ", JumpPage,12)
	Text( 8, "��������� ������ ", JumpPage,13)
	Text( 8, "��������� ������ ", JumpPage,14)
	Text( 8, "��������� ������ ", JumpPage,15)
	Text( 8, "��������� ����� ", JumpPage,16)

	Talk( 11, "����� �����: 1 ����� ������, 1 ��� ������, 1 ���� ������, 1 ������ ������ � 1 ������������ ���� ������� � ����� �� 1 ��������� �������. ")
	Text( 11, "�������� ",GetChaName_8, 1) 

	Talk( 12, "����� �����: 1 ����� ������, 1 ��� ������, 1 ���� ������, 1 ������ ������ � 1 ������������ ���� ���� � ����� �� 1 ��������� ����. ")
	Text( 12, "�������� ",GetChaName_9, 1)

	Talk( 13, "����� �����: 1 ����� ������, 1 ��� ������, 1 ���� ������, 1 ������ ������ � 1 ������������ ���� ������ � ����� �� 1 ��������� ������. ")
	Text( 13, "�������� ",GetChaName_10, 1) 

	Talk( 14, "����� �����: 1 ����� ������, 1 ��� ������, 1 ���� ������, 1 ������ ������ � 1 ������������ ���� ������ � ����� �� 1 ��������� ������. ")
	Text( 14, "�������� ",GetChaName_11, 1) 

	Talk( 15, "����� �����: 1 ����� ������, 1 ��� ������, 1 ���� ������, 1 ������ ������ � 1 ������������ ���� ������ � ����� �� 1 ��������� ������. ")
	Text( 15, "�������� ",GetChaName_12, 1) 

	Talk( 16, "����� �����: 1 ����� ������, 1 ��� ������, 1 ���� ������, 1 ������ ������ � 1 ������������ ���� ����� � ����� �� 1 ��������� �����. ")
	Text( 16, "�������� ",GetChaName_13, 1) 

	Talk( 9, "����� �����: � ������ ���� �������� ����� ������ ������... ��������� ������� ����� ���� ������. ")
	Text( 9, "���� ������� ",JumpPage,17)
	Text( 9, "���� ���� ", JumpPage,18)
	Text( 9, "���� ������ ", JumpPage,19)
	Text( 9, "���� ������ ", JumpPage,20)
	Text( 9, "���� ������ ", JumpPage,21)
	Text( 9, "���� ����� ", JumpPage,22)
	Text( 9, "���� ������� ������� ", JumpPage,23)

	Talk( 17, "����� �����: 1 ������ ������ � 1 ��������� ������� � ����� �� 1 ���� ������� ")
	Text( 17, "�������� ",GetChaName_14, 1) 

	Talk( 18, "����� �����: 1 ������ ������ � 1 ��������� ���� � ����� �� 1 ���� ���� ")
	Text( 18, "�������� ",GetChaName_15, 1) 

	Talk( 19, "����� �����: 1 ������ ������ � 1 ��������� ������ � ����� �� 1 ���� ������ ")
	Text( 19, "�������� ",GetChaName_16, 1)  

	Talk( 20, "����� �����: 1 ������ ������ � 1 ��������� ������ � ����� �� 1 ���� ������ ")
	Text( 20, "�������� ",GetChaName_17, 1)

	Talk( 21, "����� �����: 1 ������ ������ � 1 ��������� ������ � ����� �� 1 ���� ������ ")
	Text( 21, "�������� ",GetChaName_18, 1)

	Talk( 22, "����� �����: 1 ������ ������ � 1 ��������� ����� � ����� �� 1 ���� ����� ")
	Text( 22, "�������� ",GetChaName_19, 1) 

	Talk( 23, "����� �����: 1 ���� ����, 1 ���� �����, 1 ���� �������, 1 ���� ������, 1 ���� ������, 1 ���� ������, 1 ������ ������ � 1 ���� ������� ������� � ����� �� 1 ���� ������� �������. ")
	Text( 23, "�������� ",GetChaName_20, 1)

	Talk( 10, "� ��� ��� ���� ����������� ����������� ��� ������, ��� � ��� ������������ ���� � ���������. �������� ����� ��� ��������� ������������. " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3086,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 2, "������ �����? � ��� 5000 ������! " )
	Text( 2, "�������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3087,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "������ �������? � ��� 5000 ������! " )
	Text( 3, "�������� ",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 4, "����� �����: ��� ���� �� ��������! " )

	Talk( 5, "� ��� ������������ �����, ��� � ��� ������������ ���� � ���������. �������� ����� ��� ��������� ������������." )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 4 )

	AddNpcMission ( 520 )
    AddNpcMission ( 900 )
	AddNpcMission(	5065)
	AddNpcMission(	595	)
	AddNpcMission(	599	)
	AddNpcMission(	5000	)
	AddNpcMission(	5001	)
	AddNpcMission(	5002	)
	AddNpcMission(	5003 )
	AddNpcMission(	5066)
	AddNpcMission	(5829)
	AddNpcMission	(5830)	
end

function b_talk7()
	Talk( 1, "���� ��: �����! ������������ ��������� ������! " )
   	
	Talk( 2, "���� ��: ��� ���� �� ��������! " )
	InitTrade()
	Other(	1084	)
	Other(	1085	)
	Other(	1087	)
	Other(	1088	)
	Other(	1089	)
	Other(	1090	) 
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 392 )
	AddNpcMission ( 514 )
	AddNpcMission ( 516 )
	AddNpcMission ( 527 )
	AddNpcMission ( 528 )
	AddNpcMission ( 529 )
	AddNpcMission ( 548 )
	AddNpcMission ( 550 )
	AddNpcMission ( 551 )
    AddNpcMission ( 558 )
    AddNpcMission ( 571 )
	AddNpcMission(	592	)
	AddNpcMission(	5004	)
	AddNpcMission(	5005	)
	AddNpcMission(	5006	)
	AddNpcMission(	5007	)
	AddNpcMission(	5008	)
	AddNpcMission(	5043	)
	AddNpcMission(	5054	)
	AddNpcMission(	5055	)
	AddNpcMission	(5831)
	AddNpcMission	(5832)
end

function b_talk8()
	Talk( 1, "�����: ������� �������? ��������? ��� ��� ������? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 13 )
	TriggerAction( 1, LuanchBerthList, 13, 3426, 2575, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � �������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, RepairBerthList, 13 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, SupplyBerthList, 13 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 13 )
	TriggerAction( 1, SalvageBerthList, 13 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������, �� � ��� � ���� ����� �� �������� �����! " )

	Talk( 4, "��������, � ���������� ���� ���� ����������� � ����� �����. ��������� 1000 �������! " )

	Talk( 5, "��������, �� � ��������� ���� ���� ����������� � ����� �����. ��������� 500 �������! " )

	Talk( 6, "��������, �� � ������������� ���� ���� ����������� � ����� �����. ��������� 1000 �������! " )

	Talk( 7, "�����: ��� ���� �� ��������! " )

	AddNpcMission ( 398 )
	AddNpcMission ( 565 )
	AddNpcMission	(5833)
	AddNpcMission	(5834)
end

function b_talk9()
	Talk( 1, "���� ��: �� ������ ��� �� �������� �� ��������? " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� (200 �������)", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "��������, �� � ��� ������������ ����� ��� ������� � �����! " )

	Talk( 3, "���� ��: ��� ���� �� ��������! " )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 399 )
	AddNpcMission ( 510 )
	AddNpcMission ( 511 )
	AddNpcMission ( 512 )
	AddNpcMission ( 513 )
	AddNpcMission ( 543 )
	AddNpcMission ( 544 )
    AddNpcMission ( 570 )
	AddNpcMission	(5839)
	AddNpcMission	(5840)
end

function b_talk10()
	Talk( 1, "���: � ��� �������! ����� �� ������� ����? " )
	Talk( 2, "���: ��� ���� �� ��������! " )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
	AddNpcMission	(5835)
	AddNpcMission	(5836)
end

function b_talk11()
	Talk( 1, "���: ���� ���� ���� ��������� ����? ��� �� ����? �� ��������� ��������, � ������ ��� � �����. " )

	Talk( 2, "���: ��� ���� �� ��������! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
	AddNpcMission ( 531 )
	AddNpcMission ( 532 )
	AddNpcMission ( 533 )
	AddNpcMission ( 534 )
	AddNpcMission	(5837)
	AddNpcMission	(5838)
end

function b_talk12()
	Talk( 1, "�����: �� ��������� �����? ��� ��� �������! " )

	Talk( 2, "�����: ��� ���� �� ��������! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 533 )
	AddNpcMission ( 563 )
	AddNpcMission	(5841)
	AddNpcMission	(5842)
end

function b_talk13()
	Talk( 1, "�����: �� ��������� ������? �� ��� ������!" )

	Talk( 2, "�����: ��� ���� �� ��������! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
	AddNpcMission	(5843)
	AddNpcMission	(5844)
end

function b_talk14()
	Talk( 1, "����: ��������? ����� ��������? � ����������� �������� ������ �������! �� ��������� ����!" )

	Talk( 2, "����: ��� ���� �� ��������! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
    
	AddNpcMission ( 568 )
	AddNpcMission	(5847)
	AddNpcMission	(5848)
end

function b_talk15()
	Talk( 1, "���� ����: � �� ���������� � ������� ���������. ���������� �� ����������� ���� ����... " )

	Talk( 2, "���� ����: ��� ���� �� ��������! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(5845)
	AddNpcMission	(5846)
end

function b_talk16()
	Talk( 1, "�������: ����� �� �� ������ ��� �� ���������? " )

	Talk( 2, "�������: ��� ���� �� ��������! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(5641)
	AddNpcMission	(5642)
	AddNpcMission	(5849)
	AddNpcMission	(5850)
end

function b_talk17()
	Talk( 1, "����������: ����� ������? " )
	Text( 1, "� ���� ������� �������� ", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "����������: �� ������� ������� ��������? ��� ����������� �������������� ��������! ")
	Text( 2, "��, � ���� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "���, ������� ", CloseTalk )

	Talk( 3, "����������: � ��� ��� ��������, � �� ���� ������� ��������! ")

	Talk( 4, "����������: ��� ���� �� ��������! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(6003)
	AddNpcMission	(6004)
	AddNpcMission	(6005)
	AddNpcMission	(6006)
	AddNpcMission	(6007)
	AddNpcMission	(6008)
	AddNpcMission	(6009)
	AddNpcMission	(5851)
	AddNpcMission	(5852)
end

function b_talk18()
	Talk( 1, "�����: ������ " )

	Talk( 2, "�����: ��� ���� �� ��������! " )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 515 )
	AddNpcMission ( 518 )
	AddNpcMission ( 524 )
end

function b_talk21()
	local ReSelectTalk = "� ������ �������� "
	local ReSelectPage = 1
	local CancelSelectTalk = "������! � ������� �����. "
	local CancelSelectPage = 5
	local CurMapName = "eastgoaf"
	local GoTo01X = 767
	local GoTo01Y = 602
	local GoTo01M = CurMapName
	Talk( 1, "�������� ������: ������� ���������� ���� ������ ������ ����! " )
	Text( 1, "������� � ������ ������� 2 ", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 179,1 )
	TriggerCondition( 1, HasItem, 3084,1 )
	TriggerCondition( 1, HasItem, 3085,1 )
	TriggerAction( 1, TakeItem, 179,1 )
	TriggerAction( 1, TakeItem, 3084,1 )
	TriggerAction( 1, TakeItem, 3085,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "��� ����������� � ������ ������� 2 ���������� 1 ������ �������, 1 ����� ������ ����� � 1 ������ ���������! " )
	Text( 2, "����������� ",MultiTrigger, GetMultiTrigger(), 2 )  
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 3, "�������� ������: ��� ���� �� ��������! " )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 3 )
	Talk( 4, "��������, �� � ��� ��� ���� 3 ����������� ��������! " )

	Talk( 5, "����� ���� ����� ���� ������ ����� � ������ ������! ", CloseTalk )
end

function b_talk22()
	local ReSelectTalk = "� ������ �������� "
	local ReSelectPage = 1
	local CancelSelectTalk = "������! � ������� �����. "
	local CancelSelectPage = 4
	local CurMapName = "eastgoaf"
	local GoTo01X = 847
	local GoTo01Y = 247
	local GoTo01M = CurMapName
	Talk( 1, "�������� ������: ������ ���������� ���� ������ ������ ����! " )
	Text( 1, "������� � ������ ������� 1 !", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, "�� ����� ������ �����? " )
	Text( 2, "����������� ",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 3, "�������� ������: ��� ���� �� ��������! " )
	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 3 )
	Talk( 4, "������� ���� ����� ���� ������ ����� ", CloseTalk )
end

function b_talk23()
	local CurMapName = "eastgoaf"
	local GoTo01X = 772
	local GoTo01Y = 722
	local GoTo01M = CurMapName
	InitTrigger()
	TriggerCondition( 1, HasItem, 182,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "�������� ������: ������� ���������� ���� ������ ������ ����! " )
	Text( 1, "������� � ������ ������� 3 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 4, "������ ���������. ��� ��������� ���� ������� ����� ������!" )
end

function b_talk24()
	InitTrigger()
	TriggerCondition( 1, HasItem, 182, 1 )
	TriggerAction( 1, TakeItem, 182, 1 )
	TriggerAction( 1, AddMoney, 10000000 )
	TriggerAction(1, GiveItem, 0266, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "��� ������������ ������ � ������� �� ������... " )
	Text( 1, "������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "�� ���� �������! ������� ����� ����... " )
end
--------------------------------------------------------------------------------------------------------------------
--													b_talk (�����)												  --
--------------------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------------------
--													l_talk (������)												  --
--------------------------------------------------------------------------------------------------------------------
function l_talk01()
	Talk(1, "���� ������� � � ���� ����� ����� �����, �� �� ������ ����� �����... � � �� ���� ��� ��� ������� ������. � �������� ��� �����! ")
	AddNpcMission(894)
	AddNpcMission(487)
	AddNpcMission(504)
	AddNpcMission(508)
	AddNpcMission(509)
	AddNpcMission(573)
	AddNpcMission(581)
	AddNpcMission(582)
	AddNpcMission(583)
end

function l_talk02()
	Talk(1, "����� ����� ��� ��������� ������� ���� ���� �� �� ���������! ����� ������ �� ���������, � ��� ������� ������ �� ������������. ���� ���������! ")
	AddNpcMission(895)
	AddNpcMission(896)
	AddNpcMission(482)
	AddNpcMission(485)
	AddNpcMission(486)
	AddNpcMission(574)
	AddNpcMission(575)
	AddNpcMission(584)
	AddNpcMission(585)
	AddNpcMission(586)
	AddNpcMission	(5676)
end

function l_talk03()
	Talk(1, "��������� ����! ���� �� �� �� ����� ���� ������� �����, �� � �� �� �������� � ���� ������ ������! ")
	AddNpcMission(897)
	AddNpcMission(898)
	AddNpcMission(899)
	AddNpcMission(476)
	AddNpcMission(479)
	AddNpcMission(480)
	AddNpcMission(481)
	AddNpcMission(576)
	AddNpcMission(577)
	AddNpcMission(578)
	AddNpcMission(589)
	AddNpcMission(590)
end

function l_talk04()
	Talk( 1, "��� �? ��� � ��������� �����? � ����! ...����... ")
	Text( 1, "���� ", BuyPage )
	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission(505)
	AddNpcMission(506)
	AddNpcMission(507)
	AddNpcMission(579)
	AddNpcMission(580)
	AddNpcMission(587)
	AddNpcMission(588)
	AddNpcMission(591)
	AddNpcMission	(5573)
	AddNpcMission	(5574)
	AddNpcMission	(5661)
	AddNpcMission	(5662)
	AddNpcMission( 6171 )
	AddNpcMission( 6172 )
end
--------------------------------------------------------------------------------------------------------------------
--													l_talk (�����)												  --
--------------------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------------------
--													mmm_talk (������)											  --
--------------------------------------------------------------------------------------------------------------------
function mmm_talk06()
	Talk( 1, "�����: ������� ����������� � ����? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 650,999, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � �������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "��������, �� � ���� ����� ��� ������ �����! " )
	Talk( 4, "��������, �� � ���������� ���� ���� ����������� � ����� �����! ��������� 1000 �������. " )
	Talk( 5, "��������, �� � ��������� ���� ���� ����������� � ����� �����! ��������� 200 �������. " )
	Talk( 6, "��������, �� � �������������� ���� ���� ����������� � ����� �����! ��������� 1000 �������. " )
	Talk( 7, "�����: ��� ���� �� ��������! " )
end

function mmm_talk05()
	Talk( 1, "�����: �� ������ ����������� � ��������? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 625,925, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � �������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "��������, �� � ���� ����� ��� ������ �����! " )
	Talk( 4, "��������, �� � ���������� ���� ���� ����������� � ����� �����! ��������� 1000 �������. " )
	Talk( 5, "��������, �� � ��������� ���� ���� ����������� � ����� �����! ��������� 200 �������. " )
	Talk( 6, "��������, �� � �������������� ���� ���� ����������� � ����� �����! ��������� 1000 �������. " )
	Talk( 7, "�����: ��� ���� �� ��������! " )
end

function mmm_talk07()
	Talk( 1, "����������� ������: �� ������ ����������� � ��������? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 620,628, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � �������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "��������, �� � ���� ����� ��� ������ �����! " )
	Talk( 4, "��������, �� � ���������� ���� ���� ����������� � ����� �����! ��������� 1000 �������. " )
	Talk( 5, "��������, �� � ��������� ���� ���� ����������� � ����� �����! ��������� 200 �������. " )
	Talk( 6, "��������, �� � �������������� ���� ���� ����������� � ����� �����! ��������� 1000 �������. " )
	Talk( 7, "����������� ������: ��� ���� �� ��������! " )
end

function mmm_talk08()
Talk( 1, "������������ �����: �� ������ ����������� � ��������? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 380,161, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � �������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "��������, �� � ���� ����� ��� ������ �����! " )
	Talk( 4, "��������, �� � ���������� ���� ���� ����������� � ����� �����! ��������� 1000 �������. " )
	Talk( 5, "��������, �� � ��������� ���� ���� ����������� � ����� �����! ��������� 200 �������. " )
	Talk( 6, "��������, �� � �������������� ���� ���� ����������� � ����� �����! ��������� 1000 �������. " )
	Talk( 7, "������������ �����: ��� ���� �� ��������! " )
end

function mmm_talk09()
	Talk( 1, "����������� ������: �� ������ ����������� � ��������? " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1070,212, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � �������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "��������, �� � ���� ����� ��� ������ �����! " )
	Talk( 4, "��������, �� � ���������� ���� ���� ����������� � ����� �����! ��������� 1000 �������. " )
	Talk( 5, "��������, �� � ��������� ���� ���� ����������� � ����� �����! ��������� 200 �������. " )
	Talk( 6, "��������, �� � �������������� ���� ���� ����������� � ����� �����! ��������� 1000 �������. " )
	Talk( 7, "����������� ������: ��� ���� �� ��������! " )
end

function mmm_talk10()
	Talk( 1, "����: ������������! � ������� ����������. ���� � ��� �� ������? " )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ��������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ��������� ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "����: �������, �� � ��� ��� ����� � ���� �����! " )
end

function mmm_talk11()
	local CurMapName = "jialebi" 
	local GoTo01X = 190
	local GoTo01Y = 815
	local GoTo01M = CurMapName
	InitTrigger()
	TriggerCondition( 1, HasItem, 2438,20 )
	TriggerCondition( 1, HasItem, 2419,15 )
	TriggerCondition( 1, HasItem, 2386,15 )
	TriggerAction( 1, TakeItem, 2438,20 )
	TriggerAction( 1, TakeItem, 2419,15 )
	TriggerAction( 1, TakeItem, 2386,15 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "���������� ��������: �� ������ ����� � �������? ������ ������ �������� ��� 20 ������� �����, 15 ��������� ������ � 20 ��� ������. " )
	Text( 1, "����� � ������� 1 ", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 4, "������������� ��� �������� ��� ��������! " )
	AddNpcMission	(5593)
	AddNpcMission	(5594)
end

function mmm_talk12()
	local CurMapName = "jialebi" 
	local GoTo01X = 1604
	local GoTo01Y = 906
	local GoTo01M = CurMapName
	Talk( 1, "�������� ����������: � ��������� ������. �� ������ ������ ����� ����, ����� ������� �� ������! ��� ������ ����������� ��� � ����������� �� ����� �����. ������ ����� - ���� �������! " )
	Text( 1, "� ������ ����� ��! ", JumpPage, 2 )
	Text( 1, "� ������� ��������������� ������ ", JumpPage, 3 )
	Text( 1, "� ������ � ��� ���� ����� ��������? ", JumpPage, 7 )
	InitTrigger()
	TriggerCondition( 1, HasItem, 2488,1 )
	TriggerCondition( 1, HasItem, 2489,1 )
	TriggerCondition( 1, HasItem, 2490,1 )
	TriggerCondition( 1, HasItem, 2436,1 )
	TriggerAction( 1, TakeItem, 2488,1 )
	TriggerAction( 1, TakeItem, 2489,1 )
	TriggerAction( 1, TakeItem, 2490,1 )
	TriggerAction( 1, TakeItem, 2436,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "�������� ����������: ������ ����� �� ������? ����� �� ������ ������� 1 ����� �����, 1 ���� �������� �������, 1 ������ ������� � 1 ������ ������! " )
	Text( 2, "� ���� ����� �� ������! ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasItem, 0938,1 )
	TriggerAction( 1, TakeItem, 0938,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "�������� ����������: � ��� ���� ��������������� ������? ����� �� ���� ��� �����������! " )
	Text( 3, "� ���� ����� �� ������! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "������ � ��������������� ������ ", JumpPage, 6 )

	Talk( 4, "����������� ��� �������� ��� ������ ��������! " )

	Talk( 5, "� ���� ��� ��������������� ������! " )

	Talk( 6, "������� ���� ��������� ��������������� �� �����, ����� ������ ����� ����� �� ������!" )
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 2386, 10 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, TakeItem, 2386, 10 )
	TriggerAction( 1, GiveItem, 0271, 1, 4 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 7, "�������� ����������: ���������� ����� - ��������� ����������� �������. �� �������� ��� � ����� �� 10 ��� ������ � 5 ��� ����. " )
	Text( 7, "�������� ���������� ����� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "����������� ��� �������� ��� ������ ��������! " )
	AddNpcMission	(5595)
	AddNpcMission	(5596)
	AddNpcMission ( 6056 )
	AddNpcMission ( 6057 )
	AddNpcMission ( 6058 )
	AddNpcMission ( 6059 )
	AddNpcMission ( 6060 )
	AddNpcMission	(5726)
	AddNpcMission	(5727)
end

function mmm_talk13()
	Talk( 1, "����������� ������������� A: � ���� ���� ��� ��� ��� ���. ������� ���������?" )
	Text( 1, "�������� ���� �� ������������� ������", JumpPage, 2)

	Talk( 2, "����������� ������������� A: ��� ������������� ���� ��� �� �������� ��� ����� ������!" )
	Text( 2, "�������� ������������ ������ (���� �������)", JumpPage, 3)
	Text( 2, "�������� ������������ �������� (���� �������)", JumpPage, 4)
	Text( 2, "�������� ������������ ������ (���� �������)", JumpPage, 5)
	Text( 2, "�������� ������ (���� �������)", JumpPage, 6)

	Talk( 3, "����������� ������������� A: ����� �������� ������������ ������ ����������: 1 ������ ����� ������, 30 �������� �������, 20 ��� ���������, 10 ��������� ����� � 100000 ������ ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2467, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2467, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0396, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "�������� ������������ ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "����������� ������������� A: ����� �������� ������������ �������� ����������: 1 ���������� ������, 30 �������� �������, 20 ������� ��������, 10 ������ �������� ����� � 50000 ������ ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2473, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2473, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0588, 1 , 4)
	TriggerFailure( 1, JumpPage, 7)
	Text( 4, "�������� ������������ ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "����������� ������������� A: ����� �������� ������������ ������ ����������: 1 ����-������ �������, 30 �������� �������, 20 ������� ����, 10 �������� � 50000 ������ ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0748, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "�������� ������������ ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "����������� ������������� A: ����� �������� ������ ����������: 1 ������������ ������ ������, 30 ���������� �����, 20 ������������, 10 ��������� ������ � 100000 ������ ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2463, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2463, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0114, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "�������� ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "����������� ������������� A: ������, �� �� ������ ������ � ���� ��� ����������� ��������� ����� ��������� ����� ")
end

function mmm_talk14()
	Talk( 1, "����������� ������������� B: � ���� ���� ��� ��� ��� ���. ������� ���������?" )
	Text( 1, "�������� ���� �� ������������ ������ ", JumpPage, 2)

	Talk( 2, "����������� ������������� �: ��� ������������� ���� ��� �� �������� ��� ����� ������!" )
	Text( 2, "�������� ����������� ������ (������ �������)", JumpPage, 3)
	Text( 2, "�������� �������� ������ (������ �������)", JumpPage, 4)
	Text( 2, "�������� ������ ������ (������ �������)", JumpPage, 5)
	Text( 2, "�������� ������ (������ �������)", JumpPage, 6)

	Talk( 3, "����������� ������������� B: ����� �������� ����������� ������ ����������: 1 ���������� �������� ������, 30 ��������� ������, 20 ��� ���������, 10 ��������� ������ � 100000 ������ ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0398, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "�������� ����������� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "����������� ������������� B: ����� �������� �������� ������ ����������: 1 �������� ������ ������, 30 ��������� ������, 20 ������� ��������, 10 ������ �������� ����� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0604, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "�������� �������� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "����������� ������������� B: ����� �������� ������ ������ ����������: 1 �������� ������ ������, 30 ��������� ������, 20 ������ ����, 10 �������� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2484, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2484, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0830, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "�������� ������ ������ ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "����������� ������������� B: ����� �������� ������ ����������: 1 ������ �������� ������, 30 ���������� �����, 20 ������������, 10 ��������� ������ � 100000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2464, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2464, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0116, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "�������� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "����������� ������������� B: ������, �� �� ������ ������ � ���� ��� ����������� ��������� ����� ��������� ����� ")
end

function mmm_talk15()
	Talk( 1, "����������� ������������� C: � ���� ���� ��� ��� ��� ���. ������� ���������?" )
	Text( 1, "�������� ����� ���������� �������� ", JumpPage, 2)
	Text( 1, "�������� ����� ������ ", JumpPage, 9)

	Talk( 2, "����������� ������������� C: ��� ������������� ���� ��� �� �������� ��� ����� ������!" )
	Text( 2, "�������� ������ ���������� �������� (��� ���������� �����)", JumpPage, 3)
	Text( 2, "�������� �������� ���������� �������� (��� ���������� �����)", JumpPage, 4)
	Text( 2, "�������� ������ ���������� �������� (��� ���������� �����)", JumpPage, 5)
	Text( 2, "�������� ���� ���������� �������� (��� ���������� �����)", JumpPage, 6)
	Text( 2, "�������� ������������ ���� (��� ���������� �����)", JumpPage, 7)

	Talk(3,"����������� ������������� C: ����� �������� ������ ���������� �������� ����������: 1 ������� ������ �����, 30 �������� �������, 20 ��� ���������, 10 ��������� ����� � 100000 ������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0413, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "�������� ������ ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "����������� ������������� C: ����� �������� �������� ���������� �������� ����������: 1 ������ ������ �����, 30 �������� �������, 20 ������� ��������, 10 ����� �������� ����� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2477, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2477, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0602, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "�������� �������� ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "����������� ������������� C: ����� �������� ������ ���������� �������� ����������: 1 ������ ������ �������, 30 �������� ��������, 20 ������� ����, 10 �������� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2483, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2483, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0824, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "�������� ������ ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "����������� ������������� C: ����� �������� ���� ���������� �������� ����������: 1 ������������� ������ ������, 30 �������� ��������, 20 ����������� �������, 10 ���������� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2487, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2487, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 2223, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "�������� ���� ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "����������� ������������� C: ����� �������� ������������ ���� ����������: 1 ������� ������ ������, 30 ���������� �����, 20 ������������, 10 ��������� ������ � 100000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2466, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2466, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0151, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "�������� ������������ ����", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "����������� ������������� C: ������, �� �� ������ ������ � ���� ��� ����������� ��������� ����� ��������� ����� ")

	Talk( 9, "����������� ������������� C: ��� ������������� ���� ��� �� �������� ��� ����� ������!" )
	Text( 9, "�������� ������ ������ (����, ������ ���������� �����)", JumpPage, 10)
	Text( 9, "�������� �������� ������ (����, ������ ���������� �����)", JumpPage, 11)
	Text( 9, "�������� ������� ������ (����, ������ ���������� �����)", JumpPage, 12)
	Text( 9, "�������� ������������ ���� (����, ������ ���������� �����)", JumpPage, 7)

	Talk( 10, "����������� ������������� C: ����� �������� ������ ������ ����������: 1 ������� ������ �����, 30 ���������� �����, 20 ��� ���������, 10 ����� �������� ����� � 100000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0411, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "�������� ������ ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "����������� ������������� C: ����� �������� �������� ������ ����������: 1 ������ �����, 30 ���������� ������, 20 ������������, 10 ����� �������� ����� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0600, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "�������� �������� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "����������� ������������� C: ����� �������� ������� ������ ����������: 1 ����-������ �������, 30 ���������� �����, 20 ����������� �������, 10 ����� �������� ����� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0760, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "�������� ������� ������ ", MultiTrigger, GetMultiTrigger(), 1)
end

function mmm_talk26()
	Talk( 1, "����������� ������������� D: � ���� ���� ��� ��� ��� ���. ������� ���������?" )
	Text( 1, "�������� ����� ������ ��� ", JumpPage, 2)
	Text( 1, "�������� ����� ��� ", JumpPage, 9)

	Talk( 2, "����������� ������������� D: ��� ������������� ���� ��� �� �������� ��� ����� ������ ���!" )
	Text( 2, "�������� ������ ������ ��� (��� ��������)", JumpPage, 3)
	Text( 2, "�������� �������� ������ ��� (��� ��������)", JumpPage, 4)
	Text( 2, "�������� ������� ������ ��� (��� ��������)", JumpPage, 5)
	Text( 2, "�������� ������� ������ ��� (��� ��������)", JumpPage, 6)
	Text( 2, "�������� ����� �������� (��� ��������)", JumpPage, 7)

	Talk( 3, "����������� ������������� D: ����� �������� ������ ������ ��� ����������: 1 ��������� ���-������, 30 �������� ������������ �����, 20 ��� ���������, 10 ��������� ������ � 100000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2471, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2471, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0408, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "�������� ������ ������ ��� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "����������� ������������� D: ����� �������� �������� ������ ��� ����������: 1 ������ ������ ������, 30 �������� ������������ �����, 20 ������� ��������, 10 ����� �������� ����� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0598, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "�������� �������� ������ ��� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "����������� ������������� D: ����� �������� ������� ������ ��� ����������: 1 ��������� ������ ������, 30 �������� ������������ �����, 20 ������� ����, 10 �������� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0758, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "�������� ������� ������ ��� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "����������� ������������� D: ����� �������� ������� ������ ��� ����������: 1 ��������� �������� ������, 30 �������� ������������ �����, 20 ����������� �������, 10 ���������� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2486, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2486, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 2221, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "�������� ������� ������ ��� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "����������� ������������� D: ����� �������� ����� �������� ����������: 1 ������������ ��������, 30 ���������� �����, 20 ������������, 10 ��������� ������ � 100000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2461, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2461, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0110, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "�������� ����� �������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "����������� ������������� D: ������, �� �� ������ ������ � ���� ��� ����������� ��������� ����� ��������� ����� ")

	Talk( 9, "����������� ������������� D: ��� ������������� ���� ��� �� �������� ��� ����� ���!" )
	Text( 9, "�������� ����� ��� (������ ��������)", JumpPage, 10)
	Text( 9, "�������� ��������� �������� (������ ��������)", JumpPage, 11)
	Text( 9, "�������� �������� ��� (������ ��������)", JumpPage, 12)
	Text( 9, "�������� ����� �������� (������ ��������)", JumpPage, 7)

	Talk(10,"����������� ������������� D: ����� �������� ����� ��� ����������: 1 ���������� �������� ������, 30 �������� ������������ �����, 20 ����������� �������, 10 �������� � 100000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0406, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "�������� �������� ����� ��� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "����������� ������������� D: ����� �������� ��������� �������� ����������: 1 ������ ������ ������, 30 ���������� �����, 20 ��� ���������, 10 ��������� ������ � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0596, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "�������� ��������� �������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "����������� ������������� D: ����� �������� �������� ��� ����������: 1 ������� ������ ������, 30 �������� ������������ �����, 20 ����������� �������, 10 �������� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0756, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "�������� �������� ��� ", MultiTrigger, GetMultiTrigger(), 1)
end

function mmm_talk27()
	Talk( 1, "����������� ������������� E: � ���� ���� ��� ��� ��� ���. ������� ���������?" )
	Text( 1, "�������� ����� ���������� ����� ", JumpPage, 2)
	Text( 1, "�������� ����� ������� ", JumpPage, 9)

	Talk( 2, "����������� ������������� E: ��� ������������� ���� ��� �� �������� ��� ����� ���������� �����!" )
	Text( 2, "�������� ������ ���������� ����� (��� ��������)", JumpPage, 3)
	Text( 2, "�������� �������� ���������� ����� (��� ��������)", JumpPage, 4)
	Text( 2, "�������� ������� ���������� ����� (��� ��������)", JumpPage, 5)
	Text( 2, "�������� ����������� ������� �����  (��� ��������)", JumpPage, 6)
	Text( 2, "�������� ��������� ����� (��� ��������)", JumpPage, 7)

	Talk( 3, "����������� ������������� E: ����� �������� ������ ���������� ����� ����������: 1 ������ ������, 30 ���������� ������, 20 ��� ���������, 10 ��������� ������ � 100000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0404, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "�������� ������ ���������� ����� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "����������� ������������� E: ����� �������� �������� ���������� ����� ����������: 1 ������ ����, 30 ���������� ������, 20 ������� ��������, 10 ����� �������� ����� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2475, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2475, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0594, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "�������� �������� ���������� ����� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "����������� ������������� E: ����� �������� ������� ���������� ����� ����������: 1 �������� ��������� �����, 30 ���������� ������, 20 ������� ����, 10 �������� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2481, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2481, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0754, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "�������� ������� ���������� ����� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "����������� ������������� E: ����� �������� ����������� ������� ����� ����������: 1 �������� ����-������, 30 ���������� ������, 20 ����������� �������, 10 ���������� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2485, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2485, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2219, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "�������� ����������� ������� ����� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "����������� ������������� E: ����� �������� ��������� ����� ����������: 1 �������� ������ ������, 30 ���������� �����, 20 ������������, 10 ��������� ������ � 100000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2462, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2462, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0112, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "�������� ��������� ����� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "����������� ������������� E: ������, �� �� ������ ������ � ���� ��� ����������� ��������� ����� ��������� ����� ")

	Talk( 9, "����������� ������������� E: ��� ������������� ���� ��� �� �������� ��� ����� �������!" )
	Text( 9, "�������� ���� ������� (������ ��������)", JumpPage, 10)
	Text( 9, "�������� �������� ������� (������ ��������)", JumpPage, 11)
	Text( 9, "�������� ������ ������� (������ ��������)", JumpPage, 12)
	Text( 9, "�������� ��������� ����� (������ ��������)", JumpPage, 7)

	Talk( 10, "����������� ������������� E: ����� �������� ���� ������� ����������: 1 ������ ������, 30 ���������� ������, 20 ������� ��������, 10 ��������� ������ � 100000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0402, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "�������� ���� ������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "����������� ������������� E: ����� �������� �������� ������� ����������: 1 �������� ������ ������, 30 �������� ������������ �����, 20 ������������, 10 �������� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0592, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "�������� �������� ������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "����������� ������������� E: ����� �������� ������ ������� ����������: 1 ��������� ������ ������, 30 ���������� �����, 20 ��� ���������, 10 ��������� ������ � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0752, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "�������� ������ ������� ", MultiTrigger, GetMultiTrigger(), 1)
end

function mmm_talk28()
	Talk( 1, "����������� ������������� F: � ���� ���� ��� ��� ��� ���. ������� ���������?" )
	Text( 1, "�������� ����� �������� ", JumpPage, 2)

	Talk( 2, "����������� ������������� F: ��� ������������� ���� ��� �� �������� ��� ����� ��������!" )
	Text( 2, "�������� ������ �������� (����, ������ �������)", JumpPage, 3)
	Text( 2, "�������� �������� �������� (����, ������ �������)", JumpPage, 4)
	Text( 2, "�������� ������ �������� (����, ������ �������)", JumpPage, 5)
	Text( 2, "�������� ������� (����, ������ �������)", JumpPage, 6)

	Talk(3,"����������� ������������� F: ����� �������� ������ �������� ����������: 1 �������� ������ �����, 30 ����������� ���������, 20 ��� ���������, 10 ��������� ������ � 100000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2469, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2469, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0400, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "�������� ������ �������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "����������� ������������� F: ����� �������� �������� �������� ����������: 1 ������ �����, 30 ����������� ���������, 20 ������� ��������, 10 ����� �������� ����� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0590, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "�������� �������� �������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "����������� ������������� F: ����� �������� ������ �������� ����������: 1 ������� ������ ������, 30 ����������� ���������, 20 ������� ����, 10 �������� � 50000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 0750, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "�������� ������ �������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "����������� ������������� F: ����� �������� ������� ����������: 1 ��������� ������ ���, 30 ���������� �����, 20 ������������, 10 ��������� ������ � 100000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2465, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2465, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 0118, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "�������� ������� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"����������� ������������� F: ������, �� �� ������ ������ � ���� ��� ����������� ��������� ����� ��������� ����� ")
end

function mmm_talk16()
	local CurMapName = "jialebi"
	local GoTo01X = 1250
	local GoTo01Y = 1010
	local GoTo01M = CurMapName
	Talk( 1, "���������� �� ����: ������ ������, ��� ��������� �����? ������� ��� 5000 ������� � � ��� ���� ������!" )
	Text( 1, "���! ����� ���� ������.", JumpPage, 2 )
	Text( 1, "� �� ����� ���� �������!", JumpPage, 3 )
	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "���������� �� ����: ������ ����� � ��� ������� ���. ���������� �� �� �����, ����� �����?" )
	Text( 2, "�����������.", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "���������� �� ����: ���� �����!" )
	Talk( 4, "���������� �� ����: � ��� ������������ ������.", CloseTalk)
end

function mmm_talk17()
	local CurMapName = "jialebi"
	local GoTo01X = 968
	local GoTo01Y = 828
	local GoTo01M = CurMapName
	Talk( 1, "��������� ������������ A: ������ ������, ��� ��� ������? ������� ��� 5000 ������� � � ��� ���� ������!" )
	Text( 1, "���! ����� ���� ������.", JumpPage, 2 )
	Text( 1, "������! � �� ����� �������.", JumpPage, 3 )
	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "��������� ������������ A: ������ ����� � ��� ������� ���. ���������� �� �� �����, ����� �����?" )
	Text( 2, "����������� ������� �! ", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "��������� ������������ A: ���� �����!" )
	Talk( 4, "��������� ������������ A: � ��� ������������ ������.", CloseTalk)
end

function mmm_talk18()
	local CurMapName = "jialebi"
	local GoTo01X = 968
	local GoTo01Y = 906
	local GoTo01M = CurMapName
	Talk( 1, "��������� ������������ B: �� ������ �����, ��� ��� ������? ��������� ��� 20 ��� ������ � � ������� ���." )
	Text( 1, "��� ������.", JumpPage, 2 )
	Text( 1, "������ �� ����! � �� ���� ����.", JumpPage, 3 )
	InitTrigger()
	TriggerCondition( 1, HasItem, 2386, 20 )
	TriggerAction( 1, TakeItem, 2386, 20 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "��������� ������������ B: ���� ���� ����� � ��������� ������� ���. �� ��� ��� ������ �����?" )
	Text( 2, "����������� ������� �!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "��������� ������������ B: ���� ������ ����!" )
	Talk( 4, "��������� ������������ B: � ���� ��� 20 ��� ������.", CloseTalk)
end

function mmm_talk19()
	local CurMapName = "jialebi"
	local GoTo01X = 968
	local GoTo01Y = 993
	local GoTo01M = CurMapName
	Talk( 1, "��������� ������������ C: ������ ������, ��� ��� ������? ��������� ��� 5000 ������� � � ������� ��� ������." )
	Text( 1, "��� ������.", JumpPage, 2 )
	Text( 1, "������ �� ����! � ��������� ����.", JumpPage, 3 )
	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "��������� ������������ C: ���� ���� ����� � ������� �." )
	Text( 2, "����������� ������� �.", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "��������� ������������ C: ���� �����!" )
	Talk( 4, "��������� ������������ C: ��� �� ������� ������.", CloseTalk)
end

function mmm_talk20()
	local CurMapName = "jialebi"
	local GoTo01X = 1076
	local GoTo01Y = 869
	local GoTo01M = CurMapName
	Talk( 1, "��� ������: ������ �����, ��� ��� ������?" )
	Text( 1, "��� ��� ���������?", JumpPage, 2 )
	Text( 1, "�� ���� �����.", JumpPage, 3 )
	InitTrigger()
	TriggerCondition(1,HasItem , 2408,1)
	TriggerCondition(1,HasItem , 2409,1)
	TriggerCondition(1,HasItem , 2410,1)
	TriggerCondition(1,HasItem , 2411,1)
	TriggerCondition(1,HasItem , 2412,1)
	TriggerAction(1,TakeItem,2408,1)
	TriggerAction(1,TakeItem,2409,1)
	TriggerAction(1,TakeItem,2410,1)
	TriggerAction(1,TakeItem,2411,1)
	TriggerAction(1,TakeItem,2412,1)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "��� ������: ������ ��������� ��� ������� ���, ����� ���� ������, �������� ������ �������� �������: AB, BC, CD, DE, EF." )
	Text( 2, "���������� � ������������.", MultiTrigger, GetMultiTrigger(), 1 )
	Talk( 3, "��� ������: ......����!" )
	Talk( 4, "��� ������: �� �� ������ ������ ������.", CloseTalk)
end

function mmm_talk22()
	local CurMapName = "jialebi"
	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName
	Talk( 1, "������ ����� ��� ���? ��������� ��� 500G � � ��� �������� ����. " )
	Text( 1, "���� � ������� 2! ", JumpPage, 2 )
	Text( 1, "������! � ���� ���� �����... ", JumpPage, 3 )
	Text( 1, "� ������, ��� ����� � ��� ���� ������� ���� ", JumpPage, 5 )


	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "�������� � ������� 2?" )
	Text( 2, "��!", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 3, "����� �����! " )
	Talk( 4, "��� �����! " ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0267, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "������! �� � ���� ���� ���������� ����, �� �� ������ �������� 1 ���� ���� ����� � ���� �� ������� " )
	Text( 5, "�������� ����������� ����. ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "��������� �����, ����� � ��� �������� ������ ����. " )
end

function mmm_talk23()
	local CurMapName = "jialebi"
	local GoTo01X = 199
	local GoTo01Y = 824
	local GoTo01M = CurMapName
	local GoTo02X = 70
	local GoTo02Y = 952
	local GoTo02M = CurMapName
	Talk( 1, "������ ����� ��� ���? ��������� ��� 500G � � ��� �������� ����. " )
	Text( 1, "� ������� 1 ", JumpPage, 2 )
	Text( 1, "� ������� 3 ", JumpPage, 3 )
	Text( 1, "� ������, ��� � ��� ���� ������� ���� ����� ", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "�� ������ ������� � ������� 1? " )
	Text( 2, "��! ", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "�� ����� ������ � ������� 3?" )
	Text( 3, "��!", MultiTrigger, GetMultiTrigger(),2 )
	
	Talk( 4, "� ��� ���� ������! " ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0268, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "������! �� � ���� ���� ���������� ����, �� �� ������ �������� 1 ���� ���� ����� � ���� �� ������� " )
	Text( 5, "�������� ���� ����� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "��������� �����, ����� � ��� �������� ������ ����. " )
end

function mmm_talk24()
	local CurMapName = "jialebi"
	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName
	local GoTo02X = 209
	local GoTo02Y = 955
	local GoTo02M = CurMapName
	Talk( 1, "������ ����� ��� ���? ��������� ��� 500G � � ��� �������� ����. " )
	Text( 1, "� ������� 2 ", JumpPage, 2 )
	Text( 1, "� ������� 4 ", JumpPage, 3 )
	Text( 1, "� ������, ��� � ��� ���� ������� ���� ����� ", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "�� ����� ������ ����������� � ������� 2?" )
	Text( 2, "��! ", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "�� ����� ������ ����������� � ������� 4?" )
	Text( 3, "�� ", MultiTrigger, GetMultiTrigger(), 2 )
	
	Talk( 4, "� ��� ���� ������ " ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0269, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "������! �� � ���� ���� ���������� ����, �� �� ������ �������� 1 ���� ���� ����� � ���� �� ������� " )
	Text( 5, "�������� ���� ����� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "��������� �����, ����� � ��� �������� ������ ����. " )
end

function mmm_talk25()
	local CurMapName = "jialebi"

	local GoTo01X = 70
	local GoTo01Y = 952
	local GoTo01M = CurMapName

	local GoTo02X = 690
	local GoTo02Y = 1043
	local GoTo02M = CurMapName

	Talk( 1, "������ ����� ��� ���? ��������� ��� 500G � � ��� �������� ����. " )
	Text( 1, "���� � ������� 3 ", JumpPage, 2 )
	Text( 1, "� ���� �������� ��� ������ ����� ", JumpPage, 3 )
	Text( 1, "� ������, ��� � ��� ���� ������� ���� ����� ", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "����������� � ������� 3?" )
	Text( 2, "��!", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "�� ������ ���� ������??" )
	Text( 3, "��! ��������� ����! ", MultiTrigger, GetMultiTrigger(), 2 )
	
	Talk( 4, "� ��� �� ������� ������ " ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0270, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "������! �� � ���� ���� ���������� ����, �� �� ������ �������� 1 ���� ���� ����� � ���� �� ������� " )
	Text( 5, "�������� ���� ������ ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "��������� �����, ����� � ��� �������� ������ ����. " )
end

function mmm_talk29()
	local ReSelectTalk = "��� ����� �������� "
	local ReSelectPage = 1

	local CancelSelectTalk = "� ������� ����� "
	local CancelSelectPage = 7

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	Talk( 1, "�� ������ ����� �� ����������� ���� �������� ������?" )
	Text( 1, "� ������", JumpPage, 2 )
	Text( 1, "� ������!", JumpPage, 3 )
	Text( 1, "� ������!", JumpPage, 4 )
	Text( 1, "�������� ����� ����������� ", JumpPage, 5 )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 2, "����������� ��� � ������? ��� �������! ���������� ��������� 500G." )
	Text( 2, "����������� ",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 3, "� ����� ������! ���������� ��������� 500G" )
	Text( 3, "����������� ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 4, "����������� � ������? ��� �������! ���������� ��������� 500G." )
	Text( 4, "����������� ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 6, "������, �� � ���� �� ������� ������ ��� �����������." )

	Talk( 7, "��������� ��������� �� ��� ���� �������� ���� ������ ", CloseTalk )
	Talk( 8, "��� ���� �� ��������! " )

	InitTrigger()
	TriggerAction( 1, JumpPage, 1 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )
end

function mmm_talk30()
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1	

	Talk( 1, "������: ������ �������� �� ���� �������? ������ �� ��������� ���� ��������, �� ���� � ����, � �� ������ ���. " )
	Text( 1, "� ����� ", JumpPage, 2 )
	Text( 1, "� �� ���� �������� �� ��� ������� ������� ", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1322 )
	TriggerAction ( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 1, "������ ������", MultiTrigger, GetMultiTrigger() ,1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 631, 927, "jialebi" )
	Text( 1, "������� ���� ���������� �� ������ �������� ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "������: ������ ����� �������� �� ���� ������� � ����������� �� ������ ���������. ���������� �������� ��� �������. �������, � �� ������ ���. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerCondition( 1, LvCheck, ">", 14 )
	TriggerAction ( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 16 )
	
	Text( 2, "��� ������� 15-40",MultiTrigger, GetMultiTrigger() ,1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 40 )
	TriggerCondition( 1, LvCheck, "<", 61 )
	TriggerAction ( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 16 )

	Text( 2, "��� ������� 41-60",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 60 )
	TriggerAction ( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 16 )
	Text( 2, "��� ������� ������ 60",MultiTrigger, GetMultiTrigger(), 1)


	Talk( 4, "������: ������, �� ���������� �������. � ���� �������� ���� ���� ����� � ������ ��� ����. ���� �� ������ ��������� ��� ���� ����� ���, �� ������ �������� �������. " )
	Text( 4, "�������� ���� ����� �� ������ ", JumpPage, 7 )
	Text( 4, "�������� ���� ����� �� ���� ", JumpPage, 8 )
	Text( 4, "��������� ��� ����� ������ ", JumpPage, 9 )


	Talk( 5, "������: ������, �� ���������� �������. � ���� �������� ���� ���� ����� � ������ ��� ����. ���� �� ������ ��������� ��� ���� ����� ���, �� ������ �������� �������. " )
	Text( 5, "�������� ���� ����� �� ������", JumpPage, 10 )
	Text( 5, "�������� ���� ����� �� ����", JumpPage, 11 )
	Text( 5, "��������� ��� ����� ������", JumpPage, 12 )

	Talk( 6, "������: ������, �� ���������� �������. � ���� �������� ���� ���� ����� � ������ ��� ����. ���� �� ������ ��������� ��� ���� ����� ���, �� ������ �������� �������. " )
	Text( 6, "�������� ���� ����� �� ������", JumpPage, 13 )
	Text( 6, "�������� ���� ����� �� ����", JumpPage, 14 )
	Text( 6, "��������� ��� ����� ������", JumpPage, 15 )

		InitFuncList()
	AddFuncList( CreditExchange,0 )
	Talk( 7, "������: �� ������ �������� ��� ���� ����� �� ������? ��� ���� ����������� ���� ����� ��������." )
	Text( 7, "�������� ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 7,"��������� ��� ��� �������� ",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,3 )
	Talk( 8, "������: �� ������ �������� ��� ���� ����� �� ����? ��� ���� ����������� ���� ����� ��������." )
	Text( 8, "�������� ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 8,"��������� ��� ��� �������� ",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 6 )
	Talk( 9, "������: �� ������ ��������� ��� ����� ������? ��� ���� ����������� ���� ����� ��������, � �� ������ ���� ������ �� �������� ������." )
	Text( 9, "�������� ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 9,"��������� ��� ��� �������� ",JumpPage , 4 )


	InitFuncList()
	AddFuncList( CreditExchange,1 )
	Talk( 10, "������: �� ������ �������� ��� ���� ����� �� ������? ��� ���� ����������� ���� ����� ��������." )
	Text( 10, "�������� ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 10,"��������� ��� ��� �������� ",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,4 )
	Talk( 11, "������: �� ������ �������� ��� ���� ����� �� ����? ��� ���� ����������� ���� ����� ��������." )
	Text( 11, "�������� ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 11,"��������� ��� ��� �������� ",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 7 )
	Talk( 12, "������: �� ������ ��������� ��� ����� ������? ��� ���� ����������� ���� ����� ��������, � �� ������ ���� ������ �� �������� ������." )
	Text( 12, "�������� ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 12,"��������� ��� ��� �������� ",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,2 )
	Talk( 13, "������: �� ������ �������� ��� ���� ����� �� ������? ��� ���� ����������� ���� ����� ��������." )
	Text( 13, "�������� ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 13,"��������� ��� ��� �������� ",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,5 )
	Talk( 14, "������: �� ������ �������� ��� ���� ����� �� ����? ��� ���� ����������� ���� ����� ��������." )
	Text( 14, "�������� ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 14,"��������� ��� ��� �������� ",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 8 )
	Talk( 15, "������: �� ������ ��������� ��� ����� ������? ��� ���� ����������� ���� ����� ��������, � �� ������ ���� ������ �� �������� ������." )
	Text( 15, "�������� ", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 15,"��������� ��� ��� �������� ",JumpPage , 4 )

	Talk( 16, "������: � ����, ��� ���� ������ ���. �� ������� ���� ��������. � ��� ���� ��� ���� ����, �� ������� ����." )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Text( 16, "� ������ ������ ������", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 16, "����������, �������� ��� ����������",JumpPage , 2 )

	Talk( 25, "������: ������ �� ������ �������� �� ��������� ������� ��� ���������. ������ ���� �� �������� ��������� �� ��� �������, �� �������� ���������.")
	Text( 25, "��, � ���� ������ ������.", JumpPage, 27)
	Text( 25, "���, ��� ����� �����.", CloseTalk )
	
	Talk( 26, "������: ���� �� �� �������� ���������� ������� ��� ���� ��������� �����, � �� ����� ������ ���� ������ ��������.")
	Text( 26, "������� ", CloseTalk )
	
	Talk( 27, "������: � ����� ������ ����������� ����������� ���� 2008?")
	Text( 27, "����� ", JumpPage, 28)
	Text( 27, "����� ", JumpPage, 29)
	Text( 27, "������ ", JumpPage, 28)
	Text( 27, "������ ", JumpPage, 28)
	
	Talk( 28, "������: ������, �� ������. �����������, ����� ������� ���������� �����.")
	Text( 28, "������� ", CloseTalk )
	
	Talk( 29, "������: ����� �������� �������� ����-������������ �������-������? ")
	Text( 29, "���� 2007 ���� ", JumpPage, 28)
	Text( 29, "������ 2007 ���� ", JumpPage, 28)
	Text( 29, "������ 2006 ���� ", JumpPage, 28)
	Text( 29, "������ 2007 ���� ", JumpPage, 30)
	Text( 29, "������ 2008 ���� ", JumpPage, 28)
	
	Talk( 30, "������: ��� ������������� ���� ����������� �����? ")
	Text( 30, "��� ������������� ���� ���� ������� ", JumpPage, 28)
	Text( 30, "��� ������������� ���� ����������� ������������ ", JumpPage, 28)
	Text( 30, "��� ������������� �������� ���� ����������� ", JumpPage, 31)
	Text( 30, "��� ������������� �������� ���� ������� ", JumpPage, 28)
	
	Talk( 31, "������: ������� ����� ��������� � ����� �������� �����? ")
	Text( 31, "1 ", JumpPage, 28)
	Text( 31, "2 ", JumpPage, 32)
	Text( 31, "3 ", JumpPage, 28)
	Text( 31, "4 ", JumpPage, 28)
		
	Talk( 32, "�� �������� ���������. ������� ������ ��������, ������ ��������, ������ ����������, ������� ������ � ��������� ����� ������� �����. ")
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1322 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, ClearRecord, 1322 )
	TriggerAction( 1, GiveItem, 5801, 1, 4 )
	TriggerAction( 1, SetRecord, 1323 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 32, "������, � ��� �����. ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 32, "������� ", CloseTalk )
	AddNpcMission(6000)
end
--------------------------------------------------------------------------------------------------------------------
--													mmm_talk (�����)											  --
--------------------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------------------
--													dydz_talk (������)											  --
--------------------------------------------------------------------------------------------------------------------
function dydz_talk()
	Talk( 1, "������� ��������: ���� �� �������� ����� ������, �� ���������� ��������� �� ����. " )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 40,74, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � �������� ", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������� ����� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ ����� ", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "��������� ����� ��������: ��� �� �������? � ��� ��� �����, �� ������� ����� ������������ � ��������. � ������ ����������, ���� ��� ������ ���� �����!" )
	
	Talk( 4, "��������� ����� ��������: �� �������, ��� ���� ����� ����� �������������� ��������� �����. ������������ ���� ����� � ������������� �������� 1000 �������." )
	
	Talk( 5, "��������� ����� ��������: �� �������, ��� ���� ����� ����� ���������� ��������� �����. ������������ ���� ����� � ������������� �������� 200 �������." )
	
	Talk( 6, "��������� ����� ��������: ��������, �� � �������������� ���� ���� ����������� � ����� �����! ��������� 1000 �������." )
	
	Talk( 7, "��������� ����� ��������: ��� ���� �� ��������! " )
end

function dysr_talk ()
	Talk( 1, "����� ��������: �� ������� ��������� �����, ����� - ������. � �����, ����� ������ ��� ������� ������, � ���� ���������� ����� ������. ��-��!" )
	Text( 1, "���� ", BuyPage)
	Text( 1, "������ ", OpenRepair)

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Other(	637	)
	Other(	819	)
	Other(	869	)
	Other(	874	)
end
--------------------------------------------------------------------------------------------------------------------
--													dydz_talk (�����)											  --
--------------------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------------------
--											���������_������� (������)											  --
--------------------------------------------------------------------------------------------------------------------
function zsts_talk()
	Talk( 1, "����� ������������: ������ ����� ������ � ������� �������� ��� ������ ������ �����������!")
	Text( 1, "��������� � ������������ ", JumpPage, 2)
	Text( 1, "� ���� ������������ ", JumpPage, 6)

	Talk( 2, "����� ������������: ��� �� ������ ������?")
	Text( 2, "������ ����� ������������?", JumpPage, 3)
	Text( 2, "��� ����� � ������ ������, � ������ ������ ����� ������������?", JumpPage, 4)
	Text( 2, "����� ������� ������������?", JumpPage, 5)

	Talk( 3, "����� ������������: ������ ����� �������� ������� ����� ����� ������������: ���� ����� ����� ��������, ����������� ����� ��� ��������. ������ ����� ����� ���������. ������ ����� ����� ���������, ���������, ����������� ����� ��� ��������. ��� ����� ����� ���������, ��������� ��� ����������� �����.")
	Text( 3, "�������, � ��� ����� ", CloseTalk)

	Talk( 4, "����� ������������: ��� ���� ������ � ������ ����� �������� � �� ������� ������ �� ����������������.")
	Text( 4, "�������, � ��� ����� ", CloseTalk)

	Talk( 5, "����� ������������: ������������ ����� ������ ���� �� ��� ������ ����� ������������ �������, ������� ����� �������� � ������, ����� �������� �� �������� ������ ������������. ����� �� ������ ����������� � ������� ����� ������������, ��� ����� ����� � ������������� ��������� ����� �� ���.")
	Text( 5, "�������, � ��� ����� ", CloseTalk)

	Talk( 6, "����� ������������: ��� �� �� ������ ����� ����� ������������?" )
	Text( 6, "����� ��������, ����� ����� �������������� � ��� ",  GetChaName1_born, 1)
	Text( 6, "����� ���������, ����� �������� ����� ��������� ",  GetChaName2_born, 1)
	Text( 6, "����� ����������� �����, ����� ��������� ���� ",  GetChaName3_born, 1)
	Text( 6, "����� ��������, ����� �������� ���� ������ ",  GetChaName4_born, 1)
	Text( 6, "����� ���������, ����� �������� ������� ", GetChaName5_born, 1)
	Text( 6, "����� ���������, ����� ������ ��� ��� ������ ", GetChaName6_born, 1)

	AddNpcMission ( 6071 )
end

function k_talk002()
	Talk (1, "����� ������: ����� ����, ������ ���� �������� ������ ����� ���� ����, �������� ����� ��������� ��� ����� �����! �� ������� �������� ������ ���� ������� �� ������, ���� �� ������� �����, ���������� �����������, ����������? ����� ����� ��� ������� ���� �����.") 
	Text( 1, "�������� ������ ������ ", JumpPage, 2)

	Talk (2, "����� ������: � ����� ������, � ���� ����� ��� ����� ���, � �� ����� ��� ���, ����� ��� �������� �� ����� �����!")
	InitTrigger()
	TriggerCondition( 1, HasItem, 1097, 1)             
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 1097, 1)
	TriggerAction(1, GiveItem, 1104, 1, 4)              
	TriggerFailure(1, JumpPage, 3)
	Text( 2, "��� ����� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "����� ������: �� ������� ���� ����? � �������, � �� �� ������ ��� ����� ������, ����������!") 

	Text( 1, "�������� ������� ", JumpPage, 4)

	Talk(4, "����� ������: � ����� ������, � ���� ����� ��� ����� ���, � �� ����� ��� ���, ����� ��� �����-����!") 
	InitTrigger()
	TriggerCondition( 1, HasItem, 2989, 1)             
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 2989, 1)
	TriggerAction(1, GiveItem, 0992, 10, 4)              
	TriggerFailure(1, JumpPage, 5)
	Text( 4, "��� ����� ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "����� ������: �� ������� ���� ����? � �������, � �� �� ������ ��� ����� ������, ����������!") 
end
--------------------------------------------------------------------------------------------------------------------
--											���������_������� (�����)											  --
--------------------------------------------------------------------------------------------------------------------