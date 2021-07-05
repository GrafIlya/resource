print( "Loading Exp_And_Level.lua" )


InTeamGetExp_RAID = 1

function AskGuildItem(role,Guild_type)
	local gold = GetChaAttr(role,ATTR_GD)
	local fame = GetChaAttr(role,ATTR_FAME) 
	local attr_guild = HasGuild ( role ) 
	if attr_guild ~= 0 then 
		HelpInfo(role,0,"You are already in a guild")
		--SystemNotice(role,0,"You are already in a guild")
		return 0 
	end 
	local Lv = Lv ( role )
	if Lv < 40 then
		SystemNotice ( role , "Have not reached Lv 40. Unable to create" )
		return 0
	end

	if Guild_type == 1 then						--??????
		if Guild2_ItemMax > 0 then
			for i = 1 , Guild2_ItemMax , 1 do
				local K = Check_BagItem(role,Guild2_item[i],Guild2_count[i])
				if K == 0 then
					HelpInfo(role,0,"Items insufficient. Unable to create")
					--SystemNotice(role,0,"Items insufficient. Unable to create")
					return 0
				end
			end
		end

		if gold < Guild2_Gold then
			HelpInfo(role,0,"Insufficient gold. Unable to create")
			--SystemNotice(role,0,"Insufficient gold. Unable to create")
			return 0
		end
		if fame < Guild2_fame then
			HelpInfo(role,0,"Insufficient reputation to create")
			--SystemNotice(role,0,"Insufficient reputation to create")
			return 0
		end
	elseif Guild_type == 0 then					--??????
		if Guild1_ItemMax > 0 then
			for i = 1 , Guild1_ItemMax , 1 do
				local K = Check_BagItem(role,Guild1_item[i],Guild1_count[i])
				if K == 0 then
					HelpInfo(role,0,"Items insufficient. Unable to create")
					--SystemNotice(role,0,"Items insufficient. Unable to create")
					return 0
				end
			end
		end
		if gold < Guild1_Gold then
			HelpInfo(role,0,"Insufficient gold. Unable to create")
			--SystemNotice(role,0,"Insufficient gold. Unable to create")
			return 0
		end
		if fame < Guild1_fame then
			HelpInfo(role,0,"Insufficient reputation to create")
			--SystemNotice(role,0,"Insufficient reputation to create")
			return 0
		end
	else
		--LG("checkguild","guide type error  Guild_type = ",Guild_type)
	end
	return 1
end 

function Check_BagItem(role,a,b)		--??????????
	local a = CheckBagItem ( role , a ) 
	if a>= b then 
		return 1 
	else 
		return 0 
	end 
end 

--??????????
function DeductGuildItem(role,Guild_type)
	local gold = GetChaAttr(role,ATTR_GD)
	local fame = GetChaAttr(role,ATTR_FAME) 
	local attr_guild = HasGuild ( role )  
	local file = io.open("guild/"..GetChaGuildID(role)..".txt", "w+")
    if file ~= nil then
        file:write (GetRoleID(role))
        file:close()
    end

	if Guild_type == 1 then						--??????
--		if Guild2_ItemMax > 0 then
--			for i = 1 ,Guild2_ItemMax,1 do
--				local K = DelBagItem(role,Guild2_item[i],Guild2_count[i])
--			end
--		end
		DelBagItem(role,1780,1)	
		gold = gold - Guild2_Gold
		fame = fame - Guild2_fame
		SetAttrChangeFlag ( role )

		SetChaAttr(role,ATTR_GD,gold)
		SetChaAttr(role,ATTR_FAME,fame)

		SyncChar( role, 4 )
	
	elseif Guild_type == 0	then					--??????
--		if Guild1_ItemMax > 0 then
--			for i = 1 ,Guild1_ItemMax,1 do
--				local K = DelBagItem(role,Guild1_item[i],Guild1_count[i])
--			end
--		end
		DelBagItem(role,1780,1)	
		gold = gold - Guild1_Gold
		fame = fame - Guild1_fame
		SetAttrChangeFlag ( role )

		SetChaAttr(role,ATTR_GD,gold)
		SetChaAttr(role,ATTR_FAME,fame)

		SyncChar( role, 4 )
	else
		--LG("checkguild","guide type error Guild_type = ",Guild_type)
	end

end
	

function AskJoinGuild ( role , guild_type ) 					-- ????????   ???? 0-??,1-??
	local attr_guild = HasGuild ( role )  
	if attr_guild ~= 0 then 
		HelpInfo(role,0,"You are already in a guild") 
		--SystemNotice(role,0,"You are already in a guild") 
		return 0 
	end 
--	local fame = GetChaAttr ( role , ATTR_FAME ) 
--	if guild_type == 0 then 
--		if fame < JOINGUILD_NAVY_FAME then 
--			HelpInfo(role,0,"Navy reputation insufficient") 
--			--SystemNotice(role,0,"Navy reputation insufficient") 
--			return 0 
--		end 
--	elseif guild_type == 1 then 
--		if fame > JOINGUILD_PIRATE_FAME then 
--			HelpInfo(role,0,"Pirate reputation insufficient") 
--			--SystemNotice(role,0,"Pirate reputation insufficient") 
--			return 0 
--		end 
--	end 
	return 1 
end 

			



--????(????????)
--??????????
function GetExp_New(dead , atk  ) 
	local a = Check_Combat_Mod(dead , atk ) 
	if a==1 then 
	GetExp_PKM( dead , atk ) --[[player kill monster]]--
	elseif a==2 then 
	GetExp_MKP(dead , atk) --[[monster kill player]]--
	elseif a==3 then 
	GetExp_PKP(dead , atk) --[[player kill player]]--
	elseif a==4 then 
	GetExp_Noexp(dead , atk) --[[monster kill monster]]--
	else 
	--LuaPrint("Unable to determine experience reward mode".."\n") return 
	end 
end 


function Check_Combat_Mod(dead , atk)
	local rolemod_atker = IsPlayer(atk) 
	local rolemod_defer = IsPlayer(dead) 
	if (rolemod_atker==0) and (rolemod_defer==0) then 
		return 4 
	elseif rolemod_atker==0 and rolemod_defer==1 then 
		return 2 
	elseif rolemod_atker==1 and rolemod_defer==0 then 
		return 1 
	elseif rolemod_atker==1 and rolemod_defer==1 then 
		return 3 
	else 
		return 
	end 
end 


function GetExp_PKM( dead , atk  ) 
	local dead_lv = GetChaAttrI( dead , ATTR_LV ) 
	local dead_exp = GetChaAttrI( dead , ATTR_CEXP ) * EXP_RAID
	local k = {} 
	local kdmg = {} 
	local k_exp = {} 

	k[0] , kdmg[0] = GetChaHarmByNo ( dead , 0 ) 
	k[1] , kdmg[1] = GetChaHarmByNo ( dead , 1 ) 
	k[2] , kdmg[2] = GetChaHarmByNo ( dead , 2 ) 
	k[3] , kdmg[3] = GetChaHarmByNo ( dead , 3 ) 
	k[4] , kdmg[4] = GetChaHarmByNo ( dead , 4 ) 
	local first_atker = GetFirstAtker ( dead ) 
	local NameCha = GetChaDefaultName(atk)
	MonsterSiege.Ranking.PKM(dead, atk)	
	----------------------------
	-- Счет всех убитых мобов --
	----------------------------
	local IDCha = GetRoleID(atk)
	HandleLuaSql("UPDATE GameDB.dbo.character SET KillMobs = KillMobs + 1 WHERE cha_id = '"..IDCha.."'")
	-----------------------------
	-- Выдача голды за миников --
	-----------------------------
	---Проверка на ресет и бонус от золотой ягоды
	local slot_medal = GetChaItem(atk, 2, 5)
	local medal_id = GetItemID( slot_medal )
	local gold_res_medal = 1
	if medal_id == 8109 then
		gold_res_medal = 2
	elseif medal_id == 8110 then
		gold_res_medal = 2
	elseif medal_id == 8111 then
		gold_res_medal = 3
	elseif medal_id == 8112 then
		gold_res_medal = 4
	elseif medal_id == 8113 then
		gold_res_medal = 5
	elseif medal_id == 8114 then
		gold_res_medal = 6
	end
	local GOLD_RAID_RESET = 1
	local StateLvGold = GetChaStateLv (atk, STATE_GOLD )
	if StateLvGold == 1 then
		GOLD_RAID_RESET = StateLv + 1
	elseif StateLvGold == 2 then
		GOLD_RAID_RESET = 2
	elseif StateLvGold == 3	then
		GOLD_RAID_RESET = 2.5
	elseif StateLvGold == 4	then
		GOLD_RAID_RESET = 3
	elseif StateLvGold == 5	then
		GOLD_RAID_RESET = 3.5
	elseif StateLvGold == 6	then
		GOLD_RAID_RESET = 4
	end
	
	local ID_Monster = GetChaID(dead)					--Берем ID монстра
	local Map_Monster = GetChaMapName ( dead )				--Берем карту монстра
	local Gold_Monster = 0
	--Если ID боссов
	if (ID_Monster > 1395 or ID_Monster == 850 or ID_Monster == 851) then
		if Map_Monster == "garner" then
			if dead_lv >= 1 and dead_lv < 11 then
				Gold_Monster = 10000
				GiveItem ( atk , 0 , 7999  , 1 , 4 ) 
			elseif dead_lv > 10 and dead_lv < 21 then
				Gold_Monster = 15000
				GiveItem ( atk , 0 , 7999  , 1 , 4 ) 
			elseif dead_lv > 20 and dead_lv < 31 then
				Gold_Monster = 35000
				GiveItem ( atk , 0 , 8000  , 1 , 4 ) 
			elseif dead_lv > 30 and dead_lv < 41 then
				Gold_Monster = 50000
				GiveItem ( atk , 0 , 8000  , 1 , 4 ) 
			elseif dead_lv > 40 and dead_lv < 51 then
				Gold_Monster = 70000
				GiveItem ( atk , 0 , 8001  , 1 , 4 ) 
			elseif dead_lv > 50 and dead_lv < 61 then
				Gold_Monster = 75000
				GiveItem ( atk , 0 , 8001  , 1 , 4 )
			elseif dead_lv > 60 and dead_lv < 71 then
				Gold_Monster = 80000
				GiveItem ( atk , 0 , 8002  , 1 , 4 )
			elseif dead_lv > 70 and dead_lv < 81 then
				Gold_Monster = 100000
				GiveItem ( atk , 0 , 8002  , 1 , 4 )
			end
		elseif Map_Monster == "abandonedcity" then
			Gold_Monster = 75000
			GiveItem ( atk , 0 , 8000  , 1 , 4 )
			if(ID_Monster == 1468)then
				Gold_Monster = 500000
				GiveItem ( atk , 0 , 8001  , 1 , 4 )
			end
		elseif Map_Monster == "darkswamp" then
			Gold_Monster = 125000
			GiveItem ( atk , 0 , 8000  , 1 , 4 )
			if(ID_Monster == 1473)then
				Gold_Monster = 1500000
				GiveItem ( atk , 0 , 8001  , 1 , 4 )
			end
		elseif Map_Monster == "garner2" then
			Gold_Monster = 150000
			GiveItem ( atk , 0 , 8000  , 1 , 4 ) 
		elseif Map_Monster == "jialebi" then
			Gold_Monster = 250000
			GiveItem ( atk , 0 , 8001  , 1 , 4 ) 
			if (ID_Monster == 1511 or ID_Monster == 1515) then
				Gold_Monster = 1500000
				GiveItem ( atk , 0 , 8002  , 1 , 4 ) 
			elseif(ID_Monster == 1517)then
				Gold_Monster = 5000000
				GiveItem ( atk , 0 , 8003  , 1 , 4 ) 
			end
		elseif Map_Monster == "leiting2" then
			Gold_Monster = 500000
			GiveItem ( atk , 0 , 8001  , 1 , 4 ) 
			if (ID_Monster == 1503) then
				Gold_Monster = 2500000
				GiveItem ( atk , 0 , 8002  , 1 , 4 ) 
			end
		elseif Map_Monster == "shalan2" then
			Gold_Monster = 1000000
			GiveItem ( atk , 0 , 8001  , 1 , 4 ) 
			if (ID_Monster == 1507) then
				Gold_Monster = 40000000
				GiveItem ( atk , 0 , 8003  , 1 , 4 ) 
			end
		elseif Map_Monster == "winterland" then
			if(ID_Monster == 1528)then
				Gold_Monster = 50000
				GiveItem ( atk , 0 , 8000  , 1 , 4 )
			elseif(ID_Monster == 1529)then
				Gold_Monster = 300000
				GiveItem ( atk , 0 , 8001  , 1 , 4 )
			elseif(ID_Monster == 1530)then
				Gold_Monster = 1500000
				GiveItem ( atk , 0 , 8002  , 1 , 4 )
			elseif(ID_Monster == 1531)then
				Gold_Monster = 5000000
				GiveItem ( atk , 0 , 8003  , 1 , 4 )
			end
		end
		Gold_Monster = Gold_Monster * GOLD_RAID_RESET * gold_res_medal
		AddMoney ( atk , 0 , Gold_Monster )
	end
	-----------------------------
	-----------------------------
	local Gen_dmg = 0 
	
	for i = 0 , 4 , 1 do 
		if k[i] ~= 0 then 
			Gen_dmg = Gen_dmg + kdmg[i] 
		end 
	end 
	for i = 0 , 4 , 1 do 
		k_exp[i] = 0 

		if ValidCha( k[i] )== 1 then 
			if kdmg[i] > 0 then 
				if k[i] == first_atker then 
					k_exp[i] = dead_exp * ( 0.7 * kdmg[i] / Gen_dmg + 0.3 )		
				else
					k_exp[i] =  dead_exp * 0.7 * kdmg[i] / Gen_dmg 
				end
				ShareTeamExp ( dead , k[i] , k_exp[i] ,atk ) 
			end 
		end 
	end 
	local item_host = 0 
	local exp_max = k_exp[0] 
	for i = 1 , 4 , 1 do 
		if k_exp [i] > exp_max  then 
			exp_max = k_exp[i] 
			item_host = i  
		end 
	end 
	if ChaIsBoat (k[item_host] ) == 1 then 

		local ship_lv = GetChaAttr ( k[item_host] , ATTR_LV ) 
		local shipowner_lv  = GetChaAttr ( TurnToCha ( k[item_host] ) , ATTR_LV )  
		local ship_exp = GetChaAttr ( k[item_host] , ATTR_CEXP ) 
		local ship_expadd = math.floor ( math.min ( 7 , ( dead_lv / 10 + 2 ) ) ) 
		local lv_limit = math.min ( ship_lv , shipowner_lv ) - 10 
		if dead_lv >= lv_limit then 
			ship_exp = ship_exp + ship_expadd 
			SetCharaAttr (  ship_exp , k[item_host] ,ATTR_CEXP ) 
--			SystemNotice ( k[item_host] , "Ship EXP gained: "..ship_expadd ) 

		end 
	end 
	SetItemHost ( dead , k[item_host] ) 
	local data
	for data in BossRepList do
		if ID_Monster == BossRepList[data][1] then
			local r = BossRepList[data][2] * REP_RATE
			SystemNotice( atk, "\207\238\235\243\247\229\237\238 "..r.." \240\229\239\243\242\224\246\232\232" )
			AddCreditX( atk, r )
		end
	end

end


function ValidCha(ter)
  if ter==nil or ter==0 then 
	return 0 
  end
  return 1
end

function ShareTeamExp ( dead , team_atker , dead_exp , The_Killer) 
	local cha_name1100 = GetChaDefaultName (team_atker )	
	local star111=GetChaAttr (  team_atker , ATTR_CEXP )
	local atker_role = ChaIsBoat ( team_atker ) 
	local monster_location = IsChaInLand ( dead ) 
	if atker_role == 1 and monster_location == 1 then 
		dead_exp = math.floor ( dead_exp / 5 + 1 ) 
	end 

	local dead_lv = GetChaAttrI( dead , ATTR_LV )		
	local t = {} 
	t[0] = team_atker  
	t[1] = GetTeamCha(team_atker, 0 )  
	t[2] = GetTeamCha(team_atker, 1 )   
	t[3] = GetTeamCha(team_atker, 2 )    
	t[4] = GetTeamCha(team_atker, 3 )
	
    
	local count = 0 
	local NewPlayer_CanGet = 0
	local NewPlayer_Lv = 0
	local NewPlayer_Lv_dif = -100
	local Check_Killer = 0
	if t[0] == The_Killer then
		Check_Killer = 1
	end
	for i = 0 , 4 , 1 do	
		if ValidCha( t[i] )== 1  then					
			a = CheckExpShare ( t[i] , team_atker ) 
			if a == 1 then 
				count = count + 1 
				NewPlayer_Lv = Lv( TurnToCha(t[i]) )
				NewPlayer_Lv_dif = dead_lv - NewPlayer_Lv
				if NewPlayer_Lv <=30 and NewPlayer_Lv >= 10 and NewPlayer_Lv_dif >= -5 then
					NewPlayer_CanGet = NewPlayer_CanGet + 1
				end
			end 
		end 
        end 
	local TeamExp_Increas = 0.25 * TeamExp_RAID
	local exp_add = math.floor( dead_exp * ( 1 + (count -1 )* TeamExp_Increas ) )
	local exp_increase = math.floor ( dead_exp * (count -1 )* TeamExp_Increas )

	if count >=2 then
		exp_add = exp_add * InTeamGetExp_RAID
	end
	local exp_up
	for i = 0 , 4 , 1 do	
		if ValidCha(t[i])==1 then			
			local a = 1							
			local b = 1						

			if i >= 1 then 
				t[i] = TurnToCha ( t[i] )			            
				a = CheckExpShare ( t[i] , team_atker ) 		
				exp_up = math.max (1,  math.floor ( exp_add/count ) )  * a 
			else 
				exp_up = math.max ( 1, math.floor ( exp_add/count ) )  
			end 

			t_lv = GetChaAttrI ( TurnToCha(t[i]) , ATTR_LV ) 

			lv_dis =  t_lv - dead_lv 
			--if lv_dis >= 4 then 
			--	b = math.min ( 10 , 1 + ( math.abs ( lv_dis - 4 ) * 0.4 ) )  
			--elseif lv_dis <= -1 * 10 then 
				b = math.min ( 4 , 1 + math.abs ( lv_dis - 10)  * 0.1 )       
			--end 
			exp_up = math.floor ( math.max ( 1 , exp_up / b ) ) * a 
			
			if count >=3 and NewPlayer_CanGet <= 0 and Check_Killer == 1 then				
				if lv_dis <=3 then
					Add_RYZ_TeamPoint ( TurnToCha(t[i]) , count , 1)
				end
			end
			if t_lv >= 50 and NewPlayer_CanGet > 0 and Check_Killer == 1 then
				Add_RYZ_TeamPoint ( TurnToCha(t[i]) , 6 , NewPlayer_CanGet)
			end

			exp = GetChaAttrI ( TurnToCha(t[i]) , ATTR_CEXP ) 
			local EXP_RAID_STATE = 1
			--Бонус к опыту
			local StateLv = GetChaStateLv ( t[i] , STATE_SBJYGZ )
			if StateLv > 0 and StateLv <= 10 then
				if StateLv == 1 then
					--Бонус к опыту
					EXP_RAID_STATE = StateLv + 1
				elseif StateLv == 2 then
					EXP_RAID_STATE = 2
				elseif StateLv == 3	then
					EXP_RAID_STATE = 2.5
				elseif StateLv == 4	then
					EXP_RAID_STATE = 3
				elseif StateLv == 5	then
					EXP_RAID_STATE = 3.5
				elseif StateLv == 6	then
					EXP_RAID_STATE = 4
				end
			end
			--Бонус к опыту отряда
			local Check = {}
				Check[0] = t[i]  
				Check[1] = GetTeamCha( t[i] , 0 )  
				Check[2] = GetTeamCha( t[i] , 1 )   
				Check[3] = GetTeamCha( t[i] , 2 )    
				Check[4] = GetTeamCha( t[i] , 3 )
				local EXP_PARTY_RAID_STATE = 1
			for j = 0 , 4 , 1 do	
				if ValidCha( Check[j] )== 1  then					
					local star = IsTeamLeader( Check[j] )
					if	star==1 then 			
						local StateLv = GetChaStateLv ( Check[j] , STATE_ZDSBJYGZ )
						local	Isshare = CheckExpShare ( t[i] , Check[j])
						if StateLv == 1 and Isshare == 1 then
							EXP_PARTY_RAID_STATE	 = 1.5
						end
					end
				end
			end
			--Бонус к дропу
			local StateLvDrop = GetChaStateLv ( t[i] , STATE_SBBLGZ )
			local Check_VIP = GetChaStateLv ( t[i] , 238 ) 
			if StateLvDrop > 0 and StateLvDrop <= 10 then
				if StateLvDrop == 1 then
					--Бонус к дропу
					MF_RAID_STATE = StateLv + 1
				elseif StateLvDrop == 2 then
					MF_RAID_STATE = 2
				elseif StateLvDrop == 3	then
					MF_RAID_STATE = 2.5
				elseif StateLvDrop == 4	then
					MF_RAID_STATE = 3
				elseif StateLvDrop == 5	then
					MF_RAID_STATE = 3.5
				elseif StateLvDrop == 6	then
					MF_RAID_STATE = 4
				end
				if Check_VIP > 0 then
					MF_RAID_STATE = MF_RAID_STATE * 2
				end
			end
			
			
			--Счастливые удары
			if StateLv > 1 then
				local CheckLucky = 0
				CheckLucky = CheckLuckyFinish ( StateLv )
				if CheckLucky == 1 then
					EXP_RAID_STATE = EXP_RAID_STATE * 2
					SystemNotice ( TurnToCha(t[i]) , "\209\247\224\241\242\235\232\226\251\233 \243\228\224\240! \206\239\251\242 \243\226\229\235\232\247\232\226\224\229\242\241\255 \226 2 \240\224\231\224 " )
				end
				if CheckLucky == 2 then
					EXP_RAID_STATE = 10
					SystemNotice ( TurnToCha(t[i]) , "\209\243\239\229\240 \209\247\224\241\242\235\232\226\251\233 \243\228\224\240! \206\239\251\242 \243\226\229\235\232\247\232\226\224\229\242\241\255 \226 10 \240\224\231 " )
				end
			end
			-------------------------------
			-- Проверка на Медаль Ресета --
			-------------------------------
			
			local exp_medal  = 1
			local gold_medal = 1
			local slot_medal = GetChaItem(t[i], 2, 5)
			local medal_id = GetItemID( slot_medal )
			if medal_id == 8109 then
				gold_medal = 2
			elseif medal_id == 8110 then
				exp_medal = 2
				gold_medal = 2
			elseif medal_id == 8111 then
				exp_medal = 3
				gold_medal = 3
			elseif medal_id == 8112 then
				exp_medal = 4
				gold_medal = 4
			elseif medal_id == 8113 then
				exp_medal = 5
				gold_medal = 5
			elseif medal_id == 8114 then
				exp_medal = 6
				gold_medal = 6
			end
			--Чекаем випку
			local State_VIP = GetChaStateLv( t[i], 238 )
			local vip_exp = 1
			if State_VIP > 0 then
				vip_exp = 2
			end
			local MultiRAIDExp = 1
			if t_lv > 50 and t_lv < 101 then
				MultiRAIDExp = 3
			elseif t_lv > 100 and t_lv < 151 then
				MultiRAIDExp = 6
			elseif t_lv > 150 and t_lv < 201 then
				MultiRAIDExp = 9
			elseif t_lv > 200 and t_lv < 251 then
				MultiRAIDExp = 12
			elseif t_lv > 250 and t_lv < 301 then
				MultiRAIDExp = 15
			elseif t_lv > 300 and t_lv < 351 then
				MultiRAIDExp = 18
			elseif t_lv > 350 and t_lv < 401 then
				MultiRAIDExp = 20
			
			end
			exp_up = exp_up * EXP_RAID_STATE * EXP_PARTY_RAID_STATE * exp_medal * vip_exp * MultiRAIDExp
			-- if Lv ( TurnToCha(t[i]) ) >= 80 then 
				-- exp_up = math.floor ( exp_up / 50 ) 
			-- end 

					local Item_bg = GetChaItem ( t[i] , 2 , 1  )
					local Get_Item_Type = GetItemType ( Item_bg ) 
					if Get_Item_Type==59 then 
						local  Item_ID = GetItemID ( Item_bg )
						local str = GetItemAttr( Item_bg ,ITEMATTR_VAL_STR )	
						local con = GetItemAttr( Item_bg ,ITEMATTR_VAL_CON )	
						local agi = GetItemAttr( Item_bg ,ITEMATTR_VAL_AGI )		
						local dex = GetItemAttr( Item_bg ,ITEMATTR_VAL_DEX )	
						local sta = GetItemAttr( Item_bg ,ITEMATTR_VAL_STA )			
						local URE = GetItemAttr( Item_bg ,ITEMATTR_URE )			
						local MAXURE = GetItemAttr( Item_bg ,ITEMATTR_MAXURE )		
						local lv_JL = str + con + agi + dex + sta
						local Num_JL = GetItemForgeParam ( Item_bg , 1 )
						local Part1 = GetNum_Part1 ( Num_JL )	
						local Part2 = GetNum_Part2 ( Num_JL )	
						local Part3 = GetNum_Part3 ( Num_JL )
						local StateLv1 = GetChaStateLv( t[i], STATE_JLFT7 )
						local StateLv2 = GetChaStateLv( t[i], STATE_JLFT3 )
						local StateLv3 = GetChaStateLv( t[i], STATE_JLFT2 )
						local StateLv4 = GetChaStateLv( t[i], STATE_JLFT5 )
						local StateLv5 = GetChaStateLv( t[i], STATE_JLFT6 )
						local flag=0
					    if Item_ID==681 and StateLv1~=0 then
							flag=1
						end
						if Item_ID==450 and StateLv2~=0 then
							flag=1
						end
						if Item_ID==451 and StateLv3~=0 then
							flag=1
						end
						if Item_ID==235	and StateLv4~=0 then
							flag=1
						end
						if Item_ID==459 and StateLv5~=0 then
							flag=1
						end
						if Item_ID==452 and StateLv5~=0 then
							flag=1
						end
						if Item_ID==234 and StateLv5~=0 then
							flag=1
						end
						if flag==1 then
							if StateLv1 ~= 0 then
								exp_up = exp_up*(lv_JL*0.002+1)
							end
							if StateLv2 ~= 0 then 
								exp_up = exp_up*(lv_JL*0.004+1)
							end
							if StateLv3 ~= 0 then 
								exp_up = exp_up*(lv_JL*0.006+1)
							end
							if StateLv4 ~= 0 then 
								exp_up = exp_up*(lv_JL*0.008+1)
							end
							if StateLv5 ~= 0 then 
								exp_up = exp_up*(lv_JL*0.010+1)
							end
						end
						SetItemAttr ( Item_bg , ITEMATTR_URE , URE )
					end
			

     local map_name_atk = GetChaMapName ( The_Killer )
     local map_name_def = GetChaMapName ( dead )
     
			if exp_up > 20000 then
				local cha_name = GetChaDefaultName ( TurnToCha(t[i]) )
				local Monster_name = GetChaDefaultName ( dead )
			end
			if exp_up == 0 then 
				SystemNotice ( TurnToCha(t[i]) , "\206\239\251\242\224 \239\238\235\243\247\229\237\238: 0 #15 " )
			end
			exp = exp + exp_up 
		
		--Выдача золота за убийство
		--Бонус к дропу
		local GOLD_RAID_STATE = 1
		local StateLvGold = GetChaStateLv ( t[i] , STATE_GOLD )
		if StateLvGold > 0 and StateLvGold <= 10 then
			if StateLvGold == 1 then
				--Бонус к дропу
				GOLD_RAID_STATE = StateLv + 1
			elseif StateLvGold == 2 then
				GOLD_RAID_STATE = 2
			elseif StateLvGold == 3	then
				GOLD_RAID_STATE = 2.5
			elseif StateLvGold == 4	then
				GOLD_RAID_STATE = 3
			elseif StateLvGold == 5	then
				GOLD_RAID_STATE = 3.5
			elseif StateLvGold == 6	then
				GOLD_RAID_STATE = 4
			end
		end
		--Чекаем випку
			local vip_gold = 1
			if State_VIP > 0 then
				vip_gold = 2
			end
		local x = math.random( 0, 100 )
		local LvMonster = Lv (dead) * GOLD_RAID_STATE * gold_medal * vip_gold * GOLD_RAID
			if x == 100 then
				AddMoney ( TurnToCha(t[i]), 0 , LvMonster * 10) 
				--SystemNotice(TurnToCha(t[i]), "Хуй говорит: х10 золото! ")
				SystemNotice(TurnToCha(t[i]), "\213\243\233 \227\238\226\238\240\232\242: \245 10 \231\238\235\238\242\238! ")
			elseif x == 3 then
				AddMoney ( TurnToCha(t[i]), 0 , LvMonster * 5)   
				--SystemNotice(TurnToCha(t[i]), "Хуй говорит: х5 золото! ")
				SystemNotice(TurnToCha(t[i]), "\213\243\233 \227\238\226\238\240\232\242: \245 5 \231\238\235\238\242\238! ")
			elseif x == 2 then
				AddMoney ( TurnToCha(t[i]), 0 , LvMonster * 3)
				--SystemNotice(TurnToCha(t[i]), "Хуй говорит: х3 золото! ")
				SystemNotice(TurnToCha(t[i]), "\213\243\233 \227\238\226\238\240\232\242: \245 3 \231\238\235\238\242\238! ")
			elseif x == 1 then
				AddMoney ( TurnToCha(t[i]), 0 , LvMonster * 2)
				--SystemNotice(TurnToCha(t[i]), "Хуй говорит: х2 золото! ")
				SystemNotice(TurnToCha(t[i]), "\213\243\233 \227\238\226\238\240\232\242: \245 2 \231\238\235\238\242\238! ")
			else
				AddMoney ( TurnToCha(t[i]), 0 , LvMonster)
			end
		---------------------------------------
		--		    Выдача опыта	         --
		---------------------------------------
		-- Проверяем уровень ресета
		local Lv_Reset = 0
		local IDCha = GetRoleID(team_atker)
		local CheckReset = HandleLuaSql("SELECT Reset FROM GameDB.dbo.character WHERE cha_id = '"..IDCha.."'")
		local Lv_Reset = tonumber(CheckReset["Reset"])
		--SystemNotice(team_atker, "Ваш ID - "..IDCha.."; Ваш ресет - "..Lv_Reset)
		-- Проверяем ресет и уровень для дальнейшего получения уровня
			if Lv(TurnToCha(t[i])) >= 50 and Lv_Reset < 1 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 1 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 100 and Lv_Reset < 2 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 2 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 150 and Lv_Reset < 3 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 3 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 200 and Lv_Reset < 4 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 4 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 250 and Lv_Reset < 5 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 5 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 300 and Lv_Reset < 6 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 6 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 350 and Lv_Reset < 7 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 7 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 400 and Lv_Reset < 8 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 8 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 450 and Lv_Reset < 9 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 9 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 500 and Lv_Reset < 10 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 10 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 550 and Lv_Reset < 11 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 11 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 600 and Lv_Reset < 12 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 12 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 650 and Lv_Reset < 13 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 13 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 700 and Lv_Reset < 14 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 14 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 750 and Lv_Reset < 15 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 15 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 800 and Lv_Reset < 16 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 16 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 850 and Lv_Reset < 17 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 17 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 900 and Lv_Reset < 18 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 18 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 950 and Lv_Reset < 19 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 19 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 975 and Lv_Reset < 20 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 20 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 985 and Lv_Reset < 21 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 21 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 995 and Lv_Reset < 22 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 22 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 997 and Lv_Reset < 23 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 23 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 998 and Lv_Reset < 24 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 24 ресет! ")
			elseif Lv(TurnToCha(t[i])) >= 999 and Lv_Reset < 25 then
				SystemNotice(TurnToCha(t[i]), "Чтобы дальше получать опыт, нужно пройти 25 ресет! ")
			else
			SetChaAttrI ( TurnToCha(t[i]) , ATTR_CEXP, exp )
			end
		end 
	end 
end 



function returnLowLVPlayer(PlayerNow,Player1,Player2,Player3,Player4,Player5)    --???????????5??????
	local lvPlayerNow = GetChaAttr(PlayerNow, ATTR_LV)
	PlayerNow = TurnToCha(PlayerNow)
	Player1 = TurnToCha(Player1)
	Player2 = TurnToCha(Player2)
	Player3 = TurnToCha(Player3)
	Player4 = TurnToCha(Player4)
	Player5 = TurnToCha(Player5)
	
	if ValidCha(Player1) == 1 then
		local lvPlayer1 = GetChaAttr(Player1, ATTR_LV)
		if lvPlayerNow > lvPlayer1 + 5 then
			return Player1
		end
	end
	
	if ValidCha(Player2) == 1 then
		local lvPlayer2 = GetChaAttr(Player2, ATTR_LV)
		if lvPlayerNow > lvPlayer2 + 5 then
			return Player2
		end
	end
	
	if ValidCha(Player3) == 1 then
		local lvPlayer3 = GetChaAttr(Player3, ATTR_LV)
		if lvPlayerNow > lvPlayer3 + 5 then
			return Player3
		end
	end
	
	if ValidCha(Player4) == 1 then
		local lvPlayer4 = GetChaAttr(Player4, ATTR_LV)
		if lvPlayerNow > lvPlayer4 + 5 then
			return Player4
		end
	end
	
	if ValidCha(Player5) == 1 then
		local lvPlayer5 = GetChaAttr(Player5, ATTR_LV)
		if lvPlayerNow > lvPlayer5 + 5 then
			return Player5
		end
	end
	
	return 0
end

function CheckExpShare ( ti , atk ) --ti??atk????????
	if IsInSameMap ( atk , ti ) == 0   then 
		--SystemNotice( atk , "As you are in a map different from your party members, you will not be able to receive battle EXP") 
		return 0 
	end 
	local pos_ti_x , pos_ti_y = GetChaPos ( ti ) 

		
	local pos_atk_x , pos_atk_y = GetChaPos ( atk ) 
	local distance = Dis ( pos_ti_x , pos_ti_y , pos_atk_x , pos_atk_y ) 
	if distance >= 4000 then 
--		HelpInfo(ti,0,"You are too far away from your party to gain any experience") 
		return 0 
	end 
	if IsChaInRegion ( ti , AREA_SAFE ) == 1 then 
--		HelpInfo(ti,0,"Unable to receive any experience from party kill as you are in Safe Zone") 
		return 0 
	end 
	return 1 
end 


function Dead_Punish ( dead , atk ) --????
	local map_name = GetChaMapName ( dead )
	if map_name == "leiting2" or map_name == "binglang2" or map_name == "shalan2" or map_name == "guildwar" or map_name == "guildwar2" then
		return
	end

	
	local map_name = GetChaMapName ( dead )
	if map_name == "garner2" then
	SetCharaAttr(0, dead, ATTR_SP)
		return
	end
	dead = TurnToCha ( dead ) 
	local lv = GetChaAttr( dead, ATTR_LV ) 
	local check_pirate=CheckItem_pirate(dead)
	local check_death=CheckItem_Death(dead)
	local Time = os.date("%H")
	local TimeNum = tonumber(Time)

	if lv<=10 then
		return 
	end --[[????10?????]]--
	if lv >= 70 and check_pirate ==1 then
		if TimeNum<=6 or TimeNum >=18 then
			SystemNotice (dead , "Received blessing from moonlight. Death penalty will be removed" ) 
			return
		end
	end
	if lv >= 75 and check_death ==1 then
		if TimeNum<=6 or TimeNum >=18 then
			SystemNotice (dead , "Received blessing from death. Death penalty will be removed" ) 
			return
		end
	end
	local exp_red 
	local exp = Exp(dead) 
	local nlexp = GetChaAttrI ( dead , ATTR_NLEXP ) 
	local clexp = GetChaAttrI ( dead , ATTR_CLEXP ) 
	if  exp <= clexp then 
		exp_red = 0 
	else 
		exp_red = math.min ( math.floor ( ( nlexp - clexp ) * 0.02 ) , math.max ( exp - clexp , 0 ) ) 
	end 
	SetCharaAttr(0, dead, ATTR_SP) 
	local i1 = CheckBagItem( dead,3846 )
	local i2 = CheckBagItem( dead,3047 )

	if map_name == "secretgarden" or map_name == "teampk" then
	SetCharaAttr(0, dead, ATTR_SP)
		return
	end
	
	local i= CheckBagItem( dead, 2954 )-------????
	--SystemNotice( dead , "i=="..i)
	if i==1 then
		local Dead_BK = GetChaItem2 ( dead , 2 , 2954 )
		local DeadPoint=GetItemAttr ( Dead_BK , ITEMATTR_VAL_STR)
			--SystemNotice( dead , "DeadPoint???=="..DeadPoint)

		local DeadPoint=DeadPoint+1
			SetItemAttr( Dead_BK , ITEMATTR_VAL_STR , DeadPoint )
				local DeadPoint1=GetItemAttr ( Dead_BK , ITEMATTR_VAL_STR)
				--SystemNotice( dead , "DeadPoint???=="..DeadPoint1)

		if DeadPoint>=100 then
		end
	end

	if i1 <= 0 and i2 <= 0 then ---??????
		exp = Exp(dead) - exp_red 
		if Lv ( dead ) >= 80 then 
			exp_red_80 = exp_red * 50 
			SystemNotice (dead , "\207\235\224\242\224 \231\224 \241\236\229\240\242\252 "..exp_red_80.." \238\247\234\238\226 \238\239\251\242\224" ) 
		else 
			SystemNotice (dead , "\207\235\224\242\224 \231\224 \241\236\229\240\242\252 "..exp_red.." \238\247\234\238\226 \238\239\251\242\224" ) 
		end 
		SetChaAttrI( dead , ATTR_CEXP , exp ) --[[?????????????2%]]--
		if lv > 20 then
			Dead_Punish_ItemURE ( dead )
		end
	
	elseif i1~=0 and i2==0 then --??????
		local j1 = TakeItem( dead,0,3846,1)
		if j1 == 0  then
			
			SystemNotice ( dead , "Voodoo Doll deletion failed" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
				SystemNotice (dead , "\207\235\224\242\224 \231\224 \241\236\229\240\242\252 "..exp_red_80.." \238\247\234\238\226 \238\239\251\242\224" ) 
			else 
				SystemNotice (dead , "\207\235\224\242\224 \231\224 \241\236\229\240\242\252 "..exp_red.." \238\247\234\238\226 \238\239\251\242\224" ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp ) --[[?????????????2%]]--
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "Voodoo Doll replace death penalty" )
		end
	elseif i1==0 and i2~=0 then --??????
		local j2 = TakeItem( dead,0,3047,1)
		if j2 == 0  then
			SystemNotice ( dead , "Voodoo Doll deletion failed" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
				SystemNotice (dead , "Death penalty: Lost "..exp_red_80.." experience point(s)" ) 
			else 
				SystemNotice (dead , "Death penalty: Lost "..exp_red.." experience point(s)" ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp ) --[[?????????????2%]]--
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "Voodoo Doll replace death penalty" )
		end
	elseif i1~=0 and i2~=0 then --??????--???????
		local j3 = TakeItem( dead,0,3846,1)
		if j3 == 0  then
			SystemNotice ( dead , "Voodoo Doll deletion failed" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
				SystemNotice (dead , "\207\235\224\242\224 \231\224 \241\236\229\240\242\252 "..exp_red_80.." \238\247\234\238\226 \238\239\251\242\224" ) 
			else 
				SystemNotice (dead , "\207\235\224\242\224 \231\224 \241\236\229\240\242\252 "..exp_red.." \238\247\234\238\226 \238\239\251\242\224" ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp ) --[[?????????????2%]]--
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "Voodoo Doll replace death penalty" )
		end
	end
	
	local name = GetChaDefaultName ( dead )
	local exp_new = ( exp - clexp ) / ( nlexp - clexp )
	
	

	local mars = 0
	for mars = 0 , 4 , 1 do
		if name == CheckDmgChaNameTest [mars] then
			
		end
	end
end 


function GetExp_MKP(dead , atk) --[[player kill monster ???????]]-- 
	--LuaPrint("Enter function GetExp_MKP() --[[player kill monster exp value formula]]--") 
	Dead_Punish( dead , atk) 
	--LuaPrint("Out function GetExp_MKP() --[[player kill monster experience changes formula]]--") 
end 

function GetExp_PKP(dead , atk) --[[player kill player]]-- 
	--LuaPrint("Enter function GetExp_MKP() --[[player kill monster exp value formula]]--") 
--	Dead_Punish( dead , atk) 
	--LuaPrint("Out function GetExp_MKP() --[[player kill monster experience changes formula]]--") 
end 

function GetExp_Noexp(dead , atk) --[[??????????]]-- 
	--LuaPrint("Enter function GetExp_Noexp() --[[no rewards or penalty experience value change formula]]-- ".."\n" ) 
	--LuaPrint("Out function GetExp_Noexp() --[[no reward experience value changes formula]]-- ".."\n" ) 
end 





--??????????————————————————————————————————————————————

function Relive ( role )							
	local mxhp = GetChaAttr ( role , ATTR_MXHP ) 
	local mxsp = GetChaAttr ( role , ATTR_MXSP ) 
	local hp = math.max ( 1, math.floor(  ( mxhp * 0.01 ) + 0.5 ) ) 
	local sp = math.max ( 1, math.floor(  ( mxsp * 0.01 ) + 0.5 ) ) 
	SetCharaAttr ( hp , role , ATTR_HP ) 
	SetCharaAttr ( sp , role , ATTR_SP ) 
end 

--?????????————————————————————————————————————————————

function Relive_now ( role , sklv ) 
	local cha_role = TurnToCha ( role ) 
	local hp = math.max ( 1 , math.floor ( 0.05 * sklv * Mxhp ( cha_role ) ) ) 
	local sp = math.max ( 1 , math.floor ( 0.05 * sklv * Mxsp ( cha_role ) ) ) 
	SetCharaAttr ( hp , cha_role , ATTR_HP ) 
	SetCharaAttr ( sp , cha_role , ATTR_SP ) 
end 




--??????????——————————————————————————————————————————————————————————————

function   Ship_ShipDieAttr ( role ) 
	local bmxhp = GetChaAttr ( role , ATTR_BMXHP ) 
	local dead_count = GetChaAttr ( role , ATTR_BOAT_DIECOUNT ) 
	bmxhp = bmxhp * math.max ( 0 , ( 1 - 0.02 - dead_count * 0.01 )  ) 
	SetCharaAttr ( bmxhp , role , ATTR_BMXHP ) 
end  


function BoatLevelUpProc ( cha, boat, levelup, exp, money ) 
	if ValidCha( cha ) == 0 then 
		return 0 
	end 
	if ValidCha( boat ) == 0 then 
		return 0 
	end 
	PRINT( "BoatLevelUpProc: levelup = , exp = , money = ", levelup, exp, money )
	local lv_up	= levelup 
	local req_exp	= exp 
	local req_gold	= money 
	local boat_lv = GetChaAttr ( boat , ATTR_LV ) 
	if boat_lv ~= lv_up - 1 then 
		PRINT( "BoatLevelUpProc:function BoatLevelUpProc : ship current level and upgrade level does not match" )
		return 0 
	end 

	local boat_exp = GetChaAttr ( boat , ATTR_CEXP ) 
	if boat_exp < req_exp then 
		SystemNotice ( cha , "Insufficient EXP to level up ship. Please try harder") 
		return 0 
	end 


	local cha_money = GetChaAttr ( cha , ATTR_GD ) 
	if cha_money < req_gold then 
		SystemNotice ( cha , "Insufficient gold to level up ship. Please try harder") 
		return 0 
	end 
	PRINT( "BoatLevelUpProc: boat_exp, req_exp, cha_money, req_gold", boat_exp, req_exp, cha_money, req_gold )
	SetAttrChangeFlag( boat)	
	SetAttrChangeFlag( cha)	

	boat_exp = boat_exp - req_exp 
	SetCharaAttr ( boat_exp , boat , ATTR_CEXP ) 
	cha_money = cha_money - req_gold 	
	SetCharaAttr ( cha_money , cha , ATTR_GD ) 
	SetCharaAttr ( lv_up , boat , ATTR_LV ) 
	ALLExAttrSet ( boat ) 
	SystemNotice ( cha , "Ship level up successfully") 
	SystemNotice ( cha , "Gold Deducted: "..req_gold) 
	SystemNotice ( cha , "Consume experience: "..req_exp) 
	SyncBoat ( boat, 4 )
	SyncChar ( cha, 4 )
	PRINT( "BoarLevelUpProc: return 1" )
	return 1 

end 

function Ship_Tran (  buyer , boat ) 
	local ship_lv = GetChaAttr ( boat , ATTR_LV ) 
	local ship_exp = GetChaAttr ( boat , ATTR_CEXP ) 
	SetAttrChangeFlag( boat)	

	ship_lv = math.max ( 1 , math.max (math.floor ( ship_lv /2 ), ship_lv - 10 ) )  
	ship_exp = 0 
	SetCharaAttr ( ship_exp , boat , ATTR_CEXP ) 
	SetCharaAttr ( ship_lv , boat , ATTR_LV ) 
	SystemNotice ( buyer , "After trade, ship level becomes "..ship_lv )	
	SystemNotice ( buyer , "After trade, ship experience reduced to "..ship_exp )	 

	SyncBoat ( boat, 4 )
end 


function CheckLuckyFinish ( StateLv )
	if StateLv == 3 then
		local Huge_Lucky = Percentage_Random ( 0.01 )
		if Huge_Lucky == 1 then
			return 2
		end
	end
	
	local a = 0.1
	local b = Percentage_Random ( a )
	return b
end

