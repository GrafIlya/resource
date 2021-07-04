function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,4)
end 

function after_create_entry(entry) 
    local guild_lv = GetFightGuildLevel() 
    local RedSide_GuildID, BlueSide_GuildID = GetFightGuildID(guild_lv) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    SetMapCopyParam(copy_mgr, 1, 3)
    SetMapCopyParam(copy_mgr, 2, 2)
    SetMapCopyParam(copy_mgr, 3, RedSide_GuildID) 
    SetMapCopyParam(copy_mgr, 4, BlueSide_GuildID)
    SetMapCopyParam(copy_mgr, 5, 0)
    FinishSetMapEntryCopy(entry, 1) 
    local RedSideName = GetGuildName( RedSide_GuildID ) 
    local BlueSideName = GetGuildName( BlueSide_GuildID ) 
	local EntryName = "����� �������: ["..RedSideName.."]  ������  ["..BlueSideName.."]"
    SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("����������: ���������� ����� �������. ������������ �������: ������� ["..RedSideName.."], ���������: ������� ["..BlueSideName.."]. ����� ����� ������� ������������ �� �������� � ���� ������� ("..posx..","..posy.."), ����� ������� � [��� �����] ��� ��������.")
end

function after_destroy_entry_secretgarden(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
end

function after_player_login_secretgarden(entry, player_name)
    local copy_mgr = GetMapEntryCopyObj(entry, 1) 
    local RedSide_GuildID = GetMapCopyParam(copy_mgr, 3 )
    local BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4 )
    local RedSideName = GetGuildName( RedSide_GuildID ) 
    local BlueSideName = GetGuildName( BlueSide_GuildID ) 

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "����������: ���������� ����� �������. ������������ �������: ������� ["..RedSideName.."], ���������: ������� ["..BlueSideName.."]. ����� ����� ������� ������������ �� �������� � ���� ������� ("..posx..","..posy.."), ����� ������� � [��� �����] ��� ��������.")
end

function check_can_enter_secretgarden( role, copy_mgr )
	local Cha = TurnToCha(role)
    local RedSide_GuildID = GetMapCopyParam(copy_mgr, 3 )
    local BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4 )
	if RedSide_GuildID == 0 or BlueSide_GuildID == 0 then
		SystemNotice ( role , "��������, �� �������� �� ����� �������� ��� ����������� ������� " )
		return 0
	end
	if RedSide_GuildID == GetChaGuildID(Cha) then
		return 1
	else
		if BlueSide_GuildID == GetChaGuildID(Cha) then
			return 1
		else
			SystemNotice(role,"��������, �� ����������� ����� ������ ����� ������� ")
			return 0
		end
	end
end

function begin_enter_secretgarden( role, copy_mgr )
	local Cha = TurnToCha( role )
	local RedSide_GuildID, BlueSide_GuildID
	RedSide_GuildID = GetMapCopyParam( copy_mgr, 3 )
	BlueSide_GuildID = GetMapCopyParam( copy_mgr, 4 )

	SystemNotice(role,"���� � [��� �����]")

	if RedSide_GuildID == GetChaGuildID(Cha) then
		if ( AddonSystem["Teleport"] == 1 ) then
			local n = 37
			teleport( role, n )
		else
			MoveCity( role, "Red Camp" )
		end
	else
		if BlueSide_GuildID == GetChaGuildID(Cha) then
			if ( AddonSystem["Teleport"] == 1 ) then
				local n = 38
				teleport( role, n )
			else
				MoveCity( role, "Blue Camp" )
			end
		end
	end
end 