function config_entry(entry) 
    SetMapEntryEntiID(entry,193,1) 
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
	local EntryName = "Священная Война"
	SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("Объявление: В окрестностях Шайтана ["..posx..","..posy.."] открылся портал в [Священную войну] для игроков выше 65 уровня. Следите за объявлениями. Удачи!") 
	local EntryName = "Священная война: [Пиратская фракция] против [Флотская фракция] (65 уровень и выше)"
    SetMapEntryEventName( entry, EntryName )
end

function after_destroy_entry_guildwar(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("Объявление: Портал в Священную войну для игроков выше 65 уровня закрылся. Удачи!") 
end

function after_player_login_guildwar(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	ChaNotice(player_name, "Объявление: В окрестностях Шайтана ["..posx..","..posy.."] открылся портал в [Священную войну] для игроков выше 65 уровня. Следите за объявлениями. Удачи!") 
end

function check_can_enter_guildwar( role, copy_mgr )
local FightingBook_Num = 0
      FightingBook_Num = CheckBagItem( role,3849 )
if FightingBook_Num <= 0 then
		SystemNotice(role,"Для участия в [Священной войне] вы должны иметь при себе Медаль Отваги ")
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","Требуется 1 Медаль отваги ")
		return 0
	end
local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "Выйдите из отряда, прежде чем войти в [Священную войну]" )
		return 0
	end
 if  GetChaGuildID(role) == 0 then
		SystemNotice(role,"Вы должны находиться в гильдии пиратов или во флотском подразделении, чтобы войти в [Священную войну]")
     return 0
elseif Lv(role) < 65  then
		SystemNotice(role, "Только игроки выше 65 уровня могу войти в [Священную войну]")
	     return 0    
	end
        local Num_1= CheckBagItem(role,4661)
	if Num_1 >= 1 then
		SystemNotice(role, "Пожалуйста, уберите из инвентаря [Дерево для починки]")
		return 0
	end
	local Num_2= CheckBagItem(role,4546)
	if Num_2 >= 1 then
		SystemNotice(role, "Пожалуйста, уберите из инвентаря [Кристальную руду]")
		return 0
	end
	local Num_3= CheckBagItem(role,1684)
	if Num_3 >= 1 then
		SystemNotice(role, "Пожалуйста, уберите из инвентаря [Твердый черепаший панцирь]")
		return 0
	end
	local Num_4= CheckBagItem(role,1683)
	if Num_4 >= 1 then
		SystemNotice(role, "Пожалуйста, уберите из инвентаря [Фрагмент черепашьего панциря]")
		return 0
	end
	local Num_5= CheckBagItem(role,4012)
	if Num_5 >= 1 then
		SystemNotice(role, "Пожалуйста, уберите из инвентаря [Лунохвостый угорь]")
		return 0
	end
	local Num_6= CheckBagItem(role,4013)
	if Num_6 >= 1 then
		SystemNotice(role, "Пожалуйста, уберите из инвентаря [Ныряющий моллюск]")
		return 0
	end
        local Num_7= CheckBagItem(role,2964)
	if Num_7 >= 1 then
		SystemNotice(role, "Пожалуйста, уберите из инвентаря [Знак Флота]")
		return 0
	end
	local Num_8= CheckBagItem(role,3001)
	if Num_8 >= 1 then
		SystemNotice(role, "Пожалуйста, уберите из инвентаря [Пиратскую метку]")
		return 0
	end
	local Num_9= CheckBagItem(role,4011)
	if Num_9 >= 1 then
		SystemNotice(role, "Пожалуйста, уберите из инвентаря [Реактивную рыбу]")
		return 0
	end
	local Num_10= CheckBagItem(role,1720)
	if Num_10 >= 1 then
		SystemNotice(role, "Пожалуйста, уберите из инвентаря [Рыбную кость]")
		return 0
	end
	local Num_11= CheckBagItem(role,2382)
	if Num_11 < 1 then
		SystemNotice(role, "Пожалуйста, поговорите с Администратором Священной войны, чтобы получить [Знак жизни и смерти]")
		return 0
	end
end

function begin_enter_guildwar(role, copy_mgr)
	local Cha = TurnToCha(role)
	if  GetChaGuildID(Cha) <= 100 and GetChaGuildID(Cha) > 0 then
		if count_haijun < 45 then
			SystemNotice(role,"Вход в [Священную войну]")
			if ( AddonSystem["Teleport"] == 1 ) then
				local n = math.random( 102, 104 )
				teleport( role, n )
			else
				MoveCity( role, "guildwarnavyside" )
			end
			count_haijun = count_haijun + 1
		else
			SystemNotice( role, "Флотская фракция имеет предельное количество бойцов" )
		end
	end
	if GetChaGuildID( Cha ) > 100 and GetChaGuildID( Cha ) <= 200 then
		if count_haidao < 45 then
			SystemNotice( role, "Вход в [Священную войну]" )
			if ( AddonSystem["Teleport"] == 1 ) then
				local n = math.random( 105, 107 )
				teleport( role, n )
			else
				MoveCity( role, "guildwarpirateside" )
			end
			count_haidao = count_haidao + 1
		else
			SystemNotice( role, "Пиратская фракция имеет предельное количество бойцов" )
		end
	end
end