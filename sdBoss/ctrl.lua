function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
    MapCopyNum(map, 1)
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end

function map_copy_run_sdBoss( map_copy )
	if XmasMonsterNum1 >= 2008 then
		Notice ( "���ڴ�Ҳ�ͣ�Ĳ��Ի�,ڤ��-������������ʥ��������A��,��ҿ�ȥ��!")
		local monster1 = CreateChaEx(1047, 6312, 5519, 175, 1000,map_copy)
		SetChaLifeTime(monster1,3600000)
		XmasMonsterNum1 = 0
	end
	if XmasMonsterNum2 >= 2008 then
		Notice ( "���ڴ�Ҳ�ͣ�Ĳ�����¹,������ʿ��������ʥ��������B��,��ҿ�ȥ��!")
		local monster2 = CreateChaEx(1049, 49612, 5519, 175, 1000,map_copy)
		SetChaLifeTime(monster2,3600000)
		XmasMonsterNum2 = 0
	end
	if XmasMonsterNum3 >= 2008 then
		Notice ( "���ڴ�Ҳ�ͣ�Ĳ���ѩ��,ڤ��-����˹��������ʥ��������C��,��ҿ�ȥ��!")
		local monster3 = CreateChaEx(1048, 92812, 5519, 175, 1000,map_copy)
		SetChaLifeTime(monster3,3600000)
		XmasMonsterNum3 = 0
	end
	if XmasMonsterNum4 >= 6000 then
		Notice ( "���ڴ�Ҳ�ͣ�Ĳ��Ի��Լ���¹,�Ͳ�����������ʥ��������D��,��ҿ�ȥ��!")
		local monster4 = CreateChaEx(1050, 6312, 43019, 175, 1000,map_copy)
		SetChaLifeTime(monster4,3600000)
		XmasMonsterNum4 = 0
	end
	if XmasMonsterNum5 >= 8000 then
		Notice ( "���ڴ�Ҳ�ͣ�Ĳ��Ի�,��¹�Լ�ѩ��,ѩ�����������ʥ��������E��,��ҿ�ȥ��!")
		local monster5 = CreateChaEx(1051, 49612, 43019, 175, 1000,map_copy)
		SetChaLifeTime(monster5,3600000)
		XmasMonsterNum5 = 0
	end
end