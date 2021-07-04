----------------------------------------------
--			Перевод DLDevTeam				--
----------------------------------------------

print( "‡ Јаг§Є  ItemGetMission.lua" )

function CheckMisChaBoat ( role , ChaType )						
	local Cha_Boat = GetCtrlBoat ( role )
	local ChaIsBoat = 0
	if Cha_Boat == nil then
		ChaIsBoat = 1
	else
		ChaIsBoat = 2
	end
	if ChaIsBoat == ChaType then
		return 1
	else
		return 0
	end
end

function CheckChaPos ( role , Cha_x_min , Cha_x_max , Cha_y_min , Cha_y_max , MapName )	
	local Cha_Boat = GetCtrlBoat ( role )
	local ChaIsBoat = 0
	if Cha_Boat ~= nil then
		role = Cha_Boat
	end
	local pos_x , pos_y = GetChaPos ( role )
	local map_name = GetChaMapName ( role )
	if MapName ~= -1 then 
		if map_name ~= MapName then
			return 0 
		end 
	end 
	if pos_x < Cha_x_min or pos_x > Cha_x_max then
		return 0
	end
	if pos_y < Cha_y_min or pos_y > Cha_y_max then
		return 0
	end
	return 1
end

function CheckChaGuildType ( role , GuildType , CheckType )				
	local Cha_GuildID = GetChaGuildID( role )
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		return 0
	end
	if CheckType == 1 then
		if ChaGuildType_Get == GuildType then
			return 1
		else
			return 0
		end
	elseif CheckType == 2 then
		if ChaGuildType_Get == GuildType then
			return 0
		else
			return 1
		end
	else
		return 0
	end
end

function MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local Have_Record	= 0
	local No_Record		= 0
	local Have_Mission	= 0
	local No_Mission	= 0
	if HasRecordID ~= -1 then
		Have_Record	= HasRecord( role , HasRecordID )
		if Have_Record ~= LUA_TRUE then
			SystemNotice ( role , HasRecordNotice )
			return 0
		end
	end
	if NoRecordID ~= -1 then
		No_Record	= NoRecord( role , NoRecordID )
		if No_Record ~= LUA_TRUE then
			SystemNotice ( role , NoRecordNotice )
			return 0
		end
	end
	if HasMissionID ~= -1 then
		Have_Mission	= HasMission( role , HasMissionID )
		if Have_Mission ~= LUA_TRUE then
			SystemNotice ( role , HasMissionNotice )
			return 0
		end
	end
	if No_MissionID ~= -1 then
		No_Mission	= HasMission( role , No_MissionID )
		if No_Mission == LUA_TRUE then
			SystemNotice ( role , NoMissionNotice )
			return 0
		end
	end
	return 1
end

function ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	local Is_BoatOrMan = 0
	local At_Pos = 0
	local CheckGuild_Type = 0
	if ChaType ~= -1 then
		Is_BoatOrMan = CheckMisChaBoat( role , ChaType )
		if Is_BoatOrMan == 0 then
			SystemNotice ( role , CheckBoatNotice )
			return 0
		end
	end
	if Need_CheckPos == 1 then
		At_Pos = CheckChaPos ( role , Cha_x_min , Cha_x_max , Cha_y_min , Cha_y_max , MapName )
		if At_Pos == 0 then
			SystemNotice ( role , CheckPosNotice )
			return 0
		end
	end
	if GuildType ~= -1 then
		CheckGuild_Type = CheckChaGuildType ( role , GuildType , CheckType )
		if CheckGuild_Type == 0 then
			SystemNotice ( role , GuildTypeNotice )
			return 0
		end
	end
	return 1
end

function ItemUse_LDADYW (role) 
	local HasRecordID			= 270			
	local HasRecordID_1			= -1			
	local NoRecordID			= -1			
	local NoRecordID_1			= -1			
	local HasMissionID			= -1			
	local HasMissionID_1		= -1			
	local No_MissionID			= -1			
	local No_MissionID_1		= -1			
	local ChaType				= -1			
	local Need_CheckPos			= -1			
	local Cha_x_max				= 4096			
	local Cha_x_min				= 0			
	local Cha_y_max				= 4096			
	local Cha_y_min				= 0			
	local MapName				= -1			
	local GuildType				= -1			
	local CheckType				= 1			
	local HasRecordNotice		= "Записка Андрея показывает, что нет ответа "
	local HasRecordNotice_1		= "Записка Андрея показывает, что нет ответа "
	local NoRecordNotice		= "Записка Андрея показывает, что нет ответа "
	local NoRecordNotice_1		= "Записка Андрея показывает, что нет ответа "
	local HasMissionNotice		= "Записка Андрея показывает, что нет ответа "
	local HasMissionNotice_1	= "Записка Андрея показывает, что нет ответа "
	local NoMissionNotice		= "Записка Андрея показывает, что нет ответа "
	local NoMissionNotice_1		= "Записка Андрея показывает, что нет ответа "
	local CheckBoatNotice		= "Записка Андрея показывает, что нет ответа "
	local CheckPosNotice		= "Записка Андрея показывает, что нет ответа "
	local GuildTypeNotice		= "Записка Андрея показывает, что нет ответа "		
	local CheckMissionMsg_1  	= MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 	= MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 		= ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end
	local GiveMisson_1			=	9	
	local GiveMisson_2			=	8	
	local GiveMisson_0			=	10	
	local ItemID				=	-1	
	local ItemNum				=	1	
	local Give_Exp				= 	-1	
	local Give_Money			= 	-1	
	local DelItem				=	0	
	if ItemID ~= -1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet < 1 then
			SystemNotice(role ,"Ваш инвентарь полон, освободите как минимум 1 ячейку ")
			UseItemFailed ( role )
			return
		end
	end
	local Cha_GuildID = GetChaGuildID( role )
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Неверное ID Гильдии " )
	end
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end
	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end
	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end
	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end
	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end
	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end
	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_GLDYS (role) 
	local HasRecordID			= -1			
	local HasRecordID_1			= -1			
	local NoRecordID			= 15			
	local NoRecordID_1			= -1			
	local HasMissionID			= -1			
	local HasMissionID_1		= -1			
	local No_MissionID			= 15			
	local No_MissionID_1		= -1			
	local ChaType				= -1			
	local Need_CheckPos			= -1			
	local Cha_x_max				= 4096			
	local Cha_x_min				= 0			
	local Cha_y_max				= 4096			
	local Cha_y_min				= 0			
	local MapName				= -1			
	local GuildType				= -1			
	local CheckType				= 1			
	local HasRecordNotice		= "Этот древний ключ имеет гравировку банка Громограда "
	local HasRecordNotice_1		= "Этот древний ключ имеет гравировку банка Громограда "
	local NoRecordNotice		= "Этот древний ключ имеет гравировку банка Громограда "
	local NoRecordNotice_1		= "Этот древний ключ имеет гравировку банка Громограда "
	local HasMissionNotice		= "Этот древний ключ имеет гравировку банка Громограда "
	local HasMissionNotice_1	= "Этот древний ключ имеет гравировку банка Громограда "
	local NoMissionNotice		= "Этот древний ключ имеет гравировку банка Громограда "
	local NoMissionNotice_1		= "Этот древний ключ имеет гравировку банка Громограда "
	local CheckBoatNotice		= "Этот древний ключ имеет гравировку банка Громограда "
	local CheckPosNotice		= "Этот древний ключ имеет гравировку банка Громограда "
	local GuildTypeNotice		= "Этот древний ключ имеет гравировку банка Громограда "	
	local CheckMissionMsg_1  	= MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 	= MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 		= ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end
	local GiveMisson_1			=	15	
	local GiveMisson_2			=	15	
	local GiveMisson_0			=	15	
	local ItemID				=	-1	
	local ItemNum				=	0	
	local Give_Exp				= 	-1	
	local Give_Money			= 	-1	
	local DelItem				=	0	
	local Cha_GuildID 			= GetChaGuildID( role )
	local ChaGuildType_Get 		= -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get 	= 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Неверное ID Гильдии " )
	end
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end
	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end
	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end
	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end
	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end
	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end
	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_LDADYS (role) 
	local HasRecordID			= -1			
	local HasRecordID_1			= -1			
	local NoRecordID			= 16			
	local NoRecordID_1			= -1			
	local HasMissionID			= -1			
	local HasMissionID_1		= -1			
	local No_MissionID			= 16			
	local No_MissionID_1		= -1			
	local ChaType				= -1			
	local Need_CheckPos			= -1			
	local Cha_x_max				= 4096			
	local Cha_x_min				= 0			
	local Cha_y_max				= 4096			
	local Cha_y_min				= 0			
	local MapName				= -1			
	local GuildType				= -1			
	local CheckType				= 1			
	local HasRecordNotice		= "Завещание Андрея написано на непонятном языке "
	local HasRecordNotice_1		= "Завещание Андрея написано на непонятном языке "
	local NoRecordNotice		= "Завещание Андрея написано на непонятном языке "
	local NoRecordNotice_1		= "Завещание Андрея написано на непонятном языке "
	local HasMissionNotice		= "Завещание Андрея написано на непонятном языке "
	local HasMissionNotice_1	= "Завещание Андрея написано на непонятном языке "
	local NoMissionNotice		= "Завещание Андрея написано на непонятном языке "
	local NoMissionNotice_1		= "Завещание Андрея написано на непонятном языке "
	local CheckBoatNotice		= "Завещание Андрея написано на непонятном языке "
	local CheckPosNotice		= "Завещание Андрея написано на непонятном языке "
	local GuildTypeNotice		= "Завещание Андрея написано на непонятном языке "	
	local CheckMissionMsg_1  	= MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 	= MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 		= ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end
	local GiveMisson_1			=	16	
	local GiveMisson_2			=	16	
	local GiveMisson_0			=	16	
	local ItemID				=	-1	
	local ItemNum				=	0	
	local Give_Exp				= 	-1	
	local Give_Money			= 	-1	
	local DelItem				=	0	
	local Cha_GuildID = GetChaGuildID( role )
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Неверное ID Гильдии " )
	end
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end
	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end
	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end
	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end
	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end
	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end
	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_YXYSJY (role) 
	local HasRecordID			= -1			
	local HasRecordID_1			= -1			
	local NoRecordID			= 18			
	local NoRecordID_1			= -1			
	local HasMissionID			= -1			
	local HasMissionID_1		= -1			
	local No_MissionID			= 18			
	local No_MissionID_1		= -1			
	local ChaType				= -1			
	local Need_CheckPos			= -1			
	local Cha_x_max				= 1845			
	local Cha_x_min				= 1841			
	local Cha_y_max				= 1719			
	local Cha_y_min				= 1715			
	local MapName				= "magicsea"			
	local GuildType				= -1			
	local CheckType				= 1			
	local HasRecordNotice		= "Где вы хотите применить 'Проявитель невидимых чернил'? "
	local HasRecordNotice_1		= "Где вы хотите применить 'Проявитель невидимых чернил'? "
	local NoRecordNotice		= "Где вы хотите применить 'Проявитель невидимых чернил'? "
	local NoRecordNotice_1		= "Где вы хотите применить 'Проявитель невидимых чернил'? "
	local HasMissionNotice		= "Где вы хотите применить 'Проявитель невидимых чернил'? "
	local HasMissionNotice_1	= "Где вы хотите применить 'Проявитель невидимых чернил'? "
	local NoMissionNotice		= "Где вы хотите применить 'Проявитель невидимых чернил'? "
	local NoMissionNotice_1		= "Где вы хотите применить 'Проявитель невидимых чернил'? "
	local CheckBoatNotice		= "Где вы хотите применить 'Проявитель невидимых чернил'? "
	local CheckPosNotice		= "Где вы хотите применить 'Проявитель невидимых чернил'? "
	local GuildTypeNotice		= "Где вы хотите применить 'Проявитель невидимых чернил'? "
	local CheckMissionMsg_1  	= MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 	= MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 		= ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end
	local GiveMisson_1			=	18	
	local GiveMisson_2			=	18	
	local GiveMisson_0			=	18	
	local ItemID				=	-1	
	local ItemNum				=	0	
	local Give_Exp				= 	-1	
	local Give_Money			= 	-1	
	local DelItem				=	0	
	local Cha_GuildID 			= GetChaGuildID( role )
	local ChaGuildType_Get 		= -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Неверное ID Гильдии " )
	end
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end
	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end
	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end
	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end
	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end
	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end
	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_RYDKL (role) 
	local HasRecordID			= 287			
	local HasRecordID_1			= -1			
	local NoRecordID			= 20			
	local NoRecordID_1			= -1			
	local HasMissionID			= 19			
	local HasMissionID_1		= -1			
	local No_MissionID			= 20			
	local No_MissionID_1		= -1			
	local ChaType				= -1			
	local Need_CheckPos			= 1			
	local Cha_x_max				= 184500			
	local Cha_x_min				= 184100			
	local Cha_y_max				= 171900			
	local Cha_y_min				= 171500			
	local MapName				= "magicsea"			
	local GuildType				= -1			
	local CheckType				= 1			
	local HasRecordNotice		= "На Русалочьем теле, видно древнюю резьбу: '(1843, 1717)' "
	local HasRecordNotice_1 	= "На Русалочьем теле, видно древнюю резьбу: '(1843, 1717)' "
	local NoRecordNotice		= "На Русалочьем теле, видно древнюю резьбу: '(1843, 1717)' "
	local NoRecordNotice_1		= "На Русалочьем теле, видно древнюю резьбу: '(1843, 1717)' "
	local HasMissionNotice		= "Почему бы не посмотреть Джеку "
	local HasMissionNotice_1	= "На Русалочьем теле, видно древнюю резьбу: '(1843, 1717)' "
	local NoMissionNotice		= "На Русалочьем теле, видно древнюю резьбу: '(1843, 1717)' "
	local NoMissionNotice_1		= "На Русалочьем теле, видно древнюю резьбу: '(1843, 1717)' "
	local CheckBoatNotice		= "На Русалочьем теле, видно древнюю резьбу: '(1843, 1717)' "
	local CheckPosNotice		= "На Русалочьем теле, видно древнюю резьбу: '(1843, 1717)' "
	local GuildTypeNotice		= "На Русалочьем теле, видно древнюю резьбу: '(1843, 1717)' "
	local CheckMissionMsg_1  	= MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 	= MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 		= ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end
	local GiveMisson_1			=	20	
	local GiveMisson_2			=	20	
	local GiveMisson_0			=	20	
	local ItemID				=	-1	
	local ItemNum				=	1	
	local Give_Exp				= 	-1	
	local Give_Money			= 	-1	
	local DelItem				=	0	
	if ItemID ~= -1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet < 1 then
			SystemNotice(role ,"Ваш инвентарь полон, освободите минимум 1 ячейку ")
			UseItemFailed ( role )
			return
		end
	end
	local Cha_GuildID = GetChaGuildID( role )
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Неверное ID Гильдии " )
	end
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end
	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end
	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end
	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end
	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end
	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end
	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_SXTCQ (role) 
	local HasRecordID			= -1			
	local HasRecordID_1			= -1			
	local NoRecordID			= 29			
	local NoRecordID_1			= -1			
	local HasMissionID			= 381			
	local HasMissionID_1		= -1			
	local No_MissionID			= 29			
	local No_MissionID_1		= -1			
	local ChaType				= 2			
	local Need_CheckPos			= 1			
	local Cha_x_max				= 375900			
	local Cha_x_min				= 375500			
	local Cha_y_max				= 125000			
	local Cha_y_min				= 124600			
	local MapName				= "magicsea"			
	local GuildType				= -1			
	local CheckType				= 1			
	local HasRecordNotice		= "Ошибка использования детектора "
	local HasRecordNotice_1		= "Ошибка использования детектора "
	local NoRecordNotice		= "Ошибка использования детектора "
	local NoRecordNotice_1		= "Ошибка использования детектора "
	local HasMissionNotice		= "Ошибка использования детектора "
	local HasMissionNotice_1	= "Ошибка использования детектора "
	local NoMissionNotice		= "Ошибка использования детектора "
	local NoMissionNotice_1		= "Ошибка использования детектора "
	local CheckBoatNotice		= "Подводный детектор можно использовать только в море "
	local CheckPosNotice		= "Ошибка использования детектора "
	local GuildTypeNotice		= "Ошибка использования детектора "
	local CheckMissionMsg_1  	= MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 	= MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 		= ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end
	local GiveMisson_1			=	29	
	local GiveMisson_2			=	29	
	local GiveMisson_0			=	29	
	local ItemID				=	-1	
	local ItemNum				=	1	
	local Give_Exp				= 	-1	
	local Give_Money			= 	-1	
	local DelItem				=	0	
	if ItemID ~= -1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet < 1 then
			SystemNotice(role ,"Ваш инвентарь полон, освободите минимум 1 ячейку ")
			UseItemFailed ( role )
			return
		end
	end
	local Cha_GuildID = GetChaGuildID( role )
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Неверное ID Гильдии " )
	end
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end
	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end
	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end
	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end
	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end
	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end
	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_RJDYW (role) 
	local HasRecordID			= 290			
	local HasRecordID_1			= -1			
	local NoRecordID			= 21			
	local NoRecordID_1			= -1			
	local HasMissionID			= -1			
	local HasMissionID_1		= -1			
	local No_MissionID			= 21			
	local No_MissionID_1		= -1			
	local ChaType				= -1			
	local Need_CheckPos			= -1			
	local Cha_x_max				= 0			
	local Cha_x_min				= 0			
	local Cha_y_max				= 0			
	local Cha_y_min				= 0			
	local MapName				= -1			
	local GuildType				= -1			
	local CheckType				= 1			
	local HasRecordNotice		= "Записи дневника, о таинственных странствиях Андрея "
	local HasRecordNotice_1		= "Записи дневника, о таинственных странствиях Андрея "
	local NoRecordNotice		= "Записи дневника, о таинственных странствиях Андрея "
	local NoRecordNotice_1		= "Записи дневника, о таинственных странствиях Андрея "
	local HasMissionNotice		= "Записи дневника, о таинственных странствиях Андрея "
	local HasMissionNotice_1	= "Записи дневника, о таинственных странствиях Андрея "
	local NoMissionNotice		= "Записи дневника, о таинственных странствиях Андрея "
	local NoMissionNotice_1		= "Записи дневника, о таинственных странствиях Андрея "
	local CheckBoatNotice		= "Записи дневника, о таинственных странствиях Андрея "
	local CheckPosNotice		= "Записи дневника, о таинственных странствиях Андрея "
	local GuildTypeNotice		= "Записи дневника, о таинственных странствиях Андрея "
	local CheckMissionMsg_1  	= MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 	= MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 		= ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end
	local GiveMisson_1			=	21	
	local GiveMisson_2			=	21	
	local GiveMisson_0			=	21	
	local ItemID				=	-1	
	local ItemNum				=	0	
	local Give_Exp				= 	-1	
	local Give_Money			= 	-1	
	local DelItem				=	0	
	local Cha_GuildID 			= GetChaGuildID( role )
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Неверное ID Гильдии " )
	end
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end
	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end
	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end
	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end
	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end
	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end
	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_HL (role) 
	local HasRecordID			= 315			
	local HasRecordID_1			= -1			
	local NoRecordID			= 22			
	local NoRecordID_1			= -1			
	local HasMissionID			= -1			
	local HasMissionID_1		= -1			
	local No_MissionID			= 22			
	local No_MissionID_1		= -1			
	local ChaType				= 2			
	local Need_CheckPos			= -1			
	local Cha_x_max				= 0			
	local Cha_x_min				= 0			
	local Cha_y_max				= 0			
	local Cha_y_min				= 0			
	local MapName				= -1			
	local GuildType				= -1			
	local CheckType				= 1			
	local HasRecordNotice		= "Водное колесо компаса крутится и указывает на направление в Аскароне (1497, 1707) "
	local HasRecordNotice_1		= "Водное колесо компаса крутится и указывает на направление в Аскароне (1497, 1707) "
	local NoRecordNotice		= "Водное колесо компаса крутится и указывает на направление в Аскароне (1497, 1707) "
	local NoRecordNotice_1		= "Водное колесо компаса крутится и указывает на направление в Аскароне (1497, 1707) "
	local HasMissionNotice		= "Водное колесо компаса крутится и указывает на направление в Аскароне (1497, 1707) "
	local HasMissionNotice_1	= "Водное колесо компаса крутится и указывает на направление в Аскароне (1497, 1707) "
	local NoMissionNotice		= "Водное колесо компаса крутится и указывает на направление в Аскароне (1497, 1707) "
	local NoMissionNotice_1		= "Водное колесо компаса крутится и указывает на направление в Аскароне (1497, 1707) "
	local CheckBoatNotice		= "Компас можно использовать только в море Аскарона "
	local CheckPosNotice		= "Водное колесо компаса крутится и указывает на направление в Аскароне (1497, 1707) "
	local GuildTypeNotice		= "Водное колесо компаса крутится и указывает на направление в Аскароне (1497, 1707) "
	local CheckMissionMsg_1  	= MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 	= MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 		= ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end
	local GiveMisson_1			=	22	
	local GiveMisson_2			=	22	
	local GiveMisson_0			=	22	
	local ItemID				=	-1	
	local ItemNum				=	0	
	local Give_Exp				= 	-1	
	local Give_Money			= 	-1	
	local DelItem				=	0	
	local Cha_GuildID 			= GetChaGuildID( role )
	local ChaGuildType_Get 		= -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Неверное ID Гильдии " )
	end
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end
	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end
	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end
	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end
	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end
	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end
	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_WNYDYF (role) 
	local HasRecordID			= 328			
	local HasRecordID_1			= -1			
	local NoRecordID			= 30			
	local NoRecordID_1			= -1			
	local HasMissionID			= -1			
	local HasMissionID_1		= -1			
	local No_MissionID			= 30			
	local No_MissionID_1		= -1			
	local ChaType				= -1			
	local Need_CheckPos			= -1			
	local Cha_x_max				= 0			
	local Cha_x_min				= 0			
	local Cha_y_max				= 0			
	local Cha_y_min				= 0			
	local MapName				= -1			
	local GuildType				= -1			
	local CheckType				= 1			
	local HasRecordNotice		= "Универсальное противоядие имеет уникальный рецепт "
	local HasRecordNotice_1		= "Универсальное противоядие имеет уникальный рецепт "
	local NoRecordNotice		= "Универсальное противоядие имеет уникальный рецепт "
	local NoRecordNotice_1		= "Универсальное противоядие имеет уникальный рецепт "
	local HasMissionNotice		= "Универсальное противоядие имеет уникальный рецепт "
	local HasMissionNotice_1	= "Универсальное противоядие имеет уникальный рецепт "
	local NoMissionNotice		= "Универсальное противоядие имеет уникальный рецепт "
	local NoMissionNotice_1		= "Универсальное противоядие имеет уникальный рецепт "
	local CheckBoatNotice		= "Универсальное противоядие имеет уникальный рецепт "
	local CheckPosNotice		= "Универсальное противоядие имеет уникальный рецепт "
	local GuildTypeNotice		= "Универсальное противоядие имеет уникальный рецепт "
	local CheckMissionMsg_1  	= MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 	= MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 		= ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end
	local GiveMisson_1			=	30	
	local GiveMisson_2			=	30	
	local GiveMisson_0			=	30	
	local ItemID				=	-1	
	local ItemNum				=	0	
	local Give_Exp				= 	-1	
	local Give_Money			= 	-1	
	local DelItem				=	0	
	local Cha_GuildID 			= GetChaGuildID( role )
	local ChaGuildType_Get 		= -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Неверное ID Гильдии " )
	end
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end
	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end
	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end
	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end
	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end
	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end
	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_LZL (role) 
	local HasRecordID			= -1			
	local HasRecordID_1			= -1			
	local NoRecordID			= 24			
	local NoRecordID_1			= -1			
	local HasMissionID			= -1			
	local HasMissionID_1		= -1			
	local No_MissionID			= 24			
	local No_MissionID_1		= -1			
	local ChaType				= -1			
	local Need_CheckPos			= -1			
	local Cha_x_max				= 0			
	local Cha_x_min				= 0			
	local Cha_y_max				= 0			
	local Cha_y_min				= 0			
	local MapName				= -1			
	local GuildType				= -1			
	local CheckType				= 1			
	local HasRecordNotice		= "От Слезы дракона исходит странная аура которая охлаждает всё вокруг "
	local HasRecordNotice_1		= "От Слезы дракона исходит странная аура которая охлаждает всё вокруг "
	local NoRecordNotice		= "От Слезы дракона исходит странная аура которая охлаждает всё вокруг "
	local NoRecordNotice_1		= "От Слезы дракона исходит странная аура которая охлаждает всё вокруг "
	local HasMissionNotice		= "От Слезы дракона исходит странная аура которая охлаждает всё вокруг "
	local HasMissionNotice_1	= "От Слезы дракона исходит странная аура которая охлаждает всё вокруг "
	local NoMissionNotice		= "От Слезы дракона исходит странная аура которая охлаждает всё вокруг "
	local NoMissionNotice_1		= "От Слезы дракона исходит странная аура которая охлаждает всё вокруг "
	local CheckBoatNotice		= "От Слезы дракона исходит странная аура которая охлаждает всё вокруг "
	local CheckPosNotice		= "От Слезы дракона исходит странная аура которая охлаждает всё вокруг "
	local GuildTypeNotice		= "От Слезы дракона исходит странная аура которая охлаждает всё вокруг "
	local CheckMissionMsg_1  	= MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 	= MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 		= ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end
	local GiveMisson_1			=	24	
	local GiveMisson_2			=	24	
	local GiveMisson_0			=	24	
	local ItemID				=	-1	
	local ItemNum				=	0	
	local Give_Exp				= 	-1	
	local Give_Money			= 	-1	
	local DelItem				=	0	
	local Cha_GuildID 			= GetChaGuildID( role )
	local ChaGuildType_Get 		= -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Неверное ID Гильдии " )
	end
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end
	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end
	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end
	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end
	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end
	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end
	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_BLP (role) 
	local HasRecordID			= -1			
	local HasRecordID_1			= -1			
	local NoRecordID			= -1			
	local NoRecordID_1			= -1			
	local HasMissionID			= 369			
	local HasMissionID_1		= -1			
	local No_MissionID			= -1			
	local No_MissionID_1		= -1			
	local ChaType				= -1			
	local Need_CheckPos			= 1			
	local Cha_x_max				= 380200			
	local Cha_x_min				= 379800			
	local Cha_y_max				= 55200			
	local Cha_y_min				= 54800			
	local MapName				= "darkblue"			
	local GuildType				= -1			
	local CheckType				= 1			
	local HasRecordNotice		= "Святая вода может очистить ауру от нечести "
	local HasRecordNotice_1		= "Святая вода может очистить ауру от нечести "
	local NoRecordNotice		= "Святая вода может очистить ауру от нечести "
	local NoRecordNotice_1		= "Святая вода может очистить ауру от нечести "
	local HasMissionNotice		= "Святая вода может очистить ауру от нечести "
	local HasMissionNotice_1	= "Святая вода может очистить ауру от нечести "
	local NoMissionNotice		= "Святая вода может очистить ауру от нечести "
	local NoMissionNotice_1		= "Святая вода может очистить ауру от нечести "
	local CheckBoatNotice		= "Святая вода может очистить ауру от нечести "
	local CheckPosNotice		= "Святая вода может очистить ауру от нечести "
	local GuildTypeNotice		= "Святая вода может очистить ауру от нечести "
	local CheckMissionMsg_1  	= MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 	= MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 		= ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end
	local GiveMisson_1			=	-1	
	local GiveMisson_2			=	-1	
	local GiveMisson_0			=	-1	
	local ItemID				=	4257	
	local ItemNum				=	1	
	local Give_Exp				= 	-1	
	local Give_Money			= 	-1	
	local DelItem				=	1	
	local Cha_GuildID 			= GetChaGuildID( role )
	local ChaGuildType_Get 		= -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Неверное ID Гильдии " )
	end
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end
	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end
	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end
	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end
	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end
	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end
	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_SS (role) 
	local HasRecordID			= -1			
	local HasRecordID_1			= -1			
	local NoRecordID			= 26			
	local NoRecordID_1			= -1			
	local HasMissionID			= 370			
	local HasMissionID_1		= -1			
	local No_MissionID			= 26			
	local No_MissionID_1		= -1			
	local ChaType				= -1			
	local Need_CheckPos			= -1			
	local Cha_x_max				= 0			
	local Cha_x_min				= 0			
	local Cha_y_max				= 0			
	local Cha_y_min				= 0			
	local MapName				= -1			
	local GuildType				= -1			
	local CheckType				= 1			
	local HasRecordNotice		= "Святая вода может очистить ауру от нечести "
	local HasRecordNotice_1		= "Святая вода может очистить ауру от нечести "
	local NoRecordNotice		= "Святая вода может очистить ауру от нечести "
	local NoRecordNotice_1		= "Святая вода может очистить ауру от нечести "
	local HasMissionNotice		= "Святая вода может очистить ауру от нечести "
	local HasMissionNotice_1	= "Святая вода может очистить ауру от нечести "
	local NoMissionNotice		= "Святая вода может очистить ауру от нечести "
	local NoMissionNotice_1		= "Святая вода может очистить ауру от нечести "
	local CheckBoatNotice		= "Святая вода может очистить ауру от нечести "
	local CheckPosNotice		= "Святая вода может очистить ауру от нечести "
	local GuildTypeNotice		= "Святая вода может очистить ауру от нечести "
	local CheckMissionMsg_1  	= MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 	= MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 		= ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end
	local GiveMisson_1			=	26	
	local GiveMisson_2			=	26	
	local GiveMisson_0			=	26	
	local ItemID				=	-1	
	local ItemNum				=	0	
	local Give_Exp				= 	-1	
	local Give_Money			= 	-1	
	local DelItem				=	0	
	local Cha_GuildID 			= GetChaGuildID( role )
	local ChaGuildType_Get 		= -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Неверное ID Гильдии " )
	end
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end
	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end
	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end
	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end
	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end
	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end
	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_FHSDX (role) 
	local HasRecordID			= -1			
	local HasRecordID_1			= -1			
	local NoRecordID			= 27			
	local NoRecordID_1			= -1			
	local HasMissionID			= 362			
	local HasMissionID_1		= -1			
	local No_MissionID			= 27			
	local No_MissionID_1		= -1			
	local ChaType				= -1			
	local Need_CheckPos			= -1			
	local Cha_x_max				= 0			
	local Cha_x_min				= 0			
	local Cha_y_max				= 0			
	local Cha_y_min				= 0			
	local MapName				= -1			
	local GuildType				= -1			
	local CheckType				= 1			
	local HasRecordNotice		= "Нормальное письмо розового цвета "
	local HasRecordNotice_1 	= "Нормальное письмо розового цвета "
	local NoRecordNotice		= "Нормальное письмо розового цвета "
	local NoRecordNotice_1		= "Нормальное письмо розового цвета "
	local HasMissionNotice		= "Нормальное письмо розового цвета "
	local HasMissionNotice_1	= "Нормальное письмо розового цвета "
	local NoMissionNotice		= "Нормальное письмо розового цвета "
	local NoMissionNotice_1		= "Нормальное письмо розового цвета "
	local CheckBoatNotice		= "Нормальное письмо розового цвета "
	local CheckPosNotice		= "Нормальное письмо розового цвета "
	local GuildTypeNotice		= "Нормальное письмо розового цвета "
	local CheckMissionMsg_1  	= MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 	= MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 		= ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end
	local GiveMisson_1			=	27	
	local GiveMisson_2			=	27	
	local GiveMisson_0			=	27	
	local ItemID				=	-1	
	local ItemNum				=	0	
	local Give_Exp				= 	-1	
	local Give_Money			= 	-1	
	local DelItem				=	0	
	local Cha_GuildID 			= GetChaGuildID( role )
	local ChaGuildType_Get 		= -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Неверное ID Гильдии " )
	end
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end
	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end
	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end
	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end
	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end
	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end
	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_WYJ (role) 
	local HasRecordID			= -1			
	local HasRecordID_1			= -1			
	local NoRecordID			= 28			
	local NoRecordID_1			= -1			
	local HasMissionID			= 375			
	local HasMissionID_1		= -1			
	local No_MissionID			= 28			
	local No_MissionID_1		= -1			
	local ChaType				= -1			
	local Need_CheckPos			= -1			
	local Cha_x_max				= 0			
	local Cha_x_min				= 0			
	local Cha_y_max				= 0			
	local Cha_y_min				= 0			
	local MapName				= -1			
	local GuildType				= -1			
	local CheckType				= 1			
	local HasRecordNotice		= "Бинокль позволяет видеть очень далеко и разглядывать различные места из далека "
	local HasRecordNotice_1		= "Бинокль позволяет видеть очень далеко и разглядывать различные места из далека "
	local NoRecordNotice		= "Бинокль позволяет видеть очень далеко и разглядывать различные места из далека "
	local NoRecordNotice_1		= "Бинокль позволяет видеть очень далеко и разглядывать различные места из далека "
	local HasMissionNotice		= "Бинокль позволяет видеть очень далеко и разглядывать различные места из далека "
	local HasMissionNotice_1	= "Бинокль позволяет видеть очень далеко и разглядывать различные места из далека "
	local NoMissionNotice		= "Бинокль позволяет видеть очень далеко и разглядывать различные места из далека "
	local NoMissionNotice_1		= "Бинокль позволяет видеть очень далеко и разглядывать различные места из далека "
	local CheckBoatNotice		= "Бинокль позволяет видеть очень далеко и разглядывать различные места из далека "
	local CheckPosNotice		= "Бинокль позволяет видеть очень далеко и разглядывать различные места из далека "
	local GuildTypeNotice		= "Бинокль позволяет видеть очень далеко и разглядывать различные места из далека "
	local CheckMissionMsg_1  	= MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 	= MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 		= ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end
	local GiveMisson_1			=	28	
	local GiveMisson_2			=	28	
	local GiveMisson_0			=	28	
	local ItemID				=	-1	
	local ItemNum				=	0	
	local Give_Exp				= 	-1	
	local Give_Money			= 	-1	
	local DelItem				=	0	
	local Cha_GuildID 			= GetChaGuildID( role )
	local ChaGuildType_Get 		= -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Неверное ID Гильдии " )
	end
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end
	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end
	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end
	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end
	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end
	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end
	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_LDADYW2 (role) 
	local HasRecordID			= -1			
	local HasRecordID_1			= -1			
	local NoRecordID			= 14			
	local NoRecordID_1			= -1			
	local HasMissionID			= 273			
	local HasMissionID_1		= -1			
	local No_MissionID			= 14			
	local No_MissionID_1		= -1			
	local ChaType				= -1			
	local Need_CheckPos			= 1			
	local Cha_x_max				= 7900			
	local Cha_x_min				= 7500			
	local Cha_y_max				= 397300			
	local Cha_y_min				= 396900			
	local MapName				= "garner"			
	local GuildType				= -1			
	local CheckType				= 1			
	local HasRecordNotice	 = "Записка Андрея очень помята и вся испачкана "
	local HasRecordNotice_1  = "Записка Андрея очень помята и вся испачкана "
	local NoRecordNotice	 = "Записка Андрея очень помята и вся испачкана "
	local NoRecordNotice_1	 = "Записка Андрея очень помята и вся испачкана "
	local HasMissionNotice	 = "Записка Андрея очень помята и вся испачкана "
	local HasMissionNotice_1 = "Записка Андрея очень помята и вся испачкана "
	local NoMissionNotice	 = "Записка Андрея очень помята и вся испачкана "
	local NoMissionNotice_1	 = "Записка Андрея очень помята и вся испачкана "
	local CheckBoatNotice	 = "Записка Андрея очень помята и вся испачкана "
	local CheckPosNotice	 = "Записка Андрея показывает, что нет ответа "
	local GuildTypeNotice	 = "Записка Андрея очень помята и вся испачкана "	
	local CheckMissionMsg_1  	= MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
	local CheckMissionMsg_2	 	= MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
	local CheckChaMsg	 		= ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end
	local GiveMisson_1			=	14	
	local GiveMisson_2			=	14	
	local GiveMisson_0			=	14	
	local ItemID				=	-1	
	local ItemNum				=	0	
	local Give_Exp				= 	-1	
	local Give_Money			= 	-1	
	local DelItem				=	0	
	local Cha_GuildID 			= GetChaGuildID( role )
	local ChaGuildType_Get 		= -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Неверное ID Гильдии " )
	end
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end
	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end
	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end
	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end
	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end
	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end
	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end
end 