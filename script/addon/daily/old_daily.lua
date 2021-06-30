print( "* Loading Dayli Prize" )
ARR_DAILY = {
	[1] = {id = 1, count = 1},	-- 11221	Зелье легкости (не передается)
	[2] = {id = 2, count = 1},	-- 11220	Воздушный пирог (не передается)
	[3] = {id = 3, count = 1},	-- 11222	Лист с Дерева удачи (не передается)
	[4] = {id = 4, count = 1},	-- 11221	Зелье легкости (не передается)
	[5] = {id = 5, count = 1},	-- 11220	Воздушный пирог (не передается)
	[6] = {id = 6, count = 1},	-- 10681	Благословляющее зелье (не передается)
	[7] = {id = 7, count = 1}	-- 11223	VIP свиток (не передается)
}

function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

function CheckGiftDaily(role)
	-- ID день последнего приза, id приза
	local day__now		= math.floor(GetNowTime() / 60 / 60 / 24)
	local day__old		= 0
	local gift_daily	= 0
	
	local cha_id	= GetRoleID(role)
	if (file_exists("script/addon/daily/cache_deli/"..cha_id..".dat") == false) then
		local file_write = io.open(GetResPath("script/addon/daily/cache_deli/")..cha_id..".dat", "w+")
		file_write:write("0,0")
		file_write:close()
	else
		local file_reade			= io.open("script/addon/daily/cache_deli/"..cha_id..".dat", "r")
		local file_reade__string	= tostring((file_reade:read("*all")))
		file_reade:close()
		
		local file_reade__arr		= explodline(",", file_reade__string)
		day__old	= file_reade__arr[1]
		gift_daily	= file_reade__arr[2]
	end
	
	local diff__day = day__now - day__old
	if diff__day > 1 or gift_daily == 0 then 
		return 1
	elseif diff__day == 1 then 
		return gift_daily + 1
	end
end

function GiveDeilyGift(role, gift_daily)
	local day__now		= math.floor(GetNowTime() / 60 / 60 / 24)
	if GetChaFreeBagGridNum(role) < 1 then
		PopupNotice(role, "Ежедневный приз выдан во временный мешок!")
		GiveItemX(role, 0, ARR_DAILY[gift_daily].id, ARR_DAILY[gift_daily].count, 4)
	else
		PopupNotice(role, "Ежедневный приз выдан в рюкзак!")
		GiveItem(role, 0, ARR_DAILY[gift_daily].id, ARR_DAILY[gift_daily].count, 4)
	end
	local cha_id	= GetRoleID(role)
	local file_write = io.open(GetResPath("script/addon/daily/cache_deli/")..cha_id..".dat", "w+")
	file_write:write(day__now..","..gift_daily)
	file_write:close()
	
	local packet = GetPacket()
	WriteCmd(packet, 786)			-- Пакет отметки приза у клиента
	WriteByte(packet, gift_daily)	-- Текущий день
	SendPacket(role, packet)
end

-- Функция отправки призовой формы
function SendPrizeForm(role, now_day)
	local packet = GetPacket()
	WriteCmd(packet, 785)		-- Пакет отправки призовой формы
	WriteByte(packet, now_day)	-- Текущий день
	
	for i = 1, 7, 1 do
		--SystemNotice(role, i)
		WriteWord(packet, ARR_DAILY[i].id)		-- Ид
		WriteWord(packet, ARR_DAILY[i].count)	-- Кол-во
		
		if (i < now_day) then 
			WriteByte(packet, 1) -- Предмет получен
		else
			WriteByte(packet, 0) -- Предмет не получен
		end
	end
	SendPacket(role, packet)
end