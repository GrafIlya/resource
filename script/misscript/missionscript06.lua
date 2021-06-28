--------------------------------------------------------------------------
--									--
--									--
--		NPCScript06.lua Created by mdw Team	-- 100% translated by Sky
--									--
--									--
--------------------------------------------------------------------------
print( "Loading MissionScript06.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

--------------------------------------------------


--                 ¸±±¾ÈÎÎñ


--------------------------------------------
function DuplicateMission001()

----------------------------
	DefineMission( 500, "Drunkyard Secrets", 500 )
	
	MisBeginTalk( "I have not taste any wine for a long time...Young fellow, wine is like oxygen to me! I cannot live without it! <n><t>Can you buy a bottle of good wine for me from the bar in Argent? I will tell you a secret if you do it." )
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 500)
	MisBeginCondition(NoRecord, 500)
	MisBeginAction(AddMission, 500)
	MisBeginAction(AddTrigger, 5001, TE_GETITEM, 3916, 1 )
	MisCancelAction(ClearMission, 500)

	MisNeed(MIS_NEED_DESP, "Buy 1 Coconut Wine for Drunkyard in Argent Bar at (2222, 2889).")
	MisNeed(MIS_NEED_ITEM, 3916, 1, 10, 1)
		
	MisHelpTalk("What? That girl is not willing to sell wine to you? Or you have not visited her? Go now! Don't make me angry. I will forgot what you want to find out..")
	MisResultTalk("Hmm¡­This is indeed a good wine! It's a long time since I have tasted such quality! Do you want some? Ah¡­ ZZzzzZZZzzz")
	MisResultCondition(NoRecord, 500)
	MisResultCondition(HasMission, 500)
	MisResultCondition(HasItem, 3916, 1)
	MisResultAction(TakeItem, 3916, 1)
	MisResultAction(ClearMission, 500)
	MisResultAction(SetRecord, 500)
	MisResultAction(AddExp, 5000, 5000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3916 )	
	TriggerAction( 1, AddNextFlag, 500, 10, 1 )
	RegCurTrigger( 5001 )

----------------------------
	DefineMission( 501, "Another Cup Please!", 501 )
	
	MisBeginTalk( "<t>Oh my...The last drop of my wine is gone! But I am still thirsty for more...<n><t>Young adventurer, get me the famous \"Drunkern Dream\" from Argent bar. Faster!<n><t>Some Sashimi too will be nice..." )
	MisBeginCondition(NoMission, 501)
	MisBeginCondition(NoRecord, 501)
	MisBeginCondition(HasRecord, 500)
	MisBeginAction(AddMission, 501)
	MisBeginAction(AddTrigger, 5011, TE_GETITEM, 3926, 1 )
	MisBeginAction(AddTrigger, 5012, TE_GETITEM, 1478, 20 )
	MisCancelAction(ClearMission, 501)

	MisNeed(MIS_NEED_DESP, "Argent Drunkyard at (2222, 2889) requires a bottle of Drunken Dreams and 20 Sashimi")
	MisNeed(MIS_NEED_ITEM, 3926, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 1478, 20, 20, 20)
		
	MisHelpTalk("zZZZzzzZZZ¡­I want more wine!")
	MisResultTalk(" Ah¡­Good wine! I will tell you the secret now.<n><t>When I was young around your age, I gathered a group of enthusiastic adventurers like you and me. We went on a sea expedition once and salvage an ancient looking compass. We sail towards the direction it was pointing and suddenly, a hugh whirlpool appears in front of our ship and suck us into the portal.<n><t>Through the portal is a small island with a forsaken city in the middle of it. Piles of treasures litters the street of the city!<n><t>However, none of us are able to leave with any treasures. Anyone who tried to take any treasure from the city was killed by undead souls and skeletons that appeared out of nowhere! It is so scary! Only me and Little Daniel escaped that calamity.<n><t>You want me to bring you there? NO! I will never set foot on that cursed place ever again! Look for Little Daniel, he knows the way to get to the Forsaken City. Leave me with my wine...zZzz...")
	MisResultCondition(NoRecord, 501)
	MisResultCondition(HasMission, 501)
	MisResultCondition(HasItem, 3926, 1)
	MisResultCondition(HasItem, 1478, 20)
	MisResultAction(TakeItem, 3926, 1)
	MisResultAction(TakeItem, 1478, 20)
	MisResultAction(ClearMission, 501)
	MisResultAction(SetRecord, 501)
	MisResultAction(AddExp, 10000, 10000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3926 )	
	TriggerAction( 1, AddNextFlag, 501, 10, 1 )
	RegCurTrigger( 5011 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1478 )	
	TriggerAction( 1, AddNextFlag, 501, 20, 20 )
	RegCurTrigger( 5012 )

-----------------------------------×íÉúÃÎËÀ
	DefineMission( 502, "Drunken Dreams", 502 )
	
	MisBeginTalk( "<t>Oh...Drunken Dreams? It must be that drunkyard who told you about it.<n><t>It requires special brewing ingredients that consist of Stramonium Flower, Rainbow Fruit and Strange Fruit. Get me these and I will brew one for you. However, it needed to be contained in a Snowy Trumpet Shell to make it tasty. Get me Snowy Trumpet Shell too.<n><t>And also a fee of 2000G for my effort." )
	MisBeginCondition(NoMission, 502)
	MisBeginCondition(NoRecord, 502)
	MisBeginCondition(HasRecord, 500)
	MisBeginCondition(HasMission, 501)
	MisBeginAction(AddMission, 502)
	MisBeginAction(AddTrigger, 5021, TE_GETITEM, 4377, 1 )
	MisBeginAction(AddTrigger, 5022, TE_GETITEM, 3121, 5 )
	MisBeginAction(AddTrigger, 5023, TE_GETITEM, 3131, 5 )
	MisBeginAction(AddTrigger, 5024, TE_GETITEM, 4352, 20 )
	MisCancelAction(ClearMission, 502)

	MisNeed(MIS_NEED_ITEM, 4377, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3121, 5, 15, 5)
	MisNeed(MIS_NEED_ITEM, 3131, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 4352, 20, 30, 20)

	MisPrize(MIS_PRIZE_ITEM, 3926, 1, 4)
	MisPrizeSelAll()
		
	MisHelpTalk("Brewing of \"Drunken Dreams\"¡­All ingredients must be prepared¡­")
	MisResultTalk("Yes! These are the stuff. Looks like you are really determine. Take this wine that the Drunkyard wanted.")
	MisResultCondition(NoRecord, 502)
	MisResultCondition(HasMission, 502)
	MisResultCondition(HasItem, 4377, 1)
	MisResultCondition(HasItem, 3121, 5)
	MisResultCondition(HasItem, 3131, 5)
	MisResultCondition(HasItem, 4352, 20)
	MisResultCondition(HasMoney, 2000 )
	MisResultAction(TakeMoney, 2000 )
	MisResultAction(TakeItem, 4377, 1)
	MisResultAction(TakeItem, 3121, 5)
	MisResultAction(TakeItem, 3131, 5)
	MisResultAction(TakeItem, 4352, 20)
	MisResultAction(ClearMission, 502)
	MisResultAction(SetRecord, 502)
	MisResultAction(AddExp, 20000, 20000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4377 )	
	TriggerAction( 1, AddNextFlag, 502, 10, 1 )
	RegCurTrigger( 5021 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3121 )	
	TriggerAction( 1, AddNextFlag, 502, 15, 5 )
	RegCurTrigger( 5022 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3131 )	
	TriggerAction( 1, AddNextFlag, 502, 20, 5 )
	RegCurTrigger( 5023 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4352 )	
	TriggerAction( 1, AddNextFlag, 502, 20, 20 )
	RegCurTrigger( 5024 )

-----------------------------------·ÏÁéÎäÊ¿º¡¹Ç
	DefineMission( 503, "Skeleton of Sorrow Warrior", 503 )
	
	MisBeginTalk( "<t>Since the drunkyard send you here, I will help you. I have been there before. You will need an Ancient Generator to enter. Bring me 10 Robot Core and I will make it for you.<n><t>By the way, can you collect some bones for my research while you are there?" )
	MisBeginCondition(NoMission, 503)
	MisBeginCondition(NoRecord, 503)
	MisBeginCondition(HasRecord, 501)
	MisBeginAction(AddMission, 503)
	MisBeginAction(AddTrigger, 5031, TE_GETITEM, 3434, 10 )
	MisBeginAction(AddTrigger, 5032, TE_GETITEM, 3435, 10 )
	MisBeginAction(AddTrigger, 5033, TE_GETITEM, 3436, 10 )
	MisBeginAction(AddTrigger, 5034, TE_GETITEM, 3437, 10 )
	MisCancelAction(ClearMission, 503)

	--MisNeed(MIS_NEED_DESP, "Found 10 Sorrow Warrior Carcass in Forsaken City. Give it to Little Daniel in Argent City at (2193, 2730)")
	MisNeed(MIS_NEED_ITEM, 3434, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3435, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3436, 10, 30, 10)
	MisNeed(MIS_NEED_ITEM, 3437, 10, 40, 10)
		
	MisHelpTalk("Hmm¡­This is a dangerous and meaningful quest. Maybe you should consider to take it up¡­")
	MisResultTalk("So these are the carcass of those undead.<n><t>I can feel them calling out to me! I wonder what is this mysterious force behind this. I will need to do an indepth research.<n><t>Maybe I might discover some secret!")
	MisResultCondition(NoRecord, 503)
	MisResultCondition(HasMission, 503)
	MisResultCondition(HasItem, 3434, 10)
	MisResultCondition(HasItem, 3435, 10)
	MisResultCondition(HasItem, 3436, 10)
	MisResultCondition(HasItem, 3437, 10)
	MisResultAction(TakeItem, 3434, 10)
	MisResultAction(TakeItem, 3435, 10)
	MisResultAction(TakeItem, 3436, 10)
	MisResultAction(TakeItem, 3437, 10)
	MisResultAction(ClearMission, 503)
	MisResultAction(SetRecord, 503)
	MisResultAction(AddExp, 80000, 80000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3434 )	
	TriggerAction( 1, AddNextFlag, 503, 10, 10 )
	RegCurTrigger( 5031 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3435 )	
	TriggerAction( 1, AddNextFlag, 503, 20, 10 )
	RegCurTrigger( 5032 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3436 )	
	TriggerAction( 1, AddNextFlag, 503, 30, 10 )
	RegCurTrigger( 5033 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3437 )	
	TriggerAction( 1, AddNextFlag, 503, 40, 10 )
	RegCurTrigger( 5034 )

----------------------------------------
--                                    --
--        ¼ÓÀÕ±Èº£µÁÖ÷ÏßÈÎÎñ          --
--                                    --
----------------------------------------

----------------------------------------
--                                    --
--              Ö÷ÏßÈÎÎñ              --
--                                    --
----------------------------------------

-- Ìú½³ >> Ìú½³µÄµ£ÓÇ
	DefineMission(504,"Blacksmith's Worries",504)
	
	MisBeginTalk("<t>My beloved was kidnapped! I will go save her myself! Damn those Deathsouls! I will rip you to pieces!<n><t>Sorry, forgive me for my outburst. If you seen Elizabeth, tell her do not be afraid for I will save her.<n><t>Even if it cost me my life!")

	MisBeginCondition(NoRecord, 504)
	MisBeginCondition(NoMission, 504)

	MisBeginAction(AddMission, 504)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisHelpTalk("<t>I will go to your rescure immediately! Wait for me!")
	MisNeed(MIS_NEED_DESP, "Relay Blacksmith's message to Elizabeth")
	
	MisResultCondition(AlwaysFailure)

-- Ìú½³ >> Ìú½³µÄµ£ÓÇ
	DefineMission(505,"Blacksmith's Worries",504,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Did Mark sent you to me?<n><t>I know...I love him too...Always do...£¡")
	MisResultCondition(HasMission, 504)
	MisBeginCondition(NoRecord, 504)
	
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(ClearMission, 504)
	MisResultAction(SetRecord, 504)


-- Ìú½³ >> ÒÁÀöÉ¯°×µÄ¶¨ÇéÐÅÎï
	DefineMission(506,"Elizabeth's Love Keepsake",505)

	MisBeginTalk("<t>I would like you to pass this necklace to him...Oh no! Where is my necklace?<n><t>Oh dear! I think I have dropped it on the Skeletar Pirate Ship! It is an important keepsake between me and Mark!<n><t>Can you retrieve it back for me please?")

	MisBeginCondition(HasRecord, 504)
	MisBeginCondition(NoMission, 505)
	MisBeginCondition(NoRecord, 505)

	MisBeginAction(AddMission, 505)
	MisBeginAction(AddTrigger, 5051, TE_GETITEM, 2415, 1)
	
	MisNeed(MIS_NEED_ITEM, 2415, 1, 10, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisHelpTalk("<t>Have you found the necklace?")

	MisResultTalk("<t>Yes, this is the one. Thank you for getting it back for me.")

	MisResultCondition(HasMission, 505)
	MisResultCondition(HasItem, 2415, 1)
	MisResultCondition(NoRecord,505)

	MisResultAction(AddExp, 250000, 250000)
	MisResultAction(AddMoney, 150000, 150000)
	MisResultAction(ClearMission, 505)
	MisResultAction(TakeItem, 2415,1)
	MisResultAction(SetRecord, 505)

	InitTrigger()
	TriggerCondition(1,IsItem, 2415)
	TriggerAction(1, AddNextFlag, 505, 10, 1)
	RegCurTrigger(5051)


-- Ìú½³ >> ¶¨ÇéÏîÁ´
	DefineMission(507,"Necklace of Love",506)
	
	MisBeginTalk("<t>It is done. I have written my message within this necklace<n><t>Can you help me pass this necklace to Mark? May the Gods protect you!")

	MisBeginCondition(HasRecord, 505)
	MisBeginCondition(NoRecord, 506)
	MisBeginCondition(NoMission, 506)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 506)
	MisBeginAction(GiveItem, 2415,1,4)

	MisHelpTalk("<t>May the Goddess bless you")
	MisNeed(MIS_NEED_DESP, "Help Elizabeth pass the Necklace of Love to Blacksmith Mark")

	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisResultCondition(AlwaysFailure)

-- Ìú½³ >> ¶¨ÇéÏîÁ´
	DefineMission(508,"Necklace of Love",506, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>You found Elizabeth? Let me go save her now,<n><t>Wait, where is our necklace? Let me check")
	MisResultCondition(HasMission, 506)
	MisResultCondition(NoRecord,506)
	MisResultCondition(HasItem, 2415, 1)

	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)

	MisResultAction(TakeItem, 2415, 1)
	MisResultAction(ClearMission, 506)
	MisResultAction(SetRecord, 506)

-- Ìú½³ >> Ìú½³µÄÔ¼¶¨
	DefineMission(509,"Blacksmith's Promise",507)
	
	MisBeginTalk("<t>To save my goddess, we will need a very unique weapon. Are you able to help me with that?<n><t>This weapon only drops from Deathsoul Officer which I believe you are able to deal with easily.")

	MisBeginCondition(HasRecord, 506)
	MisBeginCondition(NoRecord, 507)
	MisBeginCondition(NoMission, 507)

	MisBeginAction(AddMission, 507)
	MisBeginAction(AddTrigger, 5071, TE_GETITEM, 2384, 1)

	MisNeed(MIS_NEED_ITEM, 2384, 1, 10, 1)

	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisHelpTalk("<t>...It will be ready soon. Hmm? You haven't found the unique weapon?")

	MisResultTalk("<t>This should be the weapon that Elizabeth is talking about. Its really special from the way I look at it.")

	MisResultCondition(HasMission, 507)
	MisResultCondition(HasItem, 2384, 1)
	MisResultCondition(NoRecord, 507)

	MisResultAction(TakeItem, 2384, 1)
	MisResultAction(AddExp, 200000, 200000)
	MisResultAction(AddMoney, 100000, 100000)

	MisResultAction(ClearMission, 507)
	MisResultAction(SetRecord, 507)

	InitTrigger()
	TriggerCondition(1, IsItem, 2384)
	TriggerAction(1, AddNextFlag, 507, 10, 1)
	RegCurTrigger(5071)

-- Ìú½³ >> ÌØÊâµÄÎäÆ÷
	DefineMission(573,"Unique Weapon",508)
	
	MisBeginTalk("<t>This weapon seems to lack something, the feeling is not there. It feels strange to wield.<n><t>Sigh...Can you bring to Jack Arrow and let him take a look.")
	
	MisBeginBagNeed(1)
	MisBeginCondition(HasRecord, 507)
	MisBeginCondition(NoRecord, 508)
	MisBeginCondition(NoMission, 508)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 508)
	MisBeginAction(GiveItem, 2384, 1,4)

	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisHelpTalk("<t>What did Jack say? You have not go over?")
	MisNeed(MIS_NEED_DESP, "Bring the unique weapon from the Blacksmith to Jack Arrow")

	MisResultCondition(AlwaysFailure)


-- ½Ü¿ËÊ·ÅÉÂÞ >> ÌØÊâµÄÎäÆ÷
	DefineMission(574,"Unique Weapon", 508,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)
	MisResultTalk("<t>Let me have a look! This weapon has a dark curse on it.<n><t>Only a man of evil can wield it...Mark is just too kind...")
	MisResultCondition(HasMission, 508)
	MisResultCondition(NoRecord, 508)
	MisResultCondition(HasItem, 2384, 1)

	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(TakeItem, 2384, 1)
	MisResultAction(ClearMission, 508)
	MisResultAction(SetRecord, 508)


-- ½Ü¿ËÊ·ÅÉÂÞ >> º£µÁÓëº£¾ü
	DefineMission(575,"Pirate Vs Navy",509)
	
	MisBeginTalk("<t>I requires you to make a trip to the Navy. Tell Wellington about the current situation.<n><t>I believed that he will make a suitable judgement.")

	MisBeginCondition(HasRecord, 508)
	MisBeginCondition(NoRecord, 509)
	MisBeginCondition(NoMission, 509)

	MisBeginAction(AddMission, 509)
	
	MisHelpTalk("<t>You have not make a move? Time does not wait!")
	MisNeed(MIS_NEED_DESP, "Help Jack Arrow send a message to Wellington")
	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisResultCondition(AlwaysFailure)

-- ÅµÁé¶Ù >> º£µÁÓëº£¾ü
	DefineMission(576, "Pirate Vs Navy", 509,COMPLETE_SHOW)
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Jack is not dead yet? What! He dares to request my aid? How daring of him!<n><t>Hmm...Deathsoul Officer's Captain Token?<n><t>Seems like we are on the same side after all. I will consider Jack's suggestion.")

	MisResultCondition(HasMission, 509)
	MisResultCondition(NoRecord, 509)

	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(ClearMission, 509)
	MisResultAction(SetRecord, 509)

-- ÅµÁé¶Ù >> ½«¾üµÄ±í°×
	DefineMission(577,"General's Confession of Love",510)
	
	MisBeginTalk("<t>Damn those Deathsoul! My Proposal Ring is stolen by them!<n><t>Why took my ring of all things?<n><t>Damn! I spent quite a fortune to make it. Please get it back for me as soon as possible. It seems that they are escaping by the Spirit Ship.")

	MisBeginCondition(HasRecord, 509)
	MisBeginCondition(NoRecord, 510)
	MisBeginCondition(NoMission, 510)
	
	MisBeginAction(AddMission, 510)
	MisBeginAction(AddTrigger, 5101, TE_GETITEM, 2416, 1)
	MisNeed(MIS_NEED_ITEM, 2416, 1, 10, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisHelpTalk("<t>If you do not retrieve my ring, I will not help Jack Arrow")

	MisResultTalk("<t>Thanks God! I can propose to Elizabeth now since I have the ring!")

	MisResultCondition(HasMission, 510)
	MisResultCondition(NoRecord, 510)
	MisResultCondition(HasItem, 2416, 1)
	
	MisResultAction(TakeItem, 2416, 1)
	MisResultAction(AddExp, 30000, 30000)
	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(ClearMission, 510)
	MisResultAction(SetRecord, 510)
	
	InitTrigger()
	TriggerCondition(1, IsItem, 2416)
	TriggerAction(1, AddNextFlag, 510, 10, 1)
	RegCurTrigger(5101)

-- ÅµÁé¶Ù >> ½«¾üµÄ±í°×
	DefineMission(578,"General's Confession of Love",511)
	
	MisBeginTalk("<t>How do I say this...I like a girl...I want to propose to her...<n><t>But I am shy...Can you help me pass this ring to her...Observe her reaction please...<n><t>I will be grateful to you....If she accepts my love...Oh right..... Her name is Elizabeth.")

	MisBeginCondition(HasRecord, 510)
	MisBeginCondition(NoRecord, 511)
	MisBeginCondition(NoMission, 511)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 511)
	MisBeginAction(GiveItem, 2416, 1,4)
	MisHelpTalk("<t>Elizabeth...Elizabeth...")
	MisNeed(MIS_NEED_DESP, "<t>Help Wellington by giving the Proposal Ring to Elizabeth and observe her reaction")

	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisResultCondition(AlwaysFailure)

-- ÒÁÀöÉ¯°× >> ½«¾üµÄ±í°×
	DefineMission(579, "General's Confession of Love", 511,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)
	
	MisResultTalk("<t>General Wellington...Its not worth it¡­")
	MisResultCondition(HasMission, 511)
	MisResultCondition(NoRecord, 511)
	MisResultCondition(HasItem, 2416, 1)

	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(TakeItem, 2416, 1)
	MisResultAction(ClearMission, 511)
	MisResultAction(SetRecord, 511)

-- ÒÁÀöÉ¯°× >> ÒÁÀöÉ¯°×µÄÆíµ»
	DefineMission(580,"Elizabeth's Prayer",512)

	MisBeginTalk("<t>I don't feel good.<n><t>It seems that something has happened to Mark. I am quite worry, can you go over and check on him?<n><t>I will pray for his safety!")

	MisBeginCondition(HasRecord, 511)
	MisBeginCondition(NoRecord, 512)
	MisBeginCondition(NoMission, 512)
	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginAction(AddMission, 512)
	MisHelpTalk("<t>Oh Almighty God, please bless Mark...")
	MisNeed(MIS_NEED_DESP, "Help out the Blacksmith on behalf of Elizabeth")

	MisResultCondition(AlwaysFailure)


-- Ìú½³ >> ÒÁÀöÉ¯°×µÄÆíµ»
	DefineMission(581, "Elizabeth's Prayer", 512,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Did Elizabeth sent you?<n><t>How is she getting on? I encounter some minor problem here but tell her not to worry.")

	MisResultCondition(HasMission, 512)
	MisResultCondition(NoRecord, 512)
	
	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(ClearMission, 512)
	MisResultAction(SetRecord, 512)

-- Ìú½³ >> ×çÖä
	DefineMission(582,"The Curse",513)

	MisBeginTalk("<t>The treasures we collected have been stolen from us by the dead spirits on the Black Jewel and they also set an evil curse on it.<n><t>I need you to find and return these cursed treasures to me, then I will proceed to lift the curse from the treasures.<n><t>How about it, it shouldn't be a problem.<n><t>Go forth and kill those from the Black Jewel. I know this is a extremely difficult mission, I will reward you handsomely once it is completed.")
	
	MisBeginCondition(HasRecord, 512)
	MisBeginCondition(NoRecord, 513)
	MisBeginCondition(NoMission, 513)
	
	MisBeginAction(AddMission, 513)
	MisBeginAction(AddTrigger, 5131,TE_GETITEM, 2417, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_ITEM, 2417, 1, 10, 1)

	MisHelpTalk("<t>You have not brought back the treasures?")

	MisResultTalk("<t> Let me have a look...This is a powerful curse indeed. Let me try to undo it.<n><t>!^($......%*#oa2......1&s?~*#^%!...... (Blacksmith starts to chant in some weird language...Scary!) Good! The curse is undone!")

	MisResultCondition(HasMission, 513)
	MisResultCondition(NoRecord, 513)
	MisResultCondition(HasItem, 2417, 1)
	
	MisResultAction(TakeItem, 2417, 1)
	MisResultAction(AddExp, 500000, 500000)
	MisResultAction(AddMoney, 800000, 800000)
	MisResultAction(ClearMission, 513)
	MisResultAction(SetRecord, 513)

	InitTrigger()
	TriggerCondition(1, IsItem, 2417)
	TriggerAction(1, AddNextFlag, 513, 10, 1)
	RegCurTrigger(5131)

-- Ìú½³ >> ×çÖä

	DefineMission(583,"The Curse",514)
	
	MisBeginTalk("<t>We have undone the curse of coins that those Deathsoul pirates have been relying on.<n><t>Without their treasures and source of power, they will not be able to resist our army!<n><t>It is time to make a decisive attack on them! However, please inform Jack Arrow about our plans first.")

	MisBeginCondition(HasRecord, 513)
	MisBeginCondition(NoRecord, 514)
	MisBeginCondition(NoMission, 514)

	MisBeginAction(AddMission, 514)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisHelpTalk("<t>You have not make a move? The enemies are at their weakest now! Go!")
	MisNeed(MIS_NEED_DESP, "Tell Jack Arrow oh behalf of the Blacksmith that the curse has been broken")

	MisResultCondition(AlwaysFailure)

-- ½Ü¿ËÊ·ÅÉÂÞ >> ×çÖä
	DefineMission(584, "The Curse", 514,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>I've got it. We will begin attack soon. Are you with us?")
	MisResultCondition(HasMission, 514)
	MisResultCondition(NoRecord, 514)

	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 514)
	MisResultAction(SetRecord, 514)

-- ½Ü¿ËÊ·ÅÉÂÞ >> ÕæÕæµÄ´¬³¤
	DefineMission(585,"The Real Captain",515)
	
	MisBeginTalk("<t>Battle draws near! Wait for me Baborosa! Let us settle this once and for all!<n><t>My friend, if you can get back the Captain's Token from Baborosa, I will reward you greatly!<n><t>Let him know who is the real captain of the Black Jewel!")
	MisBeginCondition(HasRecord, 514)
	MisBeginCondition(NoRecord, 515)
	MisBeginCondition(NoMission,515)
	
	MisBeginAction(AddMission, 515)
	MisBeginAction(AddTrigger, 5151, TE_KILL, 805, 1)
	MisBeginAction(AddTrigger, 5152, TE_GETITEM, 2428, 1)

	MisNeed(MIS_NEED_KILL, 805, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2428, 1,20, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisHelpTalk("<t>Damn you Baborosa!")

	MisResultTalk("<t>This is great! I am the captain of the Black Jewel once again!")

	MisResultCondition(HasMission, 515)
	MisResultCondition(HasFlag, 515, 10)
	MisResultCondition(HasItem, 2428,1)
	MisResultCondition(NoRecord, 515)

	MisResultAction(TakeItem, 2428, 1)
	MisResultAction(ClearMission, 515)
	MisResultAction(SetRecord, 515)

	MisResultAction(AddExp, 500000,500000)
	MisResultAction(AddMoney, 800000,800000)

	InitTrigger()
	TriggerCondition(1,IsMonster, 805)
	TriggerAction(1,AddNextFlag, 515, 10, 1)
	RegCurTrigger(5151)

	InitTrigger()
	TriggerCondition(1, IsItem, 2428)
	TriggerAction(1, AddNextFlag , 515, 20, 1)
	RegCurTrigger(5152)


-- ½Ü¿ËÊ·ÅÉÂÞ >> ºØÀñ
	DefineMission(586,"The Gift",516)
	
	MisBeginTalk("<t> Everything has finally ended. I heard that Mark and Elizabeth has gotten married at last.<n><t>I have not sent them my gift yet. Can you do it on my behalf? Why don't I sent it myself?<n><t>...Have you heard of an NPC who will do his own task?")

	MisBeginCondition(HasRecord, 515)
	MisBeginCondition(NoRecord, 516)
	MisBeginCondition(NoMission, 516)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisBeginAction(AddMission, 516)
	MisBeginAction(GiveItem, 2433, 1,4)
	MisHelpTalk("<t> Hmm...Love is in the air...Hehe!")
	MisNeed(MIS_NEED_DESP, "Send a gift on behalf of Jack to congratulate Elizabeth on her marriage to the Blacksmith")
	
	MisResultCondition(AlwaysFailure)

-- ½Ü¿ËÊ·ÅÉÂÞ >> ºØÀñ
	DefineMission(587,"The Gift",516,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Wow...A gift from Jack! Let's open it!<n><t>What!!! Only a skeletar emblem...What a miser!")
	MisResultCondition(HasMission, 516)
	MisResultCondition(NoRecord, 516)
	MisResultCondition(HasItem, 2433, 1)
	
	MisResultAction(TakeItem, 2433, 1)
	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 516)
	MisResultAction(SetRecord, 516)

-- ÒÁÀöÉ¯°× >> ÐÄÓÐËùÊô
	DefineMission(588,"Undeserving Love",517)
	
	MisBeginTalk("<t>Help me once again please...<n><t>Return this ring to General Wellington and I hope he can understand my feeling.")

	MisBeginCondition(HasRecord, 516)
	MisBeginCondition(NoRecord, 517)
	MisBeginCondition(NoMission, 517)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisBeginAction(AddMission, 517)
	MisBeginAction(GiveItem, 2416, 1,4)
	MisHelpTalk("<t>Where to go for my honeymoon...? Hmm..")
	MisNeed(MIS_NEED_DESP, "Help Elizabeth return the ring to Wellington")
	
	MisResultCondition(AlwaysFailure)

-- ÅµÁé¶Ù >> ÐÄÓÐËùÊô
	DefineMission(589,"Undeserving Love",517,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>There will be no turning back now...<n><t>Why make a promise if it cannot be kept...<n><t>Sorrow is the only thing left...")
	MisResultCondition(HasMission, 517)
	MisResultCondition(NoRecord, 517)
	MisResultCondition(HasItem, 2416, 1)
	
	MisResultAction(TakeItem, 2416, 1)
	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 517)
	MisResultAction(SetRecord, 517)

-- ÅµÁé¶Ù  >> ÅµÁé¶ÙµÄ×£¸£
	DefineMission(590,"Wellington's Blessing",518)
	
	MisBeginTalk("<t>I have thought it through. I should sent them my blessing instead since they truly love each other.<n><t>Please hand this gift of mine to them.")

	MisBeginCondition(HasRecord, 517)
	MisBeginCondition(NoRecord, 518)
	MisBeginCondition(NoMission, 518)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisBeginAction(AddMission, 518)
	MisBeginAction(GiveItem, 2435, 1,4)
	MisHelpTalk("<t>Elizabeth! I hope that fate will bring us together in our next life.")
	MisNeed(MIS_NEED_DESP, "Send the gift of Wellington to Elizabeth")
	
	MisResultCondition(AlwaysFailure)

-- ÒÁÀöÉ¯°×>> ÅµÁé¶ÙµÄ×£¸£
	DefineMission(591,"Wellington's Blessing",518,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>General Turner...Thanks for understanding how I feel.<n><t>Thank you...")
	MisResultCondition(HasMission, 518)
	MisResultCondition(NoRecord, 518)
	MisResultCondition(HasItem, 2435, 1)
	
	MisResultAction(TakeItem, 2435, 1)
	MisResultAction(AddMoney,300000, 300000)
	MisResultAction(ClearMission, 518)
	MisResultAction(SetRecord, 518)
	
---------------------------------------------------------------------------------------------------- 
 -- ---- 
 -- 2.0 day--to--day tasks ---- 
 -- ---- 
 ---------------------------------------------------------------------------------------------------- 

 ------------------------------------------ ---------------------- Gathering command Harbor City silver 
 DefineMission (6702, "the party commanding the harbor", 1900, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> Thank you for your letter brought about, I will prepare to prepare, this is a reply, please Islands to the Winter Island <j????·??(322,946)> you ~") 
 MisResultCondition (HasMission, 1900) 
 MisResultCondition (HasItem, 6306,1) 
 MisResultAction (TakeItem, 6306, 1) 
 MisResultAction (GiveItem, 6313, 1,4) 
 
--Harbor gathering command -------------------------------------------- ---------------------- Fort Thunder 
 
 DefineMission (6703, "the party commanding the harbor", 1900, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> Thank you for your letter brought about, I will prepare to prepare, this is a reply, please Islands to the Winter Island <j????·??(322,946)> you ~") 
 MisResultCondition (HasMission, 1900) 
 MisResultCondition (HasItem, 6307,1) 
 MisResultAction (TakeItem, 6307, 1) 
 MisResultAction (GiveItem, 6314, 1,4) 
 
-- Harbor gathering command -------------------------------------------- ---------------------- Metro Lan Sha 
 
 DefineMission (6704, "the party commanding the harbor", 1900, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> Thank you for your letter brought about, I will prepare to prepare, this is a reply, please Islands to the Winter Island <j????·??(322,946)> you ~") 
 MisResultCondition (HasMission, 1900) 
 MisResultCondition (HasItem, 6308,1) 
 MisResultAction (TakeItem, 6308, 1) 
 MisResultAction (GiveItem, 6315, 1,4) 
 
 --Harbor command -------------------------------------------- ---------------------- spring town meeting 
 
 DefineMission (6705, "the party commanding the harbor", 1900, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> Thank you for your letter brought about, I will prepare to prepare, this is a reply, please Islands to the Winter Island <j????·??(322,946)> you ~") 
 MisResultCondition (HasMission, 1900) 
 MisResultCondition (HasItem, 6309,1) 
 MisResultAction (TakeItem, 6309, 1) 
 MisResultAction (GiveItem, 6316, 1,4) 
 
 -------------------------------------------- ---------------------- Harbor al--gathering command depot 
 
 DefineMission (6706, "the party commanding the harbor", 1900, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> Thank you for your letter brought about, I will prepare to prepare, this is a reply, please Islands to the Winter Island <j????·??(322,946)> you ~") 
 MisResultCondition (HasMission, 1900) 
 MisResultCondition (HasItem, 6310,1) 
 MisResultAction (TakeItem, 6310, 1) 
 MisResultAction (GiveItem, 6317, 1,4) 
 
 --Gathering command -------------------------------------------- ---------------------- Harbor Island--ming 
 
 DefineMission (6707, "the party commanding the harbor", 1900, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> Thank you for your letter brought about, I will prepare to prepare, this is a reply, please Islands to the Winter Island <j????·??(322,946)> you ~") 
 MisResultCondition (HasMission, 1900) 
 MisResultCondition (HasItem, 6311,1) 
 MisResultAction (TakeItem, 6311, 1) 
 MisResultAction (GiveItem, 6318, 1,4) 
 
 --Gathering command -------------------------------------------- ---------------------- harbor ice????
 
 DefineMission (6708, "the party commanding the harbor", 1900, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> Thank you for your letter brought about, I will prepare to prepare, this is a reply, please Islands to the Winter Island <j????·??(322,946)> you ~") 
 MisResultCondition (HasMission, 1900) 
 MisResultCondition (HasItem, 6312,1) 
 MisResultAction (TakeItem, 6312, 1) 
 MisResultAction (GiveItem, 6319, 1,4) 

 --Harbor ---------------------------------------- ---------------------------------- command to start the meeting 
 DefineMission (6701, "the party commanding the harbor", 1900) 
 MisBeginTalk ( "<t> a long time and I did not meet those friends you ~ now we all scattered in various places, although it is the harbor of our own command, but would like to meet, or if it is very difficult ah! Do not know whether there people willing to help us? ") 
 MisBeginCondition (NoMission, 1900) 
 MisBeginCondition (LvCheck, ">", 89) 
 MisBeginCondition (Get_Day_Mission1) 
 MisBeginAction (AddMission, 1900) 
 MisBeginAction (GiveItem, 6306,1,4) 
 MisBeginAction (GiveItem, 6307,1,4) 
 MisBeginAction (GiveItem, 6308,1,4) 
 MisBeginAction (GiveItem, 6309,1,4) 
 MisBeginAction (GiveItem, 6310,1,4) 
 MisBeginAction (GiveItem, 6311,1,4) 
 MisBeginAction (GiveItem, 6312,1,4) 
 MisCancelAction (ClearMission, 1900) 
 MisCancelAction (TakeItem, 6306,1) 
 MisCancelAction (TakeItem, 6307,1) 
 MisCancelAction (TakeItem, 6308,1) 
 MisCancelAction (TakeItem, 6309,1) 
 MisCancelAction (TakeItem, 6310,1) 
 MisCancelAction (TakeItem, 6311,1) 
 MisCancelAction (TakeItem, 6312,1) 
 
 MisBeginBagNeed (7) 


 MisBeginAction (AddTrigger, 19001, TE_GETITEM, 6313, 1) 
 MisBeginAction (AddTrigger, 19002, TE_GETITEM, 6314, 1) 
 MisBeginAction (AddTrigger, 19003, TE_GETITEM, 6315, 1) 
 MisBeginAction (AddTrigger, 19004, TE_GETITEM, 6316, 1) 
 MisBeginAction (AddTrigger, 19005, TE_GETITEM, 6317, 1) 
 MisBeginAction (AddTrigger, 19006, TE_GETITEM, 6318, 1) 
 MisBeginAction (AddTrigger, 19007, TE_GETITEM, 6319, 1) 

 
 MisNeed (MIS_NEED_DESP, "the winter to help the island to liaise with other <j????·??(322,946)> Islands Harbor seven command, coordinate specific information please see the related props, there are marked!.") 

 MisNeed (MIS_NEED_ITEM, 6313, 1, 10, 1) 
 MisNeed (MIS_NEED_ITEM, 6314, 1, 20, 1) 
 MisNeed (MIS_NEED_ITEM, 6315, 1, 30, 1) 
 MisNeed (MIS_NEED_ITEM, 6316, 1, 40, 1) 
 MisNeed (MIS_NEED_ITEM, 6317, 1, 50, 1) 
 MisNeed (MIS_NEED_ITEM, 6318, 1, 60, 1) 
 MisNeed (MIS_NEED_ITEM, 6319, 1, 70, 1) 

 MisResultTalk ( "<t> Thank you for your help ~ so I can meet you and they???~ ~ ~ very good") 
 MisHelpTalk ( "<t> hurry up and start it ~ or that you do not know the way? Or is the trouble that you refuse to go?") 
 MisResultCondition (HasMission, 1900) 
 MisResultCondition (NoRecord, 1900) 
 MisResultCondition (HasItem, 6313,1) 
 MisResultCondition (HasItem, 6314,1) 
 MisResultCondition (HasItem, 6315,1) 
 MisResultCondition (HasItem, 6316,1) 
 MisResultCondition (HasItem, 6317,1) 
 MisResultCondition (HasItem, 6318,1) 
 MisResultCondition (HasItem, 6319,1) 

 MisResultAction (TakeItem, 6313,1) 
 MisResultAction (TakeItem, 6314,1) 
 MisResultAction (TakeItem, 6315,1) 
 MisResultAction (TakeItem, 6316,1) 
 MisResultAction (TakeItem, 6317,1) 
 MisResultAction (TakeItem, 6318,1) 
 MisResultAction (TakeItem, 6319,1) 
 MisResultAction (AddExpPer, 0.1,0.3) 
 MisResultAction (AddMoney, 300000) 
 MisResultAction (AddItem_Mission1) 
 MisResultAction (ClearMission, 1900) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 6313) 
 TriggerAction (1, AddNextFlag, 1900, 10, 1) 
 RegCurTrigger (19001) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 6314) 
 TriggerAction (1, AddNextFlag, 1900, 20, 1) 
 RegCurTrigger (19002) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 6315) 
 TriggerAction (1, AddNextFlag, 1900, 30, 1) 
 RegCurTrigger (19003) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 6316) 
 TriggerAction (1, AddNextFlag, 1900, 40, 1) 
 RegCurTrigger (19004) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 6317) 
 TriggerAction (1, AddNextFlag, 1900, 50, 1) 
 RegCurTrigger (19005) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 6318) 
 TriggerAction (1, AddNextFlag, 1900, 60, 1) 
 RegCurTrigger (19006) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 6319) 
 TriggerAction (1, AddNextFlag, 1900, 70, 1) 
 RegCurTrigger (19007) 
 
 
 
 
 ------------------------------------ ----------------------------( The beginning of Resident Evil) 
 DefineMission (6709, "Resident Evil", 1901) 
 MisBeginTalk ( "<t> I think the last fort in the thunder of the ocean outside the hall when those zombies, I shudder a bit, so I do not now how to get to the mainland of Ghana, alas! However, it seems as if the spread of those viruses even in winter the island is somewhat affected, and how to do? I have four students were outside, I am worried that they, first of all, help me to see islands in the snow pulling <j Explorer Westphalia (472,531 )> it! ") 
 MisBeginCondition (NoRecord, 1901) 
 MisBeginCondition (NoMission, 1901) 
 MisBeginCondition (LvCheck, ">", 89) 
 MisBeginCondition (Get_Day_Mission2) 
 MisBeginAction (AddMission, 1901) 
 MisCancelAction (ClearMission, 1901) 

 MisNeed (MIS_NEED_DESP, "to several other archaeologists on the island to see the students, talk about playing the way on the news of the last zombie. First of all, looking for snow <j???·???(472,531)> i.") 
 MisHelpTalk ( "<t> hope that last winter the island nothing ~ ah ~ those zombies really terrible, and Oh Yes, I do not know Rebecca has not escaped it?") 
 MisResultCondition (AlwaysFailure) 
 
 ------------------------------------ ----------------------------( The end of Resident Evil) 
 DefineMission (6710, "Resident Evil", 1901, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> a teacher allows you to do? Ah, I think he must have been worried about the problem of the last zombie, right?") 
 MisResultCondition (HasMission, 1901) 
 MisResultCondition (NoRecord, 1901) 
 MisResultAction (ClearMission, 1901) 
 MisResultAction (SetRecord, 1901) 
 MisResultAction (AddExp, 100000, 100000) 
 MisResultAction (AddMoney, 150000) 
 MisResultAction (GiveNpcMission, 6711, "Explorers Westphalia", 4) 


 --Returns zombie ---------------------------- ------------------------------------ 
 DefineMission (6711, "Returns zombie", 1902) 
 MisBeginTalk ( "<t> a large number of zombies who, ah, ~ although this is really terrible and I do have at least some relationship, but I am not a person to create them! I just created a virus in private, then the results of those guys do not listen ... ... These zombies! if into how firms Fort Thunder! to give them a little color to see! <j???·???(472,531)> ") 
 MisBeginCondition (NoRecord, 1902) 
 MisBeginCondition (NoMission, 1902) 
 MisBeginCondition (HasRecord, 1901) 
 MisBeginAction (AddMission, 1902) 
 MisBeginAction (AddTrigger, 19021, TE_KILL, 41, 30) 
 MisBeginAction (AddTrigger, 19022, TE_KILL, 42, 30) 
 MisCancelAction (ClearMission, 1902) 
 
 MisNeed (MIS_NEED_DESP, "to <j????(435,1478)> near <j????(556,1558)> and 30, respectively, the elimination of 30 iron and steel zombie zombie.") 
 MisNeed (MIS_NEED_KILL, 41, 30, 10, 30) 
 MisNeed (MIS_NEED_KILL, 42, 30, 40, 30) 
 
 MisResultTalk ( "<t> ah, this corpse back to those who should know that the convergence, or if the virus spread ... I may be in trouble ...") 
 MisHelpTalk ( "<t> snow i. from Ghana went to the mainland, in fact, can also, not far from you soon on the run you ~ ~") 
 MisResultCondition (HasMission, 1902) 
 MisResultCondition (NoRecord, 1902) 
 MisResultCondition (HasFlag, 1902, 39) 
 MisResultCondition (HasFlag, 1902, 69) 
 MisResultAction (ClearMission, 1902) 
 MisResultAction (SetRecord, 1902) 
 MisResultAction (AddExp, 400000, 400000) 
 MisResultAction (AddMoney, 350000) 
 MisResultAction (GiveNpcMission, 6712, "Explorers Westphalia", 5) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 41) 
 TriggerAction (1, AddNextFlag, 1902, 10, 30) 
 RegCurTrigger (19021) 
 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 42) 
 TriggerAction (1, AddNextFlag, 1902, 40, 30) 
 RegCurTrigger (19022) 
 
 
 
 ------------------------------------ Winter crisis ----------------------------( Island started) 
 DefineMission (6712, "Winter Island crisis", 1903) 
 MisBeginTalk ( "<t> While in front of you to help kill some zombies Ghana mainland, but also some zombies do not know what came through the Winter Island, and evolution has become a more powerful killer of souls, alas, I do not know how to do do! not ask you to Victoria Island, snow <j???·???(1147,403)>, he might have a solution. ") 
 MisBeginCondition (NoRecord, 1903) 
 MisBeginCondition (NoMission, 1903) 
 MisBeginCondition (HasRecord, 1902) 
 MisBeginAction (AddMission, 1903) 
 MisCancelAction (ClearMission, 1903) 

 MisNeed (MIS_NEED_DESP, "Victoria Island to the snow to seek biochemical <j???·???(1147,403)> find a solution to the crisis.") 
 MisHelpTalk ( "<t> dead zombie killer but much more than those, and not a level ah! If tracer re--emerged on the big trouble.") 
 MisResultCondition (AlwaysFailure) 
 
 ------------------------------------ Winter crisis ----------------------------( the end of the island) 
 DefineMission (6713, "Winter Island crisis", 1903, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> savior! You definitely are my savior! Hero! I'll wait for you a long time! Here please ~") 
 MisResultCondition (HasMission, 1903) 
 MisResultCondition (NoRecord, 1903) 
 MisResultAction (ClearMission, 1903) 
 MisResultAction (SetRecord, 1903) 
 MisResultAction (AddExp, 100000, 100000) 
 MisResultAction (AddMoney, 150000) 
 MisResultAction (GiveNpcMission, 6714, "Chris Explorer", 5) 

 
 
 ------------------------------------ Jill ----------------------------( help to start) 
 DefineMission (6714, "Gill for help", 1904) 
 MisBeginTalk ( "<t> a couple of days ago, Jill Winter Lake Island to me for help, saying that the souls of killers over there to start a riot, and she and Lyon, two people busy, and wanted me to help, but I have were dragged down here, and could not move! I hope you will help me run the winter trip to Lake Island, the two of them to help you, thank you a ~ ") 
 MisBeginCondition (NoRecord, 1904) 
 MisBeginCondition (NoMission, 1904) 
 MisBeginCondition (HasRecord, 1903) 
 MisBeginAction (AddMission, 1904) 
 MisCancelAction (ClearMission, 1904) 

 MisNeed (MIS_NEED_DESP, "for the Island Lake Christopher last winter <j???·??(958,1159)> to help solve problems.") 
 MisHelpTalk ( "<t> heard that the souls of those zombie killer evolved, with a strong attack, and I am really worried Gill and Lyon can not cope with it!") 
 MisResultCondition (AlwaysFailure) 
 
 ------------------------------------ Jill ----------------------------( help end) 
 DefineMission (6715, "Gill for help", 1904, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> Chris help you? Call, thank God, I'm rushing a Lyon!") 
 MisResultCondition (HasMission, 1904) 
 MisResultCondition (NoRecord, 1904) 
 MisResultAction (ClearMission, 1904) 
 MisResultAction (SetRecord, 1904) 
 MisResultAction (AddExp, 100000, 100000) 
 MisResultAction (AddMoney, 150000) 
 MisResultAction (GiveNpcMission, 6716, "Gill Explorer", 5) 
 

 --Immortal souls ------------------------------------ ---------------------------- 
 DefineMission (6716, "dead souls", 1905) 
 MisBeginTalk ( "<t> not saying anything, and the elimination of points to help me go <b????> <j????(839,1160)> it! <j???·??(958,1159)>") 
 MisBeginCondition (NoRecord, 1905) 
 MisBeginCondition (NoMission, 1904) 
 MisBeginCondition (HasRecord, 1904) 
 MisBeginAction (AddMission, 1905) 
 MisBeginAction (AddTrigger, 19051, TE_KILL, 1086, 10) 
 MisCancelAction (ClearMission, 1905) 
 
 MisNeed (MIS_NEED_DESP, "the elimination of 10 dead killer <j????(839,1160)> to alleviate some pressure on Gill and Chris") 
 MisNeed (MIS_NEED_KILL, 1086, 10, 10, 10) 

 
 MisResultTalk ( "<t> tracer not have to worry about my problem, hee hee ~") 
 MisHelpTalk ( "<t> zombie killer can become dead, then dead killer who will chase into, ah ... ...") 
 MisResultCondition (HasMission, 1905) 
 MisResultCondition (NoRecord, 1905) 
 MisResultCondition (HasFlag, 1905, 19) 
 MisResultAction (ClearMission, 1905) 
 MisResultAction (SetRecord, 1905) 
 MisResultAction (AddExp, 400000, 300000) 
 MisResultAction (AddMoney, 350000) 
 MisResultAction (GiveNpcMission, 6717, "Gill Explorer", 6) 
 
 InitTrigger () 
 TriggerCondition (1, IsMonster, 1086) 
 TriggerAction (1, AddNextFlag, 1905, 10, 10) 
 RegCurTrigger (19051) 
 
 
 ------------------------------------ T ----------------------------( the beginning of the virus stock solution) 
 DefineMission (6717, "T--virus stock solution", 1906) 
 MisBeginTalk ( "<t> to you, This is what I get the T--virus stock solution is westfaelische to me, want me to solve this problem, but I am not good at research, Lyon, on the contrary, more appropriate, you put this to the him. ") 
 MisBeginCondition (NoRecord, 1906) 
 MisBeginCondition (NoMission, 1906) 
 MisBeginCondition (HasRecord, 1905) 
 MisBeginAction (AddMission, 1906) 
 MisBeginAction (GiveItem, 6320,1,4) 
 MisCancelAction (ClearMission, 1906) 
 MisCancelAction (TakeItem, 6320,1) 
 MisBeginBagNeed (1) 
 
 MisNeed (MIS_NEED_DESP, "Solution to the T--virus research <j???·??(365,1526)>.") 
 MisHelpTalk ( "<t> really is a very powerful virus, even ordinary people can become a zombie ... ...") 
 MisResultCondition (AlwaysFailure) 
 
 ------------------------------------ T ----------------------------( the end of the virus stock solution) 
 DefineMission (6718, "T--virus stock solution", 1906, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> T virus? This is the lead and dead zombie killer publicity chief of the Law?") 
 MisResultCondition (HasMission, 1906) 
 MisResultCondition (NoRecord, 1906) 
 MisResultCondition (HasItem, 6320,1) 
 MisResultAction (ClearMission, 1906) 
 MisResultAction (TakeItem, 6320,1) 
 MisResultAction (SetRecord, 1906) 
 MisResultAction (AddExp, 100000,100000) 
 MisResultAction (AddMoney, 200000) 
 MisResultAction (GiveNpcMission, 6719, "Explorers of Lyon", 4) 

 
 ------------------------------------ ----------------------------( Antidote to start) 
 DefineMission (6719, "antidote", 1907) 
 MisBeginTalk ( "<t> Well, according to the T--virus developed I finally understand the agents, as long as the corpse and the souls of those who injected the killer, they will be able to return to normal, in addition to the antidote also has a preventive effect, those who have injected T will not be infected with virus. Now you put this thing to let my teacher! ") 
 MisBeginCondition (NoRecord, 1907) 
 MisBeginCondition (NoMission, 1907) 
 MisBeginCondition (HasRecord, 1906) 
 MisBeginAction (AddMission, 1907) 
 MisBeginAction (GiveItem, 6321,1,4) 
 MisCancelAction (ClearMission, 1907) 
 MisCancelAction (TakeItem, 6321,1) 
 MisBeginBagNeed (1) 
 
 MisNeed (MIS_NEED_DESP, "will be developed in Lyon antidote <j????·??(297,901)> to let him to develop measures for the prevention and treatment.") 
 MisHelpTalk ( "<t> With this, the world will be a peaceful ~") 
 MisResultCondition (AlwaysFailure) 
 
 ------------------------------------ End ----------------------------( antidote) 
 DefineMission (6720, "antidote", 1907, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 
 MisResultTalk ( "<t> Oh ~ ~ Lyon had already developed a ah ~ really worthy of the most proud of my students! Good! Very powerful! I'll go to the development of prevention and treatment measures to ~") 
 MisResultCondition (HasMission, 1907) 
 MisResultCondition (NoRecord, 1907) 
 MisResultCondition (HasItem, 6321,1) 
 MisResultAction (ClearMission, 1907) 
 MisResultAction (TakeItem, 6321,1) 
 MisResultAction (ClearRecord, 1901) 
 MisResultAction (ClearRecord, 1902) 
 MisResultAction (ClearRecord, 1903) 
 MisResultAction (ClearRecord, 1904) 
 MisResultAction (ClearRecord, 1905) 
 MisResultAction (ClearRecord, 1906) 
 MisResultAction (AddItem_Mission2) 
 MisResultAction (AddExp, 100000, 100000) 
 MisResultAction (AddMoney, 200000) 
 

 --Entourage Exchange ---------------------------------------- ---------------------------------- chest 
 DefineMission (6721, "Exchange entourage chest", 1908) 
 MisBeginTalk ( "<t> since the adults returned to the Virgin after the world, many people came with their own entourage is on the island in winter to see him, and later comparison of these people had their own entourage to! In order to give us a level playing field opportunity, and I can call to a number of followers, who have tickets can be as long as the dollar--but before that, too would like to do to help me to be a mandate, there is no free lunch, you said right? tortoise shell King ( <b??> falling <j????(197,901)>); strange stones (<b???> falling <j????(404,1340)>);??stones (<j winter Island Islands (451,1288)> <b??> fall); strange bear (falling <j????(661,1230)> <b???>); Jingying ribs (<j winter Islands (839,1160)> <b????> fall); ") 
 MisBeginCondition (NoRecord, 1908) 
 MisBeginCondition (NoMission, 1908) 
 MisBeginAction (AddMission, 1908) 

 MisBeginAction (AddTrigger, 19081, TE_GETITEM, 6236, 5) 
 MisBeginAction (AddTrigger, 19082, TE_GETITEM, 6237, 5) 
 MisBeginAction (AddTrigger, 19083, TE_GETITEM, 6238, 5) 
 MisBeginAction (AddTrigger, 19084, TE_GETITEM, 6239, 5) 
 MisBeginAction (AddTrigger, 19085, TE_GETITEM, 6240, 5) 

 
 MisNeed (MIS_NEED_DESP, "just to collect points to help the winter ceremony Monster Island off the expected, are some general things ~ <j????·??(323,903)>") 

 MisNeed (MIS_NEED_ITEM, 6236, 5, 10, 5) 
 MisNeed (MIS_NEED_ITEM, 6237, 5, 20, 5) 
 MisNeed (MIS_NEED_ITEM, 6238, 5, 30, 5) 
 MisNeed (MIS_NEED_ITEM, 6239, 5, 40, 5) 
 MisNeed (MIS_NEED_ITEM, 6240, 5, 50, 5) 

 MisResultTalk ( "<t> From now on, you can be here in my chest?~ entourage dollar as long as you have tickets, you can find me ~ Of course, the lottery can be expired with the ~") 
 MisHelpTalk ( "<t> simple things can get better, why not do it?") 
 MisResultCondition (HasMission, 1908) 
 MisResultCondition (NoRecord, 1908) 
 MisResultCondition (HasItem, 6236,5) 
 MisResultCondition (HasItem, 6237,5) 
 MisResultCondition (HasItem, 6238,5) 
 MisResultCondition (HasItem, 6239,5) 
 MisResultCondition (HasItem, 6240,5) 
 MisResultAction (TakeItem, 6236,5) 
 MisResultAction (TakeItem, 6237,5) 
 MisResultAction (TakeItem, 6238,5) 
 MisResultAction (TakeItem, 6239,5) 
 MisResultAction (TakeItem, 6240,5) 
 MisResultAction (ClearMission, 1908) 
 MisResultAction (SetRecord, 1908) 


 InitTrigger () 
 TriggerCondition (1, IsItem, 6236) 
 TriggerAction (1, AddNextFlag, 1908, 10, 5) 
 RegCurTrigger (19081) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 6237) 
 TriggerAction (1, AddNextFlag, 1908, 20, 5) 
 RegCurTrigger (19082) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 6238) 
 TriggerAction (1, AddNextFlag, 1908, 30, 5) 
 RegCurTrigger (19083) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 6239) 
 TriggerAction (1, AddNextFlag, 1908, 40, 5) 
 RegCurTrigger (19084) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 6240) 
 TriggerAction (1, AddNextFlag, 1908, 50, 5) 
 RegCurTrigger (19085) 


 --Virgin ------------------------------------------------ ------------------------ puppet doll 
 DefineMission (6722, "a puppet doll Virgin", 1909) 
 MisBeginTalk ( "<t> long, long time ago, in my master, karaoke adults created by me at the same time have created a puppet of a number of Virgin adults companion doll to me. Ten thousand years have passed, Virgin adults also back, which I have not spent, you hand him over to you ~ <j???????(2010,783)> ") 
 MisBeginCondition (LvCheck, ">", 99) 
 MisBeginCondition (NoMission, 1909) 
 MisBeginCondition (Get_Day_Mission3) 
 MisBeginAction (AddMission, 1909) 
 MisBeginAction (CreatBBBB, 1137) 
 MisCancelAction (killBBBB) 
 MisCancelAction (ClearMission, 1909) 
 
 
 MisNeed (MIS_NEED_DESP, "Please <b one hour puppet doll will be sent to Neville <j???????(2010,783)>> Office, remember to <b??> the past, any <b Jump map, use the machine vote was taken under escort to leave the field of view of the NPC, the death> caused by such acts as would be the loss of Virgin puppet doll. Keep this in mind! ") 

 MisHelpTalk ( "do not know Neville and karaoke adults and adults will eventually be all right?") 
 MisResultCondition (AlwaysFailure) 


 --Virgin ------------------------------------------------ ------------------------ puppet doll 
 DefineMission (6723, "a puppet doll Virgin", 1909, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 

 MisResultTalk ( "<t> This is the Virgin puppet dolls? Karaoke statue given to me by you? Ah, yes I received.") 
 MisResultCondition (HasMission, 1909) 
 MisResultAction (CheckBBBB) 
 MisResultAction (ClearMission, 1909) 
 MisResultAction (AddExp, 600000, 600000) 
 MisResultAction (AddMoney, 300000) 
 MisResultAction (AddItem_Mission3) 

 ------------------------ ------------------------------------------------ Doll puppet karaoke 
 DefineMission (6724, "a puppet doll karaoke", 1910) 
 MisBeginTalk ( "<t> long, long time ago, in my master, Neville adults created by me at the same time have created several puppet karaoke adult companion doll to me. Ten thousand years have passed, and the adults come back to Virgin , and also adults and good karaoke, which I have not spent, you hand him over to you ~ <j???????(2010,783)> ") 
 MisBeginCondition (LvCheck, ">", 99) 
 MisBeginCondition (NoMission, 1910) 
 MisBeginCondition (Get_Day_Mission4) 
 MisBeginAction (AddMission, 1910) 
 MisBeginAction (CreatBBBB, 1138) 
 MisCancelAction (killBBBB) 
 MisCancelAction (ClearMission, 1910) 

 MisNeed (MIS_NEED_DESP, "Please <b one hour puppet doll will be sent to karaoke <j???????(2010,783)>> Office, remember to <b??> the past, any <b Jump map, use the tickets were escorted to leave the field of view of the NPC, the death> caused by such acts as would be the loss of karaoke puppet doll. Keep this in mind! ") 

 MisHelpTalk ( "do not know Neville and karaoke adults and adults will eventually be all right?") 
 MisResultCondition (AlwaysFailure) 


 ------------------------ ------------------------------------------------ Doll puppet karaoke 
 DefineMission (6725, "a puppet doll karaoke", 1910, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 

 MisResultTalk ( "<t> This is a karaoke puppet dolls? Virgin statue given to me by you? Ah, yes I received.") 
 MisResultCondition (HasMission, 1910) 
 MisResultAction (CheckBBBB) 
 MisResultAction (ClearMission, 1910) 
 MisResultAction (AddExp, 600000, 600000) 
 MisResultAction (AddMoney, 300000) 
 MisResultAction (AddItem_Mission4) 

 ------------------------------------------------ ------------------------ Agent Heilonggang 
 DefineMission (6726, "Black Dragon intelligence", 1911) 
 MisBeginTalk ( "<t> Heilonggang I have raised in the nest and picked up a??, then it is I used to pass information on the Diablo Fam, and now I intend to tell something to others, But now no one to help me, can you help to help you? ") 
 MisBeginCondition (LvCheck, ">", 99) 
 MisBeginCondition (NoMission, 1911) 
 MisBeginCondition (NoMission, 1912) 
 MisBeginCondition (Get_Day_Mission5) 
 MisBeginAction (AddMission, 1911) 
 MisBeginAction (GiveItem, 6322,1,4) 
 MisBeginAction (CreatBBBB, 1139) 
 MisCancelAction (ClearMission, 1911) 
 MisCancelAction (TakeItem, 6322,1) 
 MisCancelAction (killBBBB) 

 MisBeginBagNeed (1) 

 MisNeed (MIS_NEED_DESP, "Please <b 1 hours will be sent to Heilongjiang agent <j???·??(103,472)>> Office, remember to <b??> the past, any <b Jump map, the use of air tickets , the NPC were escorted to leave the field of view, the death> caused by such acts as would be the loss of intelligence in Heilongjiang. Keep this in mind! ") 

 MisHelpTalk ( "hope that this information can be successfully sent out ~") 
 MisResultCondition (AlwaysFailure) 


 --Heilonggang ------------------------------------------------ ------------------------ agent 
 DefineMission (6727, "Black Dragon intelligence", 1911, COMPLETE_SHOW) 
 MisBeginCondition (AlwaysFailure) 

 MisResultTalk ( "<t> This is the Diablo intelligence Fam ah ~ you ~ Thank you for your help") 
 MisResultCondition (HasMission, 1911) 
 MisResultAction (CheckBBBB) 
 MisResultCondition (HasItem, 6322,1) 
 MisResultAction (TakeItem, 6322, 1) 
 MisResultAction (ClearMission, 1911) 
 MisResultAction (AddExp, 1000000, 1000000) 
 MisResultAction (AddMoney, 300000) 
 MisResultAction (AddItem_Mission5) 

 --Taking of information ---------------------------------------- ---------------------------------- 
 DefineMission (6728, "Taking of intelligence", 1912) 
 MisBeginTalk ( "<t> I heard the second realm of karaoke is located in two places at once some of the regular transmission of information to others, as a guardian of those I do not want to spread to the outside world, after all some trouble, so I hope you can to help those intelligence intercepted. to bring information to them, respectively, is very simple, will be issued by them is the light. ") 
 MisBeginCondition (LvCheck, ">", 99) 
 MisBeginCondition (NoRecord, 1912) 
 MisBeginCondition (NoMission, 1911) 
 MisBeginCondition (NoMission, 1912) 
 MisBeginAction (AddMission, 1912) 
 MisCancelAction (ClearMission, 1912) 

 MisBeginAction (AddTrigger, 19121, TE_GETITEM, 6322, 1) 
 
 MisNeed (MIS_NEED_DESP, "bring intelligence to kill the other players will be handed over to intelligence documents <j???????(360,117)>.") 
 MisNeed (MIS_NEED_ITEM, 6322, 1, 10, 1) 

 MisResultTalk ( "<t> Thank you for your help ~") 
 MisHelpTalk ( "<t> If this information spread to the outside world, then, is how things trouble ah ... ...") 
 MisResultCondition (HasMission, 1912) 
 MisResultCondition (NoRecord, 1912) 
 MisResultCondition (HasItem, 6322,1) 
 MisResultAction (TakeItem, 6322,1) 
 MisResultAction (ClearMission, 1912) 
 MisResultAction (AddExp, 300000, 300000) 
 MisResultAction (AddMoney, 200000) 

 InitTrigger () 
 TriggerCondition (1, IsItem, 6322) 
 TriggerAction (1, AddNextFlag, 1912, 10, 5) 
 RegCurTrigger (19121) 

 end 
DuplicateMission001()