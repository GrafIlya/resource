--*---------------------------------------------*--
--* dir parent		: addon						*--
--* File name		: MonsterSiege.lua			*--
--* Created by		: Valdiney Eviles			*--
--* Discord			: Eviles#2759				*--
--*---------------------------------------------*--
print("* EventSystem.lua")

MonsterSiege								= {}
MonsterSiege.Conf							= {}
MonsterSiege.Conf.Event						= {}
MonsterSiege.Ranking						= {}
MonsterSiege.Ranking.Show					= {}
MonsterSiege.Ranking.Winner					= {}
MonsterSiege.Ranking.Rewards				= {}
MonsterSiege.Ranking.Rewards[1]				= {}
MonsterSiege.Ranking.Rewards[2]				= {}
MonsterSiege.Ranking.Rewards[3]				= {}

MonsterSiege.Ranking.Rewards[1].Items		= {}
MonsterSiege.Ranking.Rewards[2].Items		= {}
MonsterSiege.Ranking.Rewards[3].Items		= {}

MonsterSiege.Conf.Enabled					= true	-- enable or disable the system on NPC.
MonsterSiege.Conf.StartPage					= 1		-- number of first page in NPC.
MonsterSiege.Conf.MobPage					= 2		-- number of monster page in NPC.
MonsterSiege.Conf.MobPerPage				= 7		-- number of monsters to show per page (limit is 7).
MonsterSiege.Conf.NPCName					= "[Руководитель Эвентов]"

-- path to ranking
MonsterSiege.Ranking.BasePath				= GetResPath("script/addon/MonsterSiege/Ranking/")
MonsterSiege.Ranking.FolderPath				= MonsterSiege.Ranking.BasePath..os.date("%Y").."/"
MonsterSiege.Ranking.PlayerPath				= MonsterSiege.Ranking.BasePath.."Player/"

MonsterSiege.Ranking.Count 					= 10		-- Amount of players to display on ranking.
MonsterSiege.Ranking.Winner.Count 			= 3			-- How many winners of ranking.
-- This are the rewards given to the TOP #1 player in ranking.
-- If values are set to "0", if will not prompt to give out that reward, including items.
-- For "EXP", it's in percentage of player's current level.
-- You can add multiple items to rewards, just copy-paste the table and change key value.
MonsterSiege.Ranking.Rewards[1].Gold		= 200
MonsterSiege.Ranking.Rewards[1].Items[1]	= {ID = 885, Quantity = 3, Quality = 4}

-- This are the rewards given to the TOP #2 player in ranking.
-- If values are set to "0", if will not prompt to give out that reward, including items.
-- For "EXP", it's in percentage of player's current level.
-- You can add multiple items to rewards, just copy-paste the table and change key value.
MonsterSiege.Ranking.Rewards[2].Gold		= 100
MonsterSiege.Ranking.Rewards[2].Items[1]	= {ID = 885, Quantity = 2, Quality = 4}

-- This are the rewards given to the TOP #3 player in ranking.
-- If values are set to "0", if will not prompt to give out that reward, including items.
-- For "EXP", it's in percentage of player's current level.
-- You can add multiple items to rewards, just copy-paste the table and change key value.
MonsterSiege.Ranking.Rewards[3].Gold		= 0
MonsterSiege.Ranking.Rewards[3].Items[1]	= {ID = 885, Quantity = 1, Quality = 4}

-- declares monsters to be show in npc.
-- also you can configure coordinates, monster number to be spawned.
-- time of this monster alive.
MonsterSiege.Conf.Event[75]					= {Duration = 900, LowestX = 2150, LowestY = 2772, HighestX = 2159, HighestY = 2786, MobNum = 10, LifeTime = 60000, Active = false, Timer = 0, WaveNum = 0} -- Mystic Shrub
MonsterSiege.Conf.Event[103]				= {Duration = 900, LowestX = 2135, LowestY = 2781, HighestX = 2142, HighestY = 2783, MobNum = 10, LifeTime = 60000, Active = false, Timer = 0, WaveNum = 0} -- Forest Spirit

-- this is when the function to spawning monster,
-- will be called when tick reach this value (in seconds), according to event duration.
MonsterSiege.Conf.SpawnTime					= {30,50,70,90,110,135,160,190,200,230,250,280,320,350,390,420,440,460,500,530,550,580,600,
												650,680,690,700,710,720,730,740,750,760,780,800,810,820,830,840,850,860,870,880,890,900}

-- talks to the npc and announces.
MonsterSiege.Talk							= {
	"%s: Привет!_ Хочешь начать осаду?",
	"Список монстров",
	"Уйти",
	"%s: Каких монстров ты хочешь использовать в осаде?",
	"[Далее]",
	"[Назад]",
	"%s: Извини, осады сейчас отключены!",
	"%s: Вы хотите активировать осаду для [%s]?",
	"Активировать осаду!",
	"* %s",
	"%s: Извини, осада уже активирована.",
	"[Осада]: Вокруг (%d,%d) в Москве, началась осада. Пираты!!! Защитите свой город и заберите свое сокровище!",
	"%s: У вас нет прав для активации эвента.",
	"[Осада]: Волна #.%d началась! Осада продлится [%d минут(ы)]!",
	"[Осада]: Осада закончилась!",
	"Топ осад",
	"Мой ранк",
	"Забрать награду",
	"Текущий",
	"Прошлый",
	"пусто",
	">>> Твоя статистика <<<",
	"[Монстр]",
	"Убито: %d",
	">>> Твой ранк <<<",
	"Обновление",
	"Ранк",
	"Убийства",
	"Еженедельно",
	">>> Топ по убийствам <<<",
	"Игрок",
	"_Извините, не удалось найти записи, повторите попытку позже.",
	"Поздравляем!_ Вы ТОП #%d игрок в [Осаде Москвы]!",
	"Вы уже забрали свою награду за ТОП в Осаде Москвы!",
	"Вы не входите в ТОП %d Осады Москвы!",
}

-- Simple function, only called if you don't have GetGmLv function in gameserver.exe.
if (GetGmLv == nil) then
	IsGM									= {
		[10262]								= 99,	-- 10262 = playerid, 99 = gmlv;
	}
	GetGmLv									= function(Player)
		local PID							= GetRoleID(Player)
		if (IsGM[PID] ~= nil) then
			return IsGM[PID]
		else
			return 0
		end
	end	
end

-- function to the NPC.
SiegeNPC									= function()
	if (MonsterSiege.Conf.Enabled == true) then	
		Talk(MonsterSiege.Conf.StartPage, string.format(MonsterSiege.Talk[1], MonsterSiege.Conf.NPCName))
		Text(MonsterSiege.Conf.StartPage, MonsterSiege.Talk[2], JumpPage, MonsterSiege.Conf.MobPage)
		Text(MonsterSiege.Conf.StartPage, MonsterSiege.Talk[16], MonsterSiege.Ranking.Display)
		Text(MonsterSiege.Conf.StartPage, MonsterSiege.Talk[17], MonsterSiege.Ranking.PlayerStatus)
		Text(MonsterSiege.Conf.StartPage, MonsterSiege.Talk[18], MonsterSiege.Ranking.GiveReward)
		Text(MonsterSiege.Conf.StartPage, MonsterSiege.Talk[3], CloseTalk)
		
		Talk(MonsterSiege.Conf.MobPage, string.format(MonsterSiege.Talk[4], MonsterSiege.Conf.NPCName))
		MonsterSiege.GenerateList()
	else
		Talk(MonsterSiege.Conf.StartPage, string.format(MonsterSiege.Talk[7], MonsterSiege.Conf.NPCName))
	end
end

-- Generate list of monsters according to the table.
MonsterSiege.GenerateList					= function()
	local Page,Count,Total					= MonsterSiege.Conf.MobPage,0,0
	for i,v in pairs(MonsterSiege.Conf.Event) do
		Total								= Total + 1
	end
	local Pages								= math.ceil(Total/MonsterSiege.Conf.MobPerPage) + 2
	for i,v in pairs(MonsterSiege.Conf.Event) do
		if Count == MonsterSiege.Conf.MobPerPage then
			Text(Page, MonsterSiege.Talk[5], JumpPage, Page + 1)
			Page							= Page + 1
			Talk(Page, string.format(MonsterSiege.Talk[4], MonsterSiege.Conf.NPCName))
			Count							= 0
		end
		Text(Page, string.format(MonsterSiege.Talk[10], GetMonsterName(i)), JumpPage, Pages)
		MonsterSiege.GeneratePage(Pages, i, v, Page)
		Pages								= Pages + 1
		Count								= Count + 1
	end
end

-- Generate page information for the monster.
MonsterSiege.GeneratePage					= function(Pages, i, v, BackPage)
	Talk(Pages, string.format(MonsterSiege.Talk[8], MonsterSiege.Conf.NPCName, GetMonsterName(i)))
	Text(Pages, MonsterSiege.Talk[9], MonsterSiege.StartEvent, i, v)	
	Text(Pages, MonsterSiege.Talk[6], JumpPage, BackPage)
end

-- Function to start the even on monster page.
MonsterSiege.StartEvent						= function(Player, MonsterID, Table)
	if (GetGmLv(Player) < 99) then
		HelpInfo(Player, 0, string.format(MonsterSiege.Talk[13], MonsterSiege.Conf.NPCName))
		return
	end
	if (Table.Active == true) then
		HelpInfo(Player, 0, string.format(MonsterSiege.Talk[11], MonsterSiege.Conf.NPCName))
		return
	end
	Table.Active							= true
	Table.Timer								= Table.Duration
	GMNotice(string.format(MonsterSiege.Talk[12], Table.LowestX, Table.LowestY))
end

-- function to spawn monster, reset event variables when it finished.
MonsterSiege.Spawn							= function(MapCopy, MonsterID, Table)
	if (Table.Timer > 0) then
		for k 								= 1, table.getn(MonsterSiege.Conf.SpawnTime) do
			if (Table.Timer == MonsterSiege.Conf.SpawnTime[k]) then
				Table.WaveNum				= Table.WaveNum + 1
				for i						= 1, Table.MobNum do
					local Monster			= CreateChaEx(MonsterID, math.random(Table.LowestX, Table.HighestX) * 100, math.random(Table.LowestY, Table.HighestY) * 100, 90, 60, MapCopy)
					SetChaLifeTime(Monster, Table.LifeTime)
				end
				Notice(string.format(MonsterSiege.Talk[14], Table.WaveNum, (MonsterSiege.Conf.Event[MonsterID].Duration/60)))
			end
		end
		Table.Timer 						= Table.Timer - 1
	else
		Notice(MonsterSiege.Talk[15])
		Table.Active						= false
		Table.Timer							= 0
		Table.Wave							= 0
	end
end
---------------------
--RANKING FUNCTIONS--
---------------------
MonsterSiege.Ranking.CreateDirectory		= function()
	if (os.rename(MonsterSiege.Ranking.BasePath, MonsterSiege.Ranking.BasePath) ~= true) then
		os.execute('MKDIR "'..MonsterSiege.Ranking.BasePath..'"')
	end
	if (os.rename(MonsterSiege.Ranking.FolderPath, MonsterSiege.Ranking.FolderPath) ~= true) then
		os.execute('MKDIR "'..MonsterSiege.Ranking.FolderPath..'"')
	end
	if (os.rename(MonsterSiege.Ranking.PlayerPath, MonsterSiege.Ranking.PlayerPath) ~= true) then
		os.execute('MKDIR "'..MonsterSiege.Ranking.PlayerPath..'"')
	end	
end

-- Load a file for currently ranking or past.
MonsterSiege.Ranking.FileType 					= function(Type)
	local Week = (tonumber(os.date("%Y")) * 100) + getWeekNumberOfYear()
	if Type == MonsterSiege.Talk[19] then
		return Week
	elseif Type == MonsterSiege.Talk[20] then
		Week = Week - 1
		if Week == 0 then
			Week = 52
		end
		return Week
	end
end

-- return file for some paths (current/past).
MonsterSiege.Ranking.LoadPaths 					= function()
	local Week 									= MonsterSiege.Ranking.FileType(MonsterSiege.Talk[19])
	local WeekP 								= MonsterSiege.Ranking.FileType(MonsterSiege.Talk[20])
	local Path 									= {}
	Path[1] 									= MonsterSiege.Ranking.FolderPath.."Weekly - "..Week..".txt"
	Path[2] 									= MonsterSiege.Ranking.FolderPath.."Weekly - "..WeekP..".txt"
	return Path
end

-- sort the values on the ranking.
MonsterSiege.Ranking.Sort 				= function(Table, Type)
	local Temp 							= {Name = nil, Kills = nil}
	local Changed 						= true
	if Type == MonsterSiege.Talk[20] then
		for i, v in pairs(Table) do
			if v.Kills == 0 then
				table.remove(Table, i)
			end
		end
	end
	local Length 						= table.getn(Table)
	while Changed do
		Changed 						= false
		for A 							= 1, (Length-1), 1 do
			if Table[A].Kills < Table[A+1].Kills then
				Temp.Name, Temp.Kills = Table[A].Name, Table[A].Kills
				Table[A].Name, Table[A].Kills = Table[A+1].Name, Table[A+1].Kills
				Table[A+1].Name, Table[A+1].Kills = Temp.Name, Temp.Kills
				Changed 				= true
			end
		end
	end
	for i, v in pairs(Table) do
		if i > MonsterSiege.Ranking.Count and v.Name == MonsterSiege.Talk[21] then
			table.remove(Table, i)
		end
	end
	if Type == MonsterSiege.Talk[20] then
		Length 							= table.getn(Table)
		while Length > MonsterSiege.Ranking.Winner.Count do
			Length 						= table.getn(Table)
			for i, v in pairs(Table) do
				if i > MonsterSiege.Ranking.Winner.Count then
					table.remove(Table, i)
				end
			end
		end
	end	
	return Table
end

-- check personal ranking data from player.
MonsterSiege.Ranking.CheckPlayer 		= function(Player)
	local PlayerV 						= MonsterSiege.Ranking.PlayerPath..GetPlayerKey(Player)..".txt"
	local Week 							= MonsterSiege.Ranking.FileType(MonsterSiege.Talk[19])
	local Table							= DataFile:Init(PlayerV, Table):Load()
	if (Table.Kills == nil) then
		Table 							= {}
		Table.Kills 					= 0
		DataFile:Init(PlayerV, Table):Save()
	end
	Table.Name 							= GetChaDefaultName(Player)
	DataFile:Init(PlayerV, Table):Save()
end

-- create records to ranking if doesn't exists.
MonsterSiege.Ranking.CreateRecords		= function()
	local Dir 							= MonsterSiege.Ranking.LoadPaths()
	for A 								= 1, 2, 1 do
	local Table							= DataFile:Init(Dir[A], Table):Load()		
	if (table.getn(Table) < MonsterSiege.Ranking.Count) then
			for B 						= 1, MonsterSiege.Ranking.Count, 1 do
				table.insert(Table, {Name = MonsterSiege.Talk[21], Kills = 0})
			end
			DataFile:Init(Dir[A], Table):Save()
		end
	end	
end

-- return the player ranking.
MonsterSiege.Ranking.GetPlayerRank 		= function(Player, Table)
	local Value 						= 0
	for A 								= 1, table.getn(Table), 1 do
		if Table.Name == GetChaDefaultName(Player) then
			Value 						= A
		end
	end
	return Value
end

-- add kills to the player in ranking file.
MonsterSiege.Ranking.Record				= function(Player, Kills)
	local PlayerPath 					= MonsterSiege.Ranking.PlayerPath..GetPlayerKey(Player)..".txt"
	local PlayerV						= DataFile:Init(PlayerPath, PlayerV):Load()	
	PlayerV.Kills 						= PlayerV.Kills + Kills
	DataFile:Init(PlayerPath, PlayerV):Save()
		
	local Dir 							= MonsterSiege.Ranking.LoadPaths()
	local WeeklyV						= DataFile:Init(Dir[1], WeeklyV):Load()			
	for A = 1, table.getn(WeeklyV), 1 do
		if WeeklyV[A].Name == GetChaDefaultName(Player) then
			WeeklyV[A].Kills 			= WeeklyV[A].Kills + Kills
			break
		elseif A == table.getn(WeeklyV) and WeeklyV.Name ~= GetChaDefaultName(Player) then
			table.insert(WeeklyV, {Name = GetChaDefaultName(Player), Kills = Kills})
			break
		end
	end
	DataFile:Init(Dir[1], WeeklyV):Save()
end

-- update the ranking.
MonsterSiege.Ranking.Update				= function(Type)
	local Dir 							= MonsterSiege.Ranking.LoadPaths()
	if Type == MonsterSiege.Talk[19] then
		local Table						= DataFile:Init(Dir[1], Table):Load()
		Table							= MonsterSiege.Ranking.Sort(Table, Type)
		DataFile:Init(Dir[1], Table):Save()
	elseif Type == MonsterSiege.Talk[20] then
		local Table						= DataFile:Init(Dir[2], Table):Load()
		Table							= MonsterSiege.Ranking.Sort(Table, Type)
		DataFile:Init(Dir[2], Table):Save()
	end	
end

-- function call when player kill a monster.
MonsterSiege.Ranking.PKM				= function(dead, atk)
	local MobID							= GetChaTypeID(dead)
	if (MonsterSiege.Conf.Event[MobID] ~= nil and MonsterSiege.Conf.Event[MobID].Active == true) then
		MonsterSiege.Ranking.CreateDirectory()
		MonsterSiege.Ranking.CreateRecords()
		MonsterSiege.Ranking.CheckPlayer(atk)
		MonsterSiege.Ranking.Record(atk, 1)
		MonsterSiege.Ranking.Update(MonsterSiege.Talk[19])
	end
end

-- checking the player ranking and send information to NPC.
MonsterSiege.Ranking.PlayerStatus 		= function(Player)
	MonsterSiege.Ranking.CreateDirectory()
	MonsterSiege.Ranking.CreateRecords()
	MonsterSiege.Ranking.CheckPlayer(Player)
	MonsterSiege.Ranking.Record(Player, 0)
	MonsterSiege.Ranking.Update(MonsterSiege.Talk[19])
	
	local Message 						= ""
	local Dir 							= MonsterSiege.Ranking.LoadPaths()
	local PlayerPath 					= MonsterSiege.Ranking.PlayerPath..GetPlayerKey(Player)..".txt"
	local PlayerV 						= DataFile:Init(PlayerPath, PlayerV):Load()	
	local Spaces 						= {9, 10, 7, 7, 8}
	DataFile:Init(PlayerPath, PlayerV):Save()	
	Message 							= Message..AdjustTextSpace(MonsterSiege.Talk[22], 42, "_")
	Message 							= Message..AdjustTextSpace(MonsterSiege.Talk[23], 8)..AdjustTextSpace(string.format(MonsterSiege.Talk[24], PlayerV.Kills), 16, "_")
	Message 							= Message..AdjustTextSpace(MonsterSiege.Talk[25], 42, "_")..AdjustTextSpace(MonsterSiege.Talk[26], 9)..AdjustTextSpace(MonsterSiege.Talk[27], 10)..AdjustTextSpace(MonsterSiege.Talk[28], 7, "_")
	local Table							= DataFile:Init(Dir[1], Table):Load()	
	DataFile:Init(Dir[1], Table):Save()
	for B 								= 1, table.getn(Table), 1 do
		if Table[B].Name == GetChaDefaultName(Player) then
			Message 					= Message..AdjustTextSpace(MonsterSiege.Talk[29], Spaces[1])
			Message 					= Message..AdjustTextSpace(B.."/"..table.getn(Table), Spaces[2])
			Message 					= Message..AdjustTextSpace(Table[B].Kills, Spaces[4])
		end
	end
	HelpInfo(Player, 0, Message)
end

-- display monster siege overall ranking.
MonsterSiege.Ranking.Display 			= function(Player)
	MonsterSiege.Ranking.CreateDirectory()
	MonsterSiege.Ranking.CreateRecords()
	MonsterSiege.Ranking.CheckPlayer(Player)
	MonsterSiege.Ranking.Record(Player, 0)
	MonsterSiege.Ranking.Update()
	local Week 							= MonsterSiege.Ranking.FileType(MonsterSiege.Talk[19])
	local Message 						= ""
	local Dir 							= MonsterSiege.Ranking.LoadPaths()
	Message 							= Message..AdjustTextSpace(MonsterSiege.Talk[30], 42, "_")
	Message 							= Message..AdjustTextSpace(MonsterSiege.Talk[27], 6)
	Message 							= Message..AdjustTextSpace(MonsterSiege.Talk[31], 18)
	Message 							= Message..AdjustTextSpace(MonsterSiege.Talk[28], 9, "_")
	local Table							= DataFile:Init(Dir[1], Table):Load()
	if (table.getn(Table) < MonsterSiege.Ranking.Count) then
		Message 						= Message..MonsterSiege.Talk[32]
	elseif Table ~= nil then
		if table.getn(Table) == 0 then
			Message 					= Message..MonsterSiege.Talk[32]
		else
			local Count 				= math.min(math.min(MonsterSiege.Ranking.Count, table.getn(Table)), 20)
			for A = 1, Count, 1 do
				Message 				= Message..AdjustTextSpace(A, 6)
				Message 				= Message..AdjustTextSpace(Table[A].Name, 18)
				Message 				= Message..AdjustTextSpace(Table[A].Kills, 7, "_")
			end
		end
		DataFile:Init(Dir[1], Table):Save()
	end
	HelpInfo(Player, 0, Message)
end

-- check if player is in TOP ranking and give rewards.
MonsterSiege.Ranking.GiveReward 		= function(Player)
	MonsterSiege.Ranking.CreateDirectory()
	MonsterSiege.Ranking.CreateRecords()
	MonsterSiege.Ranking.CheckPlayer(Player)
	MonsterSiege.Ranking.Update(MonsterSiege.Talk[20])
	local FileWinners					= MonsterSiege.Ranking.FolderPath.."Winners.txt"
	local FileWeeklyP					= MonsterSiege.Ranking.LoadPaths()
	local Date							= MonsterSiege.Ranking.FileType(MonsterSiege.Talk[20])
	local Winners 						= DataFile:Init(FileWinners, Winners):Load()
	if (Winners[Date] == nil) then
		Winners[Date] 					= {}
		local Rank 						= DataFile:Init(FileWeeklyP[2], Rank):Load()
		if table.getn(Rank) ~= 0 then
			for A 						= 1, math.min(table.getn(Rank), MonsterSiege.Ranking.Winner.Count), 1 do
				Winners[Date][A] 		= {}
				Winners[Date][A].Name 	= Rank[A].Name
				Winners[Date][A].Claim	= 0
			end
		end
		DataFile:Init(FileWeeklyP[2], Rank):Save()
	end
	if table.getn(Winners[Date]) ~= 0 then
		for B 							= 1, math.min(table.getn(Winners[Date]), MonsterSiege.Ranking.Winner.Count), 1 do
			if Winners[Date][B].Name == GetChaDefaultName(Player) then
				local Reward			= MonsterSiege.Ranking.Rewards[B]
				if Winners[Date][B].Claim == 0 then
					if (Reward.Gold > 0) then
						AddMoney(Player, 0, Reward.Gold)
					end
					for k				= 1, table.getn(Reward.Items), 1 do
						if (Reward.Items[k].ID ~= 0) then
							if (GetChaFreeBagGridNum(Player) > 0) then
								GiveItem(Player, 0, Reward.Items[k].ID, Reward.Items[k].Quantity, Reward.Items[k].Quality)
							else
								GiveItemX(Player, 0, Reward.Items[k].ID, Reward.Items[k].Quantity, Reward.Items[k].Quality)
							end
						end
					end
					Winners[Date][B].Claim = 1
					HelpInfo(Player, 0, string.format(MonsterSiege.Talk[33], B))
				elseif Winners[Date][B].Claim == 1 then
					HelpInfo(Player, 0, MonsterSiege.Talk[34])
				end
				break
			end
			if B == MonsterSiege.Ranking.Winner.Count and Winners[Date][B].Name ~= GetChaDefaultName(Player) then
				BickerNotice(Player, string.format(MonsterSiege.Talk[35], MonsterSiege.Ranking.Winner.Count))
			end
		end
	else
		HelpInfo(Player, 0, MonsterSiege.Talk[32])
	end
	DataFile:Init(FileWinners, Winners):Save()
end