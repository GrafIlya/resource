function config(map)
    MapCanSavePos(map, 0)		-- 1 = ��������� ������� ��������� respaw / / 0 = �� ��������� ������� ��������� respaw
    MapCanPK(map, 1) 
    MapCopyNum(map, 1)			-- 1 ����� ����� ����� �������������� GameServer
    SingleMapCopyPlyNum(map, 300)	-- 300 ������ ����� ����� � �����
    MapCanTeam(map , 1)			-- 1 = ��������� ������� ��������� ������ / / 0 = �� ��������� ������� ��������� ��������
    MapType ( map , 3 )			-- 0 = ��� ��� // 1 = ��� ��� // 2 = ��� ���. ( ������ ����� ������������ � ����������� ) // 3 = ��� ���.( ����� ����� ����, ����� ����������� ) // 4 = ��� ���. ( ������ ����� ������������ � ����������� )        
end


function get_map_entry_pos_binglang2()   --���������� ���������� ������� � ����� ������

	local POS_X=2178
	local POS_Y=2805
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner") --������ ��������� ������� � ����� ������
    SetMapEntryTime(map, "2010/7/28/0/0", "0/2/30", "0/1/0", "0/1/0") --����� ��������� ������� � ����� ������

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

function map_run_binglang2( map )

end

function map_copy_run_binglang2( map_copy )
end

function map_copy_run_special_binglang2( map_copy )

end

function after_enter_binglang2( role , map_copy )

end

function before_leave_binglang2( role )

end


function map_copy_before_close_binglang2( map_copy )

end

function map_copy_close_binglang2( map_copy )
end