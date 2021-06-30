--´ËÎÄ¼şÖĞ£¬·²ÊÇ¿ÉÄÜ±»¶à´ÎÖ´ĞĞµÄº¯Êı£¬º¯ÊıÃû¶¼Òª¼ÓÉÏµØÍ¼ÃûÇ°×º

function config(map)
    MapCanSavePos(map, 0) --ÉèÖÃµØÍ¼ÊÇ·ñ±£´æ½ÇÉ«Î»ÖÃ£¨µØÍ¼£¬×ø±ê£¬·½Ïò£©£¬´ËÉèÖÃÓ°Ïì¸ÃµØÍ¼µÄËùÓĞ¸±±¾
    MapCanPK(map, 1) --ÉèÖÃµØÍ¼ÊÇ·ñ¿ÉÒÔPK£¬´ËÉèÖÃÓ°Ïì¸ÃµØÍ¼µÄËùÓĞ¸±±¾
    MapCopyNum(map, 1) --ÉèÖÃµØÍ¼µÄ¸±±¾ÊıÄ¿£¬Èç¹û²»µ÷ÓÃ¸ÃÓï¾ä£¬ÔòÊ¹ÓÃÄ¬ÈÏÖµ1
    SingleMapCopyPlyNum(map, 300)   --ÉèÖÃÒ»¸ö¸±±¾µÄÍæ¼ÒÊı
	MapCanTeam(map , 1)
    MapType ( map , 4 )
end

function map_run_leiting2( map )

end

function get_map_entry_pos_leiting2()   --Ìåñò?îòêğûò? ïîğòàë?

	local POS_X=2168
	local POS_Y=2805
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner") --Ğåãèîí ïîÿâëåí? ïîğòàë??Ìèğà?Ëåäûíè
    --SetMapEntryTime(map, "2010/10/18/0/0", "0/2/0", "0/1/0", "0/1/0") --Âğåìÿ ïîÿâëåí? ïîğòàë??Ìèğà?Ëåäûíè
    SetMapEntryTime(map, "2010/10/18/0/0", "0/1/0", "0/1/0", "0/1/0") --Âğåìÿ ïîÿâëåí? ïîğòàë??Ìèğà?Ëåäûíè

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

function map_copy_run_leiting2(map_copy)
end

function map_copy_run_special_leiting2(map_copy)
end

function after_enter_leiting2( role , map_copy )
end

function before_leave_leiting2( role )
end