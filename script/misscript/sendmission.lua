print( "����㧪� SendMission.lua" )

function TestDefMission( id, name, misid, npcid, areaid )
	DefineMission( id, name, misid, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
	MisReultTalk("������� ��� ��������� ��� �������!")
	MisResultCondition( HasRandMissionNpc, misid, npcid, areaid )
	MisResultCondition( NoRandNpcItemFlag, misid, npcid )
	MisResultAction( TakeRandNpcItem, misid, npcid )
end