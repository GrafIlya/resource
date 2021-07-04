print( "‡ Јаг§Є  Ctrl.lua" )

function config(map)
    MapCanSavePos(map, 0) 
    MapCanPK(map, 1) 
    MapCanGuild(map,0)
    MapCopyNum(map, 1) 
    SingleMapCopyPlyNum(map, 300)   
    MapCanTeam(map , 1)
    MapType ( map , 5 )
    RepatriateDie(map,0)
    SetMapGuildWar(map,1)
    MapCanStall(map , 0)
end

function get_map_entry_pos_guildwar2()   
	local POS_X=1450
	local POS_Y=612
	return POS_X , POS_Y
end

function init_entry(map)
    SetMapEntryMapName(map, "darkblue") 
    SetMapEntryTime(map, "2005/8/30/19/00", "0/4/0", "0/3/0", "0/3/0") 
end

function after_enter_guildwar2( role , map_copy )
    if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
        SetChaSideID(role, 1)
    end
    if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
        SetChaSideID(role, 2)
    end
end

function before_leave_guildwar2 ( role )
local Cha = TurnToCha(role) 
	local i = 0
	local j = 0
	for i = 0 , SZ_BagItemDelCheckNum ,1 do
	        local j = RemoveChaItem ( Cha ,SZ_BagItemDelCheck_ID[i],0,0,-1,2,1 )
		if j == 0 then 
		LG("RemoveChaItem","Failed")
		end
        end
  RemoveState( role , STATE_HFZQ )
  RemoveState( role , STATE_QINGZ )
  RemoveState( role , STATE_JRQKL )
  RemoveState( role , STATE_YS )
  local map_copy =  GetChaMapCopy(role)
     if check_need_show == 1 then
         return 
         else
         if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
            count_haijun = count_haijun - 1
	    MapCopyNotice ( map_copy , "[Игрок присоединился к фракции Флота]" )
         elseif GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
            count_haidao = count_haidao - 1
	    MapCopyNotice ( map_copy , "[Игрок присоединился к фракции Пиратов]" )
        end
    end
end

function map_copy_run_guildwar2( map_copy )
      local closetime = GUILDWARCLOSETIME2
		for i = 1 , GUILDNOTICE2 , 1 do
			if closetime ==GUILDCLOSESHOW2[i] then
			local Notice_all = "Карта Мини Священной Войны будет закрыта через " .. closetime .. " секунд! Следите за новостями. Удачи!"
				MapCopyNotice ( map_copy ,Notice_all )
			end
		end
		GUILDWARCLOSETIME2 = GUILDWARCLOSETIME2 - 1
 local hp_hd = GetChaAttr( di_haidaoSide_BaseRole , ATTR_HP ) 
	local mxhp_hd = GetChaAttr( di_haidaoSide_BaseRole , ATTR_MXHP )
	local percent_hd = hp_hd/mxhp_hd
	if percent_hd < 0.3 and create_boss_hd2 == 0 then
		local x, y = GetChaPos( di_haidaoSide_BaseRole )
		      x = x+500
		      y = y+500
                local Monster_hdboss = CreateChaEx(1033, 30800, 52400, 145, 1300,map_copy)
		SetChaLifeTime(Monster_hdboss,1200000) 
		
                SetChaSideID(Monster_hdboss, 2)
			MapCopyNotice ( map_copy ,"Узрите же истинную силу пиратской тьмы!")
		create_boss_hd2 = 1  
	end
 local hp_hj = GetChaAttr( di_haijunSide_BaseRole , ATTR_HP ) 
	local mxhp_hj = GetChaAttr( di_haijunSide_BaseRole , ATTR_MXHP )
	local percent_hj = hp_hj/mxhp_hj
	if percent_hj < 0.3 and create_boss_hj2 == 0 then
		local x, y = GetChaPos( di_haijunSide_BaseRole )
		      x = x+500
		      y = y+500
                local Monster_hjboss = CreateChaEx(1032, 30600, 10200, 145, 1300,map_copy)
		SetChaLifeTime(Monster_hjboss,1200000) 
		SetChaSideID(Monster_hjboss, 1)
			MapCopyNotice ( map_copy ,"Пираты, вы разрушили флотскую статую? Моя рука ответит вам за это мечем!")
		create_boss_hj2 = 1  
	end
 if SZ_Win_CountNum2 == 60 then
		if CheckMonsterDead ( di_haijunSide_BaseRole ) == 1 then
		   if di_haidaoSide_JDNotice == 0 then
			five_seconds2 = 1
			SZ_Win_CountNum2 = SZ_Win_CountNum2 - 1
			di_haidaoSide_JDNotice = 1
                        CloseMapEntry ( "guildwar2" )
                        check_need_show2 = 1 
                        local player_num_1 = GetMapPlayer(map_copy)
			local pn_1 = player_num_1 * 3
			for i=1, pn_1, 1 do
				if player_num_1 > 0 then
					DealAllPlayerInMap(map_copy,"HJ_Goto2")
					DealAllPlayerInMap(map_copy,"noside_Goto2")
				end
			end
			DealAllActivePlayerInMap(map_copy,"Give_Three_QiYue2")
				local Notice_all = "Пиратская фракция победила в Мини Священной войне "
			Notice ( Notice_all )
	            end
		end
		if CheckMonsterDead ( di_haidaoSide_BaseRole ) == 1 then
		    if di_haijunSide_JDNotice == 0 then
		        five_seconds2 = 1
			SZ_Win_CountNum2 = SZ_Win_CountNum2 - 1
			di_haijunSide_JDNotice = 1
                        CloseMapEntry ( "guildwar2" )
			check_need_show2 = 1
                        local player_num_2 = GetMapPlayer(map_copy)
			local pn_2 = player_num_2 * 3
			for i=1, pn_2, 1 do
				if player_num_2 > 0 then
					DealAllPlayerInMap(map_copy,"HD_Goto2")
					DealAllPlayerInMap(map_copy,"noside_Goto2")
				end
			end
			DealAllActivePlayerInMap(map_copy,"Give_Three_QiYue2")
				local Notice_all =  "Флотская фракция победила в Мини Священной войне "
			Notice ( Notice_all )
	            end
		end
		if CheckMonsterDead ( di_haijunSide_LCRole ) == 1 then
			if di_haijunSide_LCNotice == 0 then
				MapCopyNotice ( map_copy ,"Флотской склад боеприпасов уничтожен! Защита Улучшенной стрелковой башни заметно понижена ")
				AddState( di_haijunSide_BaseRole , haijunSide_BaseRole , STATE_PKLC, 10 , 10800 )
				AddState( di_haijunSide_JTRole_1 , di_haijunSide_JTRole_1 , STATE_PKLC, 10 , 10800 )
				AddState( di_haijunSide_JTRole_2 , di_haijunSide_JTRole_2 , STATE_PKLC, 10 , 10800 )
				di_haijunSide_LCNotice = 1
				
			end
		end
		if CheckMonsterDead ( di_haidaoSide_LCRole ) == 1 then
			if di_haidaoSide_LCNotice == 0 then
				MapCopyNotice ( map_copy ,"Пиратский склад боеприпасов уничтожен! Защита Улучшенной стрелковой башни заметно понижена ")
				AddState( di_haidaoSide_BaseRole , di_haidaoSide_BaseRole , STATE_PKLC, 10 , 10800 )
				AddState( di_haidaoSide_JTRole_1 , di_haidaoSide_JTRole_1 , STATE_PKLC, 10 , 10800 )
				AddState( di_haidaoSide_JTRole_2 , di_haidaoSide_JTRole_2 , STATE_PKLC, 10 , 10800 )
				di_haidaoSide_LCNotice = 1
			end
		end
		if CheckMonsterDead ( di_haijunSide_DYKRole ) == 1 then
			if di_haijunSide_DYKNotice == 0 then 
				MapCopyNotice ( map_copy ,"Флотской пакгауз уничтожен! Сила атаки Улучшенной стрелковой башни заметно понижена ")
				AddState( di_haijunSide_JTRole_1 , di_haijunSide_JTRole_1 , STATE_JHKML, 10 , 10800 )
				AddState( di_haijunSide_JTRole_2 , di_haijunSide_JTRole_2 , STATE_JHKML, 10 , 10800 )
				di_haijunSide_DYKNotice = 1
			end
		end
		if CheckMonsterDead ( di_haidaoSide_DYKRole ) == 1 then
			if di_haidaoSide_DYKNotice == 0 then
				MapCopyNotice ( map_copy ,"Пиратский пакгауз уничтожен! Сила атаки Улучшенной стрелковой башни заметно понижена ")
				AddState( di_haidaoSide_JTRole_1 , di_haidaoSide_JTRole_1 , STATE_JHKML, 10 , 10800 )
				AddState( di_haidaoSide_JTRole_2 , di_haidaoSide_JTRole_2 , STATE_JHKML, 10 , 10800 )
				di_haidaoSide_DYKNotice = 1
			end		
		end
	else
              if time_can_setmonster2 == 0 then
		time_can_setnvsheng2 = time_can_setnvsheng2 + 1
	      end
		local Count = SZ_Win_CountNum2 / 10
		if Count == math.floor ( Count ) then
			local Notice_map = "Богиня прибудет на карту и оценит силу смертных через "..SZ_Win_CountNum.." секунд "
			MapCopyNotice ( map_copy , Notice_map )
		end
		SZ_Win_CountNum2 = SZ_Win_CountNum2 - 1
		if SZ_Win_CountNum2 == 0 then
				SZ_Win_CountNum2 = 60
		end   
	        if time_can_setnvsheng2 == 59 then
			MapCopyNotice ( map_copy ,"Богиня прибыла в Мини Священную войну ")
		local Monster2 = CreateChaEx(1027, 21526, 49419, 145, 1000,map_copy)
		local Monster3 = CreateChaEx(1027, 41559, 11793, 145, 1000,map_copy)
		local Monster4 = CreateChaEx(1027, 13667, 40891, 145, 1000,map_copy)
		local Monster5 = CreateChaEx(1027, 12478, 21656, 145, 1000,map_copy)
		local Monster6 = CreateChaEx(1027, 12416, 49142, 145, 1000,map_copy)
		local Monster7 = CreateChaEx(1027, 52406, 49110, 145, 1000,map_copy)
		local Monster8 = CreateChaEx(1027, 51472, 13326, 145, 1000,map_copy)
		local Monster9 = CreateChaEx(1027, 12405, 8742, 205, 1000,map_copy)
		SetChaLifeTime(Monster2,900000)
		SetChaLifeTime(Monster3,900000)
		SetChaLifeTime(Monster4,900000)
		SetChaLifeTime(Monster5,900000)
		SetChaLifeTime(Monster6,900000)
		SetChaLifeTime(Monster7,900000)
		SetChaLifeTime(Monster8,900000)
		SetChaLifeTime(Monster9,900000)
	       time_can_setmonster2 = 1
               time_can_setnvsheng2 = 1
		end
	end
end

function map_copy_run_special_guildwar2( map_copy ) 
        local random_hezi = math.random(1,10)
	if random_hezi == 1 then 
		local Monster1 = CreateChaEx(1013, 21620, 25990, 145, 60,map_copy)
		local Monster2 = CreateChaEx(1013, 13505, 26914, 145, 60,map_copy)
		local Monster3 = CreateChaEx(1013, 51545, 12982, 145, 60,map_copy)
		local Monster4 = CreateChaEx(1013, 49464, 21582, 145, 60,map_copy)
		local Monster5 = CreateChaEx(1013, 52142, 27057, 145, 60,map_copy)
		local Monster6 = CreateChaEx(1013, 41027, 24583, 145, 60,map_copy)
		local Monster7 = CreateChaEx(1013, 39696, 32709, 145, 60,map_copy)
		local Monster8 = CreateChaEx(1013, 31214, 33352, 145, 60,map_copy)
		local Monster9 = CreateChaEx(1013, 30322, 27936, 145, 60,map_copy)
		local Monster10 = CreateChaEx(1013, 12275, 8838, 145, 60,map_copy)
        local Monster11 = CreateChaEx(1014, 13441, 49302, 237, 60,map_copy)
		local Monster12 = CreateChaEx(1014, 49505, 53814, 145, 60,map_copy)
		local Monster13 = CreateChaEx(1014, 52191, 48734, 145, 60,map_copy)
		local Monster14 = CreateChaEx(1014, 49514, 36624, 145, 60,map_copy)
		local Monster15 = CreateChaEx(1014, 52322, 40969, 145, 60,map_copy)
		local Monster16 = CreateChaEx(1014, 39167, 43477, 145, 60,map_copy)
		local Monster17 = CreateChaEx(1014, 32042, 44194, 145, 60,map_copy)
		local Monster18 = CreateChaEx(1014, 30494, 38172, 145, 60,map_copy)
		local Monster19 = CreateChaEx(1014, 22644, 43566, 145, 60,map_copy)
		local Monster20 = CreateChaEx(1014, 13309, 37477, 145, 60,map_copy)
        SetChaLifeTime(Monster1,299050)
		SetChaLifeTime(Monster2,299050)
		SetChaLifeTime(Monster3,299100)
		SetChaLifeTime(Monster4,299150)
		SetChaLifeTime(Monster5,299200)
		SetChaLifeTime(Monster6,299250)
		SetChaLifeTime(Monster7,299300)
		SetChaLifeTime(Monster8,299350)
		SetChaLifeTime(Monster9,299400)
		SetChaLifeTime(Monster10,299450)
		SetChaLifeTime(Monster11,299050)
        SetChaLifeTime(Monster12,299050)
		SetChaLifeTime(Monster13,299100)
		SetChaLifeTime(Monster14,299150)
		SetChaLifeTime(Monster15,299200)
		SetChaLifeTime(Monster16,299250)
		SetChaLifeTime(Monster17,299300)
		SetChaLifeTime(Monster18,299350)
		SetChaLifeTime(Monster19,299400)
		SetChaLifeTime(Monster20,299450)
	end
	if random_hezi == 2 then 
		local Monster21 = CreateChaEx(1013, 13280, 20327, 145, 60,map_copy)
		local Monster22 = CreateChaEx(1013, 11494, 22938, 145, 60,map_copy)
		local Monster23 = CreateChaEx(1013, 8620, 25754, 145, 60,map_copy)
		local Monster24 = CreateChaEx(1013, 13434, 27171, 145, 60,map_copy)
		local Monster25 = CreateChaEx(1013, 22082, 29060, 145, 60,map_copy)
		local Monster26 = CreateChaEx(1013, 22328, 26854, 145, 60,map_copy)
		local Monster27 = CreateChaEx(1013, 22300, 23715, 145, 60,map_copy)
		local Monster28 = CreateChaEx(1013, 23025, 16585, 145, 60,map_copy)
		local Monster29 = CreateChaEx(1013, 20613, 15337, 145, 60,map_copy)
		local Monster30 = CreateChaEx(1013, 12830, 12465, 145, 60,map_copy)
        local Monster31 = CreateChaEx(1014, 21213, 39440, 46, 60,map_copy)
		local Monster32 = CreateChaEx(1014, 10730, 49579, 46, 60,map_copy)
		local Monster33 = CreateChaEx(1014, 21988, 34742, 46, 60,map_copy)
		local Monster34 = CreateChaEx(1014, 22985, 36209, 46, 60,map_copy)
		local Monster35 = CreateChaEx(1014, 22883, 48223, 46, 60,map_copy)
		local Monster36 = CreateChaEx(1014, 21350, 45700, 46, 60,map_copy)
		local Monster37 = CreateChaEx(1014, 23070, 40910, 46, 60,map_copy)
		local Monster38 = CreateChaEx(1014, 13719, 34813, 46, 60,map_copy)
		local Monster39 = CreateChaEx(1014, 12202, 39254, 250, 60,map_copy)
		local Monster40 = CreateChaEx(1014, 8017, 43392, 145, 60,map_copy)
        SetChaLifeTime(Monster21, 299050)
		SetChaLifeTime(Monster22, 299100)
		SetChaLifeTime(Monster23, 299150)
		SetChaLifeTime(Monster24, 299200)
		SetChaLifeTime(Monster25, 299250)
		SetChaLifeTime(Monster26, 299300)
		SetChaLifeTime(Monster27, 299350)
		SetChaLifeTime(Monster28, 299350)
		SetChaLifeTime(Monster29, 299350)
		SetChaLifeTime(Monster30, 299350)
		SetChaLifeTime(Monster31, 299050)
		SetChaLifeTime(Monster32, 299050)
		SetChaLifeTime(Monster33, 299050)
		SetChaLifeTime(Monster34, 299050)
		SetChaLifeTime(Monster35, 299050)
		SetChaLifeTime(Monster36, 299050)
		SetChaLifeTime(Monster37, 299050)
		SetChaLifeTime(Monster38, 299050)
		SetChaLifeTime(Monster39, 299050)
		SetChaLifeTime(Monster40, 299050)
	end
	if random_hezi == 3 then 
		local Monster41 = CreateChaEx(1014, 39318, 32214, 293, 60,map_copy)
		local Monster42 = CreateChaEx(1014, 31069, 43192, 293, 60,map_copy)
		local Monster43 = CreateChaEx(1014, 39177, 52654, 293, 60,map_copy)
		local Monster44 = CreateChaEx(1014, 35124, 52286, 293, 60,map_copy)
		local Monster45 = CreateChaEx(1014, 36068, 51210, 293, 60,map_copy)
		local Monster46 = CreateChaEx(1014, 48444, 48486, 293, 60,map_copy)
		local Monster47 = CreateChaEx(1014, 40042, 47521, 293, 60,map_copy)
		local Monster48 = CreateChaEx(1014, 40223, 41496, 182, 60,map_copy)
		local Monster49 = CreateChaEx(1014, 38767, 38552, 145, 60,map_copy)
		local Monster50 = CreateChaEx(1014, 40167, 36772, 145, 60,map_copy)
		local Monster51 = CreateChaEx(1013, 38002, 20903, 209, 60,map_copy)
		local Monster52 = CreateChaEx(1013, 39240, 19177, 279, 60,map_copy)
		local Monster53 = CreateChaEx(1013, 39645, 30047, 279, 60,map_copy)
		local Monster54 = CreateChaEx(1013, 39791, 27655, 279, 60,map_copy)
		local Monster55 = CreateChaEx(1013, 52163, 27539, 279, 60,map_copy)
		local Monster56 = CreateChaEx(1013, 50094, 20494, 279, 60,map_copy)
		local Monster57 = CreateChaEx(1013, 49301, 13882, 279, 60,map_copy)
		local Monster58 = CreateChaEx(1013, 37727, 14455, 306, 60,map_copy)
		local Monster59 = CreateChaEx(1013, 39731, 13703, 246, 60,map_copy)
		local Monster60 = CreateChaEx(1013, 41555, 15069, 145, 60,map_copy)
		SetChaLifeTime(Monster41, 299050)
		SetChaLifeTime(Monster42, 299050)
		SetChaLifeTime(Monster43, 299050)
		SetChaLifeTime(Monster44, 299050)
		SetChaLifeTime(Monster45, 299050)
		SetChaLifeTime(Monster46, 299050)
		SetChaLifeTime(Monster47, 299050)
		SetChaLifeTime(Monster48, 299050)
		SetChaLifeTime(Monster49, 299050)
		SetChaLifeTime(Monster50, 299050)
		SetChaLifeTime(Monster51, 299050)
		SetChaLifeTime(Monster52, 299050)
		SetChaLifeTime(Monster53, 299050)
		SetChaLifeTime(Monster54, 299050)
		SetChaLifeTime(Monster55, 299050)
		SetChaLifeTime(Monster56, 299050)
		SetChaLifeTime(Monster57, 299050)
		SetChaLifeTime(Monster58, 299050)
		SetChaLifeTime(Monster59, 299050)
		SetChaLifeTime(Monster60, 299050)
	end
	if random_hezi == 4 then 
		local Monster61 = CreateChaEx(1014, 32934, 48220, 145, 60,map_copy)
		local Monster62 = CreateChaEx(1014, 31123, 47392, 145, 60,map_copy)
		local Monster63 = CreateChaEx(1014, 29539, 45307, 145, 60,map_copy)
		local Monster64 = CreateChaEx(1014, 31953, 39794, 145, 60,map_copy)
		local Monster65 = CreateChaEx(1014, 30420, 39552, 145, 60,map_copy)
		local Monster66 = CreateChaEx(1014, 29168, 39497, 145, 60,map_copy)
		local Monster67 = CreateChaEx(1014, 32033, 34808, 145, 60,map_copy)
		local Monster68 = CreateChaEx(1014, 30246, 34860, 145, 60,map_copy)
		local Monster69 = CreateChaEx(1014, 29028, 34853, 145, 60,map_copy)
		local Monster70 = CreateChaEx(1014, 30913, 32317, 145, 60,map_copy)
		local Monster71 = CreateChaEx(1013, 31027, 27601, 145, 60,map_copy)
		local Monster72 = CreateChaEx(1013, 32306, 14507, 145, 60,map_copy)
		local Monster73 = CreateChaEx(1013, 30652, 14544, 145, 60,map_copy)
		local Monster74 = CreateChaEx(1013, 29230, 14685, 145, 60,map_copy)
		local Monster75 = CreateChaEx(1013, 31893, 25509, 145, 60,map_copy)
		local Monster76 = CreateChaEx(1013, 30293, 25526, 145, 60,map_copy)
		local Monster77 = CreateChaEx(1013, 29360, 25536, 145, 60,map_copy)
		local Monster78 = CreateChaEx(1013, 31895, 20636, 145, 60,map_copy)
		local Monster79 = CreateChaEx(1013, 30197, 20647, 145, 60,map_copy)
		local Monster80 = CreateChaEx(1013, 29223, 20629, 145, 60,map_copy)
		SetChaLifeTime(Monster61,298050)
		SetChaLifeTime(Monster62,298100)
		SetChaLifeTime(Monster63,298150)
		SetChaLifeTime(Monster64,298200)
		SetChaLifeTime(Monster65,298250)
		SetChaLifeTime(Monster66,298300)
		SetChaLifeTime(Monster67,298350)
		SetChaLifeTime(Monster68,298400)
		SetChaLifeTime(Monster69,298450)
		SetChaLifeTime(Monster70,298500)
		SetChaLifeTime(Monster71,298550)
		SetChaLifeTime(Monster72,298600)
		SetChaLifeTime(Monster73,298650)
		SetChaLifeTime(Monster74,298700)
		SetChaLifeTime(Monster75,298750)
		SetChaLifeTime(Monster76,298800)
		SetChaLifeTime(Monster77,298850)
		SetChaLifeTime(Monster78,298900)
		SetChaLifeTime(Monster79,298950)
		SetChaLifeTime(Monster80,299000)
		
	end
	if random_hezi == 5 then 
	    local Monster81 = CreateChaEx(1014, 23820, 13953, 201, 60,map_copy)
		local Monster82 = CreateChaEx(1014, 21199, 13676, 201, 60,map_copy)
		local Monster83 = CreateChaEx(1014, 21773, 26290, 201, 60,map_copy)
		local Monster84 = CreateChaEx(1014, 40766, 10069, 201, 60,map_copy)
		local Monster85 = CreateChaEx(1014, 21986, 23641, 201, 60,map_copy)
		local Monster86 = CreateChaEx(1014, 28509, 14375, 201, 60,map_copy)
		local Monster87 = CreateChaEx(1014, 31358, 16347, 201, 60,map_copy)
		local Monster88 = CreateChaEx(1014, 29375, 17571, 201, 60,map_copy)
		local Monster89 = CreateChaEx(1014, 30700, 22325, 201, 60,map_copy)
		local Monster90 = CreateChaEx(1014, 39386, 20026, 201, 60,map_copy)
		local Monster91 = CreateChaEx(1014, 39446, 14220, 201, 60,map_copy)
		local Monster92 = CreateChaEx(1014, 38707, 16452, 50, 60,map_copy)
		local Monster93 = CreateChaEx(1014, 51077, 31945, 50, 60,map_copy)
		local Monster94 = CreateChaEx(1014, 47667, 22749, 50, 60,map_copy)
		local Monster95 = CreateChaEx(1014, 50310, 20050, 145, 60,map_copy)
		local Monster96 = CreateChaEx(1013, 38310, 36356, 69, 60,map_copy)
		local Monster97 = CreateChaEx(1013, 40341, 37923, 69, 60,map_copy)
		local Monster98 = CreateChaEx(1013, 39346, 43117, 69, 60,map_copy)
		local Monster99 = CreateChaEx(1013, 42280, 47669, 124, 60,map_copy)
		local Monster100 = CreateChaEx(1013, 41768, 52403, 168, 60,map_copy)
		local Monster101 = CreateChaEx(1013, 38234, 53225, 72, 60,map_copy)
		local Monster102 = CreateChaEx(1013, 37512, 49433, 145, 60,map_copy)
		local Monster103 = CreateChaEx(1013, 31652, 48510, 145, 60,map_copy)
		local Monster104 = CreateChaEx(1013, 19855, 51667, 145, 60,map_copy)
		local Monster105 = CreateChaEx(1013, 23905, 47757, 145, 60,map_copy)
		local Monster106 = CreateChaEx(1013, 22665, 43745, 145, 60,map_copy)
		local Monster107 = CreateChaEx(1013, 21576, 40936, 145, 60,map_copy)
		local Monster108 = CreateChaEx(1013, 12251, 37484, 145, 60,map_copy)
		local Monster109 = CreateChaEx(1013, 8066, 40856, 145, 60,map_copy)
		local Monster110 = CreateChaEx(1013, 14042, 41339, 145, 60,map_copy)
			SetChaLifeTime(Monster81,297050)
			SetChaLifeTime(Monster82,297100)
			SetChaLifeTime(Monster83,297150)
			SetChaLifeTime(Monster84,297200)
			SetChaLifeTime(Monster85,297250)
			SetChaLifeTime(Monster86,297300)
			SetChaLifeTime(Monster87,297350)
			SetChaLifeTime(Monster88,297400)
			SetChaLifeTime(Monster89,297450)
			SetChaLifeTime(Monster90,297500)
			SetChaLifeTime(Monster91,297550)
			SetChaLifeTime(Monster92,297600)
			SetChaLifeTime(Monster93,297650)
			SetChaLifeTime(Monster94,297700)
			SetChaLifeTime(Monster95,297750)
			SetChaLifeTime(Monster96,297800)
			SetChaLifeTime(Monster97,297850)
			SetChaLifeTime(Monster98,297900)
			SetChaLifeTime(Monster99,297950)
			SetChaLifeTime(Monster100,298000)
			SetChaLifeTime(Monster101,298050)
			SetChaLifeTime(Monster102,298100)
			SetChaLifeTime(Monster103,298150)
			SetChaLifeTime(Monster104,298200)
			SetChaLifeTime(Monster105,298250)
			SetChaLifeTime(Monster106,298300)
			SetChaLifeTime(Monster107,298350)
			SetChaLifeTime(Monster108,298400)
			SetChaLifeTime(Monster109,298450)
			SetChaLifeTime(Monster110,298500)
	end
	if random_hezi == 6 then 
	        local Monster111 = CreateChaEx(1014, 10912, 29307, 44, 60,map_copy)
		local Monster112 = CreateChaEx(1014, 7947, 34591, 44, 60,map_copy)
		local Monster113 = CreateChaEx(1014, 9241, 33020, 49, 60,map_copy)
		local Monster114 = CreateChaEx(1014, 11626, 36543, 49, 60,map_copy)
		local Monster115 = CreateChaEx(1014, 10168, 35723, 49, 60,map_copy)
		local Monster116 = CreateChaEx(1014, 11964, 34517, 49, 60,map_copy)
		local Monster117 = CreateChaEx(1014, 13343, 34211, 145, 60,map_copy)
		local Monster118 = CreateChaEx(1014, 13128, 32578, 145, 60,map_copy)
		local Monster119 = CreateChaEx(1014, 13361, 26732, 145, 60,map_copy)
		local Monster120 = CreateChaEx(1014, 9384, 28155, 145, 60,map_copy)
		local Monster121 = CreateChaEx(1013, 10697, 29063, 145, 60,map_copy)
		local Monster122 = CreateChaEx(1013, 8976, 27353, 145, 60,map_copy)
		local Monster123 = CreateChaEx(1013, 13971, 34757, 145, 60,map_copy)
		local Monster124 = CreateChaEx(1013, 10973, 34523, 145, 60,map_copy)
		local Monster125 = CreateChaEx(1013, 12464, 32075, 145, 60,map_copy)
		local Monster126 = CreateChaEx(1013, 9470, 31601, 145, 60,map_copy)
		local Monster127 = CreateChaEx(1013, 12686, 28099, 145, 60,map_copy)
		local Monster128 = CreateChaEx(1013, 13816, 26277, 145, 60,map_copy)
		local Monster129 = CreateChaEx(1013, 11954, 26364, 145, 60,map_copy)
		local Monster130 = CreateChaEx(1013, 10516, 25686, 145, 60,map_copy)
		local Monster131 = CreateChaEx(1014, 50055, 37809, 109, 60,map_copy)
		local Monster132 = CreateChaEx(1014, 51149, 34800, 109, 60,map_copy)
		local Monster133 = CreateChaEx(1014, 51507, 33319, 109, 60,map_copy)
		local Monster134 = CreateChaEx(1014, 52022, 35132, 109, 60,map_copy)
		local Monster135 = CreateChaEx(1014, 48821, 32731, 109, 60,map_copy)
		local Monster136 = CreateChaEx(1014, 49950, 32246, 131, 60,map_copy)
		local Monster137 = CreateChaEx(1014, 52506, 32960, 131, 60,map_copy)
		local Monster138 = CreateChaEx(1014, 50867, 35699, 131, 60,map_copy)
		local Monster139 = CreateChaEx(1014, 50149, 38936, 134, 60,map_copy)
		local Monster140 = CreateChaEx(1014, 51813, 38899, 145, 60,map_copy)
		local Monster141 = CreateChaEx(1013, 49451, 35944, 359, 60,map_copy)
		local Monster142 = CreateChaEx(1013, 52574, 29142, 293, 60,map_copy)
		local Monster143 = CreateChaEx(1013, 52631, 34629, 145, 60,map_copy)
		local Monster144 = CreateChaEx(1013, 49156, 34409, 145, 60,map_copy)
		local Monster145 = CreateChaEx(1013, 50884, 33572, 145, 60,map_copy)
		local Monster146 = CreateChaEx(1013, 52109, 31771, 145, 60,map_copy)
		local Monster147 = CreateChaEx(1013, 50173, 31771, 145, 60,map_copy)
		local Monster148 = CreateChaEx(1013, 47947, 31101, 145, 60,map_copy)
		local Monster149 = CreateChaEx(1013, 49155, 30447, 145, 60,map_copy)
		local Monster150 = CreateChaEx(1013, 48686, 29665, 145, 60,map_copy)
			SetChaLifeTime(Monster111,296050)
			SetChaLifeTime(Monster112,296100)
			SetChaLifeTime(Monster113,296150)
			SetChaLifeTime(Monster114,296200)
			SetChaLifeTime(Monster115,296250)
			SetChaLifeTime(Monster116,296300)
			SetChaLifeTime(Monster117,296350)
			SetChaLifeTime(Monster118,296400)
			SetChaLifeTime(Monster119,296450)
			SetChaLifeTime(Monster120,296500)
			SetChaLifeTime(Monster121,296550)
			SetChaLifeTime(Monster122,296600)
			SetChaLifeTime(Monster123,296650)
			SetChaLifeTime(Monster124,296700)
			SetChaLifeTime(Monster125,296750)
			SetChaLifeTime(Monster126,296800)
			SetChaLifeTime(Monster127,296850)
			SetChaLifeTime(Monster128,296900)
			SetChaLifeTime(Monster129,296950)
			SetChaLifeTime(Monster130,297000)
			SetChaLifeTime(Monster131,297050)
			SetChaLifeTime(Monster132,297100)
			SetChaLifeTime(Monster133,297150)
			SetChaLifeTime(Monster134,297200)
			SetChaLifeTime(Monster135,297250)
			SetChaLifeTime(Monster136,297300)
			SetChaLifeTime(Monster137,297350)
			SetChaLifeTime(Monster138,297400)
			SetChaLifeTime(Monster139,297450)
			SetChaLifeTime(Monster140,297500)
			SetChaLifeTime(Monster141,297550)
			SetChaLifeTime(Monster142,297600)
			SetChaLifeTime(Monster143,297650)
			SetChaLifeTime(Monster144,297700)
			SetChaLifeTime(Monster145,297750)
			SetChaLifeTime(Monster146,297800)
			SetChaLifeTime(Monster147,297850)
			SetChaLifeTime(Monster148,297900)
			SetChaLifeTime(Monster149,297950)
			SetChaLifeTime(Monster150,298000)
	     end
	  if random_hezi >= 7 then 
	     
	     return
	  end
end

function map_run_guildwar2( map )
   if five_seconds2 == 1 then
     second_five_seconds2 = second_five_seconds2 + 1
   end
   if second_five_seconds == 60 then
		Notice("Мини Священная война будет окончена через 10 минут ")
   end
   if second_five_seconds == 120 then
		Notice("Мини Священная война будет окончена через 5 минут ")
   end
   if second_five_seconds == 144 then
		Notice("Мини Священная война будет окончена через 3 минуты ")
   end
   if second_five_seconds == 168 then
		Notice("Мини Священная война будет окончена через 1 минуту ")
   end
   if second_five_seconds2 == 180
   then
   CloseMapCopy ( "guildwar2" )
   end
end

function map_copy_before_close_guildwar2( map_copy )
	local player_num = GetMapPlayer(map_copy)
	DealAllPlayerInMap(map_copy,"All_Goto2")
	player_num = GetMapPlayer(map_copy)
	local pn = player_num * 10
	for i=1, pn, 1 do
		if player_num > 0 then
			DealAllPlayerInMap(map_copy,"All_Goto2")
		end
	end
end

function map_copy_close_guildwar2 ( map_copy )
count_haijun2 = 0
count_haidao2 = 0
five_seconds2 = 0
second_five_seconds2 = 0
time_can_setmonster2 = 0
time_can_setnvsheng2 = 0
check_need_show2 = 0
create_boss_hj2 = 0
create_boss_hd2 = 0
GUILDWARCLOSETIME2 = 10800
di_haijunSide_JDNotice = 0
di_haijunSide_LCNotice = 0
di_haijunSide_DYKNotice =0
di_haidaoSide_JDNotice = 0
di_haidaoSide_LCNotice = 0
di_haidaoSide_DYKNotice= 0
ClearAllSubMapCha(map_copy)
end

function can_open_entry_guildwar2( map ) 
	return 1 
end 

function HJ_Goto2(role)
   
  local typRoleType = ChaIsBoat(role)			
	if  typRoleType == 1 then 						 
		if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
			MoveTo( role,  839, 3693,  "magicsea" )
		else
		    return
		end
	else															
		local character = TurnToCha(role)	
		if GetChaGuildID(character) <= 100 and GetChaGuildID(character) > 0 then
			  MoveTo( character,  910, 3571,  "magicsea" )
	        else
		      return
		end
	end
end

function HD_Goto2(role)
 local typRoleType = ChaIsBoat(role)			
	if  typRoleType == 1 then 						 
		if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
			   MoveTo( role,  1188, 674,  "darkblue" )
		else
		    return
		end
	else												
		 local character = TurnToCha(role)	
		 if GetChaGuildID(character) > 100 and GetChaGuildID(character) <= 200 then
			   MoveTo( character,  1271, 527,  "darkblue" )
		 else
		      return
		 end
	 end
end

function noside_Goto2(role)
local typRoleType = ChaIsBoat(role)			
		if  typRoleType == 1 then 						 
		    if GetChaGuildID(role) == 0 then
                       MoveTo( role,  2259, 2828,  "garner" )
		    else
		       return
		    end
		else															
		      local character = TurnToCha(role)	
			if GetChaGuildID(character) == 0 then
			  MoveTo( character,  2222, 2777,  "garner" )
			else
			  return
			end
	        end
end

function All_Goto2(role)
      local typRoleType = ChaIsBoat(role)			
		if  typRoleType == 1 then 						 
		    if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
                       MoveTo( role,  1188, 674,  "darkblue" )
		    else
		       MoveTo( role,  839, 3693,  "magicsea" )
		    end
		else															
		    local character = TurnToCha(role)	
		    if GetChaGuildID(character) > 100 and GetChaGuildID(character) <= 200 then
			MoveTo( character,  1271, 527,  "darkblue" )
		    else
			MoveTo( character,  910, 3571,  "magicsea" )
		    end
	        end
end

function Give_Three_QiYue2( role )
   local Item_CanGet = GetChaFreeBagGridNum ( role )
	   if Item_CanGet <= 0 then
		   GiveItemX ( role , 0 , 2383  , 3 , 4 )
	   else
		   GiveItem ( role , 0 , 2383  , 3 , 4 )
	   end
end