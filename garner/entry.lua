--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
   

end 

function after_create_entry(entry) 
   
    

end



function after_player_login_garner(entry, player_name)
  
end










function check_can_pk_garner( role, copy_mgr )
	
	if Lv(role) < 151 then
		SystemNotice(role, "��������� ������ ���� ���� Lv 50, ����� ������ ��� ")
		return 0
     MapCanPK(map, 0) 
    MapType( map , 0 )
	end
	
