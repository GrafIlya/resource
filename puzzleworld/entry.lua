--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 


end

function after_destroy_entry_leiting2(entry)


end

function after_player_login_leiting2(entry, player_name)
    

end










--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
function check_can_enter_puzzleworld( role, copy_mgr )
	if Lv(role) >=100 then
			
		return 1
				
	else
		SystemNotice(role, "� ���������� ��������� ��� ����� ����� ���� ������ 100 LvL ")
		return 0    
	end
end

function begin_enter_puzzleworld(role, copy_mgr) 
    
		SystemNotice(role,"�� ����� � ���������� ��������� ��� ") 
		MoveCity(role, "Demonic World")

end