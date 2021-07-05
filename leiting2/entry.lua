function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --Оствляем как есть.

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --Без понятия, не меняем ничего.

	local EntryName = " Мираж АлкашГрада "
    SetMapEntryEventName( entry, EntryName )
	
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --Объявления об открытии портала в Мираж Громограда.
    --Notice("В Москве ["..posx..","..posy.."] появился портал в Мираж АлкашГрада.")

end

function after_destroy_entry_leiting2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("Объявление: По имеющейся информации, портал в Мираж АлкашГрада исчез!") 

end

function after_player_login_leiting2(entry, player_name)
    --map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --Объявления об открытии портала в Мираж Громограда.
   -- ChaNotice(player_name, "В Москве ["..posx..","..posy.."] появился портал в Параллельный мир.")

end


--Мираж Громограда(Системные Нотайсы)
--DS team
function check_can_enter_leiting2( role, copy_mgr )
	----------------------------
	-- Конец проверки на форж --
	----------------------------
	local i = IsChaStall(role)
	if i == LUA_TRUE then
		PopupNotice(role, "Ты не можешь телепортироваться ")
		return 0    
	end
	if Lv(role) < 170 then
		PopupNotice(role, "Персонажи меньше 170 лвл не допускаются в Мираж АлкашГрада ")
		return 0    
	end
	
	local Num
	Num = CheckBagItem(role,2326)
	if Num < 1 then
		PopupNotice(role, "Для входа нужна Маска реальности ")	
		return 0
	end

	local Credit_Leiting2 = GetCredit(role)
	if Credit_Leiting2 < 15 then
		PopupNotice(role, "Ты не имеешь достаточно репутации, чтобы войти в Параллельный мир ")
		return 0
	else
		DelCredit(role,15)
		return 1
	end
end


function begin_enter_leiting2(role, copy_mgr)

	local Cha = TurnToCha(role)	
	local Dbag = 0
	Dbag = DelBagItem(Cha, 2326, 1)
	
	if Dbag == 1 then
		SystemNotice(role,"Вы вошли в Параллельный мир ") 
		MoveCity(role, "Thundoria Mirage")

	else
	
		SystemNotice(role, "Не удается войти в Параллельный мир ")
	end
end