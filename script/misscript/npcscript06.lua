--------------------------------------------------------------------------
--									--
--									--
--		NPCScript06.lua Created by knight.gong 2005.7.12.	--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading NPCScript06.lua" )

function kul_tp ()

--Some Chineze Blabla
	local CurMapName1 = "garner"
	local CurMapName2 = "guildwar"
	local CurMapName3 = "hell4"
	local CurMapName4 = "abandonedcity"
	local CurMapName5 = "garner2"
	local CurMapName6 = "zonagg"
	local CurMapName7 = "darkswamp" 
	local CurMapName8 = "hell5" 
 	local CurMapName9 = "hell"
	--local CurMapName10 = "binglang2"
	local CurMapName11 = "jialebi"
	local CurMapName12 = "hell2"
	local CurMapName13 = "hell3"
	--local CurMapName14 = "puzzleworld"
	local CurMapName15 = "garner"
	local CurMapName16 = "mjing1"



	--������Ѩ��������
	local GoTo01X = 1901
	local GoTo01Y = 2783
	local GoTo01M = CurMapName1

	--������Ѩ��������
	local GoTo02X = 290
	local GoTo02Y = 115
	local GoTo02M = CurMapName2

	local GoTo02X = 330
	local GoTo02Y = 510
	local GoTo02M = CurMapName2

	local GoTo02X = 410
	local GoTo02Y = 278
	local GoTo02M = CurMapName2

	local GoTo02X = 291
	local GoTo02Y = 331
	local GoTo02M = CurMapName2

	local GoTo02X = 225
	local GoTo02Y = 300
	local GoTo02M = CurMapName2

	--������Ѩ��������
	local GoTo03X = 56
	local GoTo03Y = 32
	local GoTo03M = CurMapName3

	--������Ѩ��������
	local GoTo04X = 307	
	local GoTo04Y = 309
	local GoTo04M = CurMapName4

	local GoTo04X = 307
	local GoTo04Y = 309
	local GoTo04M = CurMapName4

	--������Ѩ��������
	local GoTo05X = 136
	local GoTo05Y = 135
	local GoTo05M = CurMapName5

	local GoTo05X = 78
	local GoTo05Y = 134
	local GoTo05M = CurMapName5

	local GoTo05X = 191
	local GoTo05Y = 100
	local GoTo05M = CurMapName5

	local GoTo05X = 165
	local GoTo05Y = 88
	local GoTo05M = CurMapName5

	local GoTo05X = 102
	local GoTo05Y = 86
	local GoTo05M = CurMapName5

	local GoTo06X = 70
	local GoTo06Y = 70
	local GoTo06M = CurMapName6

	local GoTo05X = 150
	local GoTo05Y = 36
	local GoTo05M = CurMapName5

	--������Ѩ��������
	local GoTo07X = 297
	local GoTo07Y = 300
	local GoTo07M = CurMapName7
 
	--������Ѩ��������
	local GoTo08X = 47
	local GoTo08Y = 108
	local GoTo08M = CurMapName8

	local GoTo09X = 2376
	local GoTo09Y = 301
	local GoTo09M = CurMapName9

	--������Ѩ��������
	local GoTo10X = 124
	local GoTo10Y = 171
	local GoTo10M = CurMapName10

	--������Ѩ��������
	local GoTo11X = 190
	local GoTo11Y = 815
	local GoTo11M = CurMapName11

	--������Ѩ��������
	local GoTo12X = 24
	local GoTo12Y = 73
	local GoTo12M = CurMapName12

	--������Ѩ��������
	local GoTo13X = 34
	local GoTo13Y = 34
	local GoTo13M = CurMapName13

	local GoTo14X = 36
	local GoTo14Y = 20
	local GoTo14M = CurMapName14

	local GoTo15X = 2273
	local GoTo15Y = 1122
	local GoTo15M = CurMapName15

	local GoTo16X = 379
	local GoTo16Y = 397
	local GoTo16M = CurMapName16


		Talk( 1, " ����������: ������ � ���� ��������������� ���� ���� ������! ������� ���� �� ������! " )
		Text( 1, " ���� ���� 1000 ����� ", JumpPage, 2 )
                Text( 1, " ���� � ������ ", JumpPage, 21 )
		Text( 1, " ���� ���� ���� ", JumpPage, 7 )
		--Text( 1, " ������� ����� ", JumpPage, 4 )
								--Text( 1, " ���� � �� ����! ", JumpPage, 11 )

		--Text( 1, " �������� �������� ---> ", JumpPage, 17 )

		Talk( 17, " ����������: ������ � ���� ��������������� ���� ���� ������! ������� ���� �� ������! " )
		Text( 17, " ���� �� ��������� �����! ", JumpPage, 3 )
								--Text( 17, " ���� �� ����� �������! ", JumpPage, 5 )
		--Text( 17, " ���� � ���������� ����! ", JumpPage, 6 )
		Text( 17, " ���� � ������! ", JumpPage, 21 )
		--Text( 17, " ���� � ��� ������� (��)! ", JumpPage, 15 )
		Text( 17, " �������� ---> ", JumpPage, 18 )
		Text( 17, " <--- ����� ", JumpPage, 1 )


		Talk( 18, " ����������: ������ � ���� ��������������� ���� ���� ������! ������� ���� �� ������! " )
		Text( 18, " ���� � ������ �������! ", JumpPage, 9 )
		Text( 18, " ���� � ������� 1-4! ", JumpPage, 12 )
		Text( 18, " ���� � ������� 5-7! ", JumpPage, 10 )
		Text( 18, " <--- ����� ", JumpPage, 17 )


		InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, " ����������: ������ � ���� ��������������� ���� � ���� ����-��� ����. �� ����� ����� �����?. " )
	Text( 2, " ��! ��� ��� ��� ����� ������ � ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 2, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	Talk( 3, " ����������: ������ � ���� ��������������� ���� �� ��������� �����. �� ����� ����� �����?. " )
	Text( 3, " ��! ����� �������! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 4, " ����������: ������ � ���� ��������������� ���� � ������� �����. �� ����� ����� �����?. " )
	Text( 4, " ��! ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 4, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 5, " ����������: ������ � ���� ��������������� ���� �� ����� �������. �� ����� ����� �����?. " )
	Text( 5, " ���! �������! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 5, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerCondition( 1, CheckTime)
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	Talk( 6, " ����������: ������ � ���� ��������������� ���� � ���������� ����. �� ����� ����� �����?. " )
	Text( 6, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	Talk( 7, " ����������: ������ � ���� ��������������� ���� � ���� ���� ���� . �� ����� ����� �����?. " )
	Text( 7, " ��! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 7, " ���, � ������! ", JumpPage, 1 )

		
		InitTrigger()
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	Talk( 9, " ����������: ������ � ���� ��������������� ���� � ������ �������. �� ����� ����� �����?. " )
	Text( 9, " ��! � ���� ��������� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 9, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo09X, GoTo09Y, GoTo09M )
	Talk( 10, " ����������: ������ � ���� ��������������� ���� � ������� 5-8. �� ����� ����� �����?. " )
	Text( 10, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 10, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerFailure( 1, JumpPage, 16 )
	Talk( 11, " ����������: ������ � ���� ��������������� ���� � �� ����. �� ����� ����� �����?. " )
	Text( 11, " ��! � ���� ������� �� ���� ������� �������! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 11, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	Talk( 12, " ����������: ������ � ���� ��������������� ���� � ������� 1-4. �� ����� ����� �����?. " )
	Text( 12, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 12, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	Talk( 13, " ����������: ������ � ���� ��������������� ���� � ������� 9. �� ����� ����� �����?. " )
	Text( 13, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 13, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	Talk( 14, " ����������: ������ � ���� ��������������� ���� � ������� 10-17. �� ����� ����� �����?. " )
	Text( 14, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 14, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo14X, GoTo14Y, GoTo14M )
	Talk( 15, " ����������: ������ � ���� ��������������� ���� � ��� ������� (��). �� ����� ����� �����?. " )
	Text( 15, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 15, " ���, � ������! ", JumpPage, 1 )

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 94 )
	TriggerCondition( 1, LvCheck, "<", 301 )
	TriggerCondition( 1, HasItem, 1225,30 )
	TriggerAction( 1, TakeItem, 1225,30 )
	TriggerAction( 1, GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerFailure( 1, JumpPage, 19 )
	Talk( 20, " ����� ����������������� � ���� ���� ����� ���� 95��� � ��������� 30 �����! " )
	Text( 20, " ����������������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, " ���, � ������! ", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo16X, GoTo16Y, GoTo16M )
	Talk( 21, " ����������: ������ � ���� ��������������� ���� � ������. �� ����� ����� �����? " )
	Text( 21, " ����������������� ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 21, " ���, � ������! ", JumpPage, 1 )
 
	Talk( 16, " ������� ����� ����� � ���� �������� ������!!! " )

	Talk( 19, " ������� ����� ����� � ���� �������� ������ � 700 ���!!! " )
	
	AddNpcMission 	(47335)
	

end

function Unseal_95()
Talk( 1, " ��� �� �������� �� ����?! �� � ��������� ������� � ���?! � ������ �� ������� ����� ����� �����?! ���?! ����� ����������! " )
Text( 1, " ��, ���� 95 ���� ����� ", JumpPage, 2)
Text( 1, " ��, ���� 95 ���� ����� ", JumpPage, 8)

Talk( 2, " ��, ������ �� �������� ���� � ������� �������! " )
Text( 2, " ����� �����(����) ", JumpPage, 3)
Text( 2, " ���������� �����(����) ", JumpPage, 4)
Text( 2, " �������������� �����(��������) ", JumpPage, 5)
Text( 2, " ��� �����(���) ", JumpPage, 6)
Text( 2, " ���� 95 ������!(������) ", JumpPage, 7)

Talk( 8, " ��, ������ �� �������� ���� � ������� �������! " )
Text( 8, " ����� ��������� ��������(����) ", JumpPage, 9)
Text( 8, " ��������� �������(����) ", JumpPage, 10)
Text( 8, " ��������� ��������(��������) ", JumpPage, 11)
Text( 8, " ������ ����������(����) ", JumpPage, 12)
Text( 8, " �������� ���(���) ", JumpPage, 13)
Text( 8, " ���������� ��������� ��������(������) ", JumpPage, 14)

Talk(7," ����� 99 �����! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,99 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- ��� ������� �������� ������������ �� ���������
TriggerAction( 1, TakeItem, 3457,40 ) -- ��� ������� "�������" �������� � � ����� ����������
TriggerAction( 1, GiveItem, 6108,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
TriggerFailure( 1, JumpPage, 14)
Text(7," ������ ",MultiTrigger,GetMultiTrigger(),1)

Talk(3," ����� 115 �����! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,115 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- ��� ������� �������� ������������ �� ���������
TriggerAction( 1, TakeItem, 3457,40 ) -- ��� ������� "�������" �������� � � ����� ����������
TriggerAction( 1, GiveItem, 6109,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
TriggerFailure( 1, JumpPage, 14)
Text(3," ������ ",MultiTrigger,GetMultiTrigger(),1)

Talk(4," ����� 105 �����! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,105 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- ��� ������� �������� ������������ �� ���������
TriggerAction( 1, TakeItem, 3457,40 ) -- ��� ������� "�������" �������� � � ����� ����������
TriggerAction( 1, GiveItem, 6111,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
TriggerFailure( 1, JumpPage, 14)
Text(4," ������ ",MultiTrigger,GetMultiTrigger(),1)

Talk(5," ����� 105 �����! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,105 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- ��� ������� �������� ������������ �� ���������
TriggerAction( 1, TakeItem, 3457,40 ) -- ��� ������� "�������" �������� � � ����� ����������
TriggerAction( 1, GiveItem, 6110,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
TriggerFailure( 1, JumpPage, 14)
Text(5," ������ ",MultiTrigger,GetMultiTrigger(),1)

Talk(6," ����� 100 �����! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,100 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- ��� ������� �������� ������������ �� ���������
TriggerAction( 1, TakeItem, 3457,40 ) -- ��� ������� "�������" �������� � � ����� ����������
TriggerAction( 1, GiveItem, 6096,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
TriggerFailure( 1, JumpPage, 14)
Text(6," ������ ",MultiTrigger,GetMultiTrigger(),1)

Talk(9," ����� 115 �����! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,115 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- ��� ������� �������� ������������ �� ���������
TriggerAction( 1, TakeItem, 3457,40 ) -- ��� ������� "�������" �������� � � ����� ����������
TriggerAction( 1, GiveItem, 6105,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
TriggerFailure( 1, JumpPage, 14)
Text(9," ������ ",MultiTrigger,GetMultiTrigger(),1)

Talk(10," ����� 105 �����! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,105 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- ��� ������� �������� ������������ �� ���������
TriggerAction( 1, TakeItem, 3457,40 ) -- ��� ������� "�������" �������� � � ����� ����������
TriggerAction( 1, GiveItem, 6107,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
TriggerFailure( 1, JumpPage, 14)
Text(10," ������ ",MultiTrigger,GetMultiTrigger(),1)

Talk(11," ����� 105 �����! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,105 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- ��� ������� �������� ������������ �� ���������
TriggerAction( 1, TakeItem, 3457,40 ) -- ��� ������� "�������" �������� � � ����� ����������
TriggerAction( 1, GiveItem, 6106,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
TriggerFailure( 1, JumpPage, 14)
Text(11," ������ ",MultiTrigger,GetMultiTrigger(),1)

Talk(12," ����� 110 �����! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,110 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- ��� ������� �������� ������������ �� ���������
TriggerAction( 1, TakeItem, 3457,40 ) -- ��� ������� "�������" �������� � � ����� ����������
TriggerAction( 1, GiveItem, 6099,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
TriggerFailure( 1, JumpPage, 14)
Text(12," ������ ",MultiTrigger,GetMultiTrigger(),1)

Talk(13," ����� 99 �����! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,99 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- ��� ������� �������� ������������ �� ���������
TriggerAction( 1, TakeItem, 3457,30 ) -- ��� ������� "�������" �������� � � ����� ����������
TriggerAction( 1, GiveItem, 6104,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
TriggerFailure( 1, JumpPage, 14)
Text(13," ������ ",MultiTrigger,GetMultiTrigger(),1)

Talk(14," ����� 105 �����! " )
InitTrigger()
TriggerCondition( 1, HasItem,3457,105 ) --��� ������� �������� ����� ���� � � ����� ���������� ������ ���� � �������
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- ��� ������� �������� ������������ �� ���������
TriggerAction( 1, TakeItem, 3457,40 ) -- ��� ������� "�������" �������� � � ����� ����������
TriggerAction( 1, GiveItem, 6098,1,4 ) -- ��� ������� ������ �������� (ID, ���-��)
TriggerFailure( 1, JumpPage, 14)
Text(14," ������ ",MultiTrigger,GetMultiTrigger(),1)

Talk(15," �� ��� ������, ������� �������� ����? ����������! " )
Text(15," �����, ��������, ������ ��� �� ����!! ",CloseTalk )
Text(15," �������� ������! ",JumpPage, 1 )

end

function r_talk10 ()

Talk( 1, " ������ , � ��������� ��� �� ������ ������ !  " )
Text( 1, " ������ ��� ������ ", JumpPage, 2)
Text( 1, " ������ ��� ������ ", JumpPage, 10)

Talk( 2, " ������� �� ������� , ��� ������� ���� " )
Text( 2, " ���� ������ ", JumpPage, 3)
Text( 2, " ���� ������ ", JumpPage, 4)
Text( 2, " ���� ������ ", JumpPage, 5)

Text( 10, " ��� ����� ��������� ", JumpPage, 6)
Text( 10, " ��� ����� ���������� ", JumpPage, 22)
Text( 10, " ��� ����� ", JumpPage, 7)
Text( 10, " ��� ", JumpPage, 8)
Text( 10, " ����� ", JumpPage, 9)
Text( 10, " ����� ��� ", JumpPage, 13)
Text( 10, " ����� �� ", JumpPage, 11)
Text( 10, " ����� �� ", JumpPage, 12)

Talk(22," � ���� 150 ��� ��� , 150 ��� ����� ,    100 ��� ��������� , 10 ����� ������ , 4 ����� ����� , 50 ����� ��� , 150 ������ ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )
TriggerAction( 1, TakeItem, 7465,100 )

TriggerAction( 1, GiveItem, 4270,2,4 )
TriggerFailure( 1, JumpPage, 19)
Text(22," ����� ��� ��� �2 ",MultiTrigger,GetMultiTrigger(),1)


Talk(6," � ���� 150 ��� ��� , 150 ��� ����� ,    100 ��� ��������� , 10 ����� ������ , 4 ����� ����� , 50 ����� ��� , 150 ������ ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 7465,100 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )

TriggerAction( 1, GiveItem, 115,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(6," ����� ��� ��� ",MultiTrigger,GetMultiTrigger(),1)

Talk(7," � ���� 150 ��� ��� , 150 ��� ����� ,    100 ��� ��������� , 10 ����� ������ , 4 ����� ����� , 50 ����� ��� , 150 ������ ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )
TriggerAction( 1, TakeItem, 7465,100 )

TriggerAction( 1, GiveItem, 7,2,4 )
TriggerFailure( 1, JumpPage, 19)
Text(7," ����� ��� ��� �2 ",MultiTrigger,GetMultiTrigger(),1)


Talk(8," � ���� 150 ��� ��� , 150 ��� ����� ,    100 ��� ��������� , 10 ����� ������ , 4 ����� ����� , 50 ����� ��� , 150 ������ ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 7465,100 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )

TriggerAction( 1, GiveItem, 117,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(8," ����� ��� ��� ",MultiTrigger,GetMultiTrigger(),1)


Talk(9," � ���� 150 ��� ��� , 150 ��� ����� ,    100 ��� ��������� , 10 ����� ������ , 4 ����� ����� , 50 ����� ��� , 150 ������ ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 7465,100 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )

TriggerAction( 1, GiveItem, 1411,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(9," ����� ��� ����� ",MultiTrigger,GetMultiTrigger(),1)

Talk(13," � ���� 150 ��� ��� , 150 ��� ����� ,    100 ��� ��������� , 10 ����� ������ , 4 ����� ����� , 50 ����� ��� , 150 ������ ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 7465,100 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )

TriggerAction( 1, GiveItem, 79,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(13," ����� ��� ����� ��� ",MultiTrigger,GetMultiTrigger(),1)


Talk(11," � ���� 150 ��� ��� , 150 ��� ����� ,    100 ��� ��������� , 10 ����� ������ , 4 ����� ����� , 50 ����� ��� , 150 ������ ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 7465,100 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )

TriggerAction( 1, GiveItem, 109,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(11,"����� ��� ����� �� ",MultiTrigger,GetMultiTrigger(),1)


Talk(12," � ���� 150 ��� ��� , 150 ��� ����� ,    100 ��� ��������� , 10 ����� ������ , 4 ����� ����� , 50 ����� ��� , 150 ������ ,")
InitTrigger()
TriggerCondition( 1, HasItem,7461,150 )
TriggerCondition( 1, HasItem,7462,150 )
TriggerCondition( 1, HasItem,7463,10 )
TriggerCondition( 1, HasItem,7464,4 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,150 )
TriggerCondition( 1, HasItem,7465,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7461,150 )
TriggerAction( 1, TakeItem, 7462,150 )
TriggerAction( 1, TakeItem, 7463,10 )
TriggerAction( 1, TakeItem, 7464,4 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,150 )
TriggerAction( 1, TakeItem, 7465,100 )
TriggerAction( 1, GiveItem, 111,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(12," ����� ��� ����� �� ",MultiTrigger,GetMultiTrigger(),1)


Talk(3," ���� ����������� �������� 1) �� ������� ������ ����� ��� 10 �������� �����, 30 ������ ������ , 30 ������ ������ �������� � ����������� ������ 2) 1000 ����� �� 1000 3)300 ����� ���� 4)100 ����� ���.5) 100 ���������� ������ ")
InitTrigger()
TriggerCondition( 1, HasItem,7455,10 )
TriggerCondition( 1, HasItem,7456,30 )
TriggerCondition( 1, HasItem,7457,30 )
TriggerCondition( 1, HasItem,7458,1 )
TriggerCondition( 1, HasItem,7444,1000 )
TriggerCondition( 1, HasItem,7454,300 )
TriggerCondition( 1, HasItem,855,100 )
TriggerCondition( 1, HasItem,271,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7455,10 )
TriggerAction( 1, TakeItem, 7456,30 )
TriggerAction( 1, TakeItem, 7457,30 )
TriggerAction( 1, TakeItem, 7458,1 )
TriggerAction( 1, TakeItem, 7444,1000 )
TriggerAction( 1, TakeItem, 7454,300 )
TriggerAction( 1, TakeItem, 855,100 )
TriggerAction( 1, TakeItem, 271,100 )

TriggerAction( 1, GiveItem, 825,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(3," ��, � ���� ���� ������! ",MultiTrigger,GetMultiTrigger(),1)


Talk(4," ���� ����������� �������� 1) �� ������� ������ ����� ��� 5 �������� �����, 15 ������ ������ , 15 ������ ������ �������� � ����������� ������ 2) 1000 ����� �� 1000 3)150 ����� ���� 4)50 ����� ���.5) 50 ���������� ������ ")
InitTrigger()
TriggerCondition( 1, HasItem,7455,5 )
TriggerCondition( 1, HasItem,7456,15 )
TriggerCondition( 1, HasItem,7457,15 )
TriggerCondition( 1, HasItem,7458,1 )
TriggerCondition( 1, HasItem,7444,1000 )
TriggerCondition( 1, HasItem,7454,150 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,50 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7455,5 )
TriggerAction( 1, TakeItem, 7456,15 )
TriggerAction( 1, TakeItem, 7457,15 )
TriggerAction( 1, TakeItem, 7458,1 )
TriggerAction( 1, TakeItem, 7444,1000 )
TriggerAction( 1, TakeItem, 7454,150 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,50 )

TriggerAction( 1, GiveItem, 826,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(4," ��, � ���� ���� ������! ",MultiTrigger,GetMultiTrigger(),1)


Talk(5," ���� ����������� �������� 1) �� ������� ������ ����� ��� 5 �������� �����, 15 ������ ������ , 15 ������ ������ �������� � ����������� ������ 2) 1000 ����� �� 1000 3)150 ����� ���� 4)50 ����� ���.5) 50 ���������� ������ ")
InitTrigger()
TriggerCondition( 1, HasItem,7455,5 )
TriggerCondition( 1, HasItem,7456,15 )
TriggerCondition( 1, HasItem,7457,15 )
TriggerCondition( 1, HasItem,7458,1 )
TriggerCondition( 1, HasItem,7444,1000 )
TriggerCondition( 1, HasItem,7454,150 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasItem,271,50 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7455,5 )
TriggerAction( 1, TakeItem, 7456,15 )
TriggerAction( 1, TakeItem, 7457,15 )
TriggerAction( 1, TakeItem, 7458,1 )
TriggerAction( 1, TakeItem, 7444,1000 )
TriggerAction( 1, TakeItem, 7454,150 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, TakeItem, 271,50 )

TriggerAction( 1, GiveItem, 827,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(5," ��, � ���� ���� ������! ",MultiTrigger,GetMultiTrigger(),1)




Talk( 19, "� ��� ���� , ���� !? " ) -- �������� ���� �� ���������� ����

end



function r_t123123xd ()


Talk( 1, " ������ , � ��������� ���-�� �� ���-��  " )
Text( 1, " ������ ��� ����� ", JumpPage, 2)

Talk( 2, " ������� �� ������� , ��� ������� ���� " )
Text( 2, " ������ ������� x1 ", JumpPage, 3)
Text( 2, " ������ ������� x10 ", JumpPage, 4)
Text( 2, " ������ ������� x3 �� ����� ", JumpPage, 5)
Text( 2, " ����� �� ����� ", JumpPage, 6)
Text( 2, " ������ ��������� ", JumpPage, 11)
Text( 2, " ��� � ������� ������ ----> ", JumpPage, 15)
Text( 15, " ����������� ������ ", JumpPage, 7)
Text( 2, " ������� � ��. ----> ", JumpPage, 16)
Text( 15, " ������� ������ ", JumpPage, 8)
Text( 15, " ������� ������ �������� ", JumpPage, 9)
Text( 15, " �������� ���� ", JumpPage, 10)
Text( 16, " �������  �99 ", JumpPage, 12)
Text( 16, " �������� ����� �99 ", JumpPage, 13)
Text( 16, " ���������� �99 ", JumpPage, 14)
Text( 16, " �������� ���� �99 ", JumpPage, 17)
Text( 16, " ����� ", JumpPage, 25)
Text( 16, " ����� �� ����� ", JumpPage, 26)

Talk(3," 100 ����� �� 1000 ������ , �� 1 �� ")
InitTrigger()

TriggerCondition( 1, HasItem,7444,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7444,100 )

TriggerAction( 1, GiveItem, 7445,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(3," ����� ��� ������� ",MultiTrigger,GetMultiTrigger(),1)


Talk(4," 1000 ����� �� 1000 ������ , �� 1 �� ")
InitTrigger()

TriggerCondition( 1, HasItem,7444,1000 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7444,1000 )

TriggerAction( 1, GiveItem, 7445,10,4 )
TriggerFailure( 1, JumpPage, 19)
Text(4," ����� ��� ������� ",MultiTrigger,GetMultiTrigger(),1)


Talk(5," � ����� ���� ���� 3 ������ �� 10 ������ ")
InitTrigger()

TriggerCondition( 1, HasItem,271,10 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,10 )

TriggerAction( 1, GiveItem, 7445,3,4 )
TriggerFailure( 1, JumpPage, 19)
Text(5," ����� ��� ������� ",MultiTrigger,GetMultiTrigger(),1)

Talk(6," � ����� ���� ���� 1000 ����� �� 35 ������ ")
InitTrigger()

TriggerCondition( 1, HasItem,271,35 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,35 )

TriggerAction( 1, GiveItem, 7444,1000,4 )
TriggerFailure( 1, JumpPage, 19)
Text(6," ����� ��� ������� ",MultiTrigger,GetMultiTrigger(),1)

Talk(7," � ����� ���� ���� ����������� ������ �� , 20 ����� ������ + 20 ����� ������ �������� � 30 ���������� ������ + 5 �������� ����� ")
InitTrigger()

TriggerCondition( 1, HasItem,7456,20 )
TriggerCondition( 1, HasItem,7457,20 )
TriggerCondition( 1, HasItem,271,30 )
TriggerCondition( 1, HasItem,7455,5 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7456,20 )
TriggerAction( 1, TakeItem, 7457,20 )
TriggerAction( 1, TakeItem, 271,30 )
TriggerAction( 1, TakeItem, 7455,5 )
TriggerAction( 1, GiveItem, 7458,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(7," ����� ��� ������ ",MultiTrigger,GetMultiTrigger(),1)

Talk(8," � ����� ���� ���� ������� ������ ��   25 ������ ")
InitTrigger()

TriggerCondition( 1, HasItem,271,25 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,25 )
TriggerAction( 1, GiveItem, 7456,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(8," ����� ��� ������� ",MultiTrigger,GetMultiTrigger(),1)

Talk(9," � ����� ���� ���� ������� ������ �������� �� 30 ������ ")
InitTrigger()

TriggerCondition( 1, HasItem,271,30 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,30 )
TriggerAction( 1, GiveItem, 7457,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(9," ����� ��� ������� ������ �������� ",MultiTrigger,GetMultiTrigger(),1)

Talk(10," � ����� ���� ���� �������� ���� �� �� 30 ������ ")
InitTrigger()

TriggerCondition( 1, HasItem,271,30 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,30 )
TriggerAction( 1, GiveItem, 7455,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(10," ����� ��� �������� ���� ",MultiTrigger,GetMultiTrigger(),1)

Talk(11," � ����� ���� ���� ������ ��������� ��  200 ������ ")
InitTrigger()

TriggerCondition( 1, HasItem,271,200 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,200 )
TriggerAction( 1, GiveItem, 7459,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(11," ����� ��� ������ ",MultiTrigger,GetMultiTrigger(),1)

Talk(12," � ����� ���� ���� ������� 5 �� �99 �� 100 ������ ")
InitTrigger()

TriggerCondition( 1, HasItem,271,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,100 )
TriggerAction( 1, GiveItem, 2791,99,4 )
TriggerFailure( 1, JumpPage, 19)
Text(12," ����� ��� ������� ",MultiTrigger,GetMultiTrigger(),1)

Talk(13," � ����� ���� ���� �������� ����� 5 �� �99 �� 100 ������ ")
InitTrigger()

TriggerCondition( 1, HasItem,271,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,100 )
TriggerAction( 1, GiveItem, 2792,99,4 )
TriggerFailure( 1, JumpPage, 19)
Text(13," ����� ��� ������� ",MultiTrigger,GetMultiTrigger(),1)

Talk(14," � ����� ���� ���� ���������� 5 �� �99 �� 100 ������ ")
InitTrigger()

TriggerCondition( 1, HasItem,271,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,100 )
TriggerAction( 1, GiveItem, 2793,99,4 )
TriggerFailure( 1, JumpPage, 19)
Text(14," ����� ��� ���������� ",MultiTrigger,GetMultiTrigger(),1)

Talk(17," � ����� ���� ���� �������� ���� 5 �� �99 �� 100 ������ ")
InitTrigger()

TriggerCondition( 1, HasItem,271,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,100 )
TriggerAction( 1, GiveItem, 2794,99,4 )
TriggerFailure( 1, JumpPage, 19)
Text(17," ����� ��� ��������� ���� ",MultiTrigger,GetMultiTrigger(),1)

Talk(25," � ����� ���� ���� 50 ���� �� 100 �������� �� ���������� ���������  ")
InitTrigger()

TriggerCondition( 1, HasItem,5710,100 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 5710,100 )
TriggerAction( 1, GiveItem, 3909,50,4 )
TriggerFailure( 1, JumpPage, 19)
Text(25," ����� ��� ����� ",MultiTrigger,GetMultiTrigger(),1)

Talk(26," � ����� ���� ���� 50 ���� �� 25 ������  ")
InitTrigger()

TriggerCondition( 1, HasItem,271,25 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 271,25 )
TriggerAction( 1, GiveItem, 3909,50,4 )
TriggerFailure( 1, JumpPage, 19)
Text(26," ����� ��� ����� ",MultiTrigger,GetMultiTrigger(),1)

Talk( 19, "������������ ��������" ) -- �������� ���� �� ���������� ����

	

end


function r_talk12222 ()

local CurMapName1 = "hell4"
--���������
local GoTo05X = 55
local GoTo05Y = 30
local GoTo05M = CurMapName1
InitTrigger()
TriggerAction( 1,  GoTo, GoTo05X, GoTo05Y, GoTo05M )
TriggerFailure(1, JumpPage, 2)
Talk(1," � ���� ����� �������� �������� ������� ")
Text( 1, " ��, ������� ����. ", MultiTrigger, GetMultiTrigger(), 1 )


Text( 1, " ������ ��� ����� ", JumpPage, 4)

Text( 4, " �������� ������� ", JumpPage, 7)
Text( 1, " ���� ������� ", JumpPage, 9)
Talk(7," 10 ��� �������,5000 ������,30 ���� I,10 ����������� �����,5000 ����� �������,300 ����� ���,20 ����� � 20 ����� ")

InitTrigger()
TriggerCondition( 1, HasItem,7506,10 )
TriggerCondition( 1, HasItem,271,5000 )
TriggerCondition( 1, HasItem,7450,30 )
TriggerCondition( 1, HasItem,7458,10 )
TriggerCondition( 1, HasItem,7445,5000 )
TriggerCondition( 1, HasItem,855,300 )
TriggerCondition( 1, HasItem,7490,10 )
TriggerCondition( 1, HasItem,7491,20 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7506,10 )
TriggerAction( 1, TakeItem, 271,5000 )
TriggerAction( 1, TakeItem, 7450,30 )
TriggerAction( 1, TakeItem, 7458,10 )
TriggerAction( 1, TakeItem, 7445,5000 )
TriggerAction( 1, TakeItem, 855,300 )
TriggerAction( 1, TakeItem, 7490,10 )
TriggerAction( 1, TakeItem, 7491,20 )
TriggerAction( 1, GiveItem, 5331,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(7," ����� ��� �������� ",MultiTrigger,GetMultiTrigger(),1)

Talk(9," 100 ������ ��������� ��� , 30 ������ ����� , 50 ����� ��� , 1 ������� ������ ")

InitTrigger()
TriggerCondition( 1, HasItem,7706,1 )
TriggerCondition( 1, HasItem,7703,75 )
TriggerCondition( 1, HasItem,7704,30 )
TriggerCondition( 1, HasItem,855,50 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7706,1 )
TriggerAction( 1, TakeItem, 7703,75 )
TriggerAction( 1, TakeItem, 7704,30 )
TriggerAction( 1, TakeItem, 855,50 )
TriggerAction( 1, GiveItem, 7506,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(9," ����� ��� ���� ",MultiTrigger,GetMultiTrigger(),1)


end


function kul_tp5 ()

--Some Chineze Blabla
	local CurMapName1 = "garner"
	local CurMapName2 = "lonetower"
	local CurMapName3 = "hell4"
	local CurMapName4 = "abandonedcity"
	local CurMapName5 = "garner2"
	local CurMapName6 = "zonagg"
	local CurMapName7 = "darkswamp" 
	local CurMapName8 = "hell5" 
 	local CurMapName9 = "hell"
	--local CurMapName10 = "binglang2"
	local CurMapName11 = "jialebi"
	local CurMapName12 = "hell2"
	local CurMapName13 = "hell3"
	--local CurMapName14 = "puzzleworld"
	local CurMapName15 = "garner"
	local CurMapName16 = "mjing1"



	--������Ѩ��������
	local GoTo01X = 998
	local GoTo01Y = 1282
	local GoTo01M = CurMapName1

	--������Ѩ��������
	local GoTo02X = 541
	local GoTo02Y = 270
	local GoTo02M = CurMapName2

	--������Ѩ��������
	local GoTo03X = 56
	local GoTo03Y = 32
	local GoTo03M = CurMapName3

	--������Ѩ��������
	local GoTo04X = 307	
	local GoTo04Y = 309
	local GoTo04M = CurMapName4

	local GoTo04X = 307
	local GoTo04Y = 309
	local GoTo04M = CurMapName4

	--������Ѩ��������
	local GoTo05X = 136
	local GoTo05Y = 135
	local GoTo05M = CurMapName5

	local GoTo05X = 78
	local GoTo05Y = 134
	local GoTo05M = CurMapName5

	local GoTo05X = 191
	local GoTo05Y = 100
	local GoTo05M = CurMapName5

	local GoTo05X = 165
	local GoTo05Y = 88
	local GoTo05M = CurMapName5

	local GoTo05X = 102
	local GoTo05Y = 86
	local GoTo05M = CurMapName5

	local GoTo06X = 70
	local GoTo06Y = 70
	local GoTo06M = CurMapName6

	local GoTo05X = 150
	local GoTo05Y = 36
	local GoTo05M = CurMapName5

	--������Ѩ��������
	local GoTo07X = 297
	local GoTo07Y = 300
	local GoTo07M = CurMapName7
 
	--������Ѩ��������
	local GoTo08X = 47
	local GoTo08Y = 108
	local GoTo08M = CurMapName8

	local GoTo09X = 2376
	local GoTo09Y = 301
	local GoTo09M = CurMapName9

	--������Ѩ��������
	local GoTo10X = 124
	local GoTo10Y = 171
	local GoTo10M = CurMapName10

	--������Ѩ��������
	local GoTo11X = 190
	local GoTo11Y = 815
	local GoTo11M = CurMapName11

	--������Ѩ��������
	local GoTo12X = 24
	local GoTo12Y = 73
	local GoTo12M = CurMapName12

	--������Ѩ��������
	local GoTo13X = 34
	local GoTo13Y = 34
	local GoTo13M = CurMapName13

	local GoTo14X = 36
	local GoTo14Y = 20
	local GoTo14M = CurMapName14

	local GoTo15X = 2273
	local GoTo15Y = 1122
	local GoTo15M = CurMapName15

	local GoTo16X = 379
	local GoTo16Y = 397
	local GoTo16M = CurMapName16


		Talk( 1, " ����������: ������ � ���� ��������� ���� � ���� ���� RAGE ������! " )
		Text( 1, " �������� ! ", JumpPage, 2 )
               Text( 1, " �������� ����� ", JumpPage, 3 )
		--Text( 1, " ���� ���� ���� ", JumpPage, 7 )
		--Text( 1, " ������� ����� ", JumpPage, 4 )
								--Text( 1, " ���� � �� ����! ", JumpPage, 11 )

		--Text( 1, " �������� �������� ---> ", JumpPage, 17 )

		Talk( 17, " ����������: ������ � ���� ��������������� ���� ���� ������! ������� ���� �� ������! " )
		Text( 17, " ���� �� ��������� �����! ", JumpPage, 3 )
								--Text( 17, " ���� �� ����� �������! ", JumpPage, 5 )
		--Text( 17, " ���� � ���������� ����! ", JumpPage, 6 )
		Text( 17, " ���� � ������! ", JumpPage, 21 )
		--Text( 17, " ���� � ��� ������� (��)! ", JumpPage, 15 )
		Text( 17, " �������� ---> ", JumpPage, 18 )
		Text( 17, " <--- ����� ", JumpPage, 1 )


		Talk( 18, " ����������: ������ � ���� ��������������� ���� ���� ������! ������� ���� �� ������! " )
		Text( 18, " ���� � ������ �������! ", JumpPage, 9 )
		Text( 18, " ���� � ������� 1-4! ", JumpPage, 12 )
		Text( 18, " ���� � ������� 5-7! ", JumpPage, 10 )
		Text( 18, " <--- ����� ", JumpPage, 17 )


		InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, " ����������: ������ � ���� ��������������� ���� � ���� ���� RAGE . �� ����� ����� ������?. " )
	Text( 2, " ��! �������� ! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 2, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	Talk( 3, " ����������: ������ � ���� ��������������� ���� � �������� ����� . �� ����� ����� ������?. " )
	Text( 3, " ��! ����� �������! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 4, " ����������: ������ � ���� ��������������� ���� � ������� �����. �� ����� ����� �����?. " )
	Text( 4, " ��! ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 4, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 5, " ����������: ������ � ���� ��������������� ���� �� ����� �������. �� ����� ����� �����?. " )
	Text( 5, " ���! �������! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 5, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerCondition( 1, CheckTime)
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	Talk( 6, " ����������: ������ � ���� ��������������� ���� � ���������� ����. �� ����� ����� �����?. " )
	Text( 6, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	Talk( 7, " ����������: ������ � ���� ��������������� ���� � ���� ���� ���� . �� ����� ����� �����?. " )
	Text( 7, " ��! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 7, " ���, � ������! ", JumpPage, 1 )

		
		InitTrigger()
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	Talk( 9, " ����������: ������ � ���� ��������������� ���� � ������ �������. �� ����� ����� �����?. " )
	Text( 9, " ��! � ���� ��������� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 9, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo09X, GoTo09Y, GoTo09M )
	Talk( 10, " ����������: ������ � ���� ��������������� ���� � ������� 5-8. �� ����� ����� �����?. " )
	Text( 10, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 10, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerFailure( 1, JumpPage, 16 )
	Talk( 11, " ����������: ������ � ���� ��������������� ���� � �� ����. �� ����� ����� �����?. " )
	Text( 11, " ��! � ���� ������� �� ���� ������� �������! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 11, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	Talk( 12, " ����������: ������ � ���� ��������������� ���� � ������� 1-4. �� ����� ����� �����?. " )
	Text( 12, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 12, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	Talk( 13, " ����������: ������ � ���� ��������������� ���� � ������� 9. �� ����� ����� �����?. " )
	Text( 13, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 13, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	Talk( 14, " ����������: ������ � ���� ��������������� ���� � ������� 10-17. �� ����� ����� �����?. " )
	Text( 14, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 14, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo14X, GoTo14Y, GoTo14M )
	Talk( 15, " ����������: ������ � ���� ��������������� ���� � ��� ������� (��). �� ����� ����� �����?. " )
	Text( 15, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 15, " ���, � ������! ", JumpPage, 1 )

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 94 )
	TriggerCondition( 1, LvCheck, "<", 301 )
	TriggerCondition( 1, HasItem, 1225,30 )
	TriggerAction( 1, TakeItem, 1225,30 )
	TriggerAction( 1, GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerFailure( 1, JumpPage, 19 )
	Talk( 20, " ����� ����������������� � ���� ���� ����� ���� 95��� � ��������� 30 �����! " )
	Text( 20, " ����������������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, " ���, � ������! ", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo16X, GoTo16Y, GoTo16M )
	Talk( 21, " ����������: ������ � ���� ��������������� ���� � ������. �� ����� ����� �����? " )
	Text( 21, " ����������������� ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 21, " ���, � ������! ", JumpPage, 1 )
 
	Talk( 16, " ������� ����� ����� � ���� �������� ������!!! " )

	Talk( 19, " ������� ����� ����� � ���� �������� ������ � 700 ���!!! " )
	
	--AddNpcMission 	(47335)
	

end

function kul_tp6 ()

--Some Chineze Blabla
	local CurMapName1 = "garner"
	local CurMapName2 = "guildwar"
	local CurMapName3 = "hell4"
	local CurMapName4 = "abandonedcity"
	local CurMapName5 = "garner2"
	local CurMapName6 = "zonagg"
	local CurMapName7 = "darkswamp" 
	local CurMapName8 = "hell5" 
 	local CurMapName9 = "hell"
	--local CurMapName10 = "binglang2"
	local CurMapName11 = "jialebi"
	local CurMapName12 = "hell2"
	local CurMapName13 = "hell3"
	--local CurMapName14 = "puzzleworld"
	local CurMapName15 = "garner"
	local CurMapName16 = "mjing1"



	--������Ѩ��������
	local GoTo01X = 2171
	local GoTo01Y = 2781
	local GoTo01M = CurMapName1

	--������Ѩ��������
	local GoTo02X = 290
	local GoTo02Y = 115
	local GoTo02M = CurMapName2

	local GoTo02X = 330
	local GoTo02Y = 510
	local GoTo02M = CurMapName2

	local GoTo02X = 410
	local GoTo02Y = 278
	local GoTo02M = CurMapName2

	local GoTo02X = 291
	local GoTo02Y = 331
	local GoTo02M = CurMapName2

	local GoTo02X = 225
	local GoTo02Y = 300
	local GoTo02M = CurMapName2

	--������Ѩ��������
	local GoTo03X = 56
	local GoTo03Y = 32
	local GoTo03M = CurMapName3

	--������Ѩ��������
	local GoTo04X = 307	
	local GoTo04Y = 309
	local GoTo04M = CurMapName4

	local GoTo04X = 307
	local GoTo04Y = 309
	local GoTo04M = CurMapName4

	--������Ѩ��������
	local GoTo05X = 136
	local GoTo05Y = 135
	local GoTo05M = CurMapName5

	local GoTo05X = 78
	local GoTo05Y = 134
	local GoTo05M = CurMapName5

	local GoTo05X = 191
	local GoTo05Y = 100
	local GoTo05M = CurMapName5

	local GoTo05X = 165
	local GoTo05Y = 88
	local GoTo05M = CurMapName5

	local GoTo05X = 102
	local GoTo05Y = 86
	local GoTo05M = CurMapName5

	local GoTo06X = 70
	local GoTo06Y = 70
	local GoTo06M = CurMapName6

	local GoTo05X = 150
	local GoTo05Y = 36
	local GoTo05M = CurMapName5

	--������Ѩ��������
	local GoTo07X = 297
	local GoTo07Y = 300
	local GoTo07M = CurMapName7
 
	--������Ѩ��������
	local GoTo08X = 47
	local GoTo08Y = 108
	local GoTo08M = CurMapName8

	local GoTo09X = 2376
	local GoTo09Y = 301
	local GoTo09M = CurMapName9

	--������Ѩ��������
	local GoTo10X = 124
	local GoTo10Y = 171
	local GoTo10M = CurMapName10

	--������Ѩ��������
	local GoTo11X = 190
	local GoTo11Y = 815
	local GoTo11M = CurMapName11

	--������Ѩ��������
	local GoTo12X = 24
	local GoTo12Y = 73
	local GoTo12M = CurMapName12

	--������Ѩ��������
	local GoTo13X = 34
	local GoTo13Y = 34
	local GoTo13M = CurMapName13

	local GoTo14X = 36
	local GoTo14Y = 20
	local GoTo14M = CurMapName14

	local GoTo15X = 2273
	local GoTo15Y = 1122
	local GoTo15M = CurMapName15

	local GoTo16X = 379
	local GoTo16Y = 397
	local GoTo16M = CurMapName16


		Talk( 1, " ����������: ������ � ���� ��������� ���� � ������ " )
		Text( 1, " �������� ! ", JumpPage, 2 )
               -- Text( 1, " ���� � ������ ", JumpPage, 21 )
		--Text( 1, " ���� ���� ���� ", JumpPage, 7 )
		--Text( 1, " ������� ����� ", JumpPage, 4 )
								--Text( 1, " ���� � �� ����! ", JumpPage, 11 )

		--Text( 1, " �������� �������� ---> ", JumpPage, 17 )

		Talk( 17, " ����������: ������ � ���� ��������������� ���� ���� ������! ������� ���� �� ������! " )
		Text( 17, " ���� �� ��������� �����! ", JumpPage, 3 )
								--Text( 17, " ���� �� ����� �������! ", JumpPage, 5 )
		--Text( 17, " ���� � ���������� ����! ", JumpPage, 6 )
		Text( 17, " ���� � ������! ", JumpPage, 21 )
		--Text( 17, " ���� � ��� ������� (��)! ", JumpPage, 15 )
		Text( 17, " �������� ---> ", JumpPage, 18 )
		Text( 17, " <--- ����� ", JumpPage, 1 )


		Talk( 18, " ����������: ������ � ���� ��������������� ���� ���� ������! ������� ���� �� ������! " )
		Text( 18, " ���� � ������ �������! ", JumpPage, 9 )
		Text( 18, " ���� � ������� 1-4! ", JumpPage, 12 )
		Text( 18, " ���� � ������� 5-7! ", JumpPage, 10 )
		Text( 18, " <--- ����� ", JumpPage, 17 )


		InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, " ����������: ������ � ���� ��������������� ���� � ������ . �� ����� ����� ������?. " )
	Text( 2, " ��! �������� ! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 2, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	Talk( 3, " ����������: ������ � ���� ��������������� ���� �� ��������� �����. �� ����� ����� �����?. " )
	Text( 3, " ��! ����� �������! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 4, " ����������: ������ � ���� ��������������� ���� � ������� �����. �� ����� ����� �����?. " )
	Text( 4, " ��! ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 4, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 5, " ����������: ������ � ���� ��������������� ���� �� ����� �������. �� ����� ����� �����?. " )
	Text( 5, " ���! �������! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 5, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerCondition( 1, CheckTime)
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	Talk( 6, " ����������: ������ � ���� ��������������� ���� � ���������� ����. �� ����� ����� �����?. " )
	Text( 6, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	Talk( 7, " ����������: ������ � ���� ��������������� ���� � ���� ���� ���� . �� ����� ����� �����?. " )
	Text( 7, " ��! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 7, " ���, � ������! ", JumpPage, 1 )

		
		InitTrigger()
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	Talk( 9, " ����������: ������ � ���� ��������������� ���� � ������ �������. �� ����� ����� �����?. " )
	Text( 9, " ��! � ���� ��������� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 9, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo09X, GoTo09Y, GoTo09M )
	Talk( 10, " ����������: ������ � ���� ��������������� ���� � ������� 5-8. �� ����� ����� �����?. " )
	Text( 10, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 10, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerFailure( 1, JumpPage, 16 )
	Talk( 11, " ����������: ������ � ���� ��������������� ���� � �� ����. �� ����� ����� �����?. " )
	Text( 11, " ��! � ���� ������� �� ���� ������� �������! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 11, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	Talk( 12, " ����������: ������ � ���� ��������������� ���� � ������� 1-4. �� ����� ����� �����?. " )
	Text( 12, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 12, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	Talk( 13, " ����������: ������ � ���� ��������������� ���� � ������� 9. �� ����� ����� �����?. " )
	Text( 13, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 13, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	Talk( 14, " ����������: ������ � ���� ��������������� ���� � ������� 10-17. �� ����� ����� �����?. " )
	Text( 14, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 14, " ���, � ������! ", JumpPage, 1 )

		InitTrigger()
	TriggerAction( 1, GoTo, GoTo14X, GoTo14Y, GoTo14M )
	Talk( 15, " ����������: ������ � ���� ��������������� ���� � ��� ������� (��). �� ����� ����� �����?. " )
	Text( 15, " ��! � ���� ����! ", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 15, " ���, � ������! ", JumpPage, 1 )

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 94 )
	TriggerCondition( 1, LvCheck, "<", 301 )
	TriggerCondition( 1, HasItem, 1225,30 )
	TriggerAction( 1, TakeItem, 1225,30 )
	TriggerAction( 1, GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerFailure( 1, JumpPage, 19 )
	Talk( 20, " ����� ����������������� � ���� ���� ����� ���� 95��� � ��������� 30 �����! " )
	Text( 20, " ����������������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, " ���, � ������! ", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo16X, GoTo16Y, GoTo16M )
	Talk( 21, " ����������: ������ � ���� ��������������� ���� � ������. �� ����� ����� �����? " )
	Text( 21, " ����������������� ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 21, " ���, � ������! ", JumpPage, 1 )
 
	Talk( 16, " ������� ����� ����� � ���� �������� ������!!! " )

	Talk( 19, " ������� ����� ����� � ���� �������� ������ � 700 ���!!! " )
	
	--AddNpcMission 	(47335)
	

end