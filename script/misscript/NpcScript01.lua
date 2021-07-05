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
	Talk(1, "������. � ���� ������ ���� ������ ����� ������������. ")
	Text(1, "���������� ����� ", JumpPage, 2)
	
	Talk(2, "������� ������, ������� ������ ��������: ")
	Text(2, "������ 1 �� ", JumpPage, 3)
	Text(2, "������ 2 �� ", JumpPage, 4)
	Text(2, "������ 3 �� ", JumpPage, 5)
	
	Talk(3,"����� �������� ������ 1 ��, ������� ���:_1.������� ������������ ��������� - 75��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 4541, 75 )
	TriggerAction( 1, TakeItem, 4541,75 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 2235,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 3, "�������� ������. ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk(4,"����� �������� ������ 2 ��, ������� ���:_1.������� ������ ������ - 150��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 150 )
	TriggerAction( 1, TakeItem, 2480,150 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 6949,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4, "�������� ������. ", MultiTrigger, GetMultiTrigger(), 1)
	
	
end

function exch_bust()
	Talk(1, "������. � ���� �������� ���� ����� �� ������:_1. ����� 1��� �� 5�;_1. ����� 2��� �� 20�;_1. ����� 3��� �� 60�;_1. ����� 4��� �� 400�;_1. ����� 5��� �� 1��. ")
	Text(1, "�������� 1 ����� ", JumpPage, 2)
	Text(1, "�������� 10 ���� ", JumpPage, 3)
	Text(1, "�������� 100 ���� ", JumpPage, 4)
	Text(1, "����. ", CloseTalk)
	
	Talk(2,"�������, ����� ����� ������ ��������: ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 7999, 1 )
	TriggerAction( 1, TakeItem, 7999,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 5000, 5000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "����� 1 ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8000, 1 )
	TriggerAction( 1, TakeItem, 8000,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 20000, 20000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "����� 2 ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8001, 1 )
	TriggerAction( 1, TakeItem, 8001,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 60000, 60000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "����� 3 ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8002, 1 )
	TriggerAction( 1, TakeItem, 8002,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 400000, 400000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "����� 4 ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8003, 1 )
	TriggerAction( 1, TakeItem, 8003,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 1000000, 1000000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "����� 5 ������ ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "����. ", CloseTalk)
	
	Talk(3,"�������, ����� ����� ������ ��������: ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 7999, 10 )
	TriggerAction( 1, TakeItem, 7999,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 50000, 50000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 3, "(x10)����� 1 ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8000, 10 )
	TriggerAction( 1, TakeItem, 8000,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 200000, 200000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 3, "(x10)����� 2 ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8001, 10 )
	TriggerAction( 1, TakeItem, 8001,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 600000, 600000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 3, "(x10)����� 3 ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8002, 10 )
	TriggerAction( 1, TakeItem, 8002,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 4000000, 4000000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 3, "(x10)����� 4 ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8003, 10 )
	TriggerAction( 1, TakeItem, 8003,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 10000000, 10000000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 3, "(x10)����� 5 ������ ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "����. ", CloseTalk)
	
	Talk(4,"�������, ����� ����� ������ ��������: ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 7999, 100 )
	TriggerAction( 1, TakeItem, 7999,100 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 500000, 500000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4, "(x100)����� 1 ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8000, 100 )
	TriggerAction( 1, TakeItem, 8000,100 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 2000000, 2000000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4, "(x100)����� 2 ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8001, 100 )
	TriggerAction( 1, TakeItem, 8001,100 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 6000000, 6000000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4, "(x100)����� 3 ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8002, 100 )
	TriggerAction( 1, TakeItem, 8002,100 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 40000000, 40000000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4, "(x100)����� 4 ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 8003, 100 )
	TriggerAction( 1, TakeItem, 8003,100 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 100000000, 100000000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4, "(x100)����� 5 ������ ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "����. ", CloseTalk)
	
end



function ex_apparels()
	Talk( 1, "������. � ���� �� ������ ���������� ������������ ��������! " )
	Text( 1, "���������� �����������. ", BuyPage)
	InitTrade()
	Defence( 16122)
end

function new_acc()
	Talk( 1, "������. � ������ ���� ����� �������! " )
	Text( 1, "������ ���������� ", BuyPage)
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
	Talk( 1, "������. � ������ ���� ������� �������! ��� �������� ����� ������ ������ � 3.000.000 ������. " )
	Text( 1, "������ ������ ", BuyPage)
	InitTrade()
	Other( 1780)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerCondition( 1, NoGuild )
	TriggerAction( 1, CreateGuild, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "������� ������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerCondition( 1, NoGuild )
	TriggerAction( 1, CreateGuild, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "������� ��������� ������� ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk(2, "� ��� ��� ����� ������ ��� 1 �������� ������. ")
	Text(2, "�����, ����. ",CloseTalk)
end 

function guild1()
	Talk( 1, "�����: ������! ��� �������� ��� ��������� ����������� � ����! ������ ����������� �������� ��� ����? ")
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 1 )
	TriggerAction( 1, ListAllGuild, 1 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, NoGuild )
	TriggerAction( 3, ListAllGuild, 1 )
	TriggerFailure( 3, JumpPage, 3 )
	Text( 1, "���������� ��������� ������� ", MultiTrigger, GetMultiTrigger(), 3)

	Text( 1, "�������� ", CloseTalk)
	
	Talk( 2, "�����: ��, �� �� �� �����! � �� ���� �������� �� � ��� �� �����! ")

	Talk( 3, "�����: ������ ������ ��� ����� ��������� �����? � ����� �� �����. ")
end

function guild2()
	Talk( 1, "���������: ������! � ������������ �����. � ���� ���� ������ ������ ���� �������� �������! ")
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 0 )
	TriggerAction( 1, ListAllGuild, 0 )
	TriggerCondition( 2, IsGuildType, 1 )
	TriggerAction( 2, JumpPage, 3 )
	TriggerCondition( 3, NoGuild )
	TriggerAction( 3, ListAllGuild, 0 )
	TriggerFailure( 3, JumpPage, 2 )
	Text( 1, "���������� ������ ������� ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "�� �������� ", CloseTalk)
	
	Talk( 2, "���������: �� �� ������ ���������� ������ ������� �� ���� ��� ���� ����������������� ������! ")

	Talk( 3, "���������: �� �� ������������ � �����. � �� ���� ������ ��� ������� ����������! ")
end
-------------
-- PK ���� --
-------------
function pk_points()
	InitTrigger()
	TriggerAction( 1, PK_points )
	Start( GetMultiTrigger(), 1 )
end

--------------
-- PVP ���� --
--------------
function pvp_points()
	InitTrigger()
	TriggerAction( 1, PVP_points )
	Start( GetMultiTrigger(), 1 )
end

-----------------
-- ��� ������� --
-----------------
function top_guilds()
	Talk( 1,  "���� � ��������! ������ ������� ����� ����� �� 3 ����� ������� �������? ������ ������� ���� �����? " )
	Text( 1,  "��� 3 ������� ", ListChallenge)
	
end
------------------------------------------------------------
-- 						���������						  --
------------------------------------------------------------
function npc_job ()

	Talk( 1, "������! � ������� ������� ���������. �������:" )
	Text( 1, "���� ������ ", JumpPage, 2)
	Text( 1, "���� ������ ", JumpPage, 3)
	Text( 1, "����. ",  CloseTalk)


	Talk( 2, "��� ��������� ��������� 9 ��� � 1� �����! " )
	Text( 2, "������ ", JumpPage, 4 )
	Text( 2, "������� ", JumpPage, 5 )
	Text( 2, "�������� ", JumpPage, 6 )
	Text( 2, "��������������� ", JumpPage, 7 )
	Text( 2, "������ � ������� ", CloseTalk )

	Talk( 3, "��� ��������� ��������� 40 ��� � 50� �����! " )
	Text( 3, "������� ", JumpPage, 8 )
	Text( 3, "������� ", JumpPage, 9 )
	Text( 3, "������� ", JumpPage, 10 )
	Text( 3, "������������ ", JumpPage, 11 )
	Text( 3, "�������� ", JumpPage, 12 )
	Text( 3, "���������� ����� ", JumpPage, 13 )
	Text( 3, "������ � ������� ", CloseTalk )

	Talk( 4, "� ���� ��� ���� 9 ��� � 1� ������? �� ������� =) " )
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
	Text( 4, "����� ���� ", MultiTrigger, GetMultiTrigger(), 4)
	Text( 4, "������� � ������ ���� ", JumpPage, 2 )

	Talk( 5, "� ���� ��� ���� 9 ��� � 1� ������? �� ������� =) " )
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
	Text( 5, "����� ���� ", MultiTrigger, GetMultiTrigger(), 2)
	Text( 5, "������� � ������ ���� ", JumpPage, 2 )


	Talk( 6, "� ���� ��� ���� 9 ��� � 1� ������? �� ������� =) " )
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
	Text( 6, "����� ���� ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 6, "������� � ������ ���� ", JumpPage, 2 )

	Talk( 7, "� ���� ��� ���� 9 ��� � 1� ������? �� ������� =) " )
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
	Text( 7, "����� ���� ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 7, "������� � ������ ���� ", JumpPage, 2 )


	Talk( 8, "� ���� ��� ���� 40 ��� � 50� ������? �� ������� =) " )
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
	Text( 8, "����� ���� ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 8, "������� � ������ ����", JumpPage, 2 )

	Talk( 9, "� ���� ��� ���� 40 ��� � 50� ������? �� ������� =) " )
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
	Text( 9, "����� ���� ", MultiTrigger, GetMultiTrigger(), 4)
	Text( 9, "������� � ������ ���� ", JumpPage, 2 )

	Talk( 10, "� ���� ��� ���� 40 ��� � 50� ������? �� ������� =) " )
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
	Text( 10, "����� ���� ", MultiTrigger, GetMultiTrigger(), 2)
	Text( 10, "������� � ������ ���� ", JumpPage, 2 )

	Talk( 11, "� ���� ��� ���� 40 ��� � 50� ������? �� ������� =) " )
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
	Text( 11, "����� ���� ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 11, "������� � ������ ���� ", JumpPage, 2 )

	Talk( 12, "� ���� ��� ���� 40 ��� � 50� ������? �� ������� =) " )
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
	Text( 12, "����� ���� ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 12, "������� � ������ ���� ", JumpPage, 2 )

	Talk( 13, "� ���� ��� ���� 40 ��� � 50� ������? �� ������� =) " )
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
	Text( 13, "����� ���� ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 13, "������� � ������ ���� ", JumpPage, 2 )

	Talk( 14, "������� ����: ���������� ���� � ���������� ��������� ")
	Text( 14, "������� ",  CloseTalk)

	Talk( 15, "������� ����: �� �� ��������� ��� ����������!")
	Text( 15, "� ����� ",  CloseTalk)

end

function kuznec ()
	Talk( 1,  "�����: ��� ��������� ����������,��������� ��� � ����� ��������� ���������� ���������� �����! ��� ������ ��������� ���� ��������! " )
	Text( 1,  "���� ", BuyPage )
	Text( 1,  "������ ", OpenRepair )
	Text( 1,  "������� ���� ", OpenMilling)
	Text( 1,  "�������� �������� ", OpenForge)
	Text( 1,  "���������� ���������� ", OpenUnite)
	Text( 1,  "��������� �������� ", OpenUpgrade)
	Text( 1,  "�������� � �������� ", OpenFusion)


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
	Talk( 1,  "������� �����: ������ �����! � ���� ��� ��� � ������� ������ ����! ������� ��� ����������! " )
	Text( 1,  "���� ", BuyPage )

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
	Talk( 1,  "���� ���������� ����: " )
	Text( 1,  "��������� ���������� ", OpenItemTiChun)
	Text( 1,  "���������� ���������� ", OpenUnite)
	Text( 1,  "�������� �������� ", OpenGetStone)
	Text( 1,  "�������������� ����� ", JumpPage, 2)
	Talk( 2, "� ���� �������������� ���� ��������� ��������� ��� �������, ���:_1. �� ������ 8,16 ��� 32�� ����������;_2. � ���� ���� 8,30 ��� 100�� ������! ")
	Text( 2,  "��� 4 ������ ", FastCombiner, 885, 4)
	Text( 2,  "��� 5 ������ ", FastCombiner, 885, 5)
	Text( 2,  "��� 6 ������ ", FastCombiner, 885, 6)
end

function fairy ()
	
	
	Talk( 1, "����: ������! � ���� ������ ���������� ��� � ��� ��� ���. " )
	Text( 1, "���� ", BuyPage )
	Text( 1, "����������� ����� ", JumpPage, 2)
	Text( 1, "������� ��� ", OpenEidolonMetempsychosis )
	
	Talk( 2, "������, ������, ��� �� ������ ��������: " )
	Text( 2, "������ ��� ", JumpPage, 3)
	Text( 2, "����. ������ ", JumpPage, 4)
	Text( 2, "������� ����. ������ ", JumpPage, 5)

	Talk( 3, "�� - ������ ���. ������ �����: " )
	InitTrigger()
	TriggerCondition( 1, HasItem,855,400 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 855,400 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 247,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 3, "����������� ������� - 400�� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,855,400 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 855,400 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 244,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 3, "����������� ������ - 400�� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,855,400 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 855,400 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 250,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 3, "����������� ����� - 400�� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,855,400 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 855,400 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 253,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 3, "����������� �������������� - 400�� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,855,400 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 855,400 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 260,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 3, "����������� ��������� - 400�� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "����. ", CloseTalk)
	
	Talk( 4, "�� - ���������� ������. ������ �����: " )
	InitTrigger()
	TriggerCondition( 1, HasItem,2588,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2588,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 578,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 4, "����� ����� ��� 1�� - 1 �� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2588,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2588,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 578,5,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 4, "����� ����� ��� 5�� - 5 �� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2588,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2588,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 578,10,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 4, "����� ����� ��� 10�� - 10 �� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "����. ", CloseTalk)
	
	Talk( 5, "��� - ���������� ����������� ������. ������ �����: ")
	InitTrigger()
	TriggerCondition( 1, HasItem,2589,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2589,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 100000, 100000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "100.000 ������ - 1 ��� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2589,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2589,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 500000, 500000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "500.000 ������ - 5 ��� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,2589,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2589,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 1000000, 1000000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "1.000.000 ������ - 10 ��� ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 10, "��� �� ������� ����. ")
	Text( 10, "���� ", CloseTalk)

    Weapon(	0679	)		--���� �����
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
    Talk( 1,  "������ ������: ������,� ������ ������� �� ����������.� ���� � ���� �� ������ ����� �������,�� ������ ������ �������� ����� " )
    --Text( 1,  "�������������� ��������(50�) ", AddSkillNPC)
    Text( 1,  "������ ����� ", BuyPage)
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
	
    Text( 1,  "� ������ ��� ", CloseTalk )
end

function Skills_New()
	Talk( 1, "����������� ����, �����! � ���� �������� ��� � ���� �� ����� ������! �������: " )
	Text( 1, "����� �� ",JumpPage, 2)
	Text( 1, "�������� ��� �� ",JumpPage, 3)
	Text( 1, "��� ��� ����� ",JumpPage, 4)
	Text( 1, "���� ", CloseTalk )
	
	InitTrigger()
	Talk( 2, "����� ��� �� - 5000 ����.������")
	TriggerCondition( 1, HasItem,3458,5000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3458,5000 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 3583, 1, 4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2,  "���� ����� ��� �� ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 3, "�������� ��� ��� �� - 7500 ����.������")
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,7500 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3458,7500 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 3584, 1, 4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3,  "���� �������� ��� ��� �� ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4, "��� ��� �����  - 3000 ����.������")
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,3000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3458,3000 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 3585, 1, 4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 4,  "���� ��� ��� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 5, "� ��� �� ������� ��������� ������! ")
	Text( 5, "����. ", CloseTalk)
end


function Kleha()
	Talk( 1, "����������� ����, �����! � ���� �������� ��� �� ����� 2 � 3 �����!_�������: " )
	Text( 1, "2 ���� ",JumpPage, 2)
	Text( 1, "3 ���� ",JumpPage, 3)
	Text( 1, "���� ", CloseTalk )
	Talk( 2, "����� ��� 2 ����� - 50 ����.������ � 20� ��������")
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,50 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1,HasMoney,20000,20000)
	TriggerAction( 1, TakeItem, 3458,50 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 20000,20000 )
	TriggerAction( 1, GiveItem, 4274, 1, 4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 1 )
	Text( 2,  "���� ����� ��� 2 ����� ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 3, "����� ��� 3 ����� - 50 ����.������ � 20� ��������")
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,50 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1,HasMoney,20000,20000)
	TriggerAction( 1, TakeItem, 3458,50 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 20000,20000 )
	TriggerAction( 1, GiveItem, 4275, 1, 4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 1 )
	Text( 3,  "���� ����� ��� 3 ����� ", MultiTrigger, GetMultiTrigger(), 1)
end

function Buster()
	Talk( 1, "����������� ����, �����! � ������� ����������,������ ���� ������� ������!_�������: " )
	Text( 1, "1 ���.������� ",JumpPage, 2)
	Text( 1, "2 ���.������� ",JumpPage, 3)
	Text( 1, "���� ", CloseTalk )
	
	Talk( 2, "�������, ��� ������ ��������:_1. ������� 1 - 100 ����. ������;_2. ������� 2 - 200 ����. ������;_3. ������� 3 - 300 ����. ������;_4. ������� 4 - 400 ����. ������;_5. ������� 5 - 500 ����. ������. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,100 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3458,100 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 4283, 1, 4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "1 ���.������� 1 ��� - 100 ����.������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,200 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3458,200 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 4284, 1, 4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "1 ���.������� 2 ���  - 200 ����.������", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,300 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3458,300 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 4285, 1, 4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "1 ���.������� 3 ���  - 300 ����.������", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,400 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3458,400 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 4286, 1, 4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "1 ���.������� 4 ���  - 400 ����.������", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,500 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3458,500 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 4287, 1, 4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2, "���.������� 5 ���", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "� ������ ",JumpPage, 1 )
	
	Talk( 3,  "�������, ��� ������ ��������:_1. ������� 1 - 200 ����. ������;_2. ������� 2 - 400 ����. ������;_3. ������� 3 - 600 ����. ������;_4. ������� 4 - 800 ����. ������;_5. ������� 5 - 1000 ����. ������. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,200 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3458,200 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 4276, 1, 4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 3, "���.������� 1 ��� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,400 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3458,400 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 4277, 1, 4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 3, "���.������� 2 ��� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,600 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3458,600 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 4278, 1, 4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 3, "���.������� 3 ��� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,800 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3458,800 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 4279, 1, 4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 3, "���.������� 4 ��� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,1000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3458,1000 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 4280, 1, 4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 3, "���.������� 5 ��� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "<-- ����� ",JumpPage, 1)
end


function bankir()
	Talk( 1,  "���: ������! ����� ���������� � ���� ������. ���� �� � ��� ���� ������? " )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "��������� (2000 ������) ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1,  "������� ����� ", BuyPage )
	Text( 1,  "����� ��������� ", JumpPage, 3 )
	Talk( 2,  "������, �� � ���� ������������ ����� �� ����� " )
	
	InitTrade()
	Weapon(	7476	)
	Weapon(	7491	)
	Weapon(	7492	)
	Weapon(	7493	)
	Weapon(	7742	)

	Talk( 3, "�������, ������� ��������� �� ������ �������� �� ������: " )
	InitTrigger()
	TriggerCondition( 1, HasCredit, 10 )
	TriggerAction( 1, DelRoleCredit, 10 )
	TriggerFailure( 1, JumpPage, 4 )
	TriggerAction( 1, GiveItem, 7625,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 3, "10 ��������� ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasCredit, 50 )
	TriggerAction( 1, DelRoleCredit, 50 )
	TriggerFailure( 1, JumpPage, 4 )
	TriggerAction( 1, GiveItem, 7622,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 3, "50 ��������� ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasCredit, 100 )
	TriggerAction( 1, DelRoleCredit, 100 )
	TriggerFailure( 1, JumpPage, 4 )
	TriggerAction( 1, GiveItem, 7623,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 3, "100 ��������� ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasCredit, 500 )
	TriggerAction( 1, DelRoleCredit, 500 )
	TriggerFailure( 1, JumpPage, 4 )
	TriggerAction( 1, GiveItem, 7624,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 3, "500 ��������� ", MultiTrigger, GetMultiTrigger(), 1)
	
	
	
	Talk( 4, "��� ������ � ��� �� ������� ���������. ")
	Text( 4, "����. ", CloseTalk)
end 

function for_newbie()

	Talk( 1, "������, �����! �������, ��� �� ������ ��������: " )
	Text( 1, "��� ������(100���) ", JumpPage, 2)
	Text( 1, "����. ", CloseTalk )
	Talk( 2, "����� �������� ��� ������, ������� ���:_1.�������� ������ - 100;_2.������ ������ ������� - 100;_3.������������� �������� ���� - 100;_4.����� �����-����� ������ - 5;_5.������ - 1.000.000. " )
	InitTrigger()
	TriggerCondition( 1, HasItem,3989,100 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3905,100 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1667,100 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8125,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 3989,100 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3905,100 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1667,100 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8125,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 7487,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2, "�������� ��� ������. ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "����. ", CloseTalk )
	
	Talk( 6, "�� ������� ���� ��������. ������ ��� ��������! " )
	Text( 6, "����. ", CloseTalk )
	
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
	
	Talk( 2, "����� ����������, ������� ��� 5000 ������! ")
	Text( 2, "�������. ", CloseTalk )
end

function change_items()

	Talk( 1, "����������� ����, �����! � ���� �������� ��� � ����-������ �� ������! �������: " )
	Text( 1, "���� ������� ",JumpPage, 2)
	Text( 1, "���� ���� ",JumpPage, 4)
	Text( 1, "���� ", CloseTalk )
	InitTrigger()
	TriggerCondition( 1, HasItem,8004,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8004,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 5000, 5000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2,  "���� ������� 1�� - 5� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8004,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8004,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 50000, 50000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2,  "���� ������� 10�� - 50� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8004,100 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8004,100 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 500000, 500000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 2,  "���� ������� 100�� - 500� ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem,3457,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3457,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 9000, 9000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4,  "���� ���� 1�� - 9� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3457,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 90000, 90000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4,  "���� ���� 10�� - 90� ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,100 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3457,100 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, AddMoney, 900000, 900000 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 4,  "���� ���� 100�� - 900� ", MultiTrigger, GetMultiTrigger(), 1)

end

function r_forsak()
	Talk( 1, "������, ������ ������! ���� �� ����� �� ����������� ����? ����� �������, ��� �� ������ �������� �� �����! ")
	Text( 1, "����������������� ", GoTo, 308, 310,  "abandonedcity" )
	Text( 1, "����� �������� �� ���� 1��. ", JumpPage, 2)
	Text( 1, "����� �������� �� ���� 1��. ", JumpPage, 4)
	Text( 1, "������� �� ���� 2��. ", JumpPage, 3)
	Text( 1, "�������� ���� ", SendExchangeData)
	Text( 1, "���� ",CloseTalk )

	InitExchange() 
	ExchangeData(	8041	,	1	,	3603	,	1	,	1)
	ExchangeData(	8042	,	1	,	3604	,	1	,	1)
	ExchangeData(	4837	,	1	,	5012	,	1	,	1)
	
	Talk( 2, "����� �������� �������� +4 ������� ������, ������� ��� 10 ������ ��������. ���� �����, �������: ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1624,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 1624,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8006,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 2,  "�������� ���� +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1624,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 1624,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8007,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 2,  "�������� ���� +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1624,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 1624,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8008,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 2,  "�������� �������� +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1624,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 1624,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8009,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 2,  "�������� ������������ +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1624,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 1624,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8010,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 2,  "�������� �������� +4 ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "����� �������� �������� +4 ������� ������, ������� ��� ������ ������� +4 � 1 ���� ����. ���� �����, �������: ")
	InitTrigger()
	TriggerCondition( 1, HasItem,7925,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3457,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 7925,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3457,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8006,1,102 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 3,  "�������� ���� +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7925,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3457,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 7925,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3457,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8007,1,102 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 3,  "�������� ���� +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7925,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3457,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 7925,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3457,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8008,1,102 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 3,  "�������� �������� +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7925,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3457,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 7925,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3457,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8009,1,102 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 3,  "�������� ������������ +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7925,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3457,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 7925,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3457,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8010,1,102 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 3,  "�������� �������� +4 ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 4, "����� �������� �������� +4 ������� ������, ������� ��� 10 ������ ��������. ���� �����, �������: ")
	InitTrigger()
	TriggerCondition( 1, HasItem,1625,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 1625,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8006,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 4,  "�������� ���� +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1625,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 1625,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8007,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 4,  "�������� ���� +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1625,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 1625,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8008,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 4,  "�������� �������� +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1625,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 1625,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8009,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 4,  "�������� ������������ +4 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,1625,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 1625,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8010,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 15 )
	Text( 4,  "�������� �������� +4 ", MultiTrigger, GetMultiTrigger(), 1)
	
	
	Talk( 15, "� ��� �� ������� �����! ")
	Text( 15, "���� ����������. ", CloseTalk )
	
	AddNpcMission ( 1102 )
	AddNpcMission ( 1103 )
end

function r_ds ()

 Talk( 1, "�����������. ��� ���� ������? " )
Text( 1, "����������������� ", GoTo, 302, 338,  "darkswamp" )
 Text( 1, "������ � ������ ", JumpPage, 2)
 Text( 1, "����� ��������� ", JumpPage, 4)
 Text( 1, "����� ���������� +7 ", JumpPage, 6)
 Text( 1, "����� �������� +7 ", JumpPage, 8)
 Text( 1, "��������� ", CloseTalk )    

	Talk( 2, "����� �������� ��������� �����, ����� ������� ���������:_1.������ - 50��;_2. ���� - 50��;_3. �������� - 50��._����� ����� �������� ������ � ������� �����. " )
	Text( 2, "��������� �� �������� ", JumpPage, 1)
	Text( 2, "��������� ", CloseTalk)
	
	
	
	Talk( 4, "���� ��� ������� �������� ��������. ������ ��� ����� ����� ���� ������ � ������ �����. ������ - 4 ������� ������������ ��������� � 1500 ��������� ������. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,4541,4 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3458,1500 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 4541,4 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3458,1500 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 4550,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 4, "�������� �������� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "��������� �� �������� ", JumpPage, 1)
	Text( 4, "��������� ", CloseTalk)
	
	Talk( 5, "��� �� ������� �������� ������������ ���������. ")
	Text( 5, "����. ", CloseTalk)
	
	Talk( 6, "����� �������� �������� +7 ������� ������, ������� ��� 15 ���� ����� � 5 ���� ����. ���� �����, �������: ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3927,15 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3457,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3927,15 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3457,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8011,1,102 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6,  "�������� ���� +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3927,15 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3457,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3927,15 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3457,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8012,1,102 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6,  "�������� ���� +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3927,15 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3457,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3927,15 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3457,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8013,1,102 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6,  "�������� �������� +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3927,15 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3457,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3927,15 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3457,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8014,1,102 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6,  "�������� ������������ +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3927,15 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3457,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3927,15 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3457,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8015,1,102 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6,  "�������� �������� +7 ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 7, "��� �� ������� ����������, ����� �������� ��������. ")
	Text( 7, "����. ", CloseTalk)
	
	Talk( 8, "�� ������ �������� ���� ������� +7 � 1 ���� ���� �� ������ �������� +7 ������� ������! ")
	InitTrigger()
	TriggerCondition( 1, HasItem,7926,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3457,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 7926,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3457,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8011,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 8,  "�������� ���� +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7926,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3457,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 7926,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3457,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8012,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 8,  "�������� ���� +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7926,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3457,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 7926,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3457,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8013,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 8,  "�������� �������� +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7926,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3457,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 7926,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3457,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8014,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 8,  "�������� ������������ +7 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,7926,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3457,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 7926,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3457,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8015,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 8,  "�������� �������� +7 ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "����. ", CloseTalk)
	
	
	AddNpcMission ( 1104 )
	AddNpcMission ( 1105 )
	AddNpcMission ( 1106 )
	AddNpcMission ( 1107 )
	
end

function some_items()
	Talk(1, "������. � ������ ������������� ���������. ������ ���������? ")
	Text(1, "���������. ", BuyPage )
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
	Talk( 1, "������, �����! � ������� �������� �������� ���� �������� �� ���� ��������! ������� ��� 2 ���� �������� � ������ ��������! ")	
	InitTrigger()
	TriggerCondition( 1, HasItem,2332,2 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8043,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 2332,2 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8043,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 5002,2,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 1,  "�������� ���� ", MultiTrigger, GetMultiTrigger(), 1)
end

function r_ds2()
	Talk( 1, "������, �����! ��� ��? ")
	Text( 1, "������ �������� ", JumpPage, 2)
	Text( 1, "��������� �������� ", JumpPage, 3)
	Text( 1, "������ �������� ", JumpPage, 6)

	Talk( 2, "����� �������� ������ ��������, ��� �����:_1.������ ����� ������� ��������;_2.������ ����� ������� ��������;_3.������ ����� ������� ��������;_4.��������� ����� ������� ��������;_5.��������;_6. ��������� ���� - 2000��;_7. ������ - 5.000.000. ")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerCondition( 1, HasItem,8090,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8091,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8092,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8093,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,4550,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3458,2000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, TakeItem, 8090,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8091,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8092,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8093,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 4550,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3458,2000 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8108,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 2, "��������  ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "��������� �� �������� ", JumpPage, 1)
	Text( 2, "��������� ", CloseTalk)
	
	Talk( 7, "� ��� ������������ ����! ")
	Text( 7, "��������� ", CloseTalk)
	
	Talk( 3, "������, ��� ���� ����������: ")
	Text( 3, "�������� ", JumpPage, 4 )
	Text( 3, "������ ", JumpPage, 5 )
	
	Talk( 4, "��� �������� �������� �������� ������� ���:_1. �������� ������������ ��������� - 10 ��;_2.������������� �������� ���� - 280 ��;_3. �������� �������� - 1��;_4. ��������� ���� - 700��;_5. ������ - 3.000.000;_5. ���� � �������� +7 - 20��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,4541,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1667,280 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3604,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3458,700 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerCondition( 1, HasItem,7926,20 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 4541,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1667,280 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3604,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3458,700 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, TakeItem, 7926,20 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 5011,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 4,  "�������� �������� ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 5, "��� �������� ������ �������� ������� ���:_1. �������� ������������ ��������� - 6 ��;_2.������������� �������� ���� - 180 ��;_3. ������ �������� - 1��;_4. ��������� ���� - 400��;_5. ������ - 1.500.000;_5. ���� � �������� +7 - 12��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,4541,6 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1667,180 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3603,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3458,400 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 1500000 )
	TriggerCondition( 1, HasItem,7926,12 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 4541,6 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1667,180 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3603,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3458,400 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 1500000 )
	TriggerAction( 1, TakeItem, 7926,12 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 5010,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 5,  "�������� ������ ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk(6, "������ �������� �������� ������ ��������. ����� �������� ���, ������� ���:_1. ���� � �������� +7 - 20��;_2. ������ - 4.000.000;_3. ����� - 150 ��;_4. ��������� ����� - 200 ��;_5. ����� � ������ - 250 ��;_6. ����-����� - 50 ��;_7. �������� - 1��;_8. ��������� ���� - 3000��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,7926,20 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 4000000 )
	TriggerCondition( 1, HasItem,3927,150 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1593,200 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1846,250 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,4343,50 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,4550,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3458,3000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 7926,20 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 4000000 )
	TriggerAction( 1, TakeItem, 3927,150 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1593,200 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1846,250 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 4343,50 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 4550,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3458,3000 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8043,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	Text( 6,  "�������� ������ ", MultiTrigger, GetMultiTrigger(), 1)
	
end

function medal_etc()
	Talk( 1, "������, ������! �������, ��� ���� ����������: ")
	Text( 1, "������ ������ ", JumpPage, 2)
	Talk( 2, "����� �������� ������ ������, ������� ���:_1. ������ - 2.500.000;_2. ��������� ���� - 100��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,3458,100 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasMoney, 2500000 )
	TriggerAction( 1, TakeItem, 3458,100 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeMoney, 2500000 )
	TriggerAction( 1, GiveItem, 3849, 1, 97 )
	Text( 2,  "�������� ������ ������ ", MultiTrigger, GetMultiTrigger(), 1)
end

function BT_NewUser001()

	Talk( 1, "����������: ����������, � �������� ��������. � ������� �� ������� ���� ������������� ����������������. ���� ���� ���-�� ������, ������ ����." )
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
	Text( 1, "� ��� �����",  CloseTalk)
end


--����� ������
function cm_1()
	Talk( 1, "������, ���! � ���� �� ������ �������� ���� ��� � ����� ������ �� ���-�� ������: ")
	Text( 1, "[1]��������� +10 ", JumpPage, 2)
	Text( 1, "[2]��������� +10 ", JumpPage, 7)
	Text( 1, "��������� ����� ", JumpPage, 3)
	Text( 1, "��������� ����(300���) ", JumpPage, 4)
	Text( 1, "���� ", CloseTalk )
	
	Talk( 2, "����� �������� �������� +10, ������� ���:_1. ����� ������ - 3��;_2. ����� ��������� II - 7��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8099,7 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8101,3 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8099,7 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8016,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 2, "���� +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8099,7 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8101,3 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8099,7 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8017,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 2, "��� +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8099,7 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8101,3 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8099,7 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8018,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 2, "�������� +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8099,7 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8101,3 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8099,7 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8019,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 2, "������������ +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8099,7 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8101,3 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8099,7 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8020,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 2, "�������� +10 ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "���� ", CloseTalk )
	
	Talk( 7, "����� �������� �������� +10, ������� ���:_1. ����� ������ - 7��;_2. ����� ��������� II - 3��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,7 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8099,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8101,7 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8099,3 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8016,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "���� +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,7 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8099,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8101,7 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8099,3 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8017,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "��� +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,7 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8099,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8101,7 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8099,3 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8018,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "�������� +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,7 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8099,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8101,7 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8099,3 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8019,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "������������ +10 ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,8101,7 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8099,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8101,7 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8099,3 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8020,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "�������� +10 ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 7, "���� ", CloseTalk )
	
	Talk(3, "����� �������� ��������� ��������� ����� � ���������� 3, ������� ���:_1. ������ ������� - 5��;_2. ������ ���� - 5��;_3. ����� ������ - 5��;_4. ����� ��������� II - 5��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,508,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,506,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8101,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8099,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 508,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 506,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8101,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8099,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 3097,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 3, "�������� �3 ", MultiTrigger, GetMultiTrigger(), 1)InitTrigger()
	Text( 3, "���� ", CloseTalk )
	
	Talk( 4, "�������, ��� �� ������ ��������: ")
	Text( 4, "�������� ����", JumpPage, 5)
	Text( 4, "������ ����", JumpPage, 6)
	Text( 4, "����", CloseTalk)
	
	Talk( 5, "����� �������� ������ ��������� ��������� �������� �� ����, ������� ���:_1. ������ ���� - 120��;_2. ������ ������� - 120��;_3. ��������� ���� - 4000 ��;_4. ������� ������ ������ - 3��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,508,120 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,506,120 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3458,4000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1032,3 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 508,120 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 506,120 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3458,4000 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1032,3 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8062,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "�������� �������� ", MultiTrigger, GetMultiTrigger(), 1)InitTrigger()
	Text( 5, "����", CloseTalk)
	
	Talk( 6, "����� �������� ������ ����, ������� ���:_1. ������ ���� - 80��;_2. ������ ������� - 80��_3. ��������� ���� - 2500 ��;_4. ������� ������ ������ - 1��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,508,80 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,506,80 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3458,2500 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1032,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 508,80 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 506,80 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 3458,2500 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 1032,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8063,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 6, "�������� ������ ", MultiTrigger, GetMultiTrigger(), 1)InitTrigger()
	Text( 6, "����", CloseTalk)
	
	Talk( 10, "��� �� ������� ���� ��� ������! ")
	Text( 10, "����. ", CloseTalk)
end

--������ ������
function cm_2()
	Talk( 1, "������, ���! � ���� �� ������ �������� ���������� � ������ � ��������� ����. �������, ��� ���� ����������: ")
	Text( 1, "������ ���������� ����(300���) ", JumpPage, 2)
	Text( 1, "������ ������ ����(300���) ", JumpPage, 3)
	Text( 1, "����� ����� ������� ", JumpPage, 4)
	Text( 1, "����� ����� ������ ", JumpPage, 5)
	Text( 1, "���� ", CloseTalk )
	
	Talk( 2, "����� �������� ������ ���������� ����, ������� ���:_1. ����� ������ 1 - 30��;_2. ����� ������ 2 - 30��;_3. ����� ������ 3 - 30��;_4. ����� ������ 4 - 30��;_5. ������ ���� - 10��_6. ��������� ���� - 10000��;_7. ������� ������ ������ - 7��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8095,30 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8096,30 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8097,30 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8098,30 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,506,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3458,10000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1032,7 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8095,30 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8096,30 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8097,30 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8098,30 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 506,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem,3458,10000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem,1032,7 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, GiveItem, 8044,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 2, "�������� ���������� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "����", CloseTalk)
	
	Talk( 3, "����� �������� ������ ������ ����, ������� ���:_1. ���� ����� - 50��;_2. ���� ������ - 50��;_3. ���� ������ - 50��;_4. ���� ����� - 50��;_5. ������ ������� - 30��;_6. ��������� ���� - 8000��;_7. ������� ������ ������ - 7��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8102,50 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8103,50 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8104,50 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8105,50 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,508,30 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,3458,8000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,1032,7 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8102,50 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8103,50 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8104,50 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8105,50 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 508,30 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem,3458,8000 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem,1032,7 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, GiveItem, 8045,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 3, "�������� ������ ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "����", CloseTalk)
	
	Talk( 4, "����� �������� 2 ���� ����, ������� ��� 2 ���� �������� �  ������ ������ ����. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,5002,2 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8045,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 5002,2 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8045,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 5016,2,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 4, "�������� ���� ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 5, "����� �������� ������ ����� ������, ������� ���:_1. ���������� ����� - 15��. ")
	InitTrigger()
	TriggerCondition( 1, HasItem,8100,15 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8100,15 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 7454,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "�������� ������ ", MultiTrigger, GetMultiTrigger(), 1)
	
	
	Talk( 10, "��� �� ������� ���� ��� ������! ")
	Text( 10, "����. ", CloseTalk)
end

--�������������� ������
function cm_3()
	Talk( 1, "������, ���! ��� �� ������? ")
	Text( 1, "����� � ��� ", Garner2RequestReorder)
	Text( 1, "��� ����� ������ ", Garner2GetWiner)
	Text( 1, "����� ������ ", JumpPage, 2)
	
	Talk(2, "��� ��� 5 ����� ������� ������ � � ��� ���� 1 ������� ������ ������ " )
	InitTrigger()
	TriggerCondition( 1, HasItem,1031,5 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 1031,5 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 1032,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "�������� ", MultiTrigger, GetMultiTrigger(), 1)
end

function items_po()
	Talk(1, "������, ����. � ���� ������ ���� ���������� ��������! ")
	Text(1, "�������� ����� �������! ", JumpPage, 2)
	Text(1, "���� ", CloseTalk)
	
	Talk(2, "���� �������� ���� ����� ������� + 1 ���� ���� �� ��, ��� ��� �����. �������: " )
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8004,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3457,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8004,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 0453,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "������ ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8004,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3457,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8004,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 0454,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "����������� ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8004,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3457,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8004,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 0455,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "����������� ������ ", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerCondition( 1, HasItem,8004,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3457,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, TakeItem, 8004,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 0456,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "����������� �������� ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 5, "� ��� �� ������� ����. ")
	Text( 5, "���� ", CloseTalk)
end

function tickets()
	Talk( 1, "������. � ������ ������. ")
	Text( 1, "������ ", BuyPage)
	InitTrigger()
	Other(   4602   )
	Other(   3048   )
	Other(   3049   )
	Other(   3050   )
	Other(   3051   )
	Other(   3054   )
end

function change_medal()
	Talk( 1, "����� ������ ������ ������ �� �����! ")
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  2 ) --�� ������� ������
	TriggerCondition( 1, HasItem,8109,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8109,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8110,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "1�� --> 2�� ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  3 ) --�� ������� ������
	TriggerCondition( 1, HasItem,8110,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8110,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8111,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "2�� --> 3�� ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  4 ) --�� ������� ������
	TriggerCondition( 1, HasItem,8111,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8111,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8112,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "3�� --> 4�� ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, Check_Reset,  5 ) --�� ������� ������
	TriggerCondition( 1, HasItem,8112,1 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 8112,1 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 8113,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "4�� --> 5�� ", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "����� �������� ������ 1 ������ �� 2, ��� �����:_1. ������ ������� ������;_2. ������� ����� - 2��. ")
	Text( 2, "����. ", CloseTalk )
	
	Talk( 3, "����� �������� ������ 2 ������ �� 3, ��� �����:_1. ������ ������� ������;_2. ������� ����� - 3��. ")
	Text( 3, "����. ", CloseTalk )
end

function NP_telep()
	Talk( 1, "������ ������� �� ������ �������� � ��������� ���� � ������� ������ ����������? ")
	Text( 1, "����������������� ", GoTo, 697, 1043,  "jialebi" )
	Text( 1, "����. ", CloseTalk )
end

function wing_telep()
	Talk( 1, "������ ������� �� ������ ������, ����� ���������� ����������� ������? ")
	Text( 1, "����������������� ", GoTo, 61, 48,  "PyramidCity" )
	Text( 1, "����. ", CloseTalk )
end

function hitdodje()
	Talk( 1, "������, ���! � ���� �� ������ �������� ���� ���� ��: ")
	Text( 1, "���� ����(+100 ���� ���������)", JumpPage, 2)
	Text( 1, "��������� �����(+100 � ���������)", JumpPage, 3)
	
	Text( 2, "����� 1 ���", JumpPage, 4)
	Text( 2, "����� 4 ���� ", JumpPage, 5)
	Text( 2, "����� 16 �����", JumpPage, 6)
	Text( 2, "���� ", CloseTalk )
	
	Text( 3, "����� 1 ����", JumpPage, 7)
	Text( 3, "����� 4 ����� ", JumpPage, 8)
	Text( 3, "����� 16 ������", JumpPage, 9)
	Text( 3, "���� ", CloseTalk )
	Talk( 4, "����� �������� ���, ������� ���:_10�� �����. ") -- ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3457,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 15772,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 4, "1�� ��� ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 5, "����� �������� 4 ����, ������� ���:_40�� �����. ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,40 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3457,40 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 15772,4,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "4�� ���� ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 6, "����� �������� 16 �����, ������� ���:_160�� �����. ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,160 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3457,160 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 15772,16,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 6, "16�� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 7, "����� �������� ����, ������� ���:_10�� �����. ") --�����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,10 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3457,10 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 15773,1,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "1�� ���� ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 8, "����� �������� 4 �����, ������� ���:_40�� �����. ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,40 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3457,40 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 15773,4,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 8, "4�� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 9, "����� �������� 16 ������, ������� ���:_160�� �����. ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,160 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
	TriggerAction( 1, TakeItem, 3457,160 ) -- ��� ������� "�������" �������� � � ����� ����������
	TriggerAction( 1, GiveItem, 15773,16,101 ) -- ��� ������� ������ �������� (ID, ���-��)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 9, "16�� ������ ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 10, "��� �� ������� ���� ��� ������! ")
	Text( 10, "����. ", CloseTalk)
end