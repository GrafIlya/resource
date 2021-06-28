--´ËÎÄ¼þÖÐ£¬·²ÊÇ¿ÉÄÜ±»¶à´ÎÖ´ÐÐµÄº¯Êý£¬º¯ÊýÃû¶¼Òª¼ÓÉÏµØÍ¼ÃûÇ°×º

function config(map)
    MapCanSavePos(map, 0) --ÉèÖÃµØÍ¼ÊÇ·ñ±£´æ½ÇÉ«Î»ÖÃ£¨µØÍ¼£¬×ø±ê£¬·½Ïò£©£¬´ËÉèÖÃÓ°Ïì¸ÃµØÍ¼µÄËùÓÐ¸±±¾
    MapCanPK(map, 1) --ÉèÖÃµØÍ¼ÊÇ·ñ¿ÉÒÔPK£¬´ËÉèÖÃÓ°Ïì¸ÃµØÍ¼µÄËùÓÐ¸±±¾
    MapCanTeam( map, 1 )
    MapType( map , 3 )
    MapCopyNum(map, 1) --ÉèÖÃµØÍ¼µÄ¸±±¾ÊýÄ¿£¬Èç¹û²»µ÷ÓÃ¸ÃÓï¾ä£¬ÔòÊ¹ÓÃÄ¬ÈÏÖµ1
    SingleMapCopyPlyNum(map, 300)   --ÉèÖÃÒ»¸ö¸±±¾µÄÍæ¼ÒÊý
    --MapCanTeam(map , 1)
    MapCanStall(map , 0)
end


function get_map_entry_pos_secretgarden()   --ÉèÖÃÈë¿ÚµÄÎ»ÖÃµÄ×ø±ê£¨×ø±ê£¨Ã×£©£©

	local POS_X=2211
	local POS_Y=2789

	return POS_X , POS_Y

end

function init_entry(map)

    SetMapEntryMapName(map, "garner") --ÉèÖÃÈë¿ÚµÄÎ»ÖÃ£¨µØÍ¼Ãû£©
     SetMapEntryTime(map, "2010/8/1/0/0", "0/1/0", "0/0/30", "0/0/55") --ÉèÖÃÈë¿ÚµÄÊ±¼ä£¬µØÍ¼¶ÔÏó£¬Ê×´Î¿ªÆôÊ±¼ä£¨Äê/ÔÂ/ÈÕ/Ê±/·Ö£©£¬ÒÔºóÔÙ´Î¿ªÆôµÄ¼ä¸ô£¨ÈÕ/Ê±/·Ö£¬È«£°±íÊ¾Ö»ÓÐÊ×´Î¿ªÆô£©£¬Ã¿´Î¿ªÆôµ½Èë¿ÚÏûÊ§µÄ¼ä¸ô£¨ÈÕ/Ê±/·Ö£¬È«£°±íÊ¾ÓÀ²»ÏûÊ§£©£¬Ã¿´Î¿ªÆôµ½µØÍ¼¹Ø±ÕµÄ¼ä¸ô£¨ÈÕ/Ê±/·Ö£¬È«£°±íÊ¾ÓÀ²»¹Ø±Õ£©¡£¡£

end

function after_enter_secretgarden( role , map_copy )
end

function before_leave_secretgarden( role )
end

--function map_copy_first_run_secretgarden( map_copy )
--	lua_SetCopySpecialInter(map_copy , 10000)
--	Notice("10")
--
--end

--function map_copy_run_secretgarden( map_copy )

	local HowManyNoDead = GetMapActivePlayer(map_copy)
	Notice("Â Ñåðåáðÿííîì õàîñå "..HowManyNoDead.." âûæèâøèõ")
	


function map_copy_before_close_secretgarden( map_copy )
	How_Many_Active = GetMapActivePlayer(map_copy)
	if How_Many_Active > 0 then
		DealAllActivePlayerInMap(map_copy,"GiveSpecItem")
	end
	How_Many_Active = 0
	Money_all = 100000000
	Every_5_minute = 0
end

--ç˜?ü˜+•Š+–?
function map_copy_close_secretgarden( map_copy )
	ClearAllSubMapCha(map_copy)
end
--
--µØÍ¼¿ª¹ØÅÐ¶Ï¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª

function can_open_entry_secretgarden( map )
	local Now_Time = GetNowTime()
		return 1

end 


function GiveSpecItem( role )
	if How_Many_Active == 0 then
		return
	end
	
	local Money_secretgarden = Money_all/How_Many_Active
--	SystemNotice(role,How_Many_Active)

	if How_Many_Active > 5 then
		AddMoney ( role , 0 , Money_secretgarden )
	--	local message = "‚ë¦¨«® "..How_Many_Active .. "¨£à®ª®¢, ®­¨ ¯®«ãç¨«¨ "..Money_secretgarden .." ¤¥­¥£ "
	--	SystemNotice(role,How_Many_Active)
		return
	end

	if How_Many_Active <  6 and How_Many_Active > 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 1031  , 1 , 4 )
		else
			GiveItem ( role , 0 , 1031  , 1 , 4 )
		end
			 
		AddMoney ( role , 0 , Money_secretgarden )
		--SystemNotice(role,How_Many_Active)
					
		--local message = "‚ë¦¨«® "..How_Many_Active .."¨£à®ª , ˆ¬ ¤ «®áì "..Money_secretgarden .."£®«¤  ¨ 1 ‘¢ïâãî í¬¡«¥¬ã ª®«ìæ  "
		--Notice ( message )
		return
	end
	
	if How_Many_Active == 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 1032  , 1 , 4 )
		else
			GiveItem ( role , 0 , 1032  , 1 , 4 )
		end
		AddMoney ( role , 1000000 , Money_secretgarden )
		local cha_name = GetChaDefaultName ( role )
		local message = "Ïîçäðàâëÿåì "..cha_name.."! Âû âûèãðàëè  ".. Money_secretgarden .." çîëîòà è 1 Ýìáëåìó  "
	--	SystemNotice(role,How_Many_Active)
		SystemNotice(role,message)
		return
	end
end 