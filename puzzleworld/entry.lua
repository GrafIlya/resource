--іЋќƒЉю÷–£ђЈ≤ «њ…ƒ№±їґаіќ÷і––µƒЇѓ э£ђЇѓ э√ыґЉ“™Љ”…ѕµЎЌЉ√ы«∞„Ї£ђ»зafter_destroy_entry_testpk
--іЋќƒЉю√њ––„оіу„÷ЈыЄц эќ™255£ђ»ф”–“м“й£ђ«л”л≥ћ–тћљћ÷

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --…и÷√µЎЌЉ»лњЏ µћеµƒ±аЇ≈£®Є√±аЇ≈ґ‘”¶”Џcharacterinfo.txtµƒЋч“э£©

end 

function after_create_entry(entry) 


end

function after_destroy_entry_leiting2(entry)


end

function after_player_login_leiting2(entry, player_name)
    

end










--”√”ЏЉм≤вљш»лћхЉю
--ЈµїЎ÷µ£Ї0£ђ≤ї¬ъ„гљш»лћхЉю°£1£ђ≥…є¶љш»л°£
function check_can_enter_puzzleworld( role, copy_mgr )
	if Lv(role) >=100 then
			
		return 1
				
	else
		SystemNotice(role, "¬ «атер€нный подземный мир могут войти лишь игроки 100 LvL ")
		return 0    
	end
end

function begin_enter_puzzleworld(role, copy_mgr) 
    
		SystemNotice(role,"¬ы вошли в «атер€нный подземный мир ") 
		MoveCity(role, "Demonic World")

end