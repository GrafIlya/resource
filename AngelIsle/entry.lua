--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local EntryName = " ��� ������� "
    SetMapEntryEventName( entry, EntryName )
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("����������: �������� ����������, ����� �������� �� ���������� ["..posx..","..posy.."] �������� ������ � ��� �������. ��������� ���!") --֪ͨ������������������

end

function after_destroy_entry_AngelIsle(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("����������: �������� ����������, ������ � ��� ������� �����. ������������!") 

end

function after_player_login_AngelIsle(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "����������: �������� ����������, ����� �������� �� ���������� ["..posx..","..posy.."] �������� ������ � ��� �������. ��������� ���!") --֪ͨ������������������

end









--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
function check_can_enter_AngelIsle( role, copy_mgr )
	if Lv(role) >=50 then
			
		return 1
				
	else
		SystemNotice(role, "\210\238\235\252\234\238 \239\229\240\241\238\237\224\230\232 \225\238\235\252\248\229 50 \243\240\238\226\237\255 \236\238\227\243\242 \226\245\238\228\232\242\252 \226 \204\232\240 \196\229\236\238\237\238\226")
		return 0    
	end
end

function begin_enter_AngelIsle(role, copy_mgr) 
    
		SystemNotice(role,"\194\251 \226\238\248\235\232 \226 [\204\232\240 \196\229\236\238\237\238\226]") 
		MoveCity(role, "AngelIsle")

end
