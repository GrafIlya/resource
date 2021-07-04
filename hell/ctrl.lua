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

function get_map_entry_pos_hell()
	local POS_X=199
	local POS_Y=941
	return POS_X , POS_Y
end

function init_entry(map)
	SetMapEntryMapName(map, "jialebi") 
	SetMapEntryTime(map, "2007/1/19/21/0", "1/0/0", "0/1/0", "0/6/0") 
end

function after_enter_hell( role, map_copy )
	local cha_name = GetChaDefaultName( role )
	SystemNotice( role, "Таинственный голос: Вы вторглись во владения смерти... "..cha_name..", мои слуги безжалостно разорвут тебя в клочья!" )
end

function before_leave_hell( role )
end

function map_copy_run_hell( map_copy )
		if CheckMonsterDead ( AZRAEL[5] ) == 1 then
			if CRY[5]==0 then
				local Notice_all = "Саро: Это чувство...чувство побежденности, слабости...отчаяния. Скоро я восстановлюсь и отправлю вас дальше отчаяния!"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[5]=1
			end
		end
		if CheckMonsterDead ( AZRAEL[6] ) == 1 then
			if CRY[6]==0 then
				local Notice_all = "Кару: Нет, даже не смейте думать о том, что вы сильнее..."
				MapCopyNotice ( map_copy , Notice_all )
				CRY[6]=1
			end
		end
		if CheckMonsterDead ( AZRAEL[7] ) == 1 then
			if CRY[7]==0 then
				local Notice_all = "Аратур: Я побежден...мой повелитель будет в ярости..."
				MapCopyNotice ( map_copy , Notice_all )
				CRY[7]=1
			end
		end
		if CheckMonsterDead ( AZRAEL[8] ) == 1 then
			if CRY[8]==0 then
				local Notice_all = "Сакруа: Глупые смертные, Кара даровала нам бессмертие...мы отомстим вам!"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[8]=1
			end
		end	
	if CRY[5]==1 and CRY[6]==1 and CRY[7]==1 and CRY[8]==1 then
		if HELLCLOSETIME==300 then
			Notice ( "Таинственный голос: Даже не думайте, что смерть четырех моих слуг были напрасны. Земля из-под ваших ног исчезнет через 5 минут!")
		end
		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime ==NOTICETIME[i] then
				local Notice_all = "Внимание! Обрушение Абаддона 5 -8 через "..closetime.." секунд. Всем людям рекомендуется найти укрытие!"
				MapCopyNotice ( map_copy ,Notice_all )
			end
		end
		HELLCLOSETIME = HELLCLOSETIME-1
		if HELLCLOSETIME == 0 then
			HELLCLOSETIME = 300
			CRY[5]=0
			CRY[6]=0
			CRY[7]=0
			CRY[8]=0
			CloseMapEntry ( "hell" )
			CloseMapCopy ( "hell" )
		end
	end
end

function map_copy_close_hell ( map_copy )
	HELLCLOSETIME = 300
	CRY[5]=0
	CRY[6]=0
	CRY[7]=0
	CRY[8]=0
end
	
function can_open_entry_hell( map ) 
	local Now_Week = GetNowWeek()
	if Now_Week >=5 and Now_Week < 7 then
		return 1
	end
		return 0
end 