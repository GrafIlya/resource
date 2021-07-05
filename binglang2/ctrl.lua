function config(map)
    MapCanSavePos(map, 0)		-- 1 = Разрешить игрокам сохранить respaw / / 0 = Не позволяет игрокам сохранить respaw
    MapCanPK(map, 1) 
    MapCopyNum(map, 1)			-- 1 Копия карты будет генерироваться GameServer
    SingleMapCopyPlyNum(map, 300)	-- 300 Игроки могут войти в карты
    MapCanTeam(map , 1)			-- 1 = позволяют игрокам создавать партии / / 0 = Не позволяют игрокам создавать участник
    MapType ( map , 3 )			-- 0 = ПвП офф // 1 = ПвП офф // 2 = ПвП вкл. ( Нельзя убить согильдийцев и сопартийцев ) // 3 = ПвП вкл.( Можно убить всех, кроме сопартийцев ) // 4 = ПвП вкл. ( Нельзя убить согильдийцев и сопартийцев )        
end


function get_map_entry_pos_binglang2()   --Координаты появляения портала в Мираж Ледыни

	local POS_X=2178
	local POS_Y=2805
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner") --Регион появления портала в Мираж Ледыни
    SetMapEntryTime(map, "2010/7/28/0/0", "0/2/30", "0/1/0", "0/1/0") --Время появления портала в Мираж Ледыни

end


function can_open_entry_binglang2( map ) 
--	local time = GetTickCount ( ) 
	local Now_Time = GetNowTime()
	if Now_Time == 0 or Now_Time == 6 or Now_Time == 12 or Now_Time == 18 then
		return 1
	else
		return 1
	end

end 

function map_run_binglang2( map )

end

function map_copy_run_binglang2( map_copy )
end

function map_copy_run_special_binglang2( map_copy )

end

function after_enter_binglang2( role , map_copy )

end

function before_leave_binglang2( role )

end


function map_copy_before_close_binglang2( map_copy )

end

function map_copy_close_binglang2( map_copy )
end