function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --Оставляем.

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --Не меняем.
	local EntryName = " Мираж Сибири "
    SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    --Notice("Объявление: В Москве ["..posx..","..posy.."] открылся портал в [Мираж Сибири].")
end

function after_destroy_entry_binglang2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("Объявление: Портал в Мираж Сибири заркылся!") 

end

function after_player_login_binglang2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    --ChaNotice(player_name, "Объявление: В Москве ["..posx..","..posy.."] открылся портал в [Мираж Сибири].")

end





--Мираж Сибири (Системные Нотайсы)
--DS team
function check_can_enter_binglang2( role, copy_mgr )
	local i = IsChaStall(role)
	if i == LUA_TRUE then
		SystemNotice(role, "Ты не можешь войти в Мираж Сибири ")
		return 0    
	end
	if Lv(role) < 450 then
		SystemNotice(role, "Персонажи ниже 450 лвл не могут зайти в Мираж Сибири ")
		return 0    
	end
	if Lv(role) > 10000 then
		SystemNotice(role, "Персонажи выше 10000 уровня не могут зайти в Мираж Сибири ")
		return 0    
	end
	
	local Num
	Num = CheckBagItem(role,2326)
	if Num < 1 then
		SystemNotice(role, "Для входа требуется таинственный бидет. ")	
		return 0
	end

	local Credit_Binglang2 = GetCredit(role)
	if Credit_Binglang2 < 30 then
		SystemNotice(role, "Ты имеешь не достаточно репутации, чтобы войти в Мираж Ледыни ")
		return 0
	else
		DelCredit(role,30)
		return 1
	end
end


function begin_enter_binglang2(role, copy_mgr)

	local Cha = TurnToCha(role)	
	local Dbag = 0
	Dbag = DelBagItem(Cha, 2326, 1)
	
	if Dbag == 1 then
		SystemNotice(role,"Вы вошли в Мираж Ледыни ") 
		MoveCity(role, "Icicle Mirage")

	else
	
		SystemNotice(role, "Ты не можешь войти в Мираж Ледыни")
	end
end