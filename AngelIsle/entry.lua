--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --设置地图入口实体的编号（该编号对应于characterinfo.txt的索引）

end 

function after_create_entry(entry) 
    local EntryName = " 惕� 理沐腩� "
    SetMapEntryEventName( entry, EntryName )
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --创建副本管理对象，此函数在有显式入口的地图中必须调用，对于隐式入口的地图（如队伍挑战）无要调用该接口

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    Notice("吾��怆屙桢: 杨汶囫眍 耦钺龛��, 铌铍� 礼赅痤磬 镱 觐痄桧囹囔 ["..posx..","..posy.."] 铗牮�� 镱痱嚯 � 惕� 理沐腩�. 橡钼屦� �!") --通知本组服务器的所有玩家

end

function after_destroy_entry_AngelIsle(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("吾��怆屙桢: 杨汶囫眍 耦钺龛��, 镱痱嚯 � 惕� 理沐腩� 桉麇�. 骂琊噤箝蝈顸!") 

end

function after_player_login_AngelIsle(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    ChaNotice(player_name, "吾��怆屙桢: 杨汶囫眍 耦钺龛��, 铌铍� 礼赅痤磬 镱 觐痄桧囹囔 ["..posx..","..posy.."] 铗牮�� 镱痱嚯 � 惕� 理沐腩�. 橡钼屦� �!") --通知本组服务器的所有玩家

end









--用于检测进入条件
--返回值：0，不满足进入条件。1，成功进入。
function check_can_enter_AngelIsle( role, copy_mgr )
	if Lv(role) >=50 then
			
		return 1
				
	else
		SystemNotice(role, "\210\238\235\252\234\238 \239\229\240\241\238\237\224\230\232 \225\238\235\252\248\229 50 \243\240\238\226\237\255 \236\238\227\243\242 \226\245\238\228\232\242\252 \226 \204\232\240 \196\229\236\238\237\238\226")
		return 0    
	end
end

function begin_enter_AngelIsle(role, copy_mgr) 
    
		SystemNotice(role,"\194\251 \226\238\248\235\232 \226 [\204\232\240 \196\229\236\238\237\238\226]") 
		MoveCity(role, "AngelIsle")

end
