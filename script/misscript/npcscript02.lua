----------------------------------------------
--           ������� ����������				--
----------------------------------------------

print( "����㧪� NPCScript02.lua" )

---------------------------------------
-- �������� ����� ��������� �������� --
---------------------------------------
--------------------------------------------------------------------------------------------------------------------
-- ���������� ������� - �������, ���������� ������� - ���, ���������� ������ - ����, ���������� ���������� - ���� --
--------------------------------------------------------------------------------------------------------------------
function GoToWhere()
--����������� �����--
local CurMapName1 = "garner"
	local GoTo02X = 1900
	local GoTo02Y = 2774
	local GoTo02M = CurMapName1

	Talk( 1, " ������, ���� ������� �������? " )
	Text( 1, " ����������� � ����������� ����� ", JumpPage, 2 )
	
	InitTrigger()
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	Talk( 2, " �������: ������ � �����? - �� ��������. " )
	Text( 2, " �������� ",MultiTrigger, GetMultiTrigger(), 2)
end

------------------------------
-- �������� ����� ��������� --
------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ���������� ����������� - �����, ��������� ���������� - �����, ����������� - �������, ����������� - ��������, ���������� - ���, ���������� - �����, �������� - ������, �������� - �����, ���������� - �����, ���������� - ����, ���������� - ��������, ���������� - ���� --
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function transmittal()
	local CancelSelectTalk = "������, � �������� ����� "
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
	
	Talk( 1, "���: ������! � ������� ����������. ��� ���� ������? " )
	Text( 1, "������� � ��������� ���� ", JumpPage, 14 )
	Text( 1, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 2, "�������: ������! � ������� ����������. ��� ���� ������? " )
	Text( 2, "������� � ����������� ����� ", JumpPage, 13 )
	Text( 2, "������� � ��������� ��� ", JumpPage, 18 )
	Text( 2, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 3, "�����: ������! � ������� ����������. ��� ���� ������? " )
	Text( 3, "������� � �������� ", JumpPage, 15 )
	Text( 3, "������� � ��������� ���� ", JumpPage, 14 )
	Text( 3, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 4, "��������: ������! � ������� ����������. ��� ���� ������? " )
	Text( 4, "������� � ������� ������� ", JumpPage, 16 )
	Text( 4, "������� � ��������� ��� ", JumpPage, 18 )
	Text( 4, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 5, "�����: ������! � ������� ����������. ��� ���� ������? " )
	Text( 5, "������� � ���������� ����� ", JumpPage, 17 )
	Text( 5, "������� � �������� ", JumpPage, 15 )
	Text( 5, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 6, "������: ������! � ������� ����������. ��� ���� ������? " )
	Text( 6, "������� � ������� ������� ", JumpPage, 16 )
--	Text( 6, "������� � ��������� ", JumpPage, 29 )
	Text( 6, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 7, "�����: ������! � ������� ����������. ��� ���� ������? " )
	Text( 7, "������� � ���� ������ ", JumpPage, 20 )
	Text( 7, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 8, "������: ������! � ������� ����������. ��� ���� ������? " )
	Text( 8, "������� � ������ ������ ", JumpPage, 19 )
	Text( 8, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 9, "����: ������! � ������� ����������. ��� ���� ������? " )
	Text( 9, "������� � ����� �������� ", JumpPage, 22 )
	Text( 9, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 10, "�����: ������! � ������� ����������. ��� ���� ������? " )
	Text( 10, "������� �� ����� �������� ", JumpPage, 23 )
	Text( 10, "������� � ������� ������ ", JumpPage, 21 )
	Text( 10, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 11, "����: ������! � ������� ����������. ��� ���� ������? " )
	Text( 11, "������� � ������� ��� ", JumpPage, 24 )
	Text( 11, "������� � ����� �������� ", JumpPage, 22 )
	Text( 11, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 12, "��������: ������! � ������� ����������. ��� ���� ������? " )
	Text( 12, "������� �� ����� �������� ", JumpPage, 23 )
	Text( 12, "�������� ����� ����������� ", JumpPage, 25 )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 20 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 13, "������� � ����������� �����? ��� �������! ��������� 200 ������� " )
	Text( 13, "������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 13, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 21 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "������� � ��������� ����? ��� �������! ��������� 200 ������� " )
	Text( 14, "������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 22 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "������� � ��������? ��� �������! ��������� 200 ������� " )
	Text( 15, "������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 23 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "������� � ������� �������? ��� �������! ��������� 200 ������� " )
	Text( 16, "������� ",MultiTrigger, GetMultiTrigger(), 1 )  
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 18 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "������� � ���������� �����? ��� �������! ��������� 200 ������� " )
	Text( 17, "������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 19 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "������� � ��������� ���? ��� �������! ��������� 200 ������� " )
	Text( 18, "������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 24 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "������� � ������ ������? ��� �������! ��������� 200 ������� " )
	Text( 19, "������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 20, "������� � ���� ������? ��� �������! ��������� 200 ������� " )
	Text( 20, "������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 26 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 21, "������� � ������� ������? ��� �������! ��������� 200 ������� " )
	Text( 21, "������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 22, "������� � ����� ��������? ��� �������! ��������� 200 ������� " )
	Text( 22, "������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 22, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 28 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 23, "������� � ����� ��������? ��� �������! ��������� 200 ������� " )
	Text( 23, "������� ",MultiTrigger, GetMultiTrigger(), 1 )  
	Text( 23, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, teleport, 29 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 24, "������� � ������� ���? ��� �������! ��������� 200 ������� " )
	Text( 24, "������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
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
	Talk( 25, "�������� ����� �����������? " )
	Text( 25, "��, ���������� ������ ", MultiTrigger, GetMultiTrigger(), 12 )
	Text( 25, "���, ������� ",CloseTalk )
	
	Talk( 26, "��������, � ��� ������������ ����� ��� �����������! " )
	
	Talk( 27, "�� �������� ����� ���� ���� ����������� ������ ", CloseTalk )
	
    Talk( 28, "���������� �������� ����� ����������! ", CloseTalk )
	
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
-- �������� ����� ��������� --
------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ��������� ���������� - �������, ��������� ���������� - ������, ��������� ���������� - �����, ��������� ���������� - �����, ��������� ���������� - ��������, ��������� ���������� - �����, ��������� ����������  - �����, ��������� ����������  - ����� --
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function island()
	local CancelSelectTalk = "������, � �������� ����� "
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
	
	Talk( 1, "�������: ������, � ��������� ����������. ��������� ����������� 2000 �������. ���� ������ �����������? " )
	Text( 1, "������� �� ������ ������ ", JumpPage, 14 )
	Text( 1, "������� �� ���������� ������ ", JumpPage, 15 )
	Text( 1, "������� �� ������ ����������� ", JumpPage, 16 )
	Text( 1, "������� �� ������ ����� ", JumpPage, 17 )
	Text( 1, "������� �� ������ �������� ", JumpPage, 18 )
	Text( 1, "������� �� ������ �������� ", JumpPage, 19 )
	Text( 1, "������� �� ������ ����� ", JumpPage, 20 )
	Text( 1, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 2, "������: ������, � ��������� ����������. ��������� ����������� 2000 �������. ���� ������ �����������? " )
	Text( 2, "������� � ������ ", JumpPage, 21 )
	Text( 2, "������� �� ���������� ������ ", JumpPage, 15 )
	Text( 2, "������� �� ������ ����������� ", JumpPage, 16 )
	Text( 2, "������� �� ������ ����� ", JumpPage, 17 )
	Text( 2, "������� �� ������ �������� ", JumpPage, 18 )
	Text( 2, "������� �� ������ �������� ", JumpPage, 19 )
	Text( 2, "������� �� ������ ����� ", JumpPage, 20 )
	Text( 2, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 3, "�����: ������, � ��������� ����������. ��������� ����������� 2000 �������. ���� ������ �����������? " )
	Text( 3, "������� � ������ ", JumpPage, 21 )
	Text( 3, "������� �� ������ ������ ", JumpPage, 14 )
	Text( 3, "������� �� ������ ����������� ", JumpPage, 16 )
	Text( 3, "������� �� ������ ����� ", JumpPage, 17 )
	Text( 3, "������� �� ������ �������� ", JumpPage, 18 )
	Text( 3, "������� �� ������ �������� ", JumpPage, 19 )
	Text( 3, "������� �� ������ ����� ", JumpPage, 20 )
	Text( 3, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 4, "�����: ������, � ��������� ����������. ��������� ����������� 2000 �������. ���� ������ �����������? " )
	Text( 4, "������� � ������ ", JumpPage, 21 )
	Text( 4, "������� �� ������ ������ ", JumpPage, 14 )
	Text( 4, "������� �� ���������� ������ ", JumpPage, 15 )
	Text( 4, "������� �� ������ ����� ", JumpPage, 17 )
	Text( 4, "������� �� ������ �������� ", JumpPage, 18 )
	Text( 4, "������� �� ������ �������� ", JumpPage, 19 )
	Text( 4, "������� �� ������ ����� ", JumpPage, 20 )
	Text( 4, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 5, "�����: ������, � ��������� ����������. ��������� ����������� 2000 �������. ���� ������ �����������? " )
	Text( 5, "������� � ������ ", JumpPage, 21 )
	Text( 5, "������� �� ������ ������ ", JumpPage, 14 )
	Text( 5, "������� �� ���������� ������ ", JumpPage, 15 )
	Text( 5, "������� �� ������ ����������� ", JumpPage, 16 )
	Text( 5, "������� �� ������ �������� ", JumpPage, 18 )
	Text( 5, "������� �� ������ �������� ", JumpPage, 19 )
	Text( 5, "������� �� ������ ����� ", JumpPage, 20 )
	Text( 5, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 6, "�����: ������, � ��������� ����������. ��������� ����������� 2000 �������. ���� ������ �����������? " )
	Text( 6, "������� � ������ ", JumpPage, 21 )
	Text( 6, "������� �� ������ ������ ", JumpPage, 14 )
	Text( 6, "������� �� ���������� ������ ", JumpPage, 15 )
	Text( 6, "������� �� ������ ����������� ", JumpPage, 16 )
	Text( 6, "������� �� ������ ����� ", JumpPage, 17 )
	Text( 6, "������� �� ������ �������� ", JumpPage, 19 )
	Text( 6, "������� �� ������ ����� ", JumpPage, 20 )
	Text( 6, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 7, "�����: ������, � ��������� ����������. ��������� ����������� 2000 �������. ���� ������ �����������? " )
	Text( 7, "������� � ������ ", JumpPage, 21 )
	Text( 7, "������� �� ������ ������ ", JumpPage, 14 )
	Text( 7, "������� �� ���������� ������ ", JumpPage, 15 )
	Text( 7, "������� �� ������ ����������� ", JumpPage, 16 )
	Text( 7, "������� �� ������ ����� ", JumpPage, 17 )
	Text( 7, "������� �� ������ �������� ", JumpPage, 18 )
	Text( 7, "������� �� ������ ����� ", JumpPage, 20 )
	Text( 7, "�������� ����� ����������� ", JumpPage, 25 )
	
	Talk( 8, "��������: ������, � ��������� ����������. ��������� ����������� 2000 �������. ���� ������ �����������? " )
	Text( 8, "������� � ������ ", JumpPage, 21 )
	Text( 8, "������� �� ������ ������ ", JumpPage, 14 )
	Text( 8, "������� �� ���������� ������ ", JumpPage, 15 )
	Text( 8, "������� �� ������ ����������� ", JumpPage, 16 )
	Text( 8, "������� �� ������ ����� ", JumpPage, 17 )
	Text( 8, "������� �� ������ �������� ", JumpPage, 18 )
	Text( 8, "������� �� ������ �������� ", JumpPage, 19 )
	Text( 8, "�������� ����� ����������� ", JumpPage, 25 )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 30 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "������� �� ������ ������? ��� �������! ��������� 2000 ������� " )
	Text( 14, "������� ",MultiTrigger, GetMultiTrigger(), 1 )  
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 31 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "������� �� ���������� ������? ��� �������! ��������� 2000 ������� " )
	Text( 15, "������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 32 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "������� �� ������ �����������? ��� �������! ��������� 2000 ������� " )
	Text( 16, "������� ",MultiTrigger, GetMultiTrigger(), 1 )   
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 33 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "������� �� ������ �����? ��� �������! ��������� 2000 ������� " )
	Text( 17, "������� ",MultiTrigger, GetMultiTrigger(), 1 )  
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 34 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "������� �� ������ ��������? ��� �������! ��������� 2000 ������� " )
	Text( 18, "������� ",MultiTrigger, GetMultiTrigger(), 1 )  
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 35 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "������� �� ������ ��������? ��� �������! ��������� 2000 ������� " )
	Text( 19, "������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 36 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 20, "������� �� ������ �����? ��� �������! ��������� 2000 ������� " )
	Text( 20, "������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, teleport, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 21, "������� � ������? ��� �������! ��������� 2000 ������� " )
	Text( 21, "������� ",MultiTrigger, GetMultiTrigger(), 1 ) 
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
	Talk( 25, "�������� ����� �����������? " )
	Text( 25, "��, ���������� ������ ", MultiTrigger, GetMultiTrigger(), 8 )
	Text( 25, "���, ������� ",CloseTalk )
	
	Talk( 26, "��������, � ��� ������������ ����� ��� �����������! " )
	
	Talk( 27, "����� ���� ���� ����������� ������ ", CloseTalk )
	
    Talk( 28, "���������� �������� ����� ����������! ", CloseTalk )
	
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