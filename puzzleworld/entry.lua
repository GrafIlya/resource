--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --设置地图入口实体的编号（该编号对应于characterinfo.txt的索引）

end 

function after_create_entry(entry) 


end

function after_destroy_entry_leiting2(entry)


end

function after_player_login_leiting2(entry, player_name)
    

end










--用于检测进入条件
--返回值：0，不满足进入条件。1，成功进入。
function check_can_enter_puzzleworld( role, copy_mgr )
	if Lv(role) >=100 then
			
		return 1
				
	else
		SystemNotice(role, "� 青蝈��眄 镱溏屐睇� 扈� 祛泱� 忸轵� 腓 桡痤觇 100 LvL ")
		return 0    
	end
end

function begin_enter_puzzleworld(role, copy_mgr) 
    
		SystemNotice(role,"蔓 忸� � 青蝈��眄 镱溏屐睇� 扈� ") 
		MoveCity(role, "Demonic World")

end