--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCanTeam( map, 1 )
    MapType( map , 3 )
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
    --MapCanTeam(map , 1)
    MapCanStall(map , 0)
end


function get_map_entry_pos_secretgarden()   --������ڵ�λ�õ����꣨���꣨�ף���

	local POS_X=2211
	local POS_Y=2789

	return POS_X , POS_Y

end

function init_entry(map)

    SetMapEntryMapName(map, "garner") --������ڵ�λ�ã���ͼ����
     SetMapEntryTime(map, "2010/8/1/0/0", "0/1/0", "0/0/30", "0/0/55") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����

end

function after_enter_secretgarden( role , map_copy )
end

function before_leave_secretgarden( role )
end

--function map_copy_first_run_secretgarden( map_copy )
--	lua_SetCopySpecialInter(map_copy , 10000)
--	Notice("10")
--
--end

--function map_copy_run_secretgarden( map_copy )

	local HowManyNoDead = GetMapActivePlayer(map_copy)
	Notice("� ����������� ����� "..HowManyNoDead.." ��������")
	


function map_copy_before_close_secretgarden( map_copy )
	How_Many_Active = GetMapActivePlayer(map_copy)
	if How_Many_Active > 0 then
		DealAllActivePlayerInMap(map_copy,"GiveSpecItem")
	end
	How_Many_Active = 0
	Money_all = 100000000
	Every_5_minute = 0
end

--瘍?��+��+�?��
function map_copy_close_secretgarden( map_copy )
	ClearAllSubMapCha(map_copy)
end
--
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_secretgarden( map )
	local Now_Time = GetNowTime()
		return 1

end 


function GiveSpecItem( role )
	if How_Many_Active == 0 then
		return
	end
	
	local Money_secretgarden = Money_all/How_Many_Active
--	SystemNotice(role,How_Many_Active)

	if How_Many_Active > 5 then
		AddMoney ( role , 0 , Money_secretgarden )
	--	local message = "�릨�� "..How_Many_Active .. "��ப��, ��� ����稫� "..Money_secretgarden .." ����� "
	--	SystemNotice(role,How_Many_Active)
		return
	end

	if How_Many_Active <  6 and How_Many_Active > 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 1031  , 1 , 4 )
		else
			GiveItem ( role , 0 , 1031  , 1 , 4 )
		end
			 
		AddMoney ( role , 0 , Money_secretgarden )
		--SystemNotice(role,How_Many_Active)
					
		--local message = "�릨�� "..How_Many_Active .."��ப�, �� ������ "..Money_secretgarden .."����� � 1 ������ ����� ����� "
		--Notice ( message )
		return
	end
	
	if How_Many_Active == 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 1032  , 1 , 4 )
		else
			GiveItem ( role , 0 , 1032  , 1 , 4 )
		end
		AddMoney ( role , 1000000 , Money_secretgarden )
		local cha_name = GetChaDefaultName ( role )
		local message = "����������� "..cha_name.."! �� ��������  ".. Money_secretgarden .." ������ � 1 ������� "
	--	SystemNotice(role,How_Many_Active)
		SystemNotice(role,message)
		return
	end
end 