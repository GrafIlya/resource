print( "‡ Јаг§Є  Forge.lua" )

--------------------------------------------------------------------
-------------------------- Комбинирование --------------------------
--------------------------------------------------------------------

function can_unite_item( ... )
	if arg.n ~= 12 then
		return 0
	end

	local kkk = 0
	local Check = 0
	Check = can_unite_item_main( arg )
	if Check == 1 then
		return 1
	else
		return 0
	end
end

function can_unite_item_main( Table )
	local role = 0
	local ItemBag = {}
	local ItemCount = {}
	local ItemBagCount = {}
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role, ItemBag, ItemCount, ItemBagCount, ItemBag_Now, ItemCount_Now, ItemBagCount_Num = Read_Table( Table )
	local i = 0

	for i = 0, 2, 1 do
		if ItemBagCount[i] ~= 1 or ItemCount[i] ~= 1 then
			SystemNotice( role, "Цель и пункт невозможно принять за единицу " )
			return 0
		end
	end

	local BagItem1 = ItemBag[0]
	local BagItem2 = ItemBag[1]
	local BagItem3 = ItemBag[2]
	local Item1 = GetChaItem( role, 2, BagItem1 )
	local Item2 = GetChaItem( role, 2, BagItem2 )
	local Item3 = GetChaItem( role, 2, BagItem3 )
	local ItemID1 = GetItemID( Item1 )
	local ItemID2 = GetItemID( Item2 )
	local ItemID3 = GetItemID( Item3 )
	local ItemType1 = GetItemType( Item1 )
	local ItemType2 = GetItemType( Item2 )
	local ItemType3 = GetItemType( Item3 )

	if ItemType1 ~= 47 then
		SystemNotice( role, "Это не комбинирующий свиток " )
		return 0
	end

	if ItemType2 ~= 49 or ItemType3 ~= 49 then
		if ItemType2 ~= 50 or ItemType3 ~= 50 then
			SystemNotice( role, "Это не самоцвет " )
			return 0
		end
	end

	if ItemID2 ~= ItemID3 then
		SystemNotice( role, "Самоцветы не совпадают " )
		return 0
	end

	local Item2_Lv = Get_StoneLv( Item2 )
	local Item3_Lv = Get_StoneLv( Item3 )

	if ( ItemType2 == 49 and ItemType3 == 49 ) or ( ItemType2 == 50 and ItemType3 == 50 ) then
		if Item2_Lv >= 9 or Item3_Lv >= 9 then
			SystemNotice( role, "Уровень самоцвета максимален " )
			return 0
		end
	end

	if Item2_Lv ~= Item3_Lv then 
		SystemNotice( role, "Уровень этих самоцветов разный " )
		return 0
	end

	local Money_Need = getunite_money_main( Table )
	local Money_Have = GetChaAttr( role, ATTR_GD )

	if Money_Need > Money_Have then
		SystemNotice( role, "Не хватает золота! Комбинирование не удалось!" )
		return 0
	end

	return 1
end

function begin_unite_item (...)
	local Check_CanUnite = 0
	Check_CanUnite = can_unite_item_main ( arg )
	if Check_CanUnite == 0 then
		return 0
	end
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( arg )
	local BagItem1 = ItemBag [0]
	local BagItem2 = ItemBag [1]
	local BagItem3 = ItemBag [2]
	local BagItem1 = arg [3]						
	local BagItem2 = arg [6]
	local BagItem3 = arg [9]
	local Item1 = GetChaItem ( role , 2 , BagItem1 )			
	local Item2 = GetChaItem ( role , 2 , BagItem2 )
	local Item3 = GetChaItem ( role , 2 , BagItem3 )
	local ItemID1 = GetItemID ( Item1 )					
	local ItemID2 = GetItemID ( Item2 )
	local ItemID3 = GetItemID ( Item3 )
	local ItemType2 = GetItemType ( Item2 )
	local Item2_Lv = Get_StoneLv ( Item2 )					
	local Item3_Lv = Get_StoneLv ( Item3 )
	local i = 0
	local j = 0
	i = RemoveChaItem ( role , ItemID1 , 1 , 2 , BagItem1 , 2 , 1 , 0)		
	j = RemoveChaItem ( role , ItemID3 , 1 , 2 , BagItem3 , 2 , 1 , 0)		
	if i == 0 or j == 0 then
		LG( "Hecheng_BS" , "Delete item failed" )
	end
	Item2_Lv =Item2_Lv + 1
	Set_StoneLv ( Item2 , Item2_Lv )
	local Money_Need = getunite_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role , ATTR_GD )
	ALLExAttrSet( role )
	local Sklv = 1
	local StateLv = GetChaStateLv ( role , STATE_HCGLJB )
	Sklv = Sklv + StateLv
	local b = Check_CG_HechengBS ( Item2_Lv , ItemType2 , Sklv )
	if b == 0 then
		i = RemoveChaItem ( role , ItemID2 , 1 , 2 , BagItem2 , 2 , 1 , 0)		
		if i == 0 then
			LG( "Hecheng_BS" , "Delete item failed" )
		end
		local cha_name = GetChaDefaultName ( role )
		LG( "JingLian_ShiBai" , "Player"..cha_name.."Gem combining failed" )
		SystemNotice( role , "К сожалению, комбинирование не удалось ")
		return 2	
	end
	local cha_name = GetChaDefaultName ( role )
	LG( "JingLian_ShiBai" , "Игрок "..cha_name.." скомбинировал самоцветы " ) 
	return 1
end

function get_item_unite_money (...)
	local Money = getunite_money_main ( arg )
	return 0
end

function getunite_money_main ( Table )
	return 50000
end

--------------------------------------------------------------------
------------------------------ Ковка -------------------------------
--------------------------------------------------------------------

function can_forge_item(...)
	if arg.n ~= 12 then
		SystemNotice ( arg[1] , "parameter value illegal"..arg.n )
		return 0
	end
	local Check = 0
	Check = can_forge_item_main ( arg )
	if Check == 1 then
		return 1
	else
		return 0
	end
end

function can_forge_item_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )
	local ItemBagCount_Jinglian = ItemBagCount [0]
	local ItemBag_Jinglian = ItemBag [0]
	local ItemNum_Jinglian = ItemCount [0]
	local Item_Jinglian = GetChaItem ( role , 2 , ItemBag_Jinglian )
	local Check = 0
	if ItemBagCount_Jinglian ~= 1 then
		return 0
	end
	if ItemNum_Jinglian ~= 1 then
		return 0
	end
	Check = CheckItem_CanJinglian ( Item_Jinglian )
	if Check == 0 then
		SystemNotice( role ,"Предмет невозможно ковать ")
		return 0
	end
	if ItemCount [1] ~= 1 or ItemCount [2] ~= 1 or ItemBagCount [1] ~= 1 or ItemBagCount [2] ~= 1 then
		return 0
	end
	local Item_Stone1 = GetChaItem ( role , 2 , ItemBag [1] )
	local Item_Stone2 = GetChaItem ( role , 2 , ItemBag [2] )
	local Check_Hole = 0
	Check_Hole = CheckItem_HaveHole ( Item_Jinglian , Item_Stone1 , Item_Stone2)
	if Check_Hole == 0 then
		SystemNotice( role ,"Нет слотов для ковки " )
		return 0
	end
	local Check_Stone = 0
	Check_Stone = Check_StoneLv ( Item_Jinglian , Item_Stone1 , Item_Stone2 )
	if Check_Stone == 0 then
		SystemNotice ( role , "Уровень самоцвета и очищающего самоцвета не совпадают " )
		return 0
	end
	local Check_StoneItem = 0
	Check_StoneItem = Check_StoneItemType ( Item_Jinglian , Item_Stone1 , Item_Stone2 )
	if Check_StoneItem == 0 then
		SystemNotice ( role , "Данный самоцвет нельзя вковать в этот предмет " )
		return 0
	end
	local Money_Need = getforge_money_main ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"У вас не хватает золота. Ковка невозможна.")
		return 0
	end
	return 1
end

------------------
-- Начало ковки --
------------------
function begin_forge_item(...)
	local Check_CanForge = 0
	Check_CanForge = can_forge_item_main ( arg )
	if Check_CanForge == 0 then
		return 0
	end
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )
	local ItemBag_Jinglian = ItemBag [0]
	local Item_Jinglian = GetChaItem ( role , 2 , ItemBag_Jinglian )
	local Item_Stone1 = GetChaItem ( role , 2 , ItemBag [1] )
	local Item_Stone2 = GetChaItem ( role , 2 , ItemBag [2] )
	local Check_Jinglian_Item = 0
	local Money_Need = getforge_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role , ATTR_GD )
	ALLExAttrSet( role )
	local ItemID_Jinglian = GetItemID ( Item_Jinglian )
	local Jinglian_Lv_Now = GetItem_JinglianLv ( Item_Jinglian )
	local Num = GetItemForgeParam ( Item_Jinglian , 1 )
	Num = TansferNum ( Num )
	local Stone1Type = GetItemType ( Item_Stone1 )
	local Stone2Type = GetItemType ( Item_Stone2 )
	local Baoshi = 0
	if Stone1Type == 49 then
		Baoshi = Item_Stone1
	elseif Stone2Type == 49 then
		Baoshi = Item_Stone2
	end
	local Item_Stone = {}
	local Item_StoneLv = {}
	local Baoshi_NeedLv = 1
	Item_Stone[0] = GetNum_Part2 ( Num )
	Item_Stone[1] = GetNum_Part4 ( Num )
	Item_Stone[2] = GetNum_Part6 ( Num )
	Item_StoneLv[0] = GetNum_Part3 ( Num )
	Item_StoneLv[1] = GetNum_Part5 ( Num )
	Item_StoneLv[2] = GetNum_Part7 ( Num )
	BaoshiType = GetStone_TypeID ( Baoshi )
	for i = 0 , 2 ,1 do
		if BaoshiType == Item_Stone[i] then
			Baoshi_NeedLv = Item_StoneLv[i] + 1
		end
	end
	local Sklv = 1
	local StateLv = GetChaStateLv ( role , STATE_JLGLJB )
	Sklv = Sklv + StateLv
	local Check_A = math.max ( 0.02 , math.min ( 1 , ( 1 - Baoshi_NeedLv * 0.1 + Sklv * 0.15 - 0.3 ) ) )
	local CheckFaild = Percentage_Random ( Check_A )
	if Baoshi_NeedLv < 4 then		-- Уровень гема который вставляется со 100% шансом
		CheckFaild = 1
	end
	if CheckFaild == 1 then
		Check_Jinglian_Item = Jinglian_Item ( Item_Jinglian , Item_Stone1 , Item_Stone2 )
	else
		local cha_name = GetChaDefaultName ( role )
		local Item_Jinglian_name = GetItemName ( ItemID_Jinglian )
		LG( "JingLian_ShiBai" , "Игрок "..cha_name.." не смог успешно ковать свой предмет. Снаряжение не повреждено "..Item_Jinglian_name )
		SystemNotice ( role , "Извините, но ковка не удалась. К счастью снаряжение в целости и сохранности " )
	end
	local ItemID_Stone1 = GetItemID ( Item_Stone1 )
	local ItemID_Stone2 = GetItemID ( Item_Stone2 )
	local Stone1_Lv = Get_StoneLv ( Item_Stone1 )
	local Stone2_Lv = Get_StoneLv ( Item_Stone2 )
	local Jinglianshi_Lv = 0
	if Stone1_Lv > Stone2_Lv then
		Jinglianshi_Lv = Stone1_Lv
	else
		Jinglianshi_Lv = Stone2_Lv
	end
	local Jinglian_Lv = GetItem_JinglianLv ( Item_Jinglian )
	local R1 = 0
	local R2 = 0
	R1 = RemoveChaItem ( role , ItemID_Stone1 , 1 , 2 , ItemBag [1] , 2 , 1 , 0 )		
	R2 = RemoveChaItem ( role , ItemID_Stone2 , 1 , 2 , ItemBag [2] , 2 , 1 , 0 )		
	if R1 == 0 or R2 == 0 then
	end
	if CheckFaild == 0 then
		return 2
	end
	check_item_final_data ( Item_Jinglian )
	local b = Check_CG_Jinglian ( Jinglian_Lv , Jinglianshi_Lv , Sklv )
	if b == 0 then
		i = RemoveChaItem ( role , ItemID_Jinglian , 1 , 2 , ItemBag [0] , 2 , 1 , 0)		
		if i == 0 then
		end
		local cha_name = GetChaDefaultName ( role )
		local Item_Jinglian_name = GetItemName ( ItemID_Jinglian )
		LG( "JingLian_ShiBai" , "Игрок "..cha_name.." не смог сковать "..Item_Jinglian_name )
		SystemNotice( role , "Извините! Ковка прошла неудачно ")
		return 2	
	end
	local cha_name = GetChaDefaultName ( role )
	local Item_Jinglian_name = GetItemName ( ItemID_Jinglian )
	LG( "JingLian_ShiBai" , "Игрок "..cha_name.." не смог сковать "..Item_Jinglian_name )
	return 1
end

function get_item_forge_money(...)
	local Money = getforge_money_main ( arg )
	return Money
end

function getforge_money_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	local ItemBag_Jinglian = ItemBag [0]
	local Item_Jinglian = GetChaItem ( role , 2 , ItemBag_Jinglian )
	local Jinglian_Lv = 0
	Jinglian_Lv =  GetItem_JinglianLv ( Item_Jinglian )
	Jinglian_Lv = Jinglian_Lv + 1
	local Money_Need = Jinglian_Lv * 100000
	return Money_Need
end

function Get_StoneLv ( Item )								
	local Lv = GetItemAttr ( Item , ITEMATTR_VAL_BaoshiLV )
	return Lv
end

function Set_StoneLv ( Item , Item_Lv )							
	local i = 0
	i = SetItemAttr ( Item , ITEMATTR_VAL_BaoshiLV , Item_Lv )
	if i == 0 then
		LG( "Hecheng_BS","Failed to set gem level" )
	end
end

function CheckItem_CanJinglian ( Item )
	local Item_Type = GetItemType ( Item )
	local i = 0
	for i = 0 , Item_CanJinglian_Num  , 1 do
		if Item_Type == Item_CanJinglian_ID [i] then
			return 1
		end
	end
	return 0
end

function CheckItem_HaveHole ( Item , Stone1 , Stone2)
	local Num = GetItemForgeParam ( Item , 1 )
	Num = TansferNum ( Num )
	local Hole = GetNum_Part1 ( Num )
	local Item_Stone = {} 
	local Stone1TypeID = 0
	local Stone2TypeID = 0
	Item_Stone[0] = GetNum_Part2 ( Num )
	Item_Stone[1] = GetNum_Part4 ( Num )
	Item_Stone[2] = GetNum_Part6 ( Num )
	local i = 0
	local Hole_empty = 0
	for i = 0 , 2 , 1 do
		if Item_Stone[i] == 0 then
			Hole_empty = Hole_empty + 1
		end
		Stone1TypeID = GetStone_TypeID ( Stone1 )
		Stone2TypeID = GetStone_TypeID ( Stone2 )
		if Item_Stone[i] == Stone1TypeID or Item_Stone[i] == Stone2TypeID then
			return 1
		end
	end
	local Hole_Used = 3 - Hole_empty
	if Hole_Used >= Hole then
		return 0
	else
		return 1
	end
end

function Check_StoneLv ( Item , Stone1 , Stone2 )
	local Num = GetItemForgeParam ( Item , 1 )
	Num = TansferNum ( Num )
	local Jinglian_Lv =  GetItem_JinglianLv ( Item )
	local Stone1Type = GetItemType ( Stone1 )
	local Stone2Type = GetItemType ( Stone2 )
	local Jinglianshi = 0
	local Jinglianshi_Lv = 0
	local Baoshi = 0
	local Baoshi_Lv = 0
	local Baoshi_NeedLv = 0
	if Stone1Type == 50 then
		Jinglianshi = Stone1
	elseif 	Stone2Type == 50 then
		Jinglianshi = Stone2
	end
	if Stone1Type == 49 then
		Baoshi = Stone1
	elseif Stone2Type == 49 then
		Baoshi = Stone2
	end
	Jinglianshi_Lv = Get_StoneLv ( Jinglianshi )
	Baoshi_Lv = Get_StoneLv ( Baoshi )
	local Item_Stone = {}
	local Item_StoneLv = {}
	Item_Stone[0] = GetNum_Part2 ( Num )
	Item_Stone[1] = GetNum_Part4 ( Num )
	Item_Stone[2] = GetNum_Part6 ( Num )
	Item_StoneLv[0] = GetNum_Part3 ( Num )
	Item_StoneLv[1] = GetNum_Part5 ( Num )
	Item_StoneLv[2] = GetNum_Part7 ( Num )
	BaoshiType = GetStone_TypeID ( Baoshi )
	local i = 0
	for i = 0 , 2 ,1 do
		if BaoshiType == Item_Stone[i] then
			Baoshi_NeedLv = Item_StoneLv[i] + 1
		end
	end
	local Jinglianshi_NeedLv = Baoshi_NeedLv	
	if Baoshi_Lv < Baoshi_NeedLv then
		return 0
	end
	if Jinglianshi_Lv < Jinglianshi_NeedLv then
		return 0
	end
	return 1
end

function Jinglian_Item ( Item , Stone1 , Stone2 )
	local Num = GetItemForgeParam ( Item , 1 )
	Num = TansferNum ( Num )
	local Jinglian_Lv =  GetItem_JinglianLv ( Item )
	local Stone1Type = GetItemType ( Stone1 )
	local Stone2Type = GetItemType ( Stone2 )
	local Baoshi = 0
	local Num_New = Num
	if Stone1Type == 49 then
		Baoshi = Stone1
	elseif Stone2Type == 49 then
		Baoshi = Stone2
	end
	Num_New = SetJinglian_Lv ( Baoshi , Baoshi_Lv , Num )
	local i = 0
	i = SetItemForgeParam ( Item , 1 , Num_New )
	if i == 0 then
		LG( "Jinglian" , "set forging content failed" )
	end
	local Item_URE_Add = 0
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	if Item_MAXURE < 600 then
		Item_MAXURE = math.min ( ( Item_MAXURE + Item_URE_Add ) , 600 )
	end
	local j = 0
	j = SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
	if j == 0 then
		LG( "Jinglian" , "Forge setting maximum durability failed")
	end
	if Num_New == Num then
	end	
	return 1	
end

function SetJinglian_Lv ( Baoshi , Baoshi_Lv , Num )
	local Baoshi_Lv = 0
	Baoshi_Lv = Get_StoneLv ( Baoshi )
	local Item_Stone = {}
	local Item_StoneLv = {}
	Item_Stone[0] = GetNum_Part2 ( Num )
	Item_Stone[1] = GetNum_Part4 ( Num )
	Item_Stone[2] = GetNum_Part6 ( Num )
	Item_StoneLv[0] = GetNum_Part3 ( Num )
	Item_StoneLv[1] = GetNum_Part5 ( Num )
	Item_StoneLv[2] = GetNum_Part7 ( Num )
	BaoshiType = GetStone_TypeID ( Baoshi )
	local i = 0
	local Stone_Check = 0
	for i = 0 , 2 , 1 do
		if BaoshiType == Item_Stone [i] then
			Item_StoneLv [i] = Item_StoneLv [i] + 1
			Stone_Check = i + 1
		end
	end
	if Stone_Check == 1 then
		Num = SetNum_Part3 ( Num , Item_StoneLv[0] )
	elseif Stone_Check == 2 then
		Num = SetNum_Part5 ( Num , Item_StoneLv[1] )
	elseif Stone_Check == 3 then
		Num = SetNum_Part7 ( Num , Item_StoneLv[2] )
	elseif Stone_Check == 0 then
		local Check_empty = 0
		for i = 2 , 0 , -1 do
			if Item_Stone[i] == 0 then
				Check_empty = i + 1
			end
		end
		if Check_empty == 1 then
			Num = SetNum_Part2 ( Num , BaoshiType )
			Num = SetNum_Part3 ( Num , 1 )
		elseif Check_empty == 2 then
			Num = SetNum_Part4 ( Num , BaoshiType )
			Num = SetNum_Part5 ( Num , 1 )
		elseif Check_empty == 3 then
			Num = SetNum_Part6 ( Num , BaoshiType )
			Num = SetNum_Part7 ( Num , 1 )
		end
	end
	return Num
end

function GetStone_TypeID ( Stone )
	local StoneID = GetItemID ( Stone )
	local i = 0
	for i = 1 , StoneTpye_ID_Num , 1 do
		if StoneTpye_ID[i] == StoneID then
			return i
		end
	end
	return -1
end

function Read_Table ( Table )
	local role = Table [1]										
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 2
	local ItemReadNext = 0
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_New = 0
	local i = 0
	local j = 0
	for i = 0 , Get_Count , 1 do
		if ItemReadNow <= Table.n then
			ItemBagCount [i] = Table [ItemReadNow]
			ItemBagCount_New = ItemBagCount_New + 1
			ItemReadNow = ItemReadNow + 1
			ItemReadNext = ItemReadNow + 2 * ( ItemBagCount [i] - 1 )
			ItemReadCount = ItemReadNow
			if ItemBagCount [i] ~= 0  then
				for j = ItemReadCount , ItemReadNext , 2 do
					ItemBag [ItemBag_Now] = Table [j]
					ItemBag_Now = ItemBag_Now + 1
					ItemCount [ItemCount_Now] = Table [ j+1 ]
					ItemCount_Now = ItemCount_Now + 1
					ItemReadNow = ItemReadNow + 2
				end
			end
		else
			ItemBagCount [i] = 0
		end
	end
	return role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_New
end

function check_item_final_data ( Item )
	local Item_TypeCheck = GetItemType ( Item )
	if Item_TypeCheck == 59 then
		return
	end
	local Num = GetItemForgeParam ( Item , 1 )
	Num = TansferNum ( Num )
	local StoneInfo = {}
	local StoneLv = {}
	local ResetCheck = 0
	ResetCheck = ResetItemFinalAttr( Item )
	if ResetCheck == 0 then
		LG("check_item_final","ResetCheck Failed")
		return
	end
	StoneInfo[0]=0
	StoneInfo[1]=0
	StoneInfo[2]=0
	StoneLv[0]=0
	StoneLv[1]=0
	StoneLv[2]=0
	StoneInfo[0],StoneInfo[1],StoneInfo[2],StoneLv[0],StoneLv[1],StoneLv[2] = CheckStoneInfo ( Num )
	local AddCheck = 0
	local i = 0
	local j = 0
	for i = 0 , 2 , 1 do
		if StoneInfo [i] ~= nil and StoneInfo [i] ~=0  then
			if StoneAttrType[StoneInfo [i]] == ITEMATTR_VAL_MNATK then
				local Itemattr_Type1 = StoneAttrType[StoneInfo [i]]
				local Itemattr_Type2 = Itemattr_Type1 + 1
				local ItemAttrEff = 0
				local num_stone=0
				local lv_stone=0
				if StoneLv[i]>0 and StoneLv[i]<=9 then
					lv_stone=StoneLv[i]
				end
				if StoneInfo [i]>=0 and StoneInfo [i]<=StoneEff_Num then
					num_stone=StoneInfo [i]
					ItemAttrEff =StoneEff [num_stone] * lv_stone
				end
				AddCheck = AddItemFinalAttr ( Item , Itemattr_Type1 , ItemAttrEff )
				if AddCheck == 0 then
					LG("check_item_final","AddCheck Failed")
				end
				AddCheck = AddItemFinalAttr ( Item , Itemattr_Type2 , ItemAttrEff )
				if AddCheck == 0 then
					LG("check_item_final","AddCheck Failed")
				end
			else
				local Itemattr_Type = StoneAttrType[StoneInfo [i]]
				local ItemAttrEff = 0
				local num_stone=0
				local lv_stone=0
				if StoneLv[i]>0 and StoneLv[i]<=9 then
					lv_stone=StoneLv[i]
				end
				if StoneInfo [i]>=0 and StoneInfo [i]<=StoneEff_Num then
					num_stone=StoneInfo [i]
					ItemAttrEff =StoneEff [num_stone] * lv_stone
				end
				
				AddCheck = AddItemFinalAttr ( Item , Itemattr_Type , ItemAttrEff )
				if AddCheck == 0 then
					LG("check_item_final","AddCheck Failed")
				end
			end
		end
	end
end

function Check_StoneItemType ( Item , Stone1 , Stone2 )
	local Stone1Type = GetItemType ( Stone1 )
	local Stone2Type = GetItemType ( Stone2 )
	local Baoshi = 0
	local ItemType = GetItemType ( Item )
	if Stone1Type == 49 then
		Baoshi = Stone1
	elseif Stone2Type == 49 then
		Baoshi = Stone2
	end
	local Baoshi_ID = GetItemID ( Baoshi )
	local i = 0
	local Baoshi_TypeID = 0
	for i = 1 , StoneAttrType_Num , 1 do
		if Baoshi_ID == StoneTpye_ID[i] then
			Baoshi_TypeID = i
		end
	end
	for i = 0 , 15 , 1 do
		if ItemType == StoneItemType[Baoshi_TypeID][i] then
			return 1
		end
		if StoneItemType[Baoshi_TypeID][i] == 0 then
			return 0
		end
	end
	return 0
end

function GetItem_JinglianLv ( Item )
	local Num = GetItemForgeParam ( Item , 1 )
	Num = TansferNum ( Num )
	local Item_StoneLv = {}
	local JinglianLv = 0
	Item_StoneLv[0] = GetNum_Part3 ( Num )
	Item_StoneLv[1] = GetNum_Part5 ( Num )
	Item_StoneLv[2] = GetNum_Part7 ( Num )
	JinglianLv = Item_StoneLv[0] + Item_StoneLv[1] + Item_StoneLv[2]
	return JinglianLv
end

function CheckStoneInfo( Num )
	local Item_Stone = {}
	local Item_StoneLv = {}	
	Item_Stone[0] = GetNum_Part2 ( Num )
	Item_Stone[1] = GetNum_Part4 ( Num )
	Item_Stone[2] = GetNum_Part6 ( Num )
	Item_StoneLv[0] = GetNum_Part3 ( Num )
	Item_StoneLv[1] = GetNum_Part5 ( Num )
	Item_StoneLv[2] = GetNum_Part7 ( Num )
	return Item_Stone[0],Item_Stone[1],Item_Stone[2],Item_StoneLv[0],Item_StoneLv[1],Item_StoneLv[2]
end

function Check_CG_HechengBS ( Item_Lv , Item_Type , Sklv )
	local a = 0
	local b = 0
	Item_Lv = Item_Lv - 1
	if Item_Type == 49 then
		a = math.max ( 0 , math.min ( 1 , ( 1 - Item_Lv * 0.10 + Sklv * 0.10 ) ) )		-- Шанс Комбинирования
		b = Percentage_Random ( a )
		if Item_Lv < 3 then
			b = 1
		end
		return b
	elseif Item_Type == 50 then
		a = math.max ( 0 , math.min ( 1 , ( 1 - Item_Lv * 0.05 + Sklv * 0.15 ) ) )
		b = Percentage_Random ( a )
		return b
	else
		LG( "Hecheng_BS","probability check determine item type is not a gem" )
		return 0
	end
end

function Check_CG_Jinglian ( Jinglian_Lv , Stone_Lv , Sklv )
	local b = 0
		b = 1
	return b
end

function Roll_DiamondId ( cha ) 
	local a = math.random ( 1 , 8 ) 
	local DiamondId = StoneTpye_ID [ a ] 
	return DiamondId  
end 

function Transfer_DiamondScript_Lv1 ( role )			
	local cha = TurnToCha ( role ) 
	local x_give = 0 
	local y_give = 0 
	local script_count = CheckBagItem ( cha , 3877 )					
	local DiamondId = Roll_DiamondId ( cha )						
	if script_count >= 1 then 
		x_del = DelBagItem ( cha , 3877 , 1 ) 
		if x_del == 1 then 
			x_give = GiveItem ( cha , 0 , DiamondId , 1 , 101 )				
			y_give = GiveItem ( cha , 0 , 885 , 1 , 101 )					
		else 
			SystemNotice ( cha , "Невозможно использовать расписку на самоцвет " )
		end 
	else 
		SystemNotice ( cha , "Вы должны иметь расписку на самоцвет 1-го уровня "  )
	end 
	if x_give == 1 and y_give ==1 then 
		return 1 
	else 
		return 0 
	end 
end 

function Transfer_DiamondScript_Lv2 ( role )			
	local cha = TurnToCha ( role ) 
	local x_give = 0 
	local y_give = 0 
	local script_count = CheckBagItem ( cha , 3878 )					
	local DiamondId = Roll_DiamondId ( cha )						
	if script_count >= 1 then 
		x_del = DelBagItem ( cha , 3878 , 1 ) 
		if x_del == 1 then 
			x_give = GiveItem ( cha , 0 , DiamondId , 1 , 102 )				
			y_give = GiveItem ( cha , 0 , 885 , 1 , 102 )					
		else 
			SystemNotice ( cha , "Невозможно использовать расписку на самоцвет " )
		end 
	else 
		SystemNotice ( cha , "Вы должны иметь расписку на самоцвет 2-го уровня "  )
	end 
	if x_give == 1 and y_give ==1 then 
		return 1 
	else 
		return 0 
	end 
end

--------------------------------------------------------------------
--------------------- Рождественская открытка ----------------------
--------------------------------------------------------------------

function GetChaName_0 ( role,npc  )
	local cha_name = GetChaDefaultName ( role )
	local Money_Need = 1000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	local item_num = CheckBagItem( role, 2887 )
	if Money_Need > Money_Have or item_num <=0 then
		SystemNotice( role ,"У вас не хватает золота или нет открытки ")
	else
	end
	if Money_Have >= Money_Need and item_num >0 then
		TakeMoney(role,nil,Money_Need)
		TakeItem( role, 0,2887, 1 )
		PlayEffect( npc, 361 )
	Notice("Поздравление от "..cha_name..": Пусть богиня защитит вас в Новом году! Пусть фортуна улыбается вам! Пусть всё у вас будет прекрасно! С Новым Годом!")
	else
	end
end

function GetChaName_1 ( role,npc )
	local cha_name = GetChaDefaultName ( role )
	local Money_Need = 1000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	local item_num = CheckBagItem( role, 2887 )
	if Money_Need > Money_Have or item_num <=0 then
		SystemNotice( role ,"У вас не хватает золота или нет открытки ")
	else
	end
	if Money_Have >= Money_Need and item_num >0 then
		TakeMoney(role,nil,Money_Need)
		TakeItem( role, 0,2887, 1 )
		PlayEffect( npc, 361 )
	Notice("Поздравление от "..cha_name..": Пусть богиня защитит вас в Новом году! Пусть фортуна улыбается вам! Пусть всё у вас будет прекрасно! С Новым Годом!")
	else
	end
end

function GetChaName_2 ( role,npc )
	local cha_name = GetChaDefaultName ( role )
	local Money_Need = 1000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	local item_num = CheckBagItem( role, 2887 )
	if Money_Need > Money_Have or item_num <=0 then
		SystemNotice( role ,"У вас не хватает золота или нет открытки ")
	else
	end
	if Money_Have >= Money_Need and item_num >0 then
		TakeMoney(role,nil,Money_Need)
		TakeItem( role, 0,2887, 1 )
		PlayEffect( npc, 361 )
	Notice("Поздравление от "..cha_name..": Пусть богиня защитит вас в Новом году! Пусть фортуна улыбается вам! Пусть всё у вас будет прекрасно! С Новым Годом!")
	else
	end
end

function GetChaName_3 ( role,npc )
	local cha_name = GetChaDefaultName ( role )
	local Money_Need = 1000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	local item_num = CheckBagItem( role, 2887 )
	if Money_Need > Money_Have or item_num <=0 then
		SystemNotice( role ,"У вас не хватает золота или нет открытки ")
	else
	end
	if Money_Have >= Money_Need and item_num >0 then
		TakeMoney(role,nil,Money_Need)
		TakeItem( role, 0,2887, 1 )
		PlayEffect( npc, 361 )
	Notice("Поздравление от "..cha_name..": Пусть богиня защитит вас в Новом году! Пусть фортуна улыбается вам! Пусть всё у вас будет прекрасно! С Новым Годом!")
		else
	end
end

function GetChaName_26 ( role,npc )
	local cha_name = GetChaDefaultName ( role )
	local Money_Need = 1000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	local item_num = CheckBagItem( role, 2887 )
	if Money_Need > Money_Have or item_num <=0 then
		SystemNotice( role ,"У вас не хватает золота или нет открытки ")
	else
	end
	if Money_Have >= Money_Need and item_num >0 then
		TakeMoney(role,nil,Money_Need)
		TakeItem( role, 0,2887, 1 )
		PlayEffect( npc, 361 )
	Notice("Поздравление от "..cha_name..": Пусть богиня защитит вас в Новом году! Пусть фортуна улыбается вам! Пусть всё у вас будет прекрасно! С Новым Годом!")
		else
	end
end

function GetChaName_27 ( role,npc )
	local cha_name = GetChaDefaultName ( role )
	local Money_Need = 1000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	local item_num = CheckBagItem( role, 2887 )
	if Money_Need > Money_Have or item_num <=0 then
		SystemNotice( role ,"У вас не хватает золота или нет открытки ")
	else
	end
	if Money_Have >= Money_Need and item_num >0 then
		TakeMoney(role,nil,Money_Need)
		TakeItem( role, 0,2887, 1 )
		PlayEffect( npc, 361 )
	Notice("Поздравление от "..cha_name..": Пусть богиня защитит вас в Новом году! Пусть фортуна улыбается вам! Пусть всё у вас будет прекрасно! С Новым Годом!")
		else
	end
end

function GetChaName_28 ( role,npc )
	local cha_name = GetChaDefaultName ( role )
	local Money_Need = 1000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	local item_num = CheckBagItem( role, 2887 )
	if Money_Need > Money_Have or item_num <=0 then
		SystemNotice( role ,"У вас не хватает золота или нет открытки ")
	else
	end
	if Money_Have >= Money_Need and item_num >0 then
		TakeMoney(role,nil,Money_Need)
		TakeItem( role, 0,2887, 1 )
		PlayEffect( npc, 361 )
	Notice("Поздравление от "..cha_name..": Пусть богиня защитит вас в Новом году! Пусть фортуна улыбается вам! Пусть всё у вас будет прекрасно! С Новым Годом!")
		else
	end
end

--------------------------------------------------------------------
---------------------- Обмен Звезды Единства -----------------------
--------------------------------------------------------------------

function Transfer_TeamStar( role , level )
	local cha = TurnToCha ( role )  
	local script_count = CheckBagItem ( cha , 1034 )
	local chaLV =  GetChaAttr( cha , ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) 
	if script_count >= 1 then
		if chaLV < 41 then
			SystemNotice(role,"Ваша Звезда Единства ещё не может раскрыться. Приходите, когда ваш уровень будет выше 41.")
		else
			if job ~= 12 and job ~= 9 and job ~= 16 and job ~= 8 and job ~= 13 and job ~=14 then
				SystemNotice(role,"Использовать могут только персонажи со вторым классом.")
			else
				local x_del = DelBagItem ( cha , 1034 , 1 ) 
				if x_del == 1 then 
					if job == 12 then	
						GiveItem( role , 0 , 1409  , 1 , 22 )
					elseif job == 9	then 
						GiveItem( role , 0 , 1392  , 1 , 22 )
					elseif job == 16 then	
						GiveItem( role , 0 , 1419  , 1 , 22 )
					elseif job == 8	then 
						GiveItem( role , 0 , 1382  , 1 , 22 )
					elseif job == 13 then	
						GiveItem( role , 0 ,1433  , 1 , 22 )
					elseif job == 14 then	
						GiveItem( role , 0 , 1467  , 1 , 22 )
					end
				else 
					SystemNotice ( cha , "Невозможно раскрыть Звезду Единства " ) 
				end 
			end
		end
	else 
		SystemNotice ( cha , "Ваша Звезда Единства не заполнена "  ) 
	end 
end

--------------------------------------------------------------------
-------------------------- Обмен Гемов -----------------------------
--------------------------------------------------------------------

function TransferDiamond( role , level )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Разблокируйте, чтобы начать ")
		return
	end
	local retbag
	if level == 1 then
		retbag = HasLeaveBagGrid( role, 2)
			if retbag ~= LUA_TRUE then
				SystemNotice(role,"Необходимо 2 слота в инвентаре ")
				return 
			end	
		Transfer_DiamondScript_Lv1 ( role )
	elseif level == 2 then 
		retbag = HasLeaveBagGrid( role, 2)
			if retbag ~= LUA_TRUE then
				SystemNotice(role,"Необходимо 2 слота в инвентаре ")
				return 
			end	
		Transfer_DiamondScript_Lv2 ( role )
	elseif level == 3 then
		retbag = HasLeaveBagGrid( role, 1)
			if retbag ~= LUA_TRUE then
				return 
			end	
		Transfer_OneStoneScript ( role )
	elseif level == 4 then
		retbag = HasLeaveBagGrid( role, 1)
			if retbag ~= LUA_TRUE then
				return 
			end	
		Transfer_OneDiamondScript ( role )
	else
		LG( "BSduihuan","Wrong coupon used" )
	end
end

function Transfer_OneStoneScript ( role )
	local cha = TurnToCha ( role ) 
	local y_give = 0 
	local script_count = CheckBagItem ( cha , 3885 )					
	if script_count >= 1 then 
		x_del = DelBagItem ( cha , 3885 , 1 ) 
		if x_del == 1 then 
			y_give = GiveItem ( cha , 0 , 885 , 1 , 101 )					
		else 
			SystemNotice ( cha , "Невозможно использовать расписку " )
		end 
	else 
		SystemNotice ( cha , "Вы должны иметь при себе расписку на Очищающий самоцвет "  )
	end 
	if y_give ==1 then 
		return 1 
	else 
		return 0 
	end
end

function Transfer_OneDiamondScript ( role )
	local cha = TurnToCha ( role ) 
	local x_give = 0 
	local y_give = 0 
	local script_count = CheckBagItem ( cha , 3886 )					
	local DiamondId = Roll_DiamondId ( cha )						
	if script_count >= 1 then 
		x_del = DelBagItem ( cha , 3886 , 1 ) 
		if x_del == 1 then 
			x_give = GiveItem ( cha , 0 , DiamondId , 1 , 101 )				
		else 
			SystemNotice ( cha , "Невозможно использовать расписку " )
		end 
	else 
		SystemNotice ( cha , "Вам нужно иметь при себе расписку на самоцвет " )
	end 
	if x_give == 1 then 
		return 1 
	else 
		return 0 
	end 
end
 
function TansferNum ( Num )
	if Num < 0 then
		Num = Num + 4294967296
	end
	return Num
end

--------------------------------------------------------------------
------------------------- Создание Слотов --------------------------
--------------------------------------------------------------------

function can_milling_item (...)
	if arg.n ~= 12 then
		return 0
	end
	local kkk = 0
	local Check = 0
	Check = can_milling_item_main ( arg )
	if Check == 1 then
		return 1
	else
		return 0
	end
end

function can_milling_item_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )
	local ItemBag_damo = ItemBag [0]
	local Item_damo = GetChaItem ( role , 2 , ItemBag_damo )					
	local Item_Cailiao1 = GetChaItem ( role , 2 , ItemBag [1] )					
	local Item_Cailiao2 = GetChaItem ( role , 2 , ItemBag [2] )					
	local Check_Cailiao1 = 0
	local Check_Cailiao2 = 0
	Check_Cailiao1 = Check_Jiaguji ( Item_Cailiao1 , Item_Cailiao2 )
	Check_Cailiao2 = Check_Cuihuafen ( Item_Cailiao1 , Item_Cailiao2 )
	if Check_Cailiao1 == 0 then
		SystemNotice ( role , "Для плавки нужен Стабилизатор снаряжения " )
		return 0
	end
	if Check_Cailiao2 == 0 then
		SystemNotice ( role , "Для плавки нужен Катализатор снаряжения " )
		return 0
	end
	local Check_Hole = 0
	Check_Hole = Check_HasHole ( Item_damo )
	if Check_Hole >= 3 then											-- Максимальное количество слотов 3
		SystemNotice ( role , "Больше слотов сделать нельзя! " )
		return 0
	end
	local Money_Need = get_milling_money_main ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"У вас не хватает золота! Плавка невозможна ")
		return 0
	end
	return 1
end

function get_item_milling_money(...)
	local Money = get_milling_money_main ( arg )
	return Money
end

function get_milling_money_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	local ItemBag_damo = ItemBag [0]
	local Item_damo = GetChaItem ( role , 2 , ItemBag_damo )
	local Hole_Num = 0
	local Num = GetItemForgeParam ( Item_damo , 1 )
	Num = TansferNum ( Num )
	Hole_Num = GetNum_Part1 ( Num )
	local Money_Need = ( Hole_Num + 1 ) * 50000
	return Money_Need
end

function begin_milling_item (...)
	local Check_CanMilling = 0
	Check_CanMilling = can_milling_item_main ( arg )
	if Check_CanMilling == 0 then
		return 0
	end
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )
	local ItemBag_damo = ItemBag [0]
	local Item_damo = GetChaItem ( role , 2 , ItemBag_damo )
	local Item_cailiao1 = GetChaItem ( role , 2 , ItemBag [1] )
	local Item_cailiao2 = GetChaItem ( role , 2 , ItemBag [2] )
	local Money_Need = get_milling_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role , ATTR_GD )
	ALLExAttrSet( role )
	local ItemID_Cailiao1 = GetItemID ( Item_cailiao1 )
	local ItemID_Cailiao2 = GetItemID ( Item_cailiao2 )
	local R1 = 0
	local R2 = 0
	R1 = RemoveChaItem ( role , ItemID_Cailiao1 , 1 , 2 , ItemBag [1] , 2 , 1 , 0 )		
	R2 = RemoveChaItem ( role , ItemID_Cailiao2 , 1 , 2 , ItemBag [2] , 2 , 1 , 0 )		
	if R1 == 0 or R2 == 0 then
		LG( "Damo" , "Удалить ресурс не удалось " )
	end
	local Sklv = 1
	local b = Check_CG_damo ( Item_damo , Sklv )
	if b == 0 then
		Damo_Shibai ( role , Item_damo )
		return 2
	end
	Damo_ChengGong ( role , Item_damo )
	local cha_name = GetChaDefaultName ( role )
	LG( "JingLian_ShiBai" , "Игрок "..cha_name.." успешно провел плавку " )
	return 1
end

function Check_Jiaguji ( Item_Cailiao1 , Item_Cailiao2 )
	local ItemID_Cailiao1 = GetItemID ( Item_Cailiao1 )
	local ItemID_Cailiao2 = GetItemID ( Item_Cailiao2 )
	if ItemID_Cailiao1 == 890 then
		return 1
	elseif ItemID_Cailiao2 == 890 then
		return 1
	end
	return 0
end

function Check_Cuihuafen ( Item_Cailiao1 , Item_Cailiao2 )
	local ItemID_Cailiao1 = GetItemID ( Item_Cailiao1 )
	local ItemID_Cailiao2 = GetItemID ( Item_Cailiao2 )
	if ItemID_Cailiao1 == 891 then
		return 1
	elseif ItemID_Cailiao2 == 891 then
		return 1
	end
	return 0
end

function  Check_HasHole ( Item_damo )
	local Num = GetItemForgeParam ( Item_damo , 1 )
	Num = TansferNum ( Num )
	local Hole_Num = GetNum_Part1 ( Num )
	return Hole_Num
end

--------------------------
-- Шанс создания слотов --
--------------------------

function Check_CG_damo ( Item_damo , Sklv )
	local a = 0
	local Hole_Num = Check_HasHole ( Item_damo )
	if Hole_Num == 0 then
		a = 1				-- 100% = 1
	end
	if Hole_Num == 1 then
		a = 0.5				-- 50% = 0.5
	end
	if Hole_Num == 2 then
		a = 0.01			-- 1% = 0.01
	end
	local b = Percentage_Random ( a )
	return b
end

function Damo_Shibai ( role , Item_damo )
		local cha_name = GetChaDefaultName ( role )
		LG( "JingLian_ShiBai" , "Игрок "..cha_name.." не смог провести плавку " )
		SystemNotice ( role , "Плавка завершилась неудачей " )
end

function Damo_ChengGong ( role , Item_damo )
	local Num = GetItemForgeParam ( Item_damo , 1 )
	local i = 0
	Num = TansferNum ( Num )
	local Hole_Num = GetNum_Part1 ( Num )
	if Hole_Num <= 2 then
		SystemNotice ( role , "Вы сделали слот " )
		Hole_Num = Hole_Num + 1
	else
		SystemNotice ( role , "Количество слотов максимальное." )
	end
	Num = SetNum_Part1 ( Num , Hole_Num )
	i = SetItemForgeParam ( Item_damo , 1 , Num )
	if i == 0 then
		LG( "Damo" , "set forging content failed" )
	end
end

function Delete_Forge_Eff ( role , Item_damo )
	local Jinglian_Lv = GetItem_JinglianLv ( Item_damo )
	if Jinglian_Lv == 0 then
		return
	end
	local Num = GetItemForgeParam ( Item_damo , 1 )
	local Item_Stone = {}
	local Item_StoneLv = {}
	Item_Stone[0] = GetNum_Part2 ( Num )
	Item_Stone[1] = GetNum_Part4 ( Num )
	Item_Stone[2] = GetNum_Part6 ( Num )
	Item_StoneLv[0] = GetNum_Part3 ( Num )
	Item_StoneLv[1] = GetNum_Part5 ( Num )
	Item_StoneLv[2] = GetNum_Part7 ( Num )
	local j = 0
	local Del = 0
	for j = 2 , 0 , -1 do
		if Del == 0 then
			if Item_Stone [j] ~= 0 or Item_StoneLv[j] ~= 0 then
				Item_Stone[j] = 0
				Item_StoneLv[j] = 0
				Del = 1
			end
		end
	end
	Num = SetNum_Part2( Num , Item_Stone[0] )
	Num = SetNum_Part4( Num , Item_Stone[1] )
	Num = SetNum_Part6( Num , Item_Stone[2] )
	Num = SetNum_Part3( Num , Item_StoneLv[0] )
	Num = SetNum_Part5( Num , Item_StoneLv[1] )
	Num = SetNum_Part7( Num , Item_StoneLv[2] )
	local i = 0
	i = SetItemForgeParam ( Item_damo , 1 , Num )
	if i == 0 then
		LG( "Damo" , "set forging content failed" )
	end
	SystemNotice ( role , "Бонус от ковки прошел " )
end

--------------------------------------------------------------------
------------------------ Вставка в Аппарель ------------------------
--------------------------------------------------------------------

function can_fusion_item(...)
	if arg.n ~= 12 and arg.n ~= 14 then
		SystemNotice ( arg[1] , "parameter value illegal"..arg.n )
		return 0
	end
	local Check = 0
	Check = can_fusion_item_main ( arg )
	if Check == 1 then
		return 1
	else
		return 0
	end
end

function can_fusion_item_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )
	if ItemCount [1] ~= 1 or ItemCount [2] ~= 1 or ItemBagCount [1] ~= 1 or ItemBagCount [2] ~= 1 then
		SystemNotice ( role ,"equipment quantity illegal ")
		return 0
	end
	local Item_Juanzhou = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_Waiguan = GetChaItem ( role , 2 , ItemBag [1] )	
	local Item_Shuxing = GetChaItem ( role , 2 , ItemBag [2] )	
	local  ItemType_Juanzhou = GetItemType ( Item_Juanzhou )
	if ItemType_Juanzhou ~= 60 then
		SystemNotice( role ,"Ошибка при использовании свитка ")
		return 0
	end
        local ItemID_Waiguan = GetItemID ( Item_Waiguan )
	if ItemID_Waiguan <= 4999 or  ItemID_Waiguan >= 6000 then
		SystemNotice( role ,"Этот предмет нельзя вплавить ")
		return 0
	end
  	local Item_URE = GetItemAttr ( Item_Waiguan , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item_Waiguan , ITEMATTR_MAXENERGY )
	if	Item_URE < Item_MAXENERGY then
		SystemNotice( role ,"Ваш доспех поврежден ")
		return 0		
	end
  	local Item_FUSIONID_star = GetItemAttr ( Item_Shuxing , ITEMATTR_VAL_FUSIONID )
	local ItemID_shuxing_star =  GetItemID ( Item_Shuxing )
	if	Item_FUSIONID_star ==0  and ItemID_shuxing_star>=5000 then
		SystemNotice( role ,"Снаряжение в правом слоте не предназначено для плавки ")
		return 0		
	end
	local ItemType_Shuxing = GetItemType (Item_Shuxing)
	if  ItemType_Shuxing < 1  then
		 SystemNotice( role ,"Характеристики данного предмета невозможно перенести ")
			return 0
			elseif ItemType_Shuxing > 11 and  ItemType_Shuxing < 20 then
			SystemNotice( role ,"Характеристики данного предмета невозможно перенести ")
				return 0
					elseif ItemType_Shuxing > 24  and ItemType_Shuxing ~= 27 then
			SystemNotice( role ,"Характеристики данного предмета невозможно перенести ")
						return 0
	end
	local ItemType_Shuxing = GetItemType ( Item_Shuxing )
	local ItemType_Waiguan = GetItemType ( Item_Waiguan )
	local star=0
	if ItemType_Shuxing ~= 22 and ItemType_Shuxing ~=27 then 
	star = 1
	end
	if ItemType_Waiguan~=27  then
		if ItemType_Shuxing ~= ItemType_Waiguan then
		SystemNotice( role ,"Предметы не соответствуют " )
		return 0
		end 
	elseif ItemType_Waiguan==27 and star == 1 then
		SystemNotice( role ,"Предметы не соответствуют " )
		return 0
	end
	local Check_RongHe = 0
	Check_RongHe = CheckFusionItem( Item_Waiguan , Item_Shuxing )
	if Check_RongHe == LUA_FALSE then
		SystemNotice( role ,"Предметы или профессия не соответствуют " )
		return 0
	end
	if ItemBagCount[3] == 0 then
	local Item_Waiguan_name = GetItemName ( ItemID_Waiguan )
	LG("Ronghe_CuiHuaJi","Комбинирование доспеха и оружия ",Item_Waiguan_name," без эффекта ")
	end
	if ItemBagCount[3] ~= 0 then
	local Item_Cuihuaji =  GetChaItem ( role , 2 , ItemBag [3] )
	local ItemType_Cuihuaji =  GetItemType ( Item_Cuihuaji )
		if  ItemType_Cuihuaji ~= 61 then
			SystemNotice( role ,"У вас проблемы с катализатором " )
			return 0
		end
	end
	local Money_Need = getfusion_money_main ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"У вас не хватает золота. Действие отменено ")
		return 0
	end
	return 1
end

function begin_fusion_item(...)
	local Check_Canfusion = 0
	Check_Canfusion = can_fusion_item_main ( arg )
	if Check_Canfusion == 0 then
		return 0
	end
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )
	local Item_Juanzhou = GetChaItem ( role , 2 , ItemBag [0] )
	local Item_Waiguan = GetChaItem ( role , 2 , ItemBag [1] )
	local Item_Shuxing = GetChaItem ( role , 2 , ItemBag [2] )
	local ItemID_Waiguan = GetItemID ( Item_Waiguan )
	local Money_Need = getfusion_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role , ATTR_GD )
	ALLExAttrSet( role )
	Check_Ronghe_Item = ronghe_item ( arg )
	if Check_Ronghe_Item == 0  then
		SystemNotice ( role ,"Плавка завершилась провалом. Проверьте все компоненты ")
	end
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	SystemNotice ( role ,"Плавка прошла успешно ")
	local Item_Waiguan_name = GetItemName ( ItemID_Waiguan )
	LG( "Ronghe_ShiBai" , "Игрок "..cha_name.." сплавил "..Item_Waiguan_name )
	return 1
end

function get_item_fusion_money(...)
	local Money = getfusion_money_main ( arg )
	return Money
end

function getfusion_money_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}									
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0								
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	local ItemBag_Shuxing = ItemBag [2]
	local Item_Shuxing = GetChaItem ( role , 2 , ItemBag_Shuxing )
	local Shuxing_Lv = 0
	local Shuxing_Lv =  GetItemLv ( Item_Shuxing )
	local Money_Need = Shuxing_Lv * 1000
	return Money_Need
end

function ronghe_item ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	local ItemID_Cuihuaji = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	local Item_Juanzhou = GetChaItem ( role , 2 , ItemBag [0] )
	local Item_Waiguan = GetChaItem ( role , 2 , ItemBag [1] )
	local Item_Shuxing = GetChaItem ( role , 2 , ItemBag [2] )
	local ItemID_Juanzhou = GetItemID ( Item_Juanzhou )
	local ItemID_Waiguan = GetItemID ( Item_Waiguan )
	local ItemID_Shuxing = GetItemID ( Item_Shuxing )
	local ItemID_star = ItemID_Shuxing
	local flg=0
	if ItemBagCount[3] ~= 0 then
		local Item_Cuihuaji = GetChaItem ( role , 2 , ItemBag [3] )
		ItemID_Cuihuaji = GetItemID ( Item_Cuihuaji )
		flg=1
	end
	local Jinglianxinxi = GetItemForgeParam ( Item_Shuxing , 1 )
	if ItemID_Shuxing > 5000 then
		ItemID_Shuxing = GetItemAttr( Item_Waiguan , ITEMATTR_VAL_FUSIONID )
		SetItemAttr( Item_Waiguan , ITEMATTR_VAL_FUSIONID , ItemID_Shuxing )
	else
		SetItemAttr( Item_Waiguan , ITEMATTR_VAL_FUSIONID , ItemID_Shuxing )
	end
	local Check_FusionItem = FusionItem ( Item_Waiguan, Item_Shuxing )
	local star_lv=0
	if flg==1 then
		if ItemID_star < 5000 then 
			star_lv=10
		else
			star_lv=GetItemAttr ( Item_Shuxing , ITEMATTR_VAL_LEVEL )                                     
		end
	else 
		star_lv=10
	end
	SetItemAttr ( Item_Waiguan , ITEMATTR_VAL_LEVEL , star_lv )                                     
	local hole_num = Check_HasHole ( Item_Shuxing )
	if Check_FusionItem == 0    then
		SystemNotice( role , "Неудача при плавке ")
		return
	end
	local Item_Shuxing_ENERGY  = GetItemAttr ( Item_Shuxing , ITEMATTR_ENERGY )
	local Item_Shuxing_MAXURE  = GetItemAttr ( Item_Shuxing , ITEMATTR_MAXURE )
	local cha_name = GetChaDefaultName ( role )
	local num={}
	local numAttr={}
	local b = 0
	local a = {}
	for b=1,5,1 do
		num [b]=0
		numAttr [b]=0
	end
	b = 0
	for i=1,47,1 do
	    a [i]=GetItemAttr ( Item_Shuxing , i )
		if a [i]~=0 then
				b = b + 1
				num [b]=i
				numAttr [b]=a[i]
		end
	end
	LG( "ZhuangBeiRH_XinXi" , cha_name , ItemID_Waiguan , ItemID_Shuxing , Item_Shuxing_ENERGY , Item_Shuxing_MAXURE , STAR_ATTR[num[1]],numAttr[1],STAR_ATTR[num[2]],numAttr[2],STAR_ATTR[num[3]],numAttr[3],STAR_ATTR[num[4]],numAttr[4],STAR_ATTR[num[5]],numAttr[5],Jinglianxinxi,flg)
	local attr1=GetItemAttr ( Item_Waiguan , num[1] )
	local attr2=GetItemAttr ( Item_Waiguan , num[2] )
	local attr3=GetItemAttr ( Item_Waiguan , num[3] )
	local attr4=GetItemAttr ( Item_Waiguan , num[4] )
	local attr5=GetItemAttr ( Item_Waiguan , num[5] )
	LG( "RHWaiguan_XinXi" , cha_name , ItemID_Waiguan , STAR_ATTR[num[1]],attr1,STAR_ATTR[num[2]],attr2,STAR_ATTR[num[3]],attr3,STAR_ATTR[num[4]],attr4,STAR_ATTR[num[5]],attr5)
	SetItemAttr ( Item_Waiguan , ITEMATTR_MAXURE , 20000 )
	SetItemAttr ( Item_Waiguan , ITEMATTR_URE , 20000 )
	local R1 = 0
	local R2 = 0
	local R3 = 1
	R1 = RemoveChaItem ( role , ItemID_Juanzhou , 1 , 2 , ItemBag [0] , 2 , 1 , 0 )		
	R2 = RemoveChaItem ( role , ItemID_Shuxing , 1 , 2 , ItemBag [2] , 2 , 1 , 0 )		
	if ItemID_Cuihuaji ~= 0 then
		R3 = RemoveChaItem ( role , ItemID_Cuihuaji , 1 , 2 , ItemBag [3] , 2 , 1 , 0 )	
	end
	if R1 == 0 or R2 == 0 or R3 == 0 then
		SystemNotice( role , "Провал при переносе предмета ")
		return
	end
	if ItemID_Cuihuaji ~= 0 then
		local Check_SetItemForgeParam = SetItemForgeParam( Item_Waiguan , 1 , Jinglianxinxi )
		if Check_SetItemForgeParam == 0 then
			SystemNotice( role , "Неудача при настройке атрибутов ")
			return
		end
	else 
		local Part1_Jinglianxinxi = GetNum_Part1 ( Jinglianxinxi )	
		local Part2_Jinglianxinxi = GetNum_Part2 ( Jinglianxinxi )	
		local Part3_Jinglianxinxi = GetNum_Part3 ( Jinglianxinxi )
		local Part4_Jinglianxinxi = GetNum_Part4 ( Jinglianxinxi )
		local Part5_Jinglianxinxi = GetNum_Part5 ( Jinglianxinxi )
		local Part6_Jinglianxinxi = GetNum_Part6 ( Jinglianxinxi )
		local Part7_Jinglianxinxi = GetNum_Part7 ( Jinglianxinxi )
		Jinglianxinxi = SetNum_Part1 ( Jinglianxinxi , hole_num ) 
		Jinglianxinxi = SetNum_Part2 ( Jinglianxinxi , 0 )
		Jinglianxinxi = SetNum_Part3 ( Jinglianxinxi , 0 )
		Jinglianxinxi = SetNum_Part4 ( Jinglianxinxi , 0 )
		Jinglianxinxi = SetNum_Part5 ( Jinglianxinxi , 0 )
		Jinglianxinxi = SetNum_Part6 ( Jinglianxinxi , 0 )
		Jinglianxinxi = SetNum_Part7 ( Jinglianxinxi , 0 )
		local Check_SetItemForgeParam = SetItemForgeParam( Item_Waiguan , 1 , Jinglianxinxi )
		if Check_SetItemForgeParam == 0 then
			SystemNotice( role , "Неудача при настройке атрибутов ")
			return
		end	
	end
end

--------------------------------------------------------------------
-------------------------- Заточка Шмота ---------------------------
--------------------------------------------------------------------

function can_upgrade_item (...)
	if arg.n ~= 12 then
		SystemNotice ( arg[1] , "parameter value illegal"..arg.n )
		return 0
	end
	local Check = 0
	Check = can_beuplv_item_main ( arg )
	if Check == 1 then
		return 1
	else
		return 0
	end
end

function can_beuplv_item_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )
	local ItemBagCount_beuplv = ItemBagCount [1]
	local ItemBag_beuplv = ItemBag [1]
	local ItemNum_beuplv = ItemCount [1]
	local Item_beuplv = GetChaItem ( role , 2 , ItemBag_beuplv ) 
	local Item_beuplv_Type = GetItemType ( Item_beuplv )		
	local Item_beuplv_ID = GetItemID ( Item_beuplv )		
	local Item_ScItem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_YxItem = GetChaItem ( role , 2 , ItemBag [2] )	
	local Item_ScItem_ID = GetItemID ( Item_ScItem )		
	local Item_YxItem_ID = GetItemID ( Item_YxItem )		
	local Item_ScItem_Type = GetItemType ( Item_ScItem )		
	local Item_YxItem_Type = GetItemType ( Item_YxItem )		
	local Item_beuplv_Lv =  Get_Itembeuplv_Lv ( Item_beuplv )	
	local ItemAttr_Val_Fusionid = GetItemAttr ( Item_beuplv , ITEMATTR_VAL_FUSIONID ) 
	if Item_beuplv_ID < 5001 or Item_beuplv_ID > 6000 then					
		SystemNotice( role ,"Этот предмет нельзя плавить ")
		return 0
	end
	if  ItemAttr_Val_Fusionid == 0 then
		SystemNotice( role , "Предмет невозможно улучшить ")
		return 0
	end
	if Item_beuplv_Lv >= 15 then					-- Максимальный уровень улучшения
		SystemNotice( role ,"Вы достигли максимального уровня заточки ")
		return 0
	end
	if ItemBagCount_beuplv ~= 1 then				
		SystemNotice( role , "Недопустимый уровень улучшения ")
		return 0
	end
	if Item_ScItem_Type ~= 62 then
		SystemNotice( role , "У вас нет Улучшающего свитка ")
		return 0
	end
	if Item_YxItem_Type ~= 63 then
		SystemNotice( role , "У вас нет Усиливающего кристалла ")
		return 0
	end
	if ItemNum_beuplv ~= 1 then
		SystemNotice( role , "Неверный номер улучшения ")
		return 0
	end
	if ItemCount [0] ~= 1 or ItemCount [2] ~= 1 or ItemBagCount [0] ~= 1 or ItemBagCount [2] ~= 1 then  
		SystemNotice ( role ,"Ошибка предмета из ИМ или игрового материала ")
		return 0
	end
	local Money_Need = getupgrade_money_main ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"У вас не хватает золота. Невозможно провести улучшение ")
		return 0
	end
	return 1
end

function begin_upgrade_item (...)
	local Check_Canbeuplv = 0
	Check_Canbeuplv = can_beuplv_item_main ( arg )
	if Check_Canbeuplv == 0 then
		return 0
	end
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local Get_Count = 4
	local ItemReadCount = 0
	local ItemReadNow = 1
	local ItemReadNext = 0
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )
	local ItemBag_beuplv = ItemBag [1]
	local Item_beuplv = GetChaItem ( role , 2 , ItemBag_beuplv )    
	local Item_ScItem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_YxItem = GetChaItem ( role , 2 , ItemBag [2] )	
	local Item_ScItem_ID = GetItemID ( Item_ScItem )		
	local Item_YxItem_ID = GetItemID ( Item_YxItem )		
	local Item_beuplv_Lv =  Get_Itembeuplv_Lv ( Item_beuplv )	 
	local R1 = 0
	local R2 = 0
	
	R1 = RemoveChaItem ( role , Item_ScItem_ID , 1 , 2 , ItemBag [0] , 2 , 1 , 0 )		
	R2 = RemoveChaItem ( role , Item_YxItem_ID , 1 , 2 , ItemBag [2] , 2 , 1 , 0 )		
	if R1 == 0 or R2 == 0 then
			LG( "beuplv" , "Удалить предмет не удалось " )
	end
	local Money_Need = getupgrade_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role , ATTR_GD )
	ALLExAttrSet( role )						
	local a = Check_CG_beuplv ( Item_beuplv_Lv )			
	if a == 0 then
		R1 = RemoveChaItem ( role , Item_ScItem_ID , 1 , 2 , ItemBag [0] , 2 , 1 , 0 )		
		R2 = RemoveChaItem ( role , Item_YxItem_ID , 1 , 2 , ItemBag [2] , 2 , 1 , 0 )		
		if R1 == 0 or R2 == 0 then
			LG( "beuplv" , "Удалить предмет не удалось " )
		end
		local cha_name = GetChaDefaultName ( role )
		LG( "JingLian_ShiBai" , "Игрок "..cha_name.." не смог улучшить предмет " )
		SystemNotice( role , "Извините, заточить аппарель неудалось ")
		return 
	end
	Item_beuplv_Lv = Item_beuplv_Lv + 1
	SetChaKitbagChange( role , 1 )
	Set_Itembeuplv_Lv ( Item_beuplv , Item_beuplv_Lv )		
	SynChaKitbag( role, 4 )
	local LvD = GetItemAttr( Item_beuplv , ITEMATTR_VAL_LEVEL )
	SynChaKitbag(role,13)
	SystemNotice( role , "Вы заточили шмотку ")
	local cha_name = GetChaDefaultName ( role )
	LG( "JingLian_ShiBai" , "Игрок "..cha_name.." успешно провел усиление " )
	return 1
end

function Get_Itembeuplv_Lv ( Item )								
	local Lv = GetItemAttr ( Item , ITEMATTR_VAL_LEVEL )
	return Lv
end

function Set_Itembeuplv_Lv ( Item , Item_Lv )							
	local i = 0
	i = SetItemAttr ( Item , ITEMATTR_VAL_LEVEL , Item_Lv )
	if i == 0 then
		LG( "Hecheng_BS","Failed to set gem level" )
	end
end

------------------
-- Шанс Заточки --
------------------

function Check_CG_beuplv ( Item_Lv )				
	local	ran = math.random ( 1, 100 )
	if Item_Lv <= 10 then					
		return 1			-- 100%
	end
	if Item_Lv>10 and Item_Lv <= 15 then			
		if ran <= 50 then		-- 50%
		return 1
		else
		return 0
		end
	end
	if Item_Lv>15 and Item_Lv <= 20 then			
		if ran <= 10 then		--10%
		return 1
		else
		return 0
		end
	end
end

function get_item_upgrade_money(...)
	local Money = getupgrade_money_main ( arg )
	return Money
end

function getupgrade_money_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}									
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0								
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	local ItemBag_Waiguan = ItemBag [1]
	local Item_Waiguan = GetChaItem ( role , 2 , ItemBag_Waiguan )
	local Waiguan_Lv = 0
	local Waiguan_Lv =  Get_Itembeuplv_Lv ( Item_Waiguan )
	local Money_Need = ( Waiguan_Lv + 1 )*( Waiguan_Lv + 1 )*10000
	return Money_Need
end

--------------------------------------------------------------------
---------------------------- Спарка Фей ----------------------------
--------------------------------------------------------------------

function can_jlborn_item(...)
	if arg.n ~= 12  then
		SystemNotice ( arg[1] , "parameter value illegal"..arg.n )
		return 0
	end
	local Check = 0
	Check = can_jlborn_item_main ( arg )
	if Check == 1 then
		return 1
	else
		return 0
	end
end

function can_jlborn_item_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )
	if ItemCount [1] ~= 1 or ItemCount [2] ~= 1 or ItemBagCount [1] ~= 1 or ItemBagCount [2] ~= 1 then
		SystemNotice ( role ,"equipment quantity illegal ")
		return 0
	end
	local Item_EMstone = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_JLone = GetChaItem ( role , 2 , ItemBag [1] )	
	local Item_JLother = GetChaItem ( role , 2 , ItemBag [2] )	
	local Item_JLone_ID = GetItemID ( Item_JLone )   
	local Item_JLother_ID = GetItemID ( Item_JLother )   
	local str_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STR )		 
	local con_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_CON )		
	local agi_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_AGI )		
	local dex_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_DEX )		
	local sta_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STA )		
	local URE_JLone = GetItemAttr( Item_JLone ,ITEMATTR_URE )		
	local MAXURE_JLone = GetItemAttr( Item_JLone ,ITEMATTR_MAXURE )       
	local lv_JLone = str_JLone + con_JLone + agi_JLone + dex_JLone + sta_JLone  
	local str_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STR )       
	local con_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_CON )       
	local agi_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_AGI )       
	local dex_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_DEX )       
	local sta_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STA )       
	local URE_JLother = GetItemAttr( Item_JLother ,ITEMATTR_URE )		 
	local MAXURE_JLother = GetItemAttr( Item_JLother ,ITEMATTR_MAXURE )       
	local lv_JLother = str_JLother + con_JLother + agi_JLother + dex_JLother + sta_JLother 
	local Num_JLone = GetItemForgeParam ( Item_JLone , 1 )
	local Part1_JLone = GetNum_Part1 ( Num_JLone )	
	local Part2_JLone = GetNum_Part2 ( Num_JLone )	
	local Part3_JLone = GetNum_Part3 ( Num_JLone )
	local Part4_JLone = GetNum_Part4 ( Num_JLone )
	local Part5_JLone = GetNum_Part5 ( Num_JLone )
	local Part6_JLone = GetNum_Part6 ( Num_JLone )
	local Part7_JLone= GetNum_Part7 ( Num_JLone )
	local Num_JLother = GetItemForgeParam ( Item_JLother , 1 )
	local Part1_JLother = GetNum_Part1 ( Num_JLother )	
	local Part2_JLother = GetNum_Part2 ( Num_JLother )	
	local Part3_JLother = GetNum_Part3 ( Num_JLother )
	local Part4_JLother = GetNum_Part4 ( Num_JLother )
	local Part5_JLother = GetNum_Part5 ( Num_JLother )
	local Part6_JLother = GetNum_Part6 ( Num_JLother )
	local Part7_JLother= GetNum_Part7 ( Num_JLother )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 2 then
		SystemNotice(role ,"В инвентаре должно быть минимум 2 свободных ячейки ")
		return 0
	end	
	local  Item_EMstone_ID = GetItemID ( Item_EMstone )
	if Item_EMstone_ID ~= 3918 and Item_EMstone_ID ~= 3919 and Item_EMstone_ID ~= 3920 and Item_EMstone_ID ~= 3921 and Item_EMstone_ID ~= 3922 and Item_EMstone_ID ~= 3924 and Item_EMstone_ID ~= 3925 then
		SystemNotice( role ,"Поместите Демонический Фрукт ")
		return 0
	end
	if Item_EMstone_ID == 3918 then
	local i1 = CheckBagItem( role, 4530 )			
	local i2 = CheckBagItem( role,3434 )			
		if i1 < 10 or i2 < 10 then
			SystemNotice( role ,"У тебя нету нужных предметов, для свадьбы фей ")
			return 0
		end
	end
	if Item_EMstone_ID == 3919 then
	local i1 = CheckBagItem( role, 4531 )			
	local i2 = CheckBagItem( role, 3435 )			
		if i1 < 10 or i2 < 10 then
			SystemNotice( role ,"У тебя нету нужных предметов, для свадьбы фей ")
			return 0
		end
	end
	if Item_EMstone_ID == 3920 then
	local i1 = CheckBagItem( role,1196 )			
	local i2 = CheckBagItem( role,3436 )			
		if i1 < 10 or i2 < 10 then
			SystemNotice( role ,"У тебя нету нужных предметов, для свадьбы фей ")
			return 0
		end
	end
	if Item_EMstone_ID == 3921 then
	local i1 = CheckBagItem( role, 4533 )			
	local i2 = CheckBagItem( role, 3437 )			
		if i1 < 10 or i2 < 10 then
			SystemNotice( role ,"У тебя нету нужных предметов, для свадьбы фей ")
			return 0
		end
	end
	if Item_EMstone_ID == 3922 then
	local i1 = CheckBagItem( role,4537 )			
	local i2 = CheckBagItem( role,3444 )			
		if i1 < 10 or i2 < 10 then
			SystemNotice( role ,"У тебя нету нужных предметов, для свадьбы фей ")
			return 0
		end
	end
	if Item_EMstone_ID == 3924 then
	local i1 = CheckBagItem( role, 4540 )			
	local i2 = CheckBagItem( role, 3443 )			
		if i1 < 10 or i2 < 10 then
			SystemNotice( role ,"У тебя нету нужных предметов, для свадьбы фей ")
			return 0
		end
	end
	if Item_EMstone_ID == 3925 then
	local i1 = CheckBagItem( role, 1253 )			
	local i2 = CheckBagItem( role, 3442 )			
		if i1 < 10 or i2 < 10 then
			SystemNotice( role ,"У тебя нету нужных предметов, для свадьбы фей ")
			return 0
		end
	end
	local ItemType_JLone = GetItemType (Item_JLone)
	local ItemType_JLother = GetItemType (Item_JLother)
	if  ItemType_JLone ~=59 or ItemType_JLother ~=59  then
			SystemNotice( role ,"Ты не поместил Фей ")
		return 0
	end
	if ItemBag [1]==ItemBag [2] then
		SystemNotice( role ,"Моё дорогое дитя, я могу провести свадьбу?")
		return 0		
	end
	if  Part1_JLone ~=0 or Part1_JLother ~=0  then
		return 0
	end
	if  lv_JLone < 20 or lv_JLother < 20   then
		SystemNotice( role ,"Феи должны быть больше 20 уровня ")
		return 0
	end
	if URE_JLone < MAXURE_JLone or URE_JLone < MAXURE_JLone then
		SystemNotice( role ,"Свадьба фей очень утомительный процес. И фея должна иметь полную выносливость ")
		return 0
	end
	local Money_Need = getjlborn_money_main ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"У вас не хватает денег ")
		return 0
	end
	return 1
end

function begin_jlborn_item(...)
	local Check_Canjlborn = 0
	Check_Canjlborn = can_jlborn_item_main ( arg )
	if Check_Canjlborn == 0 then
		return 0
	end
	local role = 0
	local ItemBag = {}											
	local ItemCount = {}											
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )
	local Item_EMstone = GetChaItem ( role , 2 , ItemBag [0] )				
	local Item_JLone = GetChaItem ( role , 2 , ItemBag [1] )					
	local Item_JLother = GetChaItem ( role , 2 , ItemBag [2] )				
	local Money_Need = getjlborn_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role , ATTR_GD )
	ALLExAttrSet( role )
	Check_JLBorn_Item = jlborn_item ( arg )
	if Check_JLBorn_Item == 0  then
		SystemNotice ( role ,"Свадьба не возможна. Повторите попытку ")
	end
	local cha_name = GetChaDefaultName ( role )
	SystemNotice ( role ,"Свадьба состоялась. ")
	return 1
end

function get_item_jlborn_money(...)
	local Money = getjlborn_money_main ( arg )
	return Money
end

function getjlborn_money_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}									
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0								
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	local Item_JLone = GetChaItem ( role , 2 , ItemBag [1] )				
	local Item_JLother = GetChaItem ( role , 2 , ItemBag [2] )			
	local str_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STR )		  
	local con_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_CON )		   
	local agi_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_AGI )		  
	local dex_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_DEX )		 
	local sta_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STA )		 
	local lv_JLone = str_JLone + con_JLone + agi_JLone + dex_JLone + sta_JLone  
	local str_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STR )		 
	local con_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_CON )		  
	local agi_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_AGI )		
	local dex_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_DEX )		  
	local sta_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STA )		 
	local lv_JLother = str_JLother + con_JLother + agi_JLother + dex_JLother + sta_JLother 
	local  Money_Need = ( 60 - lv_JLone )*(60 - lv_JLother )*100
	if lv_JLone>60 or lv_JLother>60 then
		 Money_Need = 0
	end
	return Money_Need
end

function jlborn_item ( Table )
	local role = 0
	local ItemBag = {}											
	local ItemCount = {}											
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	local ItemID_Cuihuaji = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	local Item_EMstone = GetChaItem ( role , 2 , ItemBag [0] )				
	local Item_JLone = GetChaItem ( role , 2 , ItemBag [1] )					
	local Item_JLother = GetChaItem ( role , 2 , ItemBag [2] )				
	local  Item_EMstone_ID = GetItemID ( Item_EMstone )					 
	local  Item_JLone_ID = GetItemID ( Item_JLone )						 
	local  Item_JLother_ID = GetItemID ( Item_JLother )					 
	local str_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STR )			  
	local con_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_CON )			 
	local agi_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_AGI )			 
	local dex_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_DEX )			  
	local sta_JLone = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STA )			  
	local URE_JLone = GetItemAttr( Item_JLone ,ITEMATTR_URE )			
	local MAXURE_JLone = GetItemAttr( Item_JLone ,ITEMATTR_MAXURE )		 
	local lv_JLone = str_JLone + con_JLone + agi_JLone + dex_JLone + sta_JLone	
	local str_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STR )		
	local con_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_CON )		  
	local agi_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_AGI )		 
	local dex_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_DEX )		 
	local sta_JLother = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STA )		 
	local URE_JLother = GetItemAttr( Item_JLother ,ITEMATTR_URE )			    
	local MAXURE_JLother = GetItemAttr( Item_JLother ,ITEMATTR_MAXURE )	 
	local lv_JLother = str_JLother + con_JLother + agi_JLother + dex_JLother + sta_JLother 
	local Num_JLone = GetItemForgeParam ( Item_JLone , 1 )
	local Part1_JLone = GetNum_Part1 ( Num_JLone )	
	local Part2_JLone = GetNum_Part2 ( Num_JLone )	
	local Part3_JLone = GetNum_Part3 ( Num_JLone )
	local Part4_JLone = GetNum_Part4 ( Num_JLone )
	local Part5_JLone = GetNum_Part5 ( Num_JLone )
	local Part6_JLone = GetNum_Part6 ( Num_JLone )
	local Part7_JLone= GetNum_Part7 ( Num_JLone )
	local Num_JLother = GetItemForgeParam ( Item_JLother , 1 )
	local Part1_JLother = GetNum_Part1 ( Num_JLother )	
	local Part2_JLother = GetNum_Part2 ( Num_JLother )	
	local Part3_JLother = GetNum_Part3 ( Num_JLother )
	local Part4_JLother = GetNum_Part4 ( Num_JLother )
	local Part5_JLother = GetNum_Part5 ( Num_JLother )
	local Part6_JLother = GetNum_Part6 ( Num_JLother )
	local Part7_JLother= GetNum_Part7 ( Num_JLother )
	local new_str = math.floor ((str_JLone+str_JLother)*0.125 )
	local new_con = math.floor ((con_JLone+con_JLother)*0.125 )
	local new_agi = math.floor ((agi_JLone+agi_JLother)*0.125 )
	local new_dex = math.floor ((dex_JLone+dex_JLother)*0.125 )
	local new_sta = math.floor ((sta_JLone+sta_JLother)*0.125 )
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end	
	if Item_EMstone_ID ==3918 then 
		local j1 =TakeItem( role, 0, 4530, 10 )			
		local j2 = TakeItem( role, 0,3434, 10  )			
		if j1==0 or j2==0 then
			--SystemNotice ( role ,"Deletion of pet fairy reborn tools failed")
			return
		end 
		local rad = math.random ( 1, 100 )
		local r1 = 0
		local r2 = 0
		if Item_JLone_ID ==680 or Item_JLother_ID ==680 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=88 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=50 then 
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=10 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )			
			else
				r1,r2 =MakeItem ( role , 231  , 1 , 4 )
			end
		else
			r1,r2 =MakeItem ( role , 231  , 1 , 4 )
		end
		local Item_newJL = GetChaItem ( role , 2 , r2 )			
		local Item_newJL_ID = GetItemID ( Item_newJL )
		local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
		local Part1_newJL = GetNum_Part1 ( Num_newJL )	
		local Part2_newJL = GetNum_Part2 ( Num_newJL )	
		local Part3_newJL = GetNum_Part3 ( Num_newJL )
		local Part4_newJL = GetNum_Part4 ( Num_newJL )
		local Part5_newJL = GetNum_Part5 ( Num_newJL )
		local Part6_newJL = GetNum_Part6 ( Num_newJL )
		local Part7_newJL= GetNum_Part7 ( Num_newJL )			
		if lv_JLone>=20 and lv_JLother >=20 then
			Part2_newJL = 6					 
			Part3_newJL = 1						
		end
		if lv_JLone>=25 and lv_JLother >=25 then
			Part2_newJL = 6					 
			Part3_newJL = 2						
		end
		if lv_JLone>=35 and lv_JLother >=35 then
			Part2_newJL = 6					 
			Part3_newJL = 3						
		end
		local rad1 = math.random ( 1, 100 )
		if Part3_newJL==3 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
		if Part3_newJL==2 then
			if rad1 <=95 then
				GiveItem ( role , 0 , 608  , 1 , 4 ) 
			elseif rad1 > 95 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 ) 
			end
		end
		if Part3_newJL==1 then
			if rad1 <=90 then
				GiveItem ( role , 0 , 239  , 1 , 4 ) 
			elseif rad1 > 90 and rad1 <=98 then
				GiveItem ( role , 0 , 608  , 1 , 4 ) 
			elseif rad1 > 98 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 ) 
			end
		end
		Num_newJL = SetNum_Part1 ( Num_newJL , 1 )	 
		Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
		Num_newJL = SetNum_Part3 ( Num_newJL , Part3_newJL )
		Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
		Num_newJL = SetNum_Part5 ( Num_newJL , Part5_newJL )
		Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
		Num_newJL = SetNum_Part7 ( Num_newJL , Part7_newJL )
		SetItemForgeParam ( Item_newJL , 1 , Num_newJL )
		
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
		SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
		SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE ) 	
	end
	if Item_EMstone_ID ==3919 then 
		local j1 = TakeItem( role, 0, 4531, 10 )			
		local j2 = TakeItem( role, 0,3435, 10 )			
		if j1==0 or j2==0 then
			--SystemNotice ( role ,"Deletion of pet fairy reborn tools failed")
			return
		end
		local rad = math.random ( 1, 100 )
		local r1 = 0
		local r2 = 0
		if Item_JLone_ID ==680 or Item_JLother_ID ==680 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif  lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=88 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=50 then 
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=10 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )			
			else
				r1,r2 =MakeItem ( role , 233  , 1 , 4 )
			end
		else
			r1,r2 =MakeItem ( role , 233  , 1 , 4 )
		end
		local Item_newJL = GetChaItem ( role , 2 , r2 )			
		local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
		local Part1_newJL = GetNum_Part1 ( Num_newJL )	
		local Part2_newJL = GetNum_Part2 ( Num_newJL )	
		local Part3_newJL = GetNum_Part3 ( Num_newJL )
		local Part4_newJL = GetNum_Part4 ( Num_newJL )
		local Part5_newJL = GetNum_Part5 ( Num_newJL )
		local Part6_newJL = GetNum_Part6 ( Num_newJL )
		local Part7_newJL= GetNum_Part7 ( Num_newJL )
		if lv_JLone>=20 and lv_JLother >=20 then
			Part2_newJL = 7					 
			Part3_newJL = 1					
		end
		if lv_JLone>=25 and lv_JLother >=25 then
			Part2_newJL = 7					 
			Part3_newJL = 2					
		end
		if lv_JLone>=35 and lv_JLother >=35 then
			Part2_newJL = 7					 
			Part3_newJL = 3					
		end
		local rad1 = math.random ( 1, 100 )
		if Part3_newJL==3 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
		if Part3_newJL==2 then
			if rad1 <=95 then
				GiveItem ( role , 0 , 608  , 1 , 4 ) 
			elseif rad1 > 95 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 ) 
			end
		end
		if Part3_newJL==1 then
			if rad1 <=90 then
				GiveItem ( role , 0 , 239  , 1 , 4 ) 
			elseif rad1 > 90 and rad1 <=98 then
				GiveItem ( role , 0 , 608  , 1 , 4 ) 
			elseif rad1 > 98 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 ) 
			end
		end
		Num_newJL = SetNum_Part1 ( Num_newJL , 1 )	
		Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
		Num_newJL = SetNum_Part3 ( Num_newJL , Part3_newJL )
		Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
		Num_newJL = SetNum_Part5 ( Num_newJL , Part5_newJL )
		Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
		Num_newJL = SetNum_Part7 ( Num_newJL , Part7_newJL )
		SetItemForgeParam ( Item_newJL , 1 , Num_newJL )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
		SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
		SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE ) 	
	end
	if Item_EMstone_ID ==3920 then 
		local j1 =TakeItem( role, 0, 1196, 10 )			
		local j2 = TakeItem( role, 0,3436, 10 )			
		if j1==0 or j2==0 then
			--SystemNotice ( role ,"Deletion of pet fairy reborn tools failed")
			return
		end
		local rad = math.random ( 1, 100 )
		local r1 = 0
		local r2 = 0
		if Item_JLone_ID ==680 or Item_JLother_ID ==680 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif  lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=88 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=50 then 
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=10 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )			
			else
				r1,r2 =MakeItem ( role , 232  , 1 , 4 )
			end
		else
			r1,r2 =MakeItem ( role , 232  , 1 , 4 )
		end
		local Item_newJL = GetChaItem ( role , 2 , r2 )			
		local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
		local Part1_newJL = GetNum_Part1 ( Num_newJL )	
		local Part2_newJL = GetNum_Part2 ( Num_newJL )	
		local Part3_newJL = GetNum_Part3 ( Num_newJL )
		local Part4_newJL = GetNum_Part4 ( Num_newJL )
		local Part5_newJL = GetNum_Part5 ( Num_newJL )
		local Part6_newJL = GetNum_Part6 ( Num_newJL )
		local Part7_newJL= GetNum_Part7 ( Num_newJL )
		if lv_JLone>=20 and lv_JLother >=20 then
			Part2_newJL = 8													 
			Part3_newJL = 1													
		end
		if lv_JLone>=25 and lv_JLother >=25 then
			Part2_newJL = 8													 
			Part3_newJL = 2													
		end
		if lv_JLone>=35 and lv_JLother >=35 then
			Part2_newJL = 8													 
			Part3_newJL = 3													
		end
		local rad1 = math.random ( 1, 100 )
		if Part3_newJL==3 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
		if Part3_newJL==2 then
			if rad1 <=95 then
				GiveItem ( role , 0 , 608  , 1 , 4 ) 
			elseif rad1 > 95 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 ) 
			end
		end
		if Part3_newJL==1 then
			if rad1 <=90 then
				GiveItem ( role , 0 , 239  , 1 , 4 ) 
			elseif rad1 > 90 and rad1 <=98 then
				GiveItem ( role , 0 , 608  , 1 , 4 ) 
			elseif rad1 > 98 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 ) 
			end
		end
		Num_newJL = SetNum_Part1 ( Num_newJL , 1 )	
		Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
		Num_newJL = SetNum_Part3 ( Num_newJL , Part3_newJL )
		Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
		Num_newJL = SetNum_Part5 ( Num_newJL , Part5_newJL )
		Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
		Num_newJL = SetNum_Part7 ( Num_newJL , Part7_newJL )
		SetItemForgeParam ( Item_newJL , 1 , Num_newJL )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con )
		SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
		SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE ) 	
	end
	if Item_EMstone_ID ==3921 then 
		local j1 =TakeItem( role, 0, 4533, 10 )			
		local j2 = TakeItem( role, 0,3437, 10 )			
		if j1==0 or j2==0 then
			--SystemNotice ( role ,"Deletion of pet fairy reborn tools failed")
			return
		end
		local rad = math.random ( 1, 100 )
		local r1 = 0
		local r2 = 0
		if Item_JLone_ID ==680 or Item_JLother_ID ==680 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif  lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=88 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=50 then 
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=10 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )			
			else
				r1,r2 =MakeItem ( role , 234  , 1 , 4 )
			end
		else
			r1,r2 =MakeItem ( role , 234  , 1 , 4 )
		end
		local Item_newJL = GetChaItem ( role , 2 , r2 )			
		local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
		local Part1_newJL = GetNum_Part1 ( Num_newJL )	
		local Part2_newJL = GetNum_Part2 ( Num_newJL )	
		local Part3_newJL = GetNum_Part3 ( Num_newJL )
		local Part4_newJL = GetNum_Part4 ( Num_newJL )
		local Part5_newJL = GetNum_Part5 ( Num_newJL )
		local Part6_newJL = GetNum_Part6 ( Num_newJL )
		local Part7_newJL= GetNum_Part7 ( Num_newJL )
		if lv_JLone>=20 and lv_JLother >=20 then
			Part2_newJL = 9													 
			Part3_newJL = 1													
		end
		if lv_JLone>=25 and lv_JLother >=25 then
			Part2_newJL = 9													 
			Part3_newJL = 2													
		end
		if lv_JLone>=35 and lv_JLother >=35 then
			Part2_newJL = 9													 
			Part3_newJL = 3													
		end
		local rad1 = math.random ( 1, 100 )
		if Part3_newJL==3 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
		if Part3_newJL==2 then
			if rad1 <=95 then
				GiveItem ( role , 0 , 608  , 1 , 4 ) 
			elseif rad1 > 95 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 ) 
			end
		end
		if Part3_newJL==1 then
			if rad1 <=90 then
				GiveItem ( role , 0 , 239  , 1 , 4 ) 
			elseif rad1 > 90 and rad1 <=98 then
				GiveItem ( role , 0 , 608  , 1 , 4 ) 
			elseif rad1 > 98 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 ) 
			end
		end
		Num_newJL = SetNum_Part1 ( Num_newJL , 1 ) 
		Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
		Num_newJL = SetNum_Part3 ( Num_newJL , Part3_newJL )
		Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
		Num_newJL = SetNum_Part5 ( Num_newJL , Part5_newJL )
		Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
		Num_newJL = SetNum_Part7 ( Num_newJL , Part7_newJL )
		SetItemForgeParam ( Item_newJL , 1 , Num_newJL )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con )
		SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
		SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE ) 	
	end
	if Item_EMstone_ID ==3922 then 
		local j1 =TakeItem( role, 0,4537, 10 )			
		local j2 = TakeItem( role, 0,3444, 10 )			
		if j1==0 or j2==0 then
			--SystemNotice ( role ,"Deletion of pet fairy reborn tools failed")
			return
		end
		local rad = math.random ( 1, 100 )
		local r1 = 0
		local r2 = 0
		if Item_JLone_ID ==680 or Item_JLother_ID ==680 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif  lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=88 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=50 then 
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=10 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )			
			else
				r1,r2 =MakeItem ( role , 235  , 1 , 4 )
			end
		else
			 r1,r2 =MakeItem ( role , 235  , 1 , 4 )
		end
		local Item_newJL = GetChaItem ( role , 2 , r2 )			
		local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
		local Part1_newJL = GetNum_Part1 ( Num_JLother )	
		local Part2_newJL = GetNum_Part2 ( Num_newJL )	
		local Part3_newJL = GetNum_Part3 ( Num_newJL )
		local Part4_newJL = GetNum_Part4 ( Num_newJL )
		local Part5_newJL = GetNum_Part5 ( Num_newJL )
		local Part6_newJL = GetNum_Part6 ( Num_newJL )
		local Part7_newJL= GetNum_Part7 ( Num_newJL )
		if lv_JLone>=20 and lv_JLother >=20 then
			Part2_newJL = 10												 
			Part3_newJL = 1													
		end
		if lv_JLone>=25 and lv_JLother >=25 then
			Part2_newJL = 10												 
			Part3_newJL = 2													
		end
		if lv_JLone>=35 and lv_JLother >=35 then
			Part2_newJL = 10													 
			Part3_newJL = 3													
		end
		local rad1 = math.random ( 1, 100 )
		if Part3_newJL==3 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
		if Part3_newJL==2 then
			if rad1 <=95 then
				GiveItem ( role , 0 , 608  , 1 , 4 ) 
			elseif rad1 > 95 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 ) 
			end
		end
		if Part3_newJL==1 then
			if rad1 <=90 then
				GiveItem ( role , 0 , 239  , 1 , 4 ) 
			elseif rad1 > 90 and rad1 <=98 then
				GiveItem ( role , 0 , 608  , 1 , 4 ) 
			elseif rad1 > 98 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 ) 
			end
		end
		Num_newJL = SetNum_Part1 ( Num_newJL , 1 ) 
		Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
		Num_newJL = SetNum_Part3 ( Num_newJL , Part3_newJL )
		Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
		Num_newJL = SetNum_Part5 ( Num_newJL , Part5_newJL )
		Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
		Num_newJL = SetNum_Part7 ( Num_newJL , Part7_newJL )
		SetItemForgeParam ( Item_newJL , 1 , Num_newJL )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con )
		SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
		SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE ) 	
	end
	if Item_EMstone_ID ==3924 then 
		local j1 = TakeItem( role, 0,4540, 10 )			
		local j2 = TakeItem( role, 0,3443, 10 )			
		if j1==0 or j2==0 then
			--SystemNotice ( role ,"Deletion of pet fairy reborn tools failed")
			return
		end
		local rad = math.random ( 1, 100 )
		local r1 = 0
		local r2 = 0
		if Item_JLone_ID ==680 or Item_JLother_ID ==680 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif  lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=88 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=50 then 
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=10 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )			
			else
				r1,r2 =MakeItem ( role , 236  , 1 , 4 )
			end
		else
			r1,r2 =MakeItem ( role , 236  , 1 , 4 )
		end
		local Item_newJL = GetChaItem ( role , 2 , r2 )			
		local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
		local Part1_newJL = GetNum_Part1 ( Num_newJL )	
		local Part2_newJL = GetNum_Part2 ( Num_newJL )	
		local Part3_newJL = GetNum_Part3 ( Num_newJL )
		local Part4_newJL = GetNum_Part4 ( Num_newJL )
		local Part5_newJL = GetNum_Part5 ( Num_newJL )
		local Part6_newJL = GetNum_Part6 ( Num_newJL )
		local Part7_newJL= GetNum_Part7 ( Num_newJL )
		if lv_JLone>=20 and lv_JLother >=20 then
			Part2_newJL = 11													 
			Part3_newJL = 1													
		end		
		if lv_JLone>=25 and lv_JLother >=25 then
			Part2_newJL = 11													 
			Part3_newJL = 2													
		end
		if lv_JLone>=35 and lv_JLother >=35 then
			Part2_newJL = 11													 
			Part3_newJL = 3													
		end
		local rad1 = math.random ( 1, 100 )
		if Part3_newJL==3 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
		if Part3_newJL==2 then
			if rad1 <=95 then
				GiveItem ( role , 0 , 608  , 1 , 4 ) 
			elseif rad1 > 95 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 ) 
			end
		end
		if Part3_newJL==1 then
			if rad1 <=90 then
				GiveItem ( role , 0 , 239  , 1 , 4 ) 
			elseif rad1 > 90 and rad1 <=98 then
				GiveItem ( role , 0 , 608  , 1 , 4 ) 
			elseif rad1 > 98 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 ) 
			end
		end
		Num_newJL = SetNum_Part1 ( Num_newJL , 1 ) 
		Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
		Num_newJL = SetNum_Part3 ( Num_newJL , Part3_newJL )
		Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
		Num_newJL = SetNum_Part5 ( Num_newJL , Part5_newJL )
		Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
		Num_newJL = SetNum_Part7 ( Num_newJL , Part7_newJL )
		SetItemForgeParam ( Item_newJL , 1 , Num_newJL )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con )
		SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
		SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE ) 	
	end
	if Item_EMstone_ID ==3925 then 
		local j1 = TakeItem( role, 0,1253, 10 )			
		local j2 = TakeItem( role, 0,3442, 10 )			
		if j1==0 or j2==0 then
			--SystemNotice ( role ,"Deletion of pet fairy reborn tools failed")
			return
		end
		local rad = math.random ( 1, 100 )
		local r1 = 0
		local r2 = 0
		if Item_JLone_ID ==680 or Item_JLother_ID ==680 then
			if Item_JLone_ID==Item_JLother_ID then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif  lv_JLone>=20 and lv_JLone<25 and lv_JLother >=20 and lv_JLother<25 and rad>=88 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=25 and lv_JLone<35 and lv_JLother >=25 and lv_JLother<35 and rad>=50 then 
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )
			elseif lv_JLone>=35 and lv_JLother >=35 and rad>=10 then
				r1,r2 =MakeItem ( role , 681  , 1 , 4 )			
			else
				r1,r2 =MakeItem ( role , 237  , 1 , 4 )
			end
		else
			r1,r2 =MakeItem ( role , 237 , 1 , 4 )
		end
		local Item_newJL = GetChaItem ( role , 2 , r2 )			
		local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
		local Part1_newJL = GetNum_Part1 ( Num_newJL )	
		local Part2_newJL = GetNum_Part2 ( Num_newJL )	
		local Part3_newJL = GetNum_Part3 ( Num_newJL )
		local Part4_newJL = GetNum_Part4 ( Num_newJL )
		local Part5_newJL = GetNum_Part5 ( Num_newJL )
		local Part6_newJL = GetNum_Part6 ( Num_newJL )
		local Part7_newJL= GetNum_Part7 ( Num_newJL )
		if lv_JLone>=20 and lv_JLother >=20 then
			Part2_newJL = 12													 
			Part3_newJL = 1													
		end
		if lv_JLone>=25 and lv_JLother >=25 then
			Part2_newJL = 12													 
			Part3_newJL = 2													
		end
		if lv_JLone>=35 and lv_JLother >=35 then
			Part2_newJL = 12													 
			Part3_newJL = 3													
		end
		local rad1 = math.random ( 1, 100 )
		if Part3_newJL==3 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
		if Part3_newJL==2 then
			if rad1 <=95 then
				GiveItem ( role , 0 , 608  , 1 , 4 ) 
			elseif rad1 > 95 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 ) 
			end
		end
		if Part3_newJL==1 then
			if rad1 <=90 then
				GiveItem ( role , 0 , 239  , 1 , 4 ) 
			elseif rad1 > 90 and rad1 <=98 then
				GiveItem ( role , 0 , 608  , 1 , 4 ) 
			elseif rad1 > 98 and rad1 <=100 then
				GiveItem ( role , 0 , 609  , 1 , 4 ) 
			end
		end
		Num_newJL = SetNum_Part1 ( Num_newJL , 1 ) 
		Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
		Num_newJL = SetNum_Part3 ( Num_newJL , Part3_newJL )
		Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
		Num_newJL = SetNum_Part5 ( Num_newJL , Part5_newJL )
		Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
		Num_newJL = SetNum_Part7 ( Num_newJL , Part7_newJL )
		SetItemForgeParam ( Item_newJL , 1 , Num_newJL )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
		SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
		SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con )
		SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
		SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE ) 	
	end
	local cha_name = GetChaDefaultName ( role )
	LG( "star_JLZS_lg" ,cha_name, Item_EMstone_ID , Item_JLone_ID , lv_JLone ,  Item_JLother_ID , lv_JLother , Item_newJL_ID )
	R1 = RemoveChaItem ( role , Item_EMstone_ID , 1 , 2 , ItemBag [0] , 2 , 1 , 0 )		
	if R1 == 0  then
		--SystemNotice( role , "Deletion of Demonic Fruit failed")
		return
	end
	 Elf_Attr_cs ( role , Item_JLone , Item_JLother )	
end

function can_tichun_item(...)
	if arg.n ~= 10 and arg.n ~= 14 then
		SystemNotice ( arg[1] , "parameter value illegal"..arg.n )
		return 0
	end
	local Check = 0
	Check = can_tichun_item_main ( arg )
	if Check == 1 then
		return 1
	else
		return 0
	end
end

function can_tichun_item_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )
	if ItemCount [0] ~= 1 or ItemCount [1] ~= 1 or ItemBagCount [0] ~= 1 or ItemBagCount [1] ~= 1 then
		--SystemNotice ( role ,"equipment quantity illegal ")
		return 0
	end
	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )
    local ItemID_mainitem = GetItemID ( Item_mainitem )
    local ItemID_otheritem = GetItemID ( Item_otheritem )
	local ItemID_mainitem_Lv =  GetItemLv ( Item_mainitem )
	local ItemID_otheritem_Lv =  GetItemLv ( Item_otheritem )
	local ItemID_main=ItemID_mainitem		
        local ItemID_other=ItemID_otheritem
	if ItemID_main > 5000 then
		ItemID_main = GetItemAttr( Item_mainitem , ITEMATTR_VAL_FUSIONID )
	end
	local flg=0
	if ItemID_main==825 or ItemID_main==826 or ItemID_main==827  or ItemID_main==828 then
		if ItemID_other==2403 then
			flg=1
		end
	end
	if ItemID_main==845 or ItemID_main==846 or ItemID_main==847  or ItemID_main==848 then
		if ItemID_other==2404 then
			flg=1
		end
	end
	if ItemID_main>=2530 and ItemID_main<=2532 then
		if ItemID_other==2562 then
			flg=1
		end
	end
	if ItemID_main>=2533 and ItemID_main<=2535 then
		if ItemID_other==2563 then
			flg=1
		end
	end
	if ItemID_main>=2536 and ItemID_main<=2538 then
		if ItemID_other==2564 then
			flg=1
		end
	end
	if ItemID_main>=2539 and ItemID_main<=2541 then
		if ItemID_other==2565 then
			flg=1
		end
	end
	if ItemID_main>=2542 and ItemID_main<=2544 then
		if ItemID_other==2566 then
			flg=1
		end
	end
	if ItemID_main>=2545 and ItemID_main<=2547 then
		if ItemID_other==2567 then
			flg=1
		end
	end
	if flg==0 then
		SystemNotice( role ,"Используйте нужный камень и нужное снаряжение ")
		return 0		
	end
	local Money_Need = gettichun_money_main ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"У вас не хватает золота ")
		return 0
	end
	return 1
end

function begin_tichun_item(...)
	local Check_Cantichun = 0
	Check_Cantichun = can_tichun_item_main ( arg )
	if Check_Cantichun == 0 then
		return 0
	end
	local role = 0
	local ItemBag = {}											
	local ItemCount = {}											
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )
	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	local Money_Need = gettichun_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	TakeMoney(role,nil,Money_Need)
	Check_TiChun_Item = tichun_item ( arg )
	if Check_TiChun_Item == 0  then
		SystemNotice ( role ,"Уровень вещи не поднят. Проверьте все компоненты ещё раз ")
	end
	return 1
end

function get_item_tichun_money(...)
	local Money = gettichun_money_main ( arg )
	return Money
end

function gettichun_money_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}									
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0								
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_mainitem_Lv =  GetItemLv ( Item_mainitem )
	local Money_Need = 1000000
	return Money_Need
end

function tichun_item ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	local ItemID_Cuihuaji = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )
    local ItemID_mainitem = GetItemID ( Item_mainitem )
    local ItemID_otheritem = GetItemID ( Item_otheritem )
	local ItemID_mainitem_Lv =  GetItemLv ( Item_mainitem )
	local ItemID_otheritem_Lv =  GetItemLv ( Item_otheritem )
	local ItemID_main=ItemID_mainitem		
        local ItemID_other=ItemID_otheritem
	if ItemID_main > 5000 then
		ItemID_main = GetItemAttr( Item_mainitem , ITEMATTR_VAL_FUSIONID )
	end
	local Jinglianxinxi = GetItemForgeParam ( Item_mainitem , 1 )
	local r1 = 0
	local r2 = 0
	local item_energy = GetItemAttr(Item_mainitem,ITEMATTR_ENERGY) 
	if ItemID_main==825  then
		r1,r2 =MakeItem ( role , 2549  , 1 , 4 )
	end
	if ItemID_main==826  then
		r1,r2 =MakeItem ( role , 2550  , 1 , 4 )
	end
	if ItemID_main==827  then
		r1,r2 =MakeItem ( role , 2551  , 1 , 4 )
	end
	if ItemID_main==828  then
		r1,r2 =MakeItem ( role , 2552  , 1 , 4 )
	end
	local item_qulity=12
	if ItemID_main==845 or ItemID_main==846 or ItemID_main==847  or ItemID_main==848 then
		if item_energy<1000 then
			item_qulity=2
		elseif item_energy>=1000 and item_energy<2000  then
			item_qulity=12
		elseif item_energy>=2000 and item_energy<3000  then
			item_qulity=13
		elseif item_energy>=3000 and item_energy<4000  then
			item_qulity=14
		elseif item_energy>=4000 and item_energy<5000  then
			item_qulity=15
		elseif item_energy>=5000 and item_energy<6000  then
			item_qulity=16
		elseif item_energy>=6000 and item_energy<7000  then
			item_qulity=17
		elseif item_energy>=7000 and item_energy<8000  then
			item_qulity=18
		elseif item_energy>=8000 and item_energy<9000  then
			item_qulity=19
		elseif item_energy>=9000 and item_energy<10000  then
			item_qulity=20
		end
		ItemID_main=ItemID_main+1522
		r1,r2 =MakeItem ( role , ItemID_main  , 1 , item_qulity )
	end
	if ItemID_main>=2530 and ItemID_main<=2547 then
		ItemID_main=ItemID_main+287
		r1,r2 =MakeItem ( role , ItemID_main  , 1 , 4)
	end
	local R1 = 0
	local R2 = 0
	R1 = RemoveChaItem ( role , ItemID_mainitem , 1 , 2 , ItemBag [0] , 2 , 1 , 1 )	
	R2 = RemoveChaItem ( role , ItemID_otheritem , 1 , 2 , ItemBag [1] , 2 , 1 , 1 )	
	if R1==0 or R2==0 then
		return
	end
	local Item_new = GetChaItem ( role , 2 , r2 )	
	local Check_SetItemForgeParam = SetItemForgeParam( Item_new , 1 , Jinglianxinxi )
	if Check_SetItemForgeParam == 0 then
		SystemNotice( role , "Неудача при поднятии уровня вещи ")
		return
	end	
	local cha_name = GetChaDefaultName ( role )
	LG( "star_HNBTICHUN_lg" ,cha_name, ItemID_mainitem , ItemID_otheritem , ItemID_main, ItemID_other, item_energy , Jinglianxinxi )
	SynChaKitbag(role,13)
end

function can_energy_item(...)
	if arg.n ~= 10 and arg.n ~= 14 then
		SystemNotice ( arg[1] , "parameter value illegal"..arg.n )
		return 0
	end
	local Check = 0
	Check = can_energy_item_main ( arg )
	if Check == 1 then
		return 1
	else
		return 0
	end
end

function can_energy_item_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )
	if ItemCount [0] ~= 1 or ItemCount [1] ~= 1 or ItemBagCount [0] ~= 1 or ItemBagCount [1] ~= 1 then
		SystemNotice ( role ,"equipment quantity illegal ")
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 1 then
		SystemNotice(role ,"В инвентаре должен быть 1 свободный слот ")
		UseItemFailed ( role )
		return
	end
	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )
    local ItemID_mainitem = GetItemID ( Item_mainitem )
    local ItemID_otheritem = GetItemID ( Item_otheritem )
	local Item_mainitem_Lv =  GetItemLv ( Item_mainitem )
	local item_energy = GetItemAttr(Item_mainitem,ITEMATTR_ENERGY) 
	local item_maxenergy = GetItemAttr(Item_mainitem,ITEMATTR_MAXENERGY) 
	if ItemType_mainitem~=29 then
		SystemNotice( role ,"Только кораллы могут быть перезаряжены ")
		return 0	
	end
	if ItemID_otheritem ~= 1022 and ItemID_otheritem ~= 1024 then
		SystemNotice( role ,"Для перезарядки нужна батарейка ")
		return 0	
	end
	if item_energy==item_maxenergy then
		SystemNotice( role ,"Энергию коралла невозможно определить ")
		return 0	
	end
	local Money_Need = get_item_energy_money ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"Не хватает золота. Коралл не перезаряжен ")
		return 0
	end
	return 1
end

--------------------------------------------------------------------
----------------------- Перезарядка Кораллов -----------------------
--------------------------------------------------------------------

function begin_energy_item(...)
	local Check_Canenergy = 0
	Check_Canenergy = can_energy_item_main ( arg )
	if Check_Canenergy == 0 then
		return 0
	end
	local role = 0
	local ItemBag = {}											
	local ItemCount = {}											
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )
	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	local Money_Need = get_item_energy_money ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	TakeMoney(role,nil,Money_Need)
	Check_Energy_Item = energy_item ( arg )
	if Check_Energy_Item == 0  then
		SystemNotice ( role ,"Не удалось перезарядить коралл. Проверьте правильность действий.")
	end
	return 1
end

function get_item_energy_money(...)
	local Money = energy_money_main ( arg )
	return Money
end

function energy_money_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}									
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0								
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
        local ItemID_otheritem = GetItemID ( Item_otheritem )
	if ItemID_otheritem==1022 then
		Money_Need=300
	else
		Money_Need=1000
	end
	return Money_Need
end

function energy_item ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	local ItemID_Cuihuaji = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )
    local ItemID_mainitem = GetItemID ( Item_mainitem )
    local ItemID_otheritem = GetItemID ( Item_otheritem )
	local item_energy = GetItemAttr(Item_mainitem,ITEMATTR_ENERGY) 
	local item_maxenergy = GetItemAttr(Item_mainitem,ITEMATTR_MAXENERGY) 
	local energy_differ=0
	local star=math.random(1,20)
	if ItemID_otheritem==1022 then
		energy_differ=star*50
	else
		energy_differ=1500
	end
	item_energy=item_maxenergy	
	SetItemAttr ( Item_mainitem ,ITEMATTR_ENERGY, item_energy )
	local cha_name = GetChaDefaultName ( role )
	LG( "star_CHONGDIAN_lg" ,cha_name, ItemID_mainitem , ItemID_otheritem )
	local R1 = 0
	R1 = RemoveChaItem ( role , Item_otheritem , 1 , 2 , ItemBag [1] , 2 , 1 , 0 )		
	if R1 == 0 then
		SystemNotice( role , "Перемещение предмета не удалось ")
		return
	end
end

--------------------------------------------------------------------
------------------------- Вытаскиваем Гемы -------------------------
--------------------------------------------------------------------

function can_getstone_item(...)
	if arg.n ~= 10 and arg.n ~= 14 then
		SystemNotice ( arg[1] , "parameter value illegal"..arg.n )
		return 0
	end
	local Check = 0
	Check = can_getstone_item_main ( arg )
	if Check == 1 then
		return 1
	else
		return 0
	end
end

function can_getstone_item_main( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )
	if ItemCount [0] ~= 1 or ItemCount [1] ~= 1 or ItemBagCount [0] ~= 1 or ItemBagCount [1] ~= 1 then
		SystemNotice ( role ,"equipment quantity illegal ")
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 1 then
		SystemNotice(role ,"Вы должны иметь 1 свободный слот в инвентаре ")
		UseItemFailed ( role )
		return
	end
	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )
    local ItemID_mainitem = GetItemID ( Item_mainitem )
    local ItemID_otheritem = GetItemID ( Item_otheritem )
	local Item_mainitem_Lv =  GetItemLv ( Item_mainitem )
	local Item_Stone = {}
	local Item_StoneLv = {}
	local Jinglianxinxi = GetItemForgeParam ( Item_mainitem , 1 )
	Jinglianxinxi = TansferNum ( Jinglianxinxi )
	Item_Stone[0] = GetNum_Part2 ( Jinglianxinxi )
	Item_Stone[1] = GetNum_Part4 ( Jinglianxinxi )
	Item_Stone[2] = GetNum_Part6 ( Jinglianxinxi )
	Item_StoneLv[0] = GetNum_Part3 ( Jinglianxinxi )
	Item_StoneLv[1] = GetNum_Part5 ( Jinglianxinxi )
	Item_StoneLv[2] = GetNum_Part7 ( Jinglianxinxi )
	local checkstar=CheckItem_CanJinglian(Item_mainitem)
	if checkstar==0 then
	SystemNotice( role ,"Неверный тип предмета ")
		return 0	
	end
	if Item_Stone[0]==0 and Item_Stone[1]==0 and Item_Stone[2]==0 then
	SystemNotice( role ,"Предмет не ковался самоцветами ")
		return 0		
	end
	if ItemID_otheritem ~= 1020 then
		SystemNotice( role ,"Используйте Клещи кузнеца ")
		return 0			
	end
	local Money_Need = getstone_money_main ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"У вас не хватает золота ")
		return 0
	end
	return 1
end

function begin_getstone_item(...)
	local Check_Cangetstone = 0
	Check_Cangetstone = can_getstone_item_main ( arg )
	if Check_Cangetstone == 0 then
		return 0
	end
	local role = 0
	local ItemBag = {}											
	local ItemCount = {}											
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )
	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	local Money_Need = getstone_money_main ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	TakeMoney(role,nil,Money_Need)
	Check_TiChun_Item = getstone_item ( arg )
	if Check_TiChun_Item == 0  then
		SystemNotice ( role ,"Не удалось вытащить самоцвет. Проверьте ход работы ")
	end
	return 1
end

function get_item_getstone_money(...)
	local Money = getstone_money_main ( arg )
	return Money
end

function getstone_money_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}									
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0								
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_StoneLv = {}
	local Jinglianxinxi = GetItemForgeParam ( Item_mainitem , 1 )
	Jinglianxinxi = TansferNum ( Jinglianxinxi )
	Item_StoneLv[0] = GetNum_Part3 ( Jinglianxinxi )
	Item_StoneLv[1] = GetNum_Part5 ( Jinglianxinxi )
	Item_StoneLv[2] = GetNum_Part7 ( Jinglianxinxi )
	local Money_Need = (Item_StoneLv[0]+Item_StoneLv[1]+Item_StoneLv[2])*10000
	return Money_Need
end

function getstone_item ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	local ItemID_Cuihuaji = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )
        local ItemID_mainitem = GetItemID ( Item_mainitem )
        local ItemID_otheritem = GetItemID ( Item_otheritem )
	local Item_mainitem_Lv =  GetItemLv ( Item_mainitem )
	local Item_otheritem_Lv =  GetItemLv ( Item_otheritem )
	local Num = GetItemForgeParam ( Item_mainitem , 1 )
	Num = TansferNum ( Num )
	local lg_Num=Num
	local Item_Stone = {}
	local Item_StoneLv = {}
	local Item_StoneID = {}
	Item_Stone[0] = GetNum_Part2 ( Num )
	Item_Stone[1] = GetNum_Part4 ( Num )
	Item_Stone[2] = GetNum_Part6 ( Num )
	Item_StoneLv[0] = GetNum_Part3 ( Num )
	Item_StoneLv[1] = GetNum_Part5 ( Num )
	Item_StoneLv[2] = GetNum_Part7 ( Num )
	Item_StoneID[0] = StoneTpye_ID[Item_Stone[0]]
	Item_StoneID[1] = StoneTpye_ID[Item_Stone[1]]
	Item_StoneID[2] = StoneTpye_ID[Item_Stone[2]]
	local r1 = 0
	local r2 = 0
	local Item_Lv = 0
	local item_tureID=0	
	if Item_StoneID[0]~=0 then
		item_tureID = Item_StoneID[0]
		Item_Lv = Item_StoneLv[0]
		Item_StoneLv[0] = Item_StoneLv[0]-1
		if Item_StoneLv[0]==0 then
			Item_Stone[0] = 0
		end
	elseif Item_StoneID[0]==0 and Item_StoneID[1]~=0 then
		item_tureID = Item_StoneID[1]
		Item_Lv = Item_StoneLv[1]
		Item_StoneLv[1] = Item_StoneLv[1]-1
		if Item_StoneLv[1]==0 then
			Item_Stone[1] = 0
		end
	elseif Item_StoneID[0]==0 and Item_StoneID[1]==0  and Item_StoneID[2]~=0 then
		item_tureID = Item_StoneID[2]
		Item_Lv = Item_StoneLv[2]
		Item_StoneLv[2] = Item_StoneLv[2]-1
		if Item_StoneLv[2]==0 then
			Item_Stone[2] = 0
		end
	else 
		SystemNotice( role , "Gem Extraction tool ID error")
		return		
	end
	r1,r2 =MakeItem ( role , item_tureID , 1 , 2 )	
	local Item_ture = GetChaItem ( role , 2 , r2 ) 
	SetItemAttr ( Item_ture , ITEMATTR_VAL_BaoshiLV , Item_Lv )
	Num = SetNum_Part2 ( Num , Item_Stone[0] )
	Num = SetNum_Part3 ( Num , Item_StoneLv[0] )
	Num = SetNum_Part4 ( Num , Item_Stone[1] )
	Num = SetNum_Part5 ( Num , Item_StoneLv[1] )
	Num = SetNum_Part6 ( Num , Item_Stone[2] )
	Num = SetNum_Part7 ( Num , Item_StoneLv[2] )
	SetItemForgeParam ( Item_mainitem , 1 , Num )
	local cha_name = GetChaDefaultName ( role )
	LG( "star_tiqu_lg" ,cha_name, item_tureID , Item_Lv , lg_Num , Num )
	local R1 = 0
	R1 = RemoveChaItem ( role , ItemID_otheritem , 1 , 2 , ItemBag [1] , 2 , 1 , 0 )		
	if R1 == 0 then
		SystemNotice( role , "Переместить предмет не удалось ")
		return
	end
end

function can_manufacture_item (...)
	local ItemBagCount = arg[2]
	local Length = ItemBagCount+3
	if arg.n ~= Length then
		Notice("parameter value illegal"..arg.n)
		return 0
	end	
	local Check = 0
	Check = can_manufacture_item_main ( arg )
	if Check == 1 then		
		return 1
	else
		return 0
	end
end

function can_manufacture_item_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemBagCount = 0										
	role , ItemBag , ItemBagCount = Read_manufacture ( Table )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 1 then
		SystemNotice(role ,"Вам нужно иметь 1 свободный слот в инвентаре ")
		UseItemFailed ( role )
		return
	end
	local i = 0
	local Item = {}
	local ItemID = {}
	local ItemType = {}
	for i = 1 , ItemBagCount , 1 do							
		Item[i] = GetChaItem ( role , 2 , ItemBag [i] )			
		ItemID[i] = GetItemID ( Item[i] )						
		ItemType[i] = GetItemType ( Item[i] )					 
	end
	if ItemType[1] ~= 59 then
		SystemNotice( role ,"Нужно поместить фею для начала ")
		return 0
	end
	local URE_JLone = GetItemAttr( Item[1] ,ITEMATTR_URE )		
	if URE_JLone<=0 then
		SystemNotice( role ,"Покорми свою фею. Уж очень она голодна.")
		return 0	
	end
	local Num_JL = GetItemForgeParam ( Item[1] , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )	
	local Part2_JL = GetNum_Part2 ( Num_JL )	
	local Part3_JL = GetNum_Part3 ( Num_JL )
	local Part4_JL = GetNum_Part4 ( Num_JL )
	local Part5_JL = GetNum_Part5 ( Num_JL )
	local Part6_JL = GetNum_Part6 ( Num_JL )
	local Part7_JL = GetNum_Part7 ( Num_JL )
	local JL_jineng=0
	local JL_jineng_lv=0
	local life_lv = 0
	if ItemID[2]==2300 then 
		if Part2_JL==13 then
			JL_jineng=Part2_JL
			JL_jineng_lv=Part3_JL
		elseif Part4_JL==13 then
			JL_jineng=Part4_JL
			JL_jineng_lv=Part5_JL
		elseif Part6_JL==13 then
			JL_jineng=Part6_JL
			JL_jineng_lv=Part7_JL
		end
		life_lv=GetSkillLv( role , SK_ZHIZAO )	
	end
	if ItemID[2]==2301 then 
		if Part2_JL==14 then
			JL_jineng=Part2_JL
			JL_jineng_lv=Part3_JL
		elseif Part4_JL==14 then
			JL_jineng=Part4_JL
			JL_jineng_lv=Part5_JL
		elseif Part6_JL==14 then
			JL_jineng=Part6_JL
			JL_jineng_lv=Part7_JL
		end	
		life_lv=GetSkillLv( role , SK_ZHUZAO )	
	end
	if ItemID[2]==2302 then 
		if Part2_JL==16 then
			JL_jineng=Part2_JL
			JL_jineng_lv=Part3_JL
		elseif Part4_JL==16 then
			JL_jineng=Part4_JL
			JL_jineng_lv=Part5_JL
		elseif Part6_JL==16 then
			JL_jineng=Part6_JL
			JL_jineng_lv=Part7_JL
		end
		life_lv=GetSkillLv( role , SK_PENGREN )	
	end
	if ItemID[3]~=1067 and ItemID[3]~=1068 and ItemID[3]~=1069 then
		SystemNotice( role ,"Пожалуйста используйте инструменты ")
		return 0	
	end
	if ItemID[3]==1067 or ItemID[3]==1068 or ItemID[3]==1069 or ItemID[3]==1070 then
		local Gj_ure=GetItemAttr ( Item[3] , ITEMATTR_URE )
		if Gj_ure<=0 then
			Gj_ure=0
		SystemNotice( role ,"Прочность инструмента низка. Используйте Вечный очаг в Веснограде, чтобы починить частицу ")
			return 0
		end
		if ItemID[3]==1068 and  ItemID[2]~=2300 then
		SystemNotice( role ,"Уровень инструмента не подходит для этого чертежа ")
			return 0			
		end
		if ItemID[3]==1069 and  ItemID[2]~=2301 then
		SystemNotice( role ,"Уровень инструмента не подходит для этого чертежа ")
			return 0			
		end	
		if ItemID[3]==1067 and ItemID[2]~=2302 then
		SystemNotice( role ,"Уровень инструмента не подходит для этого чертежа ")
			return 0			
		end
		local Gj_lv=GetItemAttr ( Item[3] , ITEMATTR_VAL_STR )
		JL_jineng_lv=3*JL_jineng_lv+1
		if JL_jineng_lv<Gj_lv then
		SystemNotice( role ,"Уровень феи не соответствует уровню инструмента ")
			return 0			
		end
	end
	if ItemType[2] ~= 69 then
		SystemNotice( role ,"Как вы смеете использовать поддельный чертеж!")
		return 0
	end
	local paper_lv = GetItemAttr(Item[2], ITEMATTR_URE )
	if life_lv<paper_lv then
		SystemNotice( role ,"Уровень навыка не соответствует уровню чертежа ")
		return 0
	end
	local paper_id1=GetItemAttr(Item[2], ITEMATTR_VAL_STR )
	local paper_id2=GetItemAttr(Item[2], ITEMATTR_VAL_CON )
	local paper_id3=GetItemAttr(Item[2], ITEMATTR_VAL_DEX )
	if ItemID[4]~=paper_id1 or  ItemID[5]~=paper_id2 or  ItemID[6]~=paper_id3 then
		SystemNotice( role ,"Проверьте необходимый материал в чертеже и его наличие ")
		return 0		
	end
	local Num_paper = GetItemForgeParam ( Item[2] , 1 )
	Num_paper = TansferNum ( Num_paper )
	local Part1_paper = GetNum_Part1 ( Num_paper )	
	local Part2_paper = GetNum_Part2 ( Num_paper )	
	local Part3_paper = GetNum_Part3 ( Num_paper )	
	local Part4_paper = GetNum_Part4 ( Num_paper )	
	local Part5_paper = GetNum_Part5 ( Num_paper )
	local Part6_paper = GetNum_Part6 ( Num_paper )	
	local Part7_paper = GetNum_Part7 ( Num_paper )
	local i1 = CheckBagItem( role, ItemID[4] )			
	local i2 = CheckBagItem( role, ItemID[5] )			
	local i3 = CheckBagItem( role, ItemID[6] )			
	if i1 < Part2_paper or i2 < Part4_paper or i3 < Part6_paper  then
		SystemNotice( role ,"Проверьте ингридиенты или оставшееся кол-во использования ")
		return 0
	end
	local paper_num=GetItemAttr(Item[2], ITEMATTR_VAL_STA )
	if paper_num==0 then
		SystemNotice( role ,"Чертеж невозможно использовать бесконечно. Возьмите новый чертеж ")
		return 0
	end
	local a1 = CheckBagItem( role, 855 )			
	local a1_num=GetItemAttr(Item[2], ITEMATTR_MAXURE )
	if a1< a1_num then
		SystemNotice( role ,"У вас не хватает Монет фей ")
		return 0
	end
	return 1
end

function Read_manufacture ( Table )
	local role = Table [1]										
	local ItemBagCount = Table [2]								
	local ItemBag = {}										
	local i = 0
	if ItemBagCount==0 then
		return role , ItemBag , ItemBagCount
	end
	for i = 1 , ItemBagCount , 1 do
		local ReadNow = i + 2
		ItemBag [i] = Table [ReadNow]
	end
	return role , ItemBag , ItemBagCount
end

function begin_manufacture_item (...)
	local role = 0
	local ItemBag = {}											
	local ItemBagCount = 0										
	role , ItemBag , ItemBagCount = Read_manufacture ( arg )
	local Check1 = can_manufacture_item_main ( arg )
	if Check1 ~= 1 then
		return 0
	end
	local i = 0
	local j = 0
	local Item = {}
	local ItemID = {}
	local ItemType = {}
	for j = 1 , ItemBagCount , 1 do
		Item[j] = GetChaItem ( role , 2 , ItemBag [j] )			
		ItemID[j] = GetItemID ( Item[j] )						
		ItemType[j] = GetItemType ( Item[j] )					
	end
	local Gj_lv= 0
	if ItemID[3]==1068 then
		Gj_lv=GetItemAttr ( Item[3] , ITEMATTR_VAL_STR )
	end
	local life_lv=GetSkillLv( role , SK_ZHIZAO )	
	local paper_lv = GetItemAttr(Item[2], ITEMATTR_URE )
	local paper_energy = GetItemAttr(Item[2], ITEMATTR_MAXENERGY )-100
	local star_good=(math.min(life_lv,paper_lv)*0.03+Gj_lv*0.05+(100-paper_energy*10)*0.01)*100
	local star_radom = math.random ( 1, 100 )
	local eleven=2
	local a1 = star_radom+7
	local a2 = star_radom+14
	local a3 = star_radom+21
	local a4  = star_radom+28
	local a5  = star_radom+35
	local a6  = star_radom+42
	local a7  = star_radom+49
	local a8  = star_radom+56
	local a9  = star_radom+63
	if star_good<star_radom then
		eleven=1
	elseif star_good>=98 then
		eleven=11
	elseif star_good>=a9 then
		eleven=10
	elseif star_good>=a8 then
		eleven=9
	elseif star_good>=a7 then
		eleven=8
	elseif star_good>=a6 then
		eleven=7
	elseif star_good>=a5 then
		eleven=6
	elseif star_good>=a4 then
		eleven=5
	elseif star_good>=a3 then
		eleven=4
	elseif star_good>=a2 then
		eleven=3
	elseif star_good>=a1 then
		eleven=2
	end
	local star_begin=3*(1+paper_lv)
	local star_end=5*(1+paper_lv)
	local star=math.random ( star_begin , star_end )
	if star>64 then
		star=64
	end
	local run_time = star
	return 2,run_time,eleven
end

function begin_manufacture1_item (...)
	local role = 0
	local ItemBag = {}											
	local ItemBagCount = 0										
	role , ItemBag , ItemBagCount = Read_manufacture ( arg )
	local Check1 = can_manufacture_item_main ( arg )
	if Check1 ~= 1 then
		return 0
	end
	local i = 0
	local j = 0
	local Item = {}
	local ItemID = {}
	local ItemType = {}
	for j = 1 , ItemBagCount , 1 do
		Item[j] = GetChaItem ( role , 2 , ItemBag [j] )			
		ItemID[j] = GetItemID ( Item[j] )						
		ItemType[j] = GetItemType ( Item[j] )					
	end
	local paper_lv = GetItemAttr(Item[2], ITEMATTR_URE )
	local star_begin=3*(1+paper_lv)
	local star_end=5*(1+paper_lv)
	local star=math.random ( star_begin , star_end )
	if star>64 then
		star=64
	end
	local run_time = star
	local WORD1 =math.random ( 1, 6 )
	local WORD2 =math.random ( 1, 6 )
	local WORD3 =math.random ( 1, 6 )
	local str =""..WORD1..","..WORD2..","..WORD3
	return 2,run_time,str
end

function begin_manufacture2_item (...)
	local role = 0
	local ItemBag = {}											
	local ItemBagCount = 0										
	role , ItemBag , ItemBagCount = Read_manufacture ( arg )
	local Check1 = can_manufacture_item_main ( arg )
	if Check1 ~= 1 then
		return 0
	end
	local i = 0
	local j = 0
	local Item = {}
	local ItemID = {}
	local ItemType = {}
	for j = 1 , ItemBagCount , 1 do
		Item[j] = GetChaItem ( role , 2 , ItemBag [j] )			
		ItemID[j] = GetItemID ( Item[j] )						
		ItemType[j] = GetItemType ( Item[j] )					
	end
	local paper_lv = GetItemAttr(Item[2], ITEMATTR_URE )
	local star_begin=3*(1+paper_lv)
	local star_end=4*(1+paper_lv)
	local star=math.random ( star_begin , star_end )
	if star>64 then
		star=64
	end
	local run_time = star
	local star_ok = 12
	return 2,run_time,star_ok
end

function begin_manufacture3_item (...)
	local role = 0
	local ItemBag = {}											
	local ItemBagCount = 0										
	role , ItemBag , ItemBagCount = Read_manufacture ( arg )
	local Check1 = can_fenjie_item_main ( arg )
	if Check1 ~= 1 then
		return 0
	end
	local i = 0
	local j = 0
	local Item = {}
	local ItemID = {}
	local ItemType = {}
	for j = 1 , ItemBagCount , 1 do
		Item[j] = GetChaItem ( role , 2 , ItemBag [j] )			
		ItemID[j] = GetItemID ( Item[j] )						
		ItemType[j] = GetItemType ( Item[j] )					
	end
	local Item_Lv =  GetItemLv ( Item[3] )
	if ItemID[3]>=5000 then
		local tmd_rad=math.random ( 1 , 10 )
		if tmd_rad==1 then
			Item_Lv=80
		elseif tmd_rad==2 then
			Item_Lv=70
		elseif tmd_rad==3 then
			Item_Lv=60
		elseif tmd_rad==4 then
			Item_Lv=50
		elseif tmd_rad==5 then
			Item_Lv=40
		elseif tmd_rad==6 then
			Item_Lv=30
		elseif tmd_rad==7 then
			Item_Lv=20
		else
			Item_Lv=10
		end
	end
	local base_rad=0
	base_rad=math.max((80-math.max(Item_Lv,10))*0.01,0.15)
	local Num_JL = GetItemForgeParam ( Item[1] , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )	
	local Part2_JL = GetNum_Part2 ( Num_JL )	
	local Part3_JL = GetNum_Part3 ( Num_JL )
	local Part4_JL = GetNum_Part4 ( Num_JL )
	local Part5_JL = GetNum_Part5 ( Num_JL )
	local Part6_JL = GetNum_Part6 ( Num_JL )
	local Part7_JL = GetNum_Part7 ( Num_JL )
	local JL_jineng=0
	local JL_jineng_lv=0
	if Part2_JL==16 then
		JL_jineng=Part2_JL
		JL_jineng_lv=Part3_JL
	elseif Part4_JL==16 then
		JL_jineng=Part4_JL
		JL_jineng_lv=Part5_JL
	elseif Part6_JL==16 then
		JL_jineng=Part6_JL
		JL_jineng_lv=Part7_JL
	end
	local Gj_lv=0
	if  ItemID[2]==1070 then
		Gj_lv=GetItemAttr ( Item[2] , ITEMATTR_VAL_STR )
	end
	local life_lv = 0
	life_lv=GetSkillLv( role , SK_FENJIE )	
	local run_time = math.random ( 4, 8 )
	local word_test = math.floor((JL_jineng_lv*0.05+life_lv*0.02+Gj_lv*0.03+base_rad)*100000)
	if word_test>99999 then
		word_test=99999	
	end
	local word_radom = math.random ( 10000, 99999 )
	local str =""..word_test..","..word_radom
	return 2,run_time,str
end

function end_manufacture_item (...)
	local role = 0
	local ItemBag = {}											
	local ItemBagCount = 0										
	role , ItemBag , ItemBagCount = Read_manufacture ( arg )
	local i = 0
	local j = 0
	local star_check=0 
	star_check=arg[arg.n] 
	local Item = {}
	local ItemID = {}
	local ItemType = {}
	local check = {}
	for j = 1 , ItemBagCount , 1 do
		Item[j] = GetChaItem ( role , 2 , ItemBag [j] )			
		ItemID[j] = GetItemID ( Item[j] )						
		ItemType[j] = GetItemType ( Item[j] )					
	end
	local paper_id1=GetItemAttr(Item[2], ITEMATTR_VAL_STR )
	local paper_id2=GetItemAttr(Item[2], ITEMATTR_VAL_CON )
	local paper_id3=GetItemAttr(Item[2], ITEMATTR_VAL_DEX )
	local Num_paper = GetItemForgeParam ( Item[2] , 1 )
	Num_paper = TansferNum ( Num_paper )
	local Part2_paper = GetNum_Part2 ( Num_paper )	
	local Part4_paper = GetNum_Part4 ( Num_paper )	
	local Part6_paper = GetNum_Part6 ( Num_paper )	
	local life_lv = 0
	local Gj_lv= 0
	local paper_lv = GetItemAttr(Item[2], ITEMATTR_URE )
	local num_x=1
	local star_num_qulity=4
	if ItemID[2]==2300 then 
		life_lv=GetSkillLv( role , SK_ZHIZAO )	
		if star_check==1 then
			num_x=0
		elseif star_check==2 or star_check==3 or star_check==4 then
			num_x=1
		elseif star_check==5 or star_check==6 or star_check==7 then 
			num_x=2
		elseif star_check==8 or star_check==9 or star_check==10 then 
			num_x=3
		elseif star_check==11 then
			num_x=4			
		end
	end
	if ItemID[2]==2301 then 
		life_lv=GetSkillLv( role , SK_ZHUZAO )	
	end
	if ItemID[2]==2302 then 
		life_lv=GetSkillLv( role , SK_PENGREN )	
		local differ_check=math.abs(star_check-75)
		if differ_check==0 then
			num_x=5
		elseif differ_check==1 then
			num_x=4
		elseif differ_check==2  then
			num_x=3
		elseif differ_check>=3 and differ_check<=6 and star_check<=77 then
			num_x=2
		elseif differ_check>=7 and differ_check<=25 and star_check<=77 then
			num_x=1		
		else
			num_x=0
		end
	end
	if ItemID[3]==1067 or ItemID[3]==1068 or ItemID[3]==1069 or ItemID[3]==1070 then
		Gj_lv=GetItemAttr ( Item[3] , ITEMATTR_VAL_STR )
	end
	local i1 = 0
	local i2 = 0
	local i3 = 0
	i1 =TakeItem( role, 0, paper_id1, Part2_paper)
	i2 =TakeItem( role, 0, paper_id2, Part4_paper)
	i3 =TakeItem( role, 0, paper_id3, Part6_paper)
	if i1 == 0 or  i2 == 0 or  i3 == 0 then
		LG( "Hecheng_BS" , "Удалить предмет не удалось " )
	end
	local a1_num=GetItemAttr(Item[2], ITEMATTR_MAXURE )
	local a1=TakeItem( role, 0, 855, a1_num )			   
	if a1==0  then
		SystemNotice ( role ,"Не удалось удалить Монету Феи ")
		return
	end 
	local new_num = GetItemAttr(Item[2], ITEMATTR_VAL_AGI )
	if ItemID[2]==2300 then 
		if new_num==1067 or  new_num==1068 or new_num==1069 or new_num==1070 or  new_num==2236 then
			num_x=1
		end
	end
	local paper_energy = GetItemAttr(Item[2], ITEMATTR_MAXENERGY )-100
	local star_good=(math.min(life_lv,paper_lv)*0.03+Gj_lv*0.05+(100-paper_energy*10)*0.01)*100
	local star_radom = math.random ( 1, 100 )
	local m1 = -1
	local m2 = -1	
	if ItemID[2]==2300 then 
		if star_check>=2 then
			star_good=100
			star_radom=1
		else
			star_good=1
			star_radom=100
		end
	end
	local star_check_chenggong=0
	if star_check~=0 and star_good >star_radom and num_x~=0 then
		star_check_chenggong=1
		m1, m2 = MakeItem ( role , new_num  , num_x , star_num_qulity )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		if ItemID[2]==2301 and CheckItem_CanJinglian(Itemfinal)==1 then 
			local Itemfinal_energy=GetItemAttr ( Itemfinal ,ITEMATTR_ENERGY) 
			local itemfinal_maxenergy =GetItemAttrRange(new_num , ITEMATTR_MAXENERGY , 1 )
			local itemfinal_minenergy = GetItemAttrRange(new_num ,ITEMATTR_MAXENERGY , 0 )
			if paper_energy>7 then
				paper_energy=7
			end 
			if itemfinal_maxenergy~=itemfinal_minenergy then 
				Itemfinal_energy=math.mod(Itemfinal_energy,1000)+paper_energy*1000
				SetItemAttr ( Itemfinal ,ITEMATTR_MAXENERGY , Itemfinal_energy)
				SetItemAttr ( Itemfinal ,ITEMATTR_ENERGY , Itemfinal_energy)
			end
		end
		local item_final_ID=GetItemID(Itemfinal)
		if item_final_ID==1067 or item_final_ID==1068 or item_final_ID==1069 or item_final_ID==1070 then
			SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)
			SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)
			SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)		
		end
		if item_final_ID==2236 then
			SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,paper_lv)
		end
	else
		SystemNotice( role , "Действие завершилось неудачей. Наверное вы что-то неверно делали ")
	end
	local paper_num=GetItemAttr(Item[2], ITEMATTR_VAL_STA )
	paper_num=paper_num-1
		SetItemAttr(Item[2], ITEMATTR_VAL_STA , paper_num )
	local Gj_ure=0
	if ItemID[3]==1067 or ItemID[3]==1068 or ItemID[3]==1069 or ItemID[3]==1070 then
		Gj_ure=GetItemAttr ( Item[3] , ITEMATTR_URE )
		local star_gjlv_num=GetItemAttr ( Item[3] , ITEMATTR_VAL_STR )
		Gj_ure=Gj_ure-50*star_gjlv_num
		if Gj_ure<=0 then
			Gj_ure=0
		end
		local star_lv_num = GetItemAttr( Item[3] ,ITEMATTR_ENERGY )       
		if star_check_chenggong==1 then
			star_lv_num=star_lv_num+paper_lv
		else						
			star_lv_num=star_lv_num+1			
		end
		if star_lv_num>=10000 then
			star_lv_num=10000
		end
	 	SystemNotice( role , "Ваш инструмент получил "..star_lv_num.." очков опыта ")
		if star_lv_num>=star_gjlv_num*star_gjlv_num*100 then 
			star_gjlv_num=star_gjlv_num+1
			SetItemAttr ( Item[3] , ITEMATTR_VAL_STR ,star_gjlv_num)
	 		SystemNotice( role , "Поздравляем, уровень вашего инструмента повышен!")
			star_lv_num=0
		end
		SetItemAttr (  Item[3] , ITEMATTR_ENERGY , star_lv_num )
		SetItemAttr ( Item[3] , ITEMATTR_URE ,Gj_ure)
	end
	local cha_name = GetChaDefaultName ( role )
	LG( "star_SHENGHUO_lg" ,cha_name, star_check , ItemID[2] , paper_lv , paper_id1 , Part2_paper ,  paper_id2 , Part4_paper ,  paper_id3 , Part6_paper , ItemID[3] , Gj_lv ,  life_lv )
	SynChaKitbag(role,13)
	return m2
end

--------------------------------------------------------------------
------------------------------ Анализ ------------------------------
--------------------------------------------------------------------

function can_fenjie_item (...)
	local ItemBagCount = arg[2]
	local Length = ItemBagCount+3
	if arg.n ~= Length then
		Notice("parameter value illegal"..arg.n)
		return 0
	end	
	local Check = 0
	Check = can_fenjie_item_main ( arg )
	if Check == 1 then		
		return 1
	else
		return 0
	end
end

function can_fenjie_item_main ( Table )
	local role = 0
	local ItemBag = {}									
	local ItemBagCount = 0								
	role , ItemBag , ItemBagCount = Read_manufacture ( Table )
	role , ItemBag , ItemBagCount = Read_manufacture ( Table )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 1 then
		SystemNotice(role ,"У вас должна быть 1 свободная ячейка в инвентаре ")
		UseItemFailed ( role )
		return
	end
	local i = 0
	local Item = {}
	local ItemID = {}
	local ItemType = {}
	for i = 1 , ItemBagCount , 1 do							
		Item[i] = GetChaItem ( role , 2 , ItemBag [i] )			
		ItemID[i] = GetItemID ( Item[i] )						
		ItemType[i] = GetItemType ( Item[i] )					
	end
	if ItemType[1] ~= 59 then
		SystemNotice( role ,"Вам нужно добавить фею к процессу ")
		return 0
	end
	local URE_JLone = GetItemAttr( Item[1] ,ITEMATTR_URE )		
	if URE_JLone<=0 then
		SystemNotice( role ,"Ваша фея истощена. Покормите её, чтобы повысить её выносливость ")
		return 0	
	end
	local type_check=0
	type_check=CheckItem_CanJinglian ( Item[3] )
	if type_check==0 then
		SystemNotice( role ,"Добавьте вещи для анализа ")
		return 0		
	end
	local Num_JL = GetItemForgeParam ( Item[1] , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )	
	local Part2_JL = GetNum_Part2 ( Num_JL )	
	local Part3_JL = GetNum_Part3 ( Num_JL )
	local Part4_JL = GetNum_Part4 ( Num_JL )
	local Part5_JL = GetNum_Part5 ( Num_JL )
	local Part6_JL = GetNum_Part6 ( Num_JL )
	local Part7_JL = GetNum_Part7 ( Num_JL )
	local JL_jineng=0
	local JL_jineng_lv=0
	local life_lv = 0
	life_lv=GetSkillLv( role , SK_FENJIE )	
	if Part2_JL==15 then
		JL_jineng=Part2_JL
		JL_jineng_lv=Part3_JL
	elseif Part4_JL==15 then
		JL_jineng=Part4_JL
		JL_jineng_lv=Part5_JL
	elseif Part6_JL==15 then
		JL_jineng=Part6_JL
		JL_jineng_lv=Part7_JL
	end
	if  ItemID[2]~=1070 then
			SystemNotice( role ,"Используйте инструмент для анализа ")
			return 0	
	else
		local Gj_ure=GetItemAttr ( Item[2] , ITEMATTR_URE )
		if Gj_ure<=0 then
			Gj_ure=0
			SystemNotice( role ,"Уровень инструмента низок. Используйте другую частицу ")
			return 0
		end
		local Gj_lv=GetItemAttr ( Item[2] , ITEMATTR_VAL_STR )
		JL_jineng_lv=3*JL_jineng_lv+1
		if JL_jineng_lv<Gj_lv then
			SystemNotice( role ,"Уровень навыка феи не совпадает с уровнем инструмента ")
			return 0			
		end
	end
	if ItemID[4] ~=2625 and ItemID[4] ~=2630 and ItemID[4] ~=2634 and ItemID[4] ~=2635 and ItemID[4] ~=2636 and ItemID[4] ~=2637 and ItemID[4] ~=2638  then	
		SystemNotice( role ,"Добавьте к анализу катализатор ")
		return 0			
	end
	return 1
end

function end_fenjie_item (...)
	local role = 0
	local ItemBag = {}											
	local ItemBagCount = 0										
	role , ItemBag , ItemBagCount = Read_manufacture ( arg )
	local i = 0
	local j = 0
	local star_check=0 
	star_check=arg[arg.n] 
	local Item = {}
	local ItemID = {}
	local ItemType = {}
	for j = 1 , ItemBagCount , 1 do
		Item[j] = GetChaItem ( role , 2 , ItemBag [j] )			
		ItemID[j] = GetItemID ( Item[j] )						
		ItemType[j] = GetItemType ( Item[j] )					
	end
	local Item_Lv =  GetItemLv ( Item[3] )
	local Num_JL = GetItemForgeParam ( Item[1] , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )	
	local Part2_JL = GetNum_Part2 ( Num_JL )	
	local Part3_JL = GetNum_Part3 ( Num_JL )
	local Part4_JL = GetNum_Part4 ( Num_JL )
	local Part5_JL = GetNum_Part5 ( Num_JL )
	local Part6_JL = GetNum_Part6 ( Num_JL )
	local Part7_JL = GetNum_Part7 ( Num_JL )
	local JL_jineng=0
	local JL_jineng_lv=0
	if Part2_JL==16 then
		JL_jineng=Part2_JL
		JL_jineng_lv=Part3_JL
	elseif Part4_JL==16 then
		JL_jineng=Part4_JL
		JL_jineng_lv=Part5_JL
	elseif Part6_JL==16 then
		JL_jineng=Part6_JL
		JL_jineng_lv=Part7_JL
	end
	local Gj_lv=0
	if  ItemID[2]==1070 then
		Gj_lv=GetItemAttr ( Item[2] , ITEMATTR_VAL_STR )
	end
	local life_lv = 0
	life_lv=GetSkillLv( role , SK_FENJIE )	
	local num_new =math.min(math.max(1,math.floor( (JL_jineng_lv*0.1+life_lv*0.05+Gj_lv*0.05 )*10)),10)
	local i1 = 0
	local i2 = 0
	i1= RemoveChaItem ( role , ItemID[3] , 1 , 2 , ItemBag [3] , 2 , 1 , 1)		
	i2= RemoveChaItem ( role , ItemID[4] , 1 , 2 , ItemBag [4] , 2 , 1 , 1)		
	if i1 == 0 or  i2 == 0 then
		LG( "Hecheng_BS" , "Удалить предмет не удалось " )
	end
	local new_num=1346
	if ItemID[4] ==2625 then	
		local rad1=0
		if Item_Lv>=80 then
			rad1=math.random ( 131, 143 )
		elseif Item_Lv>=70 then
			rad1=math.random ( 116, 130 )
		elseif Item_Lv>=60 then
			rad1=math.random ( 94, 115 )
		elseif Item_Lv>=50 then
			rad1=math.random ( 72, 93 )
		elseif Item_Lv>=40 then
			rad1=math.random ( 49, 71 )
		elseif Item_Lv>=30 then
			rad1=math.random ( 27, 48 )
		elseif Item_Lv>=20 then
			rad1=math.random ( 13, 26 )
		else
			rad1=math.random ( 1, 12 )
		end
		new_num=STONE1_ID[rad1]
	elseif ItemID[4] ==2630	 then 
		local rad1=0
		if Item_Lv>=80 then
			rad1=math.random ( 150, 151 )
		elseif Item_Lv>=70 then
			rad1=math.random ( 145, 149 )
		elseif Item_Lv>=60 then
			rad1=math.random ( 119, 144 )
		elseif Item_Lv>=50 then
			rad1=math.random ( 101, 118 )
		elseif Item_Lv>=40 then
			rad1=math.random ( 76, 100 )
		elseif Item_Lv>=30 then
			rad1=math.random ( 41, 75 )
		elseif Item_Lv>=20 then
			rad1=math.random ( 25, 40 )
		else
			rad1=math.random ( 1, 24 )
		end
		new_num=FOOD_ID[rad1]
	elseif ItemID[4] ==2634	 then 
		local rad1=0
		if Item_Lv>=80 then
			rad1=math.random ( 336, 346 )
		elseif Item_Lv>=70 then
			rad1=math.random ( 249, 335 )
		elseif Item_Lv>=60 then
			rad1=math.random ( 191, 248 )
		elseif Item_Lv>=50 then
			rad1=math.random ( 127, 190 )
		elseif Item_Lv>=40 then
			rad1=math.random ( 89, 126 )
		elseif Item_Lv>=30 then
			rad1=math.random ( 57, 88 )
		elseif Item_Lv>=20 then
			rad1=math.random ( 19, 56 )
		else
			rad1=math.random ( 1, 18 )
		end
		new_num=SPECIL_ID[rad1]
	elseif ItemID[4] ==2635	 then 
		local rad1=0
		if Item_Lv>=80 then
			rad1=math.random ( 171, 176 )
		elseif Item_Lv>=70 then
			rad1=math.random ( 155, 170 )
		elseif Item_Lv>=60 then
			rad1=math.random ( 133, 154 )
		elseif Item_Lv>=50 then
			rad1=math.random ( 109, 132 )
		elseif Item_Lv>=40 then
			rad1=math.random ( 88, 108 )
		elseif Item_Lv>=30 then
			rad1=math.random ( 56, 87 )
		elseif Item_Lv>=20 then
			rad1=math.random ( 38, 55 )
		else
			rad1=math.random ( 1, 37 )
		end
		new_num=BONE_ID[rad1]
	elseif ItemID[4] ==2636	 then 
		local rad1=0
		if Item_Lv>=70 then
			rad1=math.random ( 57, 72 )
		elseif Item_Lv>=60 then
			rad1=math.random ( 57, 69 )
		elseif Item_Lv>=50 then
			rad1=math.random ( 57, 63 )
		elseif Item_Lv>=30 then
			rad1=math.random ( 57, 61 )
		elseif Item_Lv>=20 then
			rad1=math.random ( 37, 56 )
		else
			rad1=math.random ( 1, 36 )
		end
		new_num=TREE_ID[rad1]
	elseif ItemID[4] ==2637 then 
		local rad1=0
		if Item_Lv>=70 then
			rad1=math.random ( 77, 97 )
		elseif Item_Lv>=60 then
			rad1=math.random ( 77, 93 )
		elseif Item_Lv>=50 then
			rad1=math.random ( 63, 81 )
		elseif Item_Lv>=40 then
			rad1=math.random ( 48, 62 )
		elseif Item_Lv>=30 then
			rad1=math.random ( 30, 47 )
		elseif Item_Lv>=20 then
			rad1=math.random ( 20, 29 )
		else
			rad1=math.random ( 1, 19 )
		end
		new_num=SKIP_ID[rad1]
	elseif ItemID[4] ==2638 then 
		local rad1=0
		if Item_Lv>=50 then
			rad1=math.random ( 33, 37 )
		elseif Item_Lv>=40 then
			rad1=math.random ( 28, 32 )
		elseif Item_Lv>=30 then
			rad1=math.random ( 19, 27 )
		elseif Item_Lv>=20 then
			rad1=math.random ( 12, 18 )
		else
			rad1=math.random ( 1, 11 )
		end
		new_num=WATER_ID[rad1]
	end
	GiveItem ( role , 0 , new_num  , num_new , 4  ) 
	if ItemID[2]==1070 then
		local Gj_ure=GetItemAttr ( Item[2] , ITEMATTR_URE )
		local star_gjlv_num=GetItemAttr ( Item[2] , ITEMATTR_VAL_STR )
		Gj_ure=Gj_ure-50*star_gjlv_num
		if Gj_ure<=0 then
			Gj_ure=0
		end
		local star_lv_num = GetItemAttr( Item[2] ,ITEMATTR_ENERGY )       
		star_lv_num=star_lv_num+1
		if star_lv_num>=10000 then
			star_lv_num=10000
		end
	 	SystemNotice( role , "Ваш инструмент приобрел "..star_lv_num.." очков опыта ")
		local star_gjlv_num=GetItemAttr ( Item[2] , ITEMATTR_VAL_STR )
		if star_lv_num>=star_gjlv_num*star_gjlv_num*100 then 
			star_gjlv_num=star_gjlv_num+1
			SetItemAttr ( Item[2] , ITEMATTR_VAL_STR ,star_gjlv_num)
	 		SystemNotice( role , "Поздравляем, уровень вашего инструмента повышен!")
			star_lv_num=0
		end
		SetItemAttr (  Item[2] , ITEMATTR_ENERGY , star_lv_num )
		SetItemAttr ( Item[2] , ITEMATTR_URE ,Gj_ure)
	end
	local cha_name = GetChaDefaultName ( role )
	LG( "star_FENJIE_lg" ,cha_name, star_check, ItemID[2] , ItemID[3] , ItemID[4] , Gj_lv ,  life_lv )
	SynChaKitbag(role,13)
	return 1
end

function can_shtool_item(...)
	if arg.n ~= 10 and arg.n ~= 14 then
		SystemNotice ( arg[1] , "parameter value illegal"..arg.n )
		return 0
	end
	local Check = 0
	Check = can_shtool_item_main ( arg )
	if Check == 1 then
		return 1
	else
		return 0
	end
end

function can_shtool_item_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Now , ItemCount_Now , ItemBagCount_Num = Read_Table ( Table )
	if ItemCount [0] ~= 1 or ItemCount [1] ~= 1 or ItemBagCount [0] ~= 1 or ItemBagCount [1] ~= 1 then
		SystemNotice ( role ,"equipment quantity illegal ")
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 1 then
		SystemNotice(role ,"У вас должен быть 1 свободный слот в инвентаре ")
		UseItemFailed ( role )
		return
	end
	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )
        local ItemID_mainitem = GetItemID ( Item_mainitem )
        local ItemID_otheritem = GetItemID ( Item_otheritem )
	local Item_mainitem_Lv =  GetItemAttr ( Item_mainitem, ITEMATTR_VAL_STR )
	local Item_otheritem_Lv =  GetItemAttr ( Item_otheritem , ITEMATTR_VAL_STR)
	local item_shtool_ure = GetItemAttr(Item_mainitem,ITEMATTR_URE) 
	local item_shtool_maxure = GetItemAttr(Item_mainitem,ITEMATTR_MAXURE) 
	if ItemType_mainitem~=70 then
		SystemNotice( role ,"Здесь можно починить поврежденные инструменты.")
		return 0	
	end
	if ItemID_mainitem~=1067 and ItemID_mainitem~=1068 and ItemID_mainitem~=1069 and ItemID_mainitem~=1070 then
		SystemNotice( role ,"Здесь можно починить поврежденные инструменты.")
		return 0	
	end
	if ItemType_otheritem ~= 70 or ItemID_otheritem~=2236 then
		SystemNotice( role ,"Используйте нормальный инструмент для починки.")
		return 0	
	end
	if item_shtool_ure>=item_shtool_maxure then
		SystemNotice( role ,"Для починки нужен поврежденный инструмент ")
		return 0	
	end
	if Item_mainitem_Lv>Item_otheritem_Lv then
		SystemNotice( role ,"Уровень починки не может быть ниже уровня сломанного предмета ")
		return 0	
	end
	local Money_Need = get_item_shtool_money ( Table )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Need > Money_Have then
		SystemNotice( role ,"Не хватает золота. Невозможно провести ремонт ")
		return 0
	end
	return 1
end

function begin_shtool_item(...)
	local Check_Canshtool = 0
	Check_Canshtool = can_shtool_item_main ( arg )
	if Check_Canshtool == 0 then
		return 0
	end
	local role = 0
	local ItemBag = {}											
	local ItemCount = {}											
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( arg )
	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	local Money_Need = get_item_shtool_money ( arg )
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	TakeMoney(role,nil,Money_Need)
	Check_shtool_Item = shtool_item ( arg )
	if Check_shtool_Item == 0  then
		SystemNotice ( role ,"Невозможно починить инструмент. Проверьте весь процесс ")
	end
	return 1
end

function get_item_shtool_money(...)
	local Money = shtool_money_main ( arg )
	return Money
end

function shtool_money_main ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}									
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0								
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )   
	local Money_Need=200
	return Money_Need
end

function shtool_item ( Table )
	local role = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	local ItemID_Cuihuaji = 0
	role , ItemBag , ItemCount , ItemBagCount , ItemBag_Num , ItemCount_Num , ItemBagCount_Num = Read_Table ( Table )
	local Item_mainitem = GetChaItem ( role , 2 , ItemBag [0] )	
	local Item_otheritem = GetChaItem ( role , 2 , ItemBag [1] )	
	local  ItemType_mainitem = GetItemType ( Item_mainitem )
	local  ItemType_otheritem = GetItemType ( Item_otheritem )
    local ItemID_mainitem = GetItemID ( Item_mainitem )
    local ItemID_otheritem = GetItemID ( Item_otheritem )
	local item_shtool_ure = GetItemAttr(Item_mainitem,ITEMATTR_URE) 
	local item_shtool_maxure = GetItemAttr(Item_mainitem,ITEMATTR_MAXURE) 
	SetItemAttr ( Item_mainitem ,ITEMATTR_URE, item_shtool_maxure )
	local cha_name = GetChaDefaultName ( role )
	LG( "star_xiuguo_lg" ,cha_name, ItemID_mainitem , ItemID_otheritem )
	local R1 = 0
	R1 = RemoveChaItem ( role , Item_otheritem , 1 , 2 , ItemBag [1] , 2 , 1 , 0 )		
	if R1 == 0 then
		SystemNotice( role , "moved item failed ")
		return
	end
	SynChaKitbag(role,13)
end

--------------------------------------------------------------------
--------------------------- Перерождение ---------------------------
--------------------------------------------------------------------

----------------------
-- Обмен Дес - Сета --
----------------------

function GetChaName_4 ( role,npc )
	local el1= CheckBagItem( role,2242 )			
	local el2 = CheckBagItem( role,2243 )
	local el3 = CheckBagItem( role,2244 )
	local el4 = CheckBagItem( role,2245 )  
		if el1 ~=0  then 
			TakeItem( role, 0,2242, 1 )
			GiveItem ( role , 0 , 3077  , 10 , 4 ) 
		elseif el2 ~= 0  then
			TakeItem( role, 0,2243, 1 )
			GiveItem ( role , 0 , 3077  , 10 , 4 ) 
		elseif el3 ~= 0  then
			TakeItem( role, 0,2244, 1 )
			GiveItem ( role , 0 , 3077  , 10 , 4 )  
		elseif el4 ~= 0  then
			TakeItem( role, 0,2245, 1 )
			GiveItem ( role , 0 , 3077  , 10 , 4 )  
		else
			SystemNotice( role ,"У вас нет нужной расписки ")
	end
end
	
function GetChaName_5 ( role,npc )
	local cha_name = GetChaDefaultName ( role )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"В инвентаре не хватает свободного места ")
		return 
	end	
	local am1 = CheckBagItem( role, 2240 )			
	if am1 < 1 then
		SystemNotice( role ,"У вас нет Пиратской расписки 6 ")
		return
	else
	local am2 =TakeItem( role, 0,2240, 1 )			                   
		if am2==0  then
			SystemNotice ( role ,"Невозможно забрать расписку ")
			return
		end
	end
	GiveItem( role , 0 , 1028  , 1 , 4 )
	Notice("Поздравляем! "..cha_name.." обменял 1 Изменчивую руну ")
end

function GetChaName_6 ( role,npc )
		local job = GetChaAttr( role, ATTR_JOB) 
		if job ~= 12 and job ~= 9 and job ~= 16 and job ~= 8 and job ~= 13 and job ~=14 then
			SystemNotice(role,"Это могут делать только перерожденные игроки ")
			return
		end
	local el_count0 = CheckBagItem ( role , 3850)
	local el_count1 = CheckBagItem ( role , 3853)
	local el_count2 = CheckBagItem ( role , 3854)
	local el_count3 = CheckBagItem ( role , 3856)
	local el_count4 = CheckBagItem ( role , 3857)
	local el_count5 = CheckBagItem ( role , 3858)
	local el_count6 = CheckBagItem ( role , 3863)
	local el_count7 = CheckBagItem ( role , 3866)
	local el_count8 = CheckBagItem ( role , 3868)
	local el_count9 = CheckBagItem ( role , 3870)
	local el_count10 = CheckBagItem ( role ,3872 )
		if el_count0 >= 1 and el_count1 >= 1 and el_count2 >= 1 and el_count3 >= 2 and el_count4 >= 3 and el_count5 >= 2 and el_count6 >= 2 and el_count7 >= 1 and el_count8 >= 1 and el_count9 >= 1 and el_count10 >= 1 then 
		local x_del_0 = DelBagItem ( role , 3850 , 1 ) 
		local x_del_1 = DelBagItem ( role , 3853 , 1 ) 
		local x_del_2 = DelBagItem ( role , 3854 , 1 ) 
		local x_del_3 = DelBagItem ( role , 3856 , 2 ) 
		local x_del_4 = DelBagItem ( role , 3857 , 3 ) 
		local x_del_5 = DelBagItem ( role , 3858 , 2 ) 
		local x_del_6 = DelBagItem ( role , 3863 , 2 ) 
		local x_del_7 = DelBagItem ( role , 3866 , 1 ) 
		local x_del_8 = DelBagItem ( role , 3868 , 1 ) 
		local x_del_9 = DelBagItem ( role , 3870 , 1 ) 
		local x_del_10 = DelBagItem ( role ,3872 , 1 ) 
		else
			SystemNotice( role ,"У вас нет Алфавитных карточек ")
			return
		end
		local a = math.random ( 1 , 6 )
			    if a == 1 then
				       GiveItem( role , 0 , 2536  , 1 , 4 )
		        elseif a == 2 then 
					GiveItem( role , 0 , 2533  , 1 , 4 )
		        elseif a == 3 then	
					GiveItem( role , 0 , 2539  , 1 , 4 )
			 elseif a == 4 then 
					GiveItem( role , 0 , 2530  , 1 , 4 )
			elseif a == 5 then	
					GiveItem( role , 0 ,2542  , 1 , 4 )
			elseif a == 6 then	
					GiveItem( role , 0 , 2545  , 1 , 4 )
			end
			if job == 12 then	
						GiveItem( role , 0 , 2536  , 1 , 4 )
					elseif job == 9	then 
						GiveItem( role , 0 , 2533  , 1 , 4 )
					elseif job == 16 then	
						GiveItem( role , 0 , 2539  , 1 , 4 )
					elseif job == 8	then 
						GiveItem( role , 0 , 2530  , 1 , 4 )
					elseif job == 13 then	
						GiveItem( role , 0 ,2542  , 1 , 4 )
					elseif job == 14 then	
						GiveItem( role , 0 , 2545  , 1 , 4 )
				end
end

function GetChaName_7 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2846 )	
	local am2 = CheckBagItem( role, 2847 )	
	local am3 = CheckBagItem( role, 2848 )	
	local am4 = CheckBagItem( role, 2849 )	
	local am5 = CheckBagItem( role, 2850 )	
	local am6 = CheckBagItem( role, 2851 )	
	local am7 = CheckBagItem( role, 2852 )	
	local am8 = CheckBagItem( role, 2853 )	
	       
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1 or am6 < 1 or am7 < 1 or am8 < 1   then
		SystemNotice( role ,"У вас нет предметов для обмена ")
		return
	end
	local an1 =TakeItem( role, 0,2846, 1 )
	local an2 =TakeItem( role, 0,2847, 1 )
	local an3 =TakeItem( role, 0,2848, 1 )
	local an4 =TakeItem( role, 0,2849, 1 )
	local an5 =TakeItem( role, 0,2850, 1 )
	local an6 =TakeItem( role, 0,2851, 1 )
	local an7 =TakeItem( role, 0,2852, 1 )
	local an8 =TakeItem( role, 0,2853, 1 )
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 or an6==0 or an7==0 or an8==0  then
		SystemNotice ( role ,"Невозможно забрать предмет ")
	else
	GiveItem ( role , 0 , 2934  , 1 , 4 ) 
	LG( "SSYRDH" ,cha_name,"Melancholy of Phantom Baron"..am1.." ","Melancholy of Demon Flame"..am2.." ","Melancholy of Evil Beast"..am3.." ","Melancholy of Tyran"..am4.." ","Melancholy of Phoenix"..am5.." ","Melancholy of Despair"..am6.." ","Melancholy of Drakan"..am7.." ","Melancholy of Tidal"..am8.." ")
	Notice("Поздравляем! "..cha_name.." обменял 1 Силуэт смерти ")
	end
end

function GetChaName_8 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2854 )	
	local am2 = CheckBagItem( role, 2855 )	
	local am3 = CheckBagItem( role, 2856 )	
	local am4 = CheckBagItem( role, 2857 )	
	local am5 = CheckBagItem( role, 2927 )	
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1  then
		SystemNotice( role ,"У вас нет предметов для обмена ")
		return
	end
	local an1 =TakeItem( role, 0,2854, 1 )
	local an2 =TakeItem( role, 0,2855, 1 )
	local an3 =TakeItem( role, 0,2856, 1 )
	local an4 =TakeItem( role, 0,2857, 1 )
	local an5 =TakeItem( role, 0,2927, 1 )
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 then
		SystemNotice ( role ,"Невозможно забрать предмет ")
	else
	GiveItem ( role , 0 , 2935  , 1 , 4 ) 
	LG( "HDSZZDH" ,cha_name,"Hair of Death"..am1.." ","Tooth of Death"..am2.." ","Eye of Death"..am3.." ","Heart of Death"..am4.." ","Sealed Soul of Hardin"..am5.." ")
	Notice("Поздравляем! "..cha_name.." обменял 1 Проклятие Хардина ")
	end
end

function GetChaName_9 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2854 )	
	local am2 = CheckBagItem( role, 2855 )	
	local am3 = CheckBagItem( role, 2856 )	
	local am4 = CheckBagItem( role, 2857 )	
	local am5 = CheckBagItem( role, 2928 )	
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1  then
		SystemNotice( role ,"У вас нет предметов для обмена ")
		return
	end
	local an1 =TakeItem( role, 0,2854, 1 )
	local an2 =TakeItem( role, 0,2855, 1 )
	local an3 =TakeItem( role, 0,2856, 1 )
	local an4 =TakeItem( role, 0,2857, 1 )
	local an5 =TakeItem( role, 0,2928, 1 )
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 then
		SystemNotice ( role ,"Невозможно забрать предмет ")
	else
	GiveItem ( role , 0 , 2936  , 1 , 4 )
	LG( "HAZZDH" ,cha_name,"Hair of Death"..am1.." ","Tooth of Death"..am2.." ","Eye of Death"..am3.." ","Heart of Death"..am4.." ","Sealed Soul of Darkness"..am5.." ")
	Notice("Поздравляем! "..cha_name.." обменял 1 Проклятие Тьмы ")
	end
end

function GetChaName_10 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2854 )	
	local am2 = CheckBagItem( role, 2855 )	
	local am3 = CheckBagItem( role, 2856 )	
	local am4 = CheckBagItem( role, 2857 )	
	local am5 = CheckBagItem( role, 2929 )	
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1  then
		SystemNotice( role ,"У вас нет предметов для обмена ")
		return
	end
	local an1 =TakeItem( role, 0,2854, 1 )
	local an2 =TakeItem( role, 0,2855, 1 )
	local an3 =TakeItem( role, 0,2856, 1 )
	local an4 =TakeItem( role, 0,2857, 1 )
	local an5 =TakeItem( role, 0,2929, 1 )
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 then
		SystemNotice ( role ,"Невозможно забрать предмет ")
	else
	GiveItem ( role , 0 , 2937  , 1 , 4 ) 
	LG( "DYZZDH" ,cha_name,"Hair of Death"..am1.." ","Tooth of Death"..am2.." ","Eye of Death"..am3.." ","Heart of Death"..am4.." ","Sealed Soul of Abaddon"..am5.." ")
	Notice("Congratulations"..cha_name.."Successful exchanged for 1 Curse of Abaddon")
	end
end

function GetChaName_11  ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2854 )	
	local am2 = CheckBagItem( role, 2855 )	
	local am3 = CheckBagItem( role, 2856 )	
	local am4 = CheckBagItem( role, 2857 )	
	local am5 = CheckBagItem( role, 2931 )	
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1  then
		SystemNotice( role ,"У вас нет предметов для обмена ")
		return
	end
	local an1 =TakeItem( role, 0,2854, 1 )
	local an2 =TakeItem( role, 0,2855, 1 )
	local an3 =TakeItem( role, 0,2856, 1 )
	local an4 =TakeItem( role, 0,2857, 1 )
	local an5 =TakeItem( role, 0,2931, 1 )
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 then
		SystemNotice ( role ,"Невозможно забрать предмет ")
	else
	GiveItem ( role , 0 , 2939  , 1 , 4 )
	LG( "YMZZDH" ,cha_name,"Hair of Death"..am1.." ","Tooth of Death"..am2.." ","Eye of Death"..am3.." ","Heart of Death"..am4.." ","Sealed Soul of Abyss"..am5.." ")
	Notice("Поздравляем! "..cha_name.." обменял 1 Проклятие Бездны ")
	end
end

function GetChaName_12 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2854 )	
	local am2 = CheckBagItem( role, 2855 )	
	local am3 = CheckBagItem( role, 2856 )	
	local am4 = CheckBagItem( role, 2857 )	
	local am5 = CheckBagItem( role, 2932 )	
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1  then
		SystemNotice( role ,"У вас нет предметов для обмена ")
		return
	end
	local an1 =TakeItem( role, 0,2854, 1 )
	local an2 =TakeItem( role, 0,2855, 1 )
	local an3 =TakeItem( role, 0,2856, 1 )
	local an4 =TakeItem( role, 0,2857, 1 )
	local an5 =TakeItem( role, 0,2932, 1 )
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 then
		SystemNotice ( role ,"Невозможно забрать предмет ")
	else
	GiveItem ( role , 0 , 2940  , 1 , 4 ) 
	LG( "MHZZDH" ,cha_name,"Hair of Death"..am1.." ","Tooth of Death"..am2.." ","Eye of Death"..am3.." ","Heart of Death"..am4.." ","Sealed Soul of Styx"..am5.." ")
	Notice("Поздравляем! "..cha_name.." обменял 1 Проклятие Стикса ")
	end
end

function GetChaName_13 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2854 )	
	local am2 = CheckBagItem( role, 2855 )	
	local am3 = CheckBagItem( role, 2856 )	
	local am4 = CheckBagItem( role, 2857 )	
	local am5 = CheckBagItem( role, 2930 )	
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1  then
		SystemNotice( role ,"У вас нет предметов для обмена ")
		return
	end
	local an1 =TakeItem( role, 0,2854, 1 )
	local an2 =TakeItem( role, 0,2855, 1 )
	local an3 =TakeItem( role, 0,2856, 1 )
	local an4 =TakeItem( role, 0,2857, 1 )
	local an5 =TakeItem( role, 0,2930, 1 )
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 then
		SystemNotice ( role ,"Невозможно забрать предмет ")
	else
	GiveItem ( role , 0 , 2938  , 1 , 4 )
	LG( "XLZZDH" ,cha_name,"Hair of Death"..am1.." ","Tooth of Death"..am2.." ","Eye of Death"..am3.." ","Heart of Death"..am4.." ","Sealed Soul of Asura"..am5.." ")
	Notice("Поздравляем! "..cha_name.." обменял 1 Проклятие Асуры ")
	end
end

function GetChaName_14 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2934 )	
	local am2 = CheckBagItem( role, 2935 )	
	if am1 < 1 or am2 < 1 then
		--SystemNotice( role ,"You do not seem to possess the correct item for redemption")
		return
	end
	local an1 =TakeItem( role, 0,2934, 1 )
	local an2 =TakeItem( role, 0,2935, 1 )
	if an1==0 or an2==0 then
		SystemNotice ( role ,"Collection of redemption item failed")
	else
	GiveItem ( role , 0 , 2562  , 1 , 4 ) 
	LG( "HDSHPDH" ,cha_name,"Silhouette of Death"..am1.." ","Curse of Hardin"..am2.." ")
	Notice("Поздравляем! "..cha_name.." обменял 1 Душу Хардина ")
	end
end

function GetChaName_15 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2934 )	
	local am2 = CheckBagItem( role, 2936 )	
	if am1 < 1 or am2 < 1 then
		--SystemNotice( role ,"You do not seem to possess the correct item for redemption")
		return
	end
	local an1 =TakeItem( role, 0,2934, 1 )
	local an2 =TakeItem( role, 0,2936, 1 )
	if an1==0 or an2==0 then
		SystemNotice ( role ,"Collection of redemption item failed")
	else
	GiveItem ( role , 0 , 2563  , 1 , 4 ) 
	LG( "HAHPDH" ,cha_name,"Silhouette of Death"..am1.." ","Curse of Darkness"..am2.." ")
	Notice("Поздравляем! "..cha_name.." обменял 1 Душу Тьмы ")
	end
end

function GetChaName_16 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2934 )	
	local am2 = CheckBagItem( role, 2937 )	
	if am1 < 1 or am2 < 1 then
		SystemNotice( role ,"У вас нет предметов для обмена ")
		return
	end
	local an1 =TakeItem( role, 0,2934, 1 )
	local an2 =TakeItem( role, 0,2937, 1 )
	if an1==0 or an2==0 then
		SystemNotice ( role ,"Невозможно забрать предмет ")
	else
	GiveItem ( role , 0 , 2564  , 1 , 4 )
	LG( "DYHPDH" ,cha_name,"Silhouette of Death"..am1.." ","Curse of Abaddon"..am2.." ")
	Notice("Поздравляем! "..cha_name.." обменял 1 Душу Абаддона ")
	end
end

function GetChaName_17 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2934 )	
	local am2 = CheckBagItem( role, 2939 )	
	if am1 < 1 or am2 < 1 then
		SystemNotice( role ,"У вас нет предметов для обмена ")
		return
	end
	local an1 =TakeItem( role, 0,2934, 1 )
	local an2 =TakeItem( role, 0,2939, 1 )
	if an1==0 or an2==0 then
		SystemNotice ( role ,"Невозможно забрать предмет ")
	else
	GiveItem ( role , 0 , 2566  , 1 , 4 )
	LG( "YMHPDH" ,cha_name,"Silhouette of Death"..am1.." ","Curse of Abyss"..am2.." ")
	Notice("Поздравляем! "..cha_name.." обменял 1 Душу Бездны ")
	end
end

function GetChaName_18 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2934 )	
	local am2 = CheckBagItem( role, 2940 )	
	if am1 < 1 or am2 < 1 then
		SystemNotice( role ,"У вас нет предметов для обмена ")
		return
	end
	local an1 =TakeItem( role, 0,2934, 1 )
	local an2 =TakeItem( role, 0,2940, 1 )
	if an1==0 or an2==0 then
		SystemNotice ( role ,"Невозможно забрать предмет ")
	else
	GiveItem ( role , 0 , 2567  , 1 , 4 )
	LG( "MHHPDH" ,cha_name,"Silhouette of Death"..am1.." ","Curse of Styx"..am2.." ")
	Notice("Поздравляем! "..cha_name.." обменял 1 Душу Стикса ")
	end
end

function GetChaName_19 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2934 )	
	local am2 = CheckBagItem( role, 2938 )	
	if am1 < 1 or am2 < 1 then
		SystemNotice( role ,"У вас нет предметов для обмена ")
		return
	end
	local an1 =TakeItem( role, 0,2934, 1 )
	local an2 =TakeItem( role, 0,2938, 1 )
	if an1==0 or an2==0 then
		SystemNotice ( role ,"Невозможно забрать предмет ")
	else
	GiveItem ( role , 0 , 2565  , 1 , 4 )
	LG( "XLHPDH" ,cha_name,"Silhouette of Death"..am1.." ","Curse of Asura"..am2.." ")
	Notice("Поздравляем! "..cha_name.." обменял 1 Душу Асуры ")
	end
end

function GetChaName_20 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2562 )	
	local am2 = CheckBagItem( role, 2563 )	
	local am3 = CheckBagItem( role, 2564 )	
	local am4 = CheckBagItem( role, 2565 )	
	local am5 = CheckBagItem( role, 2566 )	
	local am6 = CheckBagItem( role, 2567 )	
	local am7 = CheckBagItem( role, 2933 )	
	local am8 = CheckBagItem( role, 2934 )	
	       
	if am1 < 1 or am2 < 1 or am3 < 1 or am4 < 1 or am5 < 1 or am6 < 1 or am7 < 1 or am8 < 1   then
		SystemNotice( role ,"У вас нет предметов для обмена ")
		return
	end
	local an1 =TakeItem( role, 0,2562, 1 )
	local an2 =TakeItem( role, 0,2563, 1 )
	local an3 =TakeItem( role, 0,2564, 1 )
	local an4 =TakeItem( role, 0,2565, 1 )
	local an5 =TakeItem( role, 0,2566, 1 )
	local an6 =TakeItem( role, 0,2567, 1 )
	local an7 =TakeItem( role, 0,2933, 1 )
	local an8 =TakeItem( role, 0,2934, 1 )
	if an1==0 or an2==0 or an3==0 or an4==0  or an5==0 or an6==0 or an7==0 or an8==0  then
		SystemNotice ( role ,"Невозможно забрать предмет ")
	else
	GiveItem ( role , 0 , 2404  , 1 , 4 ) 
	LG( "HLHPDH" ,cha_name,"Soul of Darkness"..am1.." ","Soul of Asura"..am2.." ","Soul of Hardin"..am3.." ","Soul of Abaddon"..am4.." ","Soul of Abyss"..am5.." ","Soul of Styx"..am6.." ","Silhouette of Death"..am7.." ","Titter of Black Dragon"..am8.." ")
	Notice("Поздравляем! "..cha_name.." обменял 1 Душу Черного Дракона ")
	end
end

function GetChaName_21 ( role,npc )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	if CheckDateNum > 31421 then
		SystemNotice ( role , "Сейчас это нельзя сделать. Попробуйте в следующем году ")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	
	local am1 = CheckBagItem( role, 1649 )	
	       am2 = CheckBagItem( role, 3130 )
	       am3 = CheckBagItem( role, 1641 )
	       am4 = CheckBagItem( role, 4418 )
	if am1 < 1 or am2<1 or am3<1 or am4<1 then
		SystemNotice( role ,"У вас нет предметов для обмена ")
		return
	else
	local am5 =TakeItem( role, 0,1649, 1)
	       am6 =TakeItem( role, 0,3130, 1)
	       am7 =TakeItem( role, 0,1641, 1)
	       am8 =TakeItem( role, 0,4418, 1)
		if am5==0 or am6==0 or am7==0 or am8==0 then
		SystemNotice ( role ,"Невозможно забрать предмет ")
			return
		end
	end
	GiveItem( role , 0 , 1074  , 1 , 4 )
	LG( "ZAZZ" , "Игрок "..cha_name.." получил 1 Зернышко Любви " )
end

function GetChaName_22 ( role,npc )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	if CheckDateNum < 31420  then
		SystemNotice ( role , "Не переживай. Ты сможешь произвести обмен 14 марта в 8-10 часов вечера " )
		UseItemFailed ( role )
		return
	end
	if CheckDateNum > 31421 then
		SystemNotice ( role , "Сейчас это нельзя сделать. Попробуйте в следующем году " )
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	
	local am1 = CheckBagItem( role, 1074 )			
	if am1 < 10 then
		SystemNotice( role ,"У вас нет Зернышка любви ")
		return
	else
	local am2 =TakeItem( role, 0,1074, 10)			                   
		if am2==0  then
			SystemNotice ( role ,"Невозможно забрать 10 Зернышек любви ")
			return
		end
	end
	GiveItem( role , 0 , 3077  , 1 , 4 )
end

function GetChaName_23 ( role,npc )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	if CheckDateNum < 31420  then
		SystemNotice ( role , "Не переживай. Ты сможешь произвести обмен 14 марта в 8-10 часов вечера " )
		UseItemFailed ( role )
		return
	end
	if CheckDateNum > 31421 then
		SystemNotice ( role , "Сейчас это нельзя сделать. Попробуйте в следующем году " )
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	
	local am1 = CheckBagItem( role, 1074 )			
	if am1 < 100 then
		SystemNotice( role ,"У вас нет Зернышка любви ")
		return
	else
	local am2 =TakeItem( role, 0,1074, 100)			                   
		if am2==0  then
		SystemNotice ( role ,"Невозможно забрать 100 Зернышек любви ")
			return
		end
	end
	GiveItem( role , 0 , 3094  , 3 , 4 )
end

function GetChaName_24 ( role,npc )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	if CheckDateNum < 31420  then
		SystemNotice ( role , "Не переживай. Ты сможешь произвести обмен 14 марта в 8-10 часов вечера " )
		UseItemFailed ( role )
		return
	end
	if CheckDateNum > 31421 then
		SystemNotice ( role , "Сейчас это нельзя сделать. Попробуйте в следующем году " )
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	
	local am1 = CheckBagItem( role, 1074 )			
	if am1 < 1000 then
		SystemNotice( role ,"У вас нет Зернышка любви ")
		return
	else
	local am2 =TakeItem( role, 0,1074, 1000)			                   
		if am2==0  then
		SystemNotice ( role ,"Невозможно забрать 1000 Зернышек любви ")
			return
		end
	end
	GiveItem( role , 0 , 2844  , 1 , 4 )
end

function GetChaName_25 ( role,npc )
	local ret = KitbagLock(role,0)
	if ret ~= LUA_TRUE then
		SystemNotice(role,"Инвентарь заблокирован. Невозможно совершить действие ")
		return
	end
	local retbag = HasLeaveBagGrid( role, 1)
	if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
	local cha_name = GetChaDefaultName ( role )
	local am1 = CheckBagItem( role, 2235 )	
	if am1 < 1  then
		SystemNotice( role ,"У вас уже есть Камень перерождения ")
		return
	end
	local an1 =TakeItem( role, 0,2235, 1 )
	if an1==0  then
		SystemNotice ( role ,"Невозможно забрать предмет ")
	else
	GiveItem ( role , 0 , 2941  , 1 , 4 )
	LG( "ZSK" ,cha_name,"Rebirth Stone"..am1.." ")
	end
end

--------------------------------------------------------------------
---------------- Священная Война(Война Гильдий) --------------------
--------------------------------------------------------------------

function GetChaName1_guildwar( role,npc )
    local num_count = CheckBagItem(role, 2859)
    if num_count >=20 then
        TakeItem( role, 0,2859, 20 )
	local a = math.random ( 1 , 4 )
        if a == 1 then
        AddState ( role , role , STATE_QINGZ , 10 , 300 )
	elseif a ==2 then
	AddState ( role , role , STATE_YS , 10 , 300 )
	elseif a ==3 then
	AddState ( role , role , STATE_HFZQ , 10 , 10 )
	else
	AddState ( role , role , STATE_JRQKL , 10 , 180 )
	end
    end
    if num_count < 20 then
   SystemNotice( role ,"Вам не хватает Глазных повязок ")
    end
end

function GetChaName2_guildwar( role,npc )
 local map_name_role = GetChaMapName ( role )
 if  map_name_role == "guildwar" then
     local bs_def = Def(haijunSide_BaseRole)
     local bs_reseist = Resist(haijunSide_BaseRole)
     local def_20 = 20
     local pedf_1 = 1
     local bs_def_after = bs_def + def_20
     local bs_reseist_after = bs_reseist + pedf_1
     local num_count = CheckBagItem(role, 4546)
      if num_count >=30 then
         TakeItem( role, 0,4546, 30 )
	 SetChaAttrI( haijunSide_BaseRole , ATTR_DEF ,bs_def_after )
	 SetChaAttrI( haijunSide_BaseRole , ATTR_PDEF, bs_reseist_after )
	 SystemNotice( role ,"Прекрасно! Флотская статуя укреплена!")
      end
      if num_count < 30 then
     SystemNotice( role ,"У вас не хватает кристаллов руды ")
      end
 elseif map_name_role == "guildwar2" then
     local bs_def = Def(di_haijunSide_BaseRole)
     local bs_reseist = Resist(di_haijunSide_BaseRole)
     local def_20 = 20
     local pedf_1 = 1
     local bs_def_after = bs_def + def_20
     local bs_reseist_after = bs_reseist + pedf_1
     local num_count = CheckBagItem(role, 4546)
      if num_count >=30 then
         TakeItem( role, 0,4546, 30 )
	 SetChaAttrI( di_haijunSide_BaseRole , ATTR_DEF ,bs_def_after )
	 SetChaAttrI( di_haijunSide_BaseRole , ATTR_PDEF, bs_reseist_after )
	 SystemNotice( role ,"Прекрасно! Флотская статуя укреплена!")
      end
      if num_count < 30 then
     SystemNotice( role ,"У вас не хватает кристаллов руды ")
      end
    end
end

function GetChaName3_guildwar( role,npc )
 local map_name_role = GetChaMapName ( role )
 if map_name_role == "guildwar" then
    
    local num_count_1 = CheckBagItem(role, 1684)
    local num_count_2 = CheckBagItem(role, 4012)
    if num_count_1 >= 4 and num_count_2 >= 9 then
       TakeItem( role, 0,1684, 4 )
       TakeItem( role, 0,4012, 9 )
       AddState ( haijunSide_BaseRole , haijunSide_BaseRole , STATE_PKWD , 10 , 180 )
       SystemNotice( role ,"Хаха! Статуя будет находится в невидимости 3 минуты!")
    else
   SystemNotice( role ,"У вас не хватает ресурсов!")
    end
 end
 if map_name_role == "guildwar2" then
  local num_count_1 = CheckBagItem(role, 1684)
    local num_count_2 = CheckBagItem(role, 4012)
    if num_count_1 >= 4 and num_count_2 >= 9 then
       TakeItem( role, 0,1684, 4 )
       TakeItem( role, 0,4012, 9 )
       AddState ( di_haijunSide_BaseRole , di_haijunSide_BaseRole , STATE_PKWD , 10 , 180 )
       SystemNotice( role ,"Хаха! Статуя будет находится в невидимости 3 минуты!")
    else
   SystemNotice( role ,"У вас не хватает ресурсов!")
    end
   end
end

function GetChaName4_guildwar( role,npc )
    local map_name_role = GetChaMapName ( role )
 if map_name_role == "guildwar" then
    local num_count_1 = CheckBagItem(role, 4011)
    local num_count_2 = CheckBagItem(role, 1720)
   if num_count_1 >= 12 and num_count_2 >= 12 then
       TakeItem( role, 0,4011, 12 )
       TakeItem( role, 0,1720, 12 )
       local min_atk = Mnatk(haijunSide_JTRole_1)
       local max_atk = Mxatk(haijunSide_JTRole_1)
    
       if min_atk == 0 then
          local min_atk = Mnatk(haijunSide_JTRole_2)
          local max_atk = Mxatk(haijunSide_JTRole_2)
       end
          local min_atk_after = min_atk + 25
          local max_atk_after = max_atk + 25
          SetChaAttrI( haijunSide_JTRole_1 , ATTR_MNATK ,min_atk_after )
          SetChaAttrI( haijunSide_JTRole_1 , ATTR_MXATK ,max_atk_after )
          SetChaAttrI( haijunSide_JTRole_2 , ATTR_MNATK ,min_atk_after )
          SetChaAttrI( haijunSide_JTRole_2 , ATTR_MXATK ,max_atk_after )
         SystemNotice( role ,"Прекрасно! Башня укреплена!")
    elseif num_count_1 < 12 and num_count_2 < 12 then
   SystemNotice( role ,"У вас не хватает ресурсов!")
    end
  end
 if map_name_role == "guildwar2" then
    local num_count_1 = CheckBagItem(role, 4011)
    local num_count_2 = CheckBagItem(role, 1720)
    if num_count_1 >= 12 and num_count_2 >= 12 then
       TakeItem( role, 0,4011, 12 )
       TakeItem( role, 0,1720, 12 )
       local min_atk = Mnatk(di_haijunSide_JTRole_1)
       local max_atk = Mxatk(di_haijunSide_JTRole_1)
    
	    if min_atk == 0 then
	       local min_atk = Mnatk(di_haijunSide_JTRole_2)
	       local max_atk = Mxatk(di_haijunSide_JTRole_2)
	    end
	       local min_atk_after = min_atk + 25
	       local max_atk_after = max_atk + 25
	       SetChaAttrI( di_haijunSide_JTRole_1 , ATTR_MNATK ,min_atk_after )
	       SetChaAttrI( di_haijunSide_JTRole_1 , ATTR_MXATK ,max_atk_after )
	       SetChaAttrI( di_haijunSide_JTRole_2 , ATTR_MNATK ,min_atk_after )
	       SetChaAttrI( di_haijunSide_JTRole_2 , ATTR_MXATK ,max_atk_after )
         SystemNotice( role ,"Прекрасно! Башня укреплена!")   
      elseif num_count_1 < 12 and num_count_2 < 12 then
      SystemNotice( role ,"У вас не хватает ресурсов!")
     end 
   end  
end
 
function GetChaName5_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
    if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 999 , 30641 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 30841 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 30941 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
		SystemNotice( role ,"Засада подготовлена ")
   elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 1025 , 30641 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 30841 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 30941 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
    end
end

function GetChaName6_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 999 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 1025 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
    end
end

function GetChaName7_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 999 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 1025 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
     end
end

function GetChaName8_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 999 , 30700 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 30741 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 1025 , 30700 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 30741 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
    end
end

function GetChaName9_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 999 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 51341 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 1025 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 51341 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
     end
end

function GetChaName10_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 999 , 11300 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 11341 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 11241 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 15 )
	local Monster1 =CreateChaX( 1025 , 11300 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 11341 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 11241 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
     end
end

function GetChaName11_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 999 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 30541 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 30500 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 30741 , 51402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 1025 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 30541 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 30500 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 30741 , 51402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
     end
end

function GetChaName12_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 999 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 1025 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
     end
end

function GetChaName13_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 999 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 52000 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 52141 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 52241 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 52241 , 52602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 1025 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 52000 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 52141 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 52241 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 52241 , 52602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
     end
end

function GetChaName14_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 999 , 30700 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 30741 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 30700 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 30841 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 30741 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 30741 , 11002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 1025 , 30700 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 30741 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 30700 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 30841 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 30741 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 30741 , 11002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
     end
end

function GetChaName15_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 999 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 51341 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 51200 , 10000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 51241 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 51341 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 51441 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 1025 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 51341 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 51200 , 10000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 51241 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 51341 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 51441 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
     end
end

function GetChaName16_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 999 , 11100 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 11041 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 11141 , 11902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 11100 , 11800 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 11241 , 11902 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 11241 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 11341 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
		SystemNotice( role ,"Засада подготовлена ")
     elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 30 )
	local Monster1 =CreateChaX( 1025 , 11100 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 11341 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 11141 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 11100 , 11900 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 11241 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 11241 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 11341 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
     end
end

function GetChaName17_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 45 )
        local Monster1 =CreateChaX( 999 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 30541 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 30500 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 30741 , 51402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
        local Monster7 =CreateChaX( 999 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	local Monster8 =CreateChaX( 999 , 30841 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 999 , 30841 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 999 , 30741 , 51302 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 999 , 30741 , 51202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 45 )
        local Monster1 =CreateChaX( 1025 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 30541 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 30500 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 30741 , 51402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
        local Monster7 =CreateChaX( 1025 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	local Monster8 =CreateChaX( 1025 , 30841 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 1025 , 30841 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 1025 , 30741 , 51302 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 1025 , 30741 , 51202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
     end
end

function GetChaName18_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 45 )
       local Monster1 =CreateChaX( 999 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	local Monster8 =CreateChaX( 999 , 12041 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 999 , 12141 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 999 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 999 , 12641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 45 )
       local Monster1 =CreateChaX( 1025 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	local Monster8 =CreateChaX( 1025 , 12041 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 1025 , 12141 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 1025 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 1025 , 12641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
     end
end

function GetChaName19_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 45 )
       local Monster1 =CreateChaX( 999 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 52000 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 52141 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 52241 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 52241 , 52602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	local Monster8 =CreateChaX( 999 , 52441 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 999 , 52641 , 52702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 999 , 52641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 999 , 52641 , 52302 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 45 )
       local Monster1 =CreateChaX( 1025 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 52000 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 52141 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 52241 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 52241 , 52602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	local Monster8 =CreateChaX( 1025 , 52441 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 1025 , 52641 , 52702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 1025 , 52641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 1025 , 52641 , 52302 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
     end
end

function GetChaName20_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 45 )
       local Monster1 =CreateChaX( 999 , 30700 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 30741 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 30700 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 30841 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 30741 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 30741 , 11002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	local Monster8 =CreateChaX( 999 , 30841 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 999 , 30941 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 999 , 30541 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 999 , 30441 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 45 )
       local Monster1 =CreateChaX( 1025 , 30700 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 30741 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 30700 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 30841 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 30741 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 30741 , 11002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	local Monster8 =CreateChaX( 1025 , 30841 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 1025 , 30941 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 1025 , 30541 , 11102 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 1025 , 30441 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
     end
end

function GetChaName21_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 45 )
      local Monster1 =CreateChaX( 999 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 51341 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 51200 , 10000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 51241 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 51341 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 51441 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	local Monster8 =CreateChaX( 999 , 51241 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 999 , 51241 , 10202 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 999 , 51041 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 999 , 51141 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 45 )
      local Monster1 =CreateChaX( 1025 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 51341 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 51200 , 10000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 51241 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 51341 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 51441 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	local Monster8 =CreateChaX( 1025 , 51241 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 1025 , 51141 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 1025 , 51041 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 1025 , 51141 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
     end
end

function GetChaName22_guildwar(role)
     local num_count_1 = CheckBagItem(role, 2964)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,2964, 45 )
        local Monster1 =CreateChaX( 999 , 11100 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 999 , 11041 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 999 , 11141 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 999 , 11100 , 11500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 999 , 11241 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 999 , 11241 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 999 , 11341 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	local Monster8 =CreateChaX( 999 , 11141 , 11902 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 999 , 11441 , 11902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 999 , 11441 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 999 , 10941 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
		SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,2964, 45 )
        local Monster1 =CreateChaX( 1025 , 11100 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 1)
	local Monster2 =CreateChaX( 1025 , 11041 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 1)
	local Monster3 =CreateChaX( 1025 , 11141 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 1)
	local Monster4 =CreateChaX( 1025 , 11100 , 11500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 1)
	local Monster5 =CreateChaX( 1025 , 11241 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 1)
	local Monster6 =CreateChaX( 1025 , 11241 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 1)
	local Monster7 =CreateChaX( 1025 , 11341 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 1)
	local Monster8 =CreateChaX( 1025 , 11141 , 11902 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 1)
	local Monster9 =CreateChaX( 1025 , 11441 , 11902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 1)
	local Monster10 =CreateChaX( 1025 , 11441 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 1)
	local Monster11 =CreateChaX( 1025 , 10941 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 1)
		SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"Вам не хватает флотских знаков ")
     end
end

function GetChaName23_guildwar( role,npc )
    local num_count = CheckBagItem(role, 2858)
    if num_count >=20 then
        TakeItem( role, 0,2858, 20 )
	local a = math.random ( 1 , 4 )
        if a == 1 then
        AddState ( role , role , STATE_QINGZ , 10 , 300 )
	elseif a ==2 then
	AddState ( role , role , STATE_YS , 10 , 300 )
	elseif a ==3 then
	AddState ( role , role , STATE_HFZQ , 10 , 10 )
	else
	AddState ( role , role , STATE_JRQKL , 10 , 180 )
	end
    end
    if num_count < 20 then
   SystemNotice( role ,"У вас не хватает Глазных повязок ")
    end
end

function GetChaName24_guildwar( role,npc )
     local map_name_role = GetChaMapName ( role )
  if map_name_role == "guildwar" then
     local bs_def = Def(haidaoSide_BaseRole)
     local bs_reseist = Resist(haidaoSide_BaseRole)
     local def_20 = 20 
     local pedf_1 = 1 
     local bs_def_after = bs_def + def_20
     local bs_reseist_after = bs_reseist + pedf_1
     local num_count = CheckBagItem(role, 4546)
      if num_count >=30 then
         TakeItem( role, 0,4546, 30 )
	 SetChaAttrI( haidaoSide_BaseRole , ATTR_DEF ,bs_def_after )
	 SetChaAttrI( haidaoSide_BaseRole , ATTR_PDEF, bs_reseist_after )
	 SystemNotice( role ,"Прекрасно! Защита Пиратской статуи повышена!")
      end
      if num_count < 30 then
      SystemNotice( role ,"У вас не хватает кристаллов руды ")
      end
   elseif map_name_role == "guildwar2" then
     local bs_def = Def(di_haidaoSide_BaseRole)
     local bs_reseist = Resist(di_haidaoSide_BaseRole)
     local def_20 = 20 
     local pedf_1 = 1 
     local bs_def_after = bs_def + def_20
     local bs_reseist_after = bs_reseist + pedf_1
     local num_count = CheckBagItem(role, 4546)
      if num_count >=30 then
         TakeItem( role, 0,4546, 30 )
	 SetChaAttrI( di_haidaoSide_BaseRole , ATTR_DEF ,bs_def_after ) 
	 SetChaAttrI( di_haidaoSide_BaseRole , ATTR_PDEF, bs_reseist_after )
	 SystemNotice( role ,"Прекрасно! Защита Пиратской статуи повышена!")
      end
      if num_count < 30 then
      SystemNotice( role ,"У вас не хватает кристаллов руды ")
      end
    end
end

function GetChaName25_guildwar( role,npc )
     local map_name_role = GetChaMapName ( role )
 if map_name_role == "guildwar" then
    local num_count_1 = CheckBagItem(role, 4013)
    local num_count_2 = CheckBagItem(role, 1683)
    if num_count_1 >= 4 and num_count_2 >= 9 then
       TakeItem( role, 0,4013, 4 )
       TakeItem( role, 0,1683, 9 )
       AddState ( haidaoSide_BaseRole , haidaoSide_BaseRole , STATE_PKWD , 10 , 180 )
       SystemNotice( role ,"Хаха! Статуя временно будет находится в невидимости!")
    else
       SystemNotice( role ,"У вас не хватает ресурсов!")
    end
  end
 if map_name_role == "guildwar2" then
    local num_count_1 = CheckBagItem(role, 4013)
    local num_count_2 = CheckBagItem(role, 1683)
    if num_count_1 >= 4 and num_count_2 >= 9 then
       TakeItem( role, 0,4013, 4 )
       TakeItem( role, 0,1683, 9 )
       AddState ( di_haidaoSide_BaseRole , di_haidaoSide_BaseRole , STATE_PKWD , 10 , 180 )
       SystemNotice( role ,"Хаха! Статуя временно будет находится в невидимости!")
    else
       SystemNotice( role ,"У вас не хватает ресурсов!")
    end
 end
end

function GetChaName26_guildwar( role,npc )
     local map_name_role = GetChaMapName ( role )
 if map_name_role == "guildwar" then
     local num_count_1 = CheckBagItem(role, 4011)
     local num_count_2 = CheckBagItem(role, 1720)
    if num_count_1 >= 12 and num_count_2 >= 12 then
       TakeItem( role, 0,4011, 12 )
       TakeItem( role, 0,1720, 12 )
       local min_atk = Mnatk(haidaoSide_JTRole_1)
       local max_atk = Mxatk(haidaoSide_JTRole_1)
	    if min_atk == 0 then
	       local min_atk = Mnatk(haidaoSide_JTRole_2)
	       local max_atk = Mxatk(haidaoSide_JTRole_2)
	    end
       local min_atk_after = min_atk + 25
       local max_atk_after = max_atk + 25
       SetChaAttrI( haidaoSide_JTRole_1 , ATTR_MNATK ,min_atk_after )
       SetChaAttrI( haidaoSide_JTRole_1 , ATTR_MXATK ,max_atk_after )
       SetChaAttrI( haidaoSide_JTRole_2 , ATTR_MNATK ,min_atk_after )
       SetChaAttrI( haidaoSide_JTRole_2 , ATTR_MXATK ,max_atk_after )
      SystemNotice( role ,"Прекрасно! Башня укреплена ")
   elseif num_count_1 < 12 and num_count_2 < 12 then
       SystemNotice( role ,"У вас не хватает ресурсов!")
   end
end
  if map_name_role == "guildwar2" then
     local num_count_1 = CheckBagItem(role, 4011)
     local num_count_2 = CheckBagItem(role, 1720)
    if num_count_1 >= 12 and num_count_2 >= 12 then
	       TakeItem( role, 0,4011, 12 )
	       TakeItem( role, 0,1720, 12 )
	       local min_atk = Mnatk(di_haidaoSide_JTRole_1)
	       local max_atk = Mxatk(di_haidaoSide_JTRole_1)
	    if min_atk == 0 then
	       local min_atk = Mnatk(di_haidaoSide_JTRole_2)
	       local max_atk = Mxatk(di_haidaoSide_JTRole_2)
	    end
	       local min_atk_after = min_atk + 25
	       local max_atk_after = max_atk + 25
	       SetChaAttrI( di_haidaoSide_JTRole_1 , ATTR_MNATK ,min_atk_after )
	       SetChaAttrI( di_haidaoSide_JTRole_1 , ATTR_MXATK ,max_atk_after )
	       SetChaAttrI( di_haidaoSide_JTRole_2 , ATTR_MNATK ,min_atk_after )
	       SetChaAttrI( di_haidaoSide_JTRole_2 , ATTR_MXATK ,max_atk_after )
      SystemNotice( role ,"Прекрасно! Башня укреплена ")
     elseif num_count_1 < 12 and num_count_2 < 12 then
       SystemNotice( role ,"У вас не хватает ресурсов!")
     end
   end
end

function GetChaName27_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1000 , 30741 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 30941 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
		 SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1026 , 30741 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 30841 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 30941 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName28_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1000 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 51141 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
		 SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1026 , 51200 , 9800 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 51141 , 9802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 51341 , 9902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName29_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1000 , 11300 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 11241 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 11141 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
		 SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1026 , 11300 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 11241 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 11141 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName30_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1000 , 30700 , 51700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 30841 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 30941 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
		 SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1026 , 30700 , 51770 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 30841 , 51670 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 30941 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName31_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1000 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
		 SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 15 )       
	local Monster1 =CreateChaX( 1026 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 12000 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 11900 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName32_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 15 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1000 , 52300 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 52441 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 52541 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
		 SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 15 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 15 )
	local Monster1 =CreateChaX( 1026 , 52300 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 52200 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 52100 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName33_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1000 , 30600 , 10200 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 30641 , 10302 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 30541 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 30500 , 10400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 30741 , 10202 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 30741 , 10202 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 30541 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
		 SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1026 , 30600 , 10200 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 30641 , 10302 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 30541 , 10102 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 30500 , 10400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 30741 , 10202 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 30741 , 10202 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 30541 , 10002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName34_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1000 , 51200 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 51141 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 51241 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 51000 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 51141 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 51341 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 51041 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
		 SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1026 , 51200 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 51141 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 51241 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 51000 , 10900 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 51141 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 51341 , 10902 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 51041 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName35_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1000 , 11400 , 11600 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 11541 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 11541 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 11400 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 11341 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 11341 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 11441 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
		 SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1026 , 11400 , 11600 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 11541 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 11541 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 11400 , 11700 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 11341 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 11341 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 11441 , 11802 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName36_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1000 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 30541 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 30500 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 30741 , 51402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
		 SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1026 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 30841 , 51600 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 30741 , 51600 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 30700 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 30641 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 30741 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 30741 , 51300 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName37_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1000 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1026 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 ,12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName38_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 30 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1000 , 52100 , 52200 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 52241 , 52302 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 52041 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 52400 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 51941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 51941 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     elseif num_count_1 >= 30 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 30 )
	local Monster1 =CreateChaX( 1026 , 52100 , 52200 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 52241 , 52302 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 52041 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 52400 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 51941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 51941 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName39_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 45 )
        local Monster1 =CreateChaX( 1000 , 30700 , 10500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 30641 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 30541 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 30500 , 10400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 30741 , 10402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 30541 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
        local Monster7 =CreateChaX( 1000 , 30641 , 10402 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1000 , 30841 , 10402 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1000 , 30841 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1000 , 30741 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1000 , 30641 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 45 )
        local Monster1 =CreateChaX( 1026 , 30700 , 10500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 30641 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 30541 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 30500 , 10400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 30741 , 10402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 30541 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
        local Monster7 =CreateChaX( 1026 , 30641 , 10402 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1026 , 30841 , 10402 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1026 , 30841 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1026 , 30741 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1026 , 30641 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName40_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 45 )
       local Monster1 =CreateChaX( 1000 , 52100 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 52241 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 52141 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 52200 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 52041 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 52141 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 52341 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1000 , 52341 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1000 , 52041 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1000 , 52041 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1000 , 52341 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 45 )
       local Monster1 =CreateChaX( 1026 , 52100 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 52241 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 52141 , 10802 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 52200 , 10700 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 52041 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 52141 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 52341 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1026 , 52341 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1026 , 52041 , 10502 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1026 , 52041 , 10602 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1026 , 52341 , 10702 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName41_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 45 )
       local Monster1 =CreateChaX( 1000 , 11500 , 11600 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 11441 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 11541 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 11400 , 11500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 11541 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 11541 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 11641 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1000 , 11641 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1000 , 11641 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1000 , 11641 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1000 , 11641 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
		 SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 45 )
        local Monster1 =CreateChaX( 1026 , 11500 , 11600 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 11441 , 11602 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 11541 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 11400 , 11500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 11541 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 11541 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 11641 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1026 , 11641 , 11502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1026 , 11641 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1026 , 11641 , 11402 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1026 , 11641 , 11702 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName42_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 45 )
      local Monster1 =CreateChaX( 1000 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 30541 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 30500 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 30741 , 51402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
        local Monster7 =CreateChaX( 1000 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1000 , 30841 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1000 , 30841 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1000 , 30741 , 51302 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1000 , 30741 , 51202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 45 )
        local Monster1 =CreateChaX( 1026 , 30700 , 51500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 30541 , 51602 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 30500 , 51400 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 30741 , 51402 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 30541 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
        local Monster7 =CreateChaX( 1026 , 30641 , 51502 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1026 , 30841 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1026 , 30841 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1026 , 30741 , 51302 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1026 , 30741 , 51202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName43_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 45 )
      local Monster1 =CreateChaX( 1000 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1000 , 12041 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1000 , 12141 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1000 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1000 , 12641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
		 SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 45 )
      local Monster1 =CreateChaX( 1000 , 11900 , 52100 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 11941 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 12000 , 52000 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 12141 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 11841 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 11841 , 52002 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1026 , 12041 , 51702 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1026 , 12141 , 51902 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1026 , 12141 , 52102 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1026 , 12641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName44_guildwar(role)
     local num_count_1 = CheckBagItem(role, 3001)
     local map_name_cha = GetChaMapName ( role )
     if num_count_1 >= 45 and map_name_cha == "guildwar" then
        TakeItem( role, 0,3001, 45 )
       local Monster1 =CreateChaX( 1000 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1000 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1000 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1000 , 52000 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1000 , 52141 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1000 , 52241 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1000 , 52241 , 52602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1000 , 52441 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1000 , 52641 , 52702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1000 , 52641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1000 , 52641 , 52302 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
		 SystemNotice( role ,"Засада подготовлена ")
    elseif num_count_1 >= 45 and map_name_cha == "guildwar2" then
        TakeItem( role, 0,3001, 45 )
          local Monster1 =CreateChaX( 1000 , 52300 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster1, 300000 )
	SetChaSideID(Monster1, 2)
	local Monster2 =CreateChaX( 1026 , 52241 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster2, 300000 )
	SetChaSideID(Monster2, 2)
	local Monster3 =CreateChaX( 1026 , 52341 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster3, 300000 )
	SetChaSideID(Monster3, 2)
	local Monster4 =CreateChaX( 1026 , 52000 , 52500 , 145 , 310,role )
	SetChaLifeTime( Monster4, 300000 )
	SetChaSideID(Monster4, 2)
	local Monster5 =CreateChaX( 1026 , 52141 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster5, 300000 )
	SetChaSideID(Monster5, 2)
	local Monster6 =CreateChaX( 1026 , 52241 , 52402 , 145 , 310,role )
	SetChaLifeTime( Monster6, 300000 )
	SetChaSideID(Monster6, 2)
	local Monster7 =CreateChaX( 1026 , 52241 , 52602 , 145 , 310,role )
	SetChaLifeTime( Monster7, 300000 )
	SetChaSideID(Monster7, 2)
	local Monster8 =CreateChaX( 1026 , 52441 , 52502 , 145 , 310,role )
	SetChaLifeTime( Monster8, 300000 )
	SetChaSideID(Monster8, 2)
	local Monster9 =CreateChaX( 1026 , 52641 , 52702 , 145 , 310,role )
	SetChaLifeTime( Monster9, 300000 )
	SetChaSideID(Monster9, 2)
	local Monster10 =CreateChaX( 1026 , 52641 , 52202 , 145 , 310,role )
	SetChaLifeTime( Monster10, 300000 )
	SetChaSideID(Monster10, 2)
	local Monster11 =CreateChaX( 1026 , 52641 , 52302 , 145 , 310,role )
	SetChaLifeTime( Monster11, 300000 )
	SetChaSideID(Monster11, 2)
		 SystemNotice( role ,"Засада подготовлена ")
     else
     SystemNotice( role ,"У вас не хватает пиратских знаков ")
     end
end

function GetChaName45_guildwar(character,npc)
		local i= CheckBagItem( character, 3849 )
		if i~=1 then
			SystemNotice( character , "Убедитесь, что у вас есть Медаль Отваги ")
			return 0
		end
		local s= CheckBagItem( character, 2382 )
		if s >=1 then
		SystemNotice( character , "Вы можете использовать Знак жизни и смерти только один раз ")
			return 0
		end
		local retbag = HasLeaveBagGrid( character, 1)
	        if retbag ~= LUA_TRUE then
		SystemNotice(role,"У вас не хватает свободного места в инвентаре ")
		return 
	end	 
		local role_RY = GetChaItem2 ( character , 2 , 3849 )
                local HonorPoint = GetItemAttr ( role_RY , ITEMATTR_VAL_STR)
                local HonorPoint_now = HonorPoint - 15
	if HonorPoint < 15 then
		SystemNotice ( character , "У вас нет очков Чести для обмена " )
		return 0
	else               
	        SetItemAttr( role_RY , ITEMATTR_VAL_STR , HonorPoint_now )
		GiveItem ( character , 0 , 2382  , 1 , 4 )
	end	
end