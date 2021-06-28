--іЋќƒЉю÷–£ђЈ≤ «њ…ƒ№±їґаіќ÷і––µƒЇѓ э£ђЇѓ э√ыґЉ“™Љ”…ѕµЎЌЉ√ы«∞„Ї

function config(map)
    MapCanSavePos(map, 0) --…и÷√µЎЌЉ «Јс±£іжљ«…Ђќї÷√£®µЎЌЉ£ђ„ш±к£ђЈљѕт£©£ђіЋ…и÷√”∞ѕмЄ√µЎЌЉµƒЋщ”–Є±±Њ
    --MapCanPK(map, 0) --…и÷√µЎЌЉ «Јсњ…“‘PK£ђіЋ…и÷√”∞ѕмЄ√µЎЌЉµƒЋщ”–Є±±Њ
    MapCopyNum(map, 1) --…и÷√µЎЌЉµƒЄ±±Њ эƒњ£ђ»зєы≤їµч”√Є√”пЊд£ђ‘т є”√ƒђ»ѕ÷µ1
    SingleMapCopyPlyNum(map, 300)   --…и÷√“їЄцЄ±±ЊµƒЌжЉ“ э
	MapCanTeam(map , 1)
    MapType ( map , 3 )
end


function get_map_entry_pos_leiting2()   --ћест?открыт? портал?

	local POS_X=2160
	local POS_Y=2782
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner") --–егион по€влен? портал??ћира?Ћедыни
    SetMapEntryTime(map, "2010/10/18/0/0", "0/3/0", "0/0/30", "0/0/50") --¬рем€ по€влен? портал??ћира?Ћедыни

end


