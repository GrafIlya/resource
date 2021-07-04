print( "‡ Јаг§Є  Ctrl.lua" )

function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
    MapCopyNum(map, 1)
    MapCopyStartType(map, 1)
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end

function get_map_entry_pos_hell5()
	local POS_X=55
	local POS_Y=33
	return POS_X , POS_Y
end

function init_entry(map)
    SetMapEntryMapName(map, "hell4")
    SetMapEntryTime(map, "2007/1/20/0/30", "1/0/0", "0/2/0", "0/2/30")
end

function after_enter_hell5( role, map_copy )
	local cha_name = GetChaDefaultName( role )
	SystemNotice( role, ""..cha_name..", иди ко мне... Отсюда ты уже никогда не вернешься живым..." )
end

function before_leave_hell5( role )
end

function map_copy_run_hell5( map_copy )
	local hp = GetChaAttr( AZRAEL[19] , ATTR_HP ) 
	local mxhp = GetChaAttr( AZRAEL[19] , ATTR_MXHP )
	local percent = hp/mxhp
	if percent < 0.9 and SPECIALSKILL[19]==0 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	979, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"Кара: Давай, устрой им иллюзию победы!")
	end
	if percent < 0.8 and SPECIALSKILL[19]==1 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	980, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"Кара: Огненный демон, сожги неверных!")
	end
	if percent < 0.7 and SPECIALSKILL[19]==2 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	981, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"Кара: Злобное отродье, покажи им силу смерти!")
	end
	if percent < 0.6 and SPECIALSKILL[19]==3 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	982, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"Кара: Истинная защита! Тайран, покажи им свою мощь!")
	end
	if percent < 0.5 and SPECIALSKILL[19]==4 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	983, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"Кара: Феникс, восстань из пепла и преврати этих неверных в огненный пепел!")
	end
	if percent < 0.4 and SPECIALSKILL[19]==5 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	984, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"Кара: Отчаяние, устрой им настоящую битву со смертью!")
	end
	if percent < 0.3 and SPECIALSKILL[19]==6 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	985, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"Кара: Дракан, вот эти смертные. Отомсти им за себя и своих братьев!")
	end
	if percent < 0.2 and SPECIALSKILL[19]==7 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	986, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"Кара: Тидаль, силы почти покинули меня...")
	end
	if percent < 0.1 and SPECIALSKILL[19]==8 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	987, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"Кара: Хардин...ты моя последняя надежда...")
	end
	if CheckMonsterDead ( AZRAEL[19] ) == 1 then
		if CRY[19]==0 then
			local Notice_all = "Кара: Смертные, вы победили меня! Но я вернусь...и тогда... Хаха!"
			Notice ( Notice_all )
			CRY[19]=1
			BOSSXYSJ[988] = 4	
			BOSSSJSJ[988] = 4	
			BOSSTJSJ[988] = 4	
			BOSSXZSJ[988] = 4	
			BOSSAYSJ[988] = 4
		end
	end
	if CRY[19]==1  then
		if HELLCLOSETIME==300 then
			MapCopyNotice ( map ,"Богиня: Я не могу поверить. Вы спасли мир от моей злой копии.")
			MapCopyNotice ( map ,"Богиня: Теперь с этим покончено. Спасибо вам.")
			MapCopyNotice ( map ,"Богиня: Путник, я очень благодарна вам за вашу победу. Это место исчезнет через пару минут.")
			HELLCLOSETIME = HELLCLOSETIME - 240
		end
		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime == NOTICETIME[i] then
				local Notice_all = "Внимание! Вечный Абаддон обрушится через "..closetime.." секунд."
				MapCopyNotice ( map_copy , Notice_all )
			end
		end
		HELLCLOSETIME = HELLCLOSETIME-1
		if HELLCLOSETIME == 0 then
			HELLCLOSETIME = 300
			CRY[19]=0
			SPECIALSKILL[19] = 0
			CloseMapEntry ( "hell5" )
			CloseMapCopy ( "hell5" )
		end
	end
end

function map_copy_close_hell5 ( map_copy )
	HELLCLOSETIME = 300
	CRY[19]=0
	SPECIALSKILL[19] = 0
end

function can_open_entry_hell5( map ) 
	local Now_Week = GetNowWeek()
	if Now_Week >5 and Now_Week < 7 then
		return 1
	end
	if Now_Week == 0 then
		return 1
	end
		return 0
end 