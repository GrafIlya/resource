--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
   

end 

function after_create_entry(entry) 
   
    

end



function after_player_login_garner(entry, player_name)
  
end










function check_can_pk_garner( role, copy_mgr )
	
	if Lv(role) < 151 then
		SystemNotice(role, "襄瘃铐噫� 漕腈睇 猁螯 恹 Lv 50, 黩钺� 磬鬣螯 镡� ")
		return 0
     MapCanPK(map, 0) 
    MapType( map , 0 )
	end
	
