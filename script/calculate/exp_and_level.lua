--------------------------------------------------------------------------
--									--
--									--
--				exp_and_level.lua			--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading Exp_And_Level.lua" )


--´Ë´¦·ÅÖÃ¾­ÑéÖµºÍ¼¶±ðÓÐ¹ØµÄ¼ÆËã

InTeamGetExp_RAID = 1

--´´½¨¹¤»áµÄÎïÆ·¼ì²â
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

	if Guild_type == 1 then						--ÅÐ¶¨º£µÁ¹¤»á
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
	elseif Guild_type == 0 then					--ÅÐ¶¨º£¾ü¹¤»á
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

function Check_BagItem(role,a,b)		--¼ì²é±³°üÊýÁ¿ÊÇ·ñ×ã¹»
	local a = CheckBagItem ( role , a ) 
	if a>= b then 
		return 1 
	else 
		return 0 
	end 
end 
		


--É¾³ý´´½¨¹¤»áËùÐèÎïÆ·
function DeductGuildItem(role,Guild_type)
	local gold = GetChaAttr(role,ATTR_GD)
	local fame = GetChaAttr(role,ATTR_FAME) 
	local attr_guild = HasGuild ( role )  
--	if attr_guild ~= 0 then 
--		HelpInfo(role,0,"You are already in a guild") 
		--SystemNotice(role,0,"You are already in a guild") 
--		return 0 
--	end 

	if Guild_type == 1 then						--ÅÐ¶¨º£µÁ¹¤»á
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
	
	elseif Guild_type == 0	then					--ÅÐ¶¨º£¾ü¹¤»á
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
	

function AskJoinGuild ( role , guild_type ) 					-- ÉêÇë¼ÓÈë¹¤»áÅÐ¶¨   ¹¤»áÀàÐÍ 0£­º£¾ü£¬1£­º£µÁ
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

			



--¾­Ñé·ÖÅä(°üº¬×é¶Ó¾­Ñé·ÖÅä)
--µ±ÓÐ½ÇÉ«ËÀÍöÊ±±»µ÷ÓÃ
function GetExp_New(dead , atk  ) 
	if ValidCha(atk) == 0  then 
		LG ( "exp_atker=NIL" , "function GetExp_New : atker = nil " ) 
		return 
	end 
	--SystemNotice ( atk , "Entering GetExp_New")

	--LuaPrint("Enter function GetExp() --[[experience obtain formula 1, kill monster 2, character killed by monster 3, charcter die due to PK 4, no experience rewards or penalty]]--") 
	local a = Check_Combat_Mod(dead , atk ) 
	if a==1 then 
	--LG("exp" , " enter  pkm mod" ) 
	GetExp_PKM( dead , atk ) --[[player kill monster]]--
	elseif a==2 then 
	--LG("exp" , " enter  mkp mod" ) 
	GetExp_MKP(dead , atk) --[[monster kill player]]--
	elseif a==3 then 
	--LG("exp" , " enter  pkp mod" ) 
	GetExp_PKP(dead , atk) --[[player kill player]]--
	elseif a==4 then 
	--LG("exp" , " enter  mkm mod" ) 
	GetExp_Noexp(dead , atk) --[[monster kill monster]]--
	else 
	--LuaPrint("Unable to determine experience reward mode".."\n") return 
	end 
end 









function Check_Combat_Mod(dead , atk) --[[ÅÐ¶¨¾­Ñé½±³Í·½Ê½]]-- 
	--LuaPrint("Enter function Check_Combat_Mod () --[[determine experience reward or penalty mode]]-- ") 
	local rolemod_atker = IsPlayer(atk) 
	--LG("exp" , " atker role = " ,  rolemod_atker ) 
	local rolemod_defer = IsPlayer(dead)  --¼ì²é½ÇÉ«ÖÖÀà£º0¡¢¹ÖÎï£¬ 1¡¢Íæ¼Ò
	--LG("exp" , " defer role = " ,  rolemod_defer ) 
	if (rolemod_atker==0) and (rolemod_defer==0) then 
		return 4 
	elseif rolemod_atker==0 and rolemod_defer==1 then 
		return 2 
	elseif rolemod_atker==1 and rolemod_defer==0 then 
		return 1 
	elseif rolemod_atker==1 and rolemod_defer==1 then 
		return 3 
	else 
		--LuaPrint("incorrect character type value".."\n") 
		return 
	end 
	--LuaPrint("Out function Check_Combat_Mod () --[[determine experience reward mode]]-- ") 
end 




function GetExp_PKM( dead , atk  ) --[[player kill monster ¾­ÑéÖµ»ñµÃ¹«Ê½ ËùµÃexp£½exp(d)/math.floor(|lv(a)-lv(b)|*0.1+1)]]--
--	LG ( "exp" , " enter getexp " ) 
	--SystemNotice ( atk , "Entering GetExp_PKM")
--	local EXP_RAID_STATE = 1
--	local StateLv = GetChaStateLv ( atk , STATE_SBJYGZ )
	
--	if StateLv >= 0 and StateLv <= 10 then
--			EXP_RAID_STATE = StateLv + 1
--	end

	local dead_lv = GetChaAttrI( dead , ATTR_LV ) --»ñµÃËÀÕßµÄµÈ¼¶   
	local dead_exp = GetChaAttrI( dead , ATTR_CEXP ) * EXP_RAID
	LG("exp" , "deadlv = " , dead_lv ) 
	LG("exp" , "dead_exp = " , dead_exp ) 
	local k = {} 
	local kdmg = {} 
	local k_exp = {} 

	k[0] , kdmg[0] = GetChaHarmByNo ( dead , 0 ) 
--	if ValidCha ( k[0] ) == 0 then 
--		SystemNotice ( atk , "damage list top queue number as null" ) 
--	end 
	--SystemNotice ( atk , "Attack damage queue as number 0") 
	--SystemNotice ( atk , "Attack Damage as"..kdmg[0]) 

	k[1] , kdmg[1] = GetChaHarmByNo ( dead , 1 ) 
--	if ValidCha ( k[1] ) == 0 then 
--		SystemNotice ( atk , "damage list queue number 2 as null" ) 
--	end 
	--SystemNotice ( atk , "damage list queue number 1") 
	--SystemNotice ( atk , "Attack Damage as"..kdmg[1]) 

	k[2] , kdmg[2] = GetChaHarmByNo ( dead , 2 ) 
--	if ValidCha ( k[2] ) == 0 then 
--		SystemNotice ( atk , "Damage List 3 bit as nil" ) 
--	end 
	--SystemNotice ( atk , "Attack damage number 2 on list") 
	--SystemNotice ( atk , "Attack Damage as"..kdmg[2]) 

	k[3] , kdmg[3] = GetChaHarmByNo ( dead , 3 ) 
--	if ValidCha ( k[3] ) == 0 then 
--		SystemNotice ( atk , "damage queue number 4 as null" ) 
--	end 
	--SystemNotice ( atk , "damage queue number 3") 
	--SystemNotice ( atk , "Attack Damage as"..kdmg[3]) 

	k[4] , kdmg[4] = GetChaHarmByNo ( dead , 4 ) 
--	if ValidCha ( k[4] ) == 0 then 
--		SystemNotice ( atk , "damage queue number 5 as null" ) 
--	end 
	--SystemNotice ( atk , "attack damage queue number 4") 
	--SystemNotice ( atk , "Attack Damage as"..kdmg[4]) 
	local first_atker = GetFirstAtker ( dead ) 
	
	local Gen_dmg = 0 

	for i = 0 , 4 , 1 do 
		if k[i] ~= 0 then 
			Gen_dmg = Gen_dmg + kdmg[i] 
			--SystemNotice ( atk , "Attack damage index not as number 0"..i) 
			--SystemNotice ( atk , "Attack Damage as"..kdmg[i]) 
		end 
	end 
	--SystemNotice ( atk , "total attack damage as"..Gen_dmg) 
	for i = 0 , 4 , 1 do 
		k_exp[i] = 0 

		if ValidCha( k[i] )== 1 then 
			if kdmg[i] > 0 then 
				if k[i] == first_atker then 
					k_exp[i] = dead_exp * ( 0.7 * kdmg[i] / Gen_dmg + 0.3 )		--µÚÒ»Î»¹¥»÷ÕßÓÅÏÈ»ñµÃ30£¥µÄ¹ÖÎï×Ü¾­Ñé
				else
					k_exp[i] =  dead_exp * 0.7 * kdmg[i] / Gen_dmg 
				end
				--SystemNotice ( atk , "Attack damage queue"..i) 
				--SystemNotice ( atk , "distributed some exp"..k_exp[i]) 
				ShareTeamExp ( dead , k[i] , k_exp[i] ,atk ) 
			end 
		end 
	end 
	local item_host = 0 
	local exp_max = k_exp[0] 
	--SystemNotice ( atk , "Item initialize possession queue"..0) 
	for i = 1 , 4 , 1 do 
		--SystemNotice ( atk , "Item possession determination"..i) 
		--SystemNotice ( atk , "EXP Distribution"..k_exp[i])

		if k_exp [i] > exp_max  then 
			exp_max = k_exp[i] 
			item_host = i 
			--SystemNotice ( atk , "Item edit belong to queue"..i) 
		end 
	end 
	if ChaIsBoat (k[item_host] ) == 1 then 

		local ship_lv = GetChaAttr ( k[item_host] , ATTR_LV ) 
		local shipowner_lv  = GetChaAttr ( TurnToCha ( k[item_host] ) , ATTR_LV )  
		local ship_exp = GetChaAttr ( k[item_host] , ATTR_CEXP ) 
		local ship_expadd = math.floor ( math.min ( 7 , ( dead_lv / 10 + 2 )))
		local lv_limit = math.min ( ship_lv , shipowner_lv ) - 10 
		if dead_lv >= lv_limit then 
			ship_exp = ship_exp + ship_expadd 
			SetCharaAttr (  ship_exp , k[item_host] ,ATTR_CEXP ) 
--			SystemNotice ( k[item_host] , "Ship EXP gained: "..ship_expadd ) 

		end 
	end 
	SetItemHost ( dead , k[item_host] ) 

end 


function ValidCha(ter)
  if ter==nil or ter==0 then 
	return 0 
  end
  return 1
end

function ShareTeamExp ( dead , team_atker , dead_exp , The_Killer) 
	local cha_name1100 = GetChaDefaultName (team_atker )	
	local star111=GetChaAttr (  team_atker , ATTR_CEXP )----------µ±Ç°µÈ¼¶¾­Ñé
	LG("star_exp" , "player ["..cha_name1100.."]	Current Experience: "..star111.."	[Into the ShareTeamExp]" ) 
	local atker_role = ChaIsBoat ( team_atker ) 
	local monster_location = IsChaInLand ( dead ) 
	if atker_role == 1 and monster_location == 1 then 
		dead_exp = math.floor ( dead_exp / 5 + 1 ) 
	end 

	--SystemNotice ( team_atker , "Starts ShareTeamExp")

	local dead_lv = GetChaAttrI( dead , ATTR_LV )			--»ñµÃËÀÕßµÄµÈ¼¶   
	--local team_atker = TurnToCha ( team_atker )				--×ª³ÉÈËÖ¸Õë
	local t = {} 
	t[0] = team_atker  
	if ValidCha (team_atker) == 0 then 
		LG ( "luascript_err" , "function ShareTeamExp : party experience source as null" ) 
		return 
	end 
	t[1] = GetTeamCha(team_atker, 0 )  
	t[2] = GetTeamCha(team_atker, 1 )   
	t[3] = GetTeamCha(team_atker, 2 )    
	t[4] = GetTeamCha(team_atker, 3 )
    
    --SystemNotice ( team_atker , "aaaa")
--	LG("harm", "t[0] = ", t[0]," t[1] = ", t[1], "t[2] = ", t[2])
--	LG("harm", "\n")
    --local notice = "t[1]="..t[1].." t[2]="..t[2].." t[3]="..t[3].." t[4]="..t[4]
    ----SystemNotice ( team_atker , notice)
    --SystemNotice ( team_atker , "bbbb")
	
    
	local count = 0 
	local NewPlayer_CanGet = 0
	local NewPlayer_Lv = 0
	local NewPlayer_Lv_dif = -100
	local Check_Killer = 0
	if t[0] == The_Killer then
		Check_Killer = 1
	end
	for i = 0 , 4 , 1 do	
		if ValidCha( t[i] )== 1  then					--±»¼ÓÈë×é¶Ó¾­Ñé·ÖÅäµÄ½ÇÉ«±ØÐë´æÔÚ£¬ÇÒ¶Ô¶ÓÎé¾­ÑéµÄ¼Ó³ÉºÍ·ÖÏíÒ²½öÓÉÓÐÐ§³ÉÔ±ÊýÆð×÷ÓÃ
			--SystemNotice(team_atker, "start transferCheckExpShare")
			a = CheckExpShare ( t[i] , team_atker ) 
			--SystemNotice(team_atker, "End transferCheckExpShare, return value="..a)
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
	if count == 0 then 
		LG ("luascript_err" , "function ShareTeamExp : Member total count as 0 " )
		return 
	end 
	local TeamExp_Increas = 0.25 * TeamExp_RAID

	--SystemNotice ( team_atker , "included experience shared by member count="..count)
	LG("exp" , "deadlv = " , dead_lv ) 
	LG("exp" , "dead_exp = " , dead_exp ) 
	LG("exp" , "teamer_count = " , count ) 
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
	local exp_add = math.floor( dead_exp * ( 1 + (count -1 )* TeamExp_Increas ) ) --×Ü¾­Ñé
	local exp_increase = math.floor ( dead_exp * (count -1 )* TeamExp_Increas ) --¸½¼Ó¾­Ñé

---BBµ÷Õû

	LG("exp" , "exp_add = " , exp_add ) 

	if count >=2 then
		exp_add = exp_add * InTeamGetExp_RAID
	end

	local exp_up

    --SystemNotice ( team_atker , "Starts to distribute experience among party member")
	for i = 0 , 4 , 1 do	
		if ValidCha(t[i])==1 then			--½ÇÉ«²»Îª¿Õ
			local a = 1							--³õÊ¼»¯½ÇÉ«ÔÚ¿ªÊ¼Ê±ÊÇ·ñ·ÖÅä¾­ÑéµÄ¼à²âÏµÊý
			local b = 1							--³õÊ¼»¯½ÇÉ«ÔÚ¿ªÊ¼Ê±·ÖÅä¾­ÑéµÄ±¶ÊýÏµÊý
			LG("exp" , "loop = " , i ) 

			if i >= 1 then 
--				t[i] = TurnToCha ( t[i] )			            --×ª³ÉÈËÖ¸Õë
				a = CheckExpShare ( t[i] , team_atker ) 		--¾­Ñé·ÖÅä¼ì²â 
				LG("exp" , "experience distribution test a =  " , a ) 
				exp_up = math.max (1,  math.floor ( exp_add/count ) )  * a 
				LG("exp" , "exp_up1  =  " , exp_up ) 
			else 
				exp_up = math.max ( 1, math.floor ( exp_add/count ) )  
				LG("exp" , "exp_up1  =  " , exp_up ) 
				--¶ÔÖ±½ÓÉ±¹ÖÕß×öÌØÊâ´¦Àí 
			end 

			t_lv = GetChaAttrI ( TurnToCha(t[i]) , ATTR_LV ) 

			lv_dis =  t_lv - dead_lv 	--Óë¹ÖÎïµÈ¼¶²î¶Ô¾­Ñé»ñÈ¡±¶ÊýµÄÅÐ¶Ï
			LG ( "exp" , " t_lv = " , t_lv , "  dead_lv = " , dead_lv , "  lv_dis = " , lv_dis ) 
			if lv_dis >= 4 then 
				b = math.min ( 10 , 1 + ( math.abs ( lv_dis - 4 ) * 0.4 ) )  --Óë¹ÖÎïµÈ¼¶²î¾à¹ý´ó£¬ÎÞ·¨»ñµÃÈ«¶î¾­Ñé
			elseif lv_dis <= -1 * 10 then 
				b = math.min ( 4 , 1 + math.abs ( lv_dis - 10)  * 0.1 )      --Óë¹ÖÎïµÈ¼¶²î¾à¹ý´ó£¬ÎÞ·¨»ñµÃÈ«¶î¾­Ñé 
			end 
			LG ( "exp" , "exp_up2 =  " , exp_up , " b = " , b , " a = ", a ) 

			exp_up = math.floor ( math.max ( 1 , exp_up / b ) ) * a 

			LG ( "exp" , "exp_up3 =  " , exp_up) 
			
			if count >=3 and NewPlayer_CanGet <= 0 and Check_Killer == 1 then				---ÅÐ¶Ï»ñµÃ×é¶Ó¹±Ï×µãÊý
				if lv_dis <=3 then
					Add_RYZ_TeamPoint ( TurnToCha(t[i]) , count , 1)
				end
			end
			if t_lv >= 50 and NewPlayer_CanGet > 0 and Check_Killer == 1 then
				Add_RYZ_TeamPoint ( TurnToCha(t[i]) , 6 , NewPlayer_CanGet)
			end

			exp = GetChaAttrI ( TurnToCha(t[i]) , ATTR_CEXP ) 
			LG("exp" , "exp_original = " , exp ) 
			local EXP_RAID_STATE = 1
			local StateLv = GetChaStateLv ( t[i] , STATE_SBJYGZ )
	
			if StateLv > 0 and StateLv <= 10 then

				if StateLv == 1 then

					EXP_RAID_STATE = StateLv + 1

				end

				if StateLv == 2 then

					EXP_RAID_STATE = 2

				end

				if StateLv == 3	then

					EXP_RAID_STATE = 2.5

				end

				if StateLv == 4	then

					EXP_RAID_STATE = 3

				end

				if StateLv == 5	then

					EXP_RAID_STATE = 3.5

				end

				if StateLv == 6	then

					EXP_RAID_STATE = 4

				end

				if StateLv == 1 then

					MF_RAID_STATE = StateLv + 1

				end

				if StateLv == 2 then

					MF_RAID_STATE = 2

				end

				if StateLv == 3	then

					MF_RAID_STATE = 2.5

				end

				if StateLv == 4	then

					MF_RAID_STATE = 3

				end

				if StateLv == 5	then

					MF_RAID_STATE = 3.5

				end

				if StateLv == 6	then

					MF_RAID_STATE = 4

				end

			end
			
			if StateLv > 1 then
				local CheckLucky = 0
				CheckLucky = CheckLuckyFinish ( StateLv )
				if CheckLucky == 1 then
					EXP_RAID_STATE = EXP_RAID_STATE * 2
					SystemNotice ( TurnToCha(t[i]) , "Lucky Strike, obtains increased experience gained" )
				end
				if CheckLucky == 2 then
					EXP_RAID_STATE = 10
					SystemNotice ( TurnToCha(t[i]) , "Ñóïå?óäà÷? îïûò óìíîæèëñÿ ?10 ðà?" )
				end
			end

			if exp_up == 0 then 
				LG ( "exp" , "No experience growth" ) 
				return 
			end
			
			exp_up = exp_up * EXP_RAID_STATE
			if Lv ( TurnToCha(t[i]) ) >= 80 then 
				exp_up = math.floor ( exp_up / 50 ) 
			end 
---------------------------------------¾«Áé¼Ó¾­Ñé×´Ì¬ÅÐ¶Ï
			--local Check_star = {}
			--	Check_star[0] = t[i]  
			--	Check_star[1] = GetTeamCha( t[i] , 0 )  
			--	Check_star[2] = GetTeamCha( t[i] , 1 )   
			--	Check_star[3] = GetTeamCha( t[i] , 2 )    
			--	Check_star[4] = GetTeamCha( t[i] , 3 )
			--for m = 0 , 4 , 1 do	
			--	if ValidCha( Check_star[m] )== 1  then					--±»¼ÓÈë×é¶Ó¾­Ñé·ÖÅäµÄ½ÇÉ«±ØÐë´æÔÚ
					local Item_bg = GetChaItem ( t[i] , 2 , 1  ) --È¡½ÇÉ«±³°üµÚ¶þÀ¸µÄÖ¸Õë
					local Get_Item_Type = GetItemType ( Item_bg ) --µ÷ÓÃ³ÌÐò½Ó¿Ú»ñµÃItemµÀ¾ßÀàÐÍ
					if Get_Item_Type==59 then --------ÅÐ¶ÏÊÇ·ñÎª¾«Áé
						local  Item_ID = GetItemID ( Item_bg )	--È¡ID
						local str = GetItemAttr( Item_bg ,ITEMATTR_VAL_STR )			--Á¦Á¿ 
						local con = GetItemAttr( Item_bg ,ITEMATTR_VAL_CON )		 ---ÌåÖÊ 
						local agi = GetItemAttr( Item_bg ,ITEMATTR_VAL_AGI )			--Ãô½Ý 
						local dex = GetItemAttr( Item_bg ,ITEMATTR_VAL_DEX )		 --×¨×¢ 
						local sta = GetItemAttr( Item_bg ,ITEMATTR_VAL_STA )			 --¾«Éñ 
						local URE = GetItemAttr( Item_bg ,ITEMATTR_URE )			--ÌåÁ¦ 
						local MAXURE = GetItemAttr( Item_bg ,ITEMATTR_MAXURE )		 --×î´óÌåÁ¦
						local lv_JL = str + con + agi + dex + sta	----Ò»¸ö¾«ÁéµÄµÈ¼¶
						local Num_JL = GetItemForgeParam ( Item_bg , 1 )
						local Part1 = GetNum_Part1 ( Num_JL )	--Get Num Part 1 µ½ Part 7
						local Part2 = GetNum_Part2 ( Num_JL )	
						local Part3 = GetNum_Part3 ( Num_JL )
						local StateLv1 = GetChaStateLv (t[i] , STATE_JLFT7 )
						local StateLv2 = GetChaStateLv (t[i] , STATE_JLFT8 )
						local flag=0
						if Item_ID==237 and StateLv1~=0 then
							flag=1
						end
						if Item_ID==681 and StateLv2~=0 then
							flag=1
						end

						if flag==1  then ----ÓÐidÎª237»òÊÇ681ºÅµÄ¾«Áé²¢ÇÒ¾«Áé¸½Ìå¼¼ÄÜ´æÔÚ
							--if StateLv1 == 1 or StateLv2 == 1 then ---³õ¼¶
							--	exp_up = exp_up*(0.005*lv_JL*0.1+1)
							--end
                                                if Item_ID==7126 and StateLv3~=0 then
                                                flag=2
                                                        end

                                                        if flag==2 then 
                                                        if StateLv3 ~= 0 then 
                                                        exp_up = exp_up*(lv_JL*0.09+1)
                                                        end
                                                        end
							--if StateLv1 == 2 or StateLv2 == 2 then ---ÖÐ¼¶
							--	exp_up = exp_up*(0.0125*lv_JL*0.1+1)
							--end
							--if StateLv1 == 3 or StateLv2 == 3 then ---¸ß¼¶
							--	exp_up = exp_up*(0.025*lv_JL*0.1+1)
							--end
							if StateLv1 ~= 0 or StateLv2 ~= 0 then 
								exp_up = exp_up*(lv_JL*0.02+1)
							end
						--	URE=URE-4500
						end
						SetItemAttr ( Item_bg , ITEMATTR_URE , URE ) 	
					end
			--	end
			--end
-------------------------------------------
-------------------------------------------
			local Check = {}
				Check[0] = t[i]  
				Check[1] = GetTeamCha( t[i] , 0 )  
				Check[2] = GetTeamCha( t[i] , 1 )   
				Check[3] = GetTeamCha( t[i] , 2 )    
				Check[4] = GetTeamCha( t[i] , 3 )
	
			for j = 0 , 4 , 1 do	
				if ValidCha( Check[j] )== 1  then					--±»¼ÓÈë×é¶Ó¾­Ñé·ÖÅäµÄ½ÇÉ«±ØÐë´æÔÚ
					local star = IsTeamLeader( Check[j] )
					if	star==1 then -------------ÅÐ¶Ï¶Ó³¤			
						local StateLv = GetChaStateLv ( Check[j] , STATE_ZDSBJYGZ )
						local	Isshare = CheckExpShare ( t[i] , Check[j])
						--SystemNotice ( TurnToCha(t[i]) , "Isshare" )
						if StateLv == 1 and Isshare == 1 then
							exp_up = 1.5*exp_up
						end
					end
				end
			end


----------------------------------------------
----------------------------------------------Ê¥Õ½´ò¾«Áé²ÝËæ»úÊôÐÔ
     --Notice("come here")
     local map_name_atk = GetChaMapName ( The_Killer )
     local map_name_def = GetChaMapName ( dead )
     if map_name_atk == "guildwar" or map_name_def == "guildwar" then
       local normal_monster =  GetChaID(dead)
	  --Notice("normal_monster=="..normal_monster)
       if normal_monster == 220 then  ---×ÏÉ«
	   --AddState ( The_Killer , The_Killer , STATE_JRQKL , 10 , 180 )
	   AddState ( The_Killer , The_Killer , STATE_HFZQ , 10 , 10 )
       end
       if normal_monster == 219 then  -----À¶É«
           AddState ( The_Killer , The_Killer , STATE_QINGZ , 10 , 300 )
       end
       if normal_monster == 217 then  -----ºìÉ«
           AddState ( The_Killer , The_Killer , STATE_JRQKL , 10 , 180 )
       end
       if normal_monster == 218 then -----»ÆÉ«
           AddState ( The_Killer , The_Killer , STATE_YS , 10 , 300 )
       end
      elseif map_name_atk == "guildwar2" or map_name_def == "guildwar2" then
       local normal_monster =  GetChaID(dead)
	  --Notice("normal_monster=="..normal_monster)
       if normal_monster == 220 then  ---×ÏÉ«
	   --AddState ( The_Killer , The_Killer , STATE_JRQKL , 10 , 180 )
	   AddState ( The_Killer , The_Killer , STATE_HFZQ , 10 , 10 )
       end
       if normal_monster == 219 then  -----À¶É«
           AddState ( The_Killer , The_Killer , STATE_QINGZ , 10 , 300 )
       end
       if normal_monster == 217 then  -----ºìÉ«
           AddState ( The_Killer , The_Killer , STATE_JRQKL , 10 , 180 )
       end
       if normal_monster == 218 then -----»ÆÉ«
           AddState ( The_Killer , The_Killer , STATE_YS , 10 , 300 )
       end
     end


----------------------------------------
-----------------------------------------ÍÅ¶ÓÖ®ÐÇ´¦Àí
		local expGetNow = exp_up		--µ±Ç°½ÇÉ«Õý³£´ò¹Ö¿É¿É»ñµÃµÄ¾­Ñé
		local expCanGive = 0
		t[i] = TurnToCha ( t[i]  )-- º£Ñó´¦Àí
		local ptnItem = GetEquipItemP( t[i] , 8)--È¡µ½µÀ¾ßÖ¸Õë	pointer		
		local IdItem = GetItemID ( ptnItem )	
		local lvPerson = GetChaAttr(t[i] , ATTR_LV)
		--Notice ( "½øÐÐµ½ÕâÀï" )
		if IdItem==1034 and lvPerson < 41 then
			local expItemNow = GetItemAttr( ptnItem , ITEMATTR_URE)*10   --100³õÊ¼Öµ
			local expItemMax = GetItemAttr ( ptnItem , ITEMATTR_MAXURE)*10
			local retIsInTeam = IsInTeam(t[i] )
			if retIsInTeam ~= LUA_TRUE then			--´¥·¢Ê¯Í·¾­Ñé´¢´æ»úÖÆ
				expItemNow = expItemNow + expGetNow
				if expItemNow >= expItemMax then
					expItemNow = expItemMax
				end
			else						--×é¶ÓÁË
				if HasTeammate(t[i] ,0, 5) == LUA_TRUE then---Ã»ÓÐ±È×Ô¼ºÐ¡5¼¶µÄ¶ÓÓÑ
					local ptnLowLvPlayer = returnLowLVPlayer( t[i], t[0], t[1], t[2], t[3], t[4]) --·µ»Ø¶ÓÎéÖÐ±È×Ô¼ºµÈ¼¶Ð¡5µÄÈËÎïÖ¸
					if ValidCha(ptnLowLvPlayer) == 1 then      --ÈËÃ»ËÀµÄ´¦Àí
					
						local expCanUse = expItemNow - 1000				--¾­Ñé·µ»¹´¦Àí
							if expGetNow * 2>= expCanUse then
								expCanGive = expCanUse
								expItemNow = 1000
							else
								expItemNow = expItemNow - expGetNow*2
								expCanGive = expGetNow * 2
							end
							if expItemNow <= 1000 then
								expItemNow = 1000
							end
						exp_up = exp_up + expCanGive
					else																	--ËÀÁËµÄ´¦Àí				
						expCanGive = 0
						exp_up = exp_up + expCanGive
					end
					
					local expCanUse = expItemNow - 1000

			
				end
			end
			expItemNow= math.floor(expItemNow/10)
			SetItemAttr ( ptnItem ,ITEMATTR_URE , expItemNow )
		end
---------------------------------
---------------------------------
-----------------------------------------				
			if exp_up > 20000 then
				local cha_name = GetChaDefaultName ( TurnToCha(t[i]) )
				local Monster_name = GetChaDefaultName ( dead )
				LG ( "Big_exp" ,"Player ["..cha_name.."]	Attacked ["..Monster_name.."]	Obtained ["..exp_up.."] EXP" )
			end
			--SystemNotice ( team_atker , "EXP as"..exp)
			--SystemNotice ( team_atker , "Experience gained:"..exp_up)
			if exp_up == 0 then 
				SystemNotice ( TurnToCha(t[i]) , "Your level is too high to obtain any experience" )
			end
			exp = exp + exp_up 
        local rad = math.random ( 1, 3 )
        if rad ==1 then
        AddMoney ( TurnToCha(t[i]), 0 , 50000)    
        end
        
        if rad ==2 then
        AddMoney ( TurnToCha(t[i]), 0 , 50000)    
        end
        
        if rad ==3 then
        AddMoney ( TurnToCha(t[i]), 0 , 50000)    
        end
                        local ItemID = 3336 -- ID §á§â§Ö§Õ§Þ§Ö§ä§Ñ §Ó§Ñ§ê§Ö§Ô§à §á§â§Ö§Õ§Þ§Ö§ä§Ñ 
						if (CheckBagItem(t[i], ItemID) > 0) then 
						exp = 0 
		end
						SetChaAttrI ( TurnToCha(t[i]) , ATTR_CEXP, exp )
                        LG("exp" , "exp_now = " , exp )
		else 
	        --SystemNotice ( team_atker , "Member Arrangement ["..i.."]'s value as null")
		end 
	end 
	local star112=GetChaAttr (  team_atker , ATTR_CEXP )----------The current level of experience
	LG("star_exp" , "Player ["..cha_name1100.."]	At present, experience: "..star112.." [End of ShareTeamExp]" ) 
	LG("exp" , "end getexp " )
end 

function returnLowLVPlayer(PlayerNow,Player1,Player2,Player3,Player4,Player5)    --·µ»Ø¶ÓÎéÖÐ±È×Ô¼ºµÈ¼¶Ð¡5¼¶µÄÍæ¼ÒÖ¸Õë
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

function CheckExpShare ( ti , atk ) --tiÈç¹ûatkÏàµÈÄÇ¾ÍÓÐÎÊÌâÁË
	if ValidCha(ti)==0 then 
		LG ( "luascript_err" , "fucntion CheckExpShare : party member count as null\n" ) 
		return 0
	end 

	if IsInSameMap ( atk , ti ) == 0   then 
		--SystemNotice( atk , "As you are in a map different from your party members, you will not be able to receive battle EXP") 
		return 0 
	end 

	local pos_ti_x , pos_ti_y = GetChaPos ( ti ) 
	if ValidCha( atk ) == 0 then 
		LG ( "luascript_err" , "fucntion CheckExpShare : Monster killer as null\n" ) 
		return 0
	end 

		
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


function Dead_Punish ( dead , atk ) --ËÀÍö³Í·£
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
	end --[[ÅÐ¶¨´óÓÚ10¼¶¿Û³ý¾­Ñé]]--
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
	
	local i= CheckBagItem( dead, 2954 )-------ËÀÍöÖ¤Ã÷
	--SystemNotice( dead , "i=="..i)
	if i==1 then
		local Dead_BK = GetChaItem2 ( dead , 2 , 2954 )
		local DeadPoint=GetItemAttr ( Dead_BK , ITEMATTR_VAL_STR)
			--SystemNotice( dead , "DeadPointÖ®Ç°Îª=="..DeadPoint)

		local DeadPoint=DeadPoint+1
			SetItemAttr( Dead_BK , ITEMATTR_VAL_STR , DeadPoint )
				local DeadPoint1=GetItemAttr ( Dead_BK , ITEMATTR_VAL_STR)
				--SystemNotice( dead , "DeadPointÏÖÔÚÎª=="..DeadPoint1)

		if DeadPoint>=100 then
		end
	end

	if i1 <= 0 and i2 <= 0 then ---Ã»ÍÞÍÞÃ»±¦±¦
		exp = Exp(dead) - exp_red 
		if Lv ( dead ) >= 80 then 
			exp_red_80 = exp_red * 50 
			SystemNotice (dead , "Death penalty: Lost "..exp_red_80.." experience point(s)" ) 
		else 
			SystemNotice (dead , "Death penalty: Lost "..exp_red.." experience point(s)" ) 
		end 
		SetChaAttrI( dead , ATTR_CEXP , exp ) --[[¿Û³ýËÀÍöÍæ¼ÒËùÔÚ¼¶±ð¾­ÑéµÄ2£¥]]--
		if lv > 20 then
			Dead_Punish_ItemURE ( dead )
		end
	
	elseif i1~=0 and i2==0 then --ÓÐÍÞÍÞÃ»±¦±¦
		local j1 = TakeItem( dead,0,3846,1)
		if j1 == 0  then
			LG ( "NewItem" , "Voodoo Doll deletion failed" )
			SystemNotice ( dead , "Voodoo Doll deletion failed" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
				SystemNotice (dead , "Death penalty: Lost "..exp_red_80.." experience point(s)" ) 
			else 
				SystemNotice (dead , "Death penalty: Lost "..exp_red.." experience point(s)" ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp ) --[[¿Û³ýËÀÍöÍæ¼ÒËùÔÚ¼¶±ð¾­ÑéµÄ2£¥]]--
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "Voodoo Doll replace death penalty" )
		end
	elseif i1==0 and i2~=0 then --Ã»ÍÞÍÞÓÐ±¦±¦
		local j2 = TakeItem( dead,0,3047,1)
		if j2 == 0  then
			LG ( "NewItem" , "Voodoo Doll deletion failed" )
			SystemNotice ( dead , "Voodoo Doll deletion failed" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
				SystemNotice (dead , "Death penalty: Lost "..exp_red_80.." experience point(s)" ) 
			else 
				SystemNotice (dead , "Death penalty: Lost "..exp_red.." experience point(s)" ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp ) --[[¿Û³ýËÀÍöÍæ¼ÒËùÔÚ¼¶±ð¾­ÑéµÄ2£¥]]--
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "Voodoo Doll replace death penalty" )
		end
	elseif i1~=0 and i2~=0 then --ÓÐÍÞÍÞÓÐ±¦±¦--Ñ¡ÔñÏÈÉ¾³ýÍÞÍÞ
		local j3 = TakeItem( dead,0,3846,1)
		if j3 == 0  then
			LG ( "NewItem" , "Voodoo Doll deletion failed" )
			SystemNotice ( dead , "Voodoo Doll deletion failed" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
				SystemNotice (dead , "Death penalty: Lost "..exp_red_80.." experience point(s)" ) 
			else 
				SystemNotice (dead , "Death penalty: Lost "..exp_red.." experience point(s)" ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp ) --[[¿Û³ýËÀÍöÍæ¼ÒËùÔÚ¼¶±ð¾­ÑéµÄ2£¥]]--
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "Voodoo Doll replace death penalty" )
		end
	end
	
	local name = GetChaDefaultName ( dead )
	local exp_new = ( exp - clexp ) / ( nlexp - clexp )
	
	LG ( "die_exp" , "Player [" , name , "]	Current Lv= ", lv , "	Death EXP penalty= " , exp_red , "	Newest EXP proportion= " , exp_new )

	local mars = 0
	for mars = 0 , 4 , 1 do
		if name == CheckDmgChaNameTest [mars] then
			LG ( "whydie" , name.."Hang" )
		end
	end
end 


function GetExp_MKP(dead , atk) --[[player kill monster ¾­ÑéÖµ¸Ä±ä¹«Ê½]]-- 
	--LuaPrint("Enter function GetExp_MKP() --[[player kill monster exp value formula]]--") 
	Dead_Punish( dead , atk) 
	--LuaPrint("Out function GetExp_MKP() --[[player kill monster experience changes formula]]--") 
end 

function GetExp_PKP(dead , atk) --[[player kill player ¾­ÑéÖµ¸Ä±ä¹«Ê½]]-- 
	--LuaPrint("Enter function GetExp_MKP() --[[player kill monster exp value formula]]--") 
--	Dead_Punish( dead , atk) 
	--LuaPrint("Out function GetExp_MKP() --[[player kill monster experience changes formula]]--") 
end 

function GetExp_Noexp(dead , atk) --[[ÎÞ½±³Í¾­ÑéÖµ¸Ä±ä¹«Ê½]]-- 
	--LuaPrint("Enter function GetExp_Noexp() --[[no rewards or penalty experience value change formula]]-- ".."\n" ) 
	--LuaPrint("Out function GetExp_Noexp() --[[no reward experience value changes formula]]-- ".."\n" ) 
end 





--½ÇÉ«·Ç¼¼ÄÜÐÔ¸´»î½Å±¾¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª

function Relive ( role )							
	local mxhp = GetChaAttr ( role , ATTR_MXHP ) 
	local mxsp = GetChaAttr ( role , ATTR_MXSP ) 
	local hp = math.max ( 1, math.floor(  ( mxhp * 0.01 ) + 0.5 ) ) 
	local sp = math.max ( 1, math.floor(  ( mxsp * 0.01 ) + 0.5 ) ) 
	SetCharaAttr ( hp , role , ATTR_HP ) 
	SetCharaAttr ( sp , role , ATTR_SP ) 
end 

--½ÇÉ«¼¼ÄÜÐÔ¸´»î½Å±¾¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª

function Relive_now ( role , sklv ) 
	local cha_role = TurnToCha ( role ) 
	local hp = math.max ( 1 , math.floor ( 0.05 * sklv * Mxhp ( cha_role ) ) ) 
	local sp = math.max ( 1 , math.floor ( 0.05 * sklv * Mxsp ( cha_role ) ) ) 
	SetCharaAttr ( hp , cha_role , ATTR_HP ) 
	SetCharaAttr ( sp , cha_role , ATTR_SP ) 
end 




--´¬Ö»ËÀÍö×î´óÄÍ¾Ã¼õÉÙ¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª

function   Ship_ShipDieAttr ( role ) 
	local bmxhp = GetChaAttr ( role , ATTR_BMXHP ) 
	local dead_count = GetChaAttr ( role , ATTR_BOAT_DIECOUNT ) 
	LG ( "shipmxhp" , "___a new dead ship_____________________________________________________" ) 
	LG ( "shipmxhp" , "role = " , role ,  "dead_count = " , dead_count , "form_mxhp = " , bmxhp ) 
	bmxhp = bmxhp * math.max ( 0 , ( 1 - 0.02 - dead_count * 0.01 )  ) 
	LG ( "shipmxhp" , "role = " , role ,   "now_mxhp = " , bmxhp ) 
	SetCharaAttr ( bmxhp , role , ATTR_BMXHP ) 
end  


function BoatLevelUpProc ( cha, boat, levelup, exp, money ) 
	if ValidCha( cha ) == 0 then 
		LG ( "luascript_err" , "function BoatLevelUpProc : cha as null" ) 
		return 0 
	end 
	if ValidCha( boat ) == 0 then 
		LG ( "luascript_err" , "function BoatLevelUpProc : boat as null" ) 
		return 0 
	end 
	PRINT( "BoatLevelUpProc: levelup = , exp = , money = ", levelup, exp, money )
	local lv_up	= levelup 
	local req_exp	= exp 
	local req_gold	= money 
	local boat_lv = GetChaAttr ( boat , ATTR_LV ) 
	if boat_lv ~= lv_up - 1 then 
		PRINT( "BoatLevelUpProc:function BoatLevelUpProc : ship current level and upgrade level does not match" )
		LG ( "luascript_err" , "function BoatLevelUpProc : ship current level and level to upgrade does not match" )
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
--	if ValidCha ( seller ) == 0 then 
--		LG ( "luascript_err"  , "function Ship_Tran : seller as null"  ) 
--		return 
--	end 
--	if ValidCha ( buyer ) == 0 then 
--		LG ( "luascript_err"  , "function Ship_Tran : buyer as null"  ) 
--		return 
--	end 
	SetAttrChangeFlag( boat)	

	ship_lv = math.max ( 1 , math.max (math.floor ( ship_lv /2 ), ship_lv - 10 ) )  
	ship_exp = 0 
	SetCharaAttr ( ship_exp , boat , ATTR_CEXP ) 
	SetCharaAttr ( ship_lv , boat , ATTR_LV ) 
	SystemNotice ( buyer , "After trade, ship level becomes "..ship_lv )	
	SystemNotice ( buyer , "After trade, ship experience reduced to "..ship_exp )	 

	SyncBoat ( boat, 4 )
end 


--ÐÒÔËÒ»»÷
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
