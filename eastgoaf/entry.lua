--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local EntryName = " ������ - ����� "
    SetMapEntryEventName( entry, EntryName )
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("����������: �������� ����������, ����� �������� �� ���������� ["..posx..","..posy.."] �������� ������ � ������ - �����. ��������� ���!") --֪ͨ������������������

end

function after_destroy_entry_eastgoaf(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("����������: �������� ����������, ������ � ������ - ����� �����. ������������!") 

end

function after_player_login_eastgoaf(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "����������: �������� ����������, ����� �������� �� ���������� ["..posx..","..posy.."] �������� ������ � ������ - �����. ��������� ���!") --֪ͨ������������������

end









--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
function check_can_enter_eastgoaf( role, copy_mgr )
	
end

function begin_enter_eastgoaf(role, copy_mgr) 
    
		SystemNotice(role," �� ����� � [������ - �����]!") 
		MoveCity(role, "Logovo")

end
