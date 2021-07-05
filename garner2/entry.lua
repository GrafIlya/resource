function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
	local EntryName = " \213\224\238\241 \204\238\241\234\226\251"
	SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
end

function after_destroy_entry_garner2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    GMNotice("\207\238\240\242\224\235 \226 \213\224\238\241 \204\238\241\234\226\251 \231\224\234\240\251\235\241\255.") 
end

function after_player_login_garner2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ChaNotice(player_name, "\207\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \239\238\240\242\224\235 \226 \213\224\238\241 \204\238\241\234\226\251")

end



function check_can_enter_garner2(role, copy_mgr)
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem(role, 3849)

	----------------------------
	-- Êîíåö ïðîâåðêè íà ôîðæ --
	----------------------------
	local Team_In = IsInTeam(role)
	
	if (Team_In == 1) then
		SystemNotice(role, "\205\229\235\252\231\255 \226\238\233\242\232 \226 \213\224\238\241 \226 \238\242\240\255\228\229. \194\251\233\228\232\242\229 \232\231 \238\242\240\255\228\224 \232 \226\238\233\228\232\242\229 \241\237\238\226\224")
		--SystemNotice(role, "§¯§Ö§Ý§î§Ù§ñ §Ó§à§Û§ä§Ú §Ó §·§Ñ§à§ã §Ó §à§ä§â§ñ§Õ§Ö. §£§í§Û§Õ§Ú§ä§Ö §Ú§Ù §à§ä§â§ñ§Õ§Ñ §Ú §Ó§à§Û§Õ§Ú§ä§Ö §ã§ß§à§Ó§Ñ")
		return 0
	end
	
	if FightingBook_Num <= 0 then
		SystemNotice(role, "\202 \241\238\230\224\235\229\237\232\254, \243 \226\224\241 \237\229\242 \204\229\228\224\235\232 \206\242\226\224\227\232")
		--SystemNotice(role, "§¬ §ã§à§Ø§Ñ§Ý§Ö§ß§Ú§ð, §å §Ó§Ñ§ã §ß§Ö§ä §®§Ö§Õ§Ñ§Ý§Ú §°§ä§Ó§Ñ§Ô§Ú")
		return 0
	elseif FightingBook_Num > 1 then
		return 0
	end

	local Has_money = check_HasMoney(role)
	if Has_money == 1 then
		return 1
	else
		SystemNotice(role, "\211 \226\224\241 \237\229 \245\226\224\242\224\229\242 \231\238\235\238\242\224 \228\235\255 \243\247\224\241\242\232\255 \226 \225\238\255\245 \213\224\238\241\224")
		--SystemNotice(role, "§µ §Ó§Ñ§ã §ß§Ö §ç§Ó§Ñ§ä§Ñ§Ö§ä §Ù§à§Ý§à§ä§Ñ §Õ§Ý§ñ §å§é§Ñ§ã§ä§Ú§ñ §Ó §Ò§à§ñ§ç §·§Ñ§à§ã§Ñ")
		return 0
	end
end

function check_HasMoney(role)
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*100
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Have >= Money_Need then
		return 1
	end
end

function begin_enter_garner2(role, copy_mgr) 
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*100
	local Money_Now = Money_Have - Money_Need
	SetChaAttrI( role , ATTR_GD , Money_Now )
	SystemNotice(role,"\194\231\237\238\241 \231\224 \226\245\238\228 "..Money_Need.." \231\238\235\238\242\224 ") 
	MoveCity( role, "Chaos Argent" )
end