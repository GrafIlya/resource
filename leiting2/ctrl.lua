--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
	MapCanTeam(map , 1)
    MapType ( map , 4 )
end

function map_run_leiting2( map )

end

function get_map_entry_pos_leiting2()   --����?������? ������?

	local POS_X=2168
	local POS_Y=2805
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner") --������ �������? ������??����?������
    --SetMapEntryTime(map, "2010/10/18/0/0", "0/2/0", "0/1/0", "0/1/0") --����� �������? ������??����?������
    SetMapEntryTime(map, "2010/10/18/0/0", "0/1/0", "0/1/0", "0/1/0") --����� �������? ������??����?������

end


function can_open_entry_binglang2( map ) 
--	local time = GetTickCount ( ) 
	local Now_Time = GetNowTime()
	if Now_Time == 0 or Now_Time == 6 or Now_Time == 12 or Now_Time == 18 then
		return 1
	else
		return 1
	end

end 

function map_copy_run_leiting2(map_copy)
end

function map_copy_run_special_leiting2(map_copy)
end

function after_enter_leiting2( role , map_copy )
end

function before_leave_leiting2( role )
end