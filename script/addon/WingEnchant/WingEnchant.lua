--[[
	[Note]:
		1.	When the wing created, should be with the item quality: 90. For example:
				&make wingid,quantity,90
				GiveItem(role, wingid, quantity, 90)
		2.	Use the ItemInfo lines example that here, or attributes will not work.

	[Installation]:
		1.	Create New folder called "WingEnchant" at: \resource\script\addon\
		1.1	Put this file inside that new folder
		1.2	Go to: \resource\script\addon\
		1.3	Open the file "Install.lua"
		1.4	Put the following inside it:
				dofile(GetResPath("script/addon/WingEnchant/WingEnchant.lua"))
		2	Change the "Wings.Conf.StateID" according to the id you put the skilleff.txt line;
		3 	Go to \resource\script\calculate:
		3.1	Open the file: Functions.lua
		3.2	Search for: SetChaParam(role, 1, now_tick + freq * time)
		3.3	Put the following below that:
				Wings.ApplyEffect(role)
		4.	Go to \resource\script\calculate:
		4.1	Open the file: AttrCalculate.lua
		4.2	Search for: Creat_Item(item, item_type, item_lv, item_event)
		4.3	Below "Reset_item_add()" put the following:
				--Wings
				if item_event == 90 then
					for i = ITEMATTR_VAL_STR, ITEMATTR_VAL_STA do
						Add_Item_Attr(i, 0)
					end
				end	
		5.	That's all!
		
	[ItemInfo]:
		7694	Wings Unseal Device	n2568	10130005	0	0	0	0	0	0	86	0	0	0	0	0	1	0	0	1	99	0	10000	-1,-2,-2,-2	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0	1000,1000	0,0	0	0	0	0	0	0	0	0	0	WingsUnseal	0	0,0,0,0,0,0,0,0	0,0,0,0,0,0,0,0	0,0	0,0	0,0	Able to unseal Wings that can be enchanted. Double click to use.	0
		7695	Wings Strength Enchant	n29101	10130005	0	0	0	0	0	0	86	0	0	0	0	0	1	0	0	1	99	0	10000	-1,-2,-2,-2	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0	0,0	0,0	0	0	0	0	0	0	0	0	0	WingAttrBoost	0	0,0,0,0,0,0,0,0	0,0,0,0,0,0,0,0	0,0	0,0	0,0	Raise wing's strength by 1 upon usage. Can be improved to 300 attributes points at most.	0
		7696	Wings Constitution Enchant	n29098	10130005	0	0	0	0	0	0	86	0	0	0	0	0	1	0	0	1	99	0	10000	-1,-2,-2,-2	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0	0,0	0,0	0	0	0	0	0	0	0	0	0	WingAttrBoost	0	0,0,0,0,0,0,0,0	0,0,0,0,0,0,0,0	0,0	0,0	0,0	Raise wing's constitution by 1 upon usage. Can be improved to 300 attributes points at most.	0
		7697	Wings Accuracy Enchant	n29099	10130005	0	0	0	0	0	0	86	0	0	0	0	0	1	0	0	1	99	0	10000	-1,-2,-2,-2	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0	0,0	0,0	0	0	0	0	0	0	0	0	0	WingAttrBoost	0	0,0,0,0,0,0,0,0	0,0,0,0,0,0,0,0	0,0	0,0	0,0	Raise wing's accuracy by 1 upon usage. Can be improved to 300 attributes points at most.	0
		7698	Wings Agility Enchant	n29100	10130005	0	0	0	0	0	0	86	0	0	0	0	0	1	0	0	1	99	0	10000	-1,-2,-2,-2	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0	0,0	0,0	0	0	0	0	0	0	0	0	0	WingAttrBoost	0	0,0,0,0,0,0,0,0	0,0,0,0,0,0,0,0	0,0	0,0	0,0	Raise wing's agility by 1 upon usage. Can be improved to 300 attributes points at most.	0
		7699	Wings Spirit Enchant	n29097	10130005	0	0	0	0	0	0	86	0	0	0	0	0	1	0	0	1	99	0	10000	-1,-2,-2,-2	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0	0,0	0,0	0	0	0	0	0	0	0	0	0	WingAttrBoost	0	0,0,0,0,0,0,0,0	0,0,0,0,0,0,0,0	0,0	0,0	0,0	Raise wing's spirit by 1 upon usage. Can be improved to 300 attributes points at most.	0
		7700	Red Wings	n1225	10130005	0	0	0	0	0	0	44	0	0	0	7	1	0	0	0	1	1	1	20000	-1,-2,-2,-2	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0,100	0,100	0,100	0,100	0,100	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0	1000,1000	1000,1000	0	0	0	0	0	0	0	0	0	0	0	0,0,0,0,0,0,0,0	0,0,0,0,0,0,0,0	502,24	0,0	0,0	Red Wings. Place at 1st inventory slot to see effect	0
		7701	Yellow Wings	n1224	10130005	0	0	0	0	0	0	44	0	0	0	7	1	0	0	0	1	1	1	20000	-1,-2,-2,-2	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0,200	0,200	0,200	0,200	0,200	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0	1000,1000	1000,1000	0	0	0	0	0	0	0	0	0	0	0	0,0,0,0,0,0,0,0	0,0,0,0,0,0,0,0	503,24	0,0	0,0	Yellow Wings. Place at 1st inventory slot to see effect	0
		7702	Blue Wings	n1223	10130005	0	0	0	0	0	0	44	0	0	0	7	1	0	0	0	1	1	1	20000	-1,-2,-2,-2	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	-1,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0,300	0,300	0,300	0,300	0,300	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0	1000,1000	1000,1000	0	0	0	0	0	0	0	0	0	0	0	0,0,0,0,0,0,0,0	0,0,0,0,0,0,0,0	504,24	0,0	0,0	Blue Wings. Place at 1st inventory slot to see effect	0
	
	[Skilleff]:
		199	Wings	-1	0	State_Wings_Add	State_Wings_Rem	1	0	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	-1	0	0	0	0	-1	0	0
]]
print("* Loading WingEnchant.lua")

Wings							= {}
Wings.Conf						= {}
Wings.UpRate					= {}
Wings.ItemID					= {}
		
Wings.Conf.Slot					= 1								-- Inventory slot which  wing should be placed to have bonuses.
Wings.Conf.StateID				= 199							-- ID from skilleff.txt to apply state to character.
Wings.Conf.MaxLv				= 50000							-- Max level that wing can reach.
Wings.Conf.BlueID				= 7957							-- That to cap enchant when blue wing reach +300.
--------Крылья с острова Смерти
Wings.ItemID[7480]				= {MaxLv = 300, NewID = 7967}
Wings.ItemID[7967]				= {MaxLv = 600, NewID = nil}	
--------Крылья СПБ
Wings.ItemID[7481]				= {MaxLv = 300, NewID = 142}	
Wings.ItemID[142]				= {MaxLv = 600, NewID = nil}	
--Крылья Миража Сибири
Wings.ItemID[7535]				= {MaxLv = 600, NewID = 7538}	
Wings.ItemID[7538]				= {MaxLv = 1000, NewID = nil}	



for i 							= 0, 50000 do						-- Lv1-300 Wings enchant rate.
	Wings.UpRate[i]				= .8								-- 100%.
end

Wings.Message					= {								-- Messages that will appear when using Enchant item.
	"\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \226 \236\238\240\229!",
	"\205\229\228\238\241\242\224\242\238\247\237\238 \241\226\238\225\238\228\237\238\227\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229",
	"\194\237\243\242\240\229\237\237\255\255 \238\248\232\225\234\224.\209\238\238\225\249\232\242\229 \210\232\236\243\240\243!",
	"\207\238\236\229\241\242\232\242\229 \202\240\251\235\252\255 \226 1 \241\235\238\242 \232\237\226\229\237\242\224\240\255",
	"%s \243\230\229 \228\238\241\242\232\227\235\232 \236\224\234\241\232\236\224\235\252\237\238\233 \239\240\238\234\224\247\234\232!",
	"\202\240\251\235\252\255 %s \225\251\235\232 \243\235\243\247\248\229\237\251 \228\238 %s",
	"\205\229 \243\228\224\235\238\241\252 \243\228\224\235\232\242\252 \234\240\251\235\252\255",
	"\194\251 \243\235\243\247\248\232\235\232 %s",
	"\211\235\243\247\248\229\237\232\229 \237\229 \243\228\224\235\238\241\252...",
}

Wings.HasWing					= function(Player)
	local Slot					= GetChaItem(Player, 2, (Wings.Conf.Slot	-1))
	local SlotID					= GetItemID(Slot)
	if (Wings.ItemID[SlotID] ~= nil) then
		return 1
	end
	return 0
end

Wings.GetLv						= function(Wing)
	local STR 					= GetItemAttr(Wing, ITEMATTR_VAL_STR)
	local CON 					= GetItemAttr(Wing, ITEMATTR_VAL_CON)
	local AGI 					= GetItemAttr(Wing, ITEMATTR_VAL_AGI)
	local ACC 					= GetItemAttr(Wing, ITEMATTR_VAL_DEX)
	local SPR 					= GetItemAttr(Wing, ITEMATTR_VAL_STA)
	return (STR + CON + AGI + ACC + SPR)
end


Wings_Demon						= function(Player, Item)
	if (GetChaFreeBagGridNum ( Player ) < 1) then
		HelpInfo(Player, 0, "Чтобы открыть крылья, вам нужно иметь хотя бы 1 свободную ячейку в интвентаре.")
		UseItemFailed(Player)
		return
	end
	if (ChaIsBoat(Player) == 1) then
		SystemNotice(Player, Wings.Message[1])
		UseItemFailed(Player)
		return
	end
	if (GetChaFreeBagGridNum(Player) < 1) then
		SystemNotice(Player, Wings.Message[2])
		UseItemFailed(Player)
		return
	end
	GiveItem(Player, 0, 7481, 1, 90)
	PlayEffect(Player, 345)
end

Wing_Angel						= function(Player, Item)
	if (GetChaFreeBagGridNum ( Player ) < 1) then
		HelpInfo(Player, 0, "Чтобы открыть крылья, вам нужно иметь хотя бы 1 свободную ячейку в интвентаре.")
		UseItemFailed(Player)
		return
	end
	if (ChaIsBoat(Player) == 1) then
		SystemNotice(Player, Wings.Message[1])
		UseItemFailed(Player)
		return
	end
	if (GetChaFreeBagGridNum(Player) < 1) then
		SystemNotice(Player, Wings.Message[2])
		UseItemFailed(Player)
		return
	end
	GiveItem(Player, 0, 7480, 1, 90)
	PlayEffect(Player, 345)
end

Wings_Yellow						= function(Player, Item)
	if (GetChaFreeBagGridNum ( Player ) < 1) then
		HelpInfo(Player, 0, "Чтобы открыть крылья, вам нужно иметь хотя бы 1 свободную ячейку в интвентаре.")
		UseItemFailed(Player)
		return
	end
	if (ChaIsBoat(Player) == 1) then
		SystemNotice(Player, Wings.Message[1])
		UseItemFailed(Player)
		return
	end
	if (GetChaFreeBagGridNum(Player) < 1) then
		SystemNotice(Player, Wings.Message[2])
		UseItemFailed(Player)
		return
	end
	GiveItem(Player, 0, 7968, 1, 90)
	PlayEffect(Player, 345)
end

Wings_Blue						= function(Player, Item)
	if (GetChaFreeBagGridNum ( Player ) < 1) then
		HelpInfo(Player, 0, "Чтобы открыть крылья, вам нужно иметь хотя бы 1 свободную ячейку в интвентаре.")
		UseItemFailed(Player)
		return
	end
	if (ChaIsBoat(Player) == 1) then
		SystemNotice(Player, Wings.Message[1])
		UseItemFailed(Player)
		return
	end
	if (GetChaFreeBagGridNum(Player) < 1) then
		SystemNotice(Player, Wings.Message[2])
		UseItemFailed(Player)
		return
	end
	GiveItem(Player, 0, 7535, 1, 90)
	PlayEffect(Player, 345)
end



WingAttrBoost					= function(Player, Item)
	if (ChaIsBoat(Player) == 1) then
		SystemNotice(Player, Wings.Message[1])
		UseItemFailed(Player)
		return
	end
	local Injection				= {}
	Injection[7950]				= {AttrType = ITEMATTR_VAL_STR, AttrAdd = 1, AttrName = 'Strength'}			--Wings Strength Enchant
	Injection[7951]				= {AttrType = ITEMATTR_VAL_CON, AttrAdd = 1, AttrName = 'Constitution'}		--Wings Constitution Enchant
	Injection[7952]				= {AttrType = ITEMATTR_VAL_DEX, AttrAdd = 1, AttrName = 'Accuracy'}			--Wings Accuracy Enchant
	Injection[7953]				= {AttrType = ITEMATTR_VAL_AGI, AttrAdd = 1, AttrName = 'Agility'}			--Wings Agility Enchant
	Injection[7954]				= {AttrType = ITEMATTR_VAL_STA, AttrAdd = 1, AttrName = 'Spirit'}			--Wings Spirit Enchant
	local ItemId					= GetItemID(Item)
	if Injection[ItemId] == nil then
		SystemNotice(Player, Wings.Message[3])
		UseItemFailed(Player)
		return
	end
	local Slot					= GetChaItem(Player, 2, (Wings.Conf.Slot	-1))
	local SlotID				= GetItemID(Slot)
	local Name					= GetItemName(SlotID)
	if (Slot == nil) then
		SystemNotice(Player, Wings.Message[4])
		UseItemFailed(Player)
		return
	end
	if (Wings.ItemID[SlotID] == nil) then
		SystemNotice(Player, Wings.Message[4])
		UseItemFailed(Player)
		return
	end
	local WingLv				= Wings.GetLv(Slot)
	local upChance				= Percentage_Random(Wings.UpRate[WingLv])		
	local statAdd				= Injection[ItemId].AttrAdd
	local attrNum 				= GetItemAttr(Slot, Injection[ItemId].AttrType)
	local newLv					= WingLv + statAdd
	local TakeWing				= 0		
	if (SlotID == Wings.Conf.BlueID and WingLv == Wings.ItemID[SlotID].MaxLv) then
		SystemNotice(Player, string.format(Wings.Message[5], Name))
		UseItemFailed(Player)
		return
	end	
	if (upChance == 1) then
		if (SlotID ~= Wings.Conf.BlueID and newLv == Wings.ItemID[SlotID].MaxLv) then
			--Take old stats
			local Attr_STR 				= GetItemAttr(Slot, ITEMATTR_VAL_STR)
			local Attr_CON 				= GetItemAttr(Slot, ITEMATTR_VAL_CON)
			local Attr_DEX 				= GetItemAttr(Slot, ITEMATTR_VAL_DEX)
			local Attr_AGI 				= GetItemAttr(Slot, ITEMATTR_VAL_AGI)
			local Attr_STA 				= GetItemAttr(Slot, ITEMATTR_VAL_STA)
			SystemNotice(Player, "STR = "..Attr_STR.."_CON = "..Attr_CON.."_DEX = "..Attr_DEX.."_AGI = "..Attr_AGI.."_STA = "..Attr_STA)
			SystemNotice(Player, "OLDItemID = "..SlotID)
			TakeWing			= RemoveChaItem(Player, SlotID, 1, 2, (Wings.Conf.Slot - 1), 2, 1)	
			r1,r2				= MakeItem(Player, Wings.ItemID[SlotID].NewID, 1, 90)
			local NewWing		= GetChaItem(Player, 2, r2)
			local NewName		= GetItemName(GetItemID(NewWing))
			SystemNotice(Player, string.format(Wings.Message[6], Name, NewName))
			--Give old stats
			NewSlotID				= GetItemID(Slot)
			SystemNotice(Player, "NewItemID = "..NewSlotID)
			if (NewSlotID == Wings.ItemID[SlotID].NewID) then
				SetItemAttr(Slot, ITEMATTR_VAL_STR, Attr_STR)
				SetItemAttr(Slot, ITEMATTR_VAL_CON, Attr_CON)
				SetItemAttr(Slot, ITEMATTR_VAL_DEX, Attr_DEX)
				SetItemAttr(Slot, ITEMATTR_VAL_AGI, Attr_AGI)
				SetItemAttr(Slot, ITEMATTR_VAL_STA, Attr_STA)
				SystemNotice(Player, "Successfull transfer stats.")
			else
				SystemNotice(Player, "No search wings in 1 slot.")
			end
			PlayEffect(Player, 345)
			RefreshCha(Player)
			if (TakeWing == 0) then
				SystemNotice(Player, Wings.Message[7])
				UseItemFailed(Player)
				return
			end
		else
			attrNum				= attrNum + statAdd
			SetItemAttr(Slot, Injection[ItemId].AttrType, attrNum)
			SystemNotice(Player, string.format(Wings.Message[8], Name))
			PlayEffect(Player, 345)
			RefreshCha(Player)
		end
	else
		SystemNotice(Player, Wings.Message[9])
		PlayEffect(Player, 346)
	end
end

Wings.ApplyEffect				= function(Player)
	if (IsPlayer(Player) == 1) then
		local Slot				= GetChaItem(Player, 2, (Wings.Conf.Slot	-1))
		local SlotID				= GetItemID(Slot)
		if (Wings.HasWing(Player) == 1) then
			AddState(Player, Player, Wings.Conf.StateID, 1, 3600)
		else
			if (GetChaStateLv(Player, Wings.Conf.StateID) > 0) then
				RemoveState(Player, Wings.Conf.StateID)
			end
		end
	end
end

State_Wings_Add 				= function(Player, StateLv)
	local Slot					= GetChaItem(Player, 2, (Wings.Conf.Slot	-1))
	local wingStr 				= GetItemAttr(Slot, ITEMATTR_VAL_STR)
	local wingSta 				= GetItemAttr(Slot, ITEMATTR_VAL_STA)			
	local wingAgi 				= GetItemAttr(Slot, ITEMATTR_VAL_AGI)			
	local wingCon 				= GetItemAttr(Slot, ITEMATTR_VAL_CON)
	local wingDex 				= GetItemAttr(Slot, ITEMATTR_VAL_DEX)
	local strVal					= 0
	local sprVal					= 0
	local agiVal					= 0
	local conVal					= 0
	local accVal					= 0
	if (Wings.HasWing(Player) == 1) then
		strVal					= wingStr
		sprVal					= wingSta
		agiVal					= wingAgi
		conVal					= wingCon
		accVal					= wingDex
	end
	SetCharaStatev(strVal, Player, ATTR_STATEV_STR, "STATE_WING")
	SetCharaStatev(sprVal, Player, ATTR_STATEV_STA, "STATE_WING")
	SetCharaStatev(agiVal, Player, ATTR_STATEV_AGI, "STATE_WING")
	SetCharaStatev(conVal, Player, ATTR_STATEV_CON, "STATE_WING")
	SetCharaStatev(accVal, Player, ATTR_STATEV_DEX, "STATE_WING")			
	RefreshCha(Player)			
end
	
State_Wings_Rem 				= function(Player, StateLv)
	RemCharaStatev(0, Player, ATTR_STATEV_STR, "STATE_WING") 
	RemCharaStatev(0, Player, ATTR_STATEV_AGI, "STATE_WING") 
	RemCharaStatev(0, Player, ATTR_STATEV_DEX, "STATE_WING") 
	RemCharaStatev(0, Player, ATTR_STATEV_CON, "STATE_WING") 
	RemCharaStatev(0, Player, ATTR_STATEV_STA, "STATE_WING")
	RefreshCha(Player)		
end	