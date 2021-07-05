print("* Loading UpgradeSystem.lua" )
Upgrade = {}
Upgrade.Money = 100000
--Оружие Аббадона -- Оружие Мертвеца
Upgrade[1] = {ID = 2332, Catalyst = 8043, Result = 5002} --Меч круза
Upgrade[2] = {ID = 2334, Catalyst = 8043, Result = 5001} --Коса чампа
Upgrade[3] = {ID = 2338, Catalyst = 8043, Result = 5003} --Пушка Шарпа
Upgrade[4] = {ID = 2339, Catalyst = 8043, Result = 5004} --Лук Шарпа
Upgrade[5] = {ID = 2336, Catalyst = 8043, Result = 5005} --Клинок Воя
Upgrade[6] = {ID = 2341, Catalyst = 8043, Result = 5006} --Коса БК
Upgrade[7] = {ID = 2343, Catalyst = 8043, Result = 5007} --Коса СМ
Upgrade[8] = {ID = 2333, Catalyst = 8043, Result = 5008} --Молот Ами Чампа
--Оружие Мертвеца -- Оружие Беса
Upgrade[9] = {ID = 5002, Catalyst = 8045, Result = 5016} --Меч круза
Upgrade[10] = {ID = 5001, Catalyst = 8045, Result = 5017} --Коса чампа
Upgrade[11] = {ID = 5003, Catalyst = 8045, Result = 5018} --Пушка Шарпа
Upgrade[12] = {ID = 5004, Catalyst = 8045, Result = 5019} --Лук Шарпа
Upgrade[13] = {ID = 5005, Catalyst = 8045, Result = 5020} --Клинок Воя
Upgrade[14] = {ID = 5006, Catalyst = 8045, Result = 5021} --Коса БК
Upgrade[15] = {ID = 5007, Catalyst = 8045, Result = 5022} --Коса СМ
Upgrade[16] = {ID = 5008, Catalyst = 8045, Result = 5023} --Молот Ами Чампа
--Сет Мертвеца -- Сет Беса
Upgrade[17] = {ID = 5012, Catalyst = 8044, Result = 5027} --Шапка
Upgrade[18] = {ID = 5013, Catalyst = 8044, Result = 5028} --Броня
Upgrade[19] = {ID = 5014, Catalyst = 8044, Result = 5029} --Перчатки
Upgrade[20] = {ID = 5015, Catalyst = 8044, Result = 5030} --Сапоги
--Бижутерия Беса в бижу Гончей Ада
Upgrade[21] = {ID = 5025, Catalyst = 7690, Result = 5040} --Кольцо
Upgrade[22] = {ID = 5026, Catalyst = 7691, Result = 5041} --Ожерелье
Upgrade[23] = {ID = 5027, Catalyst = 8048, Result = 5042} --Шапка
Upgrade[24] = {ID = 5028, Catalyst = 8049, Result = 5043} --Торс
Upgrade[25] = {ID = 5029, Catalyst = 8050, Result = 5044} --Перчатки
Upgrade[26] = {ID = 5030, Catalyst = 8051, Result = 5045} --Ботинки
--Улучшение гамбургера до Анжелы
Upgrade[27] = {ID = 681, Catalyst = 3919, Result = 450} --Анжела
Upgrade[28] = {ID = 450, Catalyst = 3920, Result = 451} --Анжела Младшая
--Улучшение оружия Гончей Ада до Апокалипсиса
Upgrade[29] = {ID = 5042, Catalyst = 8055, Result = 5057} --Анжела Младшая
Upgrade[30] = {ID = 5043, Catalyst = 8056, Result = 5058} --Анжела Младшая
Upgrade[31] = {ID = 5044, Catalyst = 8057, Result = 5059} --Анжела Младшая
Upgrade[32] = {ID = 5045, Catalyst = 8058, Result = 5060} --Анжела Младшая
--Улушчение бижы и колец мертвеца на беса
Upgrade[33] = {ID = 5011, Catalyst = 8062, Result = 5026} --Ожерелье
Upgrade[34] = {ID = 5010, Catalyst = 8063, Result = 5025} --Кольцо
--Улучшение оружия Гончей Ада в Апокалипсиса
Upgrade[35] = {ID = 5031, Catalyst = 8053, Result = 5046} --Меч крузу
Upgrade[36] = {ID = 5032, Catalyst = 8053, Result = 5047} --Молот чампа
Upgrade[37] = {ID = 5033, Catalyst = 8053, Result = 5048} --Пистолет шарпа
Upgrade[38] = {ID = 5034, Catalyst = 8053, Result = 5049} --Лук шарпа
Upgrade[39] = {ID = 5035, Catalyst = 8053, Result = 5050} --Клинок шарпа
Upgrade[40] = {ID = 5036, Catalyst = 8053, Result = 5051} --Посох БК
Upgrade[41] = {ID = 5037, Catalyst = 8053, Result = 5052} --Посох СМ
Upgrade[42] = {ID = 5038, Catalyst = 8053, Result = 5053} --Молот Чампа ами

function can_tichun_item(...)
	if arg.n ~= 10 and arg.n ~= 14 then
		SystemNotice(arg[1], "Parameter value illegal."..arg.n)
		return 0
	end
	local Check = 0
	Check = can_tichun_item_main(arg)
	if Check == 1 then
		return 1
	else
		return 0
	end
end
function can_tichun_item_main(Table)
	local Player = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	Player, ItemBag, ItemCount, ItemBagCount, ItemBag_Now, ItemCount_Now, ItemBagCount_Num = Read_Table(Table)
	if ItemCount[0] ~= 1 or ItemCount[1] ~= 1 or ItemBagCount[0] ~= 1 or ItemBagCount[1] ~= 1 then
		SystemNotice(Player,"Ошибка улучшения! Сообщите Администрации!")
		return 0
	end
	local ItemMain = GetChaItem(Player, 2, ItemBag[0])
	local ItemCatalyst = GetChaItem(Player, 2, ItemBag[1])
	local ItemType_mainitem = GetItemType(ItemMain)
	local ItemType_otheritem = GetItemType(ItemCatalyst)
	local ItemMainID = GetItemID(ItemMain)
	local ItemCatalystID = GetItemID(ItemCatalyst)
	local ItemMainID_Lv = GetItemLv(ItemMain)
	local ItemCatalystID_Lv = GetItemLv(ItemCatalyst)
	local MainID = ItemMainID		
	local CatalystID = ItemCatalystID
	if MainID > 8000 then
		MainID = GetItemAttr(ItemMain, ITEMATTR_VAL_FUSIONID)
	end
	local Check = 0
	for i = 1, table.getn(Upgrade), 1 do
		if MainID == Upgrade[i].ID then
			if CatalystID == Upgrade[i].Catalyst then
				Check = 1
			end
		end
	end
	local Item_CanGet = GetChaFreeBagGridNum ( Player )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"Недостаточно свободных слотов в инвентаре/ Требуется минимум 5.")
		UseItemFailed ( role )
		return
	end
	if Check == 0 then
		SystemNotice(Player, "Вы не можете использовать ["..MainID.."] и катализатор ["..CatalystID.."]" )
		return 0		
	end
	if gettichun_money_main(Table) > GetChaAttr(Player, ATTR_GD) then
		SystemNotice(Player, "Вам нужно "..gettichun_money_main(Table).." золота для улучшения! ")
		return 0
	end
	return 1
end
function begin_tichun_item(...)
	local Check_Cantichun = 0
	Check_Cantichun = can_tichun_item_main(arg)
	if Check_Cantichun == 0 then
		return 0
	end
	local Player = 0
	local ItemBag = {}											
	local ItemCount = {}											
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	Player, ItemBag, ItemCount, ItemBagCount, ItemBag_Num, ItemCount_Num, ItemBagCount_Num = Read_Table(arg)
	local ItemMain = GetChaItem(Player, 2, ItemBag[0])	
	local ItemCatalyst = GetChaItem(Player, 2, ItemBag[1])	
	local Money_Need = gettichun_money_main(arg)
	TakeMoney(Player, nil, Money_Need)
	Check_TiChun_Item = tichun_item(arg)
	if Check_TiChun_Item == 0  then
		SystemNotice(Player, "Ошибка №2 улучшения вещей! Сообщите администрации!")
	end
	return 1
end
function get_item_tichun_money(...)
	local Money = gettichun_money_main(arg)
	return Money
end
function gettichun_money_main(Table)
	local Player = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}									
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0								
	Player, ItemBag, ItemCount, ItemBagCount, ItemBag_Num, ItemCount_Num, ItemBagCount_Num = Read_Table(Table)
	local ItemMain = GetChaItem(Player, 2, ItemBag[0])	
	local ItemMainLv =  GetItemLv(ItemMain)
	local Money_Need = Upgrade.Money * ItemMainLv
	return Money_Need
end
function tichun_item(Table)
	local Player = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	local ItemID_Cuihuaji = 0
	Player, ItemBag, ItemCount, ItemBagCount, ItemBag_Num, ItemCount_Num, ItemBagCount_Num = Read_Table(Table)
	local ItemMain = GetChaItem(Player, 2, ItemBag[0])
	local ItemCatalyst = GetChaItem(Player, 2, ItemBag[1])	
	local ItemType_mainitem = GetItemType(ItemMain)
	local ItemType_otheritem = GetItemType(ItemCatalyst)
	local ItemMainID = GetItemID(ItemMain)
	local ItemCatalystID = GetItemID(ItemCatalyst)
	local ItemMainID_Lv = GetItemLv(ItemMain)
	local ItemCatalystID_Lv = GetItemLv(ItemCatalyst)
	local MainID = ItemMainID		
	local CatalystID = ItemCatalystID
	if MainID > 8000 then
		MainID = GetItemAttr(ItemMain, ITEMATTR_VAL_FUSIONID)
	end
	local Forge = GetItemForgeParam(ItemMain, 1)
	local r1 = 0
	local r2 = 0
	local ItemEnergy = GetItemAttr(ItemMain, ITEMATTR_ENERGY) 
	local ItemQuality = 12	
	
	for k = 1, table.getn(Upgrade) do
		if MainID == Upgrade[k].ID and CatalystID == Upgrade[k].Catalyst then
			if ItemEnergy < 1000 then
				ItemQuality = 2
			elseif ItemEnergy >= 1000 and ItemEnergy < 2000 then
				ItemQuality = 12
			elseif ItemEnergy >= 2000 and ItemEnergy < 3000 then
				ItemQuality = 13
			elseif ItemEnergy >= 3000 and ItemEnergy < 4000 then
				ItemQuality = 14
			elseif ItemEnergy >= 4000 and ItemEnergy < 5000 then
				ItemQuality = 15
			elseif ItemEnergy >= 5000 and ItemEnergy < 6000 then
				ItemQuality = 16
			elseif ItemEnergy >= 6000 and ItemEnergy < 7000 then
				ItemQuality = 17
			elseif ItemEnergy >= 7000 and ItemEnergy < 8000 then
				ItemQuality = 18
			elseif ItemEnergy >= 8000 and ItemEnergy < 9000 then
				ItemQuality = 19
			elseif ItemEnergy >= 9000 and ItemEnergy < 10000 then
				ItemQuality = 20
			end
			MainID = Upgrade[k].Result
			r1,r2 = MakeItem(Player, MainID, 1, ItemQuality)
		end
	end
	local RemMain = 0
	local RemCata = 0
	RemMain = RemoveChaItem(Player, ItemMainID, 1, 2, ItemBag[0], 2, 1, 1)
	RemCata = RemoveChaItem(Player, ItemCatalystID, 1, 2, ItemBag[1], 2, 1, 1)	
	if RemMain == 0 or RemCata == 0 then
		SystemNotice(Player, "Ошибка удаления предмета! Сообщите администрации!")
		return
	end
	local NewItem = GetChaItem(Player, 2, r2)
	local CheckForge = SetItemForgeParam(NewItem, 1, Forge)
	if CheckForge == 0 then
		SystemNotice(Player, "Fail to set forging attribute settings.")
		return
	end

	-----------------------------------
	-- Выводит в ГМ чат кто че улучшил --
	-------------------------------------
	GMNotice("\207\238\231\228\240\224\226\235\255\229\236! \200\227\240\238\234 ["..GetChaDefaultName(Player).."] \243\235\243\247\248\232\235 "..GetItemName(ItemMainID).." \232 \239\238\235\243\247\232\235 "..GetItemName(MainID)..".")
	LG("Upgrade System", "Player: ["..GetChaDefaultName(Player).."], Equipment: ["..GetItemName(ItemMainID).."], Catalyst: ["..GetItemName(ItemCatalystID).."], Result: ["..GetItemName(MainID).."]")
	SynChaKitbag(Player, 13)
end