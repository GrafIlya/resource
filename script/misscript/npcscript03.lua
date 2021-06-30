print( "����㧪� NPCScript03.lua")

--------------------------
--	������ ����������	--
--------------------------
jp				= JumpPage
amp				= AutoMissionPage
ct				= CloseTalk
am				= AddMission
MissionCheck 	= HasFlag
mc				= MissionCheck

function combine_gems()
	Talk( 1, "������! � ���� �������������� ���� ��������� ��� �������, ���:_1. �� ������ 8,16 ��� 32�� ����������;_2. � ���� ���� 8,30 ��� 100�� ������! ")
	Text( 1, "��������� +10 ", JumpPage, 10)
	Text( 1, "����.", CloseTalk)
	--+10
	Talk( 10, "�������� �������:")
	Text( 10, "4 ������� ", JumpPage, 11)
	Text( 10, "5 ������� ", JumpPage, 12)
	Text( 10, "6 ������� ", JumpPage, 13)
	
	Talk( 11, "�������� ��������: ")
	Text( 11, "�������� ���� ", FastCombiner, 8016, 4)
	Text( 11, "�������� ���� ", FastCombiner, 8017, 4)
	Text( 11, "�������� �������� ", FastCombiner, 8018, 4)
	Text( 11, "�������� ������������ ", FastCombiner, 8019, 4)
	Text( 11, "�������� �������� ", FastCombiner, 8020, 4)
	
	Talk( 12, "�������� ��������: ")
	Text( 12, "�������� ���� ", FastCombiner, 8016, 5)
	Text( 12, "�������� ���� ", FastCombiner, 8017, 5)
	Text( 12, "�������� �������� ", FastCombiner, 8018, 5)
	Text( 12, "�������� ������������ ", FastCombiner, 8019, 5)
	Text( 12, "�������� �������� ", FastCombiner, 8020, 5)
	
	Talk( 13, "�������� ��������: ")
	Text( 13, "�������� ���� ", FastCombiner, 8016, 6)
	Text( 13, "�������� ���� ", FastCombiner, 8017, 6)
	Text( 13, "�������� �������� ", FastCombiner, 8018, 6)
	Text( 13, "�������� ������������ ", FastCombiner, 8019, 6)
	Text( 13, "�������� �������� ", FastCombiner, 8020, 6)
end

function combine_gems2()
	Talk( 1, "������! � ���� �������������� ���� ��������� ��� �������, ���:_1. �� ������ 8,16 ��� 32�� ����������;_2. � ���� ���� 8,30 ��� 100�� ������! ")
	Text( 1, "��������� +14 ", JumpPage, 2)
	Text( 1, "��������� +17 ", JumpPage, 6)
	Text( 1, "��������� +20 ", JumpPage, 10)
	Text( 1, "����.", CloseTalk)
	--+14
	Talk( 2, "�������� �������:")
	Text( 2, "4 ������� ", JumpPage, 3)
	Text( 2, "5 ������� ", JumpPage, 4)
	Text( 2, "6 ������� ", JumpPage, 5)
	
	Talk( 3, "�������� ��������: ")
	Text( 3, "�������� ���� ", FastCombiner, 8021, 4)
	Text( 3, "�������� ���� ", FastCombiner, 8022, 4)
	Text( 3, "�������� �������� ", FastCombiner, 8023, 4)
	Text( 3, "�������� ������������ ", FastCombiner, 8024, 4)
	Text( 3, "�������� �������� ", FastCombiner, 8025, 4)
	
	Talk( 4, "�������� ��������: ")
	Text( 4, "�������� ���� ", FastCombiner, 8021, 5)
	Text( 4, "�������� ���� ", FastCombiner, 8022, 5)
	Text( 4, "�������� �������� ", FastCombiner, 8023, 5)
	Text( 4, "�������� ������������ ", FastCombiner, 8024, 5)
	Text( 4, "�������� �������� ", FastCombiner, 8025, 5)
	
	Talk( 5, "�������� ��������: ")
	Text( 5, "�������� ���� ", FastCombiner, 8021, 6)
	Text( 5, "�������� ���� ", FastCombiner, 8022, 6)
	Text( 5, "�������� �������� ", FastCombiner, 8023, 6)
	Text( 5, "�������� ������������ ", FastCombiner, 8024, 6)
	Text( 5, "�������� �������� ", FastCombiner, 8025, 6)
	--+17
	Talk( 6, "�������� �������:")
	Text( 6, "4 ������� ", JumpPage, 7)
	Text( 6, "5 ������� ", JumpPage, 8)
	Text( 6, "6 ������� ", JumpPage, 9)
	
	Talk( 7, "�������� ��������: ")
	Text( 7, "�������� ���� ", FastCombiner, 9145, 4)
	Text( 7, "�������� ���� ", FastCombiner, 9146, 4)
	Text( 7, "�������� �������� ", FastCombiner, 9147, 4)
	Text( 7, "�������� ������������ ", FastCombiner, 9148, 4)
	Text( 7, "�������� �������� ", FastCombiner, 9149, 4)
	
	Talk( 8, "�������� ��������: ")
	Text( 8, "�������� ���� ", FastCombiner, 9145, 5)
	Text( 8, "�������� ���� ", FastCombiner, 9146, 5)
	Text( 8, "�������� �������� ", FastCombiner, 9147, 5)
	Text( 8, "�������� ������������ ", FastCombiner, 9148, 5)
	Text( 8, "�������� �������� ", FastCombiner, 9149, 5)
	
	Talk( 9, "�������� ��������: ")
	Text( 9, "�������� ���� ", FastCombiner, 9145, 6)
	Text( 9, "�������� ���� ", FastCombiner, 9146, 6)
	Text( 9, "�������� �������� ", FastCombiner, 9147, 6)
	Text( 9, "�������� ������������ ", FastCombiner, 9148, 6)
	Text( 9, "�������� �������� ", FastCombiner, 9149, 6)
	
	--+20
	Talk( 10, "�������� �������:")
	Text( 10, "4 ������� ", JumpPage, 11)
	Text( 10, "5 ������� ", JumpPage, 12)
	Text( 10, "6 ������� ", JumpPage, 13)
	
	Talk( 11, "�������� ��������: ")
	Text( 11, "�������� ���� ", FastCombiner, 8026, 4)
	Text( 11, "�������� ���� ", FastCombiner, 8027, 4)
	Text( 11, "�������� �������� ", FastCombiner, 8028, 4)
	Text( 11, "�������� ������������ ", FastCombiner, 8029, 4)
	Text( 11, "�������� �������� ", FastCombiner, 8030, 4)
	
	Talk( 12, "�������� ��������: ")
	Text( 12, "�������� ���� ", FastCombiner, 8026, 5)
	Text( 12, "�������� ���� ", FastCombiner, 8027, 5)
	Text( 12, "�������� �������� ", FastCombiner, 8028, 5)
	Text( 12, "�������� ������������ ", FastCombiner, 8029, 5)
	Text( 12, "�������� �������� ", FastCombiner, 8030, 5)
	
	Talk( 13, "�������� ��������: ")
	Text( 13, "�������� ���� ", FastCombiner, 8026, 6)
	Text( 13, "�������� ���� ", FastCombiner, 8027, 6)
	Text( 13, "�������� �������� ", FastCombiner, 8028, 6)
	Text( 13, "�������� ������������ ", FastCombiner, 8029, 6)
	Text( 13, "�������� �������� ", FastCombiner, 8030, 6)
end

function npc_cook()
	Talk( 1, "������. � ���� �������� ���� ��� �� ��������� ���. �������: ")
	Text( 1, "������ +1 � ��������������� ", JumpPage, 2)
	Text( 1, "����� �������� ", JumpPage, 3)
	Text( 1, "����� ��������� ", JumpPage, 4)
	Text( 1, "��������� ������������� ", JumpPage, 5)
	Text( 1, "�������� ����� ", JumpPage, 6)
	Text( 1, "�������� ���� ", JumpPage, 7)
	Text( 1, "-------->", JumpPage, 8)
	Text( 8, "������� ", JumpPage, 9)
	Text( 8, "�������� ", JumpPage,10)
	Text( 8, "<-------- ", JumpPage,1)
	Text( 8, "���� ", CloseTalk)
	
	
	
	Talk( 2, "����� �������� ������, ������� ���:_1. ������ - 15��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1736,15 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 1736,15 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 7453,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 2, "�������� ������ ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "����� �������� ����� ��������, ������� ���:_1. ���� ������ - 30��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2386,30 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2386,30 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 850,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 3, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 4, "����� �������� ����� ���������, ������� ���:_1. ���� ������ - 15��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2386,15 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2386,15 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 3339,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 4, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 5, "����� �������� ��������� �������������, ������� ���:_1. ����� ����-����� ������ - 3��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8125,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8125,3 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 1148,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 5, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 6, "����� �������� �������� �����, ������� ���:_1. �������� �� ������ - 5��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2392,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2392,5 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 1136,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 6, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 7, "����� �������� �������� ����, ������� ���:_1. �������� �� ������ - 7��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2392,7 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2392,7 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 1138,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 7, "�������� �������� ���� ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 9, "����� �������� �������, ������� ���:_1. ������������ ���� - 5��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1765,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 1765,5 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 1135,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 9, "�������� ������� ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 10, "����� �������� ��������, ������� ���:_1. �������� ����� - 5��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1754,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 1754,5 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 1137,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 10, "�������� �������� ", MultiTrigger, GetMultiTrigger(), 1)
	
	
	Talk(13, "�� ������� ����! ")
	Text(13, "���� ", CloseTalk)
end

function skelet_is2()
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  2 ) --������ ��� ����� ����� ������ ������.
	TriggerCondition( 1, LvCheck, ">", 189 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 12 )
	Start( GetMultiTrigger(), 1 )
	
	Talk( 1, "������, �����. ������ �������� ������ ������ ���? �������:")
	Text( 1, "������(400 ���) ", JumpPage, 2)
	Text( 1, "����.", CloseTalk)
	--������ 200
	Talk( 2, "����� �������� ������ ������ ���, ������� ���:_1. ����� ���� - 200��;_2. ������ - 125 ���������. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1775,200 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 125000000,125000000 )
	TriggerAction( 1, TakeItem, 1775,200 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 125000000,125000000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 7690,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 2, "�������� ������ ", MultiTrigger, GetMultiTrigger(), 1)
	Text(2 , "���� ", CloseTalk)
	
	Talk(12, "�� �� �������� �� ���� �������������. ��� �����:_1. ������� ����� - 2 ���;_2. ���� ���� 190 ������. ")
	Text(12, "���� ", CloseTalk)
	
	Talk(13, "�� ������� ����! ")
	Text(13, "���� ", CloseTalk)
end

function angela()
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  2 ) --������ ��� ����� ����� ������ ������.
	TriggerCondition( 1, LvCheck, ">", 199 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 12 )
	Start( GetMultiTrigger(), 1 )
	
	Talk( 1, "������, �����! � ���� ������ ���� � ���������� �������������! ")
	Text( 1, "����� ������ ���� ", JumpPage, 3)
	Text( 1, "���������� ������������ ", JumpPage, 4)
	Text( 1, "����. ", CloseTalk)
	
	Talk( 3, "����� �������� ����� ������ ����, ������� ���:_1. ������� ������ ������ - 40 ��;_2. ���� ������ - 100 ��;_3. ������ ���������� ����� - 70 ��;_4. ������ - 1,5 ��������. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2480,40 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,2386,100 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1731,70 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 1500000,1500000 )
	TriggerAction( 1, TakeItem, 2480,40 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 2386,100 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1731,70 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 1500000,1500000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 3919,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 3, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "����. ", CloseTalk)

	Talk( 4, "�������, ��� �� ������ ��������: ")
	Text( 4, "����� ������������ ", JumpPage, 5)
	Text( 4, "����� ������������ ", JumpPage, 6)
	Text( 4, "�������� ������������ ", JumpPage, 7)
	Text( 4, "������� ������������ ", JumpPage, 8)

	Talk( 5, "����� �������� ����� ������������, ������� ���:_1. ����������� ����� - 500 ��;_2. ������ ��� - 500 ��;_3. ������������� ������-����� - 500 ��;_4. �������� ����� - 500��;_5. ������ - 300.000.000. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1761,500 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1762,500 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1763,500 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1754,500 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 300000000,300000000 )
	TriggerAction( 1, TakeItem, 1761,500 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1762,500 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1763,500 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1754,500 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 300000000,300000000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8055,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 5, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "����. ", CloseTalk)

	Talk( 6, "����� �������� ����� ������������, ������� ���:_1. ����������� ����� - 1000 ��;_2. ������ ��� - 1000 ��;_3. ������������� ������-����� - 1000 ��;_4. �������� ����� - 1000 ��;_5. ������� �������� ������ - 1000 ��;_6. ������������ ���� - 1000��;_7. ������ - 500.000.000. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1761,1000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1762,1000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1763,1000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1754,1000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1764,1000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1765,1000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 500000000,500000000 )
	TriggerAction( 1, TakeItem, 1761,1000 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1762,1000 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1763,1000 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1754,1000 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1764,1000 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1765,1000 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 500000000,500000000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8056,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 6, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "����. ", CloseTalk)

	Talk( 7, "����� �������� �������� ������������, ������� ���:_1. ����������� ����� - 600 ��;_2. ������ ��� - 600 ��;_3. ������������� ������-����� - 600 ��;_4. �������� ����� - 600 ��;_5. ������� �������� ������ - 600 ��;_6. ������������ ���� - 600 ��;_7. ������ - 200.000.000. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1761,600 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1762,600 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1763,600 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1754,600 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1764,600 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1765,600 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 200000000,200000000 )
	TriggerAction( 1, TakeItem, 1761,600 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1762,600 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1763,600 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1754,600 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1764,600 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1765,600 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 200000000,200000000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8057,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 7, "�������� �������� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 7, "����. ", CloseTalk)

	Talk( 8, "����� �������� ������� ������������, ������� ���:_1. ����������� ����� - 600 ��;_2. ������ ��� - 600 ��;_3. ������������� ������-����� - 600 ��;_4. �������� ����� - 600 ��;_5. ������� �������� ������ - 600 ��;_6. ������������ ���� - 600 ��;_7. ������ - 200.000.000. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1761,600 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1762,600 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1763,600 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1754,600 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1764,600 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1765,600 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 200000000,200000000 )
	TriggerAction( 1, TakeItem, 1761,600 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1762,600 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1763,600 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1754,600 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1764,600 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1765,600 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 200000000,200000000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8058,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 8, "�������� �������� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "����. ", CloseTalk)

	
	
	Talk(12, "�� �� �������� �� ���� �������������. ��� �����:_1. ������� ����� - 2 ���;_2. ���� ���� 200 ������. ")
	Text(12, "���� ", CloseTalk)
	
	Talk(13, "� ��� ������������ ���� ��� ������. ")
	Text(13, "���� ", CloseTalk)
end

function skelet_isl()
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  2 ) --������ ��� ����� ����� ������ ������.
	TriggerCondition( 1, LvCheck, ">", 189 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 12 )
	Start( GetMultiTrigger(), 1 )
	
	Talk( 1, "������. � ���� ��������������� ���� �� ������ ��������. ")
	Text( 1, "����������������� ", GoTo, 604, 614,  "jialebi" )
	Text( 1, "��� ������ ���(400���)", JumpPage, 2)
	Text( 1, "������������ ������ 400 ", JumpPage, 7)
	Text( 1, "���������� ������ ������ ���", JumpPage, 8)
	Text( 1, "����� ������ ����� �4", JumpPage, 10)
	Text( 1, "����� ������ ����� �4", JumpPage, 11)
	Text( 1, "����. ", CloseTalk)
	
	Talk( 2, "������ ����, ������� ������ ��������: ")
	Text( 2, "����� 400 ", JumpPage, 3)
	Text( 2, "���� 400 ", JumpPage, 4)
	Text( 2, "�������� 400 ", JumpPage, 5)
	Text( 2, "������� 400 ", JumpPage, 6)
	Text( 2, "����. ", CloseTalk)
	
	--����� 175
	Talk( 3, "����� �������� ����� ������ ���, ������� ���:_1. ������� ����������� - 350��;_2. ����� �������� ���� - 350��;_3. ������ - 75 ���������;_4. ��������� - 350. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1743,350 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1768,350 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 75000000,75000000 )
	TriggerCondition( 1, HasCredit, 350 )
	TriggerAction( 1, TakeItem, 1743,350 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1768,350 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 75000000,75000000 )
	TriggerAction( 1, DelRoleCredit, 350 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8048,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 3, "�������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	
	--���� 175
	Talk( 4, "����� �������� ���� ������ ���, ������� ���:_1. �������� �������� - 200��;_2. ���� ����� - 200��;_3. ������ - 45 ���������;_4. ��������� - 220. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1745,200 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1734,200 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 45000000,45000000 )
	TriggerCondition( 1, HasCredit, 220 )
	TriggerAction( 1, TakeItem, 1745,200 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1734,200 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 45000000,45000000 )
	TriggerAction( 1, DelRoleCredit, 220 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8049,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 4, "�������� ���� ", MultiTrigger, GetMultiTrigger(), 1)
	
	--�������� 175
	Talk( 5, "����� �������� �������� ������ ���, ������� ���:_1. ��������� ��������� - 220��;_2. �������� ����� - 240��;_3. ������ - 50 ���������;_4. ��������� - 240. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1747,220 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1752,240 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 50000000,50000000 )
	TriggerCondition( 1, HasCredit, 240 )
	TriggerAction( 1, TakeItem, 1747,220 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1752,240 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 50000000,50000000 )
	TriggerAction( 1, DelRoleCredit, 240 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8050,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 5, "�������� �������� ", MultiTrigger, GetMultiTrigger(), 1)
	
	--������� 175
	Talk( 6, "����� �������� ������� ������ ���, ������� ���:_1. ������� ���� - 300��;_2. ������� �������� - 300��;_3. ������ - 60 ���������;_4. ��������� - 300. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1750,300 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1751,300 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 60000000,60000000 )
	TriggerCondition( 1, HasCredit, 300 )
	TriggerAction( 1, TakeItem, 1750,300 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1751,300 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 60000000,60000000 )
	TriggerAction( 1, DelRoleCredit, 300 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 8051,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 6, "�������� ������� ", MultiTrigger, GetMultiTrigger(), 1)
	
	--������ 175
	Talk( 7, "����� �������� ������ ������ ���, ������� ���:_1. ������� �������� - 1000��;_2. ���� - 5000;_3. ������ - 100 ���������;_3. ��������� - 5000. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1751,1000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3458,5000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 100000000,100000000 )
	TriggerCondition( 1, HasCredit, 5000 )
	TriggerAction( 1, TakeItem, 1751,1000 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3458,5000 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 100000000,100000000 )
	TriggerAction( 1, DelRoleCredit, 5000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 6165,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 7, "�������� ������ ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 8, "����� ����������� ������ ������ ���, ������� ���:_1. ������������ ������ ������ ���;_2. ������ �� 100 ��������� - 1��;_3. 500 ���������. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,7742,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,6165,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasCredit, 500 )
	TriggerAction( 1, TakeItem, 7742,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 6165,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, DelRoleCredit, 500 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 6256,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 8, "�������� ������ ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "���� ", CloseTalk)
	
	Talk( 10, "����� �������� ������ ����� �4, ������� ���:_1. 400 ���������; 2. ������ - 40.000.000. ")
	InitTrigger()
	TriggerCondition( 1, HasCredit, 400 )
	TriggerCondition( 1, HasMoney, 40000000,40000000 )
	TriggerAction( 1, DelRoleCredit, 400 )
	TriggerAction( 1, TakeMoney, 40000000,40000000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 7484,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 10, "�������� ������ ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 10, "���� ", CloseTalk)
	
	Talk( 11, "����� �������� ������ ����� �4, ������� ���:_1. 400 ���������; 2. ������ - 40.000.000. ")
	InitTrigger()
	TriggerCondition( 1, HasCredit, 400 )
	TriggerCondition( 1, HasMoney, 40000000,40000000 )
	TriggerAction( 1, DelRoleCredit, 400 )
	TriggerAction( 1, TakeMoney, 40000000,40000000 )
	TriggerFailure( 1, JumpPage, 13 )
	TriggerAction( 1, GiveItem, 15695,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 11, "�������� ������ ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 11, "���� ", CloseTalk)
	
	
	Talk(12, "�� �� �������� �� ���� �������������. ��� �����:_1. ������� ����� - 2 ���;_2. ���� ���� 190 ������. ")
	Text(12, "���� ", CloseTalk)
	
	Talk(13, "�� ������� ���� ��� ��������� ��� ������! ")
	Text(13, "���� ", CloseTalk)
end

function gems_14()
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  2 ) --������ ��� ����� ����� ������ ������.
	TriggerCondition( 1, LvCheck, ">", 179 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Start( GetMultiTrigger(), 1 )
	
	Talk( 1, "������. ������ �������� �������� +14 � ���������������? �������, �� ��� �� ������ �� ��������: ")
	Text( 1, "�� ��������� ���-������ ", JumpPage, 2 )
	Text( 1, "�� ������� ����� ", JumpPage, 4 )
	Text( 1, "����. ", CloseTalk )
	
	Talk( 2, "����� �������� ��������, ��� ��� 5 ��������� ���-������. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2471,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2471,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8021,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 2, "�������� ���� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2471,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2471,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8022,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 2, "�������� ���� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2471,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2471,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8023,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 2, "�������� �������� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2471,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2471,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8024,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 2, "�������� ������������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2471,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2471,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8025,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 2, "�������� �������� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "����. ", CloseTalk)
	
	Talk(3, "������� ��� 5 ���-������ ��� 5 ������� ������ ������. ")
	Text(3, "����. ",CloseTalk)
	
	Talk( 4, "����� �������� ��������, ��� ��� 5 ������� ������ ������. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2480,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2480,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8021,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 4, "�������� ���� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2480,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2480,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8022,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 4, "�������� ���� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2480,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2480,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8023,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 4, "�������� �������� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2480,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2480,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8024,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 4, "�������� ������������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2480,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2480,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, GiveItem, 8025,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 4, "�������� �������� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "����. ", CloseTalk)
	
	Talk(5, "�� �� �������� �� ���� �������������. ��� �����:_1. ������� ����� - 2 ���;_2. ���� ���� 180 ������. ")
	Text(5, "���� ", CloseTalk)
end

function cloak_trade()
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  2 ) --������ ��� ����� ����� ������ ������.
	TriggerCondition( 1, LvCheck, ">", 194 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Start( GetMultiTrigger(), 1 )
	
	Talk(1, "����� �������� ���� ��������, ������� ���:_1. ����� ����� - 100��;_2. ������ - 30 ���������;_3. ����� � - 15��;_4. ������������ ���� - 1��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,7528,100 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 30000000,30000000 )
	TriggerCondition( 1, HasItem,8106,15 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8005,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 7528,100 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 30000000,30000000 )
	TriggerAction( 1, TakeItem, 8106,15 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8005,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 7469,1,88 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 1, "�������� ���� ", MultiTrigger, GetMultiTrigger(), 1)
	Text(1, "����. ", CloseTalk)
	
	Talk(5, "�� �� �������� �� ���� �������������. ��� �����:_1. ������� ����� - 2 ���;_2. ���� ���� 190 ������. ")
	Text(5, "���� ", CloseTalk)
end

function t_diana()
	InitTrigger()
	TriggerCondition( 1, HasItem,2412,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2412,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Start( GetMultiTrigger(), 1 )
	
	Talk( 1, "������ ������� � ������ ������� ��� 2? ")
	Text( 1, "����������������� ", GoTo, 1583, 1170,  "jialebi" )
	Text( 1, "����. ", CloseTalk )
	
	Talk( 3, "����� �������� �� ����, ������� ������ DEATH. ")
	Text( 3, "����. ",CloseTalk)
end

function rb_angel2()
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  2 ) --������ ��� ����� ����� ������ ������.
	TriggerCondition( 1, LvCheck, ">", 194 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 15 )
	Start( GetMultiTrigger(), 1 )
	
	Talk( 1, "������, ��������. ������ �����������? ������� ���������. ")
	Text( 1, "������� ", GetChaName1_born2)
	Text( 1, "������� ", GetChaName2_born2)
	Text( 1, "���������� ����� ", GetChaName3_born2)
	Text( 1, "������� ", GetChaName4_born2)
	Text( 1, "������������ ", GetChaName5_born2)
	Text( 1, "�������� ", GetChaName6_born2)
	Text( 1, "����. ", CloseTalk)
	
	Talk(15, "�� �� �������� �� ���� �������������. ��� �����:_1. ������� ����� - 2 ���;_2. ���� ���� 195 ������. ")
	Text(15, "���� ", CloseTalk)
end

function card_trade()
	Talk( 1, "������! � ��������� ����� ����-������ ������ �� �����._����� -- ����� ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8125,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8125,3 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 7999,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 1, "3 -- 1 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8125,30 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8125,30 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 7999,10,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 1, "30 -- 10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8125,300 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8125,300 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 7999,100,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 1, "300 -- 100 ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "����. ", CloseTalk)
end

function card_trade1()
	Talk( 1, "������! � ��������� ����� ����-������ ���� �� ������� �����._����� -- ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8126,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8126,3 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8123,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 1, "3 -- 1 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8126,30 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8126,30 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8123,10,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 1, "30 -- 10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8126,300 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8126,300 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8123,100,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 1, "300 -- 100 ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "����. ", CloseTalk)
end

function card_trade2()
	Talk( 1, "������! � ��������� ����� ����-������ ������ �� ������� �����._����� -- ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8127,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8127,3 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8124,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 1, "3 -- 1 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8127,30 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8127,30 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8124,10,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 1, "30 -- 10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8127,300 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8127,300 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8124,100,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 1, "300 -- 100 ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "����. ", CloseTalk)
end

function card_trade3()
	Talk( 1, "������! � ��������� ����� ����-������ ����� ������ �� ������� �����._����� -- ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8128,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8128,3 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8122,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 1, "3 -- 1 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8128,30 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8128,30 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8122,10,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 1, "30 -- 10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8128,300 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8128,300 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8122,100,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 1, "300 -- 100 ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "����. ", CloseTalk)
end