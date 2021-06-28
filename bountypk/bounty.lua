Bounty = {}
_bountyPath = "bountypk/players"
_bountyPlayers = {}
 
function file_exists(name)
  local f=io.open(name,"r")
  if f~=nil then io.close(f) return true else return false end
end
 
function Bounty:Check(role)
if file_exists(GetResPath(_bountyPath.."/"..GetCharID(role)..".txt")) then
local PlayerData = table.load(GetResPath(_bountyPath.."/"..GetCharID(role)..".txt"),"r")
if(PlayerData ~= nil)then
return true
else
return false
end
else
return false
end
end
 
 
function Bounty:Create(role)
local id = GetCharID(role)
local name = GetChaDefaultName(role)
if Bounty:Check(role) == false then
_bountyPlayers[name] = { bounty = 1 }
table.save(_bountyPlayers, GetResPath(_bountyPath.."/"..id..".txt"),"w")
else
RLOG('BountyHunters',name..'already has a bounty file')
end
end
 
 
function Bounty:Load(cha)
local chaName = GetChaDefaultName(cha)
local chaID = GetCharID(cha)
if(file_exists(GetResPath(_bountyPath.."/"..chaID..".txt")) ~= false)then
local Get_playerBounty = table.load(GetResPath(_bountyPath.."/"..chaID..".txt"),"r")
return Get_playerBounty[chaName]
else
return nil
end
end
function Bounty:Add(role,amt)
local current = Bounty:Load(role).bounty
local total = current + amt + 0
_bountyPlayers[GetChaDefaultName(role)] = { bounty = total }
table.save(_bountyPlayers, GetResPath(_bountyPath.."/"..GetCharID(role)..".txt"),"w")
end
 
function Bounty:Remove(role,amt)
local current = Bounty:Load(role).bounty
local total = current - amt
_bountyPlayers[GetChaDefaultName(role)] = { bounty = total }
table.save(_bountyPlayers, GetResPath(_bountyPath.."/"..GetCharID(role)..".txt"),"w")
end                                                                                                                                                                                                                                                                                                                                                