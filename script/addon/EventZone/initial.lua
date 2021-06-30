print("* Loading MobZones")	
	-- ******************************************************************************************************************************************************************************* --
	-- ****************************************************************************** Custom Boss Spawn ****************************************************************************** --
	-- ***************************************************************************** Scripted by Angelix ***************************************************************************** --
	-- ******************************************************************************************************************************************************************************* --
	-- ******************************************************************************* Global Variable ******************************************************************************* --
	-- ******************************************************************************************************************************************************************************* --
	CBS = {Conf = {}, Hook = {}, Maps = {}, Text = {}, Chat = {}}
	-- ******************************************************************************************************************************************************************************* --
	-- ******************************************************************************** Main Variable ******************************************************************************** --
	-- ******************************************************************************************************************************************************************************* --
	CBS.Conf.Active = true																			--	Enable/disable the whole script.
	--CBS.Conf.Name = 'Boss Summon'																	--	Name of the script. Will be used throughout notices, if enabled.
	CBS.Conf.Name = '\209\232\241\242\229\236\224 \225\238\241\241\238\226'																	--	Name of the script. Will be used throughout notices, if enabled.
	CBS.Conf.Text = true																			--	Enable/disable system notices.
	--CBS.Conf.ChatCommand = 'Боссы'															--	Chat command atk can use to bring up window showing current map tracker.
	CBS.Conf.ChatCommand = '\193\238\241\241\251'															--	Chat command atk can use to bring up window showing current map tracker.
	-- ******************************************************************************************************************************************************************************* --
	-- ******************************************************************************** Text Variable ******************************************************************************** --
	-- ******************************************************************************************************************************************************************************* --
	--CBS.Text.KillCount = '[%s]: Killed [%s] (%d/%d) in [%s].'
	--CBS.Text.Summon = '[%s]: A boss has been summoned inside [%s] (%d, %d)!'
	--CBS.Text.NotActive = '[%s]: This feature is not currently active.'
	--CBS.Text.MapNotEnabled = '[%s]: This map is has not active trackers.'
	CBS.Text.KillCount = '[%s]: \211\225\232\242\238 [%s] (%d/%d) \226 [%s].'
	CBS.Text.Summon = '[%s]: \193\238\241\241 \239\238\255\226\232\235\241\255 \226 [%s] (%d, %d)!'
	CBS.Text.NotActive = '[%s]: \194 \237\224\241\242\238\255\249\229\229 \226\240\229\236\255 \237\229\228\238\241\242\243\239\237\238.'
	CBS.Text.MapNotEnabled = '[%s]: \205\224 \253\242\238\233 \234\224\240\242\229 \241\232\241\242\229\236\224 \193\238\241\241\238\226 \237\229 \240\224\225\238\242\224\229\242.'
	
	-- ******************************************************************************************************************************************************************************* --
	-- ******************************************************************************** Map Variables ******************************************************************************** --
	-- ******************************************************************************************************************************************************************************* --
	--	'Name':		Name given to the map. This will be used in notices.
	--	'Active':	Enable/disable the boss summon in this map.
	--	'Time':		Time (in seconds) for boss to be alive.
	--	'BossID':	dead ID that should be summoned as the boss.
	--	'Count':	Amount of deads that should be killed to summon boss.
	
	--	This is an example. Map should be declared first and then the dead in that map.
	--CBS.Maps['garner'] = {Name = 'Москва', Active = true, dead = {}}
	CBS.Maps['garner'] = {Name = '\204\238\241\234\226\224', Active = true, dead = {}}
-------------------------------------------------------------
-----					Морские мобы					-----
-------------------------------------------------------------
--Водоросль
	CBS.Maps['garner'].dead[97] = {
		Time = 90,
		BossID = 1523,
		Count = 20
							}
--Дикая водоросль
	CBS.Maps['garner'].dead[595] = {
		Time = 90,
		BossID = 1524,
		Count = 20
							}
--Медуза
	CBS.Maps['garner'].dead[90] = {
		Time = 90,
		BossID = 1525,
		Count = 20
							}
--Электрическая медуза
	CBS.Maps['garner'].dead[91] = {
		Time = 90,
		BossID = 1526,
		Count = 20
							}
--Кровожадная медуза
	CBS.Maps['garner'].dead[92] = {
		Time = 90,
		BossID = 1527,
		Count = 20
							}
--Рубиновый дельфин
	CBS.Maps['garner'].dead[1546] = {
		Time = 900,
		BossID = 1551,
		Count = 50
							}
--Спрут
	CBS.Maps['garner'].dead[1547] = {
		Time = 900,
		BossID = 1552,
		Count = 50
							}
--Корабль скелетов-пиратов
	CBS.Maps['garner'].dead[1548] = {
		Time = 900,
		BossID = 1553,
		Count = 50
							}
--Канонерская лодка Мертвой души
	CBS.Maps['garner'].dead[1549] = {
		Time = 900,
		BossID = 1554,
		Count = 50
							}
--Призрачный корабль
	CBS.Maps['garner'].dead[1550] = {
		Time = 900,
		BossID = 1555,
		Count = 50
							}

-------------------------------------------------------------
-----						0 - 10						-----
-------------------------------------------------------------
--Упоротая улитка(2лвл)
	CBS.Maps['garner'].dead[71] = {
		Time = 90,
		BossID = 1400,
		Count = 20
							}
--Лесной упырь(4лвл)	
	CBS.Maps['garner'].dead[103] = {
		Time = 90,
		BossID = 1396,
		Count = 30
							}
--Пчелка(5лвл)
	CBS.Maps['garner'].dead[206] = {
		Time = 90,
		BossID = 1422,
		Count = 30
							}
--Гриб-жадобец(6лвл)
	CBS.Maps['garner'].dead[184] = {
		Time = 90,
		BossID = 1423,
		Count = 20
							}
--Травяная черепаха(7лвл)
	CBS.Maps['garner'].dead[119] = {
		Time = 90,
		BossID = 1397,
		Count = 25
							}
--Милая овечка(8лвл)
	CBS.Maps['garner'].dead[125] = {
		Time = 90,
		BossID = 1401,
		Count = 40
							}
--Пузырчатый моллюск(9лвл)
	CBS.Maps['garner'].dead[213] = {
		Time = 90,
		BossID = 1398,
		Count = 16
							}
--Свинокрыл(10лвл)
	CBS.Maps['garner'].dead[237] = {
		Time = 90,
		BossID = 1416,
		Count = 20
							}
-------------------------------------------------------------
-----						10 - 20						-----
-------------------------------------------------------------							
--Шерстяной ублюдок(12лвл)
	CBS.Maps['garner'].dead[258] = {
		Time = 90,
		BossID = 1413,
		Count = 35
							}
--Устрица(13лвл)
	CBS.Maps['garner'].dead[214] = {
		Time = 90,
		BossID = 1420,
		Count = 15
							}
--Краб-часовой(16лвл)
	CBS.Maps['garner'].dead[227] = {
		Time = 90,
		BossID = 1419,
		Count = 10
							}
--Небесная панда(17лвл)
	CBS.Maps['garner'].dead[189] = {
		Time = 90,
		BossID = 1424,
		Count = 30
							}
--Убойный грибочек(19лвл)
	CBS.Maps['garner'].dead[252] = {
		Time = 90,
		BossID = 1415,
		Count = 40
							}
							
-------------------------------------------------------------
-----						20 - 30						-----
-------------------------------------------------------------	
--Бронекраб(26лвл)
	CBS.Maps['garner'].dead[143] = {
		Time = 90,
		BossID = 1434,
		Count = 20
							}						
-------------------------------------------------------------
-----						30 - 40						-----
-------------------------------------------------------------	
--Безумный кабан(30лвл)
	CBS.Maps['garner'].dead[64] = {
		Time = 90,
		BossID = 850,
		Count = 40
							}
--Летучая мышь-отсос(31лвл)
	CBS.Maps['garner'].dead[82] = {
		Time = 90,
		BossID = 1403,
		Count = 50
							}
--Луговой волк(33лвл)
	CBS.Maps['garner'].dead[136] = {
		Time = 90,
		BossID = 851,
		Count = 30
							}
--Крот-рукоблуд(35лвл)
	CBS.Maps['garner'].dead[88] = {
		Time = 90,
		BossID = 1404,
		Count = 35
							}
--Боксеру-берсерк(34лвл)
	CBS.Maps['garner'].dead[80] = {
		Time = 90,
		BossID = 1521,
		Count = 25
							}
--Глупая улитка(35лвл)
	CBS.Maps['garner'].dead[127] = {
		Time = 90,
		BossID = 1310,
		Count = 35
							}
--Темная слизь(36лвл)
	CBS.Maps['garner'].dead[253] = {
		Time = 90,
		BossID = 1405,
		Count = 30
							}	

---------------------
-- Затерянное очко --
---------------------
--CBS.Maps['abandonedcity'] = {Name = 'Затерянное очко', Active = true, dead = {}}
CBS.Maps['abandonedcity'] = {Name = '\199\224\242\229\240\255\237\237\238\229 \238\247\234\238', Active = true, dead = {}}


CBS.Maps['abandonedcity'].dead[686] = {
		Time = 90,
		BossID = 1464,
		Count = 30
							}
CBS.Maps['abandonedcity'].dead[687] = {
		Time = 90,
		BossID = 1465,
		Count = 30
							}
CBS.Maps['abandonedcity'].dead[688] = {
		Time = 90,
		BossID = 1466,
		Count = 30
							}
CBS.Maps['abandonedcity'].dead[689] = {
		Time = 90,
		BossID = 1467,
		Count = 30
							}
CBS.Maps['abandonedcity'].dead[673] = {
		Time = 900,
		BossID = 1468,
		Count = 3
							}

-----------------
-- Темная топь --
-----------------
--CBS.Maps['darkswamp'] = {Name = 'Темная топь', Active = true, dead = {}}
CBS.Maps['darkswamp'] = {Name = '\210\229\236\237\224\255 \242\238\239\252', Active = true, dead = {}}

	CBS.Maps['darkswamp'].dead[695] = {
		Time = 90,
		BossID = 1469,
		Count = 40
							}
	CBS.Maps['darkswamp'].dead[696] = {
		Time = 90,
		BossID = 1470,
		Count = 40
							}
	CBS.Maps['darkswamp'].dead[697] = {
		Time = 90,
		BossID = 1471,
		Count = 40
							}
	CBS.Maps['darkswamp'].dead[698] = {
		Time = 90,
		BossID = 1472,
		Count = 40
							}
	CBS.Maps['darkswamp'].dead[706] = {
		Time = 900,
		BossID = 1473,
		Count = 3
							}

-----------------
-- Хаос Москвы --
-----------------
--CBS.Maps['garner2'] = {Name = 'Хаос Москвы', Active = true, dead = {}}
CBS.Maps['garner2'] = {Name = '\213\224\238\241 \204\238\241\234\226\251', Active = true, dead = {}}
	CBS.Maps['garner2'].dead[868] = {
		Time = 90,
		BossID = 1474,
		Count = 10
							}	
	CBS.Maps['garner2'].dead[869] = {
		Time = 90,
		BossID = 1475,
		Count = 10
							}	
	CBS.Maps['garner2'].dead[870] = {
		Time = 90,
		BossID = 1476,
		Count = 10
							}	
	CBS.Maps['garner2'].dead[871] = {
		Time = 90,
		BossID = 1477,
		Count = 10
							}	
	CBS.Maps['garner2'].dead[872] = {
		Time = 90,
		BossID = 1478,
		Count = 10
							}	
	CBS.Maps['garner2'].dead[873] = {
		Time = 90,
		BossID = 1479,
		Count = 10
							}	
	CBS.Maps['garner2'].dead[874] = {
		Time = 90,
		BossID = 1480,
		Count = 10
							}	
	CBS.Maps['garner2'].dead[875] = {
		Time = 90,
		BossID = 1481,
		Count = 10
							}	
	CBS.Maps['garner2'].dead[876] = {
		Time = 90,
		BossID = 1482,
		Count = 10
							}	
	CBS.Maps['garner2'].dead[877] = {
		Time = 90,
		BossID = 1483,
		Count = 10
							}	
	CBS.Maps['garner2'].dead[878] = {
		Time = 90,
		BossID = 1484,
		Count = 10
							}	
	CBS.Maps['garner2'].dead[879] = {
		Time = 90,
		BossID = 1485,
		Count = 10
							}	
	CBS.Maps['garner2'].dead[880] = {
		Time = 90,
		BossID = 1486,
		Count = 10
							}	
	CBS.Maps['garner2'].dead[881] = {
		Time = 90,
		BossID = 1487,
		Count = 10
							}	
	CBS.Maps['garner2'].dead[883] = {
		Time = 90,
		BossID = 1488,
		Count = 10
							}	
	CBS.Maps['garner2'].dead[884] = {
		Time = 90,
		BossID = 1489,
		Count = 10
							}	
CBS.Maps['garner2'].dead[885] = {
		Time = 90,
		BossID = 1490,
		Count = 10
							}	
CBS.Maps['garner2'].dead[886] = {
		Time = 90,
		BossID = 1491,
		Count = 10
							}	
------------------------
-- Лагеря Мертвых Душ --
------------------------
--CBS.Maps['jialebi'] = {Name = 'Мертвые острова', Active = true, dead = {}}
CBS.Maps['jialebi'] = {Name = '\204\229\240\242\226\251\229 \238\241\242\240\238\226\224', Active = true, dead = {}}
CBS.Maps['jialebi'].dead[1113] = {
		Time = 900,
		BossID = 1522,
		Count = 3
							}	
CBS.Maps['jialebi'].dead[817] = {
		Time = 90,
		BossID = 1510,
		Count = 20
							}	
CBS.Maps['jialebi'].dead[808] = {
		Time = 90,
		BossID = 1512,
		Count = 20
							}	
CBS.Maps['jialebi'].dead[799] = {
		Time = 90,
		BossID = 1513,
		Count = 20
							}	
CBS.Maps['jialebi'].dead[800] = {
		Time = 90,
		BossID = 1514,
		Count = 20
							}	
CBS.Maps['jialebi'].dead[807] = {
		Time = 90,
		BossID = 1511,
		Count = 3
							}	
CBS.Maps['jialebi'].dead[933] = {
		Time = 900,
		BossID = 1515,
		Count = 3
							}	
---------------------
-- Остров сокровищ --
---------------------
CBS.Maps['jialebi'].dead[818] = {
		Time = 90,
		BossID = 1516,
		Count = 20
							}
CBS.Maps['jialebi'].dead[809] = {
		Time = 90,
		BossID = 1519,
		Count = 20
							}
CBS.Maps['jialebi'].dead[806] = {
		Time = 90,
		BossID = 1518,
		Count = 20
							}
CBS.Maps['jialebi'].dead[797] = {
		Time = 90,
		BossID = 1520,
		Count = 20
							}
CBS.Maps['jialebi'].dead[805] = {
		Time = 900,
		BossID = 1517,
		Count = 3
							}
----------------------
-- Мираж АлкашГрада --
----------------------
--CBS.Maps['leiting2'] = {Name = 'Мираж АлкашГрада', Active = true, dead = {}}
CBS.Maps['leiting2'] = {Name = '\204\232\240\224\230 \192\235\234\224\248\195\240\224\228\224', Active = true, dead = {}}
CBS.Maps['leiting2'].dead[964] = {
		Time = 90,
		BossID = 1498,
		Count = 30
							}
CBS.Maps['leiting2'].dead[965] = {
		Time = 90,
		BossID = 1499,
		Count = 30
							}
CBS.Maps['leiting2'].dead[966] = {
		Time = 90,
		BossID = 1500,
		Count = 30
							}
CBS.Maps['leiting2'].dead[972] = {
		Time = 90,
		BossID = 1501,
		Count = 30
							}
CBS.Maps['leiting2'].dead[973] = {
		Time = 90,
		BossID = 1502,
		Count = 30
							}
CBS.Maps['leiting2'].dead[967] = {
		Time = 900,
		BossID = 1503,
		Count = 3
							}
----------------------------
-- Мираж Санкт-Петербурга --
----------------------------
--CBS.Maps['shalan2'] = {Name = 'Мираж СПБ', Active = true, dead = {}}
CBS.Maps['shalan2'] = {Name = '\204\232\240\224\230 \209\207\193', Active = true, dead = {}}
CBS.Maps['shalan2'].dead[956] = {
		Time = 90,
		BossID = 1504,
		Count = 30
							}
CBS.Maps['shalan2'].dead[968] = {
		Time = 90,
		BossID = 1508,
		Count = 30
							}
CBS.Maps['shalan2'].dead[969] = {
		Time = 90,
		BossID = 1509,
		Count = 30
							}
CBS.Maps['shalan2'].dead[957] = {
		Time = 90,
		BossID = 1505,
		Count = 30
							}
CBS.Maps['shalan2'].dead[958] = {
		Time = 90,
		BossID = 1506,
		Count = 30
							}
CBS.Maps['shalan2'].dead[959] = {
		Time = 900,
		BossID = 1507,
		Count = 3
							}
----------------------------
-- 		Острова Зимы      --
----------------------------
--Остров Кары
--CBS.Maps['winterland'] = {Name = 'Зимние острова', Active = true, dead = {}}
CBS.Maps['winterland'] = {Name = '\199\232\236\237\232\229 \238\241\242\240\238\226\224', Active = true, dead = {}}
-- Королевский зверь
CBS.Maps['winterland'].dead[1087] = {
		Time = 90,
		BossID = 1528,
		Count = 30
							}
-- Ледяная химера
CBS.Maps['winterland'].dead[1089] = {
		Time = 90,
		BossID = 1529,
		Count = 30
							}
-- Снежный леопард
CBS.Maps['winterland'].dead[1090] = {
		Time = 90,
		BossID = 1530,
		Count = 30
							}
-- Тыквенный Генерал
CBS.Maps['winterland'].dead[1091] = {
		Time = 90,
		BossID = 1531,
		Count = 30
							}

	-- ******************************************************************************************************************************************************************************* --
	-- ****************************************************************************** Storage Variables ****************************************************************************** --
	-- ******************************************************************************************************************************************************************************* --
	--	These variables should not be modified.
	VarCBS = VarCBS or {}
	-- ******************************************************************************************************************************************************************************* --
	-- ******************************************************************************** Hook Function ******************************************************************************** --
	-- ******************************************************************************************************************************************************************************* --
CBS.Hook.PKM = function()
	local FuncName = 'GetExp_PKM'
	local OriginalFunction = _G[FuncName]
	_G[FuncName] = function(dead, atk)
		OriginalFunction(dead, atk)
		local MapName = GetChaMapName(atk)
		local deadID = GetChaTypeID(dead)
		if not CBS.Conf.Active or not CBS.Maps[MapName] or not CBS.Maps[MapName].dead[deadID] then
			return
		end
		if not CBS.Maps[MapName].Active then
			VarCBS[MapName] = nil
			return
		end
		VarCBS[MapName] = VarCBS[MapName] or {}
		VarCBS[MapName][deadID] = VarCBS[MapName][deadID] or 0
		VarCBS[MapName][deadID] = VarCBS[MapName][deadID] + 1
		if CBS.Conf.Text then
			SystemNotice(atk, string.format(CBS.Text.KillCount, CBS.Conf.Name, GetChaDefaultName(dead), VarCBS[MapName][deadID], CBS.Maps[MapName].dead[deadID].Count, CBS.Maps[MapName].Name))
		end
		if VarCBS[MapName][deadID] < CBS.Maps[MapName].dead[deadID].Count then
			return
		end
		VarCBS[MapName][deadID] = VarCBS[MapName][deadID] - CBS.Maps[MapName].dead[deadID].Count
		
		local MapCopy = GetChaMapCopy(atk)
		local PosX, PosY = GetChaPos(atk)
		PosX, PosY = math.floor(PosX / 100), math.floor(PosY / 100)
		local Boss = CreateChaEx(CBS.Maps[MapName].dead[deadID].BossID, (PosX * 100), (PosY * 100), math.random(1, 360), 60, MapCopy)
		SetChaLifeTime(Boss, (CBS.Maps[MapName].dead[deadID].Time * 1000))
		if CBS.Conf.Text then
			MapCopyNotice(MapCopy, string.format(CBS.Text.Summon, CBS.Conf.Name, CBS.Maps[MapName].Name, PosX, PosY))
		end
	end
end
	CBS.Hook.PKM()
	-- ******************************************************************************************************************************************************************************* --
	-- ******************************************************************************** Chat Function ******************************************************************************** --
	-- ******************************************************************************************************************************************************************************* --
CBS.Chat.Check = function(atk)
	if not CBS.Conf.Active then
		SystemNotice(atk, string.format(CBS.Text.NotActive, CBS.Conf.Name))
		return
	end
	local MapName = GetChaMapName(atk)
	if not CBS.Maps[MapName] or not CBS.Maps[MapName].Active then
		VarCBS[MapName] = nil
		SystemNotice(atk, string.format(CBS.Text.MapNotEnabled, CBS.Conf.Name))
		return
	end
	VarCBS[MapName] = VarCBS[MapName] or {}
	
	
	--local Message = AdjustTextSpace(string.format('** %s Tracker **', CBS.Conf.Name), 42, '_')
	--Message = Message..AdjustTextSpace(CBS.Maps[MapName].Name, 42, '__')
	local Message = AdjustTextSpace(string.format('** %s \241\247\229\242\247\232\234 **', CBS.Conf.Name), 42, '')
	Message = Message..AdjustTextSpace(CBS.Maps[MapName].Name, 32, '')
	
	--local Space = {Name = 28, Count = 14}
	local Space = {Name = 30, Count = 10}
	--Message = Message..AdjustTextSpace('dead Name', Space.Name)..AdjustTextSpace('Kill Count', Space.Count, '_')
	Message = Message..AdjustTextSpace('\205\224\231\226\224\237\232\229', Space.Name)..AdjustTextSpace('\211\225\232\233\241\242\226\224', Space.Count, '')
	for ID, Stuff in pairs(CBS.Maps[MapName].dead) do
		VarCBS[MapName][ID] = VarCBS[MapName][ID] or 0
		Message = Message..AdjustTextSpace(GetMonsterName(ID), Space.Name)
		Message = Message..AdjustTextSpace(string.format('%d / %d', VarCBS[MapName][ID], CBS.Maps[MapName].dead[ID].Count), Space.Count, '')
	end

	HelpInfo(atk, 0, Message)
end

-- cmd.list[CBS.Conf.ChatCommand] = {
	-- gm 		= 0,
	-- param 	= {},
	-- func 	= function(role, param) CBS.Chat.Check(role) end
-- }
	-- ******************************************************************************************************************************************************************************** --
	-- ******************************************************************************** Extra Function ******************************************************************************** --
	-- ******************************************************************************************************************************************************************************** --
AdjustTextSpace = AdjustTextSpace or function(Text, Spaces, End)
	local Message = ''
	local Count = math.floor((Spaces - string.len(Text)) * 0.5)
	for C = 1, Count, 1 do
		Message = Message.." "
	end
	Message = Message..Text
	Count = math.floor(Spaces - string.len(Message))
	for C = 1, Count, 1 do
		Message = Message.." "
	end
	if End then
		Message = Message..End
	end
	return Message
end