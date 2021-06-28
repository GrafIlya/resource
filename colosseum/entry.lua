function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1) 
end

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
    local EntryName = "тестовый остров "
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Внимание: По координатам ["..posx..","..posy.."] открылся тестовый остров .Будьте осторожны ") 

end

function after_destroy_entry_colosseum(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Внимание: Портал в тестовый остров закрылся,приходите позже ") 

end

function after_player_login_colosseum(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ChaNotice(player_name, "Внимание: По координатам ["..posx..","..posy.."] открылся портал в тестовый остров.Будьте осторожны ") 

end


