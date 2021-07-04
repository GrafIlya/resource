print( "‡ Јаг§Є  Ctrl.lua" )

function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
    MapCopyNum(map, 1)
    MapCopyStartType(map, 1)
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 2 )
end

function get_map_entry_pos_secretgarden()
	local POS_X=832
	local POS_Y=3760
	return POS_X , POS_Y
end

function init_entry(map)
    SetMapEntryMapName(map, "magicsea")
    SetMapEntryTime(map, "2005/8/30/19/0", "1/0/0", "0/2/0", "0/2/0")
end

function after_enter_secretgarden( role , map_copy )
    local map_copy = GetChaMapCopy(role)
    local RedSide_GuildID, BlueSide_GuildID
    RedSide_GuildID = GetMapCopyParam2(map_copy, 3 )
    BlueSide_GuildID = GetMapCopyParam2(map_copy, 4 )
    
	if RedSide_GuildID == GetChaGuildID( role ) then
		SetChaSideID(role, 2)
	end
	if BlueSide_GuildID == GetChaGuildID( role ) then
			SetChaSideID(role, 1)
	end
end

function before_leave_secretgarden ( role )
	local Cha = TurnToCha(role) 
	local i = 0
	local j = 0
	for i = 0 , PK_BagItemDelCheckNum ,1 do
		local j = RemoveChaItem ( Cha ,PK_BagItemDelCheck_ID[i],0,0,-1,2,1 )
		if j == 0 then 
		LG("RemoveChaItem","Failed")
		end
	end
end

function map_copy_first_run_secretgarden( map_copy )
    local RedSide_GuildID, BlueSide_GuildID
    RedSide_GuildID = GetMapCopyParam2(map_copy, 3 )
    BlueSide_GuildID = GetMapCopyParam2(map_copy, 4 )

    local GuildName = GetGuildName( BlueSide_GuildID )
    SetChaMotto ( BlueSide_BaseRole , GuildName )

    GuildName = GetGuildName( RedSide_GuildID )
    SetChaMotto ( RedSide_BaseRole , GuildName )

end

function map_copy_run_secretgarden( map_copy )
	if PK_Win_CountNum == 60 then
		local RedSide_GuildID, BlueSide_GuildID
		RedSide_GuildID = GetMapCopyParam2(map_copy, 3 )
		BlueSide_GuildID = GetMapCopyParam2(map_copy, 4 )

		local GuildName_Red = GetGuildName( RedSide_GuildID )
		local GuildName_Blue = GetGuildName ( BlueSide_GuildID )
		if CheckMonsterDead ( BlueSide_BaseRole ) == 1 then
			
			local Notice_all = "Поздравляем гильдию ["..GuildName_Red.."] с победой над ["..GuildName_Blue.."]. Это достойная победа!"
			Notice ( Notice_all )
			PK_Win_CountNum = PK_Win_CountNum - 1
			PK_JJHY_Winner = GuildName_Red
			PK_JJHY_Loser = GuildName_Blue
			SetMapCopyParam2(map_copy, 5, 1)

		end

		if CheckMonsterDead ( RedSide_BaseRole ) == 1 then
			local Notice_all = "Поздравляем гильдию ["..GuildName_Blue.."] с победой над ["..GuildName_Red.."]. Это достойная победа!"
			Notice ( Notice_all )
			PK_Win_CountNum = PK_Win_CountNum - 1
			PK_JJHY_Winner = GuildName_Blue
			PK_JJHY_Loser = GuildName_Red
			SetMapCopyParam2(map_copy, 5, 2)
		end
		
		if CheckMonsterDead ( BlueSide_LCRole ) == 1 then
			if BlueSide_LCNotice == 0 then
				local Notice_all = "Пакгауз гильдии ["..GuildName_Blue.."] был уничтожен. Защита базы заметно понижена."
				Notice ( Notice_all )
				AddState( BlueSide_BaseRole , BlueSide_BaseRole , STATE_PKLC, 10 , -1 )
				BlueSide_LCNotice = 1
			end
		end
		
		if CheckMonsterDead ( RedSide_LCRole ) == 1 then
			if RedSide_LCNotice == 0 then
				local Notice_all = "Пакгауз гильдии ["..GuildName_Red.."] был уничтожен. Защита базы заметно понижена."
				Notice ( Notice_all )
				AddState( RedSide_BaseRole , RedSide_BaseRole , STATE_PKLC, 10 , -1 )
				RedSide_LCNotice = 1
			end
			
		end

		if CheckMonsterDead ( BlueSide_DYKRole ) == 1 then
			if BlueSide_DYKNotice == 0 then
				local Notice_all = "Склад боеприпасов гильдии ["..GuildName_Blue.."] был уничтожен. Сила атаки ваших защитных башен заметно понижена."
				Notice ( Notice_all )
				AddState( BlueSide_BaseRole , BlueSide_BaseRole , STATE_PKDYK, 10 , -1 )
				BlueSide_DYKNotice = 1
			end
		end

		if CheckMonsterDead ( RedSide_DYKRole ) == 1 then
			if RedSide_DYKNotice == 0 then
				local Notice_all = "Склад боеприпасов гильдии ["..GuildName_Red.."] был уничтожен. Сила атаки ваших защитных башен заметно понижена."
				Notice ( Notice_all )
				AddState( RedSide_BaseRole , RedSide_BaseRole , STATE_PKDYK, 10 , -1 )
				RedSide_DYKNotice = 1
			end		
		end
	else
		
		local Count = PK_Win_CountNum / 5
		if Count == math.floor ( Count ) then
			local Notice_all = "Поздравляем, ["..PK_JJHY_Winner.."], вы победили в этом бою гильдию ["..PK_JJHY_Loser.."]. [Сад Эдель] будет закрыт через "..PK_Win_CountNum.." секунд."
			Notice ( Notice_all )
		end
		PK_Win_CountNum = PK_Win_CountNum - 1
		if PK_Win_CountNum == 0 then
				PK_Win_CountNum = 60
				CloseMapEntry ( "secretgarden" )
				CloseMapCopy ( "secretgarden" )
				
		end
	end
end

function map_run_secretgarden( map )
	local GuildLevel = 0
	GuildLevel = GetFightGuildLevel ( )
	if GuildLevel > 0 and GuildLevel < 4 then
		if GuildLevel ~= ReadyToFight then
			EndGuildBid ( GuildLevel )
			ReadyToFight = GuildLevel
		end
	end
end

function map_copy_close_secretgarden ( map_copy )
	local winner = 	GetMapCopyParam2( map_copy, 5 )
	local RedSide_GuildID = GetMapCopyParam2(map_copy, 3 )
	local BlueSide_GuildID = GetMapCopyParam2(map_copy, 4 )
	if winner == 1 then
		EndGuildChallenge ( RedSide_GuildID , BlueSide_GuildID , 1 )
		LG( "PK_JJHY","Victory to the Defending Champion" )
	elseif winner == 2 then
		EndGuildChallenge ( RedSide_GuildID , BlueSide_GuildID , 0 )
		LG( "PK_JJHY","Victory to the Challenger" )
	elseif winner == 0 then
		EndGuildChallenge ( RedSide_GuildID , BlueSide_GuildID , 1 )
		LG( "PK_JJHY","Victory to the Defending Champion" )
	else
		LG( "PK_JJHY","Victory determination error" )
	end
end

function can_open_entry_secretgarden( map ) 
	local Now_Week = GetNowWeek()
	if Now_Week >=5 and Now_Week < 7 then
		return 1
	end
	if Now_Week == 0 then
		return 1
	end
	return 0 
end 