--------------------------------------------------------------------------
--									--
--									--
--				ctrl.lua				--
--			made by Prince				--
--									--
--------------------------------------------------------------------------
print( "Loading zonagg Ctrl.lua" )

function config(map)
	MapCanSavePos(map, 0) 					-- Возможность сохранять позицию персонажа на карте (1 - да, 0 - нет)
	MapCanPK(map, 1) 						-- Возможность атаковать других персонажей (1 - да, 0 - нет)
	MapCanTeam( map, 1 )					-- Возможность создавать отряды (1 - да, 0 - нет)
	MapType ( map , 4 )						-- Тип карты
	MapCanStall(map , 1)					-- Возможность торговать (1 - да, 0 - нет)
	SingleMapCopyPlyNum(map, 300)  				-- Количество игроков на карте

end


function get_map_entry_pos_zonagg() 

        local POS_X=2244
	local POS_Y=2853

	return POS_X , POS_Y

end

end

function init_entry(map)

end

function after_enter_zonagg( role , map_copy )
end

function before_leave_zonagg( role )
end
