print( "����㧪� CharBornScript.lua" )

---------------
-- ��������� --
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
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"����� ���������� � ������� ������. � �������� ��� �������� ������ ��������� ����. ��� ���� ����� ������������� �� ������� ��� �� �� ��� ��� ���� ������� ������� '����� ������ ����'. �� ����� ������� �������� �� ������� � �������� �������� ������ �������. ����� ����� �������� '����� ������� ����' ����� ���������� � NPC! ���� �� ������ ���������� � ���������� � ��, �� ������ ������ ���� � �������� �� ��� ��� ����. ����� �������� ������ ������ ���� ����� �������� ������� �����." )
	TriggerAction( 1, AddTrigger, 60000, TE_LEVELUP, 2, 1 )
	TriggerAction( 1, AddTrigger, 60001, TE_LEVELUP, 5, 1 )
	TriggerAction( 1, AddTrigger, 60002, TE_LEVELUP, 9, 1 )
	TriggerAction( 1, AddTrigger, 60003, TE_LEVELUP, 10, 1 )
	TriggerAction( 1, MultiTrigger, triggerlist, 3 )
	TriggerAction( 1, SaveMissionData )

	RegTrigger( 88888, 1 )

	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    �����������! ������ � ������� ��� ��� ������������ �����. ������� ������� ���������� ������ Alt+R. ��������� ��� �����. �������� ������, ������� ���� ���, � ����� ��������� ���� ����������. �������� �������, ������� � ����� ��������� ���������." )
	RegTrigger( 60000, 1 )

	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    ��������� ����� ��� �������! ������� ������ \"Insert\" ����� �����, ����� ������� ���� ���� � �������� ����� ��������������� ������� �������. ������� \"Alt + ����� ������ ����\" �� ������, ����� ��������� �� ���." )
	RegTrigger( 60001, 1 )

	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    � ����, ��� �� ��������� �������� ������� ���. ������ ������� �����, ����� ������� �����. ����������� ������� ����� ������������� ��� ��������������� ��������. ����� � ���������� ������ � �������� �����, ������� �� ���������. �� ������ ������ ������ ��������� ���������, ����� ������� �����." )
	RegTrigger( 60002, 1 )

	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    �����������! �� �������� 10 ������. �� �������� ���� ������ ���� ������. ������ ������� ������ �������� �������� ���� ������. �� ������ ������� ����� ������ ����� ��������� ��������. ��������� ������ ��������� � ����������� � ����� ������!" )
	RegTrigger( 60003, 1 )
end
PCBorn()