function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "Glacier Armageddon"
    SetMapEntryEventName( entry, EntryName )

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("Announcement: According to reports, near Lower Icicle Castle at ["..posx..","..posy.."] appears a portal to Glacier Armageddon. Please check it out.")

end

function after_destroy_entry_glacierpk(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Announcement: According to reports, portal to [Glacier Armageddon] has vanished. Check announcement for more details. Enjoy!") 

end

function after_player_login_glacierpk(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ChaNotice(player_name, "Announcement: According to reports, Lower Icicle Castle at ["..posx..","..posy.."] appears a portal to Glacier Armageddon. Please check it out.")

end








function begin_enter_glacierpk(role, copy_mgr) 

		SystemNotice(role,"Entering [Glacier Armageddon]") 
		MoveCity(role, "Glacier Armageddon")

end