--´ËÎÄ¼şÖĞ£¬·²ÊÇ¿ÉÄÜ±»¶à´ÎÖ´ĞĞµÄº¯Êı£¬º¯ÊıÃû¶¼Òª¼ÓÉÏµØÍ¼ÃûÇ°×º£¬Èçafter_destroy_entry_testpk
--´ËÎÄ¼şÃ¿ĞĞ×î´ó×Ö·û¸öÊıÎª255£¬ÈôÓĞÒìÒé£¬ÇëÓë³ÌĞòÌ½ÌÖ

function config_entry(entry) 
   

end 

function after_create_entry(entry) 
   
    

end



function after_player_login_garner(entry, player_name)
  
end










function check_can_pk_garner( role, copy_mgr )
	
	if Lv(role) < 151 then
		SystemNotice(role, "Ïåğñîíàæè äîëæíû áûòü âûøå Lv 50, ÷òîáû íà÷àòü ïâï ")
		return 0
     MapCanPK(map, 0) 
    MapType( map , 0 )
	end
	
