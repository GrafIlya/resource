function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) 
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("�� �����ܧӧ� ��� �ܧ���էڧߧѧ�ѧ� ["..posx..","..posy.."] ���ܧ��� �����ѧ� �� ���ڧ� ���֧��ާ�!") 
    Notice("\194 \204\238\241\234\226\229 \239\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \238\242\234\240\251\242 \239\238\240\242\224\235 \226 \204\232\240 \196\229\240\252\236\224!") 

    --local EntryName = "���ڧ� ���֧��ާ�"
    local EntryName = "\204\232\240 \196\229\240\252\236\224"
    SetMapEntryEventName( entry, EntryName )
end

function after_destroy_entry_PyramidCity(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("�� �����ܧӧ� ��� �ܧ���էڧߧѧ�ѧ� ["..posx..","..posy.."] ���ܧ��� �����ѧ� �� ���ڧ� ���֧��ާ�!") 
    Notice("\194 \204\238\241\234\226\229 \239\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \238\242\234\240\251\242 \239\238\240\242\224\235 \226 \204\232\240 \196\229\240\252\236\224!") 
end

function after_player_login_PyramidCity(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    --ChaNotice(player_name, "�� �����ܧӧ� ��� �ܧ���էڧߧѧ�ѧ� ["..posx..","..posy.."] ���ܧ��� �����ѧ� �� ���ڧ� ���֧��ާ�!") --֪ͨ������������������
    ChaNotice(player_name, "\194 \204\238\241\234\226\229 \239\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \238\242\234\240\251\242 \239\238\240\242\224\235 \226 \204\232\240 \196\229\240\252\236\224!") --֪ͨ������������������

end

function check_can_enter_PyramidCity( role, copy_mgr )
    local Cha = TurnToCha(role)
	----------------------
	-- �����ӧ֧�ܧ� �ߧ� ����� --
	----------------------
	--�����ӧ֧��֧� ��֧ݧ� �ߧ� �����
	local checkBody = EquipForgeCheck(Cha, enumEQUIP_BODY, '>', 3)
	--�����ӧ֧��֧� ��֧��ѧ�ܧ� �ߧ� �����
	local checkGloves = EquipForgeCheck(Cha, enumEQUIP_GLOVE, '>', 3)
	--�����ӧ֧��֧� �ҧ��ڧߧܧ� �ߧ� �����
	local checkBoots = EquipForgeCheck(Cha, enumEQUIP_SHOES, '>', 3)
	--�����ӧ֧��֧� ����اڧ� ��ݧ֧ӧ� �� �ڧߧӧ֧ߧ�ѧ�� �ߧ� �����
	local checkWeap = EquipForgeCheck(Cha, enumEQUIP_RHAND, '>', 3)
	--�����ӧ֧��֧� ����اڧ� ����ѧӧ� �� �ڧߧӧ֧ߧ�ѧ�� �ߧ� �����
	local checkWeap2 = EquipForgeCheck(Cha, enumEQUIP_LHAND, '>', 3)
	--�����ӧ֧��֧� ��ا֧�֧ݧ�� �ߧ� �����
	local checkNeck = EquipForgeCheck(Cha, enumEQUIP_NECK, '>', 3)
	--�����ӧ֧��֧� �ܧ�ݧ��� ��ݧ֧ӧ� �� �ڧߧӧ֧ߧ�ѧ�� �ߧ� �����
	local checkRingL = EquipForgeCheck(Cha, enumEQUIP_HAND1, '>', 3)
	--�����ӧ֧��֧� �ܧ�ݧ��� ����ѧӧ� �� �ڧߧӧ֧ߧ�ѧ�� �ߧ� �����
	local checkRingR = EquipForgeCheck(Cha, enumEQUIP_HAND2, '>', 3)
	if (checkBody == true and checkGloves == true and checkBoots == true and (checkWeap == true or checkWeap2 == true)and checkNeck == true and checkRingL == true and checkRingR == true) then
		return 1
	else
		Dbag = DelBagItem(Cha, 8129, 1)
		if Dbag == 1 then
			return 1
		else
		--HelpInfo( Cha, 0, "�����ҧ� �ӧ�ۧ�� �� ���קާߧ�� ������, �� ��֧ҧ� �է�ݧا֧� �ҧ��� �����:_1. ���֧ݧ� +4 �ڧݧ� �ӧ���;_2. ���֧��ѧ�ܧ� +4 �ڧݧ� �ӧ���;_3. �����ڧߧܧ� +4 �ڧݧ� �ӧ���;_4. �����اڧ� +4 �ڧݧ� �ӧ���;_5. ���ا֧�֧ݧ�� +4 �ڧݧ� �ӧ���;_6. ����ݧ��� +4 �ڧݧ� �ӧ���. ")
		HelpInfo( Cha, 0,  "\215\242\238\225\251 \226\238\233\242\232 \226 \210\184\236\237\243\254 \210\238\239\252, \243 \242\229\225\255 \228\238\235\230\229\237 \225\251\242\252 \244\238\240\230:_1. \210\229\235\238 +4 \232\235\232 \226\251\248\229;_2. \207\229\240\247\224\242\234\232 +4 \232\235\232 \226\251\248\229;_3. \193\238\242\232\237\234\232 +4 \232\235\232 \226\251\248\229;_4. \206\240\243\230\232\229 +4 \232\235\232 \226\251\248\229;_5. \206\230\229\240\229\235\252\229 +4 \232\235\232 \226\251\248\229;_6. \202\238\235\252\246\224 +4 \232\235\232 \226\251\248\229.")
		return 0
		end
	end
	----------------------------
	-- ����ߧ֧� ����ӧ֧�ܧ� �ߧ� ����� --
	----------------------------
	if Lv(Cha) >=150 then
		return 1
	else
		--PopupNotice(role, "�����ҧ� �ӧ�ۧ��, ��֧���ߧѧ� �է�ݧا֧� �ҧ��� �ӧ��� 150 ����ӧߧ�!")
		PopupNotice(role, "\215\242\238\225\251 \226\238\233\242\232, \239\229\240\241\238\237\224\230 \228\238\235\230\229\237 \225\251\242\252 \226\251\248\229 150 \243\240\238\226\237\255!")
		return 0
	end
end

function begin_enter_PyramidCity(role, copy_mgr) 
	MoveCity(role, "Dark Swamp")
end 