--------------------------------------------------------------------------
--									--
--									--
--		NPCScript08.lua Created by knight.gong 2005.7.12.	--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading MissionScript08.lua" )


DefineMission( 567675, "95 ���� ���� ", 567676 )

MisBeginTalk( "<t>������� ��� 500 ����� ���� � ������ ������ 95 ��������� ����� ! " )
MisBeginCondition(NoMission, 567676)
--������� ����������� ������������� ���������� ������
MisBeginAction(AddMission, 567676)
MisBeginAction(SetFlag, 567676, 1)
MisBeginAction(AddTrigger, 5676761, TE_GETITEM, 7454, 500 )
MisCancelAction(ClearMission, 567676)

MisNeed(MIS_NEED_DESP, "���� � ���� ���� ���� � �����! ")
MisNeed(MIS_NEED_ITEM, 7454, 500, 10, 500)

MisPrize(MIS_PRIZE_ITEM, 1017, 1, 4)
MisPrizeSelAll()

MisResultTalk("<t>���������� � ����������� ������� ! ")
MisHelpTalk("<t>�� ��� �� ����� 500 ����� ���� ! ")

MisResultCondition(HasMission, 567676)
MisResultCondition(HasItem, 7454, 500 )
MisResultAction(TakeItem, 7454, 500 )
MisResultAction(ClearMission, 567676)
MisResultAction(SetRecord, 567676)
MisResultBagNeed(1)

InitTrigger()
TriggerCondition( 1, IsItem, 7454 )
TriggerAction( 1, AddNextFlag, 567676, 10, 500 )
RegCurTrigger( 5676761 )

DefineMission( 47335, "��������� ", 47334 )

MisBeginTalk( "<t>������� ��� ��� � ������� ��������� ! �� ���� ��������� �������� 1 �� 40 ��������� �������� ! " )
MisBeginCondition(NoMission, 47334)
--������� ����������� ������������� ���������� ������
MisBeginAction(AddMission, 47334)
MisBeginAction(SetFlag, 47334, 1)
MisBeginAction(AddTrigger, 473341, TE_GETITEM, 271, 150 )
MisBeginAction(AddTrigger, 473342, TE_GETITEM, 7454, 300 )
MisBeginAction(AddTrigger, 473343, TE_GETITEM, 7444, 10000 )
MisCancelAction(ClearMission, 47334)

MisNeed(MIS_NEED_DESP, "������� ��� ���������� ! ")
MisNeed(MIS_NEED_ITEM, 271, 150, 10, 150)
MisNeed(MIS_NEED_ITEM, 7454, 300, 20, 300)
MisNeed(MIS_NEED_ITEM, 7444, 10000, 30, 10000)

MisPrize(MIS_PRIZE_ITEM, 7460, 1, 4)
MisPrizeSelAll()

MisResultTalk("<t>���������� ! ")
MisHelpTalk("<t>�� ��������� ���������� ! ")

MisResultCondition(HasMission, 47334)
MisResultCondition(HasItem, 271, 150 )
MisResultCondition(HasItem, 7454, 300 )
MisResultCondition(HasItem, 7444, 10000 )
MisResultAction(TakeItem, 271, 150 )
MisResultAction(TakeItem, 7454, 300 )
MisResultAction(TakeItem, 7444, 10000 )
MisResultAction(ClearMission, 47334)
MisResultAction(SetRecord, 47334)
MisResultBagNeed(1)

InitTrigger()
TriggerCondition( 1, IsItem, 271 )
TriggerAction( 1, AddNextFlag, 47334, 10, 150 )
RegCurTrigger( 473341 )

InitTrigger()
TriggerCondition( 1, IsItem, 7454 )
TriggerAction( 1, AddNextFlag, 47334, 20, 300 )
RegCurTrigger( 473342 )

InitTrigger()
TriggerCondition( 1, IsItem, 7444 )
TriggerAction( 1, AddNextFlag, 47334, 30, 10000 )
RegCurTrigger( 473343 )



DefineMission( 3243222, "������ �� ", 3243223 )

MisBeginTalk( "<t>500 ������ � ��� ���� ! " )
MisBeginCondition(NoMission, 3243223)
--������� ����������� ������������� ���������� ������
MisBeginAction(AddMission, 3243223)
MisBeginAction(SetFlag, 3243223, 1)
MisBeginAction(AddTrigger, 32432231, TE_GETITEM, 271, 500 )
MisCancelAction(ClearMission, 3243223)

MisNeed(MIS_NEED_DESP, "���� � ����� ����� ! ")
MisNeed(MIS_NEED_ITEM, 271, 500, 10, 500)

MisPrize(MIS_PRIZE_ITEM, 7484, 1, 4)
MisPrizeSelAll()

MisResultTalk("<t>���������� � ����������� ������� ! ")
MisHelpTalk("<t>�� ��� �� ����� 500 ������ ! ")

MisResultCondition(HasMission, 3243223)
MisResultCondition(HasItem, 271, 500 )
MisResultAction(TakeItem, 271, 500 )
MisResultAction(ClearMission, 3243223)
MisResultAction(SetRecord, 3243223)
MisResultBagNeed(1)

InitTrigger()
TriggerCondition( 1, IsItem, 271 )
TriggerAction( 1, AddNextFlag, 3243223, 10, 500 )
RegCurTrigger( 32432231 )


DefineMission( 324322, "������ ��� ", 324323 )

MisBeginTalk( "<t>500 ������ � ��� ���� ! " )
MisBeginCondition(NoMission, 324323)
--������� ����������� ������������� ���������� ������
MisBeginAction(AddMission, 324323)
MisBeginAction(SetFlag, 324323, 1)
MisBeginAction(AddTrigger, 3243231, TE_GETITEM, 271, 500 )
MisCancelAction(ClearMission, 324323)

MisNeed(MIS_NEED_DESP, "���� � ����� ����� ! ")
MisNeed(MIS_NEED_ITEM, 271, 500, 10, 500)

MisPrize(MIS_PRIZE_ITEM, 7483, 1, 4)
MisPrizeSelAll()

MisResultTalk("<t>���������� � ����������� ������� ! ")
MisHelpTalk("<t>�� ��� �� ����� 500 ������ ! ")

MisResultCondition(HasMission, 324323)
MisResultCondition(HasItem, 271, 500 )
MisResultAction(TakeItem, 271, 500 )
MisResultAction(ClearMission, 324323)
MisResultAction(SetRecord, 324323)
MisResultBagNeed(1)

InitTrigger()
TriggerCondition( 1, IsItem, 271 )
TriggerAction( 1, AddNextFlag, 324323, 10, 500 )
RegCurTrigger( 3243231 )




DefineMission( 102018, "���������� �������(���) ", 102017 )

MisBeginTalk( "<t>����������� ���� ��� ���� ���� , ������� 1 ������� , � ��� ������ , ��� �������� ������ ���� ���� � ��� � ����� ���� ��������� ! �������� ��� ��������� , � �� �������� ���� ������� ! ����� ������� � ����� ������������ ,�������� , �� ����� !��� ������ ���� ������� ���������� ���������� ! " )
MisBeginCondition(NoMission, 102017)
--������� ����������� ������������� ���������� ������
MisBeginAction(AddMission, 102017)
MisBeginAction(SetFlag, 102017, 1)
MisBeginAction(AddTrigger, 1020171, TE_GETITEM, 2887, 50 )
MisBeginAction(AddTrigger, 1020172, TE_GETITEM, 3895, 50 )
MisBeginAction(AddTrigger, 1020173, TE_GETITEM, 3899, 50 )
MisBeginAction(AddTrigger, 1020174, TE_GETITEM, 273, 15 )
MisCancelAction(ClearMission, 102017)

MisNeed(MIS_NEED_DESP, "���������� ������� (����) ")
MisNeed(MIS_NEED_ITEM, 2887, 50, 10, 50)
MisNeed(MIS_NEED_ITEM, 3895, 50, 20, 50)
MisNeed(MIS_NEED_ITEM, 3899, 50, 30, 50)
MisNeed(MIS_NEED_ITEM, 273, 15, 40, 15)

MisPrize(MIS_PRIZE_ITEM, 5865, 1, 4)
MisPrizeSelAll()

MisResultTalk("<t>���������� ! ������ ������ ! ")
MisHelpTalk("<t>�� ��� �� �������� ��� ������� ! ")

MisResultCondition(HasMission, 102017)
MisResultCondition(HasItem, 2887, 50 )
MisResultCondition(HasItem, 3895, 50 )
MisResultCondition(HasItem, 3899, 50 )
MisResultCondition(HasItem, 273, 15 )
MisResultAction(TakeItem, 2887, 50 )
MisResultAction(TakeItem, 3895, 50 )
MisResultAction(TakeItem, 3899, 50 )
MisResultAction(TakeItem, 273, 15 )
MisResultAction(ClearMission, 102017)
MisResultAction(SetRecord, 102017)
MisResultBagNeed(1)

InitTrigger()
TriggerCondition( 1, IsItem, 2887 )
TriggerAction( 1, AddNextFlag, 102017, 10, 50 )
RegCurTrigger( 1020171 )

InitTrigger()
TriggerCondition( 1, IsItem, 3895 )
TriggerAction( 1, AddNextFlag, 102017, 20, 50 )
RegCurTrigger( 1020172 )

InitTrigger()
TriggerCondition( 1, IsItem, 3899 )
TriggerAction( 1, AddNextFlag, 102017, 30, 50 )
RegCurTrigger( 1020173 )

InitTrigger()
TriggerCondition( 1, IsItem, 273 )
TriggerAction( 1, AddNextFlag, 102017, 40, 15 )
RegCurTrigger( 1020174 )
