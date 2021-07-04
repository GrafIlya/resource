function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
    MapCopyNum(map, 1)
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end

function map_copy_run_sdBoss( map_copy )
	if XmasMonsterNum1 >= 2008 then
		Notice ( "由于大家不停的捕猎火鸡,冥皇-卡拉幻象降临在圣诞竞技场A了,大家快去打啊!")
		local monster1 = CreateChaEx(1047, 6312, 5519, 175, 1000,map_copy)
		SetChaLifeTime(monster1,3600000)
		XmasMonsterNum1 = 0
	end
	if XmasMonsterNum2 >= 2008 then
		Notice ( "由于大家不停的捕猎麋鹿,死亡骑士幻象降临在圣诞竞技场B了,大家快去打啊!")
		local monster2 = CreateChaEx(1049, 49612, 5519, 175, 1000,map_copy)
		SetChaLifeTime(monster2,3600000)
		XmasMonsterNum2 = 0
	end
	if XmasMonsterNum3 >= 2008 then
		Notice ( "由于大家不停的捕猎雪人,冥王-哈迪斯幻象降临在圣诞竞技场C了,大家快去打啊!")
		local monster3 = CreateChaEx(1048, 92812, 5519, 175, 1000,map_copy)
		SetChaLifeTime(monster3,3600000)
		XmasMonsterNum3 = 0
	end
	if XmasMonsterNum4 >= 6000 then
		Notice ( "由于大家不停的捕猎火鸡以及麋鹿,巴伯萨幻象降临在圣诞竞技场D了,大家快去打啊!")
		local monster4 = CreateChaEx(1050, 6312, 43019, 175, 1000,map_copy)
		SetChaLifeTime(monster4,3600000)
		XmasMonsterNum4 = 0
	end
	if XmasMonsterNum5 >= 8000 then
		Notice ( "由于大家不停的捕猎火鸡,麋鹿以及雪人,雪殇灵幻象降临在圣诞竞技场E了,大家快去打啊!")
		local monster5 = CreateChaEx(1051, 49612, 43019, 175, 1000,map_copy)
		SetChaLifeTime(monster5,3600000)
		XmasMonsterNum5 = 0
	end
end