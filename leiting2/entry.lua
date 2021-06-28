function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --�������� ��� ����.

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��� �������, �� ������ ������.

	local EntryName = " ���������� ������ "
    SetMapEntryEventName( entry, EntryName )
	
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --���������� �� �������� ������� � ����� ����������.
    Notice("����������: � �������� ["..posx..","..posy.."] �������� ������ � [���������� ������].")

end

function after_destroy_entry_leiting2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("����������: �� ��������� ����������, ������ � [���������� ������] �����!") 

end

function after_player_login_leiting2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --���������� �� �������� ������� � ����� ����������.
    ChaNotice(player_name, "����������: � �������� ["..posx..","..posy.."] �������� ������ � [���������� ������].")

end




--����� ����������(��������� �������)
--DS team
function check_can_enter_leiting2( role, copy_mgr )
	local i = IsChaStall(role)
	if i == LUA_TRUE then
		SystemNotice(role, "�� �� ������ ����������������� ")
		return 0    
	end
	if Lv(role) < 150 then
		SystemNotice(role, "��������� ������ 150 ��� �� ����������� � ���������� ������ ")
		return 0    
	end
	if Lv(role) > 500 then
		SystemNotice(role, "��������� ������ 500 ��� �� ����������� � ���������� ������ ")
		return 0    
	end
	
	local Num
	Num = CheckBagItem(role,7705)
	if Num < 1 then
		SystemNotice(role, "��� ����� ��������� 5 ������ �� ������ ")	
		return 0
	end

	local Credit_Leiting2 = GetCredit(role)
	if Credit_Leiting2 < 10 then
		SystemNotice(role, "�� �� ������ ���������� ���������, ����� ����� � ���������� ������ ")
		return 0
	else
		DelCredit(role,10)
		return 1
	end
end


function begin_enter_leiting2(role, copy_mgr)

	local Cha = TurnToCha(role)	
	local Dbag = 0
	Dbag = DelBagItem(Cha, 7705, 5)
	
	if Dbag == 1 then
		SystemNotice(role,"�� ����� � ���������� ������ ") 
		MoveCity(role, "Thundoria Mirage")

	else
	
		SystemNotice(role, "�� ������� ����� � ���������� ������ ")
	end
end