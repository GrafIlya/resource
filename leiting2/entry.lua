function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --Оствляем как есть.

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --Без понятия, не меняем ничего.

	local EntryName = " Охраняемый остров "
    SetMapEntryEventName( entry, EntryName )
	
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --Объявления об открытии портала в Мираж Громограда.
    Notice("Объявление: В Аскароне ["..posx..","..posy.."] появился портал в [Охраняемый остров].")

end

function after_destroy_entry_leiting2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Объявление: По имеющейся информации, портал в [Охраняемый остров] исчез!") 

end

function after_player_login_leiting2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --Объявления об открытии портала в Мираж Громограда.
    ChaNotice(player_name, "Объявление: В Аскароне ["..posx..","..posy.."] появился портал в [Охраняемый остров].")

end




--Мираж Громограда(Системные Нотайсы)
--DS team
function check_can_enter_leiting2( role, copy_mgr )
	local i = IsChaStall(role)
	if i == LUA_TRUE then
		SystemNotice(role, "Ты не можешь телепортироваться ")
		return 0    
	end
	if Lv(role) < 150 then
		SystemNotice(role, "Персонажи меньше 150 лвл не допускаются в Охраняемый остров ")
		return 0    
	end
	if Lv(role) > 500 then
		SystemNotice(role, "Персонажи Больше 500 лвл не допускаются в Охраняемый остров ")
		return 0    
	end
	
	local Num
	Num = CheckBagItem(role,7705)
	if Num < 1 then
		SystemNotice(role, "Для входа требуется 5 Наград за Онлайн ")	
		return 0
	end

	local Credit_Leiting2 = GetCredit(role)
	if Credit_Leiting2 < 10 then
		SystemNotice(role, "Ты не имеешь достаточно репутации, чтобы войти в Охраняемый остров ")
		return 0
	else
		DelCredit(role,10)
		return 1
	end
end


function begin_enter_leiting2(role, copy_mgr)

	local Cha = TurnToCha(role)	
	local Dbag = 0
	Dbag = DelBagItem(Cha, 7705, 5)
	
	if Dbag == 1 then
		SystemNotice(role,"Вы вошли в Охраняемый остров ") 
		MoveCity(role, "Thundoria Mirage")

	else
	
		SystemNotice(role, "Не удается войти в Охраняемый остров ")
	end
end