--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 4 )

end


function get_map_entry_pos_abandonedcity()   --������ڵ�λ�õ����꣨���꣨�ף���

	local POS_X=2177
	local POS_Y=2789
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner") --������ڵ�λ�ã���ͼ����
    SetMapEntryTime(map, "2010/7/28/0/0", "0/1/0", "0/1/0", "0/1/0") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����

end

function map_run_abandonedcity( map )
	
end