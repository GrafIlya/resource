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

function get_map_entry_pos_hell2()   
	local POS_X=72
	local POS_Y=179
	return POS_X , POS_Y
end

function init_entry(map)
    SetMapEntryMapName(map, "hell") 
    SetMapEntryTime(map, "2007/1/19/21/30", "1/0/0", "0/0/30", "0/5/30") 
end

function after_enter_hell2( role , map_copy )
local cha_name=GetChaDefaultName(role)
	SystemNotice ( role, "Таинственный голос: Неплохо, "..cha_name..".Теперь перед тобой водная преграда и следующий мой слуга точно покончит с тобой." ) 
end

function before_leave_hell2( role )
end

function map_copy_run_hell2( map_copy )
			
	if CheckMonsterDead ( AZRAEL[9] ) == 1 then
		
		if CRY[9]==0 then
			local Notice_all = "Куро: Ооо, нет...ну ничего, ты примешь свою смерть уже скоро..."
			MapCopyNotice ( map_copy , Notice_all )
			CRY[9]=1
		end
	end
		
	if CRY[9]==1  then
		
		if HELLCLOSETIME==300 then
			Notice ("Таинственный голос: Неплохо, войны. Это был мой последний слуга. Ладно, у вас есть 4 минуты, чтобы пройти дальше.")
			HELLCLOSETIME = HELLCLOSETIME - 60
		end
		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime ==NOTICETIME[i] then
				local Notice_all = "Внимание! Обрушение Абаддона 9 произойдет через "..closetime.." секунд. Всем, кто находится в море, рекомендуется выйти на берег и пройти дальше."
				MapCopyNotice ( map_copy ,Notice_all )
			end
		end
		HELLCLOSETIME = HELLCLOSETIME-1
		if HELLCLOSETIME == 0 then
			HELLCLOSETIME = 300
			CRY[9]=0
			CloseMapEntry ( "hell2" )
			CloseMapCopy ( "hell2" )
		end
	end
end

function map_copy_close_hell2 ( map_copy )
	HELLCLOSETIME = 300
	CRY[9]=0
end

function can_open_entry_hell2( map ) 
	local Now_Week = GetNowWeek()
	if Now_Week >=5 and Now_Week < 7 then
		return 1
	end
		return 0
end 