--------------------------------------------------------------------------
--									--
--									--
--				ctrl.lua				--
--			made by Prince				--
--									--
--------------------------------------------------------------------------
print( "Loading zonagg Ctrl.lua" )

function config(map)
	MapCanSavePos(map, 0) 					-- ����������� ��������� ������� ��������� �� ����� (1 - ��, 0 - ���)
	MapCanPK(map, 1) 						-- ����������� ��������� ������ ���������� (1 - ��, 0 - ���)
	MapCanTeam( map, 1 )					-- ����������� ��������� ������ (1 - ��, 0 - ���)
	MapType ( map , 4 )						-- ��� �����
	MapCanStall(map , 1)					-- ����������� ��������� (1 - ��, 0 - ���)
	SingleMapCopyPlyNum(map, 300)  				-- ���������� ������� �� �����

end


function get_map_entry_pos_zonagg() 

        local POS_X=2244
	local POS_Y=2853

	return POS_X , POS_Y

end

end

function init_entry(map)

end

function after_enter_zonagg( role , map_copy )
end

function before_leave_zonagg( role )
end
