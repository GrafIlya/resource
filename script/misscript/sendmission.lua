print( "З†£агІ™† SendMission.lua" )

function TestDefMission( id, name, misid, npcid, areaid )
	DefineMission( id, name, misid, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
	MisReultTalk("—пасибо что доставили мне посылку!")
	MisResultCondition( HasRandMissionNpc, misid, npcid, areaid )
	MisResultCondition( NoRandNpcItemFlag, misid, npcid )
	MisResultAction( TakeRandNpcItem, misid, npcid )
end