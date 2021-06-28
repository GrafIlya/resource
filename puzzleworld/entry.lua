--ґЛОДјюЦРЈ¬·ІКЗїЙДЬ±»¶аґОЦґРРµДєЇКэЈ¬єЇКэГы¶јТЄјУЙПµШНјГыЗ°ЧєЈ¬Изafter_destroy_entry_testpk
--ґЛОДјюГїРРЧоґуЧЦ·ыёцКэОЄ255Ј¬ИфУРТмТйЈ¬ЗлУліМРтМЅМЦ

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --ЙиЦГµШНјИлїЪКµМеµД±аєЕЈЁёГ±аєЕ¶ФУ¦УЪcharacterinfo.txtµДЛчТэЈ©

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --ґґЅЁё±±ѕ№ЬАн¶ФПуЈ¬ґЛєЇКэФЪУРПФКЅИлїЪµДµШНјЦР±ШРлµчУГЈ¬¶ФУЪТюКЅИлїЪµДµШНјЈЁИз¶УОйМфХЅЈ©ОЮТЄµчУГёГЅУїЪ

    local EntryName = " Подземелье Ангелов "
    SetMapEntryEventName( entry, EntryName )

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ИЎµШНјИлїЪµДО»ЦГРЕПўЈЁµШНјГыЈ¬Чш±кЈ¬Дї±кµШНјГыЈ©
    Notice("Объявление: В Аскароне ["..posx..","..posy.."] появился портал в [Подземелье Ангелов].")

end

function after_destroy_entry_leiting2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Объявление: По имеющейся информации, портал в [Подземелье Ангелов] исчез!") 

end

function after_player_login_leiting2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --Объявления об открытии портала в Мираж Громограда.
    ChaNotice(player_name, "Объявление: В Аскароне ["..posx..","..posy.."] появился портал в [Подземелье Ангелов].")

end










--УГУЪјмІвЅшИлМхјю
--·µ»ШЦµЈє0Ј¬І»ВъЧгЅшИлМхјюЎЈ1Ј¬іЙ№¦ЅшИлЎЈ
function check_can_enter_puzzleworld( role, copy_mgr )
	if Lv(role) >=100 then
			
		return 1
				
	else
		SystemNotice(role, "В Подземелье Ангелов могут войти лишь игроки 100 LvL ")
		return 0    
	end
end

function begin_enter_puzzleworld(role, copy_mgr) 
    
		SystemNotice(role,"Вы вошли в Подземелье Ангелов ") 
		MoveCity(role, "Demonic World")

end