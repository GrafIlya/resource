print('-- Fairy')
--------------------------------------------------------------
----------------------------������----------------------------
---������ 0-50 - ID 222-226 �������							--
---������ 50-100 - ID 276-280 �����							--
---������ 100-150 - ID 7504-7508 ������						--
---������ 150-200 - ID 7523-7527 �������					--
---������ 200-250 - ID 7419,7430,7431,7433,7434 ���������	--
---������ 250-300 - ID 6282-6286 ����������					--
---������ 300-350 - ID 6287-6291 ����������					--
--------------------------------------------------------------
-----------------------------------
-- ������� ������������� ������� --
-----------------------------------
function ItemUse_fruit ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "� ���� ������� ��� ���������! " )
		UseItemFailed ( role )
		return
	end
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY)
	local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
	local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
	local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
	local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
	local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
	local elf_lvl = str + con + agi + dex + sta
	
	if Item_type == 58 and Item_Traget_Type == 59 then
		Check_Exp = CheckElf_EXP ( role , Item_Traget )
		if Check_Exp == 0 then
			SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224" )
			UseItemFailed ( role )
		else
			--������ 0-50
			if elf_lvl < 0 or elf_lvl >= 50 and elf_lvl <= MaxLvFairy then
				SystemNotice(role , "���� ����� ������ ������������, ���� ���� ��� ���� 50 ������. " )
				UseItemFailed ( role )
				return
			else
				if Item_Num == 222 then --����
					Lvup_Str ( role , Item_Num , Item_Traget )
				elseif Item_Num == 223 then --��������
					Lvup_Agi ( role , Item_Num , Item_Traget )
				elseif Item_Num == 224 then --��������
					Lvup_Dex ( role , Item_Num , Item_Traget )
				elseif Item_Num == 225 then --������������
					Lvup_Con ( role , Item_Num , Item_Traget )
				elseif Item_Num == 226 then --���
					Lvup_Sta ( role , Item_Num , Item_Traget )
				end
			end
			--������ 50-100
			if elf_lvl < 50 or elf_lvl >= 100 and elf_lvl <= MaxLvFairy then
				SystemNotice(role , "���� ����� ������ ������������, ���� ���� ��� ������ 50 ������,� ��� �� ���� ���� 100 ������ " )
				UseItemFailed ( role )
				return
			else
				if Item_Num == 276 then --����
					Lvup_Str ( role , Item_Num , Item_Traget )
				elseif Item_Num == 277 then --��������
					Lvup_Agi ( role , Item_Num , Item_Traget )
				elseif Item_Num == 278 then --��������
					Lvup_Dex ( role , Item_Num , Item_Traget )
				elseif Item_Num == 279 then --������������
					Lvup_Con ( role , Item_Num , Item_Traget )
				elseif Item_Num == 280 then --���
					Lvup_Sta ( role , Item_Num , Item_Traget )
				end	
			end
			--������ 100-150
			if elf_lvl < 100 or elf_lvl >= 150 and elf_lvl <= MaxLvFairy then
				SystemNotice(role , "���� ����� ������ ������������, ���� ���� ��� ������ 100 ������,� ��� �� ���� ���� 150 ������ " )
				UseItemFailed ( role )
				return
			else
				if Item_Num == 7506 then --����
					Lvup_Str ( role , Item_Num , Item_Traget )
				elseif Item_Num == 7505 then --��������
					Lvup_Agi ( role , Item_Num , Item_Traget )
				elseif Item_Num == 7507 then --��������
					Lvup_Dex ( role , Item_Num , Item_Traget )
				elseif Item_Num == 7504 then --������������
					Lvup_Con ( role , Item_Num , Item_Traget )
				elseif Item_Num == 7508 then --���
					Lvup_Sta ( role , Item_Num , Item_Traget )
				end	
			end
			--������ 150-200
			if elf_lvl < 150 or elf_lvl >= 200 and elf_lvl <= MaxLvFairy then
				SystemNotice(role , "���� ����� ������ ������������, ���� ���� ��� ������ 150 ������,� ��� �� ���� ���� 200 ������ " )
				UseItemFailed ( role )
				return
			else
				if Item_Num == 7525 then --����
					Lvup_Str ( role , Item_Num , Item_Traget )
				elseif Item_Num == 7524 then --��������
					Lvup_Agi ( role , Item_Num , Item_Traget )
				elseif Item_Num == 7526 then --��������
					Lvup_Dex ( role , Item_Num , Item_Traget )
				elseif Item_Num == 7523 then --������������
					Lvup_Con ( role , Item_Num , Item_Traget )
				elseif Item_Num == 7527 then --���
					Lvup_Sta ( role , Item_Num , Item_Traget )
				end	
			end
			--������ 200-250
			if elf_lvl < 200 or elf_lvl >= 250 and elf_lvl <= MaxLvFairy then
				SystemNotice(role , "���� ����� ������ ������������, ���� ���� ��� ������ 200 ������,� ��� �� ���� ���� 250 ������ " )
				UseItemFailed ( role )
				return
			else
				if Item_Num == 7431 then --����
					Lvup_Str ( role , Item_Num , Item_Traget )
				elseif Item_Num == 7430 then --��������
					Lvup_Agi ( role , Item_Num , Item_Traget )
				elseif Item_Num == 7433 then --��������
					Lvup_Dex ( role , Item_Num , Item_Traget )
				elseif Item_Num == 7419 then --������������
					Lvup_Con ( role , Item_Num , Item_Traget )
				elseif Item_Num == 7434 then --���
					Lvup_Sta ( role , Item_Num , Item_Traget )
				end	
			end
			--������ 250-300
			if elf_lvl < 250 or elf_lvl >= 300 and elf_lvl <= MaxLvFairy then
				SystemNotice(role , "���� ����� ������ ������������, ���� ���� ��� ������ 250 ������,� ��� �� ���� ���� 300 ������ " )
				UseItemFailed ( role )
				return
			else
				if Item_Num == 6282 then --����
					Lvup_Str ( role , Item_Num , Item_Traget )
				elseif Item_Num == 6283 then --��������
					Lvup_Agi ( role , Item_Num , Item_Traget )
				elseif Item_Num == 6284 then --��������
					Lvup_Dex ( role , Item_Num , Item_Traget )
				elseif Item_Num == 6285 then --������������
					Lvup_Con ( role , Item_Num , Item_Traget )
				elseif Item_Num == 6286 then --���
					Lvup_Sta ( role , Item_Num , Item_Traget )
				end
			end
			--������ 300-350
			if elf_lvl < 300 or elf_lvl >= 350 and elf_lvl <= MaxLvFairy then
				SystemNotice(role , "���� ����� ������ ������������, ���� ���� ��� ������ 30 ������,� ��� �� ���� ���� 350 ������ " )
				UseItemFailed ( role )
				return
			else
				if Item_Num == 6287 then --����
					Lvup_Str ( role , Item_Num , Item_Traget )
				elseif Item_Num == 6288 then --��������
					Lvup_Agi ( role , Item_Num , Item_Traget )
				elseif Item_Num == 6289 then --��������
					Lvup_Dex ( role , Item_Num , Item_Traget )
				elseif Item_Num == 6290 then --������������
					Lvup_Con ( role , Item_Num , Item_Traget )
				elseif Item_Num == 6291 then --���
					Lvup_Sta ( role , Item_Num , Item_Traget )
				end
			end
		end
	end
end

function Lvup_Str ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Con ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Agi ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Dex ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Sta ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
------------------------------
-- ��������� ��� � 0 �� 350 --
------------------------------
function Elf_LvUp ( role , Item_Num , Item_Traget , attr_type )       
	local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       
	local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       
	local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       
	local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       
	local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 
	local Lv = str + agi + dex + con + sta
	local attr_type_num = GetItemAttr( Item_Traget ,attr_type )
	local a = 1
	SystemNotice (role , "\192\226\242\238\236\224\242\232\247\229\241\234\224\255 \239\240\238\234\224\247\234\224 \212\229\232 ")	
	if Lv >= 350 then
		a = 0
		SystemNotice (role , "���� ��� �������� ������������� ������. ")
	end
	local b = Percentage_Random ( a )
    local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) 
	if b == 1 then						
	    AddItemEffect(role , Item_Traget , 0  )
		item_energe = 0	
        attr_type_num = attr_type_num + 1
		SetItemAttr ( Item_Traget , attr_type , attr_type_num )
		local Item_MAXENERGY = 240 * ( Lv + 1 )
		if Item_MAXENERGY > 6480 then
			Item_MAXENERGY = 6480
		end
		local Item_MAXURE_NUM = Elf_MaxURE + 1000
		if Item_MAXURE_NUM > 32000 then
			Item_MAXURE_NUM = 32000
		end
		SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
		ResetItemFinalAttr(Item_Traget)
	    AddItemEffect(role , Item_Traget , 1  )
	else							
		item_energe = 0.5 * item_energe 
	end
	SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )
	local attr_type = ITEMATTR_VAL_STA 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
-----------------------------
-- Повышение феи с 0 до 50 --
-----------------------------
function Elf_LvUp ( role , Item_Num , Item_Traget , attr_type )       
	local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       
	local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       
	local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       
	local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       
	local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 
	local Lv = str + agi + dex + con + sta
	local attr_type_num = GetItemAttr( Item_Traget ,attr_type )
	local a = 1
	SystemNotice (role , "\192\226\242\238\236\224\242\232\247\229\241\234\224\255 \239\240\238\234\224\247\234\224 \212\229\232 ")	
	if Lv >= 350 then
		a = 0
		SystemNotice (role , "Ваша фея достигла максимального уровня. ")
	end
	local b = Percentage_Random ( a )
    local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) 
	if b == 1 then						
	    AddItemEffect(role , Item_Traget , 0  )
		item_energe = 0	
        attr_type_num = attr_type_num + 1
		SetItemAttr ( Item_Traget , attr_type , attr_type_num )
		local Item_MAXENERGY = 240 * ( Lv + 1 )
		if Item_MAXENERGY > 6480 then
			Item_MAXENERGY = 6480
		end
		local Item_MAXURE_NUM = Elf_MaxURE + 1000
		if Item_MAXURE_NUM > 32000 then
			Item_MAXURE_NUM = 32000
		end
		SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
		ResetItemFinalAttr(Item_Traget)
	    AddItemEffect(role , Item_Traget , 1  )
	else							
		item_energe = 0.5 * item_energe 
	end
	SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )
end