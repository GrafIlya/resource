function config(map)
    MapCanSavePos(map, 1) 
    MapCanPK(map, 1) 
    MapCopyNum(map, 1) 
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 3 )

end


function get_map_entry_pos_garner() 

end

function init_entry(map)

end

function after_enter_garner( role , map_copy )
end

function before_leave_garner( role )
end

function map_copy_first_run_garner( map_copy )

end

function map_copy_run_garner( map_copy )
		for i,v in pairs(MonsterSiege.Conf.Event) do
			if (v.Active == true) then
				MonsterSiege.Spawn(map_copy, i, v)
			end
		end	
end

function map_run_garner( map )
	--------------------------
	-- Выдача призов за топ --
	--------------------------
	RankByDB.Timer()
end

function map_copy_close_garner ( map_copy )
end

function map_copy_run_special_garner ( map_copy )
end
function can_open_entry_garner( map ) 
end 