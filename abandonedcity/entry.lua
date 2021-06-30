
function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
	--local EntryName = "Затерянный город"
	local EntryName = "\199\224\242\229\240\255\237\237\251\233 \227\238\240\238\228"
	SetMapEntryEventName( entry, EntryName )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
end

function after_destroy_entry_abandonedcity(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("В Москве в ["..posx..","..posy.."] открыт портал в [Затерянное очко].") 
    SystemNotice("\194 \204\238\241\234\226\229 \226 ["..posx..","..posy.."] \238\242\234\240\251\242 \239\238\240\242\224\235 \226 [\199\224\242\229\240\255\237\237\238\229 \238\247\234\238].") 

end

function after_player_login_abandonedcity(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --ChaNotice(player_name, "В Москве в ["..posx..","..posy.."] открыт портал в [Затерянное очко].") 
    SystemNotice(player_name, "\194 \204\238\241\234\226\229 \226 ["..posx..","..posy.."] \238\242\234\240\251\242 \239\238\240\242\224\235 \226 [\199\224\242\229\240\255\237\237\238\229 \238\247\234\238].") 

end

function check_can_enter_abandonedcity(role, copy_mgr)

	local Cha = TurnToCha(role)
  
	if Lv(Cha) >=125 and Lv(Cha) <=250 then
	
		local Num
		Num = CheckBagItem(Cha, 3457)
        	
		if Num >= 2 then
			return 1
	
		else
			--SystemNotice(role, "Чтобы войти, вам нужно 2-е Руны Кэль!")
			PopupNotice(role, "\215\242\238\225\251 \226\238\233\242\232, \226\224\236 \237\243\230\237\238 2-\229 \208\243\237\251 \202\253\235\252!")
			return 0
		end
		
	else
		--SystemNotice(role, "Персонаж должен быть от 125 до 250 уровня!")
		PopupNotice(role, "\207\229\240\241\238\237\224\230 \228\238\235\230\229\237 \225\251\242\252 \238\242 125 \228\238 250 \243\240\238\226\237\255!")
		return 0    
	end
end



function begin_enter_abandonedcity(role, copy_mgr) 
	local Cha = TurnToCha(role)	
	local Dbag = 0
	Dbag = DelBagItem(Cha, 3457, 2)
	if Dbag == 1 then
		SystemNotice(role,"Входим в Затерянное очко") 
		MoveCity(role, "Forsaken City")
	else
		--SystemNotice(role, "Вам не хватает 2 Руны Кэль для входа!")
		PopupNotice(role, "\215\242\238\225\251 \226\238\233\242\232, \226\224\236 \237\243\230\237\238 2-\229 \208\243\237\251 \202\253\235\252!")
	end
end