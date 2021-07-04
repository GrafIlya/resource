print( "‡ £àã§ª  ª àâë: \"Œ £¨ç¥áª¨© Žª¥ ­\" ­ ç « áì!" )
print( "‡ £àã§ª  Ctrl.lua" )

function map_run_magicsea( map )
	local now_week= os.date("%w")
	local now_hour= os.date("%H")
	local now_miniute= os.date("%M")
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)
	now_miniute= tonumber(now_miniute)
	local CheckDateNum = now_hour*100 +now_miniute
	if now_week==1 then
		if CheckDateNum>=1800 and CheckDateNum<1830 and CHURCHSTAR_FLAG == 0 then
			StartAuction(1, "Àóêöèîí ", 1, 1000000, 100000)
			CHURCHSTAR_FLAG = 1
		end
		if CheckDateNum>=1830 and CheckDateNum<1840 and CHURCHSTAR_FLAG == 1 then
			EndAuction(1) 
			CHURCHSTAR_FLAG = 0
		end
		if CheckDateNum>=1840 and CheckDateNum<1910 and CHURCHSTAR_FLAG == 0 then
			StartAuction(1, "Àóêöèîí ", 1, 1000000, 100000)
			CHURCHSTAR_FLAG = 1
		end
		if CheckDateNum>=1910 and CheckDateNum<1920 and CHURCHSTAR_FLAG == 1 then
			EndAuction(1)
			CHURCHSTAR_FLAG = 0
		end
		if CheckDateNum>=1920 and CheckDateNum<1950 and CHURCHSTAR_FLAG == 0 then
			StartAuction(1, "Àóêöèîí ", 1, 1000000, 100000)
			CHURCHSTAR_FLAG = 1
		end
		if CheckDateNum>=1950 and CheckDateNum<2000 and CHURCHSTAR_FLAG == 1 then
			EndAuction(1)
			CHURCHSTAR_FLAG = 0
		end
		if CheckDateNum>=2000 and CheckDateNum<2030 and CHURCHSTAR_FLAG == 0 then
			StartAuction(1, "Àóêöèîí ", 1, 1000000, 100000)
			CHURCHSTAR_FLAG = 1
		end
		if CheckDateNum>=2030  and CHURCHSTAR_FLAG == 1 then
			EndAuction(1)
			CHURCHSTAR_FLAG = 0
		end
	end
end

function after_enter_magicsea( role, map_copy )
end

function before_leave_magicsea( role )
end