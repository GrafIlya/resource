print( "�������� NPCScript05.lua" )
function hell_circle()
	Talk( 1, "������, �����! ������ ������� � ������ ����������? ")
	Text( 1, "�������� ����������. ", CloseTalk )
	Text( 1, "����. ", CloseTalk )
end

function bronze_cloak()
	Talk( 1, "������, �����! ������ �������� ��������� ����? ")
	Text( 1, "�������� ����������. ", CloseTalk )
	Text( 1, "����. ", CloseTalk )
end

function sereb_cloak()
	Talk( 1, "������, �����! ������ �������� ���������� ����? ")
	Text( 1, "�������� ����������. ", CloseTalk )
	Text( 1, "����. ", CloseTalk )
end

function equip_apoc()
	Talk( 1, "������, �����! ������ �������� ���������� ������������? ")
	Text( 1, "�������� ����������. ", CloseTalk )
	Text( 1, "����. ", CloseTalk )
end

function nec_apoc()
	Talk( 1, "������, �����! ������ �������� ��������� ������������? ")
	Text( 1, "�������� ����������. ", CloseTalk )
	Text( 1, "����. ", CloseTalk )
end

function tp_Sibir()
	Talk( 1, "������, �����! ������ ������� � ������? ")
	Text( 1, "����������������� ", GoTo, 1316, 536,  "darkblue" )
	Text( 1, "����. ", CloseTalk )
end

function tp_SPB()
	Talk( 1, "������, �����! ������ ������� � ���? ")
	Text( 1, "����������������� ", GoTo, 891, 3575,  "magicsea" )
	Text( 1, "����. ", CloseTalk )
end

function GoToWhere()
	Talk( 1, "������. ����� ����������������? �������, ���� ������ �������: ")
	Text( 1, "������ ", GoTo, 2191, 2781,  "garner" )
	Text( 1, "�����-��������� ", GoTo, 891, 3575,  "magicsea" )
	Text( 1, "����. ", CloseTalk )
end

function transmittal()
	Talk( 1, "������. ����� ����������������? �������, ���� ������ �������: ")
	Text( 1, "������ ", GoTo, 2191, 2781,  "garner" )
	Text( 1, "������ ", GoTo, 1316, 536,  "darkblue" )
	Text( 1, "����. ", CloseTalk )
end