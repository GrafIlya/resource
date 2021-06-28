-------------------------------------------------------------------
--									--
--									--
--NPCScript05.lua Created by knight.gong 2005.7.12.				--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript05.lua" )



	function JoJo_01 ()
	Talk( 1, "Привет! я продавец ансилов на все профессии ")
	Text( 1, "Купить ", BuyPage )

	InitTrade()
	Weapon(	0763  )
	Weapon(	0764  )
	Weapon(	0765  )
	Weapon(	0767  )
	Weapon(	0768  )
	Weapon(	0770  )
	Weapon(	0771  )
	Weapon(	0772  )
	Weapon(	0774  )
	Weapon(	0775  )
	Weapon(	0777  )
	Weapon(	0778  )
	Weapon(	0779  )
	Weapon(	0781  )
	Weapon(	0782  )
	Weapon(	0783  )
	Weapon(	0785  )
	Weapon(	0786  )
	Weapon(	0787  )
	Weapon(	0789  )
	Weapon(	0790  )
	Weapon(	0791  )
	Weapon(	0793  )
	Weapon(	0794  )
	Weapon(	0796  )
	Weapon(	0797  )
	Weapon(	0799  )
	Weapon(	0800  )
	Weapon(	0801  )
	Weapon(	0803  )
	Weapon(	0804  )
	Weapon(	0805  )
	Weapon(	0807  )
	Weapon(	0808  )
	Weapon(	0809  )
	Weapon(	0810  )
	Weapon(	0811  )
	Weapon(	0812  )
	Weapon(	0813  )
	Weapon(	0814  )
	Weapon(	0815  )
	Weapon(	0769  )
	Weapon(	0766  )
	Weapon(	0773  )
	Weapon(	0776  )
	Weapon(	0780  )
	Weapon(	0784  )
	Weapon(	0788  )
	Weapon(	0792  )
	Weapon(	0795  )
end

function sky_01 ()
	
	
	Talk( 1, "Appereal NPC - Lance: Welcome to the Appereal Shop of Argent City. I am the owner Lance." )
	Text( 1, "Trade Appereals", BuyPage )

	InitTrade()
	

end 

----------------------------------------------------------Appereal Carsise

function sky_02 ()
	
	
	Talk( 1, "Appareal NPC - Carsise: Welcome to the Appereal Shop of Argent City. I am the owner Carsise." )
	Text( 1, "Trade Appereals", BuyPage )

	

end 

----------------------------------------------------------Appereal Phyllis

function sky_03 ()
	
	
	Talk( 1, "Appareal NPC - Phyllis: Welcome to the Appereal Shop of Argent City. I am the owner Phyllis." )
	Text( 1, "Trade Appereals", BuyPage )

	

end 

----------------------------------------------------------Appereal Ami

function sky_04 ()
	
	
	Talk( 1, "Appareal NPC - Ami: Welcome to the Appereal Shop of Argent City. I am the owner Ami." )
	Text( 1, "Trade Appereals", BuyPage )

	
end 

function JoJo_02 () -- Newbie Shop

	Talk( 1, "Welcome To Newbie Shop" )
	Text( 1, "Trade", BuyPage)

	InitTrade()
	Other(	277	)--Dragon Set Chest
	Other(	192	)--Kylin Set Chest
end

function JoJo_03 () -- Hairstylist - Shop

	Talk( 1, "Привет, я продаю все для прически " )
	Text( 1, "Купить ", BuyPage)

	InitTrade()
	Other(	1797	) -- Red Colo
	Other(	1799	) -- yellow
	Other(	4607	) -- Red Colo
	Other(	1801	) -- Cyan
	Other(	1802	) -- Blue
	Other(	1800	) -- Green
	Other(	1798	) -- Ornange
	Other(	1803	) -- Pup
	Other(	1804	) -- Scissor
	Other(	1805	) -- Comb
	Other(	1807	) -- Hair
                Other(      1806         ) -- 5
	Other(	931	) -- 
	Other(	934	) -- 
	Other(	932	) -- 
	Other(	933	) -- 
	Other(      1811         )-- 1
	Other(      1808         )-- 2
	Other(      1809         )-- 3
	Other(      1810         )-- 4

end 

function JoJo_04 () -- Gem Exchanger 

	Talk( 1, "Hi! Welcome To Gem Exchanger Page 1/3" )
	Text( 1, "Gem of Wind", JumpPage, 2 )
	Text( 1, "Gem of Striking", JumpPage, 3 )
	Text( 1, "Gem of Colossus", JumpPage, 4 )
	Text( 1, "Gem of Rage", JumpPage, 5 )
	Text( 1, "Gem of Soul", JumpPage, 6 )
	Text( 1, "How to get them?", JumpPage, 7 )
	Text( 1, "Next Page -->", JumpPage, 8 )
	Text( 1, "Trade Page", BuyPage)

	Talk( 8, "Hi! Welcome To Gem Exchange Page 2/3" )
	Text( 8, "Eye of Black Dragon", JumpPage, 9 )
	Text( 8, "Heart of Black Dragon", JumpPage, 10 )
	Text( 8, "Next Page -->", JumpPage, 11 )
	Text( 8, "(Go Back)", JumpPage,1 )

	Talk( 11, "Hi! Welcome To Gem Exchange Page 3/3" )
	Text( 11, "Fiery Gem", JumpPage, 12 )
	Text( 11, "Furious Gem", JumpPage, 13)
	Text( 11, "Explosive Gem", JumpPage, 14 )
	Text( 11, "Lustrious Gem", JumpPage, 15 )
	Text( 11, "Glowing Gem", JumpPage, 16 )
	Text( 11, "Shining Gem", JumpPage, 17 )
	Text( 11, "Shadow Gem", JumpPage, 18 )
	Text( 11, "Spirit Gem", JumpPage, 19 )


	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,99 )
	TriggerAction( 1, TakeItem, 0452,99 )
	TriggerAction( 1, GiveItem, 0860, 1, 4 )
	Talk( 2, "Get Me 99x of Enchanting Card Chest From Mineing" )
	Text( 2, "Obtain Gem of the Wind", MultiTrigger, GetMultiTrigger(), 1)	

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,99 )
	TriggerAction( 1, TakeItem, 0452,99 )
	TriggerAction( 1, GiveItem, 0861, 1, 4 )
	Talk( 3, "Get Me 99x of Enchanting Card Chest From Mineing" )
	Text( 3, "Obtain Gem of Striking", MultiTrigger, GetMultiTrigger(), 1)	

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,99 )
	TriggerAction( 1, TakeItem, 0452,99 )
	TriggerAction( 1, GiveItem, 0862, 1, 4 )
	Talk( 4, "Get Me 99x of Enchanting Card Chest From Mineing" )
	Text( 4, "Obtain Gem of Colossus", MultiTrigger, GetMultiTrigger(), 1)	

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,99 )
	TriggerAction( 1, TakeItem, 0452,99 )
	TriggerAction( 1, GiveItem, 0863, 1, 4 )
	Talk( 5, "Get Me 99x of Enchanting Card Chest From Mineing" )
	Text( 5, "Obtain Gem of Rage", MultiTrigger, GetMultiTrigger(), 1)	

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,99 )
	TriggerAction( 1, TakeItem, 0452,99 )
	TriggerAction( 1, GiveItem, 1012, 1, 4 )
	Talk( 6, "Get Me 99x of Enchanting Card Chest From Mineing" )
	Text( 6, "Obtain Gem of Soul", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,320 )
	TriggerAction( 1, TakeItem, 0452,320 )
	TriggerAction( 1, GiveItem, 0864, 1, 4 )
	Talk( 9, "Get Me 320x of Enchanting Card Chest From Mineing" )
	Text( 9, "Obtain Eye of Black Dragon Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,320 )
	TriggerAction( 1, TakeItem, 0452,320 )
	TriggerAction( 1, GiveItem, 0866, 1, 4 )
	Talk( 10, "Get Me 320x of Enchanting Card Chest From Mineing" )
	Text( 10, "Obtain Heart of Black Dragon Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0878, 1, 4 )
	Talk( 12, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 12, "Obtain Fiery Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0879, 1, 4 )
	Talk( 13, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 13, "Obtain Furious Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0880, 1, 4 )
	Talk( 14, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 14, "Obtain Explosive Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0881, 1, 4 )
	Talk( 15, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 15, "Obtain Lustrious Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0882, 1, 4 )
	Talk( 16, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 16, "Obtain Glowing Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0883, 1, 4 )
	Talk( 17, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 17, "Obtain Shining Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0884, 1, 4 )
	Talk( 18, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 18, "Obtain Shadow Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0887, 1, 4 )
	Talk( 19, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 19, "Obtain Spirit Gem", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "go out side of argent city and search     [Meterorite] at 2109,2766" )

	InitTrigger()
	Other(      3908         )--

end

function JoJo_05 () -- Honor Exchanger

	Talk( 1, " Exchange 4M For 9999 Honor" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, HasMoney, 4000000 )
	TriggerAction( 1, TakeMoney, 4000000 )
	TriggerAction( 1, AddCredit, 9999 )
	Text( 1, "obtain 9999 honor", MultiTrigger, GetMultiTrigger(), 1)

end

function JoJo_06 () -- Newbie Quests

	Talk( 1, "Newbie Quest:welcome here for Newbie Quest" )
	Text( 1, "ID of Quest", JumpPage,2 )

	AddNpcMission(1122)
	AddNpcMission(1130)
	AddNpcMission(1135)

	Text( 2, "Newbie Quest", JumpPage,3 )
	Text( 2, "Newbie Quest 2", JumpPage,4 )
	Text( 2, "Newbie Quest 3", JumpPage,5 )

	Talk( 3, "1620 | 3116 | 3130" )

	Talk( 4, "855" )

	Talk( 5, "2588" )
end

function JoJo_07 () -- Equips Quest

	Talk( 1, "Equips Quests" )
	Text( 1, "ID of Quest", JumpPage,2 )

	AddNpcMission(9977)
	AddNpcMission(9966)
	AddNpcMission(9955)
	AddNpcMission(9944)
	AddNpcMission(9933)
	AddNpcMission(9922)
	AddNpcMission(9911)

	Talk( 2, "2476" )
end

function JoJo_08 () -- Higher level Quest

	Talk( 1, "Higher Level Quests:Hi! im Leveler Quest" )
	Text( 1, "ID of Quest", JumpPage,2 )

	AddNpcMission(1123)
	AddNpcMission(1124)

	Text( 2, "Lv80-90", JumpPage,3 )
	Text( 2, "Lv90-150", JumpPage,4 )

	Talk( 3, "2605 | 3085 | 4783" )
	Talk( 4, "3453 | 3826" )
end

function JoJo_09 () -- Newbie Helper
	--µШНјГыіЖРЕПў
	local CurMapName = "hell5" 

	--єЪБъіІСЁИэІгЧш±к
	local GoTo01X = 31
	local GoTo01Y = 177
	local GoTo01M = CurMapName


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 1, "Teleports to New Npc Land??? No problem! Please pay 500G. Free for players Lv 10 and below!" )
	Text( 1, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

	Text( 1, "Trade", BuyPage)

	InitTrade()
	Other(	3901	)--Lance Wild West Hat
	Other(	0000	)--Lance Wild West Hat
	Other(	0000	)--Lance Wild West Hat

end

function JoJo_10 () -- JoJo Exchanger Note:Note: some equips are not same ID's you have to change to your own ItemInfo

	Talk( 1, "Exchanger: Exchange your kals for special equips and weapons!" )
	Text( 1, "Trade for lv75 Death Weapons", JumpPage, 2)
	Text( 1, "Trade for lv85 Unseald Weapon", JumpPage, 3)
	Text( 1, "Trade for lv85 rings", JumpPage, 4) 
	

	Talk( 2, "Exchanger: Chose your weapon! Note:4 Kals For Death Equips" )
	Text( 2, "Darkness Emissary", JumpPage, 5)
	Text( 2, "Tear of Hardin", JumpPage, 6)
	Text( 2, "Penitent of Asura", JumpPage, 7)
	Text( 2, "Abaddon Vanquisher", JumpPage, 8)
	Text( 2, "Kiss of Death", JumpPage, 9)
	Text( 2, "Putrescence Bone of Abyss", JumpPage,10)
	Text( 2, "Vow of Styx", JumpPage,11)

	Talk( 3, "Exchanger: Chose your weapon! Note: 6 Kals For UNSEAL Lv85 Equips" )
	Text( 3, "Eternity Protection", JumpPage,12)
	Text( 3, "Blade Of Darkness", JumpPage,13)
	Text( 3, "Sword Of Hardin", JumpPage,14)
	Text( 3, "Firegun Of Death", JumpPage,15)
	Text( 3, "Bow Of Vanquish", JumpPage,16)
	Text( 3, "Dagger Of Asura", JumpPage, 17)
	Text( 3, "Staff Of Abyss", JumpPage,18 )
	Text( 3, "Staff Of Styx", JumpPage, 19)

	Talk( 4, "Exchanger: Chose your ring! Note: 8 Kals For Rings Lv85" )
	Text( 4, "Amulet Of Hardin", JumpPage, 20)
	Text( 4, "Amulet Of Darkness", JumpPage, 21)
	Text( 4, "Amulet Of Styx", JumpPage, 22)
	Text( 4, "Amulet Of Abyss", JumpPage, 23)
	Text( 4, "Amulet Of Death", JumpPage, 24)
	Text( 4, "Amulet Of Asura", JumpPage, 25)
	Text( 4, "Amulet Of Light", JumpPage, 28)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 2331, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(5,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 2333, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(6,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 2335, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(7,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 2337, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(8,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 2339, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(9,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 2341, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(10,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 2343, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(11,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 6 )	
	TriggerAction( 1, TakeItem, 3457, 6 )
	TriggerAction( 1, GiveItem, 5902, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(13,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 6 )	
	TriggerAction( 1, TakeItem, 3457, 6 )
	TriggerAction( 1, GiveItem, 5904, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(14,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 6 )	
	TriggerAction( 1, TakeItem, 3457, 6 )
	TriggerAction( 1, GiveItem, 5906, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(15,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 6 )	
	TriggerAction( 1, TakeItem, 3457, 6 )
	TriggerAction( 1, GiveItem, 5908, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(16,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 6 )	
	TriggerAction( 1, TakeItem, 3457, 6 )
	TriggerAction( 1, GiveItem, 5910, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(17,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 6 )	
	TriggerAction( 1, TakeItem, 3457, 6 )
	TriggerAction( 1, GiveItem, 5912, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(18,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 6 )	
	TriggerAction( 1, TakeItem, 3457, 6 )
	TriggerAction( 1, GiveItem, 5914, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(19,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 8 )	
	TriggerAction( 1, TakeItem, 3457, 8 )
	TriggerAction( 1, GiveItem, 5916, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(20,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 8 )	
	TriggerAction( 1, TakeItem, 3457, 8 )
	TriggerAction( 1, GiveItem, 5917, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(21,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 8 )	
	TriggerAction( 1, TakeItem, 3457, 8 )
	TriggerAction( 1, GiveItem, 5918, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(22,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 8 )	
	TriggerAction( 1, TakeItem, 3457, 8 )
	TriggerAction( 1, GiveItem, 5919, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(23,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 8 )	
	TriggerAction( 1, TakeItem, 3457, 8 )
	TriggerAction( 1, GiveItem, 5920, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(24,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 8 )	
	TriggerAction( 1, TakeItem, 3457, 8 )
	TriggerAction( 1, GiveItem, 5921, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(25,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	Talk( 26, "You dont have enough required items!" )
	Talk( 27, "Woila, check your new weapon!" )

end

function JoJo_11 () 

	Talk( 1, " Калин сет за 99 рун учтивости,благочестия,храбрости,сострадания,99 Ja и Tef ,30 рун льда, 99 клевера! " )
	Text( 1, " Обменять броню ", JumpPage, 2 )
	Text( 1, " Обменять перчатки ", JumpPage, 3 )
	Text( 1, " Обменять ботинки ", JumpPage, 4 )
	Text( 1, " Обменять шапку ( для ами ) ", JumpPage, 5 )
	Text( 1, " Где достать все это?? ", JumpPage, 8 )

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6231, 99 )	
	TriggerAction( 1, TakeItem, 6231, 99 )
	TriggerCondition( 1, HasItem, 6232, 99 )	
	TriggerAction( 1, TakeItem, 6232, 99 )
	TriggerCondition( 1, HasItem, 6233, 99 )	
	TriggerAction( 1, TakeItem, 6233, 99 )
	TriggerCondition( 1, HasItem, 6234, 99 )	
	TriggerAction( 1, TakeItem, 6234, 99 )
	TriggerCondition( 1, HasItem, 7138, 99 )	
	TriggerAction( 1, TakeItem, 7138, 99 )
	TriggerCondition( 1, HasItem, 3143, 99 )	
	TriggerAction( 1, TakeItem, 3143, 99 )
	TriggerCondition( 1, HasItem, 3427,99 )
	TriggerAction( 1, TakeItem, 3427,99 )
	TriggerCondition( 1, HasItem, 3430,99 )
	TriggerAction( 1, TakeItem, 3430,99 )
	TriggerAction( 1, GiveItem, 831, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(2,"обменять" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6231, 99 )	
	TriggerAction( 1, TakeItem, 6231, 99 )
	TriggerCondition( 1, HasItem, 6232, 99 )	
	TriggerAction( 1, TakeItem, 6232, 99 )
	TriggerCondition( 1, HasItem, 6233, 99 )	
	TriggerAction( 1, TakeItem, 6233, 99 )
	TriggerCondition( 1, HasItem, 6234, 99 )	
	TriggerAction( 1, TakeItem, 6234, 9 )
	TriggerCondition( 1, HasItem, 7138, 99 )	
	TriggerAction( 1, TakeItem, 7138, 99 )
	TriggerCondition( 1, HasItem, 3143, 99 )	
	TriggerAction( 1, TakeItem, 3143, 99 )
	TriggerCondition( 1, HasItem, 3427,99 )
	TriggerAction( 1, TakeItem, 3427,99 )
	TriggerCondition( 1, HasItem, 3430,99 )
	TriggerAction( 1, TakeItem, 3430,99 )
	TriggerAction( 1, GiveItem, 832, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(3,"обменять" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6231, 99 )	
	TriggerAction( 1, TakeItem, 6231, 99 )
	TriggerCondition( 1, HasItem, 6232, 99 )	
	TriggerAction( 1, TakeItem, 6232, 99 )
	TriggerCondition( 1, HasItem, 6233, 99 )	
	TriggerAction( 1, TakeItem, 6233, 99 )
	TriggerCondition( 1, HasItem, 6234, 99 )	
	TriggerAction( 1, TakeItem, 6234, 99 )
	TriggerCondition( 1, HasItem, 7138, 99 )	
	TriggerAction( 1, TakeItem, 7138, 99 )
	TriggerCondition( 1, HasItem, 3143, 99 )	
	TriggerAction( 1, TakeItem, 3143, 99 )
	TriggerCondition( 1, HasItem, 3427,99 )
	TriggerAction( 1, TakeItem, 3427,99 )
	TriggerCondition( 1, HasItem, 3430,99 )
	TriggerAction( 1, TakeItem, 3430,99 )
	TriggerAction( 1, GiveItem, 833, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(4,"обменять" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6231, 99 )	
	TriggerAction( 1, TakeItem, 6231, 99 )
	TriggerCondition( 1, HasItem, 6232, 99 )	
	TriggerAction( 1, TakeItem, 6232, 99 )
	TriggerCondition( 1, HasItem, 6233, 99 )	
	TriggerAction( 1, TakeItem, 6233, 99 )
	TriggerCondition( 1, HasItem, 6234, 99 )	
	TriggerAction( 1, TakeItem, 6234, 99 )
	TriggerCondition( 1, HasItem, 7138, 99 )	
	TriggerAction( 1, TakeItem, 7138, 99 )
	TriggerCondition( 1, HasItem, 3143, 99 )	
	TriggerAction( 1, TakeItem, 3143, 99 )
	TriggerCondition( 1, HasItem, 3427,99 )
	TriggerAction( 1, TakeItem, 3427,99 )
	TriggerCondition( 1, HasItem, 3430,99 )
	TriggerAction( 1, TakeItem, 3430,99 )
	TriggerAction( 1, GiveItem, 834, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(5,"обменять" ,MultiTrigger,GetMultiTrigger(),1)

	Talk( 27, " прошу " )
	Talk( 26, " обманывать меня вздумал!! " )
	
	Talk( 8, " Найти Руны можна на авроре а также в крае тьмы,руны льда-в сне яны,клевер у Дито,а руны теф и джа в Мире Демонов! " )

end

function JoJo_12 ()

	Talk( 1, "Welcome To Shop Stones!!!!" )
	Text( 1, "Clike Me!!!", BuyPage)

	InitTrade()
	Other(	2226	)--Baby Rune
	Other(	2227	)--Roico Rune
	Other(	2228	)--Lance Wild West Gloves
	Other(	2229	)--Lance Wild West Boots
	Other(	2230	)--Phyllis Wild West Hat
	Other(	2231	)--Phyllis Wild West Coat
	Other(	2232	)--Phyllis Wild West Gloves
	Other(	2233	)--Phyllis Wild West Boots
                Other(      0000         )--
	
end 

function JoJo_13 ()

	Talk( 1, "Hello! Reputation Shop!!" )
	Text( 1, "Learn Navigation Skill", BuyPage )
	Text(1,"Exchange Money To Reputation!",JumpPage,2)
	Text( 1, "Thanks [Close]", CloseTalk)
   
	InitTrigger()
	TriggerCondition( 1, HasMoney, 4000000 )
	TriggerAction( 1, TakeMoney, 4000000 )
	TriggerAction( 1, DelRoleCredit, -9999 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "If You Want Get 9999 Reputation, Pay Me 4 Millions Gold! And Dont Forget Say Thanks!" )
	Text( 2, "Get 9999 Reputation",  MultiTrigger, GetMultiTrigger(), 1 )
	Text( 2, "I Will Get Money Later [Close]", CloseTalk)

	Talk(3, "I Hope You Know How Use So Much Reputation!")

	Talk(4, "Sorry, But You Dont Have 4 Million Gold! Come Back When You Have!.")
	end 


function JoJo_14 ()

	Talk( 1, "2nd Rebirth: Only the best and elite Navy or Pirates will have a chance to get rebirth!")
	Text( 1, "More about rebirth", JumpPage, 2)
	Text( 1, "I wish to rebirth", JumpPage, 6)
	
	
	Talk( 2, "2nd Rebirth: What do you need to know?")
	Text( 2, "Classes after rebirth", JumpPage, 3)
	Text( 2, "Regarding stats and skill points after rebirth", JumpPage, 4)
	Text( 2, "Regarding conditions of rebirth", JumpPage, 5)
	
	Talk( 3, "Players can reselect their class after rebirth: Lance can become Crusader, Voyager or Sharpshooter. Carsise can become Champion. Phyllis can become Cleric, Seal Master, Voyager or Sharpshooter. Ami can become Cleric, Seal Master or Voyager")
	Text( 3, "Thank you, I understand", CloseTalk)

	Talk( 4, "All attributes will be resetted upon rebirth and all additional stat points gained from Career Lot or Birthday Cake will remained for reallocation. Also, all skill will be resetted and skill points will be returned for reallocation.")
	Text( 4, "Thank you, I understand", CloseTalk)

	Talk( 5, "To be 2nd rebirth, you will need to complete quest 2nd Rebirth Quest  which can be activated at the Goddess. Look for me after you obtained the 2nd Rebirth Stone or you can come directly to me if you have the Rebirth Card.")
	Text( 5, "Thank you, I understand", CloseTalk)

	Talk( 6, "2ndd Rebirth Angel: So you have done the task? Select the best option for you." )
	Text( 6, "Become a Crusader to uphold justice and peace",  GetChaName1_born2, 1)
	Text( 6, "Become a Champion to protect companion",  GetChaName2_born2, 1)
	Text( 6, "Become a Cleric to heal and protect people",  GetChaName5_born2, 1)
	Text( 6, "Become a Voyager to be master of sea",  GetChaName3_born2, 1)
	Text( 6, "Become a Sharpshooter to have the ultimate range", GetChaName4_born2, 1)   
	Text( 6, "Become a Seal Master to have the best seals", GetChaName6_born2, 1)
	Text( 6, "I do not wish to do 2nd Rebirth right now", CloseTalk)

end

function JoJo_15 ()

	Talk( 1, "3rd Rebirth: Befour Rebithed make sure that ur move has moved to other character")
	Text( 1, "More about rebirth", JumpPage, 2)
	Text( 1, "I wish to rebirth", JumpPage, 6)
	
	
	Talk( 2, "3rd Rebirth: What do you need to know?")
	Text( 2, "Classes after rebirth", JumpPage, 3)
	Text( 2, "Regarding stats and skill points after rebirth", JumpPage, 4)
	Text( 2, "Regarding conditions of rebirth", JumpPage, 5)
	
	Talk( 3, "Players can reselect their class after rebirth: Lance can become Crusader, Voyager or Sharpshooter. Carsise can become Champion. Phyllis can become Cleric, Seal Master, Voyager or Sharpshooter. Ami can become Cleric, Seal Master or Voyager")
	Text( 3, "Thank you, I understand", CloseTalk)

	Talk( 4, "All attributes will be resetted upon rebirth and all additional stat points gained from Career Lot or Birthday Cake will remained for reallocation. Also, all skill will be resetted and skill points will be returned for reallocation.")
	Text( 4, "Thank you, I understand", CloseTalk)

	Talk( 5, "To be 3rd rebirth, you will need to complete quest 3rd Rebirth Quest  which can be activated at the Goddess. Look for me after you obtained the 3rd Rebirth Stone or you can come directly to me if you have the Rebirth Card.")
	Text( 5, "Thank you, I understand", CloseTalk)

	Talk( 6, "2ndd Rebirth Angel: So you have done the task? Select the best option for you." )
	Text( 6, "Become a Crusader to uphold justice and peace",  GetChaName1_born3, 1)
	Text( 6, "Become a Champion to protect companion",  GetChaName2_born3, 1)
	Text( 6, "Become a Cleric to heal and protect people",  GetChaName5_born3, 1)
	Text( 6, "Become a Voyager to be master of sea",  GetChaName3_born3, 1)
	Text( 6, "Become a Sharpshooter to have the ultimate range", GetChaName4_born3, 1)   
	Text( 6, "Become a Seal Master to have the best seals", GetChaName6_born3, 1)
	Text( 6, "I do not wish to do 3rd Rebirth right now", CloseTalk)

end

function sky_07 ()
	
	
	Talk( 1, "\199\228\240\224\241\242\226\243\233, \243 \236\229\237\255 \229\241\242\252 \238\247\229\237\252 \236\237\238\227\238 \232\237\242\229\240\229\241\237\251\245 \226\229\249\229\233." )
	Text( 1, "\207\238\241\236\238\242\240\229\242\252", BuyPage )
	
	InitTrade()
	Weapon(	453	) 
	Weapon(	455	)
	Weapon(	3074	)
	Weapon(	3075	)
	Weapon(	891	)
	Weapon(	454	)
	Weapon(	890	)
	Defence(	3109	)
	Defence(	3110	)
	Defence(	3111	) 
	Defence(	3112	)
	Defence(	3113	)
	Other(	3300	)
	Other(	3301	)

end

function JoJo_16 ()
	--µШНјГыіЖРЕПў
	local CurMapName = "garner" 

	--єЪБъіІСЁИэІгЧш±к
	local GoTo01X = 2194
	local GoTo01Y = 2778
	local GoTo01M = CurMapName


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 1, "Teleports to Argent?? No problem! Please pay 500G. Free for players Lv 10 and below!" )
	Text( 1, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

end

function JoJo_17 ()

	Talk( 1, "Хей, выбирай что по душе!" )
	Text( 1, "Ага!!!", BuyPage)

	InitTrade()
	Other(	2829	)--Baby Rune
	Other(	2830	)--Roico Rune
	Other(	2831	)--Lance Wild West Gloves
	Other(	2832	)--Lance Wild West Boots
	Other(	2833	)--Phyllis Wild West Hat
	Other(	2834	)--Phyllis Wild West Coat
	Other(	2820	)--Phyllis Wild West Gloves
	Other(	2821	)--Phyllis Wild West Boots
	Other(      2822         )--
	Other(      2823         )--
	Other(      2824         )--
	Other(      2825         )--
	Other(      2826         )--
	Other(      2827         )--
	Other(      2828         )--
	Other(      2817         )--
	Other(      2818         )--
	Other(      2819         )--
	Other(      2332         )
	Other(      2338         )
	Other(      2334         )
	Other(      2344         )
	Other(      2342         )
	Other(      2336         )


end 



function Ucha_01 () -- Pirate Chest

	Talk( 1, "Привет! Я продавец ансил, уникальных колец, биж и честов на все професии" )
	Text( 1, "\202\243\239\232\242\252", BuyPage)

	InitTrade()
	Weapon(	854  )
	Weapon(	127  )
	Weapon(	776  )
	Weapon(	784  )
	Weapon(	773  )
	Weapon(	802  )
	Weapon(	2820  )
	Weapon(	2817  )
	Weapon(	2339  )
	Weapon(	2821  )
	Weapon(	2822  )
	Weapon(	2332  )
	Weapon(	2338  )
	Weapon(	2337  )
	Weapon(	2823  )
	Weapon(	2824  )
	Weapon(	2825  )
	Weapon(	864  )
	Weapon(	865  )
	Weapon(	866  )
	Weapon(	885  )
	Weapon(	5845  )
	Weapon(	5846  )
	Weapon(	5847  )
	Weapon(	5848  )
	Weapon(	5849  )
	Weapon(	1145  )
	Weapon(	2729  )
	Weapon(	2753  )
	Weapon(	2777  )
	Weapon(	2801  )
	Weapon(	2794  )
	Weapon(	2367  )
	Weapon(	0807  )
	Weapon(	0808  )
	Weapon(	0809  )
	Weapon(	0810  )
	Weapon(	0811  )
	Weapon(	0812  )
	Weapon(	0813  )
	Weapon(	0814  )
	Weapon(	0815  )
	Weapon(	3404  ) 
	Weapon(	3416  )
	Weapon(	3417  )
	Weapon(	3418  )
	Weapon(	3419  )
	Weapon(	3420  )
	Weapon(	2941  )
	Defence(	0347	) -- Wings of Light
	Defence(	0349	) -- Nature's Whisper
	Defence(	0334	) -- Hammer of Thunder
	Defence(	0346	) -- Eye of Lighting
	Defence(	0348	) -- Morning Bell
	Defence(	0415	) -- Ray's Fury
	Defence(	0414	) -- Kiss of Nic
	Defence(	0417	) -- Consecration of Priestess
	Defence(	0387	) -- Peter's Call
	Defence(	0416	) -- Daniel's Regret
	Defence(	0462	) -- Nimble Venturer
	Defence(	0495	) -- Soul Generator
	Other(	3400	) -- Skeletar Chest of Swordsman
	Other(	3401	) -- Skeletar Chest of Hunter
	Other(	3402	) -- Skeletar Chest of Herbalist
	Other(	3403	) -- Skeletar Chest of Explorer
	Other(	3404	) -- Incantation Chest of Crusader
	Other(	3405	) -- Incantation Chest of Champion
	Other(	3406	) -- Incantation Chest of Sharpshooter
	Other(	3407	) -- Incantation Chest of Cleric
	Other(	3408	) -- Incantation Chest of Seal Master
	Other(	3409	) -- Incantation Chest of Voyager
	Other(	3410	) -- Evanescence Chest of Crusader
	Other(	3411	) -- Evanescence Chest of Champion
	Other(	3412	) -- Evanescence Chest of Sharpshooter
	Other(	3413	) -- Evanescence Chest of Cleric
	Other(	3414	) -- Evanescence Chest of Seal Master
	Other(	3415	) -- Evanescence Chest of Voyager
	Other(	3416	) -- Enigma Chest of Crusader
	Other(	3417	) -- Enigma Chest of Champion
	Other(	3418	) -- Enigma Chest of Sharpshooter
	Other(	3419	) -- Enigma Chest of Cleric
	Other(	3420	) -- Enigma Chest of Seal Master
	Other(	3421	) -- Enigma Chest of Voyager



end





function JoJo_18 ()

	Talk( 1, "Hi! Welcome Rings Man, Pls Look Around!" )
	Text( 1, "Trade", BuyPage)

	InitTrade()
	Other(	5961	)--Lance Wild West Hat
	Other(	5962	)--Lance Wild West Suit
	Other(	5963	)--Lance Wild West Gloves
	Other(	5964	)--Lance Wild West Boots

	Other(	5969	)--Carsise Wild West Hat
	Other(	5970	)--Carsise Wild West Jacket
	Other(	5971	)--Carsise Wild West Gloves
	Other(	5972	)--Carsise Wild West Boots
	Other(	5973	)--Ami Wild West Hat
	Other(	5974	)--Ami Wild West Suit
	Other(	5976	)--Ami Wild West Boots
	Other(	5977	)--Lance Pirate Hat
	Other(	5978	)--Lance Pirate Suit
	Other(	5979	)--Lance Pirate Gloves
	Other(	5980	)--Lance Pirate Shoes
	Other(	5981	)--carsise Pirate Hat
	
end 

function r_HeSToP3 ()

	--Карта
	local CurMapName1 = "hell"


	--Абаддон05
	local GoTo01X = 110
	local GoTo01Y = 230
	local GoTo01M = CurMapName1

	--Абаддон06
	local GoTo02X = 225
	local GoTo02Y = 30
	local GoTo02M = CurMapName1

	--Абаддон07
	local GoTo03X = 110
	local GoTo03Y = 150
	local GoTo03M = CurMapName1

	--Абаддон08
	local GoTo04X = 230
	local GoTo04Y = 150
	local GoTo04M = CurMapName1

	Talk( 1, "\207\238\240\242\224\235\252\249\232\234 \224\225\224\228\228\238\237\224: \207\240\232\226\229\242! \198\229\235\224\229\248\252 \238\242\239\240\224\226\232\242\252\241\255 \226 \224\225\224\228\228\238\237?" )
	Text( 1, "\206\242\239\240\224\226\232\242\252\241\255 \226 \224\225\224\228\228\238\237 05", JumpPage, 2 )
	Text( 1, "\206\242\239\240\224\226\232\242\252\241\255 \226 \224\225\224\228\228\238\237 06", JumpPage, 3 )
	Text( 1, "\206\242\239\240\224\226\232\242\252\241\255 \226 \224\225\224\228\228\238\237 07", JumpPage, 4 )
	Text( 1, "\206\242\239\240\224\226\232\242\252\241\255 \226 \224\225\224\228\228\238\237 08", JumpPage, 5 )
	Text( 1, "\211\233\242\232", CloseTalk )

	--Абаддон05
	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, " \192\225\224\228\228\238\237 05? \205\229\242 \239\240\238\225\235\229\236!" )
	Text( 2, " \210\229\235\229\239\238\240\242",MultiTrigger, GetMultiTrigger(), 2)

	--Абаддон06
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo02X, GoTo01Y, GoTo02M )
	Talk( 3, " \192\225\224\228\228\238\237 06? \205\229\242 \239\240\238\225\235\229\236!" )
	Text( 3, " \210\229\235\229\239\238\240\242",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон07
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	Talk( 4, " \192\225\224\228\228\238\237 07? \205\229\242 \239\240\238\225\235\229\236!" )
	Text( 4, "\210\229\235\229\239\238\240\242",MultiTrigger, GetMultiTrigger(), 2 )

	--Абаддон08
	InitTrigger()
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 5, " \192\225\224\228\228\238\237 08? \205\229\242 \239\240\238\225\235\229\236!" )
	Text( 5, " \210\229\235\229\239\238\240\242",MultiTrigger, GetMultiTrigger(), 2)

end


function simplepro_05 () -- Appareal Lanc

	Talk( 1, "\199\228\240\224\241\242\226\243\233, \243 \236\229\237\255 \232\236\229\229\242\241\255 \225\238\235\252\248\238\233 \226\251\225\238\240 \224\239\239\224\240\229\235\229\233 \237\224 \203\224\237\241\224." )
	Text( 1, "\202\243\239\232\242\252", BuyPage)

	
Text( 1, "Хочу 95 Аппы ", JumpPage, 2)

Talk( 2, " Да я хотел бы выкупить!!! " )
Text( 2, " Давай 500 Банок Колы! ", JumpPage, 3)

Talk(3," На вот! ")
InitTrigger()
TriggerCondition( 1, HasItem,7454,500 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7454,500 )
TriggerAction( 1, GiveItem, 6070,1,4 )
TriggerAction( 1, GiveItem, 6071,1,4 )
TriggerAction( 1, GiveItem, 6072,1,4 )
TriggerAction( 1, GiveItem, 6073,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(3," Спасибо! ",MultiTrigger,GetMultiTrigger(),1)

Talk( 19, "Прошу, не обманывай меня! " ) -- страница если не достаточно репы
	
	
	
	

		InitTrade  ()
Defence(	5013	)
Defence(	5017	)
Defence(	5021	)
Defence(	5025	)
Defence(	5029	)
Defence(	5033	)
Defence(	5041	)
Defence(	5045	)
Defence(	5049	)
Defence(	5057	)
Defence(	5061	)
Defence(	5065	)
Defence(	5075	)
Defence(	5076	)
Defence(	5077	)

Defence(	5118	)
Defence(	5119	)
Defence(	5120	)
Defence(	5121	)
Defence(	5122	)
Defence(	5123	)
Defence(	5124	)
Defence(	5125	)
Defence(	5126	)
Defence(	5127	)
Defence(	5128	)
Defence(	5129	)
Defence(	5154	)
Defence(	5155	)
Defence(	5156	)
Defence(	5157	)
Defence(	5158	)
Defence(	5159	)
Defence(	5160	)
Defence(	5161	)
Defence(	5162	)
Defence(	5205	)
Defence(	5206	)
Defence(	5207	)
Defence(	5220	)
Defence(	5221	)
Defence(	5222	)
Defence(	5223	)
Defence(	5224	)
Defence(	5225	)
Defence(	5226	)
Defence(	5227	)
Defence(	5228	)
Defence(	5229	)
Defence(	5287	)
Defence(	5288	)
Defence(	5289	)
Defence(	5290	)
Defence(	5303	)
Defence(	5304	)
Defence(	5305	)
Defence(	5315	)
Defence(	5316	)
Defence(	5317	)
Defence(	5318	)
Defence(	5341	)
Defence(	5342	)
Defence(	5343	)
Defence(	5356	)
Defence(	5357	)
Defence(	5358	)
Defence(	5359	)
Defence(	5372	)
Defence(	5373	)
Defence(	5374	)
Defence(	5375	)
Defence(	5388	)
Defence(	5389	)
Defence(	5390	)
Defence(	5391	)
Defence(	5404	)
Defence(	5405	)
Defence(	5406	)
Defence(	5422	)
Defence(	5423	)
Defence(	5432	)
Defence(	5433	)
Defence(	5436	)
Defence(	5440	)
Defence(	5444	)
Defence(	5456	)
Defence(	5457	)
Defence(	5458	)
Defence(	5459	)
Defence(	5472	)
Defence(	5476	)
Defence(	5480	)
Defence(	5484	)
Defence(	5488	)
Defence(	5489	)
Defence(	5490	)
Defence(	5501	)
Defence(	5502	)
Defence(	5503	)
Defence(	5521	)
Defence(	5522	)
Defence(	5523	)
Defence(	5524	)
Defence(	5537	)
Defence(	5538	)
Defence(	5539	)
Defence(	5540	)
Defence(	5553	)
Defence(	5554	)
Defence(	5555	)
Defence(	5556	)
Defence(		)
Defence(		)
Defence(		)
	Other(	5569	)
	Other(	5570	)
	Other(	5571	)
	Other(	5572	)
	Other(	5577	)
	Other(	5578	)
	Other(	5579	)
	Other(	5580	)
	Other(	5423	)
	Other(	5436	)
	Other(	5488	)
	Other(	5489	)
	Other(	5490	)
	Other(	5501	)
	Other(	5502	)
	Other(	5503	)
	Other(	5521	)
	Other(	5522	)
	Other(	5523	)
	Other(	5524	)
	Other(	5537	)
	Other(	5538	)
	Other(	5539	)
	Other(	5540	)
	Other(	5553	)
	Other(	5554	)
	Other(	5555	)
	Other(	5556	)
	Other(	5569	)
	Other(	5570	)
	Other(	5571	)
	Other(	5572	)
	Other(	5578	)
	Other(	5579	)
	Other(	5580	)
	Other(	5577	)
	Other(	5593	)
	Other(	5594	)
	Other(	5595	)
	Other(	5596	)
Other(	5651	)
Other(	5652	)
Other(	5653	)
Other(	5654	)
Other(	5661	)
Other(	5662	)
Other(	5663	)
Other(	5664	)
Other(	5677	)
Other(	5678	)
Other(	5679	)
Other(	5680	)
Other(	5726	)
Other(	5727	)
Other(	5728	)
Other(	5729	)
Other(	5742	)
Other(	5743	)
Other(	5744	)
Other(	5745	)
Other(	5945	)
Other(	5946	)
Other(	5947	)
Other(	5948	)

Other(	5970	)
Other(	5971	)
Other(	5972	)
Other(	5973	)
Other(	5992	)
Other(	5993	)
Other(	5994	)


end



function simplepro_06 () -- Appareal Carcsic

	Talk( 1, "\199\228\240\224\241\242\226\243\233, \243 \236\229\237\255 \232\236\229\229\242\241\255 \225\238\235\252\248\238\233 \226\251\225\238\240 \224\239\239\224\240\229\235\229\233 \237\224 \202\224\240\246\232\241\224." )
	Text( 1, "\202\243\239\232\242\252", BuyPage)

	Text( 1, "Хочу 95 Аппы ", JumpPage, 2)

Talk( 2, " Да я хотел бы выкупить!!! " )
Text( 2, " Давай 500 Банок Колы! ", JumpPage, 3)

Talk(3," На вот! ")
InitTrigger()
TriggerCondition( 1, HasItem,7454,500 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7454,500 )
TriggerAction( 1, GiveItem, 6074,1,4 )
TriggerAction( 1, GiveItem, 6075,1,4 )
TriggerAction( 1, GiveItem, 6076,1,4 )
TriggerAction( 1, GiveItem, 6077,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(3," Спасибо! ",MultiTrigger,GetMultiTrigger(),1)

Talk( 19, "Прошу, не обманывай меня! " ) -- страница если не достаточно репы

	InitTrade()
Defence(	5014	)
Defence(	5018	)
Defence(	5022	)
Defence(	5026	)
Defence(	5030	)
Defence(	5034	)
Defence(	5039	)
Defence(	5040	)
Defence(	5042	)
Defence(	5046	)
Defence(	5050	)
Defence(	5058	)
Defence(	5062	)
Defence(	5066	)
Defence(	5084	)
Defence(	5085	)
Defence(	5086	)
Defence(	5087	)
Defence(	5088	)
Defence(	5089	)
Defence(	5090	)
Defence(	5091	)
Defence(	5092	)
Defence(	5093	)
Defence(	5094	)
Defence(	5095	)
Defence(	5096	)
Defence(	5097	)
Defence(	5098	)
Defence(	5106	)
Defence(	5107	)
Defence(	5108	)
Defence(	5109	)
Defence(	5110	)
Defence(	5111	)
Defence(	5112	)
Defence(	5113	)
Defence(	5114	)
Defence(	5115	)
Defence(	5116	)
Defence(	5117	)
Defence(	5195	)
Defence(	5196	)
Defence(	5197	)
Defence(	5218	)
Defence(	5230	)
Defence(	5231	)
Defence(	5232	)
Defence(	5233	)
Defence(	5234	)
Defence(	5235	)
Defence(	5236	)
Defence(	5237	)
Defence(	5238	)
Defence(	5239	)
Defence(	5240	)
Defence(	5291	)
Defence(	5292	)
Defence(	5293	)
Defence(	5294	)
Defence(	5306	)
Defence(	5307	)
Defence(	5308	)
Defence(	5319	)
Defence(	5320	)
Defence(	5321	)
Defence(	5322	)
Defence(	5345	)
Defence(	5346	)
Defence(	5347	)
Defence(	5360	)
Defence(	5361	)
Defence(	5362	)
Defence(	5363	)
Defence(	5376	)
Defence(	5377	)
Defence(	5378	)
Defence(	5379	)
Defence(	5392	)
Defence(	5393	)
Defence(	5394	)
Defence(	5395	)
Defence(	5407	)
Defence(	5408	)
Defence(	5409	)
Defence(	5424	)
Defence(	5425	)
Defence(	5434	)
Defence(	5435	)
Defence(	5437	)
Defence(	5441	)
Defence(	5445	)
Defence(	5460	)
Defence(	5461	)
Defence(	5462	)
Defence(	5463	)
Defence(	5473	)
Defence(	5477	)
Defence(	5481	)
Defence(	5485	)
Defence(	5491	)
Defence(	5493	)
Defence(	5504	)
Defence(	5505	)
Defence(	5506	)
Defence(	5541	)
Defence(	5542	)
Defence(	5543	)
Defence(	5544	)
Defence(	5557	)
Defence(	5558	)
Defence(	5559	)
Defence(	5560	)
Defence(	5573	)
Defence(	5574	)
Defence(	5575	)
Defence(	5576	)
Other(	5581	)
Other(	5582	)
Other(	5583	)
Other(	5584	)
Other(	5597	)
Other(	5598	)
Other(	5599	)
Other(	5600	)
Other(	5656	)
Other(	5657	)
Other(	5658	)
Other(	5665	)
Other(	5666	)
Other(	5667	)
Other(	5668	)
Other(		)
Other(	5525	)
Other(	5526	)
Other(	5527	)
Other(	5528	)
Other(	5541	)
Other(	5542	)
Other(	5543	)
Other(	5544	)
Other(	5557	)
Other(	5558	)
Other(	5559	)
Other(	5560	)
Other(	5573	)
Other(	5574	)
Other(	5575	)
Other(	5576	)
Other(	5581	)
Other(	5582	)
Other(	5583	)
Other(	5584	)
Other(	5597	)
Other(	5598	)
Other(	5599	)
Other(	5600	)
Other(	5655	)
Other(	5656	)
Other(	5657	)
Other(	5658	)
Other(	5665	)
Other(	5666	)
Other(	5667	)
Other(	5668	)
Other(	5681	)
Other(	5682	)
Other(	5683	)
Other(	5684	)
Other(	5730	)
Other(	5731	)
Other(	5732	)
Other(	5733	)
Other(	5746	)
Other(	5747	)
Other(	5748	)
Other(	5749	)
Other(	5949	)
Other(	5950	)
Other(	5951	)
Other(	5952	)

Other(	5974	)
Other(	5975	)
Other(	5976	)
Other(	5977	)

end


function simplepro_07 () -- Appareal Fillis

	Talk( 1, "\199\228\240\224\241\242\226\243\233, \243 \236\229\237\255 \232\236\229\229\242\241\255 \225\238\235\252\248\238\233 \226\251\225\238\240 \224\239\239\224\240\229\235\229\233 \237\224 \212\232\235\235\232\241." )
	Text( 1, "\202\243\239\232\242\252", BuyPage)

	Text( 1, "Хочу 95 Аппы ", JumpPage, 2)

Talk( 2, " Да я хотел бы выкупить!!! " )
Text( 2, " Давай 500 Банок Колы! ", JumpPage, 3)

Talk(3," На вот! ")
InitTrigger()
TriggerCondition( 1, HasItem,7454,500 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7454,500 )
TriggerAction( 1, GiveItem, 6078,1,4 )
TriggerAction( 1, GiveItem, 6079,1,4 )
TriggerAction( 1, GiveItem, 6080,1,4 )
TriggerAction( 1, GiveItem, 6081,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(3," Спасибо! ",MultiTrigger,GetMultiTrigger(),1)

Talk( 19, "Прошу, не обманывай меня! " ) -- страница если не достаточно репы
	
	InitTrade()
Defence(	5015	)
Defence(	5019	)
Defence(	5023	)
Defence(	5027	)
Defence(	5031	)
Defence(	5035	)
Defence(	5043	)
Defence(	5047	)
Defence(	5051	)
Defence(	5059	)
Defence(	5063	)
Defence(	5067	)
Defence(	5075	)
Defence(	5076	)
Defence(	5077	)

Defence(	5081	)
Defence(	5082	)
Defence(	5083	)
Defence(	5084	)
Defence(	5085	)
Defence(	5086	)
Defence(	5087	)
Defence(	5088	)
Defence(	5089	)
Defence(	5090	)
Defence(	5091	)
Defence(	5092	)
Defence(	5093	)
Defence(	5094	)
Defence(	5095	)
Defence(	5096	)
Defence(	5097	)
Defence(	5098	)
Defence(	5142	)
Defence(	5143	)
Defence(	5144	)
Defence(	5145	)
Defence(	5146	)
Defence(	5147	)
Defence(	5148	)
Defence(	5149	)
Defence(	5150	)
Defence(	5151	)
Defence(	5152	)
Defence(	5153	)
Defence(	5166	)
Defence(	5167	)
Defence(	5168	)
Defence(	5169	)
Defence(	5170	)
Defence(	5171	)
Defence(	5172	)
Defence(	5173	)
Defence(	5174	)
Defence(	5202	)
Defence(	5203	)
Defence(	5204	)
Defence(	5219	)
Defence(	5241	)
Defence(	5242	)
Defence(	5243	)
Defence(	5244	)
Defence(	5245	)
Defence(	5246	)
Defence(	5247	)
Defence(	5248	)
Defence(	5249	)
Defence(	5250	)
Defence(	5251	)
Defence(	5295	)
Defence(	5296	)
Defence(	5297	)
Defence(	5298	)
Defence(	5309	)
Defence(	5310	)
Defence(	5311	)
Defence(	5323	)
Defence(	5324	)
Defence(	5325	)
Defence(	5326	)
Defence(	5349	)
Defence(	5350	)
Defence(	5351	)
Defence(	5364	)
Defence(	5365	)
Defence(	5366	)
Defence(	5367	)
Defence(	5380	)
Defence(	5381	)
Defence(	5382	)
Defence(	5383	)
Defence(	5396	)
Defence(	5397	)
Defence(	5398	)
Defence(	5399	)
Defence(	5410	)
Defence(	5411	)
Defence(	5412	)
Defence(	5416	)
Defence(	5417	)
Defence(	5418	)
Defence(	5426	)
Defence(	5427	)
Defence(	5438	)
Defence(	5442	)
Defence(	5446	)
Defence(	5464	)
Defence(	5465	)
Defence(	5466	)
Defence(	5467	)
Defence(	5474	)
Defence(	5478	)
Defence(	5482	)
Defence(	5486	)
Other(	5494	)
Other(	5495	)
Other(	5496	)
Other(	5507	)
Other(	5508	)
Other(	5509	)
Other(	5529	)
Other(	5530	)
Other(	5531	)
Other(	5532	)
Other(	5545	)
Other(	5546	)
Other(	5547	)
Other(	5548	)
Other(	5561	)
Other(	5562	)
Other(	5563	)
Other(	5564	)
Other(	5585	)
Other(	5586	)
Other(	5587	)
Other(	5588	)
Other(	5601	)
Other(	5602	)
Other(	5603	)
Other(	5604	)
Other(	5659	)
Other(	5660	)
Other(		)
Other(		)
Other(	5669	)
Other(	5670	)
Other(	5671	)
Other(	5672	)
Other(	5685	)
Other(	5686	)
Other(	5687	)
Other(	5688	)
Other(	5734	)
Other(	5735	)
Other(	5736	)
Other(	5737	)
Other(	5850	)
Other(	5851	)
Other(	5852	)
Other(	5853	)
Other(	5953	)
Other(	5954	)
Other(	5955	)
Other(	5956	)

Other(	5978	)
Other(	5979	)
Other(	5980	)
Other(	5981	)
Other(	5986	)
Other(	5987	)
Other(	5988	)
Other(	5989	)

end 


function simplepro_08 () -- Appareal Ami

	Talk( 1, "\199\228\240\224\241\242\226\243\233, \243 \236\229\237\255 \232\236\229\229\242\241\255 \225\238\235\252\248\238\233 \226\251\225\238\240 \224\239\239\224\240\229\235\229\233 \237\224 \192\236\232." )
	Text( 1, "\202\243\239\232\242\252", BuyPage)
	
	Text( 1, "Хочу 95 Аппы ", JumpPage, 2)

Talk( 2, " Да я хотел бы выкупить!!! " )
Text( 2, " Давай 500 Банок Колы! ", JumpPage, 3)

Talk(3," На вот! ")
InitTrigger()
TriggerCondition( 1, HasItem,7454,500 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerCondition( 1, KitbagLock, 0 )
TriggerAction( 1, TakeItem, 7454,500 )
TriggerAction( 1, GiveItem, 6082,1,4 )
TriggerAction( 1, GiveItem, 6083,1,4 )
TriggerAction( 1, GiveItem, 6084,1,4 )
TriggerAction( 1, GiveItem, 6085,1,4 )
TriggerFailure( 1, JumpPage, 19)
Text(3," Спасибо! ",MultiTrigger,GetMultiTrigger(),1)

Talk( 19, "Прошу, не обманывай меня! " ) -- страница если не достаточно репы
	
	InitTrade()
Defence(	5016	)
Defence(	5020	)
Defence(	5024	)
Defence(	5028	)
Defence(	5032	)
Defence(	5036	)
Defence(	5037	)
Defence(	5038	)
Defence(	5044	)
Defence(	5048	)
Defence(	5052	)
Defence(	5056	)
Defence(	5060	)
Defence(	5064	)
Defence(	5068	)
Defence(	5069	)
Defence(	5130	)
Defence(	5131	)
Defence(	5132	)
Defence(	5133	)
Defence(	5134	)
Defence(	5135	)
Defence(	5136	)
Defence(	5137	)
Defence(	5138	)
Defence(	5139	)
Defence(	5140	)
Defence(	5141	)
Defence(	5175	)
Defence(	5176	)
Defence(	5177	)
Defence(	5178	)
Defence(	5179	)
Defence(	5180	)
Defence(	5181	)
Defence(	5182	)
Defence(	5183	)
Defence(	5184	)
Defence(	5185	)
Defence(	5186	)
Defence(	5187	)
Defence(	5188	)
Defence(	5189	)
Defence(	5190	)
Defence(	5191	)
Defence(	5192	)
Defence(	5193	)
Defence(	5194	)
Defence(	5198	)
Defence(	5199	)
Defence(	5200	)
Defence(	5201	)
Defence(	5252	)
Defence(	5253	)
Defence(	5254	)
Defence(	5255	)
Defence(	5256	)
Defence(	5257	)
Defence(	5258	)
Defence(	5259	)
Defence(	5260	)
Defence(	5261	)
Defence(	5262	)
Defence(	5263	)
Defence(	5299	)
Defence(	5300	)
Defence(	5301	)
Defence(	5302	)
Defence(	5312	)
Defence(	5313	)
Defence(	5314	)
Defence(	5327	)
Defence(	5328	)
Defence(	5329	)
Defence(	5330	)
Defence(	5352	)
Defence(	5353	)
Defence(	5354	)
Defence(	5355	)
Defence(	5368	)
Defence(	5369	)
Defence(	5370	)
Defence(	5371	)
Defence(	5384	)
Defence(	5385	)
Defence(	5386	)
Defence(	5387	)
Defence(	5400	)
Defence(	5401	)
Defence(	5402	)
Defence(	5403	)
Defence(	5413	)
Defence(	5414	)
Defence(	5415	)
Defence(	5419	)
Defence(	5420	)
Defence(	5421	)
Defence(	5428	)
Defence(	5429	)
Defence(	5430	)
Defence(	5431	)
Defence(	5439	)
Defence(	5443	)
Defence(	5447	)
Defence(	5468	)
Defence(	5469	)
Defence(	5470	)
Defence(	5471	)
Defence(	5475	)
Defence(	5479	)
Defence(	5483	)
Defence(	5487	)
Defence(		)
Defence(	5497	)
Defence(	5498	)
Defence(	5499	)
Defence(	5500	)
Other(	5510	)
Other(	5511	)
Other(	5512	)
Other(	5513	)
Other(		)
Other(	5517	)
Other(	5518	)
Other(	5519	)
Other(	5533	)
Other(	5534	)
Other(	5535	)
Other(	5536	)
Other(	5549	)
Other(	5550	)
Other(	5551	)
Other(	5552	)
Other(	5565	)
Other(	5566	)
Other(	5567	)
Other(	5568	)
Other(	5589	)
Other(	5590	)
Other(	5591	)
Other(	5592	)
Other(	5605	)
Other(	5606	)
Other(	5607	)
Other(	5608	)
Other(	5673	)
Other(	5674	)
Other(	5675	)
Other(	5676	)
Other(	5689	)
Other(	5690	)
Other(	5691	)
Other(	5692	)
Other(	5738	)
Other(	5739	)
Other(	5740	)
Other(	5741	)
Other(	5854	)
Other(	5855	)
Other(	5856	)
Other(	5857	)
Other(	5957	)
Other(	5958	)
Other(	5959	)
Other(	5960	)

Other(	5982	)
Other(	5983	)
Other(	5984	)
Other(	5985	)
Other(	5986	)
Other(	5987	)
Other(	5988	)
Other(	5989	)

end 

function simplepro_11 () -- Appareal Fillis

	Talk( 1, "Покупай свежие поставки украшений для оружий." )
	Text( 1, "Купить ", BuyPage)


	InitTrade()
	
	
	Weapon(	5001	)
	Weapon(	5002	)
	Weapon(	5007	)
	Weapon(	5008	)
	Weapon(	5991	)
	Weapon(	5990	)
	Weapon(	5449	)
	Weapon(	5285	)
	Weapon(	5284	)
	Weapon(	5283	)
	Weapon(	5276	)
	Weapon(	5213	)
	Weapon(	5208	)
	Weapon(	5070	)
	Weapon(	5003	)
	Weapon(	5009	)
	Weapon(	5450	)
	Weapon(	5277	)
	Weapon(	5214	)
	Weapon(	5209	)
	Weapon(	5071	)
	Weapon(	5004	)
	Weapon(	5010	)
	Weapon(	5453	)
	Weapon(	5454	)
	Weapon(	5282	)
	Weapon(	5452	)
	Weapon(	5451	)
	Weapon(	5006	)
	Weapon(	5012	)
	Weapon(	5280	)
	Weapon(	5216	)
	Weapon(	5073	)
	Weapon(	5286	)
	Weapon(	5281	)
	Weapon(	5279	)
	Weapon(	5215	)
	Weapon(	5210	)
	Weapon(	5072	)
	Weapon(	5005    )
	Weapon( 5448    )
	Other(	5625	)
	Other(	5626	)
	Other(	5627	)
	Other(	5628	)
	Other(	5629	)
	Other(	5630	)
	Other(	5631	)
	Other(	5632	)
	Other(	5633	)
	Other(	5634	)
	Other(	5635	)
	Other(	5636	)
	Other(	5637	)
	Other(	5638	)
	Other(	5639	)
	Other(	5640	)
	Other(	5641	)
	Other(	5642	)
	Other(	5643	)
	Other(	5609	)
	Other(	5610	)
	Other(	5611	)
	Other(	5612	)
	Other(	5613	)
	Other(	5614	)
	Other(	5615	)
	Other(	5616	)
	Other(	5617	)
	Other(	5618	)
	Other(	5619	)
	Other(	5620	)
	Other(	5621	)
	Other(	5622	)
	Other(	5623	)
	

end

function PVP_npc()

	Talk( 1, "PvP \240\229\230\232\236" ) -- PvP режим
	Text( 1, "\194\234\235\254\247\232\242\252 PK \241\242\224\242\243\241 ", JumpPage, 2) -- Включить PK статус
	Text( 1, " \194\251\234\235\254\247\232\242\252 PK \241\242\224\242\243\241  ", JumpPage, 3) -- Выключить PK статус
	
	InitTrigger()
	TriggerAction( 1, SetPkState, 1 ) -- Устанавливаем PK статус на 1. Т.е. включаем
	TriggerAction(1,SystemNotice, "\194\251 \226\238\248\235\232 \226 PK \241\242\224\242\243\241. \210\229\239\229\240\252 \194\251 \236\238\230\229\242\229 \237\224\239\224\228\224\242\252 \237\224 \228\240\243\227\232\245 \232\227\240\238\234\238\226, \243 \234\238\242\238\240\251\245 \242\238\230\229 \226\234\235\254\247\229\237 PK \241\242\224\242\243\241.  " ) -- Сообщение в систему "Вы вошли в PK статус. Теперь Вы можете нападать на других игроков, у которых тоже включен PK статус. " 
	TriggerFailure( 1, JumpPage, 4 ) -- Если не удалось включить PK статус нас откинет на 4 страницу
	Talk( 2, " \194\251 \228\229\233\241\242\226\232\242\229\235\252\237\238 \245\238\242\232\242\229 \226\234\235\254\247\232\242\252 PvP \240\229\230\232\236? ")
	Text( 2, " \194\234\235\254\247\232\242\252 PK \241\242\224\242\243\241 ", MultiTrigger, GetMultiTrigger(), 1) --Включить PK статус
	
	InitTrigger()
	TriggerAction( 1, SetPkState, 0 ) -- Устанавливаем PK статус на 0. Т.е. отключаем
	TriggerAction(1,SystemNotice, "PK статус выключен." ) -- Сообщение в систему "PK статус выключен." 
	TriggerFailure( 1, JumpPage, 4 ) -- Если не удалось включить PK статус нас откинет на 4 страницу
	Talk( 3, " \194\251 \228\229\233\241\242\226\232\242\229\235\252\237\238 \245\238\242\232\242\229 \226\251\234\235\254\247\232\242\252 PvP \240\229\230\232\236? " ) --Вы действительно хотите выключить PvP режим?
	Text( 3, " \194\251\234\235\254\247\232\242\252 PK \241\242\224\242\243\241 ", MultiTrigger, GetMultiTrigger(), 1) -- Выключить PK статус


	Talk( 4, " \205\229 \243\228\224\235\238\241\252 \226\238\233\242\232 \226 PVP \240\229\230\232\236  " ) -- Не удалось войти в PVP режим 
	

end

function Spirit_10 () 

	Talk( 1, "Exchanger: Выберете оружие !заметка: 600 карт болотного духа на 95 ансилы " )
	Text( 1, " Искупление Чести ( голова ) ", JumpPage,3)
	Text( 1, " Страж Чести ( тело) ", JumpPage, 4)
	Text( 1, " Благославление Чести ( руки ) ", JumpPage,5 )
	Text( 1, " Милосердие Чести ( ноги ) ", JumpPage, 6)
	Text( 1, " следующяя страница ", JumpPage,12 )
	Text( 12, " Искупление Жертвы ( голова ) ", JumpPage, 14)
	Text( 12, " Страж Жертвы ( тело ) ", JumpPage, 15)
	Text( 12, " Благославление Жертвы ( руки ) ", JumpPage, 16)
	Text( 12, " Милосердие Жертвы ( ноги ) ", JumpPage, 17)
	
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3499, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(2,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3500, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(3,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3501, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(4,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3502, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(5,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3503, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(6,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3510, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(13,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3511, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(14,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3512, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(15,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3513, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(16,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3514, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(17,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

end

function Spirit_11 () 

	Talk( 1, "Exchanger: Выберете оружие !заметка: 600 карт болотного духа на 95 ансилы " )
	Text( 1, " Искупление Эпической Доблести( голова ) ", JumpPage,3)
	Text( 1, " Страж Эпической Доблести ( тело) ", JumpPage,4)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3505, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(3,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3506, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(4,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

end

function Spirit_12 () 

	Talk( 1, "Exchanger: Выберете оружие !заметка: 600 карт болотного духа на 95 ансилы " )
	Text( 1, " Искупление Жертвы ( голова ) ", JumpPage, 3)
	Text( 1, " Страж Жертвы ( тело ) ", JumpPage, 4)
	Text( 1, " Благославление Жертвы ( руки ) ", JumpPage, 5)
	Text( 1, " Милосердие Жертвы ( ноги ) ", JumpPage, 6)
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3510, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(2,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3511, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(3,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3512, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(4,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3513, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(5,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3514, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(6,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

end

function Spirit_13 () 

	Talk( 1, "Exchanger: Выберете оружие !заметка: 600 карт болотного духа на 95 ансилы " )
	Text( 1, " Искупление Правосудия ( голова) ", JumpPage, 3)
	Text( 1, " Страж Правосудия ( тело ) ", JumpPage, 4)
	Text( 1, " Благославление Правосудия ( руки ) ", JumpPage, 5)
	Text( 1, " Милосердие Правосудия ( ноги ) ", JumpPage,6)
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3515, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(2,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3516, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(3,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3517, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(4,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3518, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(5,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3519, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(6,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

end

function Spirit_14 () 

	Talk( 1, "Exchanger: Выберете оружие !заметка: 600 карт болотного духа на 95 ансилы " )
	Text( 1, " Искупление Сочувствия ( голова ) ", JumpPage,3)
	Text( 1, " Страж Сочувствия ( тело ) ", JumpPage,4)
	Text( 1, " Благославление Сочувствия ( руки ) ", JumpPage,5)
	Text( 1, " Милосердие Сочувствия ( ноги ) ", JumpPage,6)
	Text( 1, " следующяя страница ", JumpPage,12 )
	Text( 12, " Искупление Вдохновения ( голова) ", JumpPage,8)
	Text( 12, " Страж Вдохновения ( тело ) ", JumpPage,9 )
	Text( 12, " Благославление Вдохновения ( руки) ", JumpPage, 10)
	Text( 12, " Милосердие Вдохновения ( ноги) ", JumpPage, 11)
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3520, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(2,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3521, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(3,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3522, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(4,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3523, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(5,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3524, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(6,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3525, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(7,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3526, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(8,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3527, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(9,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3528, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(10,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3555, 600 )	
	TriggerAction( 1, TakeItem, 3555, 600 )
	TriggerAction( 1, GiveItem, 3529, 1, 4 )
	TriggerAction( 1, JumpPage, 38 )
	TriggerFailure( 1, JumpPage, 37 )
	Text(11,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

end

function Spirit_Exc () 

	Talk( 1, "Exchanger:Я распечатаю ваш 95 ансил за 20 рун каждого вида:Учтивости,Благочестия,Сострадания,Храбрости,Льда!" )
	Text( 1, " Меч Небес ", JumpPage, 5 )
	Text( 1, " Щит Кавалериста ", JumpPage, 6 )
	Text( 1, " Карающий Лук ", JumpPage, 7 )
	Text( 1, " Оружие правосудия ", JumpPage, 8 )
	Text( 1, " Бесшумное Лезвие ", JumpPage, 9 )
	Text( 1, " Нержавеющий Меч ", JumpPage, 10 )
	Text( 1, " Посох Жертвы ", JumpPage,11 )
	Text( 1, " Посох Жизни ", JumpPage,12 )

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6231, 20 )	
	TriggerAction( 1, TakeItem, 6231, 20 )
	TriggerCondition( 1, HasItem, 6232, 20 )	
	TriggerAction( 1, TakeItem, 6232, 20 )
	TriggerCondition( 1, HasItem, 6233, 20 )	
	TriggerAction( 1, TakeItem, 6233, 20 )
	TriggerCondition( 1, HasItem, 6234, 20 )	
	TriggerAction( 1, TakeItem, 6234, 20 )
	TriggerCondition( 1, HasItem, 7138, 20 )	
	TriggerAction( 1, TakeItem, 7138, 20 )
	TriggerCondition( 1, HasItem, 6165, 1 )	
	TriggerAction( 1, TakeItem, 6165, 1 )
	TriggerAction( 1, GiveItem, 3499, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(5,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6231, 20 )	
	TriggerAction( 1, TakeItem, 6231, 20 )
	TriggerCondition( 1, HasItem, 6232, 20 )	
	TriggerAction( 1, TakeItem, 6232, 20 )
	TriggerCondition( 1, HasItem, 6233, 20 )	
	TriggerAction( 1, TakeItem, 6233, 20 )
	TriggerCondition( 1, HasItem, 6234, 20 )	
	TriggerAction( 1, TakeItem, 6234, 20 )
	TriggerCondition( 1, HasItem, 7138, 20 )	
	TriggerAction( 1, TakeItem, 7138, 20 )
	TriggerCondition( 1, HasItem, 6166, 1 )	
	TriggerAction( 1, TakeItem, 6166, 1 )
	TriggerAction( 1, GiveItem, 6097, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(6,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6231, 20 )	
	TriggerAction( 1, TakeItem, 6231, 20 )
	TriggerCondition( 1, HasItem, 6232, 20 )	
	TriggerAction( 1, TakeItem, 6232, 20 )
	TriggerCondition( 1, HasItem, 6233, 20 )	
	TriggerAction( 1, TakeItem, 6233, 20 )
	TriggerCondition( 1, HasItem, 6234, 20 )	
	TriggerAction( 1, TakeItem, 6234, 20 )
	TriggerCondition( 1, HasItem, 7138, 20 )	
	TriggerAction( 1, TakeItem, 7138, 20 )
	TriggerCondition( 1, HasItem, 6167, 1 )	
	TriggerAction( 1, TakeItem, 6167, 1 )
	TriggerAction( 1, GiveItem, 3504, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(7,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6231, 20 )	
	TriggerAction( 1, TakeItem, 6231, 20 )
	TriggerCondition( 1, HasItem, 6232, 20 )	
	TriggerAction( 1, TakeItem, 6232, 20 )
	TriggerCondition( 1, HasItem, 6233, 20 )	
	TriggerAction( 1, TakeItem, 6233, 20 )
	TriggerCondition( 1, HasItem, 6234, 20 )	
	TriggerAction( 1, TakeItem, 6234, 20 )
	TriggerCondition( 1, HasItem, 7138, 20 )	
	TriggerAction( 1, TakeItem, 7138, 20 )
	TriggerCondition( 1, HasItem, 6168, 1 )	
	TriggerAction( 1, TakeItem, 6168, 1 )
	TriggerAction( 1, GiveItem, 3509, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(8,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6231, 20 )	
	TriggerAction( 1, TakeItem, 6231, 20 )
	TriggerCondition( 1, HasItem, 6232, 20 )	
	TriggerAction( 1, TakeItem, 6232, 20 )
	TriggerCondition( 1, HasItem, 6233, 20 )	
	TriggerAction( 1, TakeItem, 6233, 20 )
	TriggerCondition( 1, HasItem, 6234, 20 )	
	TriggerAction( 1, TakeItem, 6234, 20 )
	TriggerCondition( 1, HasItem, 7138, 20 )	
	TriggerAction( 1, TakeItem, 7138, 20 )
	TriggerCondition( 1, HasItem, 6169, 1 )	
	TriggerAction( 1, TakeItem, 6169, 1 )
	TriggerAction( 1, GiveItem, 3515, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(9,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6231, 20 )	
	TriggerAction( 1, TakeItem, 6231, 20 )
	TriggerCondition( 1, HasItem, 6232, 20 )	
	TriggerAction( 1, TakeItem, 6232, 20 )
	TriggerCondition( 1, HasItem, 6233, 20 )	
	TriggerAction( 1, TakeItem, 6233, 20 )
	TriggerCondition( 1, HasItem, 6234, 20 )	
	TriggerAction( 1, TakeItem, 6234, 20 )
	TriggerCondition( 1, HasItem, 7138, 20 )	
	TriggerAction( 1, TakeItem, 7138, 20 )
	TriggerCondition( 1, HasItem, 6170, 1 )	
	TriggerAction( 1, TakeItem, 6170, 1 )
	TriggerAction( 1, GiveItem, 3510, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(10,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6231, 20 )	
	TriggerAction( 1, TakeItem, 6231, 20 )
	TriggerCondition( 1, HasItem, 6232, 20 )	
	TriggerAction( 1, TakeItem, 6232, 20 )
	TriggerCondition( 1, HasItem, 6233, 20 )	
	TriggerAction( 1, TakeItem, 6233, 20 )
	TriggerCondition( 1, HasItem, 6234, 20 )	
	TriggerAction( 1, TakeItem, 6234, 20 )
	TriggerCondition( 1, HasItem, 7138, 20 )	
	TriggerAction( 1, TakeItem, 7138, 20 )
	TriggerCondition( 1, HasItem, 6171, 1 )	
	TriggerAction( 1, TakeItem, 6171, 1 )
	TriggerAction( 1, GiveItem, 3525, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(11,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 6231, 20 )	
	TriggerAction( 1, TakeItem, 6231, 20 )
	TriggerCondition( 1, HasItem, 6232, 20 )	
	TriggerAction( 1, TakeItem, 6232, 20 )
	TriggerCondition( 1, HasItem, 6233, 20 )	
	TriggerAction( 1, TakeItem, 6233, 20 )
	TriggerCondition( 1, HasItem, 6234, 20 )	
	TriggerAction( 1, TakeItem, 6234, 20 )
	TriggerCondition( 1, HasItem, 7138, 20 )	
	TriggerAction( 1, TakeItem, 7138, 20 )
	TriggerCondition( 1, HasItem, 6172, 1 )	
	TriggerAction( 1, TakeItem, 6172, 1 )
	TriggerAction( 1, GiveItem, 3520, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(12,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	Talk( 26, "У вас нет необходимых вещей!" )
	Talk( 27, "Можете одеть ваше оружие!" )
end

function JoJo_06 () -- Newbie Quests

	Talk( 1, "Newbie Quest:welcome here for Newbie Quest" )
	Text( 1, "ID of Quest", JumpPage,2 )

	AddNpcMission(1122)
	AddNpcMission(1130)
	AddNpcMission(1135)

	Text( 2, "Newbie Quest", JumpPage,3 )
	Text( 2, "Newbie Quest 2", JumpPage,4 )
	Text( 2, "Newbie Quest 3", JumpPage,5 )

	Talk( 3, "1620 | 3116 | 3130" )

	Talk( 4, "855" )

	Talk( 5, "2588" )
end

function JoJo_07 () -- Equips Quest

	Talk( 1, "Equips Quests" )
	Text( 1, "ID of Quest", JumpPage,2 )

	AddNpcMission(9977)
	AddNpcMission(9966)
	AddNpcMission(9955)
	AddNpcMission(9944)
	AddNpcMission(9933)
	AddNpcMission(9922)
	AddNpcMission(9911)

	Talk( 2, "2476" )
end

function JoJo_08 () -- Higher level Quest

	Talk( 1, "Higher Level Quests:Hi! im Leveler Quest" )
	Text( 1, "ID of Quest", JumpPage,2 )

	AddNpcMission(1123)
	AddNpcMission(1124)

	Text( 2, "Lv80-90", JumpPage,3 )
	Text( 2, "Lv90-150", JumpPage,4 )

	Talk( 3, "2605 | 3085 | 4783" )
	Talk( 4, "3453 | 3826" )
end

function ingrysty()
Talk( 1, "Я обмениваю ансы 45 на 10 новых пергаментов " )
Text( 1, "Хочу хочу ", SendExchangeXData)

InitExchangeX()

ExchangeDataX( 684 , 10 , 786 , 1 , 1)
ExchangeDataX( 684 , 10 , 778 , 1 , 1)
ExchangeDataX( 684 , 10 , 774 , 1 , 1)
ExchangeDataX( 684 , 10 , 790 , 1 , 1)
ExchangeDataX( 684 , 10 , 764 , 1 , 1)
ExchangeDataX( 684 , 10 , 804 , 1 , 1)
ExchangeDataX( 684 , 10 , 793 , 1 , 1)
ExchangeDataX( 684 , 10 , 796 , 1 , 1)
ExchangeDataX( 684 , 10 , 771 , 1 , 1)
ExchangeDataX( 684 , 10 , 800 , 1 , 1)
ExchangeDataX( 684 , 10 , 767 , 1 , 1)
ExchangeDataX( 684 , 10 , 782 , 1 , 1)

end  

function ingrysty1()
Talk( 1, "Я обмениваю ансы 55 на 1 изменчивую руну " )
Text( 1, "Хочу хочу ", SendExchangeXData)

InitExchangeX()

ExchangeDataX( 1028 , 1 , 877 , 1 , 1)
ExchangeDataX( 1028 , 1 , 815 , 1 , 1)
ExchangeDataX( 1028 , 1 , 810 , 1 , 1)
ExchangeDataX( 1028 , 1 , 809 , 1 , 1)
ExchangeDataX( 1028 , 1 , 808 , 1 , 1)
ExchangeDataX( 1028 , 1 , 807 , 1 , 1)
ExchangeDataX( 1028 , 1 , 805 , 1 , 1)
ExchangeDataX( 1028 , 1 , 801 , 1 , 1)
ExchangeDataX( 1028 , 1 , 787 , 1 , 1)
ExchangeDataX( 1028 , 1 , 783 , 1 , 1)
ExchangeDataX( 1028 , 1 , 779 , 1 , 1)
ExchangeDataX( 1028 , 1 , 775 , 1 , 1)
ExchangeDataX( 1028 , 1 , 772 , 1 , 1)
ExchangeDataX( 1028 , 1 , 768 , 1 , 1)
ExchangeDataX( 1028 , 1 , 765 , 1 , 1)
ExchangeDataX( 1028 , 1 , 791 , 1 , 1)
ExchangeDataX( 1028 , 1 , 794 , 1 , 1)
ExchangeDataX( 1028 , 1 , 797 , 1 , 1)
ExchangeDataX( 1028 , 1 , 811 , 1 , 1)
ExchangeDataX( 1028 , 1 , 812 , 1 , 1)

end  

function ingrysty2()
Talk( 1, "Я обмениваю ансы 65 на 2 изменчивой руны " )
Text( 1, "Хочу хочу ", SendExchangeXData)

InitExchangeX()

ExchangeDataX( 1028 , 2 , 773 , 1 , 1)
ExchangeDataX( 1028 , 2 , 776 , 1 , 1)
ExchangeDataX( 1028 , 2 , 788 , 1 , 1)
ExchangeDataX( 1028 , 2 , 795 , 1 , 1)
ExchangeDataX( 1028 , 2 , 802 , 1 , 1)
ExchangeDataX( 1028 , 2 , 784 , 1 , 1)
ExchangeDataX( 1028 , 2 , 769 , 1 , 1)
ExchangeDataX( 1028 , 2 , 798 , 1 , 1)
ExchangeDataX( 1028 , 2 , 780 , 1 , 1)
ExchangeDataX( 1028 , 2 , 806 , 1 , 1)
ExchangeDataX( 1028 , 2 , 792 , 1 , 1)
ExchangeDataX( 1028 , 2 , 766 , 1 , 1)

end

function ingrysty3()
Talk( 1, "Я обмениваю всякие разности на что нибудь вкусненькое " )
Text( 1, "Хочу хочу ", SendExchangeXData)

InitExchangeX()

ExchangeDataX( 681 , 2 , 7125 , 1 , 1)
ExchangeDataX( 7125 , 2 , 7126 , 1 , 1)
ExchangeDataX( 6249 , 10 , 7002 , 1 , 1)
ExchangeDataX( 6249 , 15 , 5702 , 1 , 1)
ExchangeDataX( 3116 , 35 , 1812 , 1 , 1)

end

function ghfr3 ()

	Talk( 1, "Обмен на Карту перерождения: Нужно 10 ангельских костей, 10 мощь (Грома, Мороза, Ветра, Огонь) " )
	Text( 1, "Хочу хочу ", JumpPage, 5)

	InitTrigger()
	Talk( 5, "У вас точно все есть? ну тогда обменивайте " )
	TriggerCondition( 1, LvCheck, ">", 85 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 271, 10 )
	TriggerCondition( 1, HasItem, 270, 10 )
	TriggerCondition( 1, HasItem, 269, 10 )
	TriggerCondition( 1, HasItem, 268, 10 )
	TriggerCondition( 1, HasItem, 267, 10 )	
	TriggerAction( 1, TakeItem, 271, 10 )
	TriggerAction( 1, TakeItem, 270, 10 )
	TriggerAction( 1, TakeItem, 269, 10 )
	TriggerAction( 1, TakeItem, 268, 10 )
	TriggerAction( 1, TakeItem, 267, 10 )
	TriggerAction( 1, GiveItem, 2941, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(5,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	Talk( 26, "Обмен прошел не удачно " )
	Talk( 27, "Обмен прошел удачно " )

end

function ghfr9 ()

	Talk( 1, "Я обменник на свитки колец и ожерельев! " )
	Text( 1, "Свиток колец ", JumpPage, 5)
	Text( 1, "Свиток ожерельев ", JumpPage, 6)

	InitTrigger()
	Talk( 5, "Нужно по 10 расписок, 1;2;3 приз! " )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2668, 10 )
	TriggerCondition( 1, HasItem, 2667, 10 )
	TriggerCondition( 1, HasItem, 2666, 10 )	
	TriggerAction( 1, TakeItem, 2668, 10 )
	TriggerAction( 1, TakeItem, 2667, 10 )
	TriggerAction( 1, TakeItem, 2666, 10 )
	TriggerAction( 1, GiveItem, 580, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(5,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	Talk( 6, "Нужно по 10 расписок, 1;2;3 приз! " )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2668, 10 )
	TriggerCondition( 1, HasItem, 2667, 10 )
	TriggerCondition( 1, HasItem, 2666, 10 )	
	TriggerAction( 1, TakeItem, 2668, 10 )
	TriggerAction( 1, TakeItem, 2667, 10 )
	TriggerAction( 1, TakeItem, 2666, 10 )
	TriggerAction( 1, GiveItem, 581, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(6,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	Talk( 26, "Обмен прошел не удачно " )
	Talk( 27, "Обмен прошел удачно " )

end


function old2()


	Talk( 1,  "Продовщица фей: Приветик, я тебе могу предложить все для феи, заходи!) " )
	Text( 1,  "Посмотреть ", BuyPage )
	Text( 1,  "Свадьба фей ", OpenEidolonMetempsychosis )

		InitTrade()
	Defence(	0280	)
	Defence(	0681	)
        Defence(	0239	)
	Defence(	0279	)
	Defence(	0278	)
	Defence(	0277	)
	Defence(	0276	)
	Defence(	  226)
	Defence(	  225)
	Defence(	  222)
	Defence(	  224)
	Defence(	0260	)
	Defence(	0253	)
	Defence(	0250	)
	Defence(	0223	)
	Defence(	0247	)
	Defence(	0244	)
	Defence(	2312	)
	Defence(	3918	)
	Defence(      578	)
	Defence(    3919	)
	Defence(	 3920)
	Defence(	 3921)
	Defence(	 3922)
	Defence(	 3925)
	

		
end


function ghfr25 ()

	Talk( 1, "Я обменник Монет Фей на что нибудь вкусное " )
	Text( 1, "МФ на деньги ", JumpPage, 5)
	Text( 1, "Получить 10 дерева ", JumpPage, 6)
	--Text( 1, "Крылья бабочки ", JumpPage, 7)
	--Text( 1, "Дьявольские крылья ", JumpPage, 8)
	--Text( 1, "Крылья дракона ", JumpPage, 9)
	--Text( 1, "Вампирские крылья ", JumpPage, 10)
	--Text( 1, "Радужные крылья ", JumpPage, 11)

	InitTrigger()
	Talk( 5, "За 50 мф, я тебе дам 50к денег " )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 855, 50 )	
	TriggerAction( 1, TakeItem, 855, 50 )
	TriggerAction( 1, AddMoney, 50000 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(5,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	Talk( 6, "Нужно 300 МФ для обмена на 10 дерево " )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 855, 300 )	
	TriggerAction( 1, TakeItem, 855, 300 )
	TriggerAction( 1, GiveItem, 4543, 10, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(6,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	Talk( 7, "Нужно 100 Нержавеющей стали | 300 Высохший корня " )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 4915, 300 )
	TriggerCondition( 1, HasItem, 3370, 100 )	
	TriggerAction( 1, TakeItem, 4915, 300 )
	TriggerAction( 1, TakeItem, 3370, 100 )
	TriggerAction( 1, GiveItem, 935, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(7,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	Talk( 8, "Нужно 100 Нержавеющей стали | 300 Высохший корня " )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 4915, 300 )
	TriggerCondition( 1, HasItem, 3370, 100 )	
	TriggerAction( 1, TakeItem, 4915, 300 )
	TriggerAction( 1, TakeItem, 3370, 100 )
	TriggerAction( 1, GiveItem, 906, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(8,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	Talk( 9, "Нужно 100 Нержавеющей стали | 300 Высохший корня " )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 4915, 300 )
	TriggerCondition( 1, HasItem, 3370, 100 )	
	TriggerAction( 1, TakeItem, 4915, 300 )
	TriggerAction( 1, TakeItem, 3370, 100 )
	TriggerAction( 1, GiveItem, 905, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(9,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	Talk( 10, "Нужно 100 Нержавеющей стали | 300 Высохший корня " )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 4915, 300 )
	TriggerCondition( 1, HasItem, 3370, 100 )	
	TriggerAction( 1, TakeItem, 4915, 300 )
	TriggerAction( 1, TakeItem, 3370, 100 )
	TriggerAction( 1, GiveItem, 904, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(10,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	Talk( 11, "Нужно 100 Нержавеющей стали | 300 Высохший корня " )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 4915, 300 )
	TriggerCondition( 1, HasItem, 3370, 100 )	
	TriggerAction( 1, TakeItem, 4915, 300 )
	TriggerAction( 1, TakeItem, 3370, 100 )
	TriggerAction( 1, GiveItem, 142, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(11,"Обменять " ,MultiTrigger,GetMultiTrigger(),1)

	Talk( 26, "Обмен прошел не удачно " )
	Talk( 27, "Обмен прошел удачно " )

end

function r_LiveExp()

	Talk( 1, "Здравствуй, я даю за 3кк, 1 мирное очко " )
	Text( 1, "Обменять ", JumpPage, 2)

	Talk(2,"Точно хочешь?) ")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, AddExpAndType,2,20000,20000)
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, JumpPage, 4 )
	Text(2,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk( 3, "К сожелению у тебя не хватает денег ")
	Talk( 4, "Ты получил 1 мирное очко ")

end

function r_LiveEx()

	Talk( 1, "Здравствуй, я обменник РБ. " )
	Text( 1, "Камень перерождения ", JumpPage, 2)


	Text( 1, "Я хочу переродится ! ", JumpPage, 6)

	Talk( 6, "Кем ты хочешь стать мой повелитель !?" )
	Text( 6, "Я Буду Мечником ! ", GetChaName1_born, 1)
	Text( 6, "Я Буду Чемпионом ! ", GetChaName2_born, 1)
	Text( 6, "Я Буду Воем ! ", GetChaName3_born, 1)
	Text( 6, "Я Буду Шарпом ! ", GetChaName4_born, 1)
	Text( 6, "Я Буду Целителем ! ", GetChaName5_born, 1)
	Text( 6, "Я Буду Ведьмой ! ", GetChaName6_born, 1)
	Text( 6, "Я ухожу , не туда зашел !", CloseTalk)

	Talk(2,"За 100кк ты его получишь ")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000000 )
	TriggerAction( 1, TakeMoney, 100000000 )
	TriggerAction( 1, GiveItem, 2235, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	TriggerAction( 1, JumpPage, 4 )
	Text(2,"Да ",MultiTrigger,GetMultiTrigger(),1)

	Talk( 3, "К сожелению у тебя не хватает денег ")
	Talk( 4, "Ты получил Камень перерождения ")

end

function r_Live()

	Talk(1, "Здравствуй пацан, куда ты хочешь полететь?")
	Text(1, "Затерянный город ", GoTo, 304, 305, "abandonedcity")
	Text(1, "Темная топь ", GoTo, 327, 333, "darkswamp")
	Text(1, "Уйти", CloseTalk)

end

function npc_job ()

	Talk( 1, "Сменщик проффесий: Привет! Я учу проффесиям." )
	Text( 1, " Первая проффесия ", JumpPage, 2)
	Text( 1, " Вторая проффесия ", JumpPage, 3)
	Text( 1, " Пока.... ",  CloseTalk)


	Talk( 2, "Для получения требуется 9 лвл и 1к голда! " )
	Text( 2, " Мечник ", JumpPage, 4 )
	Text( 2, " Хантер ", JumpPage, 5 )
	Text( 2, " Знахарка ", JumpPage, 6 )
	Text( 2, " Путешевственник ", JumpPage, 7 )
	Text( 2, " Назад ", JumpPage, 1 )

	Talk( 3, "Для получения требуется 40 лвл и 50к голда! " )
	Text( 3, "Хочу быть крузом!", JumpPage, 8 )
	Text( 3, "Хочу быть чампом!", JumpPage, 9 )
	Text( 3, "Хочу быть шарпом!", JumpPage, 10 )
	Text( 3, "Хочу быть клером!", JumpPage, 11 )
	Text( 3, "Хочу быть ведьмой!", JumpPage, 12 )
	Text( 3, "Хочу быть воем!", JumpPage, 13 )
	Text( 3, "Нехочу ни кем быть...", JumpPage, 1 )

	Talk( 4, "У тебя уже есть 9 лвл и 1к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000,1000 )
	TriggerAction( 1, TakeMoney, 1000,1000 )
	TriggerAction( 1, SetProfession, 1 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 8 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000,1000 )
	TriggerAction( 2, TakeMoney, 1000,1000 )
	TriggerAction( 2, SetProfession, 1 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerCondition( 3, LvCheck, ">", 8 )
	TriggerCondition( 3, IsCategory, 3 )
	TriggerCondition( 3, PfEqual, 0 )
	TriggerCondition( 3, HasMoney, 1000,1000 )
	TriggerAction( 3, TakeMoney, 1000,1000 )
	TriggerAction( 3, SetProfession, 1 )
	TriggerAction( 3, JumpPage, 14 )
	TriggerFailure( 3, JumpPage, 15 )
	Text( 4, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 4, "Перейти к выбору проф ", JumpPage, 2 )

	Talk( 5, "У тебя уже есть 9 лвл и 1к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000,1000 )
	TriggerAction( 1, TakeMoney, 1000,1000 )
	TriggerAction( 1, SetProfession, 2 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 8 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000,1000 )
	TriggerAction( 2, TakeMoney, 1000,1000 )
	TriggerAction( 2, SetProfession, 2 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerFailure( 2, JumpPage, 15 )
	Text( 5, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 2)
	Text( 5, "Перейти к выбору проф ", JumpPage, 2 )


	Talk( 6, "У тебя уже есть 9 лвл и 1к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000,1000 )
	TriggerAction( 1, TakeMoney, 1000,1000 )
	TriggerAction( 1, SetProfession, 5 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 8 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000,1000 )
	TriggerAction( 2, TakeMoney, 1000,1000 )
	TriggerAction( 2, SetProfession, 5 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerFailure( 2, JumpPage, 15 )
	Text( 6, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 2)
	Text( 6, "Перейти к выбору проф ", JumpPage, 2 )

	Talk( 7, "У тебя уже есть 9 лвл и 1к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000,1000 )
	TriggerAction( 1, TakeMoney, 1000,1000 )
	TriggerAction( 1, SetProfession, 4 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 8 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000,1000 )
	TriggerAction( 2, TakeMoney, 1000,1000 )
	TriggerAction( 2, SetProfession, 4 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerCondition( 3, LvCheck, ">", 8 )
	TriggerCondition( 3, IsCategory, 4 )
	TriggerCondition( 3, PfEqual, 0 )
	TriggerCondition( 3, HasMoney, 1000,1000 )
	TriggerAction( 3, TakeMoney, 1000,1000 )
	TriggerAction( 3, SetProfession, 4 )
	TriggerAction( 3, JumpPage, 14 )
	TriggerFailure( 3, JumpPage, 15 )
	Text( 7, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 7, "Перейти к выбору проф ", JumpPage, 2 )


	Talk( 8, "У тебя уже есть 40 лвл и 50к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 9 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 1 )
	TriggerCondition( 2, HasMoney, 50000,50000 )
	TriggerAction( 2, TakeMoney, 50000,50000 )
	TriggerAction( 2, SetProfession, 9 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerFailure( 2, JumpPage, 15 )
	Text( 8, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 2)
	Text( 8, "Перейти к выбору проф", JumpPage, 2 )

	Talk( 9, "У тебя уже есть 40 лвл и 50к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 2 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, HasMoney, 50000, 50000)
	TriggerAction( 1, SetProfession, 8 )
	TriggerAction( 1, TakeMoney, 50000, 50000 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerFailure( 1, JumpPage, 15 )
	Text( 9, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 9, "Перейти к выбору проф ", JumpPage, 2 )

	Talk( 10, "У тебя уже есть 40 лвл и 50к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 12 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 50000,50000 )
	TriggerAction( 2, TakeMoney, 50000,50000 )
	TriggerAction( 2, SetProfession, 12 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerFailure( 2, JumpPage, 15 )
	Text( 10, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 2)
	Text( 10, "Перейти к выбору проф ", JumpPage, 2 )

	Talk( 11, "У тебя уже есть 40 лвл и 50к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 5 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 13 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 5 )
	TriggerCondition( 2, HasMoney, 50000,50000 )
	TriggerAction( 2, TakeMoney, 50000,50000 )
	TriggerAction( 2, SetProfession, 13 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerFailure( 2, JumpPage, 15 )
	Text( 11, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 2)
	Text( 11, "Перейти к выбору проф ", JumpPage, 2 )

	Talk( 12, "У тебя уже есть 40 лвл и 50к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 5 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 14 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 5 )
	TriggerCondition( 2, HasMoney, 50000,50000 )
	TriggerAction( 2, TakeMoney, 50000,50000 )
	TriggerAction( 2, SetProfession, 14 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerFailure( 2, JumpPage, 15 )
	Text( 12, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 2)
	Text( 12, "Перейти к выбору проф ", JumpPage, 2 )

	Talk( 13, "У тебя уже есть 40 лвл и 50к золота? ну выберай =) " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 4 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 16 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 4 )
	TriggerCondition( 2, HasMoney, 50000,50000 )
	TriggerAction( 2, TakeMoney, 50000,50000 )
	TriggerAction( 2, SetProfession, 16 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerCondition( 3, LvCheck, ">", 39 )
	TriggerCondition( 3, IsCategory, 4 )
	TriggerCondition( 3, PfEqual, 4 )
	TriggerCondition( 3, HasMoney, 50000,50000 )
	TriggerAction( 3, TakeMoney, 50000,50000 )
	TriggerAction( 3, SetProfession, 16 )
	TriggerAction( 3, JumpPage, 14 )
	TriggerFailure( 3, JumpPage, 15 )
	Text( 13, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 3)
	Text( 13, "Перейти к выбору проф ", JumpPage, 2 )

	Talk( 14, "Сменщик проф: Поздравляю тебя с получением профессии ")
	Text( 14, "Спасибо ",  CloseTalk)

	Talk( 15, "Сменщик проф: Ты не подходишь под требования!")
	Text( 15, "Я понел ",  CloseTalk)

end

function dmg_99  ()
	
	
	Talk( 1, "Привет я продавец шапок!  " )
	Text( 1, "Купить", BuyPage )

	InitTrade()
Defence(	2583	)
Defence(	2553	)
Defence(	2584	)
Defence(		)
Defence(		)

end



	function lol_bot () -- Pirate Chest

	Talk( 1, "Привет! Я продавец биж,колец и честов" )
	Text( 1, "\202\243\239\232\242\252", BuyPage)
	
	Defence(	0324	) -- Soul Generator
	Defence(	0327	) -- Soul Generator
	Defence(	0328	) -- Soul Generator
	Defence(	0329	) -- Soul Generator
	Defence(	0330	) -- Soul Generator
	Defence(	0347	) -- Wings of Light
	Defence(	0349	) -- Nature's Whisper
	Defence(	0334	) -- Hammer of Thunder
	Defence(	0346	) -- Eye of Lighting
	Defence(	0348	) -- Morning Bell
	Defence(	0415	) -- Ray's Fury
	Defence(	0414	) -- Kiss of Nic
	Defence(	0417	) -- Consecration of Priestess
	Defence(	0387	) -- Peter's Call
	Defence(	0416	) -- Daniel's Regret
	Defence(	) -- Nimble Venturer
	Defence(	0421	) -- Soul Generator
	Defence(	0739	) -- Soul Generator
	Defence(	0462	) -- Nimble Venturer
	Defence(	0495	) -- Soul Generator
	Other(	3404  ) 
	Other(	3416  )
	Other(	3417  )
	Other(	3418  )
	Other(	3419  )
	Other(	3420  )
	Other(	3421  )
	Other(	6662  )
	Other(	6661  )
	Other(	6660  )
	Other(	6659  )
	Other(	6658  )
	Other(	6657  )
	Other(	6656  )
	Other(	6655  )
	Other(	6654  )
	Other(	6653  )
	Other(	6652  )
	Other(	6651  )
	Other(	6650  )
	Other(	6649  )
	Other(	6648  )
	Other(	6647  )
	Other(	6648  )
	Other(	6647  )
	Other(	6646  )
	Other(	6645  )
	Other(	6644  )
	Other(	6643  )
	Other(	6642  )
	Other(	6641  )
	Other(	6640  )
	Other(	6639  )
	Other(	6638  )
	Other(	6904  )
	Other(	6905  )
	Other(	6906  )
	Other(	6907  )


end

function lol_bot33  ()
	
	
	Talk( 1, "Привет я продавец крыльев!  " )
	Text( 1, "Купить", BuyPage )
Text( 1, " Золотые Крылья ", JumpPage, 3)


Talk(3," Давай 10 000 Купюр на 1000  " )
InitTrigger()
TriggerCondition( 1, HasItem,7444,10000 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- Это функция проверки заблокирован ли инвентарь
TriggerAction( 1, TakeItem, 7444,10000 ) -- Это функция "изьятия" предмета и в каком количестве
TriggerAction( 1, GiveItem, 7319,1,103 ) -- Это функция выдачи предмета (ID, кол-во)
TriggerFailure( 1, JumpPage, 14)
Text(3," Обменять ",MultiTrigger,GetMultiTrigger(),1)
	
	InitTrade()
Defence(	904	)
Defence(	906	)
Defence(	937	)
Defence(	936	)
Defence(	905	)
Defence(	141	)
Defence(	142	)
Defence(	935	)

end

function JoJo_051 () 

Talk( 1, " Хочешь получить опыт? " )
InitTrigger()
TriggerCondition( 1, HasMoney, 0 )
TriggerAction( 1, TakeMoney, 0 )
TriggerAction( 1, AddExp, 12351185722, 12351185722 )
TriggerCondition( 2, LvCheck, ">", 1 )
TriggerCondition( 2, LvCheck, "<", 150 )
TriggerCondition( 2, HasMoney, 5000 )
TriggerAction( 2, TakeMoney, 5000 )
TriggerAction( 2, AddExp, 100, 200 )

TriggerFailure( 2, JumpPage, 2 )
Text( 1, " Давай мне опыт ", MultiTrigger, GetMultiTrigger(), 2)
Talk ( 2, " Что-то не так... ")


InitTrigger()
TriggerCondition( 1, HasMoney, 0 )
TriggerAction( 1, TakeMoney, 0 )
TriggerAction( 1, AddMoney, 2000000000 )
Text( 1, " Денег ! ", MultiTrigger, GetMultiTrigger(), 1)



end

function r_talk12 ()
Talk( 1, "Я Огромная печь из чугуна , сожги во мне [купюра на 1000 рублей] и посмотри что выйдет ! Деньги это Зло !  " )
Text( 1, " Да хочу ", JumpPage, 2)

Text( 2, " Хочу реф 3 лвл! ", JumpPage, 3)
Text( 2, " Хочу реф 4 лвл! ", JumpPage, 4)
Text( 2, " Хочу реф 5 лвл! ", JumpPage, 5)


Talk(3," Давай 20 000 рублей  " )
InitTrigger()
TriggerCondition( 1, HasItem,7444,20 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- Это функция проверки заблокирован ли инвентарь
TriggerAction( 1, TakeItem, 7444,20 ) -- Это функция "изьятия" предмета и в каком количестве
TriggerAction( 1, GiveItem, 885,1,103 ) -- Это функция выдачи предмета (ID, кол-во)
TriggerFailure( 1, JumpPage, 14)
Text(3," Отдать ",MultiTrigger,GetMultiTrigger(),1)

Talk(4," Давай 40 000 рублей " )
InitTrigger()
TriggerCondition( 1, HasItem,7444,40 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- Это функция проверки заблокирован ли инвентарь
TriggerAction( 1, TakeItem, 7444,40 ) -- Это функция "изьятия" предмета и в каком количестве
TriggerAction( 1, GiveItem, 885,1,104 ) -- Это функция выдачи предмета (ID, кол-во)
TriggerFailure( 1, JumpPage, 14)
Text(4," Отдать ",MultiTrigger,GetMultiTrigger(),1)

Talk(5," Давай 99 000 рублей " )
InitTrigger()
TriggerCondition( 1, HasItem,7444,99 ) --Это функция проверки какой итем и в каком количестве должен быть в рюкзаке
TriggerCondition( 1, HasLeaveBagGrid, 1 ) --
TriggerCondition( 1, KitbagLock, 0 ) -- Это функция проверки заблокирован ли инвентарь
TriggerAction( 1, TakeItem, 7444,99 ) -- Это функция "изьятия" предмета и в каком количестве
TriggerAction( 1, GiveItem, 885,1,105 ) -- Это функция выдачи предмета (ID, кол-во)
TriggerFailure( 1, JumpPage, 14)
Text(5," Отдать ",MultiTrigger,GetMultiTrigger(),1)

Talk(2," Ты что гавнюк, вздумал обмануть меня? Проваливай! " )

end

function r_talk122311()
local CurMapName1 = "prisonisland"
--кординаты
local GoTo05X = 275
local GoTo05Y = 220
local GoTo05M = CurMapName1
Talk( 1, "Ты хочешь отправиться в Деревню Забытую Временем? Тогда принесм мне по 30 Сил Каждого Вида! ")
InitTrigger()
	TriggerCondition( 1, HasItem, 270,30 )
	TriggerCondition( 1, HasItem, 269,30 )
	TriggerCondition( 1, HasItem, 268,30 )
	TriggerCondition( 1, HasItem, 267,30 )
	TriggerAction( 1, TakeItem, 270,30 )
	TriggerAction( 1, TakeItem, 269,30 )
	TriggerAction( 1, TakeItem, 268,30 )
	TriggerAction( 1, TakeItem, 267,30 )
TriggerAction( 1,  GoTo, GoTo05X, GoTo05Y, GoTo05M )
TriggerFailure(1, JumpPage, 2)
Text( 1, " Да, отправь меня. ", MultiTrigger, GetMultiTrigger(), 1 )
Talk( 2, "Ты не соответствуешь требованиям. ")
Text( 2, "Хорошо, я понял. ")
	

end