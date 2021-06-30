print( "Loading MissionScript02.lua" )
----------------------
-- ��������� ������ --
----------------------
function For_Newbie()
	DefineMission( 701, "����� ����������!", 1, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk("<t> ����� ����������!<n><t>������� �� ���, ���� � ���� ���� ������� ������������ ������� ����������. � ��������� ���� ����� �� ������ ��� ����.<n><t>��� � ���� ���� �������� ��� �������� �������� ������ � <p�������>.<n><t>������ ����� �� ���������� ����������� ������ ������� ������� Ctrl + A, ��� ���� ����� ����� � ���� ����� �������������. ������ �������� ����� ������� ��� ���� ���� �������������. <n><t>� ���� � ������������ ������� 5 ����� ����������, ����� ���: ���� ,������� ����������� ���� ����� � ������� ���; ��������, ������� ����������� ���� �������� ��� � ������; ��������, ������� ����������� ��� ���� �� ��������� � ��������� ���� ����; ���, ������� ����������� ���� ������������� ����� ���� � ���������� ����;� ������������, ������� ����������� ���� ����� ����� � �����.")
	MisHelpTalk("<t>������! � ���������� ����� ������. ������� ���� ����� ���� ����� ����� ������ � ����.<n><t>��� ���� ������ ���� ����� ����� ������.")
	MisResultCondition(NoRecord, 1)
	MisResultCondition(HasMission, 1)

	MisResultAction(ClearMission, 1)
	MisResultAction(SetRecord, 1)
	MisResultAction(AddExp, 6, 6)


	DefineMission( 702, "����������� ������� ", 701 )
	
	MisBeginTalk( "<t>�� �� ������� ������ � ���� ����������� ����,���� � ���� ��� ������.<n><t>������ ��� ������ <p�����������> <b[�������]>, �� ����������� (2193, 2706). � ����� �� ���� �������, ���� �������� � ���� � ���� �������.<n><t>�� ������ ������������ ����� (Alt + R) ��� �� ����� ���." )
	MisBeginCondition(HasRecord, 1)
	MisBeginCondition(NoRecord, 701)
	MisBeginCondition(NoMission, 701)
	MisBeginAction(AddMission, 701)
	MisBeginAction(SetFlag, 701, 1)
	MisBeginAction(GiveItem, 3950, 1, 4)
	MisCancelAction(ClearMission, 701 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "�������� ������ <b[�������> � <p������> �� ����������� (2193, 2706). � ������� � [����������](2223, 2785)")
		
	MisResultTalk("<t>� ������ �� ��� ���������� � <b�����>. �� ���� ������ ������ � ������� ������ ����� ������.")
	MisHelpTalk("<t>�� ������ ������� ������ ��� ����� �����. �� ����� ������ � ����� ���� ������� �� ����������� (2193, 2706).<n><t> ��������� �����(Alt + R) ��� ����,����� ��� �����.")
	MisResultCondition(NoRecord, 701)
	MisResultCondition(HasMission, 701)
	MisResultCondition(HasFlag, 701, 10)
	MisResultAction(ClearMission, 701)
	MisResultAction(SetRecord, 701)
	MisResultAction(AddExp, 9, 9 )

	DefineMission( 703, "����������� ������� ", 701, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>� ������ �� ����� �������? ���� ����� <b������>, � ������ ������ <p������>. � ��� ������, �������� � ��� ���������, ������ �� �������� ���, ���� ������ ����� � �����, � ����� ���� �������� ��������� �� ����� ����� � �.�... � ������������� ������� � ��� ���, �� ������ ����������, ����� ������ ����, ��� ��� � ���� ��� � ���� ���� ���������������� ������ �� ���������� �����.<n><t>�� ������ ���������� � <b�����������> �� ����������� (2223, 2785) � ����� ��� ��� ������ ���� ���, �����!<n><t>(������ ��� ���� ��� �������. ������ ��������� � ������� ������� ����� �� ����.)")
	MisResultCondition(NoRecord, 701)
	MisResultCondition(HasMission, 701)
	MisResultCondition(NoFlag, 701, 10)
	MisResultCondition(HasItem, 3950, 1)
	MisResultAction(TakeItem, 3950, 1)
	MisResultAction(GiveItem, 8, 1, 4)
	MisResultAction(SetFlag, 701, 10)
	MisResultBagNeed(1)

	DefineMission( 704, "���������� �������� ", 702 )
	
	MisBeginTalk( "<t>��� ������ ���������������� ������. ������ ��� � <pA�����> <b������� - ����> �� ����������� (2266, 2705)." )
	MisBeginCondition(HasRecord, 701)
	MisBeginCondition(NoRecord, 702)
	MisBeginCondition(NoMission, 702)
	MisBeginAction(AddMission, 702)
	MisBeginAction(SetFlag, 702, 1)
	MisBeginAction(GiveItem, 3951, 1, 4)
	MisCancelAction(SystemNotice, "��� ������� �� ����� ���� ������������." )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��������� ������ <b�������� - ������� - ����> � <pA������> �� ����������� (2267, 2704) � ��������� � ���������� - ����� (2223, 2785)")
		
	MisResultTalk("<t>���! ������� <b������� ����> ������� ��� ���� �������� �����������? ��� ���������! � �������,��� �� ������ �� ���� ���������.")
	MisHelpTalk("<t>������� �� �� ����� ������� ����? � ���� ������,��� �� �������� ����� ������� �� ����������� (2267, 2704). ��������� �����,��� ���������� ����.")
	MisResultCondition(NoRecord, 702)
	MisResultCondition(HasMission, 702)
	MisResultCondition(HasFlag, 702, 10)
	MisResultAction(ClearMission, 702)
	MisResultAction(SetRecord, 702)
	MisResultAction(AddExp, 21, 21 )

	DefineMission( 705, "����������� ���� ����� ", 702, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��� ���� ���������. � ������ ����, ����� �� ��� ��������. � <b������� ����>, ������� ������ <p������>. � ��� ���, ��� ���������� ��������������� ����, � ���� �������� ���� ��� ��� <���������� �������> ��������� ���������� ��� ����.<n><t>������ ������� � ���������� - ����� (2223, 2785).<n><t>(���� ���� ���� ���������� �������. ������ ��������� � ������ ������ �� ���,����� �����.)")
	MisResultCondition(NoRecord, 702)
	MisResultCondition(HasMission, 702)
	MisResultCondition(NoFlag, 702, 10)
	MisResultCondition(HasFlag, 702, 1)
	MisResultCondition(HasItem, 3951, 1)
	MisResultAction(TakeItem, 3951, 1)
	MisResultAction(SetFlag, 702, 10)
	MisResultAction(GiveItem, 289, 1, 4)
	MisResultAction(GiveItem, 641, 1, 4)
	MisResultAction(GiveItem, 465, 1, 4)
	MisResultBagNeed(1)
	
	DefineMission( 706, "����������� ���� ����� ", 703 )
	
	MisBeginTalk( "<t>������, ������ ��� ��������� ������ <b���� �����> (2240, 2784). � ������ �� ������� ���� � ����." )
	MisBeginCondition(HasRecord, 702)
	MisBeginCondition(NoRecord, 703)
	MisBeginCondition(NoMission, 703)
	MisBeginAction(AddMission, 703)
	MisBeginAction(SetFlag, 703, 1)
	MisBeginAction(GiveItem, 3952, 1, 4)
	MisCancelAction(SystemNotice, "������� �� ����� ���� ������������." )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "��������� ������ <b���� �����> � <p������> �� ����������� (2240, 2784). � ��������� � ���������� (2223, 2785).")
		
	MisResultTalk("<t><b��� �����> ��� ���� ��������� <r����� � �����-������>.������ � �����-������ ����� ������ � ����! ��� �������������� ��������� ���������� ������	� ����.")
	MisHelpTalk("<t>���� ���������� ������ �� ������� �������. ��� ���������� (2240, 2784). �� ������ ����� ��� � ������� ������.")
	MisResultCondition(NoRecord, 703)
	MisResultCondition(HasMission, 703)
	MisResultCondition(HasFlag, 703, 10)
	MisResultAction(ClearMission, 703)
	MisResultAction(SetRecord, 703)
	MisResultAction(AddExp, 66, 66 )

	DefineMission( 707, "����������� ���� ����� ", 703, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>� ���� �� ����� ���������? ����� ����������! �������� ��� <r������ � �����-������>, � �� ��� ������! � ����� ��� ��� ����������.<n><t>� ������ ������������� � ���������� (2223, 2785).<n><t>(��� ����� ��� ��� ��������� �����. ���������� �� �� ������ F1 - F12 ��� �������� �������������.)")
	MisResultCondition(NoRecord, 703)
	MisResultCondition(HasMission, 703)
	MisResultCondition(NoFlag, 703, 10)
	MisResultCondition(HasFlag, 703, 1)
	MisResultCondition(HasItem, 3952, 1)
	MisResultAction(TakeItem, 3952, 1)
	MisResultAction(SetFlag, 703, 10)
	MisResultAction(GiveItem, 1847, 30, 4)
	MisResultAction(GiveItem, 3129, 30, 4)
	MisResultBagNeed(1)
	
	DefineMission( 708, "������ ���������� ", 704 )
	
	MisBeginTalk( "<t>���, �������, ������ �� ����������� � �����. ������ ����� ����� ���������� �����, ����� �� ����, ����. ������ �� ������� ������� ������.<n><t>����� �� ������ �� ������ ����� ����� ����� ��� ����� �������.<n><t>���� 5 ������ ����� � ������� ���� �������.<n><t>������ ����� �� ������ ����� � �������� �������. ������� ������,� � ��� ���� ������� �������.<n><t>(������ ������� �� ������ ����� �� ������. ������ ������ ����� ������� ���� �� �������." )
	MisBeginCondition(HasRecord, 703)
	MisBeginCondition(NoRecord, 704)
	MisBeginCondition(NoMission, 704)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 10 )
	MisBeginAction(AddMission, 704)
	MisBeginAction(SetFlag, 704, 1)
	MisBeginAction(AddTrigger, 7041, TE_GETITEM, 1620, 1 )
	MisBeginAction(AddTrigger, 7042, TE_KILL, 103, 5 )
	MisCancelAction(ClearMission, 704)

	MisNeed(MIS_NEED_ITEM, 1620, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 103, 5, 20, 5)
	
	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>����� ������, �� ����������, � ����� �������, ��� ������ ���� �������.<n><t> ���� ������ ��� ���� �������, �� ��� � ������� �� ����������� (2065, 2732). ������ �������, ������� ��� ����� ������� ������ - ��� ������ ���� (2250, 2770). �� ���� ���������, ������� ������ ���������� ��� ����� ������������.<n><t>�����!")
	MisHelpTalk("<t>�� ���� ����������, ����������� ����� ����, ��� ������ 5 <b������ �����> � �������� 1 �� <r�������>.")
	MisResultCondition(NoRecord, 704)
	MisResultCondition(HasMission, 704)
	MisResultCondition(HasItem, 1620, 1)
	MisResultCondition(HasFlag, 704, 24)
	MisResultAction(TakeItem, 1620, 1)
	MisResultAction(ClearMission, 704)
	MisResultAction(SetRecord, 704)
	MisResultAction(AddExp, 75, 75 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1620 )	
	TriggerAction( 1, AddNextFlag, 704, 10, 1 )
	RegCurTrigger( 7041 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 103 )	
	TriggerAction( 1, AddNextFlag, 704, 20, 5 )
	RegCurTrigger( 7042 )
-----------------------------
-- ����� ��������� ������� --
-----------------------------
end
For_Newbie()