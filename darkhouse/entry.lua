function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1) 
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
	local EntryName = "Серебряный Хаос"
	SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Обьявление: В Великом Синем Океане, открылся портал ["..posx..","..posy.."] ведущий в Серебрянный Хаос!")
end

function after_destroy_entry_garner2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("Объявление: Портал в [Серебряный хаос] закрылся. Удачи!") 
end

function after_player_login_garner2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ChaNotice(player_name, "Обьявление: В Великом Синем Океане, открылся портал ["..posx..","..posy.."] ведущий в Серебрянный Хаос!") 
end

function check_can_enter_garner2( role, copy_mgr )
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )
	local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "Нельзя войти в [Серебряный хаос] в отряде. Выйдите из отряда и войдите снова " )
		return 0
	end
	if FightingBook_Num <= 0 then
		SystemNotice ( role , "К сожалению, у вас нет Медали Отваги " )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","Требуется 1 Медаль Отваги ")
		return 0
	end
	local role_RY = GetChaItem2 ( role , 2 , 3849 )
	local HonorPoint = GetItemAttr ( role_RY , ITEMATTR_VAL_STR)
	if HonorPoint < 20 then
		SystemNotice ( role , "Чтобы войти в [Серебряный хаос] требуется 20 очков чести " )
		return 0
	end
	if HonorPoint >30000 then
		SystemNotice ( role , "Нет, определенно вам нельзя войти в [Серебряный хаос]. Вы слишком великий воин! У Вас очень много очков чести!" )
		return 0
	end
	local Credit_Garner2 = GetCredit(role)
	 if Credit_Garner2 < 30 then 
		SystemNotice ( role , "Чтобы войти в [Серебряный хаос] нужно 30 очков репутации " )
		return 0
	end
	if Lv(role) < 20 then
	SystemNotice(role, "Только игроки выше 20 уровня могут войти в [Серебряный хаос]")
		return 0    
	end
	local Has_money = check_HasMoney(role)
	if Has_money == 1 then
		return 1
	else
		SystemNotice(role,"У вас не хватает золота для участия в боях [Серебряного хаоса]")
		return 0
	end
end

function check_HasMoney(role)
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*50
	local Money_Have = GetChaAttr ( role , ATTR_GD )
		if Money_Have >= Money_Need then
			return 1
		end
end

function begin_enter_garner2(role, copy_mgr) 
	local	Money_Have = GetChaAttr ( role , ATTR_GD )
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*50
	local	Money_Now = Money_Have - Money_Need
	SetChaAttrI( role , ATTR_GD , Money_Now )
	DelCredit(role,30)
		SystemNotice(role,"Взят взнос за вход в [Серебряный хаос]: "..Money_Need.." золота") 
		MoveCity(role, "Chaos Argent")
Money_all = Money_all + Money_Need * 0.8
end