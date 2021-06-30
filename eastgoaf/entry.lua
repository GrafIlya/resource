--ґЛОДјюЦРЈ¬·ІКЗїЙДЬ±»¶аґОЦґРРµДєЇКэЈ¬єЇКэГы¶јТЄјУЙПµШНјГыЗ°ЧєЈ¬Изafter_destroy_entry_testpk
--ґЛОДјюГїРРЧоґуЧЦ·ыёцКэОЄ255Ј¬ИфУРТмТйЈ¬ЗлУліМРтМЅМЦ

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --ЙиЦГµШНјИлїЪКµМеµД±аєЕЈЁёГ±аєЕ¶ФУ¦УЪcharacterinfo.txtµДЛчТэЈ©

end 

function after_create_entry(entry) 
    local EntryName = " Логово - Марса "
    SetMapEntryEventName( entry, EntryName )
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --ґґЅЁё±±ѕ№ЬАн¶ФПуЈ¬ґЛєЇКэФЪУРПФКЅИлїЪµДµШНјЦР±ШРлµчУГЈ¬¶ФУЪТюКЅИлїЪµДµШНјЈЁИз¶УОйМфХЅЈ©ОЮТЄµчУГёГЅУїЪ

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ИЎµШНјИлїЪµДО»ЦГРЕПўЈЁµШНјГыЈ¬Чш±кЈ¬Дї±кµШНјГыЈ©
    Notice("Объявление: Согласно сообщениям, около Аскарона по кординатам ["..posx..","..posy.."] открылся портал в Логово - Марса. Проверьте это!") --НЁЦЄ±ѕЧй·юОсЖчµДЛщУРНжјТ

end

function after_destroy_entry_eastgoaf(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Объявление: Согласно сообщениям, портал в Логово - Марса исчез. Возрадуйтесь!") 

end

function after_player_login_eastgoaf(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ИЎµШНјИлїЪµДО»ЦГРЕПўЈЁµШНјГыЈ¬Чш±кЈ¬Дї±кµШНјГыЈ©
    ChaNotice(player_name, "Объявление: Согласно сообщениям, около Аскарона по кординатам ["..posx..","..posy.."] открылся портал в Логово - Марса. Проверьте это!") --НЁЦЄ±ѕЧй·юОсЖчµДЛщУРНжјТ

end









--УГУЪјмІвЅшИлМхјю
--·µ»ШЦµЈє0Ј¬І»ВъЧгЅшИлМхјюЎЈ1Ј¬іЙ№¦ЅшИлЎЈ
function check_can_enter_eastgoaf( role, copy_mgr )
	
end

function begin_enter_eastgoaf(role, copy_mgr) 
    
		SystemNotice(role," вы вошли в [Логово - Марса]!") 
		MoveCity(role, "Logovo")

end
