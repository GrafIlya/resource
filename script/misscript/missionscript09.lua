--scripted by skyfear919@hotmail.com

print( "Loading MissionScript09.lua" )
print( "------------------------------------" )


----------------------------��������֮һ------------bragi��for ����)----

	DefineMission( 6114, "��������֮һ", 1444)

	MisBeginTalk( "<t>����һ��æ��,��������͸�ɳᰳ��̻�᳤��������(873,3545),�Ͽ�ȥ��!")
	MisBeginCondition( NoMission, 1444)
	MisBeginCondition( NoRecord, 1444)
	MisBeginAction( GiveItem, 3292, 1, 4)
	MisBeginAction( AddMission, 1444)
	MisCancelAction( ClearMission, 1444)
	MisBeginBagNeed(1)
	
	MisNeed( MIS_NEED_DESP, "��������͸�ɳᰳ��̻�᳤��������")
	
	MisHelpTalk( "<t>����������ɳᰳ���(873,3545),��ȥ��.")
	MisResultCondition( AlwaysFailure )

----------------------------��������֮һ
	DefineMission( 6115, "��������֮һ", 1444, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>���ҵ����𣿶�л��.")
	MisResultCondition( HasMission, 1444)
	MisResultCondition( HasItem, 3292, 1)
	MisResultCondition( NoRecord, 1444)
	MisResultAction( TakeItem, 3292, 1)
	MisResultAction( SetRecord, 1444)
	MisResultAction( AddExp_1)
	MisResultAction( ClearMission, 1444)

-----------------------------��������֮��

	DefineMission( 6116, "��������֮��", 1445)

	MisBeginTalk( "<t>�����ǵ�ҽ��С�㡤�᰺����踴��Ҷ,ȥҩ�����ˡ���ķ������һ����ȥ��.")
	MisBeginCondition( CheckTime )
	MisBeginCondition( HasRecord, 1444)
	MisBeginCondition( NoMission, 1445)
	MisBeginCondition( NoRecord, 1445)
	MisBeginAction( AddMission, 1445)
	MisBeginAction(AddTrigger, 14451, TE_GETITEM, 3143, 1)
	MisCancelAction( ClearMission, 1445)

	MisNeed( MIS_NEED_DESP, "ȥҩ�����ˡ���ķ����һ����β�Ͳ���ȥ��ҽ��С�㡤��")
	MisNeed( MIS_NEED_ITEM, 3143, 1, 10, 1)

	MisHelpTalk( "<t>����Ҷ�Ļ���ķ���������.")
	MisResultCondition( AlwaysFailure )

----------------------------��������֮��
	DefineMission( 6117, "��������֮��", 1445, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>��ĸ���Ҷ����̫��ʱ��,������Ҫ�ⶫ����!")
	MisResultCondition( HasMission, 1445)
	MisResultCondition( NoRecord, 1445)
	MisResultCondition( HasItem, 3143, 1)
	MisResultAction( SetRecord, 1445)
	MisResultAction( AddExp_1 )
	MisResultAction( ClearMission, 1445)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3143)	
	TriggerAction( 1, AddNextFlag, 1445, 10, 1 )
	RegCurTrigger( 14451 )

---------------------------��������֮��A
	DefineMission( 6118, "��������֮��", 1446)
	
	MisBeginTalk( "<t>�������ԭ¹�ܲ�ˬ��ȥ���ҽ�ѵ������.")
	MisBeginCondition( HasRecord, 1445)
	MisBeginCondition( NoMission, 1446)
	MisBeginCondition( NoRecord, 1446)
	MisBeginCondition( NoRecord, 1447)
	MisBeginCondition( LvCheck, "<", 40)
	MisBeginAction( AddMission, 1446)
	MisBeginAction( AddTrigger, 14461, TE_KILL, 299, 20 )
	MisCancelAction( ClearMission, 1446)
	
	MisNeed( MIS_NEED_DESP, "ɱ��20ֻ��ԭ¹(����1360��2683)")
	MisNeed( MIS_NEED_KILL, 299, 20, 10, 20)

	MisResultTalk( "<t>��!�����ĺܺ�,��ô��������,�Ҳ���������.")
	MisHelpTalk( "<t>��ԭ¹���ڼ��ɴ�½(1360,2683)����")
	MisResultCondition( HasMission, 1446)
	MisResultCondition( NoRecord, 1446)
	MisResultCondition( HasFlag, 1446, 29)
	MisResultAction( SetRecord, 1446)
	MisResultAction( SetRecord, 1447)
	MisResultAction( ClearMission, 1446)
	MisResultAction( AddExp, 13000, 13000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 299)	
	TriggerAction( 1, AddNextFlag, 1446, 10, 20 )
	RegCurTrigger( 14461 )

----------------------------��������֮��B
	DefineMission( 6119, "��������֮��", 1448)
	
	MisBeginTalk( "<t>�������ԭ¹�ܲ�ˬ��ȥ���ҽ�ѵ������.")
	MisBeginCondition( HasRecord, 1445)
	MisBeginCondition( NoMission, 1447)
	MisBeginCondition( NoRecord, 1447)
	MisBeginCondition( NoRecord, 1448)
	MisBeginCondition( LvCheck, ">", 39)
	MisBeginAction( AddMission, 1448)
	MisBeginAction( AddTrigger, 14481, TE_KILL, 37, 20 )
	MisCancelAction( ClearMission, 1448)
	
	MisNeed( MIS_NEED_DESP, "ɱ��20ֻ�Ϲ���ʿ(����622��3364)")
	MisNeed( MIS_NEED_KILL, 37, 20, 10, 20)

	MisResultTalk( "<t>��!�����ĺܺ�,��ô��������,�Ҳ���������.")
	MisHelpTalk( "<t>�Ϲ���ʿ���ڼ��ɴ�½(622��3364)����")
	MisResultCondition( HasMission, 1448)
	MisResultCondition( NoRecord, 1448)
	MisResultCondition( HasFlag, 1448, 29)
	MisResultAction( SetRecord, 1448)
	MisResultAction( SetRecord, 1447)
	MisResultAction( ClearMission, 1448)
	MisResultAction( AddExp_3)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 37)	
	TriggerAction( 1, AddNextFlag, 1448, 10, 20 )
	RegCurTrigger( 14481 )

----------------------------------��������֮��
	DefineMission( 6120, "��������֮��", 1449)
	MisBeginTalk( "<t>����������������������ˣ����Ͱɡ�ȥ��10��ľͷ��10��������Ͽ󲹸�վ������(1893,2812)��ȥ.")
	MisBeginCondition( HasRecord, 1447)
	MisBeginCondition( NoMission, 1449)
	MisBeginCondition( NoRecord, 1449)
	MisBeginAction( AddMission, 1449)
	MisBeginAction(AddTrigger, 14491, TE_GETITEM, 4543, 10 )
	MisBeginAction(AddTrigger, 14492, TE_GETITEM, 4545, 10 )
	MisCancelAction( ClearMission, 1449)

	MisNeed( MIS_NEED_DESP, "���Ͽ󲹸�վ������(1893,2812)��ȥ10��ľͷ��10������.")
	MisNeed( MIS_NEED_ITEM, 4543, 10, 10, 10)
	MisNeed( MIS_NEED_ITEM, 4545, 10, 20, 10)

	MisHelpTalk( "<t>ľͷ�Ļ���ľ������,����Ļ��ڿ�Ҳ���Եõ�.")
	MisResultCondition( AlwaysFailure )

---------------------------------��������֮��
	DefineMission( 6121, "��������֮��", 1449, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>���ľͷ�����������̫��ʱ��,������Ҫ��!�ǳ���л.")
	MisResultCondition( HasMission, 1449)
	MisResultCondition( NoRecord, 1449)
	MisResultCondition( HasItem, 4543, 10)
	MisResultCondition( HasItem, 4545, 10)
	MisResultAction( TakeItem, 4543, 10)
	MisResultAction( TakeItem, 4545, 10)
	MisResultAction( SetRecord, 1449)
	MisResultAction( ClearMission, 1449)
	MisResultAction( AddExp_4)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4543)	
	TriggerAction( 1, AddNextFlag, 1449, 10, 10 )
	RegCurTrigger( 14491 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4545)	
	TriggerAction( 1, AddNextFlag, 1449, 20, 10 )
	RegCurTrigger( 14492 )


-----------------------------------��������֮��
	DefineMission( 6122, "��������֮��", 1450)
	MisBeginTalk( "<t>��һ���������ռ����ŷۺ�����,Ȼ����ȥ�����ǵķ�ķ(2226,2726)")
	MisBeginCondition( HasRecord, 1449)
	MisBeginCondition( NoMission, 1450)
	MisBeginCondition( NoRecord, 1450)
	MisBeginAction( AddMission, 1450)
	MisBeginAction(AddTrigger, 14501, TE_GETITEM, 3363, 2 )
	MisCancelAction( ClearMission, 1450)

	MisNeed( MIS_NEED_DESP, "�ռ����ŷۺ����飬����ȥ�������ǵķ�ķ(2226,2726)")
	MisNeed( MIS_NEED_ITEM, 3363, 2, 10, 2)

	MisHelpTalk( "<t>����ֻ�����鱴���зۺ�����Ŷ")
	MisResultCondition( AlwaysFailure )

-----------------------------------��������֮��
	DefineMission( 6123, "��������֮��", 1450, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>������̫������!�����Ư��Ŷ!����̫��л��,����Դ����һ���� !��������һ���е�!������")
	MisResultCondition( HasMission, 1450)
	MisResultCondition( NoRecord, 1450)
	MisResultCondition( HasItem, 3363, 2)
	MisResultAction( TakeItem, 3363, 2)
	MisResultAction( SetRecord, 1450)
	MisResultAction( ClearMission, 1450)
	MisResultAction( AddExp_5)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3363)	
	TriggerAction( 1, AddNextFlag, 1450, 10, 2 )
	RegCurTrigger( 14501 )

-----------------------------------��������֮��
	DefineMission( 6124, "��������֮��", 1451)
	MisBeginTalk( "<t>���һ����ʵҲ�ܼ�,��ֻҪ������ͬ��,���������ˣ����������������б�������������һ������20��30��,һ������31��40��,����һ���˸���40��������,����������Ϳ���ȥ�ұ��Ǳ���ʿ����ŷ��ȡ������!")
	MisBeginCondition( HasRecord, 1450)
	MisBeginCondition( NoMission, 1451)
	MisBeginCondition( NoRecord, 1451)
	MisBeginAction( AddMission, 1451)
	MisCancelAction( ClearMission, 1451)

	MisHelpTalk( "<t>��ȥ��ͬ���")

	MisResultCondition( AlwaysFailure )

----------------------------------��������֮��
	DefineMission( 6125, "��������֮��", 1451, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultCondition( HasMission, 1451)
	MisResultCondition( NoRecord, 1451)
	MisResultCondition( CheckTeam )
	MisResultAction( SetRecord, 6125)
	MisResultAction( ClearMission, 6125)
	MisResultAction( AddExp_6)

-----------------------------------�����������

-----------------------------------------------------��ⱦ��---------��������

       DefineMission(6126,"��ⱦ��",1452)

	MisBeginTalk("<t>��������о�һ���²�ɫ��ҪЩ�ر�Ĳ���,�Ҳ���һ��Ը���æ,��Ϊ�ر�����Ŷ.")
	MisBeginCondition(NoMission, 1452)
	MisBeginCondition(NoRecord,1452)
	MisBeginAction(AddMission,1452)
	MisBeginAction(AddTrigger, 14521, TE_GETITEM, 4325, 5)
	MisBeginAction(AddTrigger, 14522, TE_GETITEM, 1680, 5)
	MisBeginAction(AddTrigger, 14523, TE_GETITEM, 4433, 5)
	MisBeginAction(AddTrigger, 14524, TE_GETITEM, 4357, 5)
	MisBeginAction(AddTrigger, 14525, TE_GETITEM, 4461, 40)
	MisBeginAction(AddTrigger, 14526, TE_GETITEM, 4462, 40)


	MisCancelAction(ClearMission, 1452)

	MisNeed(MIS_NEED_DESP, "�ռ���ѩ����β 5��(����1179,371),�ۺ���β 5��(����1950,2563),�����β 5��(����1384,3065),�ֲڵ���β 5��(����910,2971),�������� 40 ����1455,560)�� ǿ׳���� 40(����2266,590).")
	MisNeed(MIS_NEED_ITEM, 4325, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1680, 5, 15, 5)
	MisNeed(MIS_NEED_ITEM, 4433, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 4357, 5, 25, 5)
	MisNeed(MIS_NEED_ITEM, 4461, 40, 30, 40)
	MisNeed(MIS_NEED_ITEM, 4462, 40, 70, 40)

	
	
	MisHelpTalk("<t>�����������,�һ������õ�����")
	MisResultTalk("<t>������ص��������������Ҫ�͸���Ľ�����,���кܶ�����Ҫ��æ,����Ծ�����������.")

	MisResultCondition(HasMission, 1452)
	MisResultCondition(NoRecord,1452)
	MisResultCondition(HasItem, 4325, 5)
	MisResultCondition(HasItem, 1680, 5)
	MisResultCondition(HasItem, 4433, 5)
	MisResultCondition(HasItem, 4357, 5)
	MisResultCondition(HasItem, 4461, 40)
	MisResultCondition(HasItem, 4462, 40)

	
	
	MisResultAction(TakeItem, 4325, 5 )
	MisResultAction(TakeItem, 1680, 5 )
	MisResultAction(TakeItem, 4433, 5 )
	MisResultAction(TakeItem, 4357, 5 )
	MisResultAction(TakeItem, 4461, 40 )
	MisResultAction(TakeItem, 4462, 40 )

	
	
	MisResultAction(GiveItem, 2909,1,4)------------����������
	MisResultAction(ClearMission, 1452)
	MisResultAction(SetRecord, 1452)
	MisResultAction(ClearRecord, 1452)---------------���Է�����
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 4325)	
	TriggerAction( 1, AddNextFlag, 1452, 10, 5 )
	RegCurTrigger( 14521 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1680)	
	TriggerAction( 1, AddNextFlag, 1452, 15, 5 )
	RegCurTrigger( 14522 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4433)	
	TriggerAction( 1, AddNextFlag, 1452, 20, 5 )
	RegCurTrigger( 14523 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4357)	
	TriggerAction( 1, AddNextFlag, 1452, 25, 5 )
	RegCurTrigger( 14524 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4461)	
	TriggerAction( 1, AddNextFlag, 1452, 30, 40 )
	RegCurTrigger( 14525 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4462)	
	TriggerAction( 1, AddNextFlag, 1452, 70, 40 )
	RegCurTrigger( 14526 )
	
	----------------------------------��������-------ӵ��С�ܻ����5�أ�----------֮��һ��

	------------------------------�NPC---------������ҽ��С����(2244,2770)

	DefineMission(5868,"ӵ��С��",1350)

        MisBeginTalk("<t>�㼴����ʼһ����С����ս������,��ɲ���һ��������ս������Ŷ!�������ܴ���5�صĿ���,�����в����ж�!���򽫲���õ����ǵĽ���.��Ȼ��,��ɴ������������,�ر�Ҳ�Ǻܷ����!��Ը�������ս��?")
	MisBeginCondition(NoMission, 1350)
	MisBeginCondition(NoRecord, 1350)
	MisBeginCondition(LvCheck, ">",19)
	MisBeginAction(AddMission, 1350)
	MisBeginAction(AddTrigger, 13501, TE_KILL, 258, 20)


	MisCancelAction(SystemNotice, "���������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�ܺ�,�����ɼ�!���ھͳ�����!��һ������ָʾ:�ҵ��ȼ���͵�С��,ɱ20ֻ��������!")
	MisNeed(MIS_NEED_KILL, 258, 20, 10, 20)

	MisHelpTalk("<t>����һ��С��ʾ�,�ȼ���͵��ܱ���ͨ���ڼ��ɴ�½��(1905,2853)���,�Ͽ�ִ����������!")
	MisResultTalk("<t>��������ѽ!��,�ð�!����ͨ��,�Ͽ�ȥ����һ��NPC�������!���ڰ�����������(2281,2745)�!")


	MisResultCondition(HasMission, 1350)
	MisResultCondition(NoRecord, 1350)
	MisResultCondition(HasFlag, 1350, 29)


	MisResultAction(ClearMission, 1350)
	MisResultAction(SetRecord, 1350)


	InitTrigger()
	TriggerCondition(1, IsMonster, 258)
	TriggerAction(1, AddNextFlag, 1350, 10, 20)
	RegCurTrigger( 13501)


	----------------------------------��������-------ӵ��С�ܻ����5�أ�----------֮�ڶ���

	------------------------------�NPC---------�����Ǿ����������(2281,2745)

	DefineMission(5869,"��Ҫ������", 1351)

	MisBeginTalk("<t>Ŷ!�����¸ҵ�������ѽ!û�뵽����ô���ͨ���˵�һ�صĿ���!������һ��Ҫ��������Ŷ!")
	MisBeginCondition(NoMission, 1351)
	MisBeginCondition(NoRecord, 1351)
	MisBeginCondition(HasRecord, 1350)
	MisBeginAction(AddMission, 1351)
	MisBeginAction(AddTrigger, 13511, TE_KILL, 189, 20)

	MisCancelAction(SystemNotice, "���������޷��ж�")


	MisNeed(MIS_NEED_DESP, "����ɱ��20ֻ��������С��,���������������Ҹ�����!")
	MisNeed(MIS_NEED_KILL, 189, 20, 10, 20)

	MisHelpTalk("<t>�����Ǻ�������������,��Щ��������С����,ͨ�������ڼ��ɴ�½��(1655,2563),��Χ��Ƭ������,���Ƿ���è����������ı���!")
	MisResultTalk("<t>��!���������!�Ͽ��ҵ���һ��NPC�������!���ڱ��Ǳ�(1294,498),�����!ǰ���·�ɲ�������!")

	MisResultCondition(HasMission, 1351)
	MisResultCondition(NoRecord, 1351)
	MisResultCondition(HasFlag, 1351, 29)


	
	MisResultAction(ClearMission, 1351)
	MisResultAction(SetRecord, 1351)

	InitTrigger()
	TriggerCondition(1, IsMonster, 189)
	TriggerAction(1, AddNextFlag, 1351, 10, 20)
	RegCurTrigger( 13511 )


	----------------------------------��������-------ӵ��С�ܻ����5�أ�----------֮������

	------------------------------�NPC---------���Ǳ��̕����L��������(1294,498)

	DefineMission(5870, "��Ҫ��С����ս����", 1352)

	MisBeginTalk("<t>�š������ѵ�ѽ!�����Ǻ������ҵĺ��,�ð�!��������ܴ�����ս!")
	MisBeginCondition(NoMission, 1352)
	MisBeginCondition(NoRecord, 1352)
	MisBeginCondition(HasRecord, 1351)
	MisBeginAction(AddMission, 1352)
	MisBeginAction(AddTrigger, 13521, TE_KILL, 142, 20)

	MisCancelAction(SystemNotice, "���������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�Ȱ���ɱ20ֻѩ�ܱ�����!ƽ���������ٸ���ͨ������!")
	MisNeed(MIS_NEED_KILL, 142, 20, 10, 20)

	MisHelpTalk("<t>����Ⱥ���ϵ�ѩ�ܱ���,������û��(958,661),�������ϵ���ĵ�Ƥ���ñ���ǰ��׵��!")
	MisResultTalk("<t>��ϲ��ƽ������!֤�����ʵ������!�ð�,�Ͻ�����һ��ȥ��!��̫����Ŷ,������,ǰ���и������ս��!ȥ����һ��������,����ɳᰳǵ�(792,3670),�����ǻῼ�����Ŷ!")

	MisResultCondition(HasMission, 1352)
	MisResultCondition(NoRecord, 1352)
	MisResultCondition(HasFlag, 1352, 29)


	MisResultAction(ClearMission, 1352)
	MisResultAction(SetRecord, 1352)

	InitTrigger()
	TriggerCondition(1, IsMonster, 142)
	TriggerAction(1, AddNextFlag, 1352, 10, 20)
	RegCurTrigger( 13521 )


	----------------------------------��������-------ӵ��С�ܻ����5�أ�----------֮���Ĺ�

	------------------------------�NPC---------���I���¿�(792,3670)

	DefineMission(5871, "���뵱�������", 1353)

	MisBeginTalk("<t>�?����!�뵱�ҵ����¿�û��ô��Ŷ!��ͨ���ҵĿ�����˵��!")

	MisBeginCondition(NoMission, 1353)
	MisBeginCondition(NoRecord, 1353)
	MisBeginCondition(HasRecord, 1352)
	MisBeginAction(AddMission, 1353)
	MisBeginAction(AddTrigger, 13531, TE_KILL, 259, 15)

	MisCancelAction(SystemNotice, "���������޷��ж�")

	MisNeed(MIS_NEED_DESP, "��ʾ:�Ȱ���ȥɱ��15ֻ������!!")
	MisNeed(MIS_NEED_KILL, 259, 15, 10, 15)

	MisHelpTalk("<t>��,��֪����Щ�����ܲ������˰�?�ô��������ĺ��I���¿˸����С��ʾ!��������Ⱥ����½��(1982,530)����,��׼���ᵽ���ǲ������Ϣ!")
	MisResultTalk("<t>��,��Ȼ�˺�����,�����������������!���Ͱ�!������!���һ�ز���֤����ʵ�������ؿ���!ǧ��������!���ྭ��ȴ���!ȥ���Ǳ���(1365,570)��������!")

	MisResultCondition(HasMission, 1353)
	MisResultCondition(NoRecord, 1353)
	MisResultCondition(HasFlag, 1353, 24)


	MisResultAction(ClearMission, 1353)
	MisResultAction(SetRecord, 1353)

	InitTrigger()
	TriggerCondition(1, IsMonster, 259)
	TriggerAction(1, AddNextFlag, 1353, 10, 15)
	RegCurTrigger( 13531 )


	----------------------------------��������-------ӵ��С�ܻ����5�أ�----------֮�����

	------------------------------�NPC---------���Ǳ���ʿ���ךW(1365,570)

	DefineMission(5872, "��Ҫͨ��", 1354)

	MisBeginTalk("<t>ѽ?��Ĵ����ٶȿ����,���һ����Ȼ��,��ȴ����Ҫ����ǻ�!��������ս��?")

	MisBeginCondition(NoMission, 1354)
	MisBeginCondition(NoRecord, 1354)
	MisBeginCondition(HasRecord, 1353)
	MisBeginAction(AddMission, 1354)
	MisBeginAction(AddTrigger, 13541, TE_KILL, 504, 10)
	MisBeginAction(AddTrigger, 13542, TE_GETITEM, 4824, 1)

	MisCancelAction(SystemNotice, "���������޷��ж�")

	MisNeed(MIS_NEED_DESP, "�����������!���Ĵ���������ʵ�ܼ�Ŷ!�Ȱ���ɱ��10ֻ���ͼ�����,Ȼ���ռ�1�ŷ���������!")
	MisNeed(MIS_NEED_KILL, 504, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 4824, 1, 20, 1)

	MisHelpTalk("<t>��ô?�㲻�������ͼ����ܶ��Ҳ�����?������һ��������!��,����������,�游������������Ⱥ����(3101,666)�ǿ�����Щ�ܵĻ��԰!")
	MisResultTalk("<t>��!��ô�ѵ��������������!���ǹ�ϲ��!���С�ܱ����������͸���Ĵ�������,��򿪿�����!���ྭ�������������ʤ��!")

	MisResultCondition(HasMission, 1354)
	MisResultCondition(NoRecord, 1354)
	MisResultCondition(HasFlag, 1354, 19)
	MisResultCondition(HasItem, 4824, 1)


	MisResultAction(ClearMission, 1354)
	MisResultAction(SetRecord, 1354)
	MisResultAction(ClearRecord, 1354)
	MisResultAction(ClearRecord, 1353)
	MisResultAction(ClearRecord, 1352)
	MisResultAction(ClearRecord, 1351)                          ----------------������е�������ظ���
	MisResultAction(ClearRecord, 1350)
	MisResultAction(TakeItem, 4824,1)
	MisResultAction(GiveItem, 144, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition(1, IsMonster, 504)
	TriggerAction(1, AddNextFlag, 1354, 10, 10)
	RegCurTrigger( 13541 )

	InitTrigger()
	TriggerCondition(1, IsItem, 4824)
	TriggerAction(1, AddNextFlag, 1354, 20, 1)
	RegCurTrigger( 13542 )

	-------------------------------------------kokora-----------------------------------------------


