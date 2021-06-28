--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1) --设置地图入口实体的编号（该编号对应于characterinfo.txt的索引）

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --创建副本管理对象，此函数在有显式入口的地图中必须调用，对于隐式入口的地图（如队伍挑战）无要调用该接口
    local EntryName = "Death Match"
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    Notice("Announcement: According to reports, near Argent at ["..posx..","..posy.."] appears a portal to Death Match. Please check it out Pussies.") --通知本组服务器的所有玩家

end


function after_destroy_entry_deathmatch(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Announcement: According to reports, portal to [DeathMatch] has vanished. Check announcement for more details. Enjoy!") 

end

function after_player_login_deathmatch(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    ChaNotice(player_name, "Announcement: According to reports, near Argent at ["..posx..","..posy.."] appears a portal to DeathMatch. Please check it out.") --通知本组服务器的所有玩家

end

function check_can_enter_deathmatch( role, copy_mgr )

	--if Lv(role) < 99 then
	--SystemNotice(role, "You must be level 100 to enter DeathMatch")
	--	return 0    
	--end

end

function begin_enter_deathmatch(role, copy_mgr)
	local	Money_Have = GetChaAttr ( role , ATTR_GD )
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*50
	local	Money_Now = Money_Have - Money_Need
	SetChaAttrI( role , ATTR_GD , Money_Now )
	DelCredit(role,0)
		SystemNotice(role,"Enters [deathmatch] Cost "..Money_Need..", let the pwning begin.") 
		MoveCity(role, "deathmatch")
Money_all = Money_all + Money_Need * 0.8
end
