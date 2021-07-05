print( "* Loading Util for maps.lua" )


------------------------------------
--BOSS Dungeon, required functions--
------------------------------------
DealAllChaInCopy						= DealAllChaInCopy or function(Map, f, ...)
	local PlayerNum 						= GetMapCopyPlayerNum(Map)
	local ps 							= {}
	local i 								= 1
	BeginGetMapCopyPlayerCha(Map)
	for i 								= 1, PlayerNum, 1 do
		ps[i] 							= GetMapCopyNextPlayerCha(Map)
	end
	for i 								= 1, PlayerNum, 1 do
		if ps[i] ~= 0 and ps[i] ~= nil then
			_G[f](ps[i], unpack(arg))
		end
	end	
end
PopupNotice 							= PopupNotice or function(Player, Message)
	local Packet 						= GetPacket() 
	WriteCmd(Packet, 503)
	WriteString(Packet, Message)
	SendPacket(Player, Packet) 
end 
ToClockFormat							= toclock or function(Second)
	local Num 							= tonumber(sec)
	if(Num == 0) then
		return "00:00:00"
	else
		now_hour 						= string.format("%02.f",math.floor(Num / 3600 ))
		now_minute 						= string.format("%02.f",math.floor(Num / 60 - (now_hour*60)))
		now_second 						= string.format("%02.f",math.floor(Num - now_hour*3600 - now_minute*60))
		return tonumber(now_hour).." Hour "..tonumber(now_minute).." Minute "..tonumber(now_second).." Second"
	end
end

string.wrap = string.wrap or function(str, j, space)
	j = j or 42;
	space = space or '_';
	local h = 1
	local s = ''
	local line = {}
	string.gsub(str, '(%s*)()(%S+)()',
		function(sp, st, word, fi)
			if(fi - h) > j then
				h = st
				table.insert(line, s)
				s = word
			else
				s = s..sp..word
			end
		end)
	if s ~= '' then table.insert(line, s) end
	local z = ''
	for i,v in pairs(line) do
		if i ~= table.getn(line) then v = v..space else v = v end
		z = z..v
	end
	return z
end

AdjustTextSpace = AdjustTextSpace or function(Text, Spaces, End)
	local Count = math.floor((Spaces - string.len(Text)) * 0.5)
	local Message = ""
	for C = 1, Count, 1 do
		Message = Message.." "
	end
	Message = Message..Text
	Count = math.floor(Spaces - string.len(Message))
	for C = 1, Count, 1 do
		Message = Message.." "
	end
	if End ~= nil then
		Message = Message..End
	end
	return Message
end

getYearBeginDayOfWeek = getYearBeginDayOfWeek or function(tm)
	local yearBegin = os.time{year=os.date("*t",tm).year,month=1,day=1}
	local yearBeginDayOfWeek = tonumber(os.date("%w",yearBegin))
	if (yearBeginDayOfWeek == 0) then
		yearBeginDayOfWeek = 7
	end
	return yearBeginDayOfWeek
end

getDayAdd = getDayAdd or function(tm)
	local yearBeginDayOfWeek = getYearBeginDayOfWeek(tm)
	local dayAdd = 0
	if (yearBeginDayOfWeek < 5) then
		dayAdd = (yearBeginDayOfWeek - 2)
	else 
		dayAdd = (yearBeginDayOfWeek - 9)
	end  
	return dayAdd
end

getWeekNumberOfYear = getWeekNumberOfYear or function()
	local tm = os.time{year=tonumber(os.date("%Y")),month=tonumber(os.date("%m")),day=tonumber(os.date("%d"))}
	local dayOfYear = os.date("%j",tm)
	local dayAdd = getDayAdd(tm)
	local dayOfYearCorrected = dayOfYear + dayAdd
	if (dayOfYearCorrected < 0) then
		dayAdd = getDayAdd(os.time{year=os.date("*t",tm).year-1,month=1,day=1})
		dayOfYear = dayOfYear + os.date("%j", (os.time{year=os.date("*t",tm).year-1,month=12,day=31}))
		dayOfYearCorrected = dayOfYear + dayAdd
	end  
	local weekNum = math.floor((dayOfYearCorrected) / 7) + 1
	if ((dayOfYearCorrected > 0) and weekNum == 53) then
		if (getYearBeginDayOfWeek(os.time{year=os.date("*t",tm).year+1,month=1,day=1}) < 5 ) then
			weekNum = 1
		end  
	end  
	return weekNum
end

GetPlayerKey = GetPlayerKey or function(Player)
	local hex, name = '', GetChaDefaultName(Player)
	while string.len(name) > 0 do
		local hb = string.format("%X", string.byte(name, 1, 1))
		if string.len(hb) < 2 then
			hb = '0' .. hb
		end
		hex = hex .. hb
		name = string.sub(name, 2)
	end
	return hex
end