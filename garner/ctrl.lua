--´ËÎÄ¼þÖÐ£¬·²ÊÇ¿ÉÄÜ±»¶à´ÎÖ´ÐÐµÄº¯Êý£¬º¯ÊýÃû¶¼Òª¼ÓÉÏµØÍ¼ÃûÇ°×º

function config(map)

end


function get_map_entry_pos_garner()   --ÉèÖÃÈë¿ÚµÄÎ»ÖÃµÄ×ø±ê£¨×ø±ê£¨Ã×£©£©

end

function init_entry(map)

end

function after_enter_garner( role , map_copy )
end

function before_leave_garner( role )
end

function map_copy_first_run_garner( map_copy )

end

function map_copy_run_garner( map_copy )
end

--Ã¿5ÃëÖ´ÐÐÒ»´ÎµÄ

function map_run_garner( map )
end

--µØÍ¼¹Ø±ÕÊ±Ö´ÐÐ
function map_copy_close_garner ( map_copy )
end
		
--µØÍ¼¿ª¹ØÅÐ¶Ï¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª

function can_open_entry_garner( map ) 
end 

function config(map)
	MapCanSavePos(map, 1) --Ïîñëå ðåëîãà èãðîêè îñòàþòñÿ íà êàðòå (1 - âêë.; 0- âûêë.)
	MapCanPK(map, 1) --Èãðîêè ìîãóò äðóã äðóãà àòàêîâàòü PvP (1 - âêë.;0- âûêë.)
	MapCanTeam(map , 1) --Ìîæíî ñîçäàâàòü ïàòè (1 - âêë.; 0- âûêë.)
	MapType ( map , 3 ) --Òèï êàðòû (3 - Õàîñ; 4 - ÔC, ÄÑ, ÄÂ)
	MapCanStall(map , 1) --Ìîæíî ñòàâèòü ëàðüêè (1 - âêë.; 0- âûêë.)
end

	local now_week= os.date("%w")
	local now_hour= os.date("%H")
	local now_miniute= os.date("%M")
	now_week= tonumber(now_week)	    
	now_hour= tonumber(now_hour)		
	now_miniute= tonumber(now_miniute)
	local CheckDateNum = now_hour*100 +now_miniute

	if now_week==1 then
		if CheckDateNum>=1800 and CheckDateNum<1830 and CHURCHSTAR_FLAG == 0 then
			StartAuction(1, "Auction", 1, 1000000, 1000000)
			CHURCHSTAR_FLAG = 1
		end
		if CheckDateNum>=1830 and CheckDateNum<1840 and CHURCHSTAR_FLAG == 1 then
			EndAuction(1)
			CHURCHSTAR_FLAG = 0
		end
		if CheckDateNum>=1840 and CheckDateNum<1910 and CHURCHSTAR_FLAG == 0 then
			StartAuction(1, "Auction", 1, 1000000, 1000000)
			CHURCHSTAR_FLAG = 1
		end
		if CheckDateNum>=1910 and CheckDateNum<1920 and CHURCHSTAR_FLAG == 1 then
			EndAuction(1)
			CHURCHSTAR_FLAG = 0
		end
		if CheckDateNum>=1920 and CheckDateNum<1950 and CHURCHSTAR_FLAG == 0 then
			StartAuction(1, "Auction", 1, 1000000, 1000000)
			
			CHURCHSTAR_FLAG = 1
		end
		if CheckDateNum>=1950 and CheckDateNum<2000 and CHURCHSTAR_FLAG == 1 then
			EndAuction(1)
			CHURCHSTAR_FLAG = 0
		end

		if CheckDateNum>=2000 and CheckDateNum<2030 and CHURCHSTAR_FLAG == 0 then
			StartAuction(1, "Auction", 1, 1000000, 1000000)
			CHURCHSTAR_FLAG = 1
		end
		if CheckDateNum>=2030  and CHURCHSTAR_FLAG == 1 then
			EndAuction(1)
			CHURCHSTAR_FLAG = 0
		end
	end