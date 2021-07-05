print("* Loading RB System.lua")

--[[
	[Установка]:
		1.	Загрузить аддон и подгрузить.
		2.	Создать НПС, по примеру ниже:
			###	Character RB	1	564	0	217275,277575	217275,277575	180	Argent City	1	1	RBNPC	0
		3.	Идем в : \resource\script\MisSdk\
		3.1	Открываем файл: NpcSdk.lua
		3.2	Ищем: return ChangeItem(character,npc)
		3.3	И вставляем ниже:
			elseif item.func == RB.Push then
				return RB.Push(character,item.p1)
		4.	Усе готово, бро!
]]

RB								= {}				-- Массив объектов ресета
RB.List							= {}				-- Массив объектов для листа ресетов
RB.Conf							= {}				-- Массив объектов для конфигурации ресета

RB.Conf.Active					= true			-- Включить/выключить НПС с РБ
RB.Conf.Page					= 2				-- Стартовая страница у НПС с РБ (лучше не менять)

-- Требования и награды у НПС с РБ
-- Чтобы добавить следующий, просто дублируем RB.List[i]
-- НПС автоматически генерирует текст, исходя из требований ниже...
RB.List[1]						= {
	MinLv							= 200,
	MaxLv							= 10000,
	Need							= {
		Gold						= 2000000,
		ItemID						= 2235,
		Quantity					= 1,
	},
	Reward							= {
		Gold						= 0,
		Item						= {
			[1]						= {ItemID = nil, Quantity = nil, Quality = nil},
			[2]						= {ItemID = nil, Quantity = nil, Quality = nil},
		}
	}
}

RB.List[2]						= {
	MinLv							= 400,
	MaxLv							= 10000,
	Need							= {
		Gold						= 5000000,
		ItemID						= 6949,
		Quantity					= 1,
	},
	Reward							= {
		Gold						= 0,
		Item						= {
			[1]						= {ItemID = nil, Quantity = nil, Quality = nil},
			[2]						= {ItemID = nil, Quantity = nil, Quality = nil},
		}
	}
}

-- Требования и награды у НПС с РБ
-- Чтобы добавить следующий, просто дублируем RB.List[i]
-- НПС автоматически генерирует текст, исходя из требований ниже...
-- RB.List[3]						= {
	-- MinLv							= 31,
	-- MaxLv							= 40,
	-- Need							= {
		-- Gold						= 0,
		-- ItemID						= 885,
		-- Quantity					= 1,
	-- },
	-- Reward							= {
		-- Gold						= 0,
		-- Item						= {
			-- [1]						= {ItemID = nil, Quantity = nil, Quality = nil},
			-- [2]						= {ItemID = nil, Quantity = nil, Quality = nil},
		-- }
	-- }
-- }

-- Сообщения для разговора с НПС
RB.Talk							= {
	-- "Привет. Я могу помочь тебе переродиться!",
	-- "Переродиться",
	-- "Уйти",
	-- "Каково уровня ваш персонаж?",
	-- "Ур.%d-%d",
	-- "[Далее]",
	-- "[Назад]",
	-- "После перерождения ваши очки умений и характеристик сбросятся! ",
	-- "Переродиться",
	-- "Пожалуйста, снимите экипировку!",
	-- "Персонаж должен быть от Ур.%d до Lv%d!",
	-- "У вас должно быть %dg золота для перерождения!",
	-- "Требуется %dx %s для выполнения перерождения!",
	-- "{%s}, успешно сделал перерождение!",
	-- "Извините, в настоящее время система недоступна!",
	"\207\240\232\226\229\242. \223 \236\238\227\243 \239\238\236\238\247\252 \242\229\225\229 \239\229\240\229\240\238\228\232\242\252\241\255!",
	"\207\229\240\229\240\238\228\232\242\252\241\255",
	"\211\233\242\232",
	"\202\224\234\238\226\238 \243\240\238\226\237\255 \226\224\248 \239\229\240\241\238\237\224\230?",
	"\211\240.%d-%d",
	"[\196\224\235\229\229]",
	"[\205\224\231\224\228]",
	"\207\238\241\235\229 \239\229\240\229\240\238\230\228\229\237\232\255 \226\224\248\232 \238\247\234\232 \243\236\229\237\232\233 \232 \245\224\240\224\234\242\229\240\232\241\242\232\234 \241\225\240\238\241\255\242\241\255!",
	"\207\229\240\229\240\238\228\232\242\252\241\255",
	"\207\238\230\224\235\243\233\241\242\224, \241\237\232\236\232\242\229 \253\234\232\239\232\240\238\226\234\243!",
	"\207\229\240\241\238\237\224\230 \228\238\235\230\229\237 \225\251\242\252 \238\242 \211\240.%d \228\238 Lv%d!",
	"\211 \226\224\241 \228\238\235\230\237\238 \225\251\242\252 %dg \231\238\235\238\242\224 \228\235\255 \239\229\240\229\240\238\230\228\229\237\232\255!",
	"\210\240\229\225\243\229\242\241\255 %dx %s \228\235\255 \226\251\239\238\235\237\229\237\232\255 \239\229\240\229\240\238\230\228\229\237\232\255!",
	"{%s}, \243\241\239\229\248\237\238 \241\228\229\235\224\235 \239\229\240\229\240\238\230\228\229\237\232\229!",
	"\200\231\226\232\237\232\242\229, \226 \237\224\241\242\238\255\249\229\229 \226\240\229\236\255 \241\232\241\242\229\236\224 \237\229\228\238\241\242\243\239\237\224!",
}

-- Функция НПС
RBNPC							= function()
	if (RB.Conf.Active) then
		Talk(1, RB.Talk[1])
		Text(1, RB.Talk[2], JumpPage, RB.Conf.Page)
		Text(1, RB.Talk[3], CloseTalk)
		RB.GenerateText()
	else
		Talk(1, RB.Talk[15])
	end
end

-- Генератор текста на странице
-- Лимит 7 предметов на странице
RB.GenerateText					= function()
	local Page,Count,Total			= RB.Conf.Page,0,0
	for i,v in pairs(RB.List) do
		Total						= Total + 1
	end
	local Pages						= math.ceil(Total/7) + 2
	Talk(Page, RB.Talk[4])	
	for i,v in pairs(RB.List) do
		if (Count == 7) then
			Text(Page, RB.Talk[6], JumpPage, Page + 1)			
			Page					= Page + 1
			Talk(Page, RB.Talk[4])					
			Count					= 0
		end
		local Range					= string.format(RB.Talk[5], RB.List[i].MinLv, RB.List[i].MaxLv)
		Text(Page, Range, JumpPage, Pages)
		RB.GeneratePage(Pages, i, Page)
		Pages						= Pages + 1
		Count						= Count + 1
	end
end

-- Генератор страниц для НПС
RB.GeneratePage					= function(Pages, i, BackPage)
	Talk(Pages, RB.Talk[8])
	Text(Pages, RB.Talk[9], RB.Push, i)	
	Text(Pages, RB.Talk[7], JumpPage, BackPage)
end

-- Если игрок все снял, то...
RB.Push							= function(Player, i)
	if (IsEquip(Player) == LUA_TRUE) then
		PopupNotice(Player, RB.Talk[10])
		return
	end
	if (GetChaAttr(Player, ATTR_LV) < RB.List[i].MinLv or GetChaAttr(Player, ATTR_LV) > RB.List[i].MaxLv) then
		PopupNotice(Player, string.format(RB.Talk[11], RB.List[i].MinLv, RB.List[i].MaxLv))
		return
	end
	if (GetChaAttr(Player, ATTR_GD) < RB.List[i].Need.Gold) then
		PopupNotice(Player, string.format(RB.Talk[12], RB.List[i].Need.Gold))
		return
	end
	if (CheckBagItem(Player, RB.List[i].Need.ItemID) < RB.List[i].Need.Quantity) then
		PopupNotice(Player, string.format(RB.Talk[13], RB.List[i].Need.Quantity, GetItemName(RB.List[i].Need.ItemID)))
		return
	end
	if (GetChaAttr(Player, ATTR_CSAILEXP) >= i) then
		--PopupNotice(Player, "Вы уже делали "..i.." перерождение! ")
		PopupNotice(Player, "\194\251 \243\230\229 \228\229\235\224\235\232 "..i.." \239\229\240\229\240\238\230\228\229\237\232\229! ")
		return
	end
	RB.Begin(Player, i)
end

-- Сбро уровня персонажа и базовых характеристик
-- Забираем вещи и золото.
-- Выдаем награду персонажу
-- Пишем в систему, что персонаж переродился.
RB.Begin						= function(Player, i)
	local QLZX= GetSkillLv ( Player, SK_QLZX )
	local cha_skill_num=GetChaAttr(Player, ATTR_TP  )
	local clear_skill_num=ClearFightSkill(Player)

	cha_skill_num=cha_skill_num+clear_skill_num

	if QLZX == 1 then
		cha_skill_num = cha_skill_num - 1
		AddChaSkill ( Player , SK_QLZX , 1 , 1 , 0 )
	end

	SetChaAttr(Player, ATTR_TP ,cha_skill_num ) 

	local ap = GetChaAttr( Player , ATTR_AP )

	local cha_str = GetChaAttr(Player, ATTR_BSTR  ) 
	local cha_dex = GetChaAttr(Player, ATTR_BDEX  ) 
	local cha_agi = GetChaAttr(Player, ATTR_BAGI  ) 
	local cha_con = GetChaAttr(Player, ATTR_BCON ) 
	local cha_sta = GetChaAttr(Player, ATTR_BSTA )
	ap=ap+cha_str+cha_dex+cha_agi+cha_con+cha_sta-25
	SetChaAttr(Player, ATTR_BSTR ,5 ) 
	SyncChar(Player,4)
	SetChaAttr(Player, ATTR_BDEX ,5 ) 
	SyncChar(Player,4)
	SetChaAttr(Player, ATTR_BAGI ,5 ) 
	SyncChar(Player,4)
	SetChaAttr(Player, ATTR_BCON,5 ) 
	SyncChar(Player,4)
	SetChaAttr(Player, ATTR_BSTA,5 ) 
	SyncChar(Player,4)
	SetChaAttr(Player , ATTR_AP,ap  )
	SyncChar(Player,4)
	AddSailExp(Player, npc , 1 , 1 )
	local sk_add = SK_ZSSL
	AddChaSkill ( Player , sk_add , i , i , 0 )
	TakeMoney(Player, 0, RB.List[i].Need.Gold)
	TakeItem(Player, 0, RB.List[i].Need.ItemID, RB.List[i].Need.Quantity)
	PlayEffect(Player, 361)	
	--GMNotice(string.format(RB.Talk[14], GetChaDefaultName(Player), GetChaDefaultName(Player)))
	--GMNotice("Игрок - "..GetChaDefaultName(Player).." успешно прошел ["..i.."] перерождение! ")
	GMNotice("\200\227\240\238\234 - "..GetChaDefaultName(Player).." \243\241\239\229\248\237\238 \239\240\238\248\229\235 ["..i.."] \239\229\240\229\240\238\230\228\229\237\232\229! ")
	RB.Rewards(Player, i)
	RB.RebirthSkill(Player)
	RefreshCha(Player)
	
end

-- Читаем награждения из таблицы и выдаем персонажу
RB.Rewards						= function(Player, i)
	if (RB.List[i].Reward.Gold > 0) then
		AddMoney(Player, 0, RB.List[i].Need.Gold)
	end
	for k							= 1, table.getn(RB.List[i].Reward.Item) do
		if (RB.List[i].Reward.Item[k].ItemID ~= nil) then
			if (GetChaFreeBagGridNum(Player) > 0) then
				GiveItem(Player, 0, RB.List[i].Reward.Item[k].ItemID, RB.List[i].Reward.Item[k].Quantity, RB.List[i].Reward.Item[k].Quality)
			else
				GiveItemX(Player, 0, RB.List[i].Reward.Item[k].ItemID, RB.List[i].Reward.Item[k].Quantity, RB.List[i].Reward.Item[k].Quality)
			end
		end
	end
end

-- Проверяем скиллы перерождения. Если они есть, то возвращаем их.
RB.RebirthSkill					= function(Player)
	local RebirthEXP 				= GetChaAttr( Player, ATTR_CSAILEXP)
	GiveItem_zsbook(Player)	
	GiveItem_chibang(Player)
end



--выдачи книги перерождения
function GiveItem_zsbook ( role )
	local RebirthEXP 				= GetChaAttr( role, ATTR_CSAILEXP)
	local cha_job 					= GetChaAttr(role, ATTR_JOB)
	if RebirthEXP == 1 then
		if cha_job == 8 then
			GiveItem( role , 0 , 2957 , 1 , 4 )
		elseif cha_job == 9 then
			GiveItem( role , 0 , 2956 , 1 , 4 )
		elseif cha_job == 12 then
			GiveItem( role , 0 , 2961 , 1 , 4 )
		elseif cha_job == 13 then
			GiveItem( role , 0 , 2959 , 1 , 4 )
		elseif cha_job == 14 then
			GiveItem( role , 0 , 2958 , 1 , 4 )
		elseif cha_job == 16 then
			GiveItem( role , 0 , 2960 , 1 , 4 )
		end
	elseif RebirthEXP == 2 then
		if cha_job == 8 then
			GiveItem( role , 0 , 16013 , 1 , 4 )
		elseif cha_job == 9 then
			GiveItem( role , 0 , 16012 , 1 , 4 )
		elseif cha_job == 12 then
			GiveItem( role , 0 , 16017 , 1 , 4 )
		elseif cha_job == 13 then
			GiveItem( role , 0 , 16015 , 1 , 4 )
		elseif cha_job == 14 then
			GiveItem( role , 0 , 16014 , 1 , 4 )
		elseif cha_job == 16 then
			GiveItem( role , 0 , 16016 , 1 , 4 )
		end
	elseif RebirthEXP == 3 then
		if cha_job == 8 then
			GiveItem( role , 0 , 16020 , 1 , 4 )
		elseif cha_job == 9 then
			GiveItem( role , 0 , 16019 , 1 , 4 )
		elseif cha_job == 12 then
			GiveItem( role , 0 , 16024 , 1 , 4 )
		elseif cha_job == 13 then
			GiveItem( role , 0 , 16022 , 1 , 4 )
		elseif cha_job == 14 then
			GiveItem( role , 0 , 16021 , 1 , 4 )
		elseif cha_job == 16 then
			GiveItem( role , 0 , 16023 , 1 , 4 )
		end
	end
end

--выдача крыльев перерождения
function GiveItem_chibang ( role  )
    local cha_type 					= GetChaTypeID ( role )	
	local RebirthEXP 				= GetChaAttr( role, ATTR_CSAILEXP)
	if RebirthEXP == 1 then
		if cha_type==1 then
			GiveItem( role , 0 , 134  , 1 , 4 )
		elseif cha_type==2 then
			GiveItem( role , 0 , 138  , 1 , 4 )
		elseif cha_type==3 then
			GiveItem( role , 0 , 128  , 1 , 4 )
		elseif cha_type==4 then
			GiveItem( role , 0 , 131  , 1 , 4 )
		end
	elseif RebirthEXP == 2 then
		if cha_type==1 then
			GiveItem( role , 0 , 136  , 1 , 4 )
		elseif cha_type==2 then
			GiveItem( role , 0 , 139  , 1 , 4 )
		elseif cha_type==3 then
			GiveItem( role , 0 , 129  , 1 , 4 )
		elseif cha_type==4 then
			GiveItem( role , 0 , 132  , 1 , 4 )
		end
	elseif RebirthEXP == 3 then
		if cha_type==1 then
			GiveItem( role , 0 , 137  , 1 , 4 )
		elseif cha_type==2 then
			GiveItem( role , 0 , 140  , 1 , 4 )
		elseif cha_type==3 then
			GiveItem( role , 0 , 130  , 1 , 4 )
		elseif cha_type==4 then
			GiveItem( role , 0 , 133  , 1 , 4 )
		end
	
	end
end