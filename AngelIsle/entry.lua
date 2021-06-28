--´ËÎÄ¼þÖÐ£¬·²ÊÇ¿ÉÄÜ±»¶à´ÎÖ´ÐÐµÄº¯Êý£¬º¯ÊýÃû¶¼Òª¼ÓÉÏµØÍ¼ÃûÇ°×º£¬Èçafter_destroy_entry_testpk
--´ËÎÄ¼þÃ¿ÐÐ×î´ó×Ö·û¸öÊýÎª255£¬ÈôÓÐÒìÒé£¬ÇëÓë³ÌÐòÌ½ÌÖ

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --ÉèÖÃµØÍ¼Èë¿ÚÊµÌåµÄ±àºÅ£¨¸Ã±àºÅ¶ÔÓ¦ÓÚcharacterinfo.txtµÄË÷Òý£©

end 

function after_create_entry(entry) 
    local EntryName = " Ìèð Àíãåëîâ "
    SetMapEntryEventName( entry, EntryName )
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --´´½¨¸±±¾¹ÜÀí¶ÔÏó£¬´Ëº¯ÊýÔÚÓÐÏÔÊ½Èë¿ÚµÄµØÍ¼ÖÐ±ØÐëµ÷ÓÃ£¬¶ÔÓÚÒþÊ½Èë¿ÚµÄµØÍ¼£¨Èç¶ÓÎéÌôÕ½£©ÎÞÒªµ÷ÓÃ¸Ã½Ó¿Ú

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --È¡µØÍ¼Èë¿ÚµÄÎ»ÖÃÐÅÏ¢£¨µØÍ¼Ãû£¬×ø±ê£¬Ä¿±êµØÍ¼Ãû£©
    Notice("Îáúÿâëåíèå: Ñîãëàñíî ñîîáùåíèÿì, îêîëî Àñêàðîíà ïî êîðäèíàòàì ["..posx..","..posy.."] îòêðûëñÿ ïîðòàë â Ìèð Àíãåëîâ. Ïðîâåðüòå ýòî!") --Í¨Öª±¾×é·þÎñÆ÷µÄËùÓÐÍæ¼Ò

end

function after_destroy_entry_AngelIsle(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Îáúÿâëåíèå: Ñîãëàñíî ñîîáùåíèÿì, ïîðòàë â Ìèð Àíãåëîâ èñ÷åç. Âîçðàäóéòåñü!") 

end

function after_player_login_AngelIsle(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --È¡µØÍ¼Èë¿ÚµÄÎ»ÖÃÐÅÏ¢£¨µØÍ¼Ãû£¬×ø±ê£¬Ä¿±êµØÍ¼Ãû£©
    ChaNotice(player_name, "Îáúÿâëåíèå: Ñîãëàñíî ñîîáùåíèÿì, îêîëî Àñêàðîíà ïî êîðäèíàòàì ["..posx..","..posy.."] îòêðûëñÿ ïîðòàë â Ìèð Àíãåëîâ. Ïðîâåðüòå ýòî!") --Í¨Öª±¾×é·þÎñÆ÷µÄËùÓÐÍæ¼Ò

end









--ÓÃÓÚ¼ì²â½øÈëÌõ¼þ
--·µ»ØÖµ£º0£¬²»Âú×ã½øÈëÌõ¼þ¡£1£¬³É¹¦½øÈë¡£
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
