--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    --MapCanPK(map, 0) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
	MapCanTeam(map , 1)
    MapType ( map , 3 )
end


function get_map_entry_pos_leiting2()   --����?������? ������?

	local POS_X=2160
	local POS_Y=2782
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner") --������ �������? ������??����?������
    SetMapEntryTime(map, "2010/10/18/0/0", "0/3/0", "0/0/30", "0/0/50") --����� �������? ������??����?������

end


