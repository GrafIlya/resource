----------------------------------------------
--			������� DLDevTeam				--
----------------------------------------------

print( "����㧪� ItemGetMission.lua" )

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
	local HasRecordNotice		= "������� ������ ����������, ��� ��� ������ "
	local HasRecordNotice_1		= "������� ������ ����������, ��� ��� ������ "
	local NoRecordNotice		= "������� ������ ����������, ��� ��� ������ "
	local NoRecordNotice_1		= "������� ������ ����������, ��� ��� ������ "
	local HasMissionNotice		= "������� ������ ����������, ��� ��� ������ "
	local HasMissionNotice_1	= "������� ������ ����������, ��� ��� ������ "
	local NoMissionNotice		= "������� ������ ����������, ��� ��� ������ "
	local NoMissionNotice_1		= "������� ������ ����������, ��� ��� ������ "
	local CheckBoatNotice		= "������� ������ ����������, ��� ��� ������ "
	local CheckPosNotice		= "������� ������ ����������, ��� ��� ������ "
	local GuildTypeNotice		= "������� ������ ����������, ��� ��� ������ "		
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
			SystemNotice(role ,"��� ��������� �����, ���������� ��� ������� 1 ������ ")
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
		SystemNotice ( role , "�������� ID ������� " )
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
	local HasRecordNotice		= "���� ������� ���� ����� ���������� ����� ���������� "
	local HasRecordNotice_1		= "���� ������� ���� ����� ���������� ����� ���������� "
	local NoRecordNotice		= "���� ������� ���� ����� ���������� ����� ���������� "
	local NoRecordNotice_1		= "���� ������� ���� ����� ���������� ����� ���������� "
	local HasMissionNotice		= "���� ������� ���� ����� ���������� ����� ���������� "
	local HasMissionNotice_1	= "���� ������� ���� ����� ���������� ����� ���������� "
	local NoMissionNotice		= "���� ������� ���� ����� ���������� ����� ���������� "
	local NoMissionNotice_1		= "���� ������� ���� ����� ���������� ����� ���������� "
	local CheckBoatNotice		= "���� ������� ���� ����� ���������� ����� ���������� "
	local CheckPosNotice		= "���� ������� ���� ����� ���������� ����� ���������� "
	local GuildTypeNotice		= "���� ������� ���� ����� ���������� ����� ���������� "	
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
		SystemNotice ( role , "�������� ID ������� " )
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
	local HasRecordNotice		= "��������� ������ �������� �� ���������� ����� "
	local HasRecordNotice_1		= "��������� ������ �������� �� ���������� ����� "
	local NoRecordNotice		= "��������� ������ �������� �� ���������� ����� "
	local NoRecordNotice_1		= "��������� ������ �������� �� ���������� ����� "
	local HasMissionNotice		= "��������� ������ �������� �� ���������� ����� "
	local HasMissionNotice_1	= "��������� ������ �������� �� ���������� ����� "
	local NoMissionNotice		= "��������� ������ �������� �� ���������� ����� "
	local NoMissionNotice_1		= "��������� ������ �������� �� ���������� ����� "
	local CheckBoatNotice		= "��������� ������ �������� �� ���������� ����� "
	local CheckPosNotice		= "��������� ������ �������� �� ���������� ����� "
	local GuildTypeNotice		= "��������� ������ �������� �� ���������� ����� "	
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
		SystemNotice ( role , "�������� ID ������� " )
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
	local HasRecordNotice		= "��� �� ������ ��������� '���������� ��������� ������'? "
	local HasRecordNotice_1		= "��� �� ������ ��������� '���������� ��������� ������'? "
	local NoRecordNotice		= "��� �� ������ ��������� '���������� ��������� ������'? "
	local NoRecordNotice_1		= "��� �� ������ ��������� '���������� ��������� ������'? "
	local HasMissionNotice		= "��� �� ������ ��������� '���������� ��������� ������'? "
	local HasMissionNotice_1	= "��� �� ������ ��������� '���������� ��������� ������'? "
	local NoMissionNotice		= "��� �� ������ ��������� '���������� ��������� ������'? "
	local NoMissionNotice_1		= "��� �� ������ ��������� '���������� ��������� ������'? "
	local CheckBoatNotice		= "��� �� ������ ��������� '���������� ��������� ������'? "
	local CheckPosNotice		= "��� �� ������ ��������� '���������� ��������� ������'? "
	local GuildTypeNotice		= "��� �� ������ ��������� '���������� ��������� ������'? "
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
		SystemNotice ( role , "�������� ID ������� " )
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
	local HasRecordNotice		= "�� ���������� ����, ����� ������� ������: '(1843, 1717)' "
	local HasRecordNotice_1 	= "�� ���������� ����, ����� ������� ������: '(1843, 1717)' "
	local NoRecordNotice		= "�� ���������� ����, ����� ������� ������: '(1843, 1717)' "
	local NoRecordNotice_1		= "�� ���������� ����, ����� ������� ������: '(1843, 1717)' "
	local HasMissionNotice		= "������ �� �� ���������� ����� "
	local HasMissionNotice_1	= "�� ���������� ����, ����� ������� ������: '(1843, 1717)' "
	local NoMissionNotice		= "�� ���������� ����, ����� ������� ������: '(1843, 1717)' "
	local NoMissionNotice_1		= "�� ���������� ����, ����� ������� ������: '(1843, 1717)' "
	local CheckBoatNotice		= "�� ���������� ����, ����� ������� ������: '(1843, 1717)' "
	local CheckPosNotice		= "�� ���������� ����, ����� ������� ������: '(1843, 1717)' "
	local GuildTypeNotice		= "�� ���������� ����, ����� ������� ������: '(1843, 1717)' "
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
			SystemNotice(role ,"��� ��������� �����, ���������� ������� 1 ������ ")
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
		SystemNotice ( role , "�������� ID ������� " )
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
	local HasRecordNotice		= "������ ������������� ��������� "
	local HasRecordNotice_1		= "������ ������������� ��������� "
	local NoRecordNotice		= "������ ������������� ��������� "
	local NoRecordNotice_1		= "������ ������������� ��������� "
	local HasMissionNotice		= "������ ������������� ��������� "
	local HasMissionNotice_1	= "������ ������������� ��������� "
	local NoMissionNotice		= "������ ������������� ��������� "
	local NoMissionNotice_1		= "������ ������������� ��������� "
	local CheckBoatNotice		= "��������� �������� ����� ������������ ������ � ���� "
	local CheckPosNotice		= "������ ������������� ��������� "
	local GuildTypeNotice		= "������ ������������� ��������� "
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
			SystemNotice(role ,"��� ��������� �����, ���������� ������� 1 ������ ")
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
		SystemNotice ( role , "�������� ID ������� " )
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
	local HasRecordNotice		= "������ ��������, � ������������ ����������� ������ "
	local HasRecordNotice_1		= "������ ��������, � ������������ ����������� ������ "
	local NoRecordNotice		= "������ ��������, � ������������ ����������� ������ "
	local NoRecordNotice_1		= "������ ��������, � ������������ ����������� ������ "
	local HasMissionNotice		= "������ ��������, � ������������ ����������� ������ "
	local HasMissionNotice_1	= "������ ��������, � ������������ ����������� ������ "
	local NoMissionNotice		= "������ ��������, � ������������ ����������� ������ "
	local NoMissionNotice_1		= "������ ��������, � ������������ ����������� ������ "
	local CheckBoatNotice		= "������ ��������, � ������������ ����������� ������ "
	local CheckPosNotice		= "������ ��������, � ������������ ����������� ������ "
	local GuildTypeNotice		= "������ ��������, � ������������ ����������� ������ "
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
		SystemNotice ( role , "�������� ID ������� " )
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
	local HasRecordNotice		= "������ ������ ������� �������� � ��������� �� ����������� � �������� (1497, 1707) "
	local HasRecordNotice_1		= "������ ������ ������� �������� � ��������� �� ����������� � �������� (1497, 1707) "
	local NoRecordNotice		= "������ ������ ������� �������� � ��������� �� ����������� � �������� (1497, 1707) "
	local NoRecordNotice_1		= "������ ������ ������� �������� � ��������� �� ����������� � �������� (1497, 1707) "
	local HasMissionNotice		= "������ ������ ������� �������� � ��������� �� ����������� � �������� (1497, 1707) "
	local HasMissionNotice_1	= "������ ������ ������� �������� � ��������� �� ����������� � �������� (1497, 1707) "
	local NoMissionNotice		= "������ ������ ������� �������� � ��������� �� ����������� � �������� (1497, 1707) "
	local NoMissionNotice_1		= "������ ������ ������� �������� � ��������� �� ����������� � �������� (1497, 1707) "
	local CheckBoatNotice		= "������ ����� ������������ ������ � ���� �������� "
	local CheckPosNotice		= "������ ������ ������� �������� � ��������� �� ����������� � �������� (1497, 1707) "
	local GuildTypeNotice		= "������ ������ ������� �������� � ��������� �� ����������� � �������� (1497, 1707) "
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
		SystemNotice ( role , "�������� ID ������� " )
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
	local HasRecordNotice		= "������������� ����������� ����� ���������� ������ "
	local HasRecordNotice_1		= "������������� ����������� ����� ���������� ������ "
	local NoRecordNotice		= "������������� ����������� ����� ���������� ������ "
	local NoRecordNotice_1		= "������������� ����������� ����� ���������� ������ "
	local HasMissionNotice		= "������������� ����������� ����� ���������� ������ "
	local HasMissionNotice_1	= "������������� ����������� ����� ���������� ������ "
	local NoMissionNotice		= "������������� ����������� ����� ���������� ������ "
	local NoMissionNotice_1		= "������������� ����������� ����� ���������� ������ "
	local CheckBoatNotice		= "������������� ����������� ����� ���������� ������ "
	local CheckPosNotice		= "������������� ����������� ����� ���������� ������ "
	local GuildTypeNotice		= "������������� ����������� ����� ���������� ������ "
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
		SystemNotice ( role , "�������� ID ������� " )
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
	local HasRecordNotice		= "�� ����� ������� ������� �������� ���� ������� ��������� �� ������ "
	local HasRecordNotice_1		= "�� ����� ������� ������� �������� ���� ������� ��������� �� ������ "
	local NoRecordNotice		= "�� ����� ������� ������� �������� ���� ������� ��������� �� ������ "
	local NoRecordNotice_1		= "�� ����� ������� ������� �������� ���� ������� ��������� �� ������ "
	local HasMissionNotice		= "�� ����� ������� ������� �������� ���� ������� ��������� �� ������ "
	local HasMissionNotice_1	= "�� ����� ������� ������� �������� ���� ������� ��������� �� ������ "
	local NoMissionNotice		= "�� ����� ������� ������� �������� ���� ������� ��������� �� ������ "
	local NoMissionNotice_1		= "�� ����� ������� ������� �������� ���� ������� ��������� �� ������ "
	local CheckBoatNotice		= "�� ����� ������� ������� �������� ���� ������� ��������� �� ������ "
	local CheckPosNotice		= "�� ����� ������� ������� �������� ���� ������� ��������� �� ������ "
	local GuildTypeNotice		= "�� ����� ������� ������� �������� ���� ������� ��������� �� ������ "
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
		SystemNotice ( role , "�������� ID ������� " )
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
	local HasRecordNotice		= "������ ���� ����� �������� ���� �� ������� "
	local HasRecordNotice_1		= "������ ���� ����� �������� ���� �� ������� "
	local NoRecordNotice		= "������ ���� ����� �������� ���� �� ������� "
	local NoRecordNotice_1		= "������ ���� ����� �������� ���� �� ������� "
	local HasMissionNotice		= "������ ���� ����� �������� ���� �� ������� "
	local HasMissionNotice_1	= "������ ���� ����� �������� ���� �� ������� "
	local NoMissionNotice		= "������ ���� ����� �������� ���� �� ������� "
	local NoMissionNotice_1		= "������ ���� ����� �������� ���� �� ������� "
	local CheckBoatNotice		= "������ ���� ����� �������� ���� �� ������� "
	local CheckPosNotice		= "������ ���� ����� �������� ���� �� ������� "
	local GuildTypeNotice		= "������ ���� ����� �������� ���� �� ������� "
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
		SystemNotice ( role , "�������� ID ������� " )
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
	local HasRecordNotice		= "������ ���� ����� �������� ���� �� ������� "
	local HasRecordNotice_1		= "������ ���� ����� �������� ���� �� ������� "
	local NoRecordNotice		= "������ ���� ����� �������� ���� �� ������� "
	local NoRecordNotice_1		= "������ ���� ����� �������� ���� �� ������� "
	local HasMissionNotice		= "������ ���� ����� �������� ���� �� ������� "
	local HasMissionNotice_1	= "������ ���� ����� �������� ���� �� ������� "
	local NoMissionNotice		= "������ ���� ����� �������� ���� �� ������� "
	local NoMissionNotice_1		= "������ ���� ����� �������� ���� �� ������� "
	local CheckBoatNotice		= "������ ���� ����� �������� ���� �� ������� "
	local CheckPosNotice		= "������ ���� ����� �������� ���� �� ������� "
	local GuildTypeNotice		= "������ ���� ����� �������� ���� �� ������� "
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
		SystemNotice ( role , "�������� ID ������� " )
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
	local HasRecordNotice		= "���������� ������ �������� ����� "
	local HasRecordNotice_1 	= "���������� ������ �������� ����� "
	local NoRecordNotice		= "���������� ������ �������� ����� "
	local NoRecordNotice_1		= "���������� ������ �������� ����� "
	local HasMissionNotice		= "���������� ������ �������� ����� "
	local HasMissionNotice_1	= "���������� ������ �������� ����� "
	local NoMissionNotice		= "���������� ������ �������� ����� "
	local NoMissionNotice_1		= "���������� ������ �������� ����� "
	local CheckBoatNotice		= "���������� ������ �������� ����� "
	local CheckPosNotice		= "���������� ������ �������� ����� "
	local GuildTypeNotice		= "���������� ������ �������� ����� "
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
		SystemNotice ( role , "�������� ID ������� " )
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
	local HasRecordNotice		= "������� ��������� ������ ����� ������ � ������������ ��������� ����� �� ������ "
	local HasRecordNotice_1		= "������� ��������� ������ ����� ������ � ������������ ��������� ����� �� ������ "
	local NoRecordNotice		= "������� ��������� ������ ����� ������ � ������������ ��������� ����� �� ������ "
	local NoRecordNotice_1		= "������� ��������� ������ ����� ������ � ������������ ��������� ����� �� ������ "
	local HasMissionNotice		= "������� ��������� ������ ����� ������ � ������������ ��������� ����� �� ������ "
	local HasMissionNotice_1	= "������� ��������� ������ ����� ������ � ������������ ��������� ����� �� ������ "
	local NoMissionNotice		= "������� ��������� ������ ����� ������ � ������������ ��������� ����� �� ������ "
	local NoMissionNotice_1		= "������� ��������� ������ ����� ������ � ������������ ��������� ����� �� ������ "
	local CheckBoatNotice		= "������� ��������� ������ ����� ������ � ������������ ��������� ����� �� ������ "
	local CheckPosNotice		= "������� ��������� ������ ����� ������ � ������������ ��������� ����� �� ������ "
	local GuildTypeNotice		= "������� ��������� ������ ����� ������ � ������������ ��������� ����� �� ������ "
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
		SystemNotice ( role , "�������� ID ������� " )
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
	local HasRecordNotice	 = "������� ������ ����� ������ � ��� ��������� "
	local HasRecordNotice_1  = "������� ������ ����� ������ � ��� ��������� "
	local NoRecordNotice	 = "������� ������ ����� ������ � ��� ��������� "
	local NoRecordNotice_1	 = "������� ������ ����� ������ � ��� ��������� "
	local HasMissionNotice	 = "������� ������ ����� ������ � ��� ��������� "
	local HasMissionNotice_1 = "������� ������ ����� ������ � ��� ��������� "
	local NoMissionNotice	 = "������� ������ ����� ������ � ��� ��������� "
	local NoMissionNotice_1	 = "������� ������ ����� ������ � ��� ��������� "
	local CheckBoatNotice	 = "������� ������ ����� ������ � ��� ��������� "
	local CheckPosNotice	 = "������� ������ ����������, ��� ��� ������ "
	local GuildTypeNotice	 = "������� ������ ����� ������ � ��� ��������� "	
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
		SystemNotice ( role , "�������� ID ������� " )
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