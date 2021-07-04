print( "‡ Јаг§Є  Functions.lua" )

MFRADIX					= 100
CRTRADIX				= 100
ATKER					= 0
DEFER					= 1
count_haidao			= 0
count_haijun			= 0
five_seconds			= 0
second_five_seconds		= 0
time_can_setmonster		= 0
time_can_setnvsheng		= 0
check_need_show			= 0 
create_boss_hj			= 0
create_boss_hd			= 0
count_haijun2			= 0
count_haidao2			= 0
five_seconds2			= 0
second_five_seconds2	= 0
time_can_setmonster2	= 0
time_can_setnvsheng2	= 0
check_need_show2		= 0
create_boss_hj2			= 0
create_boss_hd2			= 0

function get_repatriate_city_guildwar( role )
	local map_name_role_guildwar = GetChaMapName( role )
	return map_name_role_guildwar
end

function get_repatriate_city_guildwar2( role )
	local map_name_role_guildwar2 = GetChaMapName( role )
	return map_name_role_guildwar2
end

atk_statecheck = {}
def_statecheck = {}

function Reset_Statecheck()
	for i = 1, 100, 1 do
		atk_statecheck[i]	= 0
		def_statecheck[i]	= 0
	end
end

function EightyLv_ExpAdd( cha, expadd )
	if ValidCha( cha ) == 1 then
		if ChaIsBoat( cha ) == 0 then
			if Lv( cha ) >= 80 then
				expadd = math.floor( expadd / 50 )
			end
			if expadd == 0 then
				SystemNotice( TurnToCha( cha ), "Дистанция до цели слишком велика чтобы получать опыт " )
			end
		end
		exp = GetChaAttr( cha, ATTR_CEXP )
		exp = exp + expadd
		SetCharaAttr( exp, cha, ATTR_CEXP )
	end
end
 
function Check_State( atk_role, def_role )
	Reset_Statecheck()
	atk_statecheck[STATE_YS] = GetChaStateLv( atk_role, STATE_YS )
end

function CreatChaSkill( role )
end

function CheckJobLegal( job )
	local check_job = 1

	if job < JOB_TYPE_XINSHOU or job > JOB_TYPE_GONGCHENGSHI then
		check_job = 0
	end

	return check_job
end

function RemoveYS( role )
	RemoveState( role , STATE_YS )
	return 1
end

function Rem_State_Unnormal( role )
	RemoveState( role, STATE_ZD )
	RemoveState( role, STATE_MB )
	RemoveState( role, STATE_ZZZH )
	RemoveState( role, STATE_SYNZ)
	RemoveState( role, STATE_SDBZ )
	RemoveState( role, STATE_TJ )
	RemoveState( role, STATE_SJ )
	RemoveState( role, STATE_JNJZ )
	RemoveState( role, STATE_GJJZ )
	RemoveState( role, STATE_BDJ )
	RemoveState( role, STATE_XN )
	RemoveState( role, STATE_NT )
	RemoveState( role, STATE_DIZ )
	RemoveState( role, STATE_SWCX )
	RemoveState( role, STATE_JSDD )
	RemoveState( role, STATE_HYMH )
	RemoveState( role, STATE_HLKJ )
	RemoveState( role, STATE_HLLM )
	RemoveState( role, STATE_CRXSF )
	RemoveState( role, STATE_BlackHX )
	RemoveState( role, STATE_HLKJ )
end

function Rem_State_StarUnnormal( role )
	RemoveState( role, STATE_KUANGZ )
	RemoveState( role, STATE_QUANS )
	RemoveState( role, STATE_QINGZ )
end

function Rem_State_NOSEA( role )
	RemoveState( role, STATE_KB )
	RemoveState( role, STATE_XLZH )
	RemoveState( role, STATE_PKJSYS )
	RemoveState( role, STATE_PKSFYS)
	RemoveState( role, STATE_TSHD )
	RemoveState( role, STATE_FZLZ )
	RemoveState( role, STATE_PKZDYS )
	RemoveState( role, STATE_PKKBYS )
	RemoveState( role, STATE_YSLLQH )
	RemoveState( role, STATE_YSMJQH )
	RemoveState( role, STATE_YSLQQH )
	RemoveState( role, STATE_YSTZQH )
	RemoveState( role, STATE_YSJSQH )
	RemoveState( role, STATE_DENGLONG )
	RemoveState( role, STATE_YSMspd )
	RemoveState( role, STATE_PKSBYS )
	RemoveState( role, STATE_KUANGZ )
	RemoveState( role, STATE_QUANS )
	RemoveState( role, STATE_QINGZ )
	RemoveState( role, STATE_CJBBT )
	RemoveState( role, STATE_JRQKL )
	RemoveState( role, STATE_KALA )
	RemoveState( role, STATE_CZZX )
	RemoveState( role, STATE_JLFT1 )
	RemoveState( role, STATE_JLFT2 )
	RemoveState( role, STATE_JLFT3 )
	RemoveState( role, STATE_JLFT4 )
	RemoveState( role, STATE_JLFT5 )
	RemoveState( role, STATE_JLFT6 )
	RemoveState( role, STATE_JLFT7 )
	RemoveState( role, STATE_JLFT8 )
end

function SetCharaAttr( a, b, c )
	local x, y = b, c
	local z = math.floor( a )
	SetChaAttr( x, y, z )
end

function Attr_ap( a )
	local attr_ap = GetChaAttr( a, ATTR_AP )
	return attr_ap
end

function Attr_tp( a )
	local attr_tp = GetChaAttr( a, ATTR_TP )
	return attr_tp
end

function CheckCha_Job( a )
	local role_attr_job = GetChaAttr(a, ATTR_JOB )
	return role_attr_job
end

function Exp( a )
	local exp = GetChaAttr( a, ATTR_CEXP )
	return exp
end

function Lv( a )
	local b = TurnToCha( a )
	local lv = GetChaAttr( b, ATTR_LV )
	return lv
end

function Hp( a )
	local hp = GetChaAttr( a, ATTR_HP )
	return hp
end

function Mxhp( a )
	local mxhp = GetChaAttr( a, ATTR_MXHP )
	return mxhp
end

function MxhpSa( a )
	local mxhpsa = GetChaAttr( a, ATTR_STATEC_MXHP) / ATTR_RADIX
	return mxhpsa
end

function MxhpSb( a )
	local mxhpsb = GetChaAttr( a, ATTR_STATEV_MXHP )
	return mxhpsb
end

function MxhpIa( a )
	local mxhpia = GetChaAttr( a, ATTR_ITEMC_MXHP ) / ATTR_RADIX
	return mxhpia
end

function MxhpIb(a)
	local mxhpib=GetChaAttr(a, ATTR_ITEMV_MXHP) 
	return mxhpib 
end 

function Sp(a)
	local sp=GetChaAttr(a,ATTR_SP) 
	return sp 
end 

function Mxsp(a)
	local mxsp=GetChaAttr(a,ATTR_MXSP) 
	return mxsp 
end 

function MxspSa(a)
	local mxspsa=GetChaAttr(a, ATTR_STATEC_MXSP)/ATTR_RADIX  
	return mxspsa 
end 

function MxspSb(a)
	local mxspsb=GetChaAttr(a, ATTR_STATEV_MXSP) 
	return mxspsb 
end 

function MxspIa(a)
	local mxspia=GetChaAttr(a, ATTR_ITEMC_MXSP)/ATTR_RADIX 
	return mxspia 
end 

function MxspIb(a)
	local mxspib=GetChaAttr(a, ATTR_ITEMV_MXSP) 
	return mxspib 
end 

function Mnatk(a)
	local mnatk=GetChaAttr(a,ATTR_MNATK) 
	return mnatk 
end 

function MnatkSa(a)
	local mnatksa= GetChaAttr(a, ATTR_STATEC_MNATK)/ATTR_RADIX 
	return mnatksa 
end 

function MnatkSb(a)
	local mnatksb=GetChaAttr(a, ATTR_STATEV_MNATK) 
	return mnatksb 
end 

function MnatkIa(a)
	local mnatkia=GetChaAttr(a, ATTR_ITEMC_MNATK)/ATTR_RADIX 
	return mnatkia 
end 

function MnatkIb(a)
	local mnatkib=GetChaAttr(a, ATTR_ITEMV_MNATK) 
	return mnatkib 
end 

function Mxatk(a)
	local mxatk=GetChaAttr(a,ATTR_MXATK) 
	return mxatk 
end 

function MxatkSa(a)
	local mxatksa= GetChaAttr(a, ATTR_STATEC_MXATK)/ATTR_RADIX  
	return mxatksa 
end 

function MxatkSb(a)
	local mxatksb=GetChaAttr(a, ATTR_STATEV_MXATK) 
	return mxatksb 
end 

function MxatkIa(a)
	local mxatkia=GetChaAttr(a, ATTR_ITEMC_MXATK)/ATTR_RADIX 
	return mxatkia 
end 

function MxatkIb(a)
	local mxatkib=GetChaAttr(a, ATTR_ITEMV_MXATK) 
	return mxatkib 
end 

function Def(a)
	local def=GetChaAttr(a,ATTR_DEF) 
	return def 
end 

function DefSa(a)
	local defsa= GetChaAttr(a, ATTR_STATEC_DEF)/ATTR_RADIX  
	return defsa 
end 

function DefSb(a)
	local defsb=GetChaAttr(a, ATTR_STATEV_DEF) 
	return defsb 
end 

function DefIa(a)
	local defia=GetChaAttr(a, ATTR_ITEMC_DEF)/ATTR_RADIX 
	return defia 
end 

function DefIb(a)
	local defib=GetChaAttr(a, ATTR_ITEMV_DEF) 
	return defib 
end 

function Resist(a)
	local def=GetChaAttr(a,ATTR_PDEF) 
	return def 
end 

function ResistSa(a)
	local defsa= GetChaAttr(a, ATTR_STATEC_PDEF)/ATTR_RADIX  
	return defsa 
end 

function ResistSb(a)
	local defsb=GetChaAttr(a, ATTR_STATEV_PDEF) 
	return defsb 
end 

function ResistIa(a)
	local defia=GetChaAttr(a, ATTR_ITEMC_PDEF)/ATTR_RADIX 
	return defia 
end 

function ResistIb(a)
	local defib=GetChaAttr(a, ATTR_ITEMV_PDEF) 
	return defib 
end 

function Hit(a)
	local hit=GetChaAttr(a,ATTR_HIT) 
	return hit 
end 

function HitSa(a)
	local hitsa= GetChaAttr(a, ATTR_STATEC_HIT)/ATTR_RADIX   
	return hitsa 
end 

function HitSb(a)
	local hitsb=GetChaAttr(a, ATTR_STATEV_HIT) 
	return hitsb 
end 

function HitIa(a)
	local hitia=GetChaAttr(a, ATTR_ITEMC_HIT)/ATTR_RADIX 
	return hitia 
end 

function HitIb(a)
	local hitib=GetChaAttr(a, ATTR_ITEMV_HIT) 
	return hitib 
end 

function Flee(a)
	local flee=GetChaAttr(a,ATTR_FLEE) 
	return flee 
end 

function FleeSa(a)
	local fleesa=  GetChaAttr(a, ATTR_STATEC_FLEE)/ATTR_RADIX  
	return fleesa 
end 

function FleeSb(a)
	local fleesb=GetChaAttr(a, ATTR_STATEV_FLEE) 
	return fleesb 
end 

function FleeIa(a)
	local fleeia=GetChaAttr(a, ATTR_ITEMC_FLEE)/ATTR_RADIX 
	return fleeia 
end 

function FleeIb(a)
	local fleeib=GetChaAttr(a, ATTR_ITEMV_FLEE) 
	return fleeib 
end 

function Mf(a)
	local mf=GetChaAttr(a,ATTR_MF)/MFRADIX 
	return mf 
end 

function MfSa(a)
	local mfsa= GetChaAttr(a, ATTR_STATEC_MF)/ATTR_RADIX  
	return mfsa 
end 

function MfSb(a)
	local mfsb=GetChaAttr(a, ATTR_STATEV_MF) 
	return mfsb 
end 

function MfIa(a)
	local mfia=GetChaAttr(a, ATTR_ITEMC_MF)/ATTR_RADIX 
	return mfia 
end 

function MfIb(a)
	local mfib=GetChaAttr(a, ATTR_ITEMV_MF) 
	return mfib 
end 

function Crt(a)
	local crt=GetChaAttr(a,ATTR_CRT)/CRTRADIX 
	return crt 
end 

function CrtSa(a)
	local crtsa= GetChaAttr(a, ATTR_STATEC_CRT)/ATTR_RADIX  
	return crtsa 
end 

function CrtSb(a)
	local crtsb=GetChaAttr(a, ATTR_STATEV_CRT) 
	return crtsb 
end 

function CrtIa(a)
	local crtia=GetChaAttr(a, ATTR_ITEMC_CRT)/ATTR_RADIX 
	return crtia 
end 

function CrtIb(a)
	local crtib=GetChaAttr(a, ATTR_ITEMV_CRT) 
	return crtib 
end 

function Hrec(a)
	local hrec=GetChaAttr(a,ATTR_HREC) 
	return hrec 
end 

function HrecSa(a)
	local hrecsa=  GetChaAttr(a, ATTR_STATEC_HREC)/ATTR_RADIX  
	return hrecsa 
end 

function HrecSb(a)
	local hrecsb=GetChaAttr(a, ATTR_STATEV_HREC) 
	return hrecsb 
end 

function HrecIa(a)
	local hrecia=GetChaAttr(a, ATTR_ITEMC_HREC)/ATTR_RADIX 
	return hrecia 
end 

function HrecIb(a)
	local hrecib=GetChaAttr(a, ATTR_ITEMV_HREC) 
	return hrecib 
end 

function Srec(a)
	local srec=GetChaAttr(a,ATTR_SREC) 
	return srec 
end 

function SrecSa(a)
	local srecsa= GetChaAttr(a, ATTR_STATEC_SREC)/ATTR_RADIX  
	return srecsa 
end 

function SrecSb(a)
	local srecsb=GetChaAttr(a, ATTR_STATEV_SREC) 
	return srecsb 
end 

function SrecIa(a)
	local srecia=GetChaAttr(a, ATTR_ITEMC_SREC)/ATTR_RADIX 
	return srecia 
end 

function SrecIb(a)
	local srecib=GetChaAttr(a, ATTR_ITEMV_SREC) 
	return srecib 
end 

function Aspd(a)
	local aspd=math.floor ( 100000 / GetChaAttr(a,ATTR_ASPD) )  
	return aspd 
end 

function AspdSa(a)
	local aspdsa=  GetChaAttr(a, ATTR_STATEC_ASPD)/ATTR_RADIX    
	return aspdsa 
end 

function AspdSb(a)
	local aspdsb=GetChaAttr(a, ATTR_STATEV_ASPD) 
	return aspdsb 
end 

function AspdIa(a)
	local aspdia=GetChaAttr(a, ATTR_ITEMC_ASPD)/ATTR_RADIX 
	return aspdia 
end 

function AspdIb(a)
	local aspdib=GetChaAttr(a, ATTR_ITEMV_ASPD) 
	return aspdib 
end 

function Adis(a)
	local adis=GetChaAttr(a,ATTR_ADIS) 
	return adis 
end 

function AdisSa(a)
	local adissa=  GetChaAttr(a, ATTR_STATEC_ADIS)/ATTR_RADIX   
	return adissa 
end 

function AdisSb(a)
	local adissb=GetChaAttr(a, ATTR_STATEV_ADIS) 
	return adissb 
end 

function AdisIa(a)
	local adisia=GetChaAttr(a, ATTR_ITEMC_ADIS)/ATTR_RADIX 
	return adisia 
end 

function AdisIb(a)
	local adisib=GetChaAttr(a, ATTR_ITEMV_ADIS) 
	return adisib 
end 

function Mspd(a)
	local mspd=GetChaAttr(a,ATTR_MSPD) 
	return mspd 
end 

function MspdSa(a)
	local mspdsa=  GetChaAttr(a, ATTR_STATEC_MSPD)/ATTR_RADIX   
	return mspdsa 
end 

function MspdSb(a)
	local mspdsb=GetChaAttr(a, ATTR_STATEV_MSPD) 
	return mspdsb 
end 

function MspdIa(a)
	local mspdia=GetChaAttr(a, ATTR_ITEMC_MSPD)/ATTR_RADIX 
	return mspdia 
end 

function MspdIb(a)
	local mspdib=GetChaAttr(a, ATTR_ITEMV_MSPD) 
	return mspdib 
end 

function Col(a)
	local col=GetChaAttr(a,ATTR_COL) 
	return col 
end 

function ColSa(a) 
	local colsa= GetChaAttr(a, ATTR_STATEC_COL)/ATTR_RADIX  
	return colsa 
end 

function ColSb(a) 
	local colsb=GetChaAttr(a, ATTR_STATEV_COL) 
	return colsb 
end 

function ColIa(a) 
	local colia=GetChaAttr(a, ATTR_ITEMC_COL)/ATTR_RADIX 
	return colia 
end 

function ColIb(a) 
	local colib=GetChaAttr(a, ATTR_ITEMV_COL) 
	return colib 
end 

function Str(a) 
	local str=GetChaAttr(a,ATTR_STR) 
	return str 
end 

function StrSa(a) 
	local strsa= GetChaAttr(a, ATTR_STATEC_STR)/ATTR_RADIX   
	return strsa 
end 

function StrSb(a) 
	local strsb=GetChaAttr(a, ATTR_STATEV_STR) 
	return strsb 
end 

function StrIa(a)
	local stria=GetChaAttr(a,ATTR_ITEMC_STR)/ATTR_RADIX 
	return stria 
end 

function StrIb(a)
	local strib=GetChaAttr(a,ATTR_ITEMV_STR) 
	return strib 
end 

function Dex(a)
	local dex=GetChaAttr(a,ATTR_DEX) 
	return dex 
end 

function DexSa(a)
	local dexsa= GetChaAttr(a, ATTR_STATEC_DEX)/ATTR_RADIX  
	return dexsa 
end 

function DexSb(a)
	local dexsb=GetChaAttr(a, ATTR_STATEV_DEX) 
	return dexsb 
end 

function DexIa(a)
	local dexia=GetChaAttr(a,ATTR_ITEMC_DEX)/ATTR_RADIX 
	return dexia 
end 

function DexIb(a)
	local dexib=GetChaAttr(a,ATTR_ITEMV_DEX) 
	return dexib 
end 

function Agi(a) 
	local agi=GetChaAttr(a,ATTR_AGI) 
	return agi 
end 

function AgiSa(a)
	local agisa= GetChaAttr(a, ATTR_STATEC_AGI)/ATTR_RADIX  
	return agisa 
end 

function AgiSb(a)
	local agisb=GetChaAttr(a, ATTR_STATEV_AGI) 
	return agisb 
end 

function AgiIa(a)
	local agiia=GetChaAttr(a,ATTR_ITEMC_AGI)/ATTR_RADIX 
	return agiia 
end 

function AgiIb(a)
	local agiib=GetChaAttr(a,ATTR_ITEMV_AGI) 
	return agiib 
end 

function Con(a)
	local con=GetChaAttr(a,ATTR_CON) 
	return con 
end 

function ConSa(a)
	local consa= GetChaAttr(a, ATTR_STATEC_CON)/ATTR_RADIX  
	return consa 
end 

function ConSb(a)
	local consb=GetChaAttr(a, ATTR_STATEV_CON) 
	return consb 
end 

function ConIa(a)
	local conia=GetChaAttr(a, ATTR_ITEMC_CON)/ATTR_RADIX 
	return conia 
end 

function ConIb(a)
	local conib=GetChaAttr(a, ATTR_ITEMV_CON) 
	return conib 
end 

function Sta(a)
	local sta=GetChaAttr(a,ATTR_STA) 
	return sta 
end 

function StaSa(a)
	local stasa= GetChaAttr(a, ATTR_STATEC_STA)/ATTR_RADIX  
	return stasa 
end 

function StaSb(a)
	local stasb=GetChaAttr(a, ATTR_STATEV_STA) 
	return stasb 
end 

function StaIa(a)
	local staia=GetChaAttr(a, ATTR_ITEMC_STA)/ATTR_RADIX 
	return staia 
end 

function StaIb(a)
	local staib=GetChaAttr(a, ATTR_ITEMV_STA) 
	return staib 
end 

function Luk(a)
	local luk=GetChaAttr(a,ATTR_LUK) 
	return luk 
end 

function LukSa(a)
	local luksa= GetChaAttr(a, ATTR_STATEC_LUK)/ATTR_RADIX   
	return luksa 
end 

function LukSb(a)
	local luksb=GetChaAttr(a, ATTR_STATEV_LUK) 
	return luksb 
end 

function LukIa(a)
	local lukia=GetChaAttr(a, ATTR_ITEMC_LUK)/ATTR_RADIX 
	return lukia 
end 

function LukIb(a)
	local lukib = GetChaAttr(a, ATTR_ITEMV_LUK) 
	return lukib 
end 

function BSMxhp(a) 
	local bsmxhp=GetChaAttr(a,ATTR_BMXHP) 
	return bsmxhp 
end 

function Mxhp_final(a) 
	local mxhp_final=(BSMxhp(a) * MxhpIa(a) + MxhpIb(a) ) * math.max(0, MxhpSa(a))  + MxhpSb(a) 
	return mxhp_final 
end 

function Sp_final(a)
	local sp_final=(BSSp(a) * SpIa(a) + SpIb(a) ) * math.max(0 , SpSa(a)) + SpSb(a) 
	return sp_final 
end 

function BSMxsp(a) 
	local bsmxsp=GetChaAttr(a,ATTR_BMXSP) 
	return bsmxsp 
end 

function Mxsp_final(a)
	local mxsp_final=(BSMxsp(a) * MxspIa(a) + MxspIb(a) ) * math.max ( 0 , MxspSa(a) ) + MxspSb(a) 
	return mxsp_final 
end 

function BSMnatk(a) 
	local bsmnatk=GetChaAttr(a,ATTR_BMNATK) 
	return bsmnatk 
end

function Mnatk_final(a)
	local mnatk_final=math.max ( (BSMnatk(a) * MnatkIa(a) + MnatkIb(a) ) * math.max ( 0 , MnatkSa(a)) + MnatkSb(a) , 1 ) 
	return mnatk_final 
end 

function BSMxatk(a) 
	local bsmxatk=GetChaAttr(a,ATTR_BMXATK) 
	return bsmxatk 
end

function Mxatk_final(a)
	local mxatk_final=math.max ( (BSMxatk(a) * MxatkIa(a) + MxatkIb(a) ) * math.max ( 0 , MxatkSa(a) ) + MxatkSb(a) , 1 ) 
	return mxatk_final 
end 

function BSDef(a) 
	local bsdef=GetChaAttr(a,ATTR_BDEF) 
	return bsdef 
end

function Def_final(a)
	local def_final=math.max ( (BSDef(a) * DefIa(a) + DefIb(a) ) * math.max ( 0 , DefSa(a) ) + DefSb(a) , 0 ) 
	return def_final 
end 

function BSResist(a) 
   
   local bsresist = GetChaAttr(a, ATTR_BPDEF) 
   return bsresist 
end 

function Resist_final(a) 
   local resist_final=(BSResist(a) * ResistIa(a) + ResistIb(a) ) * math.max ( 0 , ResistSa(a) ) + ResistSb(a) 
   return resist_final 
end 

function BSHit(a) 
	local bshit=GetChaAttr(a,ATTR_BHIT) 
	return bshit 
end

function Hit_final(a)
	local hit_final = (BSHit(a) * HitIa(a) + HitIb(a) ) * math.max ( 0 , HitSa(a) ) + HitSb(a) 
	return hit_final 
end 

function BSFlee(a) 
	local bsflee=GetChaAttr(a,ATTR_BFLEE) 
	return bsflee 
end

function Flee_final(a) 
	local flee_final=(BSFlee(a) * FleeIa(a) + FleeIb(a) ) * math.max ( 0 , FleeSa(a) ) + FleeSb(a)  
	return flee_final 
end 

function BSMf(a) 
	local bsmf=GetChaAttr(a,ATTR_BMF) 
	return bsmf 
end

function Mf_final(a)
	local mf_final=(BSMf(a) * MfIa(a) + MfIb(a) )* math.max ( 0 , MfSa(a) ) + MfSb(a) 
	return mf_final 
end 

function BSCrt(a) 
	local bscrt=GetChaAttr(a,ATTR_BCRT) 
	return bscrt 
end

function Crt_final(a)
	local crt_final=(BSCrt(a) * CrtIa(a) + CrtIb(a) ) * math.max ( 0 , CrtSa(a) )  + CrtSb(a) 
	return crt_final 
end 

function BSHrec(a) 
	local bshrec=GetChaAttr(a,ATTR_BHREC) 
	return bshrec 
end

function Hrec_final(a)
	local hrec_final=( BSHrec(a) * HrecIa(a) + HrecIb(a) ) * math.max ( 0 , HrecSa(a) ) + HrecSb(a) 
	return hrec_final 
end 

function BSSrec(a) 
	local bssrec=GetChaAttr(a,ATTR_BSREC) 
	return bssrec 
end

function Srec_final(a)
	local srec_final=(BSSrec(a) * SrecIa(a) + SrecIb(a) ) * math.max ( 0 , SrecSa(a) ) + SrecSb(a) 
	return srec_final 
end 

function BSAspd(a) 
	local bsaspd=math.floor ( 100000 / GetChaAttr(a,ATTR_BASPD) ) 
	return bsaspd 
end

function Aspd_final(a)
	local aspd_final=( BSAspd(a)  * AspdIa(a) + AspdIb(a) ) * math.max ( 0 , AspdSa(a) ) + AspdSb(a) 
	return aspd_final 
end 

function BSAdis(a) 
	local bsadis=GetChaAttr(a,ATTR_BADIS) 
	return bsadis 
end

function Adis_final(a)
	local adis_final=(BSAdis(a) * AdisIa(a) + AdisIb(a) ) * math.max ( 0 , AdisSa(a) ) + AdisSb(a) 
	return adis_final 
end 

function BSMspd(a) 
	local bsmspd=GetChaAttr(a,ATTR_BMSPD) 
	return bsmspd 
end

function Mspd_final(a)
	local mspd_final=math.max ( BSMspd(a) * 0.3 , ( (BSMspd(a) * MspdIa(a) + MspdIb(a) ) * math.max ( 0.3 , MspdSa(a))  + MspdSb(a) )  )  
	return mspd_final 
end 

function BSCol(a) 
	local bscol=GetChaAttr(a,ATTR_BCOL) 
	return bscol 
end

function Col_final(a)
	local col_final=(BSCol(a) * ColIa(a) + ColIb(a) ) * math.max ( 0 , ColSa(a) ) + ColSb(a) 
	return col_final 
end 

function BSStr(a) 
	local bsstr=GetChaAttr(a,ATTR_BSTR) 
	return bsstr 
end

function Str_final(a)
	local str_final=(BSStr(a) * StrIa(a) + StrIb(a) ) * math.max ( 0 , StrSa(a) ) + StrSb(a) 
	return str_final 
end 

function BSDex(a) 
	local bsdex=GetChaAttr(a,ATTR_BDEX) 
	return bsdex 
end

function Dex_final(a)
	local dex_final=(BSDex(a) * DexIa(a) + DexIb(a) ) * math.max ( 0 , DexSa(a) ) + DexSb(a) 
	return dex_final 
end 

function BSAgi(a) 
	local bsagi=GetChaAttr(a,ATTR_BAGI) 
	return bsagi 
end

function Agi_final(a)
	local agi_final=(BSAgi(a) * AgiIa(a) + AgiIb(a) ) * math.max ( 0 , AgiSa(a) ) + AgiSb(a) 
	return agi_final 
end 

function BSCon(a) 
	local bscon=GetChaAttr(a,ATTR_BCON) 
	return bscon 
end

function Con_final(a)
	local con_final=(BSCon(a) * ConIa(a) + ConIb(a)) * math.max ( 0 , ConSa(a) ) + ConSb(a) 
	return con_final 
end 

function BSSta(a) 
	local bssta=GetChaAttr(a,ATTR_BSTA) 
	return bssta 
end

function Sta_final(a)
	local sta_final=(BSSta(a) * StaIa(a) + StaIb(a) ) * math.max ( 0 , StaSa(a) ) + StaSb(a) 
	return sta_final 
end 

function BSLuk(a) 
	local bsluk=GetChaAttr(a,ATTR_BLUK) 
	return bsluk 
end

function Luk_final(a)
	local luk_final=(BSLuk(a)  *LukIa(a) + LukIb(a) ) * math.max ( 0 , LukSa(a) ) + LukSb(a) 
	return luk_final 
end 

function Ship_BSMnatk ( ship_role )						
	local ship_bsmnatk=GetChaAttr( ship_role , ATTR_BMNATK ) 
	return ship_bsmnatk 
end 

function Ship_BSMxatk ( ship_role )						
	local ship_bsmxatk=GetChaAttr( ship_role , ATTR_BMXATK ) 
	return ship_bsmxatk 
end 

function Ship_BSAdis ( ship_role )							
	local ship_bsadis=GetChaAttr( ship_role , ATTR_BADIS ) 
	return ship_bsadis  
end 

function Ship_BSCspd ( ship_role )							
	local ship_bscspd=GetChaAttr( ship_role , ATTR_BOAT_BCSPD ) 
	return ship_bscspd  
end 

function Ship_BSAspd ( ship_role ) 						
	local ship_bsaspd=GetChaAttr( ship_role , ATTR_BASPD ) 
	return ship_bsaspd  
end 

function Ship_BSCrange ( ship_role ) 						
	local ship_bscrange=GetChaAttr( ship_role , ATTR_BOAT_BCRANGE ) 
	return ship_bscrange  
end 

function Ship_BSDef ( ship_role ) 							
	local ship_bsdef=GetChaAttr( ship_role , ATTR_BDEF ) 
	return ship_bsdef   
end 

function Ship_BSResist ( ship_role ) 						
	local ship_bsresist=GetChaAttr( ship_role , ATTR_BPDEF ) 
	return ship_bsresist   
end 

function Ship_BSMxhp ( ship_role ) 						
	local ship_bsmxhp=GetChaAttr( ship_role , ATTR_BMXHP ) 
	return ship_bsmxhp    
end 

function Ship_BSHrec ( ship_role ) 						
	local ship_bshrec=GetChaAttr( ship_role , ATTR_BHREC ) 
	return ship_bshrec 
end 

function Ship_BSSrec ( ship_role ) 							
	local ship_bssrec=GetChaAttr( ship_role , ATTR_BSREC ) 
	return ship_bssrec 
end 

function Ship_BSMspd ( ship_role ) 						
	local ship_bsmspd=GetChaAttr( ship_role , ATTR_BMSPD ) 
	return ship_bsmspd 
end 

function Ship_BSMxsp ( ship_role ) 						
	local ship_bsmxsp=GetChaAttr( ship_role , ATTR_BMXSP ) 
	return ship_bsmxsp 
end 

function Ship_MnatkSa ( cha_role )						
	local ship_mnatksa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MNATK ) / ATTR_RADIX
	return ship_mnatksa 
end 

function Ship_MnatkSb ( cha_role )						
	local ship_mnatksb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MNATK ) 
	return ship_mnatksb 
end 

function Ship_MxatkSa ( cha_role )						
	local ship_mxatksa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXATK ) / ATTR_RADIX
	return ship_mxatksa 
end 

function Ship_MxatkSb ( cha_role )						
	local ship_mxatksb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXATK ) 
	return ship_mxatksb 
end 

function Ship_AdisSa ( cha_role )							
	local ship_adissa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_ADIS ) / ATTR_RADIX
	return ship_adissa  
end 

function Ship_AdisSb ( cha_role )							
	local ship_adissb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_ADIS ) 
	return ship_adissb  
end 

function Ship_CspdSa ( cha_role )							
	local ship_cspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_CSPD ) / ATTR_RADIX
	return ship_cspdsa  
end 

function Ship_CspdSb ( cha_role )							
	local ship_cspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_CSPD ) 
	return ship_cspdsb  
end 

function Ship_AspdSa ( cha_role ) 						
	local ship_aspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_ASPD ) / ATTR_RADIX
	return ship_aspdsa  
end 

function Ship_AspdSb ( cha_role ) 						
	local ship_aspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_ASPD ) 
	return ship_aspdsb  
end 

function Ship_CrangeSa ( cha_role ) 						
	local ship_crangesa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_CRANGE ) / ATTR_RADIX
	return ship_crangesa  
end 

function Ship_CrangeSb ( cha_role ) 						
	local ship_crangesb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_CRANGE ) 
	return ship_crangesb  
end 

function Ship_DefSa ( cha_role ) 							
	local ship_defsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_DEF ) / ATTR_RADIX
	return ship_defsa   
end 

function Ship_DefSb ( cha_role ) 							
	local ship_defsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_DEF ) 
	return ship_defsb   
end 

function Ship_ResistSa ( cha_role ) 						
	local ship_resistsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_RESIST ) / ATTR_RADIX
	return ship_resistsa   
end 

function Ship_ResistSb ( cha_role ) 						
	local ship_resistsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_RESIST ) 
	return ship_resistsb   
end 

function Ship_MxhpSa ( cha_role ) 						
	local ship_mxhpsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXUSE ) / ATTR_RADIX
	return ship_mxhpsa    
end 

function Ship_MxhpSb ( cha_role ) 						
	local ship_mxhpsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXUSE ) 
	return ship_mxhpsb    
end 

function Ship_HrecSa ( cha_role ) 							
	local ship_hrecsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_USEREC ) / ATTR_RADIX
	return ship_hrecsa 
end 

function Ship_HrecSb ( cha_role ) 						
	local ship_hrecsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_USEREC ) 
	return ship_hrecsb 
end 

function Ship_SrecSa ( cha_role ) 							
	local ship_srecsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_EXP ) / ATTR_RADIX
	return ship_srecsa 
end 

function Ship_SrecSb ( cha_role ) 									
	local ship_srecsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_EXP ) 
	return ship_srecsb 
end 

function Ship_MspdSa ( cha_role ) 								
	local ship_mspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MSPD ) / ATTR_RADIX
	return ship_mspdsa 
end 

function Ship_MspdSb ( cha_role ) 								
	local ship_mspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MSPD ) 
	return ship_mspdsb 
end 

function Ship_MxspSa ( cha_role ) 									
	local ship_mxspsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXSPLY ) / ATTR_RADIX
	return ship_mxspsa 
end 

function Ship_MxspSb ( cha_role ) 								
	local ship_mxspsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXSPLY ) 
	return ship_mxspsb 
end 

function Ship_Mnatk_final ( cha_role , ship_role )							
	local ship_mnatk=  math.floor ( ( Ship_BSMnatk ( ship_role ) * Ship_MnatkSa ( cha_role ) + Ship_MnatkSb ( cha_role ) ) * MnatkSa ( ship_role ) + MnatkSb ( ship_role ) )
	return ship_mnatk 
end 

function Ship_Mnatk ( ship_role )										
	local ship_mnatk=GetChaAttr( ship_role , ATTR_MNATK ) 
	return ship_mnatk 
end 

function Ship_Mxatk_final ( cha_role , ship_role )							
	local ship_mxatk= math.floor ( ( Ship_BSMxatk ( ship_role ) * Ship_MxatkSa ( cha_role ) + Ship_MxatkSb ( cha_role ) ) * MxatkSa ( ship_role ) + MxatkSb ( ship_role ) )
	return ship_mxatk 
end 

function Ship_Mxatk ( ship_role )										
	local ship_mxatk=GetChaAttr( ship_role , ATTR_MXATK ) 
	return ship_mxatk 
end 

function Ship_Adis_final ( cha_role , ship_role )							
	local ship_adis= math.floor ( ( Ship_BSAdis ( ship_role ) * Ship_AdisSa ( cha_role ) + Ship_AdisSb ( cha_role ) )  ) 
	return ship_adis 
end 

function Ship_Adis ( ship_role )										
	local ship_adis=GetChaAttr( ship_role , ATTR_ADIS ) 
	return ship_adis 
end 

function Ship_Cspd_final ( cha_role , ship_role )							
	local ship_cspd= math.floor ( ( Ship_BSCspd ( ship_role ) * Ship_CspdSa ( cha_role ) + Ship_CspdSb ( cha_role ) )  )
	return ship_cspd 
end 

function Ship_Cspd ( ship_role )										
	local ship_cspd=GetChaAttr( ship_role , ATTR_BOAT_CSPD ) 
	return ship_cspd 
end 

function Ship_Aspd_final ( cha_role , ship_role ) 							
	local ship_aspd= math.floor ((  Ship_BSAspd ( ship_role ) * Ship_AspdSa ( cha_role ) + Ship_AspdSb ( cha_role ) ) * AspdSa ( ship_role ) + AspdSb ( ship_role ) )
	return ship_aspd  
end 

function Ship_Aspd ( ship_role ) 										
	local ship_aspd=GetChaAttr( ship_role , ATTR_ASPD ) 
	return ship_aspd  
end 

function Ship_Crange_final (  cha_role , ship_role ) 							
	local ship_crange= math.floor ( ( Ship_BSCrange ( ship_role ) * Ship_CrangeSa ( cha_role ) + Ship_CrangeSb ( cha_role ) )  ) 
	return ship_crange  
end 

function Ship_Crange ( ship_role ) 										
	local ship_crange=GetChaAttr( ship_role , ATTR_CRANGE ) 
	return ship_crange  
end 

function Ship_Def_final ( cha_role , ship_role ) 							
	local ship_def= math.floor ( ( Ship_BSDef ( ship_role ) * Ship_DefSa ( cha_role ) + Ship_DefSb ( cha_role ) ) * DefSa ( ship_role ) + DefSb ( ship_role ) ) 
	return ship_def  
end 

function Ship_Def ( ship_role ) 										
	local ship_def=GetChaAttr( ship_role , ATTR_DEF ) 
	return ship_def  
end 

function Ship_Resist_final (  cha_role ,ship_role ) 							
	local ship_resist= math.floor ( ( Ship_BSResist ( ship_role ) * Ship_ResistSa ( cha_role ) + Ship_ResistSb ( cha_role ) ) * ResistSa ( ship_role ) + ResistSb ( ship_role ) ) 
	return ship_resist  
end 

function Ship_Resistl ( ship_role ) 										
	local ship_resist=GetChaAttr( ship_role , ATTR_PDEF ) 
	return ship_resist  
end 

function Ship_Mxhp_final (  cha_role ,ship_role ) 							
	local ship_mxhp= math.floor ( ( Ship_BSMxhp ( ship_role ) * Ship_MxhpSa ( cha_role ) + Ship_MxhpSb ( cha_role ) ) * MxhpSa ( ship_role ) + MxhpSb ( ship_role ) ) 
	return ship_mxhp  
end 

function Ship_Mxhp ( ship_role ) 										
	local ship_mxhp=GetChaAttr( ship_role , ATTR_MXHP ) 
	return ship_mxhp  
end 

function Ship_Hp ( ship_role )										
	local ship_hp=GetChaAttr( ship_role , ATTR_HP ) 
	return ship_hp  
end 

function Ship_Hrec_final (  cha_role ,ship_role ) 							
	local ship_hrec= math.floor ( ( Ship_BSHrec ( ship_role ) * Ship_HrecSa ( cha_role ) + Ship_HrecSb ( cha_role ) ) * HrecSa ( ship_role ) + HrecSb ( ship_role )  ) 
	return ship_hrec  
end 

function Ship_Hrec (  ship_role ) 										
	local ship_hrec=GetChaAttr( ship_role , ATTR_HREC ) 
	return ship_hrec  
end 

function Ship_Srec_final (  cha_role ,ship_role ) 							
	local ship_srec= math.floor ( ( Ship_BSSrec ( ship_role ) * Ship_SrecSa ( cha_role ) + Ship_SrecSb ( cha_role ) ) * SrecSa ( ship_role ) + SrecSb ( ship_role ) ) 
	return ship_srec  
end 

function Ship_Srec ( ship_role ) 										
	local ship_srec=GetChaAttr( ship_role , ATTR_SREC ) 
	return ship_srec  
end 

function Ship_Mspd_final (  cha_role ,ship_role ) 							
	local ship_mspd= math.floor ( ( Ship_BSMspd ( ship_role ) * Ship_MspdSa ( cha_role ) + Ship_MspdSb ( cha_role ) ) * MspdSa ( ship_role ) + MspdSb ( ship_role ) ) 
	return ship_mspd  
end 

function Ship_Mspd ( ship_role ) 										
	local ship_mspd=GetChaAttr( ship_role , ATTR_MSPD ) 
	return ship_mspd  
end 

function Ship_Mxsp_final (  cha_role ,ship_role ) 									
	local ship_mxsp= math.floor ( ( Ship_BSMxsp ( ship_role ) * Ship_MxspSa ( cha_role ) + Ship_MxspSb ( cha_role ) ) * MxspSa ( ship_role ) + MxspSb ( ship_role ) ) 
	return ship_mxsp  
end 

function Ship_Mxsp ( ship_role ) 										
	local ship_mxsp=GetChaAttr( ship_role , ATTR_MXSP ) 
	return ship_mxsp  
end 

function Ship_Sp ( ship_role )										
	local ship_sp=GetChaAttr( ship_role , ATTR_SP ) 
	return ship_sp  
end 

function Percentage_Random(a) 
	local x,y=a*1000000000,math.random(0,1000000000) 
	local z 
	if y<=x then 
		z=1 
		else z=0 
	end 
	return z 
end 

function Dis(a,b,c,d) 
	local x1,y1,x2,y2=a,b,c,d 
	local dis=math.pow( math.pow(x1-x2, 2) + math.pow(y1-y2, 2), 0.5) 
	return dis 
end 

function Check_Direction(a) 
	local direction=GetChaAttr(a, ATTR_DIREC) 
	local division 
	if ((direction>=337.5) and (direction<360)) or ((direction>=0) and (direction<22.5)) then 
		division=1 
	elseif (direction>=22.5) and (direction<67.5) then 
		division=2 
	elseif (direction>=67.5) and (direction<112.5) then 
		division=1 
	elseif (direction>=112.5) and (direction<157.5) then 
		division=8 
	elseif (direction>=157.5) and (direction<202.5) then 
		division=7 
	elseif (direction>=202.5) and (direction<247.5) then 
		division=6 
	elseif (direction>=247.5) and (direction<292.5) then 
		division=5 
	elseif (direction>=292.5) and (direction<337.5) then 
		division=4 
	else 
      return 
   end 
	return division 
end 

--------------------------------------------------------------------
-------------------------- Нанесение Урона --------------------------
--------------------------------------------------------------------

function Hp_Dmg(role,dmg)
	local map_name_DEFER = GetChaMapName ( role )
	local Can_Pk_Garner2 = Is_NormalMonster (role)
	local T=0.25
	-- Хаос
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
		if Can_Pk_Garner2 == 0 then
			dmg = dmg * T
		end
	end
	-- Снежная Война
	if map_name_ATKER == "07xmas2" or map_name_DEFER == "07xmas2" then
		if Can_Pk_07xmas2 == 0 then
			dmg = dmg * T
		end
	end

	local statelv_mfd = GetChaStateLv ( role , STATE_MFD ) 
	local hp = Hp(role) 
	local sp = Sp(role) 
	if dmg <= 0 then 
		hp = hp - dmg 
		SetCharaAttr(hp, role, ATTR_HP )  
		return 
	end 
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Elf_Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Elf_Num , 0 , 1 )
		local PowerSheild = 0
		if CheckElfSkill == 2 then
			PowerSheild = ElfSKill_PowerSheild ( role , Elf_Item , Elf_Num , dmg )
			if PowerSheild ~= 0 then
				SystemNotice ( role , "Фея применила навык защиты. Часть урона поглощено " )
			end
			dmg = dmg - PowerSheild
		end
	end
	if statelv_mfd >= 1 then 
		sp_change = statelv_mfd * 0.25 + 0.5
	local map_name_DEFER = GetChaMapName ( role )
	local Can_Pk_Garner2 = Is_NormalMonster (role)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
			if Can_Pk_Garner2 == 0 then
				sp_change = statelv_mfd * 0.25 + 0.5
			end
		end
		-- БД Сет в Аппареле
		local Check_Heilong  = CheckItem_Heilong ( role )
		if Check_Heilong == 1 then
			local Percentage = Percentage_Random ( 0.5 )
			if Percentage == 1 then
				  sp_change =  sp_change*1.5
				SystemNotice ( role , "Использована сила набора Черного Дракона Эффект от навыка усилен ")
			end
		end
		local CheckItem_fighting = CheckItem_fighting ( role )
		local IsGarnerWiner = IsGarnerWiner(role)
		if CheckItem_fighting == 1 then
			if IsGarnerWiner == 1  then 
				local Percentage_1 = Percentage_Random ( 0.5 )
				if Percentage_1 == 1 then
					dmg = dmg*0.5
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощено " )
				end
			elseif IsGarnerWiner == 2  then
				local Percentage_2 = Percentage_Random ( 0.5 )
				if Percentage_2 == 1 then
					dmg = dmg*0.6
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощено " )
				end
			elseif IsGarnerWiner == 3  then
				local Percentage_3 = Percentage_Random ( 0.5 )
				if Percentage_3 == 1 then
					dmg = dmg*0.7
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощено " )
				end
			elseif IsGarnerWiner == 4  then
				local Percentage_4 = Percentage_Random ( 0.5 )
				if Percentage_4 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощено " )
				end
			elseif IsGarnerWiner == 5 then
				local Percentage_5 = Percentage_Random ( 0.3 )
				if Percentage_5 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощено " )
		
				end
			end	
		end
		if dmg / sp_change <= sp then 
			sp = math.floor ( sp - dmg/sp_change ) 
		else 
			hp =math.floor ( hp - ( dmg/sp_change - sp ) ) 
			sp = 0 
			RemoveState ( role , STATE_MFD ) 
		end 
	else
		local Check_Nianshou = CheckItem_Nianshou ( role )
		local CheckItem_fighting = CheckItem_fighting ( role )
		local IsGarnerWiner = IsGarnerWiner(role)
		if Check_Nianshou == 1 then
			local Percentage = Percentage_Random ( 0.1 )
			if Percentage == 1 then
				dmg = dmg * -1
			end
		end
		if CheckItem_fighting == 1 then
			if IsGarnerWiner == 1  then 
				local Percentage_1 = Percentage_Random ( 0.5 )
				if Percentage_1 == 1 then
					dmg = dmg*0.5
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощено " )
				end
			elseif IsGarnerWiner == 2  then
				local Percentage_2 = Percentage_Random ( 0.5 )
				if Percentage_2 == 1 then
					dmg = dmg*0.6
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощено " )
				end
			elseif IsGarnerWiner == 3  then
				local Percentage_3 = Percentage_Random ( 0.5 )
				if Percentage_3 == 1 then
					dmg = dmg*0.7
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощено " )
				end
			elseif IsGarnerWiner == 4  then
				local Percentage_4 = Percentage_Random ( 0.5 )
				if Percentage_4 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощено " )
				end
			elseif IsGarnerWiner == 5 then
				local Percentage_5 = Percentage_Random ( 0.3 )
				if Percentage_5 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощено " )
				end
			end	
		end
		local ZSExp = GetChaAttr( role , ATTR_CSAILEXP )
		if ZSExp > 0 and ZSExp < 100 then
			dmg = dmg * 0.945
		end
		if ZSExp >= 100 and ZSExp < 12100 then
			dmg = dmg * ( 0.95 - math.floor( math.pow( (ZSExp / 100) , 0.5 )) * 0.005)
		end
		hp = Hp(role) - dmg 
	end 
	SetCharaAttr(sp, role, ATTR_SP ) 
	SetCharaAttr(hp, role, ATTR_HP )  
end 

function Endure_Dmg ( role , dmg ) 
	local hp = Hp ( role ) - dmg 
	SetCharaAttr(hp, role, ATTR_HP ) 
end 

function Sp_Red(role,sp_reduce) 
	local sp = Sp(role) - sp_reduce 
	SetCharaAttr(sp, role, ATTR_SP ) 
end 

function Coefficientadjust_Steady_atk()	
	local steady_atk_maxreduce = 0.9 
	local steady_atk_maxreducepoint = 0.99 
	local steady_atk_maxluk=1500 
	local a = steady_atk_maxreduce / steady_atk_maxluk 
	local b = steady_atk_maxreducepoint / steady_atk_maxluk 
	return a,b,steady_atk_maxreduce,steady_atk_maxreducepoint 
end 

function SetSteady_atk(a) 
	local x,y,m,n = Coefficientadjust_Steady_atk() 
	local sum=1 
	local atkstep={} 
	local atk={} 
	atk[Mnatk_final(a) - 1 ] = 0 
	for i = Mnatk_final(a),  Mxatk_final(a), 1 do 
		atkstep[i] = 1 
	end 
	local maxreduce = math.min(m, Luk_final(a) * x ) 
	local reducepoint = math.min(n, Luk_final(a) * y ) * (Mxatk_final(a) - Mnatk_final(a) ) 
	if reducepoint==0 then 
		atk[Mnatk_final(a)] = 1 
	return atk,sum 
	end 
	local steady_step = maxreduce / reducepoint 
	for i = 0, Mxatk_final(a) - Mnatk_final(a), 1 do 
		atkstep[ i + Mnatk_final(a) ] = atkstep [ i + Mnatk_final(a) ] - math.max(0, (maxreduce-i * steady_step) ) 
		sum = sum + atkstep[ i + Mnatk_final(a) ]  
		atk[ i + Mnatk_final(a) ] = sum 
	end 
	return atk,sum 
end 

function CheckSteady_atk(a) 
	local atk,sum = SetSteady_atk(a) 
	local x = math.random( 0, 10000 ) 
	local y = x * sum/10000 
	for i = Mnatk_final(a), Mxatk_final(a), 1 do 
      if y<=atk[i] then 
         return i 
      end 
   end 
	return Mnatk_fianl(a) 
end 

function Lefthand_Atk ( role , atk )												
	local sklv = GetSkillLv ( role , STATE_FSZ ) 
	add_atk = math.floor ( atk * ( 1.2 + sklv * 0.08 ) ) 
	return add_atk 
end 

function Check_Zmyj ( role , dmg_mul )												
	local statelv = GetChaStateLv ( role , STATE_ZMYJ ) 
	local crt_rad = 0.2 + statelv * 0.02 
	if dmg_mul == 2 or dmg_mul == 1 then 
		a = Percentage_Random ( crt_rad ) 
		if a== 1 then 
			dmg_mul = 2 + statelv/2 
		end 
	end 
	return dmg_mul 
end 

function Check_Smyb ( role )													
	local statelv = GetChaStateLv (role , STATE_SMYB ) 
	local hp = Hp ( role ) 
	local mxhp = Mxhp ( role ) 
	local atk_sa = 1 
	if hp <= mxhp * 0.2 and hp > 0 then 
		atk_sa = 1 + statelv * 0.1 
	end 
	local mnatk = Mnatk ( role ) * atk_sa 
	local mxatk = Mxatk ( role ) * atk_sa 
	return mnatk , mxatk 
end 

function Check_Ys_Rem ( role_atk , role_def )	
	Check_State ( role_atk , role_def ) 
	if atk_statecheck[STATE_YS] >= 1 then 
		RemoveState ( role_atk , STATE_YS ) 
	end 
end 

function Check_Bshd (statelv) 
	local statetime = 3 + statelv * 1 
	return statetime 
end 

function Atk_Raise ( rad , atker , defer )			
	local atk = rad * math.random ( Mnatk( atker ) , Mxatk ( atker ) ) 
	local defer_def = Def ( defer ) 
	local defer_resist = Resist ( defer ) 
	dmg = Phy_Dmg ( atk, defer_def , defer_resist ) 
	return dmg 
end 

function TurnToCha ( role ) 
	local x_role = role 
	if ChaIsBoat ( role ) == 1 then 
		x_role = GetMainCha ( role ) 
	end 
	return x_role 
end 

function TurnToShip ( role ) 
	local x_role = role 
	if ChaIsBoat ( role ) == 0 then 
		x_role = GetCtrlBoat ( role ) 
		if x_role == nil then 
			LG ( "getshipid_err" , " get a nil shipid " ) 
		end 
	end 
	return x_role 
end 

function ALLExAttrSet ( role )				
	if IsPlayer ( role ) == 0 then				
		ExAttrSet ( role ) 
		return 
	end 
	if ChaIsBoat ( role ) == 0 then			
		AttrRecheck ( role ) 
	else								
		cha_role = GetMainCha ( role ) 
		ShipAttrRecheck ( cha_role , role ) 
	end 
end 

function Hp_Endure_Dmg ( role , dmg ) 
	if ChaIsBoat ( role ) == 0 then 
		Hp_Dmg ( role , dmg ) 
		local state_ys_lv =  GetChaStateLv (role , STATE_YS ) 
		if state_ys_lv >= 1 then 
			RemoveState ( role , STATE_YS ) 
		end 
	else 
		Endure_Dmg ( role , dmg ) 
	end 
end 

function Boat_plus_MNATk( Lv , mnatk)
	local mnatk_new = 0
	if Lv < 1 then
		LG("Boat_plus_MNatk","Ship level is lower than 1")
		LG("Boat_plus_MNatk","1")
		return mnatk
	end
	if Lv > 100 then
		LG("Boat_plus_MNatk","Ship level higher than 100")
		LG("Boat_plus_MNatk","Ship level lower than 2")
		return mnatk
	end
	if Lv < 60 then
		LG ( "Boat_plus_MNatk" , mnatk ) 
		mnatk_new = ( 1 + ( Lv - 20 ) / 120 ) * mnatk
		LG("Boat_plus_MNatk","Ship level smaller than 3")
		return mnatk_new
	end
	if Lv >=60 then
		mnatk_new = ( 1 + ( 60 - 20 ) / 120 ) * mnatk + ( Lv - 60 ) * 5
		LG("Boat_plus_MNatk","Ship level lower than 4")
		return mnatk_new
	end
end

function Boat_plus_MXATk( Lv , mxatk)
	local mxatk_new = 0
	if Lv < 1 then
		LG("Boat_plus_MXatk","Ship level is lower than 1")
		return mxatk_new
	end
	if Lv > 100 then
		LG("Boat_plus_MXatk","Ship level higher than 100")
		return mxatk_new
	end
	if Lv < 60 then
		mxatk_new = ( 1 + ( Lv - 20 ) / 120 ) * mxatk
		return mxatk_new
	end
	if Lv >=60 then
		mxatk_new = ( 1 + ( 60 - 20 ) / 120 ) * mxatk + ( Lv - 60 ) * 5
		return mxatk_new
	end
end

function Boat_plus_def ( Lv , def )
	local def_new = 0
	if  Lv < 1 then
		LG("Boat_plus_def","Ship level is lower than 1")
		return def
	end
	if Lv > 100 then
		LG("Boat_plus_def","Ship level higher than 100")
		return def
	end
	if Lv < 60 then
		def_new = ( 1 + ( Lv - 20 ) / 120 ) * def
		LG ( "Boat_plus_def","def_new1 = " ,  def_new ) 
		return def_new
	end
	if Lv >= 60 then
		def_new = ( 1 + ( 60 - 20 ) / 120 ) * def + ( Lv - 60 ) * 3
		LG ( "Boat_plus_def","def_new2 = " ,  def_new ) 
		return def_new
	end
end

function Boat_plus_Mxhp ( Lv , Mxhp )
	local Mxhp_new = 0
	if Lv < 1 then
		LG("Boat_plus_Mxhp","Ship level is lower than 1")
		return Mxhp
	end
	if Lv > 100 then
		LG("Boat_plus_Mxhp","Ship level higher than 100")
		return Mxhp
	end
	if Lv < 60 then
		Mxhp_new = ( 1 + ( Lv - 20 ) / 120 ) * Mxhp
		LG ( "Boat_plus_def","def_new2 = " ,  Mxhp_new ) 
		return Mxhp_new
	end
	if Lv >= 60 then
		Mxhp_new = ( 1 + ( 60 - 20 ) / 120 ) * Mxhp + (Lv - 60 )  * 20
		LG ( "Boat_plus_def","def_new2 = " ,  Mxhp_new ) 
		return Mxhp_new
	end
end

function Boat_plus_Mspd ( Lv , Mspd )
	local Mspd_new = 0
	if Lv < 1 then
		LG("Boat_plus_Mspd","Ship level is lower than 1")
		return Mspd
	end
	if Lv >100 then
		LG("Boat_plus_Mspd","Ship level higher than 100")
		return Mspd
	end
	if Lv < 60 then
		Mspd_new = ( 1 + ( Lv -30) / 300 ) * Mspd
		return Mspd_new
	end
	if Lv >=60 then
		Mspd_new = ( 1 + ( 60 -30) / 300 ) * Mspd
		return Mspd_new
	end
end

function get_cha_guild_id(cha) 
    local ply_cha = CheckChaRole(cha) 
    if ply_cha == 1 then 
        return GetChaGuildID(cha) 
    else 
        local map_copy = GetChaMapCopy(cha)
        local side_id = GetChaSideID(cha) 
		if side_id == 1 then
			return GetMapCopyParam2(map_copy, 4 ) 
		elseif side_id == 2 then
			return GetMapCopyParam2(map_copy, 3 ) 
		end
    end 
end

function is_teammate(cha1, cha2) 
    if cha1 == 0 or cha2 == 0 then 
        return 0 
    end 
    if cha1 == cha2 then 
        return 1 
    end
    local ply1 = GetChaPlayer(cha1) 
    local ply2 = GetChaPlayer(cha2) 
    if ply1 ~= 0 and ply2 ~= 0 then 
        if ply1 == ply2 then 
            return 1 
        end 
        local team_id1, team_id2 
        team_id1 = GetChaTeamID(cha1) 
        team_id2 = GetChaTeamID(cha2) 
        if team_id1 ~= 0 and team_id2 ~= 0 and team_id1 == team_id2 then 
            return 1 
        end 
    end 
    return 0 
end 

------------------------------------------------
-- Функция определения друг или враг на карте --
------------------------------------------------
function is_friend(cha1, cha2) 
    local friend_target = 1 
    local Map_type = GetChaMapType( cha1 )
    if CheckChaRole( cha1 ) == 0 and Map_type ~= 2 then			
	if CheckChaRole( cha2 ) == 0 then							
		return 1 
	else 
		return 0 
	end 
    end
		if Map_type == 1 then 
			if CheckChaRole ( cha1 ) == 1 then 
					if CheckChaRole( cha2 ) == 0 then							
						return 0 
					else 
						return 1 
					end 
			end 
		end 
		if Map_type == 4 then									
			if Is_NormalMonster (cha1) == 1 then						
				if Is_NormalMonster (cha2) == 1 then 
					return 1 
				end 
			end 
			local team = is_teammate(cha1,cha2) 
			if team == 1 then 
				return 1 
			else 
				local guild_id1, guild_id2 
				guild_id1 = get_cha_guild_id(cha1) 
				guild_id2 = get_cha_guild_id(cha2) 
				if guild_id1 ~= 0 and guild_id2 ~= 0 and guild_id1 == guild_id2 then 
					return 1  
				else
					return 0 
				end
			end
		end 
	    if  Map_type ==3 then									
		    local team = is_teammate(cha1, cha2) 
		    if team == 1 then 
		        return 1 
		    else 
			return 0 
		    end
	    end
	    if cha1 == 0 or cha2 == 0 then							
	        return 0 
	    end 
	    if Map_type == 2 then									
		if Is_NormalMonster (cha1) == 1 then						
			if Is_NormalMonster (cha2) == 1then 
				return 1 
			end 
		end 
		local guild_id1, guild_id2 
		guild_id1 = get_cha_guild_id(cha1) 
		guild_id2 = get_cha_guild_id(cha2) 
		if guild_id1 ~= 0 and guild_id2 ~= 0 and guild_id1 == guild_id2 then 
			return 1 
		else 
			return 0 
		end
	    end 
	    if Map_type == 5 then									
			local guild_side_1, guild_side_2 
			guild_side_1 = GetChaSideID(cha1) 
			guild_side_2 = GetChaSideID(cha2) 
			if guild_side_1 == guild_side_2 then
				return 1 
	        else
		        return 0
			end
	    end 
	 return friend_target 
 end 
  
function Is_NormalMonster ( role )
  local cha = TurnToCha ( role )
  local Cha_Num = GetChaTypeID( cha )
  for i = 0 , UnNormalMonster_Num , 1 do
	if Cha_Num == UnNormalMonster_ID [i] then
		return 0
	end
  end
  return 1
end

function CheckMonsterDead ( role )
	if role == nil then
		return 1
	end
	if Hp(role) <= 0 then
		return 1
	end
	return 0
end

function ReCheck_Skill_Dmg ( MaxDmg , MinDmg , Ran )
	local a = 0
	a = Percentage_Random ( Ran / 100)
	if a == 1 then
		return MaxDmg
	else
		return MinDmg
	end
end

function ReCheck_PK_Lv ( ATKER , DEFER )
	local Lv_atker = Lv ( ATKER )
	local Lv_defer = Lv ( DEFER )
	return Lv_atker - Lv_defer
end

--------------------------------------------------------------------
------------------------- Убийство Игрока --------------------------
--------------------------------------------------------------------

function after_player_kill_player( ATKER, DEFER )
	SetCharaAttr(0, DEFER, ATTR_SP)
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local MGPK_MapNameNum = 10
	local MGPK_MapName = {}
	MGPK_MapName[0] = "puzzleworld"
	MGPK_MapName[1] = "puzzleworld2"
	MGPK_MapName[2] = "abandonedcity"
	MGPK_MapName[3] = "abandonedcity2"
	MGPK_MapName[4] = "abandonedcity3"
	MGPK_MapName[5] = "darkswamp"
	MGPK_MapName[6] = "hell"
	MGPK_MapName[7] = "hell2"
	MGPK_MapName[8] = "hell3"
	MGPK_MapName[9] = "hell4"
	MGPK_MapName[10] = "hell5"
	local ATKER_Get_Ry = 0
	local DEFER_Get_Ry = 0
	local ATKER_Get1_LD = 0
	local DEFER_Get1_Ry = 0
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_ATKER == "07xmas2" or map_name_DEFER == "07xmas2" then
		local Lv_ATKER = Lv( ATKER )
		local Lv_DEFER = Lv( DEFER )
		local Lv_dif = Lv_ATKER - Lv_DEFER
		if Lv_dif < 15 and Lv_dif > -15 then
			ATKER_Get1_LD = 1
			DEFER_Get1_Ry = -1
			SystemNotice ( ATKER ,"Вы побеждаете противника и получаете 1 очко чести " )
			SystemNotice ( DEFER ,"Вас победил противник. Потеряно 1 очко чести " )
		end
		if Lv_dif >= 15 then
			ATKER_Get1_LD = 0
			DEFER_Get1_Ry = 0
			SystemNotice ( ATKER , "Уровень убитого игрока слишком маленький для получения очков чести " )
			SystemNotice ( DEFER , "Вас убил слишком сильный противник. Вы не теряете очки чести " )
		end
		if Lv_dif <= -14 then
			ATKER_Get1_LD = 2
			DEFER_Get1_Ry = -2
			SystemNotice ( ATKER ,"Вы убили сильного противника и получаете 2 очка чести " )
			SystemNotice ( DEFER ,"Вас убил слабый противник и вы теряете 2 очка чести " )
		end
		local ATKER_LD = GetChaItem2 ( ATKER , 2 , 3849 )
		local DEFER_RYZ1 = GetChaItem2 ( DEFER , 2 , 3849 )
		local FightingPoint=GetItemAttr ( ATKER_LD , ITEMATTR_MAXENERGY)
		local HonorPoint = GetItemAttr ( DEFER_RYZ1 , ITEMATTR_VAL_STR)
		local	FightingPoint = FightingPoint + ATKER_Get1_LD
		local	HonorPoint = HonorPoint + DEFER_Get1_Ry
			if ATKER == DEFER then
				ATKER_Get1_LD = ATKER_Get1_LD-1
			end
		SetItemAttr ( ATKER_LD , ITEMATTR_MAXENERGY,FightingPoint)
		SetItemAttr ( DEFER_RYZ1 , ITEMATTR_VAL_STR,HonorPoint)
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )
		MapCopyNotice ( map_copy , Notice_map )
	end
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "["..def_name.."] терпит поражение от ["..atk_name.."]"
		Notice ( Notice_all )
	end
	if map_name_ATKER == "teampk" or map_name_DEFER == "teampk" then
		local ATKER_RYZ = GetChaItem2 ( ATKER , 2 , 3849 )
		local DEFER_RYZ = GetChaItem2 ( DEFER , 2 , 3849 )
		local Lv_ATKER = Lv( ATKER )
		local Lv_DEFER = Lv( DEFER )
		local Lv_dif = Lv_ATKER - Lv_DEFER
		if Lv_dif < 10 and Lv_dif > -5 then
			ATKER_Get_Ry = 1
			DEFER_Get_Ry = -1
			SystemNotice ( ATKER ,"Вы победили противника. Получено очков чести: "..ATKER_Get_Ry )
			SystemNotice ( DEFER ,"Вы потерпели поражение. Потеряно очков чести: "..ATKER_Get_Ry )
		end
		if Lv_dif >= 10 then
			ATKER_Get_Ry = 0
			DEFER_Get_Ry = 0
			SystemNotice ( ATKER , "Уровень побежденного противника слишком низок. Вы не получаете очков чести " )
		end
		if Lv_dif < -5 then
			ATKER_Get_Ry = 2
			DEFER_Get_Ry = -2
			SystemNotice ( ATKER ,"Вы победили сильного противника и получаете "..ATKER_Get_Ry.." очков чести " )
			SystemNotice ( DEFER ,"Вы убиты слабым игроком и теряете "..ATKER_Get_Ry.." очков чести " )
		end
		local RongyuTpye = ITEMATTR_VAL_STR
		local Kill_Num = 1
		local Kill_attr = ITEMATTR_VAL_AGI
		local Killed_attr = ITEMATTR_VAL_DEX
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )
		local Notice_map = def_name.." was defeated by "..atk_name.." Defeat"
		Add_ItemAttr_RYZ ( ATKER , ATKER_RYZ , RongyuTpye , ATKER_Get_Ry )
		Add_ItemAttr_RYZ ( ATKER , ATKER_RYZ , Kill_attr , Kill_Num )
		Add_ItemAttr_RYZ ( DEFER ,DEFER_RYZ , RongyuTpye , DEFER_Get_Ry )
		Add_ItemAttr_RYZ ( DEFER ,DEFER_RYZ , Killed_attr , Kill_Num )
		MapCopyNotice ( map_copy , Notice_map )
	end
	if map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "["..def_name.."] терпит поражение от ["..atk_name.."]"
		Notice ( Notice_all )
	end
if map_name_ATKER == "guildwar" or map_name_DEFER == "guildwar" then
		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		local Num_shengsi_1= CheckBagItem(DEFER,2382)
	if Num_shengsi_1 >=1 then
		TakeItem( DEFER, 0,2382, 1 )    
                GiveItem ( ATKER , 0 , 2383  , 1 , 4 )
        else
	   if GetChaGuildID(DEFER) <= 100 and GetChaGuildID(DEFER) > 0 then
              GiveItem ( ATKER , 0 , 2858  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) > 100 and GetChaGuildID(DEFER) <= 200 then
	      GiveItem ( ATKER , 0 , 2859  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) == 0 then
		SystemNotice ( ATKER , "Цель не относится ни ко Флоту, ни к Пиратам " )
	   end
	end
     end
     if map_name_ATKER == "guildwar2" or map_name_DEFER == "guildwar2" then
		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		local Num_shengsi_2= CheckBagItem(DEFER,2382)
	if Num_shengsi_2 >=1 then
		TakeItem( DEFER, 0,2382, 1 )   
                GiveItem ( ATKER , 0 , 2383  , 1 , 4 )
        else
	   if GetChaGuildID(DEFER) <= 100 and GetChaGuildID(DEFER) > 0 then
              GiveItem ( ATKER , 0 , 2858  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) > 100 and GetChaGuildID(DEFER) <= 200 then
	      GiveItem ( ATKER , 0 , 2859  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) == 0 then
		SystemNotice ( ATKER , "Цель не относится ни ко Флоту, ни к Пиратам " )
	   end
	end
     end
        local C_Map = 0
	for C_Map = 0 , MGPK_MapNameNum , 1 do
	    if  map_name_ATKER == MGPK_MapName[C_Map] then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )
		local Notice_map = "Игрок ["..def_name.."] терпит поражение от игрока ["..atk_name.."]"
		MapCopyNotice ( map_copy , Notice_map )
		ATKER = TurnToCha ( ATKER )
		DEFER = TurnToCha ( DEFER )
		local Have_TSWW = CheckBagItem( DEFER , 3846 )
		if Have_TSWW <= 0 then
			Dead_Punish_ItemURE ( DEFER )
			MGPK_Dead_Punish_Exp ( DEFER )
		else
			local j = DelBagItem( DEFER , 3846 , 1 )
			if j == 0 then
				LG ( "NewItem" , "Ошибка при удалении Куклы Вуду " )
			else
				SystemNotice ( DEFER , "Кукла Вуду спасла тебя от потери опыта " )
			end
		end
	    end
	end
end

function MGPK_Dead_Punish_Exp ( dead )
	local map_name = GetChaMapName ( dead )
	dead = TurnToCha ( dead ) 
	local lv = GetChaAttr( dead, ATTR_LV ) 
	local exp_red 
	local exp = Exp(dead) 
	local nlexp = GetChaAttrI ( dead , ATTR_NLEXP ) 
	local clexp = GetChaAttrI ( dead , ATTR_CLEXP ) 
	local exp_per = math.min ( math.floor ( ( nlexp - clexp ) * 0.02 ) , math.max ( exp - clexp , 0 ) )	
	if  exp <= clexp then 
		exp_red = 0 
	else 
		exp_red = math.pow( lv , 2 ) * 20								
	end 
	if exp_red > exp_per then										
		exp_red = exp_per
	end
	if Lv ( dead ) >= 80 then 
		exp_red = math.floor ( exp_red / 50 )
		exp_red_80 = exp_red * 50 
		SystemNotice (dead , "При смерти потеряно "..exp_red_80.." опыта " )
	else 
		SystemNotice (dead , "При смерти потеряно "..exp_red.." опыта " )
		end
	exp = Exp(dead) - exp_red
	SetChaAttrI( dead , ATTR_CEXP , exp ) 
	local name = GetChaDefaultName ( dead )
	LG ( "PKdie_exp" , "Игрок " , name , "Уровень= ", lv , "Потеряно опыта= " , exp_red )
end 

--------------------------------------------------------------------
-------------- Добавляем Очки Чести в Медаль Отваги ----------------
--------------------------------------------------------------------

function Add_ItemAttr_RYZ ( Cha_role ,role , attrtype , Num )
	local i = 0
	local attr_num = GetItemAttr ( role , attrtype )
	attr_num = attr_num + Num
	i = SetItemAttr ( role ,attrtype , attr_num )
	local attr_num_1 = GetItemAttr ( role , attrtype )
	if i == 0 then
		LG("RYZ_PK","Добавить очки чести не удалось ")
	end
end

function Get_ItemAttr_Join ( Cha_role )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( Cha_role,3849 )
	if RYZ_Num <= 0 then
		return 0
	end
	local role_RYZ = GetChaItem2 ( Cha_role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_CON
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	return attr_num
end

function Get_ItemAttr_Win ( Cha_role )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( Cha_role,3849 )
	if RYZ_Num <= 0 then
		return 0
	end	
	local role_RYZ = GetChaItem2 ( Cha_role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STA
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	return attr_num
end

function AddYongYuZhi( role ,  value )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )
	if RYZ_Num <= 0 then
		SystemNotice ( role , "Необходимо иметь Медали Отваги " )
		return 0
	end
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STR
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	local attr_num = attr_num + value
	local i = 0
	SetChaKitbagChange ( role , 0 )
	i = SetItemAttr ( role_RYZ ,attrtype , attr_num )
	if i == 0 then 
		return 0
	end
	if value > 0 then
		SystemNotice ( role , "Прибавлено очков чести: "..value )
	end
	if value < 0 then
		local a = -1 * value
		SystemNotice ( role , "Отнято очков чести: "..a )
	end
	SynChaKitbag ( role , 7 )
	return 1
end

function TakeZuDuiGongXianDu( role , value )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )
	if RYZ_Num <= 0 then
		SystemNotice ( role , "Необходимо иметь Медали Отваги " )
		return 0
	end
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	local attr_num = attr_num - value
	local i = 0
	SetChaKitbagChange ( role , 0 )
	i = SetItemAttr ( role_RYZ ,attrtype , attr_num )
	if i == 0 then 
		return 0
	end
	if value < 0 then
		local a = value * -1
		SystemNotice ( role ,"Получено "..a.." Очков Отряда " )
	end
	if value > 0 then
		SystemNotice ( role ,"Забрано Очков Чести: "..value )
		LG("RYZ_Take_Zdgx" , " Очки Чести использованы, осталось "..value.." очков ")
	end
	SynChaKitbag ( role , 7 )
	return 1
end

function HasZuDuiGongXianDu ( role ,value )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )
	if RYZ_Num <= 0 then
		return 0
	end
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if attr_num >= value then
		return 1
	else
		return 0
	end
end

function LessYongYuZhi( role , str , value )
		local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )
	if RYZ_Num <= 0 then
		return 0
	end
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STR
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if str == ">" then
		if attr_num > value then
			return 1
		end
	elseif str == "<" then
		if attr_num < value then
			return 1
		end
	elseif str == "=" then
		if attr_num == value then
			return 1
		end
	else
		LG("RYZ_PK","determine Honor character error")
	end
end

function Add_RYZ_TeamPoint ( role ,count_num , add_num )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )
	if RYZ_Num <= 0 then
		return
	end
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if attr_num >= 1000 then
		return
	end
	attr_num = attr_num + add_num
	local a = math.min ( 1 , ( count_num - 2 ) * 0.3 )
	local b = 0
	b = Percentage_Random ( a )
	local i = 0
	if b == 1 then
		SetChaKitbagChange ( role , 0 )
		i = SetItemAttr ( role_RYZ ,attrtype , attr_num )
		if i == 0 then
			LG("RYZ_PK","Increase Party Contribution value failed")
			return
		end
		SynChaKitbag ( role , 7 )
		SystemNotice ( role ,"Получено "..add_num.." очко(в) отряда ")
	end
end

function Take_Atk_ItemURE ( role )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 1 and boat == 0 then					
		local Item_1 = 0
		local Item_2 = 0
		Item_1 = GetChaItem ( role , 1 , 6 )
		Item_2 = GetChaItem ( role , 1 , 9 )
		local Item_URE = 0
		local Take_Num = 1
		local i = 0
		local Item1_Type = Check_Repair_ItemType ( Item_1 )
		local Item2_Type = Check_Repair_ItemType ( Item_2 )
		if Item_1 ~= 0 and Item_1 ~= nil then
			local a = 0.03
			local b = Percentage_Random (a)
			if b == 1 and Item1_Type == 1 then
				Item_URE = GetItemAttr ( Item_1 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end
				Item_URE = Item_URE - Take_Num
				i = SetItemAttr ( Item_1 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","Weapon imbue failed")
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 6 , 0 )
				end
			end
		end
		Item_URE = 0
		Take_Num = 1
		i = 0
		if Item_2 ~= 0 and Item_2 ~= nil then
			local a = 0.03
			local b = Percentage_Random (a)
			if b == 1 and Item2_Type == 1 then
				Item_URE = GetItemAttr ( Item_2 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end
				Item_URE = Item_URE - Take_Num
				i = SetItemAttr ( Item_2 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","Weapon imbue failed")
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 9 , 0 )
				end
			end
		end
	end
end

function Take_Def_ItemURE ( role )
	local def = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if def == 1 and boat == 0 then						
		local Item_1 = 0
		local Item_2 = 0
		local Item_3 = 0
		local Item_4 = 0
		Item_1 = GetChaItem ( role , 1 , 0 )
		Item_2 = GetChaItem ( role , 1 , 2 )
		Item_3 = GetChaItem ( role , 1 , 3 )
		Item_4 = GetChaItem ( role , 1 , 4 )
		local Item_URE = 0
		local Take_Num = 1
		local i = 0
		if Item_1 ~= 0 and Item_1 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_1 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end
				Item_URE = Item_URE - Take_Num
				i = SetItemAttr ( Item_1 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","add armor attribute failed")
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 0 , 0 )
				end
			end
		end
		Item_URE = 0
		Take_Num = 1
		i = 0
		if Item_2 ~= 0 and Item_2 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_2 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end
				Item_URE = Item_URE - Take_Num
				i = SetItemAttr ( Item_2 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","add armor attribute failed")
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 2 , 0 )
				end
			end
		end
		Item_URE = 0
		Take_Num = 1
		i = 0
		if Item_3 ~= 0 and Item_3 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_3 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end
				Item_URE = Item_URE - Take_Num
				i = SetItemAttr ( Item_3 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","add armor attribute failed")
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 3 , 0 )
				end
			end
		end
		Item_URE = 0
		Take_Num = 1
		i = 0
		if Item_4 ~= 0 and Item_4 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_4 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end
				Item_URE = Item_URE - Take_Num
				i = SetItemAttr ( Item_4 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","add armor attribute failed")
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 4 , 0 )
				end
			end
		end
	end
end

function Dead_Punish_ItemURE ( role )
	local Player = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	local Punish = 0.05
	Dead_Punish_Item_Num = 5		
	local Dead_Punish_Item_WZ = { }
	Dead_Punish_Item_WZ [0] = 0
	Dead_Punish_Item_WZ [1] = 2
	Dead_Punish_Item_WZ [2] = 3
	Dead_Punish_Item_WZ [3] = 4
	Dead_Punish_Item_WZ [4] = 6
	Dead_Punish_Item_WZ [5] = 9
	local Dead_Punish_Item = { }
	Dead_Punish_Item [0] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [0] )
	Dead_Punish_Item [1] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [1] )
	Dead_Punish_Item [2] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [2] )
	Dead_Punish_Item [3] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [3] )
	Dead_Punish_Item [4] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [4] )
	Dead_Punish_Item [5] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [5] )
	if Player == 1 and boat == 0 then						
		local Item_URE = 0
		local Item_MAXURE = 0
		local Take_Num = 0
		local i = 0
		local j = 0
		local k = 0								
		for j = 0 , Dead_Punish_Item_Num , 1 do
			if Dead_Punish_Item[j] ~= 0 and Dead_Punish_Item[j] ~= nil then
				local ItemType_Check = Check_Repair_ItemType ( Dead_Punish_Item[j] )
				if ItemType_Check == 1 then
					Item_URE = GetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_URE )
					Item_MAXURE = GetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_MAXURE )
					Take_Num = math.floor ( Item_MAXURE * Punish )
					if Item_URE >= 50 then
						k = 1
					end
					Item_URE = Item_URE - Take_Num
					if Item_URE < 50 then
						Item_URE = 49
					end
					i = SetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_URE , Item_URE )
					if i == 0 then
						LG("Item_URE","Normal death deducts attribute failed"..j)
					end
					if k == 1 and Item_URE == 49 then
							SetChaEquipValid ( role , Dead_Punish_Item_WZ [j] , 0 )
					end
				end
				
			end
		end
		SystemNotice ( role , "Вы погибли и теряете 5 процентов прочности экипировки " )
	end
end

function PK_Dead_Punish_ItemURE ( role )
	local Player = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	local Punish = 0.05
	PK_Dead_Punish_Item_Num = 5							
	local PK_Dead_Punish_Item_WZ = { }
	PK_Dead_Punish_Item_WZ [0] = 0
	PK_Dead_Punish_Item_WZ [1] = 2
	PK_Dead_Punish_Item_WZ [2] = 3
	PK_Dead_Punish_Item_WZ [3] = 4
	PK_Dead_Punish_Item_WZ [4] = 6
	PK_Dead_Punish_Item_WZ [5] = 9
	local PK_Dead_Punish_Item = { }
	PK_Dead_Punish_Item [0] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [0] )
	PK_Dead_Punish_Item [1] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [1] )
	PK_Dead_Punish_Item [2] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [2] )
	PK_Dead_Punish_Item [3] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [3] )
	PK_Dead_Punish_Item [4] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [4] )
	PK_Dead_Punish_Item [5] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [5] )
	if Player == 1 and boat == 0 then		
		local Item_URE = 0
		local Item_MAXURE = 0
		local Take_Num = 0
		local i = 0
		local j = 0
		local k = 0								
		for j = 0 , PK_Dead_Punish_Item_Num , 1 do
			if PK_Dead_Punish_Item[j] ~= 0 and PK_Dead_Punish_Item[j] ~= nil then
				local ItemType_Check = Check_Repair_ItemType ( PK_Dead_Punish_Item[j] )
				if ItemType_Check == 1 then
					Item_URE = GetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_URE )
					Item_MAXURE = GetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_MAXURE )
					Take_Num = math.floor ( Item_MAXURE * Punish )
					if Item_URE >= 50 then
						k = 1
					end
					Item_URE = Item_URE - Take_Num
					if Item_URE < 50 then
						Item_URE = 49
					end
					i = SetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_URE , Item_URE )
					if i == 0 then
						LG("Item_URE","Normal death deducts attribute failed"..j)
					end
					if k == 1 and Item_URE == 49 then
							SetChaEquipValid ( role , Dead_Punish_Item_WZ [j] , 0 )
					end
				end
				
			end
		end
		SystemNotice ( role , "Вы погибли. Снаряжение испорчено на 5 процентов " )
	end
end

function can_repair_item ( role_repair , role_want_repair , Item )
	local Check = 0
	local Sklv = 1
	Check = can_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	return Check
end

function can_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	local re_type = IsPlayer ( role_repair )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Money_Need = get_item_repair_money ( Item )
	local Money_Have = GetChaAttr ( role_want_repair , ATTR_GD )
	if Item_MAXURE <= 2500 then
		SystemNotice( role_want_repair , "Предмет сильно повреждён. Необходимо починить. " )
		return 0
	end
	if Item_MAXURE == Item_URE then								
		SystemNotice( role_want_repair , "Предмет сломан. Необходимо починить. ")
		return 0
	end
	if Money_Have < Money_Need then								
		SystemNotice( role_want_repair , "Нехватает денег для починки. ")
		return 0
	end
	local i = 0
	i = Check_Repair_ItemType ( Item )
	if i == 1 then
		return 1
	end
	SystemNotice( role_want_repair , "Предмет не чинится. ")
	return 0
end

function get_item_repair_money ( Item )
	local Money = 0
	local Sklv = 1
	Money = get_item_repair_moneyLua ( Item , Sklv )
	if Money < 1 then
		Money = 1
	end
	return Money
end

function get_item_repair_moneyLua ( Item , Sklv )
	local Item_Lv = GetItemLv ( Item )
	local RepairPoint = math.floor ( math.pow(( Item_Lv / 10 ) , 1.7 )) - 1
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local URE_repair = math.floor ( Item_MAXURE / 50 ) - math.floor ( Item_URE / 50 )
	local Money_Need = math.max ( ( URE_repair * RepairPoint ) , 1 )
	return Money_Need
end

function begin_repair_item ( role_repair , role_want_repair , Item )
	local Sklv = 1
	begin_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
end

function begin_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Money_Need = get_item_repair_money ( Item )
	local Money_Have = GetChaAttr ( role_want_repair , ATTR_GD )
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role_want_repair , ATTR_GD )
	ALLExAttrSet( role_want_repair )
	local i = 0
	local j = 0
	Item_URE = Item_MAXURE
	i = SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
	if i == 0 then 
		LG("Item_URE","Repair durability failed")
	end
	SystemNotice( role_want_repair ,"Починка завершена. " )
	return 1
end

function Check_Repair_ItemType ( Item )
	local Item_Type = GetItemType ( Item )
	local i = 0
	for i = 0 , Item_CanRepair_Num , 1 do
		if Item_CanRepair_ID [i] == Item_Type then
			return 1
		end
	end
	return 0
end

function GetNum_Part1 ( Num )
	local a = 0
	a = math.floor ( Num / 1000000000 )
	return a
end

function GetNum_Part2 ( Num )
	local a = 0
	local b = 0
	a = Num - GetNum_Part1 ( Num ) * 1000000000
	b = math.floor ( a / 10000000 )
	return b
end

function GetNum_Part3 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 10000000 ) * 10000000
	b = math.floor ( a / 1000000 )
	return b
end

function GetNum_Part4 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 1000000 ) *1000000
	b = math.floor ( a / 10000 )
	return b
end

function GetNum_Part5 ( Num )
	local a = 0
	local b = 0
	a = Num -  math.floor ( Num / 10000 ) * 10000
	b = math.floor ( a / 1000 )
	return b
end

function GetNum_Part6 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 1000 ) *1000
	b = math.floor ( a / 10 )
	return b
end

function GetNum_Part7 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 10 ) *10
	b = math.floor ( a / 1 )
	return b
end

function SetNum_Part1 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part1 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000000000
	return Num
end

function SetNum_Part2 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part2 ( Num )
	b = Part_Num - a
	Num = Num + b * 10000000
	return Num
end

function SetNum_Part3 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part3 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000000
	return Num
end

function SetNum_Part4 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part4 ( Num )
	b = Part_Num - a
	Num = Num + b * 10000
	return Num
end

function SetNum_Part5 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part5 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000
	return Num
end

function SetNum_Part6 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part6 ( Num )
	b = Part_Num - a
	Num = Num + b * 10
	return Num
end

function SetNum_Part7 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part7 ( Num )
	b = Part_Num - a
	Num = Num + b * 1
	return Num
end

function SetItemForgeParam_MonsterBaoliao ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )
	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Monster [j] then 
			k = j
			a = 200
		end
	end
	if k > MaxHole then
		k = MaxHole
	end
	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end
	Num = SetNum_Part1 ( Num , k )
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
	end
end

function SetItemForgeParam_PlayerHecheng ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )
	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Hecheng [j] then 
			k = j
			a = 200
		end 
	end 
 	if k > MaxHole then
		k = MaxHole
	end
	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end
	Num = SetNum_Part1 ( Num , k ) 
	 
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
	end
end

function SetItemForgeParam_QuestAward ( item , Num , item_event )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )
	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Mission_1 [j] then 
			k = j
			a = 200
		end 
	end 
  	if k > MaxHole then
		k = MaxHole
	end
	if item_event == QUEST_AWARD_SDJ then
		if k == 0 then
			k = 1
		end
	end
	if item_event == QUEST_AWARD_SCBOX then
		k = 2
	end
	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end
	Num = SetNum_Part1 ( Num , k ) 
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
	end
end

function SetItemForgeParam_Npc_Sale ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	Num = SetNum_Part1 ( Num , k )
	  
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
	end
end

function GetFightGuildLevel()
	local Lv = 0
	local Now_Week = GetNowWeek()
	local Now_Time = GetNowTime()
	local CheckNum = Now_Week * 100 + Now_Time
	if CheckNum >= 422 and CheckNum < 522 then
		Lv = 2
	elseif CheckNum >= 522 and CheckNum < 622 then
		Lv = 1
	elseif CheckNum >= 622 and CheckNum < 700 then
		Lv = 3
	elseif CheckNum >= 0 and CheckNum < 22 then
		Lv = 3
	end
	return Lv
end

function GetFightGuildID( GuildLevel )
	local RedSide = 0
	local BlueSide = 0
	RedSide , BlueSide = GetChallengeGuildID ( GuildLevel )
	return RedSide,BlueSide
end

function GetNowWeek ( )
	local Now_Week = os.date("%w")
	local Now_WeekNum = tonumber(Now_Week)
	return Now_WeekNum
end

function GetNowTime ( )
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	return NowTimeNum
end

function CheckItem_Nianshou ( role )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 0 or boat == 1 then		
		return 0
	end
	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	local head = GetChaItem ( role , 1 , 0 )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )
	local Head_ID = GetItemID ( head )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
	if Body_ID ~= 0825  and Body_ID ~= 2549 then
		return 0
	end
	if Hand_ID ~= 0826  and Hand_ID ~= 2550 then
		return 0
	end
	if Foot_ID ~= 0827  and Foot_ID ~= 2551 then
		return 0
	end
	if Cha_Num == 4 then
		if Head_ID ~= 0828  and Head_ID ~= 2552 then
			return 0
		end
	end
	return 1
end

function CheckItem_Heilong ( role )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 0 or boat == 1 then		
		return 0
	end
	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
	if Body_ID ~= 0845 and Body_ID ~= 2367 then
		return 0
	end
	if Hand_ID ~= 0846 and Hand_ID ~= 2368 then
		return 0
	end
	if Foot_ID ~= 0847 and Foot_ID ~= 2369 then
		return 0
	end
	return 1
end

function CheckItem_pirate ( role )
	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
        if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
	   return 0
	end
        if body_gem_id ~= 2530 and body_gem_id ~= 2533 and body_gem_id ~= 2536 and body_gem_id ~= 2539 and body_gem_id ~= 2542 and body_gem_id ~= 2545 then
	   return 0
        end
	if hand_gem_id ~= 2531 and hand_gem_id ~= 2534 and hand_gem_id ~= 2537 and hand_gem_id ~= 2540 and hand_gem_id ~= 2543 and hand_gem_id ~= 2546 then
	   return 0
	end
	if foot_gem_id ~= 2532 and foot_gem_id ~= 2535 and foot_gem_id ~= 2538 and foot_gem_id ~= 2541 and foot_gem_id ~= 2544 and foot_gem_id ~= 2547 then 
           return 0
	end	
	return 1
end

function CheckItem_Death ( role )
	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
       if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
		body_gem_id=Body_ID
		hand_gem_id=Hand_ID
		foot_gem_id=Foot_ID
		if body_gem_id ~= 2817 and body_gem_id ~= 2820 and body_gem_id ~= 2823 and body_gem_id ~= 2826 and body_gem_id ~= 2829 and body_gem_id ~= 2832 then
		   return 0
		end
		if hand_gem_id ~= 2818 and hand_gem_id ~= 2821 and hand_gem_id ~= 2824 and hand_gem_id ~= 2827 and hand_gem_id ~= 2830 and hand_gem_id ~= 2833 then
		   return 0
		end
		if foot_gem_id ~= 2819 and foot_gem_id ~= 2822 and foot_gem_id ~= 2825 and foot_gem_id ~= 2828 and foot_gem_id ~= 2831 and foot_gem_id ~= 2834 then 
		   return 0
		end
	else
		if body_gem_id ~= 2817 and body_gem_id ~= 2820 and body_gem_id ~= 2823 and body_gem_id ~= 2826 and body_gem_id ~= 2829 and body_gem_id ~= 2832 then
		   return 0
		end
		if hand_gem_id ~= 2818 and hand_gem_id ~= 2821 and hand_gem_id ~= 2824 and hand_gem_id ~= 2827 and hand_gem_id ~= 2830 and hand_gem_id ~= 2833 then
		   return 0
		end
		if foot_gem_id ~= 2819 and foot_gem_id ~= 2822 and foot_gem_id ~= 2825 and foot_gem_id ~= 2828 and foot_gem_id ~= 2831 and foot_gem_id ~= 2834 then 
		   return 0
		end	 
	end
	return 1
end

function CheckItem_fighting ( role )
	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
        if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
	   return 0
	end
        if body_gem_id ~= 1124 then
	   return 0
        end
	if hand_gem_id ~= 1125 then
	   return 0
	end
	if foot_gem_id ~= 1126  then 
           return 0
	end
	return 1
end

function Suanming_Money ( role )
	local a = CheckSuanmingType ( role )			
	if a == 1 then
		SystemNotice ( role , "Леди удача улыбнулась тебе. Ты получил самый лучший лот. " )
		ShangShangQian_Money ( role )
	elseif a == 2 then
		SystemNotice ( role , "Сегодня счастливый день. Ты получил хороший лот. " )
		ShangQian_Money ( role )
	elseif a == 3 then
		ZhongQian_Money ( role )
	elseif a == 4 then
		SystemNotice ( role , "У тебя сегодня не очень удачный день. Ты получил плохой лот. " )
		XiaQian_Money ( role )
	elseif a == 5 then
		SystemNotice ( role , "Госпожа Удача отвернулась от тебя. Ты получил самый плохой лот. " )
		XiaXiaQian_Money ( role )
	end
end

function Suanming_Work ( role )
	local a = CheckSuanmingType ( role )
	if a == 1 then
		SystemNotice ( role , "Леди удача улыбнулась тебе. Ты получил самый лучший лот. " )
		ShangShangQian_Work ( role )
	elseif a == 2 then
		SystemNotice ( role , "У тебя сегодня удачный день. Ты получил счастливый лот. " )
		ShangQian_Work ( role )
	elseif a == 3 then
		ZhongQian_Work ( role )
	elseif a == 4 then
		SystemNotice ( role , "У тебя сегодня не очень удачный день. Ты получил плохой лот. " )
		XiaQian_Work ( role )
	elseif a == 5 then
		SystemNotice ( role , "Госпожа Удача отвернулась от тебя. Ты получил самый плохой лот. " )
		XiaXiaQian_Work ( role )
	end
end

function CheckSuanmingType ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 10
	qian [1] = 35
	qian [2] = 55
	qian [3] = 85
	qian [4] = 100
	for i = 0 , 4 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	return b
end

function ShangShangQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 10
	qian [1] = 50
	qian [2] = 100
	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	if b == 1 then
		local GiveMoneyNum = 0.01 * math.random ( 1 , 5 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "Получено "..GiveMoneyNum_Notice.."% от золота Удачи " )
		QianAddMoney ( role , 1 , GiveMoneyNum )							
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
		SystemNotice ( role , "Вы получили благославление богини Кары. Получено "..time_Bei.." минут удачи при выпадении предметов " )
	elseif b == 3 then
		GiveItem ( role , 0 , 1092 , 1 , 0 )							
	end
end

function ShangQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 60
	qian [2] = 100
	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	if b == 1 then
		local GiveMoneyNum = 0.001 * math.random ( 1 , 9 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "Получено "..GiveMoneyNum_Notice.."% от золота Удачи " )
		QianAddMoney ( role , 1 , GiveMoneyNum )
	elseif b == 2 then
		local Give_Money = 1000 * math.random ( 1 , 15 )
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 3 then
		local hp_role = Hp( role )
		local hp_dmg = math.floor ( hp_role * 0.9 )
		local Give_Money = math.random ( 10000 , 20000 )
		Hp_Endure_Dmg ( role , hp_dmg )
		QianAddMoney ( role , 2 , Give_Money )
		SystemNotice ( role , "Звон монет! Кто же это мог быть? Удача!" )
	end
end

function ZhongQian_Money ( role )
	SystemNotice ( role , "Сегодня удача не улыбнулась Вам..." )
end

function XiaQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 100
	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	if b == 1 then
		local Give_Money = math.random ( 100 , 5000 )
		Give_Money = Give_Money * -1
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local GiveMoneyNum = 0.001 * math.random ( 1 , 9 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "Проиграно "..GiveMoneyNum_Notice.."% золота " )
		GiveMoneyNum = GiveMoneyNum * -1
		QianAddMoney ( role , 1 , GiveMoneyNum )
	end
end

function XiaXiaQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 100
	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	if b == 1 then
		local Give_Money = math.random ( 10000 , 30000 )
		Give_Money = Give_Money * -1
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local GiveMoneyNum = 0.01 * math.random ( 1 , 2 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "Проиграно "..GiveMoneyNum_Notice.."% золота " )
		GiveMoneyNum = GiveMoneyNum * -1
		QianAddMoney ( role , 1 , GiveMoneyNum )
	end
end

function ShangShangQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 50
	qian [2] = 100
	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	if b == 1 then
		local GiveExpNum = 0.01 * math.random ( 1 , 5 )
		local GiveExpNum_Notice = GiveExpNum * 100
		SystemNotice ( role , "Проиграно "..GiveMoneyNum_Notice.."% опыта " )
		QianAddExp ( role , GiveExpNum , 1 )							
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		SystemNotice ( role , "Вы получили благославление богини Кары. Получено "..time_Bei.." минут удвоеного опыта." )
	elseif b == 3 then
		QianAddState ( role , 1 )								
	end
end

function ShangQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 100
	for i = 0 , 0 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 50 , 500 )
		QianAddExp ( role , GiveExpNum , 2 )
	end
end

function ZhongQian_Work ( role )
	SystemNotice ( role , "Сегодня удача не улыбнулась вам..." )
end

function XiaQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 100
	for i = 0 , 0 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 50 , 500 )
		GiveExpNum = GiveExpNum * -1
		QianAddExp ( role , GiveExpNum , 2 )
	end
end

function XiaXiaQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 70
	qian [2] = 100
	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	if b == 1 then
		local GiveExpNum = 0.01 * math.random ( 1 , 2 )
		local GiveExpNum_Notice = GiveExpNum * 100
		SystemNotice ( role , "Проиграно "..GiveMoneyNum_Notice.."% опыта " )
		GiveExpNum = GiveExpNum * -1
		QianAddExp ( role , GiveExpNum , 1 )							
	elseif b == 2 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 100 , 1000 )
		GiveExpNum = GiveExpNum * -1
		QianAddExp ( role , GiveExpNum , 2 )
	elseif b == 3 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 1.1 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "Свет озаряет вас...с небес спускается пламя..." )
	end
end

function QianAddMoney ( role , Type , Num )
	if Type == 1 then
		local Money_Have = GetChaAttr ( role , ATTR_GD )
		local Money_Add = Money_Have * Num
		Money_Have = Money_Have + Money_Add
		Money_Add = math.floor( Money_Add )
		Money_Have = math.floor ( Money_Have )
		SetCharaAttr ( Money_Have , role , ATTR_GD )
		ALLExAttrSet( role )
		if Money_Add > 0 then
			Num = Num * 100
			SystemNotice ( role , "Бог Богатства забрал "..Num.."% золота " )
			if Money_Add >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.." использует лот и получает "..Money_Add.." золота " )
			end
		elseif Money_Add < 0 then
			Num = Num * -100
			SystemNotice ( role , "Богиня Неудач выбрала тебя! Проиграно "..Num.."% золота " )
		end
	elseif Type == 2 then
		local Money_Have = GetChaAttr ( role , ATTR_GD )
		local Money_Add = Num
		Money_Have = Money_Have + Money_Add
		if Money_Have < 0 then
			Money_Have = 0
		end
		SetCharaAttr ( Money_Have , role , ATTR_GD )
		ALLExAttrSet( role )
		if Num > 0 then
			SystemNotice ( role , "Прибавлено "..Num.." золота " )
			if Num >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.." использует лот и получает "..Num.." золота " )
			end
		elseif Num < 0 then
			Num = Num * -1
			SystemNotice ( role , "Вы потеряли "..Num.." золота " )
		end
	end
end

function QianAddExp ( role , Num , type )
	local lv = GetChaAttr( role, ATTR_LV )
	local exp = Exp(role) 
	local nlexp = GetChaAttrI ( role , ATTR_NLEXP ) 
	local clexp = GetChaAttrI ( role , ATTR_CLEXP )
	local ThisLvexp = nlexp - clexp
	local ExpGet = ThisLvexp * Num
	if type == 2 then
		ExpGet = Num
		if lv >= 80 then
			ExpGet = math.floor ( ExpGet / 50 )
		end
	end
	ExpGet = math.floor ( ExpGet )
	exp = exp + ExpGet
	if exp > nlexp then
		exp = nlexp + math.floor ( ( exp - nlexp ) / 50 )
	end
	if exp < 0 then
		exp = 0
	end
	SetChaAttrI( role , ATTR_CEXP , exp )
	if lv >= 80 then
			ExpGet = ExpGet * 50
	end
	if ExpGet > 0 then
		SystemNotice ( role , "Потеряно "..ExpGet.." опыта " )
		if ExpGet >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.." использует лот и получает "..ExpGet.." опыта " )
		end
	elseif ExpGet < 0 then
		ExpGet = ExpGet * -1
		SystemNotice ( role , "Потеряно "..ExpGet.." опыта " )
	end
end

function QianAddState ( role , Type )
	local State = { }
	local StateName = { }
	State [0] = STATE_PKZDYS
	State [1] = STATE_PKSFYS
	State [2] = STATE_PKMNYS
	State [3] = STATE_PKJZYS
	State [4] = STATE_PKKBYS
	StateName [0] = "Attack"
	StateName [1] = "Defense"
	StateName [2] = "Max HP"
	StateName [3] = "Hit Rate"
	StateName [4] = "Attack Speed"
	local i = math.random ( 0 , 4 )
	local statelv = 0
	local TimeRange = 0
	if Type == 1 then
		TimeRange = 60
	elseif Type == 2 then
		TimeRange = 30
	end
	local statetime = math.random ( 1 , TimeRange )
	statetime = statetime * 60
	statelv = 10
	AddState ( role , role , State[i] , statelv , statetime ) 
	SystemNotice ( role , "Ваш(а) "..StateName[i].." увеличивается " )
end

function GiveGoldenMapItem ( role )
	local CheckRandom = math.random ( 1,100 )
	if CheckRandom >= 1 and CheckRandom <= 23 then
		local GiveMoney = 1000 * math.random ( 1, 20 )
		SystemNotice ( role , "Найдено сокровище. Получено "..GiveMoney.." золота " )
		AddMoney ( role , 0 , GiveMoney )
	elseif CheckRandom > 23 and CheckRandom <= 28 then
		XianJing ( role , 1 )
	elseif CheckRandom > 28 and CheckRandom <= 33 then
		XianJing ( role , 2 )
	elseif CheckRandom > 33 and CheckRandom <= 40 then
		SystemNotice ( role , "Сегодня тебе не повезло. Приходи в следующий раз..." )
		MapRandomtele ( role )
	else
		SystemNotice ( role , "Найдено спрятанное Пиратское Сокровище " )
		local item_type = BaoXiang_CBTBOX
		local item_type_rad = BaoXiang_CBTBOX_Rad 
		local item_type_count = BaoXiang_CBTBOX_Count 
		local maxitem = BaoXiang_CBTBOX_Mxcount						
		local item_quality = BaoXiang_CBTBOX_Qua
		local General = 0  
		local ItemId = 0 
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		for i = 1 , maxitem , 1 do 
			General = item_type_rad [ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local c = -1							
		for k = 1 , maxitem , 1 do				
			d = item_type_rad [ k ] + b
			 if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then 
			ItemId = 3124 
		else 
			ItemId = item_type [c]  
			ItemCount = item_type_count [c] 
		end 
		GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
		local GoodItem = {}
		GoodItem[0]	=	0110
		GoodItem[1]	=	0112
		GoodItem[2]	=	0114
		GoodItem[3]	=	0116
		GoodItem[4]	=	0118
		GoodItem[5]	=	0120
		GoodItem[6]	=	0151
		GoodItem[7]	=	0396
		GoodItem[8]	=	0398
		GoodItem[9]	=	0400
		GoodItem[10]	=	0402
		GoodItem[11]	=	0404
		GoodItem[12]	=	0406
		GoodItem[13]	=	0408
		GoodItem[14]	=	0411
		GoodItem[15]	=	0413
		GoodItem[16]	=	0588
		GoodItem[17]	=	0590
		GoodItem[18]	=	0592
		GoodItem[19]	=	0594
		GoodItem[20]	=	0596
		GoodItem[21]	=	0598
		GoodItem[22]	=	0600
		GoodItem[23]	=	0602
		GoodItem[24]	=	0748
		GoodItem[25]	=	0750
		GoodItem[26]	=	0752
		GoodItem[27]	=	0754
		GoodItem[28]	=	0756
		GoodItem[29]	=	0758
		GoodItem[30]	=	0760
		GoodItem[31]	=	0824
		GoodItem[32]	=	0860
		GoodItem[33]	=	0861
		GoodItem[34]	=	0862
		GoodItem[35]	=	0863
		local Good_C = 0
		for Good_C = 0 , 35 , 1 do
			if ItemId == GoodItem[Good_C] then
				local itemname = GetItemName ( ItemId ) 
				local cha_name = GetChaDefaultName ( role ) 
				local message = cha_name.." находит пиратское сокровище и получает "..itemname
				Notice ( message )
			end
		end
	end	
end

function GiveGoldenMapItem_JLB ( role )
	local CheckRandom = math.random ( 1,100 )
	local x, y = GetChaPos(role)
	local lv= GetChaAttr(role, ATTR_LV) 
	local a=math.floor ( lv / 5 ) + 826
	local b=math.floor ( lv / 5 ) + 828
	local monserID=math.random(a,b)				
	if CheckRandom >= 1 and CheckRandom <= 20 then
		local GiveMoney = 10000 * math.random ( 1, 20 )
		SystemNotice ( role , "Найдены карибские сокровища и получено "..GiveMoney.." золота " )
		AddMoney ( role , 0 , GiveMoney )
	elseif CheckRandom > 20 and CheckRandom <= 24 then
		XianJing ( role , 1 )
	elseif CheckRandom > 24 and CheckRandom <= 28 then
		XianJing ( role , 2 )
	elseif CheckRandom > 28 and CheckRandom <= 33 then
		SystemNotice ( role , "Сегодня тебе не повезло. Приходи в следующий раз..." )
		MapRandomtele ( role )
	elseif CheckRandom > 33 and CheckRandom <= 40 then
		SystemNotice ( role , "О, нет! Кто выпустил собак? Помогите..." )
		local new1 = CreateCha(monserID, x, y, 145, 30)
		SetChaLifeTime(new1, 90000)
	else
		SystemNotice ( role , "Найдено спрятанное Пиратское Сокровище " )
		local item_type = BaoXiang_JLBCBTBOX
		local item_type_rad = BaoXiang_JLBCBTBOX_Rad 
		local item_type_count = BaoXiang_JLBCBTBOX_Count 
		local maxitem = BaoXiang_JLBCBTBOX_Mxcount						
		local item_quality = BaoXiang_JLBCBTBOX_Qua
		local General = 0  
		local ItemId = 0 
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		for i = 1 , maxitem , 1 do 
			General = item_type_rad [ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local c = -1							
		for k = 1 , maxitem , 1 do				
			d = item_type_rad [ k ] + b
			 if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then 
			ItemId = 3124 
		else 
			ItemId = item_type [c]  
			ItemCount = item_type_count [c] 
		end 
		GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
		local GoodItem = {}
		GoodItem[0]	=	0110
		GoodItem[1]	=	0112
		GoodItem[2]	=	0114
		GoodItem[3]	=	0116
		GoodItem[4]	=	0118
		GoodItem[5]	=	0120
		GoodItem[6]	=	0151
		GoodItem[7]	=	0396
		GoodItem[8]	=	0398
		GoodItem[9]	=	0400
		GoodItem[10]	=	0402
		GoodItem[11]	=	0404
		GoodItem[12]	=	0406
		GoodItem[13]	=	0408
		GoodItem[14]	=	0411
		GoodItem[15]	=	0413
		GoodItem[16]	=	0588
		GoodItem[17]	=	0590
		GoodItem[18]	=	0592
		GoodItem[19]	=	0594
		GoodItem[20]	=	0596
		GoodItem[21]	=	0598
		GoodItem[22]	=	0600
		GoodItem[23]	=	0602
		GoodItem[24]	=	0748
		GoodItem[25]	=	0750
		GoodItem[26]	=	0752
		GoodItem[27]	=	0754
		GoodItem[28]	=	0756
		GoodItem[29]	=	0758
		GoodItem[30]	=	0760
		GoodItem[31]	=	0824
		GoodItem[32]	=	0860
		GoodItem[33]	=	0861
		GoodItem[34]	=	0862
		GoodItem[35]	=	0863
		local Good_C = 0
		for Good_C = 0 , 35 , 1 do
			if ItemId == GoodItem[Good_C] then
				local itemname = GetItemName ( ItemId ) 
				local cha_name = GetChaDefaultName ( role ) 
				local message = cha_name.." находит сокровища и получает "..itemname
				Notice ( message )
			end
		end
	end
end

function CheckGetMapPos ( role , pos_x , pos_y , MapName )
	local Cha_Boat = GetCtrlBoat ( role )
	local ChaIsBoat = 0
	if Cha_Boat ~= nil then
		role = Cha_Boat
	end
	local Cha_pos_x , Cha_pos_y = GetChaPos ( role )
	local map_name = GetChaMapName ( role )
	local Cha_x_min = pos_x * 100 - 400
	local Cha_x_max = pos_x * 100 + 400
	local Cha_y_min = pos_y * 100 - 400
	local Cha_y_max = pos_y * 100 + 400
	if map_name ~= MapName then
		return 0 
	end 
	if Cha_pos_x < Cha_x_min or Cha_pos_x > Cha_x_max then
		return 0
	end
	if Cha_pos_y < Cha_y_min or Cha_pos_y > Cha_y_max then
		return 0
	end
	return 1
end

function SuanmingTeshu_Money ( role )
	local a = CheckSuanmingTypeTeshu ( role )			
	if a == 1 then
		SystemNotice ( role , "Удача улыбнулась вам! Вы получаете лучший Лот!" )
		ShangShangQianTeshu_Money ( role )
	elseif a == 2 then
		SystemNotice ( role , "Сегодня удачный день. Вы получаете хороший Лот!" )
		ShangQianTeshu_Money ( role )
	elseif a == 3 then
		ZhongQian_Money ( role )
	end
end

function SuanmingTeshu_Work ( role )
	local a = CheckSuanmingTypeTeshu ( role )
	if a == 1 then
		SystemNotice ( role , "Удача улыбнулась вам! Вы получаете лучший Лот!" )
		ShangShangQianTeshu_Work ( role )
	elseif a == 2 then
		SystemNotice ( role , "Сегодня удачный день. Вы получаете хороший Лот!" )
		ShangQianTeshu_Work ( role )
	elseif a == 3 then
		ZhongQian_Work ( role )
	end
end

function CheckSuanmingTypeTeshu ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 80
	qian [2] = 100
	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	return b
end

function ShangShangQianTeshu_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 5
	qian [1] = 60
	qian [2] = 100
	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	if b == 1 then
		local GiveMoneyNum = 10000 * math.random ( 10 , 100 )
		QianAddMoney ( role , 2 , GiveMoneyNum )							
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
		SystemNotice ( role , "Получено благословение богини Кары. Текущий регион получает "..time_Bei.." минут бонуса, значительно увеличен шанс выпадения вещей." )
	elseif b == 3 then
		GiveItem ( role , 0 , 1092 , 1 , 0 )							
	end
end

function ShangQianTeshu_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 60
	qian [1] = 100
	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	if b == 1 then
		local Give_Money = 1000 * math.random ( 1 , 20 )
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.9 )
		local Give_Money = math.random ( 10000 , 30000 )
		Hp_Endure_Dmg ( role , hp_dmg )
		QianAddMoney ( role , 2 , Give_Money )
		SystemNotice ( role , "Добавлено несколько золотых монет. Кто бросил эти монеты?" )
	end
end

function ShangShangQianTeshu_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 60
	qian [2] = 90
	qian [3] = 100
	for i = 0 , 3 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = ( Lv_role * Lv_role * math.random ( 10 , 100 ) ) * ( 1 / math.max ( 1 , ( 50 - Lv_role ) ) )
		QianAddExp ( role , GiveExpNum , 2 )							
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		SystemNotice ( role , "Получено благословение богини Кары. Текущий регион получает "..time_Bei.." минут бонуса, значительно увеличен получаемый опыт " )
	elseif b == 3 then
		QianAddState ( role , 1 )								
	elseif b == 4 then
		QianAddState ( role , 1 )								
		
	end
end

function ShangQianTeshu_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 50
	qian [1] = 100
	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * Lv_role * math.random ( 5 , 50 ) * ( 1 / math.max ( 1 , ( 50 - Lv_role ) ) )
		QianAddExp ( role , GiveExpNum , 2 )
	elseif b == 2 then
		QianAddState ( role , 2 )
	end
end

function QianAddStatePoint ( role , Num )
	local CheckNum = CheckStatePointHasGet ( role )
	local a = 1 / math.pow ( 2 , ( CheckNum - 1 ) )
	local check = Percentage_Random ( a )
	if check == 1 then
		local attr_ap = Attr_ap( role )
		local ap_extre = Num
		attr_ap = attr_ap + ap_extre 
		SetCharaAttr( attr_ap, role, ATTR_AP )
		local cha_name = GetChaDefaultName ( role )
		Notice ( cha_name.." использует лот и получает 1 очко характеристик " )
		LG ( "Add_StatePoint" , cha_name.."Obtained Attributes point:"..Num.."point" )
	else
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 100 , 1000 )
		QianAddExp ( role , GiveExpNum , 2 )
	end
end

function CheckStatePointHasGet ( role )
	local str = GetChaAttr( role , ATTR_BSTR )
	local con = GetChaAttr( role , ATTR_BCON )
	local agi = GetChaAttr( role , ATTR_BAGI )
	local dex = GetChaAttr( role , ATTR_BDEX )
	local sta = GetChaAttr( role , ATTR_BSTA )
	local ap = GetChaAttr( role , ATTR_AP )
	local StatePointTotal_Have = str + con + agi + dex + sta + ap - 25
	local Lv_role = Lv ( role )
	local StatePointTotal = 3 + Lv_role + math.floor ( Lv_role / 10 ) * 4 + math.max ( 0 , ( Lv_role - 59 ) )
	local Check = StatePointTotal_Have - StatePointTotal
	return Check
end

function GetTheMapPos ( role , type )
	local MapList = { }
	MapList [0] = "NoMap"
	MapList [1] = "garner"
	MapList [2] = "magicsea"
	MapList [3] = "darkblue"
	local PosDateNum = 8
	local PosDateMap = {}
	local PosDateMax_X = {}
	local PosDateMin_X = {}
	local PosDateMax_Y = {}
	local PosDateMin_Y = {}
	PosDateMap [0]	=	1
	PosDateMap [1]	=	1
	PosDateMap [2]	=	1
	PosDateMap [3]	=	1
	PosDateMap [4]	=	2
	PosDateMap [5]	=	3
	PosDateMap [6]	=	1
	PosDateMap [7]	=	2
	PosDateMap [8]	=	1
	PosDateMax_X [0]	=	800
	PosDateMax_X [1]	=	940
	PosDateMax_X [2]	=	1023
	PosDateMax_X [3]	=	1012
	PosDateMax_X [4]	=	850
	PosDateMax_X [5]	=	2810
	PosDateMax_X [6]	=	380
	PosDateMax_X [7]	=	1420
	PosDateMax_X [8]	=	1614
	PosDateMin_X [0]	=	700
	PosDateMin_X [1]	=	840
	PosDateMin_X [2]	=	919
	PosDateMin_X [3]	=	912
	PosDateMin_X [4]	=	750
	PosDateMin_X [5]	=	2710
	PosDateMin_X [6]	=	280
	PosDateMin_X [7]	=	1320
	PosDateMin_X [8]	=	1514
	PosDateMax_Y [0]	=	1766
	PosDateMax_Y [1]	=	1350
	PosDateMax_Y [2]	=	1054
	PosDateMax_Y [3]	=	2950
	PosDateMax_Y [4]	=	3083
	PosDateMax_Y [5]	=	691
	PosDateMax_Y [6]	=	1725
	PosDateMax_Y [7]	=	3000
	PosDateMax_Y [8]	=	2695
	PosDateMin_Y [0]	=	1666
	PosDateMin_Y [1]	=	1250
	PosDateMin_Y [2]	=	1017
	PosDateMin_Y [3]	=	2850
	PosDateMin_Y [4]	=	2982
	PosDateMin_Y [5]	=	591
	PosDateMin_Y [6]	=	1675
	PosDateMin_Y [7]	=	2900
	PosDateMin_Y [8]	=	2615
	local PosDateGet = math.random ( 0 , PosDateNum )
	local Pos_Map = PosDateMap[ PosDateGet ]
	local Pos_X = math.random ( PosDateMin_X [PosDateGet] , PosDateMax_X [PosDateGet] )
	local Pos_Y = math.random ( PosDateMin_Y [PosDateGet] , PosDateMax_Y [PosDateGet] )
	return Pos_X , Pos_Y , Pos_Map
end

function GetTheMapPos_JLB ( role , type )
	local MapList = { }
	MapList [0] = "NoMap"
	MapList [1] = "jialebi"
	local PosDateNum = 3
	local PosDateMap = {}
	local PosDateMax_X = {}
	local PosDateMin_X = {}
	local PosDateMax_Y = {}
	local PosDateMin_Y = {}
	PosDateMap [0]	=	1
	PosDateMap [1]	=	1
	PosDateMap [2]	=	1
	PosDateMap [3]	=	1
	PosDateMax_X [0]	=	476 
	PosDateMax_X [1]	=	460 
	PosDateMax_X [2]	=	469 
	PosDateMax_X [3]	=	477 
	PosDateMin_X [0]	=	466
	PosDateMin_X [1]	=	452
	PosDateMin_X [2]	=	462
	PosDateMin_X [3]	=	470
	PosDateMax_Y [0]	=	1052
	PosDateMax_Y [1]	=	980
	PosDateMax_Y [2]	=	1000
	PosDateMax_Y [3]	=	1048
	PosDateMin_Y [0]	=	1000 
	PosDateMin_Y [1]	=	954  
	PosDateMin_Y [2]	=	980  
	PosDateMin_Y [3]	=	1036 
	local PosDateGet = math.random ( 0 , PosDateNum )
	local Pos_Map = PosDateMap[ PosDateGet ]
	local Pos_X = math.random ( PosDateMin_X [PosDateGet] , PosDateMax_X [PosDateGet] )
	local Pos_Y = math.random ( PosDateMin_Y [PosDateGet] , PosDateMax_Y [PosDateGet] )
	return Pos_X , Pos_Y , Pos_Map
end

function XianJing ( role ,type )
	if type == 1 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.9 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "Вы серьёзно пострадали от ловушек, оставленых пиратами!" )
	elseif type == 2 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.3 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "Вы немного пострадали от пиратских ловушек. К счастью вовремя убежали." )
	end
end

function MapRandomtele ( role )
	local Birth ={}
	Birth[0]	=	"Argent City"
	Birth[1]	=	"Thundoria Castle"
	Birth[2]	=	"Shaitan City"
	Birth[3]	=	"Icicle Castle"
	Birth[4]	=	"Chaldea Haven"
	Birth[5]	=	"Andes Forest Haven"
	Birth[6]	=	"Abandon Mine Haven"
	Birth[7]	=	"Rockery Haven"
	Birth[8]	=	"Valhalla Haven"
	Birth[9]	=	"Solace Haven"
	Birth[10]	=	"Oasis Haven"
	Birth[11]	=	"Babul Haven"
	Birth[12]	=	"Icicle Haven"
	Birth[13]	=	"Atlantis Haven"
	Birth[14]	=	"Skeleton Haven"
	Birth[15]	=	"Icespire Haven"
	Birth[16]	=	"Zephyr Isle"
	Birth[17]	=	"Glacier Isle"
	Birth[18]	=	"Outlaw Isle"
	Birth[19]	=	"Isle of Chill"
	Birth[20]	=	"Canary Isle"
	Birth[21]	=	"Cupid Isle"
	Birth[22]	=	"Isle of Fortune"
	Birth[23]	=	"Thundoria Castle"
	Birth[23]	=	"Thundoria Harbor"
	Birth[24]	=	"Sacred Snow Mountain"
	Birth[25]	=	"Andes Forest Haven"
	Birth[26]	=	"Oasis Haven"
	Birth[27]	=	"Icespire Haven"
	Birth[28]	=	"Lone Tower Entrace"
	Birth[29]	=	"Barren Cavern Entrance"
	Birth[30]	=	"Abandon Mine 2"
	Birth[31]	=	"Silver Mine 2"
	Birth[32]	=	"Silver Mine 3"
	Birth[33]	=	"Abandon Mine 1"
	Birth[34]	=	"Lone Tower 2"
	Birth[35]	=	"Lone Tower 3"
	Birth[36]	=	"Lone Tower 4"
	Birth[37]	=	"Lone Tower 5"
	Birth[38]	=	"Lone Tower 6"
	Birth[39]	=	"Argent Bar"
	local PosRandom = math.random ( 0 , 39 )
	DelBagItem ( role , 1093 , 1 )
	MoveCity(role, Birth[PosRandom] )
end

function check_item_valid ( role , Item )
	local Item_type = GetItemType ( Item )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	if Item_type <= 29 or Item_type == 59 then
		if Item_URE ~= 0 and Item_URE <= 49 then
			return 0
		else
			return 1
		end
	end
	return 1
end

function cha_timer( role, freq, time )
	local resume_freq = 5
	local now_tick = GetChaParam( role, 1 )
	local is_role_living = -1
	SetChaParam( role, 1, now_tick + freq * time )

	-----------------------
	-- Восстановление ЖЗ --
	-----------------------
	if math.mod( now_tick, resume_freq ) == 0 and now_tick > 0 then 
		if is_role_living == -1 then
			is_role_living = IsChaLiving( role )
		end
		if is_role_living == 1 then 
			Resume( role )
		end 
	end

--------------------------------------------------
--		Функция свадебного бонуса (Начало)		--
--------------------------------------------------
	local cha = TurnToCha( role )
	local ring_bg = CheckBagItem( cha, 2520 )

	if ring_bg ~= 0 then
		local ring = GetChaItem2( cha, 2, 2520 )
		local mate_id = GetItemForgeParam( ring, 1 )
		if IsInTeam( cha ) == 1 then
			local Role_ID = GetRoleID( cha )
			local t = {}
			t[0] = cha
			t[1] = GetTeamCha( cha, 0 )
			t[2] = GetTeamCha( cha, 1 )
			t[3] = GetTeamCha( cha, 2 )
			t[4] = GetTeamCha( cha, 3 )
			for i = 1, 4 do
				if t[i] ~= nil then
					local Have_Ring = CheckBagItem( t[i], 2520 )
					if Have_Ring == 1 then	-- Проверка на наличие кольца
						local Item = GetChaItem2( t[i], 2, 2520 )
						local party_mate_id = GetItemForgeParam( Item, 1 )
						if Role_ID == party_mate_id then	-- Проверка на совпадение ID в кольце и персонажа
							local party_ID = GetRoleID( t[i] )
							if mate_id == party_ID then
								local pos_cha_x, pos_cha_y = GetChaPos( cha )
								local mate = TurnToCha( t[i] )
								local pos_mate_x, pos_mate_y = GetChaPos( mate )
								local distance = Distance( pos_cha_x, pos_cha_y, pos_mate_x, pos_mate_y )
								if distance <= 500 then
									AddState( role, role, STATE_WEDDING, 1, 3600 )
									RefreshCha( role )
								elseif distance >= 500 then
									RemoveState( cha, STATE_WEDDING )
								end
							end
						end
					end
				end
			end
		else if ( GetChaStateLv( cha, STATE_WEDDING ) ~= 0 ) then
				RemoveState( cha, STATE_WEDDING )
			end
		end
	end
--------------------------------------------------
--		Функция свадебного бонуса (Конец)		--
--------------------------------------------------

--------------------------------------------------
--						Феи						--
--------------------------------------------------
	local pet_freq = 60
	local Item_Elf = GetChaItem( role, 2, 1 )
	local Get_Elf_Type = GetItemType( Item_Elf )
	if Get_Elf_Type == 59 then
		local ure_type = GetItemAttr( Item_Elf, ITEMATTR_URE )
		if ure_type<=49 then
			SetChaKbItemValid2( role, Item_Elf, 0, 1 )
		else
			SetChaKbItemValid2( role, Item_Elf, 1, 1 )
		end
		local str = GetItemAttr( Item_Elf ,ITEMATTR_VAL_STR )	-- Сила
		local con = GetItemAttr( Item_Elf ,ITEMATTR_VAL_CON )	-- Телосложение
		local agi = GetItemAttr( Item_Elf ,ITEMATTR_VAL_AGI )	-- Ловкость
		local dex = GetItemAttr( Item_Elf ,ITEMATTR_VAL_DEX )	-- Точность
		local sta = GetItemAttr( Item_Elf ,ITEMATTR_VAL_STA )	-- Дух
		local Lv = str + agi + dex + con + sta	-- Уровень Феи
		if Lv > 27 then										-- Если уровень феи выше 27, то время роста увеличивается
			pet_freq = pet_freq + ( Lv - 27 ) * 5
		end
	end
	local sklv = GetChaStateLv( role, STATE_JLJSGZ )	-- Если применен Фрукт роста феи, время сокращается в 2 раза
	if sklv ~= 0 then
		pet_freq = math.floor( pet_freq * 0.5 )
	end
	if math.mod( now_tick, pet_freq ) == 0 and now_tick > 0 then
		if is_role_living == -1 then
			is_role_living = IsChaLiving( role )
		end
		if is_role_living == 1 then
			local Item_bg = GetChaItem( role, 2, 1 )
			local Get_Item_Type = GetItemType( Item_bg )
			local Item_siliao = GetChaItem( role, 2, 2 )
			local Item_siliao_ID = GetItemID( Item_siliao )
			if Get_Item_Type == 59 then
				local Elf_URE = GetItemAttr( Item_bg, ITEMATTR_URE )
				local Num_JLone = GetItemForgeParam( Item_bg, 1 )
				local Part1_JLone = GetNum_Part1( Num_JLone )
				if Elf_URE <= 2550 and Item_siliao_ID == 2312 then
					local j = TakeItem( role, 0, 2312, 1 )
					if j == 0 then
						SystemNotice( role , "\209\242\224\237\228\224\240\242\237\251\233 \239\224\229\234 \237\229 \232\241\239\238\235\252\231\238\226\224\237!" )
					else
						Elf_URE = Elf_URE + 2500
						SystemNotice( role, "\212\229\255 \224\226\242\238\236\224\242\232\247\229\241\234\232 \237\224\234\238\240\236\235\229\237\224." )
						SetItemAttr( Item_bg, ITEMATTR_URE, Elf_URE )
					end
				end

				----------------------------------------------------------
				-- Получение Монет фей, Эльф. печаток, Кор.эльф.печаток --
				----------------------------------------------------------
				local star_num = GetItemAttr( Item_bg, ITEMATTR_VAL_FUSIONID )
				star_num = star_num + 1
				if math.mod( star_num, 1 ) == 0 and Elf_URE >= 50 and Part1_JLone == 1 then
					GiveItemX( role, 0, 855, 1, 4 )
				end
				if math.mod( star_num, 2 ) == 0 and Elf_URE >= 50 and Part1_JLone ~= 1 then
					GiveItemX( role, 0, 855, 1, 4 )
				end
				if math.mod( star_num, 30 ) == 0 and Elf_URE >= 50 and Part1_JLone == 1 then
					GiveItemX( role, 0, 2588, 1, 4 )
				end
				if math.mod( star_num, 60 ) == 0 and Elf_URE >= 50 and Part1_JLone ~= 1 then
					GiveItemX( role, 0, 2588, 1, 4 )
				end
				if math.mod( star_num, 120 ) == 0 and Elf_URE >= 50 then
					GiveItemX( role, 0, 2588, 1, 4 )
				end
				if math.mod( star_num , 1200 ) == 0  and Elf_URE >= 50 then
					GiveItemX( role, 0, 2589, 1, 4 )
				end
				if star_num == 1200 then
					star_num = 0
				end
				SetItemAttr( Item_bg, ITEMATTR_VAL_FUSIONID, star_num )
				Take_ElfURE( role, Item_bg, 1, 0 )
				Give_ElfEXP( role, Item_bg, 1, 0 )
			end
		end
	end
end

function Take_ElfURE( role, Item, Type, Num )
	local Elf_URE = GetItemAttr( Item, ITEMATTR_URE ) 
	if Type == 1 then
		if Elf_URE > 49 then
			Elf_URE = math.max(( Elf_URE - 50 ), 49 )
			SetItemAttr( Item, ITEMATTR_URE, Elf_URE )
		else
			SetChaKbItemValid2( role, Item, 0, 1 )
		end
	end
	if Type == 2 then
		if Elf_URE > 49 then
			Elf_URE = math.max( ( Elf_URE - Num ), 49 )
			SetItemAttr( Item, ITEMATTR_URE, Elf_URE )
		else
			SetChaKbItemValid2( role, Item, 0, 1 )
		end
	end
end

function Give_ElfEXP ( role , Item ,Type , Num )
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY ) 
	local Elf_MaxEXP = GetItemAttr( Item ,ITEMATTR_MAXENERGY ) 
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE ) 
	if Type == 1 then
			 if Elf_URE > 49 then
			   Elf_EXP = Elf_EXP + ELEEXP_GETRAD 
			    if Elf_EXP >= Elf_MaxEXP then
                               Elf_EXP = Elf_MaxEXP
			    end
			   SetItemAttr ( Item , ITEMATTR_ENERGY , Elf_EXP )
			  end  
        end 
end

function Give_ElfURE ( role , Item  , Num )
	local Elf_URE =  GetItemAttr( Item ,ITEMATTR_URE )
	local Elf_MaxURE = GetItemAttr( Item ,ITEMATTR_MAXURE )
        if Elf_URE<=49 then
	SetChaKbItemValid2(role , Item , 1 , 0)
	end
	Elf_URE = Elf_URE + Num
	if Elf_URE >= Elf_MaxURE  then
		
		Elf_URE = Elf_MaxURE
	end
	SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )
end

function CheckElf_EXP ( role , Item )
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY )
	local Elf_MaxEXP =  GetItemAttr( Item ,ITEMATTR_MAXENERGY )
	if Elf_EXP >= Elf_MaxEXP then
	        return 1
	else
		return 0
	end
end

-------------------------------
-- Функция фрукта на силу +1 --
-------------------------------
function Lvup_Str ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 

---------------------------------------
-- Функция фрукта на телосложение +1 --
---------------------------------------
function Lvup_Con ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 

-----------------------------------
-- Функция фрукта на ловкость +1 --
-----------------------------------
function Lvup_Agi ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 

-----------------------------------
-- Функция фрукта на точность +1 --
-----------------------------------
function Lvup_Dex ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 

------------------------------
-- Функция фрукта на дух +1 --
------------------------------
function Lvup_Sta ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 

-------------------------------
-- Функция фрукта на силу +2 --
-------------------------------
function Lvup_Str_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 

---------------------------------------
-- Функция фрукта на телосложение +2 --
---------------------------------------
function Lvup_Con_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 

-----------------------------------
-- Функция фрукта на ловкость +2 --
-----------------------------------
function Lvup_Agi_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 

-----------------------------------
-- Функция фрукта на точность +2 --
-----------------------------------
function Lvup_Dex_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 

------------------------------
-- Функция фрукта на дух +2 --
------------------------------
function Lvup_Sta_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 

function Elf_LvUp ( role , Item_Num , Item_Traget , attr_type )       
        local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 
	local Lv = str + agi + dex + con + sta
	local attr_type_num = GetItemAttr( Item_Traget ,attr_type )
	local a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) ) )
	if Lv >= 40 then
		a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 ) * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) )
	end
	local b = Percentage_Random ( a )
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) 
	if b == 1 then						
	        AddItemEffect(role , Item_Traget , 0  )
		item_energe = 0
		SystemNotice (role , "Уровень феи увеличен. ")	
                attr_type_num = attr_type_num + 1
		SetItemAttr ( Item_Traget , attr_type , attr_type_num )
		local Item_MAXENERGY = 240 * ( Lv + 1 )
		if Item_MAXENERGY > 6480 then
			Item_MAXENERGY = 6480
		end
		local Item_MAXURE_NUM = Elf_MaxURE + 1000
		if Item_MAXURE_NUM > 32000 then
			Item_MAXURE_NUM = 32000
		end
		SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
		ResetItemFinalAttr(Item_Traget)
	        AddItemEffect(role , Item_Traget , 1  )
	else							
		item_energe = 0.5 * item_energe 
	end
		SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )
end

function Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type )       
        local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 
	local Lv = str + agi + dex + con + sta
	local attr_type_num = GetItemAttr( Item_Traget ,attr_type )
	local a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) ) )
	if Lv >= 40 then
		a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 ) * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) )
	end
	local b = Percentage_Random ( a )
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) 
	if b == 1 then						
	        AddItemEffect(role , Item_Traget , 0  )
		item_energe = 0
		SystemNotice (role , "Уровень феи увеличен. ")	
                attr_type_num = attr_type_num + 2
		SetItemAttr ( Item_Traget , attr_type , attr_type_num )
		local Item_MAXENERGY = 240 * ( Lv + 2 )
		
		if Item_MAXENERGY > 6480 then
			Item_MAXENERGY = 6480
		end
		local Item_MAXURE_NUM = Elf_MaxURE + 2000
		if Item_MAXURE_NUM > 32000 then
			Item_MAXURE_NUM = 32000
		end
		SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
		ResetItemFinalAttr(Item_Traget)
	        AddItemEffect(role , Item_Traget , 1  )
	else							
		item_energe = 0.5 * item_energe 
	end
		SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )
end

function Give_ElfEXP_MISSION ( role , num )						
	local Item = GetChaItem ( role , 2 ,  2  ) 
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY )		
	local Elf_MaxEXP = GetItemAttr( Item ,ITEMATTR_MAXENERGY )	
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE )			
	if Elf_URE <= 50 then									
		SystemNotice (role , "Фея истощена. Рост невозможен из-за недостатка выносливости ")
		return 0 
	else 
		Elf_URE = Elf_URE - 40								
		SetItemAttr ( Item , ITEMATTR_URE , Elf_URE ) 
		num = math.min ( num , Elf_MaxEXP - Elf_EXP ) 
		SetItemAttr ( Item , ITEMATTR_ENERGY , num ) 
	end 
	return 1 
end 

function CheckElfHaveSkill ( Num , SkillType , SkillNum )
	local Part2 = GetNum_Part2 ( Num )	
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )
	if Part3 == SkillType and Part2 == SkillNum then
		return 1
	elseif Part2 == SkillNum then
		return 2
	end
	if Part5 == SkillType and Part4 == SkillNum then
		return 1
	elseif Part4 == SkillNum then
		return 2
	end
	if Part7 == SkillType and Part6 == SkillNum then
		return 1
	elseif Part6 == SkillNum then
		return 2
	end
	return 0
end

function AddElfSkill ( Item , SkillType , SkillNum )
	local Num = GetItemForgeParam ( Item , 1 ) 
	local Part1 = GetNum_Part1 ( Num )	
	local Part2 = GetNum_Part2 ( Num )
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )
	if Part2 == SkillNum then
		Part3 = SkillType
		Num = SetNum_Part3 ( Num , Part3 )
		Num = SetNum_Part2 ( Num , Part2 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end
	if Part4 == SkillNum then
		Part5 = SkillType
		Num = SetNum_Part5 ( Num , Part5 )
		Num = SetNum_Part4 ( Num , Part4 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end
	if Part6 == SkillNum then
		 Part7 = SkillType
		Num = SetNum_Part7 ( Num , Part7 )
		Num = SetNum_Part6 ( Num , Part6 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end
	local rad = math.random( 1 , 100 )   
	if Part2 == 0 and Part3 == 0 then
		Part2 = SkillNum
		Part3 = SkillType
		Num = SetNum_Part3 ( Num , Part3 )
		Num = SetNum_Part2 ( Num , Part2 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
		if rad<= 30 then	
			Part2 = SkillNum
			Part3 = SkillType
			Num = SetNum_Part3 ( Num , Part3 )
			Num = SetNum_Part2 ( Num , Part2 )
			SetItemForgeParam ( Item , 1 , Num )
			return
		end
	end
	if Part4 == 0 and Part5 == 0 then
		Part4 = SkillNum
		Part5 = SkillType
		Num = SetNum_Part5 ( Num , Part5 )
		Num = SetNum_Part4 ( Num , Part4 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
		if rad> 30 and rad < 60 then
			Part4 = SkillNum
			Part5 = SkillType
			Num = SetNum_Part5 ( Num , Part5 )
			Num = SetNum_Part4 ( Num , Part4 )
			SetItemForgeParam ( Item , 1 , Num )
			return
		end
	end
	if Part6 == 0 and Part7 == 0 then
		Part6 = SkillNum
		Part7 = SkillType
		Num = SetNum_Part7 ( Num , Part7 )
		Num = SetNum_Part6 ( Num , Part6 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
			Part6 = SkillNum
			Part7 = SkillType
			Num = SetNum_Part7 ( Num , Part7 )
			Num = SetNum_Part6 ( Num , Part6 )	
			SetItemForgeParam ( Item , 1 , Num )
		return
	end
end

function CheckHaveElf ( role )
	local Item = GetChaItem ( role , 2 , 1  ) 
	if Item == nil then              
		return 0
	end
	local Item_Type =  GetItemType ( Item ) 
	if Item_Type ~= 59 then
		return 0
	else
		local ELf_URE = GetItemAttr( Item ,ITEMATTR_URE )  
		if ELf_URE <= 49 then
			return 0
		end
	end
	return Item
end

function ElfSKill_PowerSheild ( role , Elf_Item , Num , dmg )
	if dmg <= 0 then
		return 0
	end
	local role_hp = Hp ( role )
	local role_maxhp = Mxhp ( role )
	local havehp = role_maxhp / role_hp
	if havehp < 5 then
		return 0
	end
	local Elf_SheildLv = GetElfSkill_Lv ( Num , 1 )
	dmg = math.floor ( dmg * ( 0.3 + Elf_SheildLv * 0.15 )  ) 
	local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
	local Dmg_Take_rad = 10 
	local Elf_Dmg_CanTake = ( Item_URE - 50 ) / Dmg_Take_rad
	if Elf_Dmg_CanTake >= dmg then
		local Elf_URE_Take = math.floor ( dmg * Dmg_Take_rad )
		local Elf_URE_Notice = math.floor ( Elf_URE_Take / 50 )
		Take_ElfURE ( role , Elf_Item , 2 , Elf_URE_Take )
		SystemNotice ( role , "Фея поглотила часть урона: "..dmg)
		return dmg
	else
		SystemNotice ( role , "Фея истощена. В таком состоянии фея не может поглощать урон " )
		return 0
	end
end

function GetElfSkill_Lv ( Num , SkillNum )
	local Part2 = GetNum_Part2 ( Num )
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )
	if SkillNum == Part2 then
		return Part3
	elseif SkillNum == Part4 then
		return Part5
	elseif SkillNum == Part6 then
		return Part7
	end
	return 0
end

function ElfSKill_ElfCrt ( role , Elf_Item , Num )
	local Elf_SkillLv = GetElfSkill_Lv ( Num , 2 )
	local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
	if Item_URE < 50 then
		SystemNotice ( role , "Фея истощена. В таком состоянии фея не может применить Берсерк " )
		return 0
	end
	local b = ( Elf_SkillLv * 2 + 1 )  * 0.01
	local a = Percentage_Random ( b )
	if a == 1 then
		
		Take_ElfURE ( role , Elf_Item , 2 , Elf_SkillLv )
		return 1
		
	else
		return 0
	end
end

function ElfSkill_MagicAtk ( dmg , role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 3 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 3 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "Фея истощена. В таком состоянии фея не может использовать магию " )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 1 )
					return dmg * 0.05 + 5 
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return dmg * 0.08 + 8
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 3 )
					return dmg * 0.1 + 10
				end
			end
		end
	end
	return 0
end

function ElfSkill_HpResume ( role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 4 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 4 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "Фея истощена. В таком состоянии фея не может использовать восстановление " )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 10
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 20
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 35
				end
			end
		end
	end
	return 0
end

function ElfSkill_SpResume ( role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 5 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 5 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "Фея истощена. В таком состоянии фея не может медитировать " )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 10
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 20
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 35
				end
			end
		end
	end
	return 0
end

function CreditExchangeImpl( role, tp )
	local i = CheckBagItem( role,3849 )
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 3849 )
		local rongyu_num=GetItemAttr ( Item , ITEMATTR_VAL_STR )
		if rongyu_num<=0 then
			SystemNotice ( role , "Без положительной чести благословление невозможно.")
			return
		end
		local middle=0
		if rongyu_num<30000 then
			middle=30000 - rongyu_num
		end
		middle= math.floor ( middle / 2 )
		local exp_star=GetChaAttr (  role , ATTR_CEXP )
		local job = GetChaAttr(role, ATTR_JOB)
		local lv=GetChaAttr(role, ATTR_LV) 
		local money_num=rongyu_num*100
		local exp_num=rongyu_num*5+exp_star
		local rad=math.random(1,30000)
		local cha_type = GetChaTypeID ( role )
		local cha_namea = GetChaDefaultName ( role )
		LG( "star_rongyuzhichange_lg" ,cha_namea, tp , lv , exp_star , job , cha_type)
		if tp==0 or tp==1 or tp==2 then 
			if lv>=15 and lv<=40 then
				money_num=rongyu_num*200
			elseif lv>=41 and lv<=60 then
				money_num=rongyu_num*250
			elseif lv>=61 then
				money_num=rongyu_num*300
			end
			AddMoney ( role , 0 , money_num ) 
		LG( "star_rongyuzhichange_lg" ,cha_namea.."tp==0 or tp==1 or tp==2 obtain gold"..money_num)
		elseif tp==3 or tp==4 or tp==5 then 
			local dif_exp = rongyu_num*20+exp_star - DEXP[lv+1]
			if lv>=15 and lv<=30 then
				exp_num=rongyu_num*10+exp_star
				local a1= math.floor (rongyu_num*10 )
					SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv>=31 and lv<=40 then
				exp_num=rongyu_num*13+exp_star
				local a1= math.floor (rongyu_num*13 )
					SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv>=41 and lv<=50 then
				exp_num=rongyu_num*22+exp_star
				local a1= math.floor (rongyu_num*22 )
					SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv>=51 and lv<=60 then
				exp_num=rongyu_num*44+exp_star
				local a1= math.floor (rongyu_num*44 )
					SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv>=61 and lv<=70 then
				exp_num=rongyu_num*102+exp_star
				local a1= math.floor (rongyu_num*102 )
					SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv>=71 and  lv<=78 then
				exp_num=rongyu_num*270+exp_star
				local a1= math.floor (rongyu_num*270 )
					SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv==79 and dif_exp<=0 then 
				exp_num=rongyu_num*270+exp_star
				local a1= math.floor (rongyu_num*270 )
					SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv==79 and dif_exp>0 then 
				exp_num = dif_exp*0.02 + DEXP[lv+1]
				local a1= math.floor (rongyu_num*270)
					SystemNotice ( role , "Получено опыта "..a1 )
			elseif lv>=80  then
				exp_num=rongyu_num*270*0.02+exp_star
				local a1= math.floor (rongyu_num*270 )
					SystemNotice ( role , "Получено опыта "..a1 )
			end
			SetChaAttrI( role , ATTR_CEXP , exp_num )
			local lg_exp=exp_num-exp_star
			LG( "star_rongyuzhichange_lg" ,cha_namea.."tp==3 or tp==4 or tp==5 obtain experience"..lg_exp)
		elseif tp==6 or tp==7 or tp==8 then 
			if lv>=15 and lv<=40 then
				if rad<=rongyu_num or rongyu_num>=30000 then
					GiveItem ( role , 0 , 3458  , 1 , 4 ) 
					LG( "star_rongyuzhichange_lg" ,cha_namea.."Lv>=15 and Lv<=40 will obtained equipment ID="..3458)
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "Получено опыта "..a1 )
				end
			elseif lv>=41 and lv<=60 then
				if rad<=rongyu_num or rongyu_num>=30000 then
					local rad1=math.random(1,12)
					local Lg_ID=787
					if rad1==1 then
						Lg_ID=787
					elseif rad1==2 then
						Lg_ID=791
					elseif rad1==3 then
						Lg_ID=794
					elseif rad1==4 then
						Lg_ID=801
					elseif rad1==5 then
						Lg_ID=805
					elseif rad1==6 then
						Lg_ID=797
					elseif rad1==7 then
						Lg_ID=765
					elseif rad1==8 then
						Lg_ID=768
					elseif rad1==9 then
						Lg_ID=772
					elseif rad1==10 then
						Lg_ID=775
					elseif rad1==11 then
						Lg_ID=779
					elseif rad1==12 then
						Lg_ID=783
					end
					GiveItem ( role , 0 , Lg_ID  , 1 , 4 ) 
					LG( "star_rongyuzhichange_lg" ,cha_namea.."lv>=41 and lv<=60receive apparelID="..Lg_ID)
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "Получено опыта "..a1 )
				end
			elseif lv>=61 then
				if rad<=rongyu_num or rongyu_num>=30000 then
				local rad2=math.random(1,3)
				local rad3=math.random(1,4)
					local Lg_ID=2530
					if job == 8 then 
						if rad2==1 then
							Lg_ID=2530
						elseif rad2==2 then
							Lg_ID=2531
						elseif rad2==3 then
							Lg_ID=2532
						end
					elseif job == 9 then   
						if rad2==1 then
							Lg_ID=2533
						elseif rad2==2 then
							Lg_ID=2534
						elseif rad2==3 then
							Lg_ID=2535
						end
					elseif job == 12 then 
						if rad2==1 then
							Lg_ID=2536
						elseif rad2==2 then
							Lg_ID=2537
						elseif rad2==3 then
							Lg_ID=2538
						end
					elseif job == 16 then 
						if cha_type~=4 then
							if rad2==1 then
								Lg_ID=2539
							elseif rad2==2 then
								Lg_ID=2540
							elseif rad2==3 then
								Lg_ID=2541
							end
						else
							if rad3==1 then
								Lg_ID=2539
							elseif rad3==2 then
								Lg_ID=2540
							elseif rad3==3 then
								Lg_ID=2541
							elseif rad3==4 then
								Lg_ID=2548
							end
						end
					elseif job == 13 then    
						if cha_type~=4 then
							if rad2==1 then
								Lg_ID=2542
							elseif rad2==2 then
								Lg_ID=2543
							elseif rad2==3 then
								Lg_ID=2544
							end
						else
							if rad3==1 then
								Lg_ID=2542
							elseif rad3==2 then
								Lg_ID=2543
							elseif rad3==3 then
								Lg_ID=2544
							elseif rad3==4 then
								Lg_ID=2548
							end
						end
					elseif job == 14 then    
						if cha_type~=4 then
							if rad2==1 then
								Lg_ID=2545
							elseif rad2==2 then
								Lg_ID=2546
							elseif rad2==3 then
								Lg_ID=2547
							end
						else
							if rad3==1 then
								Lg_ID=2545
							elseif rad3==2 then
								Lg_ID=2546
							elseif rad3==3 then
								Lg_ID=2547
							elseif rad3==4 then
								Lg_ID=2548
							end
						end
					end
					GiveItem ( role , 0 , Lg_ID  , 1 , 4 ) 
					LG( "star_rongyuzhichange_lg" ,cha_namea.."Lv>61 obtain equipment ID="..Lg_ID)
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "Получено опыта "..a1 )
				end
			end			
		end
	SetItemAttr ( Item ,ITEMATTR_VAL_STR , 0 )
	end
end

function Elf_Attr_cs ( role , Item_JLone , Item_JLother )
	local Item_JLone_num={}
	local Item_JLother_num={}
	Item_JLone_num[1] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STR )	
	Item_JLone_num[2] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_AGI )	
	Item_JLone_num[3] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_DEX )	
	Item_JLone_num[4] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_CON )	
	Item_JLone_num[5] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STA )	
	Item_JLone_num[6] = GetItemAttr( Item_JLone ,ITEMATTR_URE )			
	Item_JLone_num[7] = GetItemAttr( Item_JLone ,ITEMATTR_MAXURE )		 
	Item_JLone_num[8] = Item_JLone_num[1] + Item_JLone_num[2] + Item_JLone_num[3] + Item_JLone_num[4] + Item_JLone_num[5]	
	Item_JLother_num[1] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STR )	
	Item_JLother_num[2] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_AGI )	
	Item_JLother_num[3] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_DEX )	
	Item_JLother_num[4] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_CON )	
	Item_JLother_num[5] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STA )	
	Item_JLother_num[6] = GetItemAttr( Item_JLother ,ITEMATTR_URE )			
	Item_JLother_num[7] = GetItemAttr( Item_JLother ,ITEMATTR_MAXURE )		 
	Item_JLother_num[8] = Item_JLother_num[1] + Item_JLother_num[2] + Item_JLother_num[3] + Item_JLother_num[4] + Item_JLother_num[5]	
	local m=0
	local n = 0
	local num_jlone=26
	local num_jlother=26
	local max_JLone_temp=Item_JLone_num[1]
	local max_JLother_temp=Item_JLother_num[1]
	for m=1,4,1 do
		if Item_JLone_num[m+1] >max_JLone_temp then
			max_JLone_temp=Item_JLone_num[m+1]
			num_jlone=m+26
		end
	end
	for n=1,4,1 do
		if Item_JLother_num[n+1] >max_JLother_temp then
			max_JLother_temp=Item_JLother_num[n+1]
			num_jlother=n+26
		end
	end
	max_JLone_temp = max_JLone_temp - 4
	max_JLother_temp = max_JLother_temp - 4
	local new_JLone_MAXENERGY = 240 * (Item_JLone_num[8] + 1 - 4 )
	if new_JLone_MAXENERGY > 6480 then
		new_JLone_MAXENERGY = 6480
	end
	local new_JLone_MAXURE = 5000 + 1000*(Item_JLone_num[8] - 4 )
	if new_JLone_MAXURE > 32000 then
		new_JLone_MAXURE = 32000
	end
	local new_JLother_MAXENERGY = 240 * (Item_JLother_num[8] + 1 - 4 )
	if new_JLother_MAXENERGY > 6480 then
		new_JLother_MAXENERGY = 6480
	end
	local new_JLother_MAXURE = 5000 + 1000*(Item_JLother_num[8] - 4 )
	if new_JLother_MAXURE > 32000 then
		new_JLother_MAXURE = 32000
	end
	SetItemAttr( Item_JLone, num_jlone , max_JLone_temp )
	SetItemAttr( Item_JLone, ITEMATTR_ENERGY , 240)
	SetItemAttr( Item_JLone, ITEMATTR_MAXENERGY , new_JLone_MAXENERGY )
	SetItemAttr( Item_JLone, ITEMATTR_URE , 5000 )
	SetItemAttr( Item_JLone, ITEMATTR_MAXURE , new_JLone_MAXURE )
	SetItemAttr( Item_JLother, num_jlother , max_JLother_temp )
	SetItemAttr( Item_JLother, ITEMATTR_ENERGY , 240 )
	SetItemAttr( Item_JLother, ITEMATTR_MAXENERGY , new_JLother_MAXENERGY )
	SetItemAttr( Item_JLother, ITEMATTR_URE , 5000 )
	SetItemAttr( Item_JLother, ITEMATTR_MAXURE, new_JLother_MAXURE )
end

----------------------
-- Джекпот (Начало) --
----------------------
function  TigerStart( ... )
	if arg.n ~= 4 then
		SystemNotice ( arg[1] , "Неверное значение параметра: "..arg.n )
		return 
	end	
	local num = {}
	local Item_type = {}
	local num_star = 0
	local n  = 0
	local m = 0
	local i = 0
	local q=0
	for n=1,9,1 do 
		local star = math.random ( 1 , 4700 )
		local ret1 = IsItemValid(star)
		if ret1 ~= LUA_TRUE then
			for m=1,300,1 do
				local ret2 = IsItemValid(star+m)
				if ret2 ~=LUA_TRUE then
				else
					num[n] = star+m
				end
			end
		else 
			num [n]=star
		end
	end
	for i=1,9,1 do
		Item_type[i] = GetItemType2( num [i] )
	end
	local NocLock =	KitbagLock(arg[1], 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( arg[1] , "Ваш инвентарь заблокирован ")
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( arg[1] )	
	if Item_CanGet < 5 then
		SystemNotice( arg[1] ,"У вас должно быть не меньше 5 свободных слотов в инвентаре ")
		return 0
	end
	local Money_Have = GetChaAttr ( arg[1]  , ATTR_GD )
	if Money_Have>1000000000 then
		SystemNotice (arg[1], "У вас больше 1 миллиарда золота!? Это опасно.")
		return	
	end
	if arg[2]==1 then
		local j1 = TakeItem(  arg[1], 0,855, 5 )
		if j1==0 then
			SystemNotice ( arg[1] ,"Ошибка при удалении Монеты феи ")
			return
		end
	end
	if arg[3]==1 then
		local j2 = TakeItem(  arg[1], 0,855, 5 )
		if j2==0 then
			SystemNotice ( arg[1] ,"Ошибка при удалении Монеты феи ")
			return
		end		
	end
	if arg[4]==1 then
		local j3 = TakeItem(  arg[1], 0,855, 5 )
		if j3==0 then
			SystemNotice ( arg[1] ,"Ошибка при удалении Монеты феи ")
			return
		end
	end
	local lhj_te_flg=0
	local lhj_yi_flg=0
	local lhj_hei_flg=0
	local now_day= os.date("%d")		
	local now_hour= os.date("%H")		
	local now_miniute= os.date("%M")	
	local now_scend=  os.date("%S")		
	now_day= tonumber(now_day)			
	now_hour= tonumber(now_hour)		
	now_miniute= tonumber(now_miniute)	 	
	now_scend= tonumber(now_scend)		
	local CheckTimeNum = now_day*86400 + now_hour*3600+now_miniute*60+now_scend
	if CheckTimeNum>NOWTIME_TE+86400 then
		NOWTIME_TE=CheckTimeNum
		lhj_te_flg=1
	end
	if CheckTimeNum>NOWTIME_YI+3600 then
		NOWTIME_YI=CheckTimeNum
		lhj_yi_flg=1
	end
	if CheckTimeNum>NOWTIME_HEI+518400 then
		NOWTIME_HEI=CheckTimeNum
		lhj_hei_flg=1
	end
	local num_s=0
	for num_s=1,3,1 do 
		if Item_type[num_s]>=1 and Item_type[num_s]<=11 then
			if Item_type[num_s+3] >=1 and Item_type[num_s+3]<=11 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=1 and Item_type[num_s+6]<=11 then
				num[num_s+6] = num[num_s]
			end
		end
		if Item_type[num_s]>=22 and Item_type[num_s]<=29 then
			if Item_type[num_s+3] >=22 and Item_type[num_s+3]<=29 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=22 and Item_type[num_s+6]<=29 then
				num[num_s+6] = num[num_s]
			end
		end
		if Item_type[num_s]>=36 and Item_type[num_s]<=66 then
			if Item_type[num_s+3] >=36 and Item_type[num_s+3]<=66 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=36 and Item_type[num_s+6]<=66 then
				num[num_s+6] = num[num_s]
			end
		end
	end
	local j=0
	for j=1,9,1 do
		Item_type[j] = GetItemType2( num [j] )
		if num[j]==822 or num[j]==823 or num[j]==825 or num[j]==826 or num[j]==827 or num[j]==1116 or num[j]==1117 or num[j]==1118 or num[j]==46  or num[j]==1124  or num[j]==1125  or num[j]==1126  or num[j]==1127 or  num[j]==1057  or  num[j]==1060   or  num[j]==1063    or  num[j]==1066   or  num[j]==1034  or  num[j]==586  or  num[j]==762  or  num[j]==3061  or  num[j]==410   or  num[j]==2885  then
			num[j]=3360 
		end
		if num[j]>=845 and num[j]<=847 then
			local rad_s= math.random ( 1 , 40 )
			if rad_s>=3 or lhj_hei_flg==0 then
				num[j]=3360 
			end
		end
		
		if Item_type[j]~=1 and Item_type[j]~=2 and Item_type[j] ~=3 and Item_type[j] ~=4 and Item_type[j] ~=7 and Item_type[j] ~=9 and Item_type[j] ~=11 and Item_type[j] ~=22 and Item_type[j] ~=23 and Item_type[j] ~=24 and Item_type[j] ~=25 and Item_type[j] ~=26 and Item_type[j] ~=27 and Item_type[j] ~=29 and Item_type[j] ~=36 and Item_type[j] ~=47 and Item_type[j] ~=50 and Item_type[j] ~=57 and Item_type[j] ~=58 and Item_type[j] ~=60 and Item_type[j] ~=65 and Item_type[j] ~=66 then
			local eleven = math.random ( 1 , 1000 )	
			local new_id = math.random ( 3850 , 3875 )
			if eleven <= 328 then
				num[j]= new_id 
			elseif eleven >=329 and  eleven<=999 then
				num[j]=3360 
			else
				num[j]=194 
			end
		end
	end
	local rad1= 0
	local rad2= 0
	local rad3= 0
	local rad4= 0
	local rad5= 0
	local rad6= 0
	local rad7= 0
	local rad8= 0
	local rad9= 0
	local rad10= 0
	local rad11= 0
	local p=0
	local p=0
	for p=1,9,1 do
		if num[p]>=831 and num[p]<=842 then
			rad1=1
		end
		if num[p]>=2300 and num[p]<=2344 then
			rad2=1
		end
		if num[p]>=2367 and num[p]<=2407 then
			rad3=1
		end
		if num[p]>=2549 and num[p]<=2553 then
			rad4=1
		end
		if num[p]>=2588 and num[p]<=3061 then
			rad5=1
		end
		if num[p]>=3936 and num[p]<=3942 then
			rad6=1
		end
		if num[p]>=4311 and num[p]<=4313 then
			rad7=1
		end
		if num[p]>=28 and num[p]<=31 then
			rad8=1
		end
		if num[p]>=194 and num[p]<=227 then
			rad9=1
		end
		if num[p]>=276 and num[p]<=280 then
			rad10=1
		end
		local h=0
		for h=1,252,1 do
			if num[p]==LHJ_ID[h] then
				rad11=1
			end
		end
		if rad1==1 or  rad2==1 or rad3==1 or  rad4==1 or rad5==1 or rad6==1 or  rad7==1  or  rad8==1  or  rad9==1 or  rad10==1  or rad11==1 or  num[p]==457 or num[p]==458 or num[p]==459 or num[p]==464 or num[p]==640 or num[p]==816  or num[p]==822 or num[p]==823 or num[p]==3115 or num[p]==18 or num[p]==19 or num[p]==43 or num[p]==109 or num[p]==111 or num[p]==113 or num[p]==115 or num[p]==117 or num[p]==119  or num[p]==127 or num[p]==150 or num[p]==308 or num[p]==309 or num[p]==348 or num[p]==349 then
			local new_id1 = math.random ( 3850 , 3875 )
			num[p]= new_id1 
		end
	end
	local reset_rad=math.random ( 1 , 100 )
	local kapian_rad=math.random ( 3850 , 3875 )
	if reset_rad>=47 and num[1]==num[3] and num[1]==num[5] and num[1]==num[7]  and num[1]==num[9]  then
		num[9]=kapian_rad
	end
	if reset_rad>=24 and num[2]==num[4] and num[2]==num[5] and num[2]==num[6]  and num[2]==num[8]  then
		num[8]=kapian_rad
	end
	if  num[1]==num[2] and num[1]==num[3] and num[1]==num[4]  and num[1]==num[6] and num[1]==num[7] and num[1]==num[8]  and num[1]==num[9] then
		if lhj_yi_flg==0 or reset_rad>=10 then
			num[9]=kapian_rad
		end
	end
	if  num[1]==num[2] and num[1]==num[3] and num[1]==num[4] and num[1]==num[5] and num[1]==num[6] and num[1]==num[7] and num[1]==num[8]  and num[1]==num[9] then
		if lhj_te_flg==0 or reset_rad>=2 then
			num[9]=kapian_rad
		end
	end
	return num[1] , num[2] , num[3] , num[4] , num[5] , num[6] , num[7] , num[8] , num[9] 
end

function TigerStop(...)
	if arg.n ~= 13 then
		SystemNotice ( arg[1] , "Неверное значение параметра: "..arg.n )
		return 
	end	
	local flag=0
	if arg[11]==1 and arg[12]==1 and arg[13]==1 then
		flag=1
	end
	local flag_myp=1
	if arg[2]==0 or arg[3]==0 or arg[4]==0 or arg[5]==0 or arg[6]==0 or arg[7]==0 or arg[8]==0 or  arg[9]==0 or arg[10]==0 or arg[2]==nil or arg[3]==nil or arg[4]==nil or arg[5]==nil or arg[6]==nil or arg[7]==nil or arg[8]==nil or  arg[9]==0 or arg[10]==nil then
		 flag_myp=0
		return 	
	end
	local new_id = math.random ( 3850 , 3875 )
	if arg[2] == arg[3] and arg[3] == arg[4] and arg[4] == arg[5]  and arg[5] == arg[6] and arg[6] == arg[7] and arg[7] == arg[8] and arg[8] == arg[9] and arg[9] == arg[10]  and arg[2]~=new_id and flag==1 and flag_myp==1 then 
		local cha_name4 = GetChaDefaultName ( arg[1] ) 
		local item_rad = math.random ( 1 , 9 )
		if item_rad==1 then
			item_rad_id=862
		elseif item_rad==2 then
			item_rad_id=863
		elseif item_rad>=3 or  item_rad<=8 then
			item_rad_id=271
		else
			item_rad_id=1012
		end
		local itemname12 = GetItemName ( item_rad_id ) 
		local message4 = cha_name4.." выбивает 'Огромные богатства' и выигрывает 10000000 золота, 1 Расписку на Гран-при и 1 "..itemname12
		Notice ( message4 )
		SynTigerString ( arg[1] ," поздравляем, вы выбили 'Огромные богатства' и получили 10000000 золота и "..itemname12)
		AddMoney ( arg[1] , 0 , 10000000 )
		GiveItem ( arg[1] , 0 ,2665  , 1 , 4  )
		GiveItem ( arg[1] , 0 , item_rad_id  , 1 , 4  )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s12=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s12  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		LG( "LHJ_wanshou_lg" ,cha_name4,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
		
	end
	if arg[2] == arg[3] and arg[3] == arg[4] and arg[4] == arg[5] and arg[5] == arg[7] and arg[7] == arg[8] and arg[8] == arg[9] and arg[9] == arg[10]  and arg[2]~=new_id and flag==1  and flag_myp==1  then 
		
		local item_rad = math.random ( 1 , 8 )
		if item_rad==1 then
			item_rad_id=878
		elseif item_rad==2 then
			item_rad_id=879
		elseif item_rad==3 then
			item_rad_id=880
		elseif item_rad==4 then
			item_rad_id=881
		elseif item_rad==5 then
			item_rad_id=882
		elseif item_rad==6 then
			item_rad_id=883
		elseif item_rad==7 then
			item_rad_id=884
		else
			item_rad_id=887
		end
		local itemname11 = GetItemName ( item_rad_id ) 
		local cha_name3 = GetChaDefaultName ( arg[1] ) 
		local message3 = cha_name3.." выбивает 'Всеобщий праздник', выигрывает 3000000 золота и "..itemname11
		Notice ( message3 )
		SynTigerString ( arg[1] ," поздравляем, Вы выбили 'Всеобщий праздник', выигрываете 3000000 золота и "..itemname11)
		AddMoney ( arg[1] , 0 , 3000000 )
		GiveItem ( arg[1] , 0 ,2666  , 1 , 4  )
		
		GiveItem ( arg[1] , 0 , item_rad_id  , 1 , 4  )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s11=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s11  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		LG( "LHJ_putian_lg" ,cha_name3,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
		
	end
	if arg[3] == arg[5] and arg[5] == arg[6] and arg[6] == arg[7] and arg[7] == arg[9] and arg[3]~=new_id and flag==1  and flag_myp==1 then 
		local itemname2 = GetItemName ( arg[3] ) 
		local cha_name2 = GetChaDefaultName ( arg[1] ) 
		local message2 = cha_name2.." выбивает 'Великолепную десятку', выигрывает 500000 золота и 99 Подарков "
		Notice ( message2 )
		SynTigerString( arg[1] ," поздравляем, Вы выбили 'Великолепную десятку', выиграли 500000 золот и 99 Подарков ")
		AddMoney ( arg[1] , 0 , 500000 )
		GiveItem ( arg[1] , 0 ,2666  , 1 , 4  )
		GiveItem ( arg[1] , 0 , 1095  , 1 , 4  )
		if arg[3] ~= 3360 then 
			if arg[3] == 845 or arg[3] == 846 or arg[3] == 847 then
				local s10=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , s10  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , 23  )
			end
		end
		LG( "LHJ_shiquan_lg" ,cha_name2,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[4] and arg[4] == arg[6] and arg[6] == arg[8] and arg[8] == arg[10] and arg[2]~=new_id and flag==1 and flag_myp==1  then 
		
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		local message1 = cha_name1.." выбивает 'Удачную пятерку' и выигрывает 300000 золота, 1 Расписку на Второй приз "
		Notice ( message1 )
		SynTigerString  ( arg[1] ,"Поздравляем, Вы выбили 'Удачную пятерку' и выигрывает 300000 золота, 1 Расписку на Второй приз ")
		AddMoney ( arg[1] , 0 , 300000 )
		GiveItem ( arg[1] , 0 ,2667  , 1 , 4  )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s9=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s9  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		LG( "LHJ_wufu_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[4] and arg[4] == arg[8] and arg[8] == arg[10] and arg[2]~=new_id and flag==1 and flag_myp==1 then 
		SystemNotice ( arg[1] ,"Поздравляем, Вы выбиваете '4 сезона', выигрывает 50000 золота и комплект снаряжения с Черного рынка ")
		SynTigerString  ( arg[1] ,"Поздравляем, Вы выбили '4 сезона' и выигрываете 50000 золота, комплект снаряжения с Черного рынка ")
		AddMoney ( arg[1] , 0 , 50000 )
		GiveItem ( arg[1] , 0 ,2668  , 1 , 4  )
		GiveItem ( arg[1] , 0 , 3323  , 1 , 4  )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s8=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s8  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_siji_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[3] == arg[5] and arg[5] == arg[7] and arg[7] == arg[9] and arg[3]~=new_id and flag==1 and flag_myp==1 then 
		SystemNotice ( arg[1] ,"Поздравляем, Вы выбиваете 'Зести', выигрываете 30000 золота и комплект снаряжения с Черного рынка ")
		SynTigerString  ( arg[1] ,"Поздравляем, Вы выбиваете 'Зести', выигрываете 30000 золота и комплект снаряжения с Черного рынка ")
		AddMoney ( arg[1] , 0 , 30000 )
		GiveItem ( arg[1] , 0 ,2668  , 1 , 4  )
		local rad_heishi=math.random ( 1 , 2 )
		if rad_heishi==1 then
			GiveItem ( arg[1] , 0 , 3326  , 1 , 4  )
		else
			GiveItem ( arg[1] , 0 , 3328  , 1 , 4  )			
		end
		if arg[3] ~= 3360 then 
			if arg[3] == 845 or arg[3] == 846 or arg[3] == 847 then
				local s7=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , s7  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_xiaokong_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[4] == arg[6] and arg[6] == arg[8] and arg[4]~=new_id and flag==1 and flag_myp==1 then 
		SystemNotice ( arg[1] ,"Поздравляем, Вы выбиваете 'Золотую диагональ' и выигрываете 10000 золота ")
		SynTigerString ( arg[1] ,"Поздравляем, Вы выбиваете 'Золотую диагональ' и выигрываете 10000 золота ")
		AddMoney ( arg[1] , 0 , 10000 )
		GiveItem ( arg[1] , 0 , 3096  , 1 , 4  )
		if arg[4] ~= 3360 then 
			if arg[4] == 845 or arg[4] == 846 or arg[4] == 847 then
				local s5=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , s5  )
			else 
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[6] and arg[6] == arg[10] and arg[2]~=new_id and flag==1 and flag_myp==1 then 
		SystemNotice ( arg[1] ,"Поздравляем, Вы выбиваете 'Белую диагональ' и выигрываете 10000 золота ")
		SynTigerString  ( arg[1] ,"Поздравляем, Вы выбиваете 'Белую диагональ' и выигрываете 10000 золота ")
		AddMoney ( arg[1] , 0 , 10000 )
		GiveItem ( arg[1] , 0 , 3094  , 1 , 4  )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s6=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s6  )
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[5] == arg[6] and arg[6] == arg[7] and arg[5]~=new_id and flag==1 and flag_myp==1 then 
		SystemNotice ( arg[1] ,"Поздравляем, Вы выбиваете 'Очко' и выигрываете 8000 золота ")
		SynTigerString ( arg[1] ,"Поздравляем, Вы выбиваете 'Очко' и выигрываете 8000 золота ")
		AddMoney ( arg[1] , 0 , 8000 )
		if arg[5] ~= 3360 then 
			if arg[5] == 845 or arg[5] == 846 or arg[5] == 847 then
				local s4=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[5]  , 1 , s4  )
			else 
				GiveItem ( arg[1] , 0 , arg[5]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[5] and arg[5] == arg[8] and arg[11]==1 and arg[2]~=new_id and flag_myp==1 then 
		SystemNotice ( arg[1] ,"Поздравляем, вы выбиваете 'Безопасное путешествие' и выигрываете 2000 золота ")
		SynTigerString( arg[1] ,"Поздравляем, вы выбиваете 'Безопасное путешествие' и выигрываете 2000 золота ")
		AddMoney ( arg[1] , 0 , 2000 )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s1=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 ,arg[2]  , 1 , s1  )
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[3] == arg[6] and arg[6] == arg[9] and arg[12]==1 and arg[3]~=new_id and flag_myp==1 then
		SystemNotice ( arg[1] ,"Поздравляем, вы выбиваете 'Безопасное путешествие' и выигрываете 2000 золота ")
		SynTigerString( arg[1] ,"Поздравляем, вы выбиваете 'Безопасное путешествие' и выигрываете 2000 золота ")
		AddMoney ( arg[1] , 0 , 2000 )
		if arg[3] ~= 3360 then 
			if arg[3] == 845 or arg[3] == 846 or arg[3] == 847 then
				local s2=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , s2  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , 23  )
			end
		end	
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[4] == arg[7] and arg[7] == arg[10] and arg[13]==1 and arg[4]~=new_id and flag_myp==1 then
		SystemNotice ( arg[1] ,"Поздравляем, вы выбиваете 'Безопасное путешествие' и выигрываете 2000 золота ")
		SynTigerString( arg[1] ,"Поздравляем, вы выбиваете 'Безопасное путешествие' и выигрываете 2000 золота ")
		AddMoney ( arg[1] , 0 , 2000 )
		if arg[4] ~= 3360 then 
			if arg[4] == 845 or arg[4] == 846 or arg[4] == 847 then
				local s3=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , s3  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	local star = 0
	local eleven = 0
	for star=2,8,3 do
		if arg[star] ==194 and arg[11] == 1 and flag_myp==1 then
			eleven =eleven +1
		end
	end
	for star = 3, 9, 3 do
		if arg[star] == 194 and arg[12] == 1 and flag_myp == 1 then
			eleven = eleven + 1
		end
	end
	for star=4,10,3 do
		if arg[star] ==194 and arg[13] == 1 and flag_myp==1 then
			eleven =eleven +1
		end
	end
	if eleven==0 then
		SynTigerString( arg[1] ,"Вы должны упорно работать.")
	else 
		SystemNotice ( arg[1] ,"В текущей игре вы выиграли "..eleven.." золота и получили "..eleven.." купюр на миллион долларов ")
		SynTigerString( arg[1] ,"Поздравляем, вы выиграли "..eleven.." купюр на миллион долларов ")
		GiveItem ( arg[1] , 0 , 854  , eleven , 4  )
	end
end
---------------------
-- Джекпот (Конец) --
---------------------

function Change_shanyao (character, npc)
	local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "Ваш инвентарь заблокирован ")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "У вас нет Медали отваги ")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 200 then
			SystemNotice( character , "У вас недостаточно очков чести ")
			return 0
		end
	local HonorPoint_X=HonorPoint-200
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		if Item_CanGet <= 0 then
			SystemNotice(character ,"У вас недостаточно свободных слотов в инвентаре ")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2614  , 1 , 4 ) 
end

function Change_rongyao( character, npc )
	local NocLock =	KitbagLock( character, 0 )

	if NocLock == LUA_FALSE then
		SystemNotice( character, "Ваш инвентарь заблокирован " )
		return 0
	end

	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character, 3849 )

	if HonorBook_Num < 1 then
		SystemNotice( character, "У вас нет Медали отваги " )
		return 0
	end

	local Book2 = GetChaItem2( character, 2, 3849 )
	local HonorPoint = GetItemAttr( Book2, ITEMATTR_VAL_STR )

	if HonorPoint < 2000 then
		SystemNotice( character, "У вас недостаточно очков чести " )
		return 0
	end

	local HonorPoint_X = HonorPoint - 2000
	SetItemAttr( Book2, ITEMATTR_VAL_STR,HonorPoint_X )
	local Item_CanGet = GetChaFreeBagGridNum( character )

	if Item_CanGet <= 0 then
		SystemNotice( character, "У вас недостаточно свободных слотов в инвентаре " )
		UseItemFailed( character )
		return
	end

	GiveItem( character, 0, 2615, 1, 4 )
end

function Change_huihuang (character, npc)
	local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "Ваш инвентарь заблокирован ")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "У вас нет Медали отваги ")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 20000 then
			SystemNotice( character , "У вас недостаточно очков чести ")
			return 0
		end
	local HonorPoint_X=HonorPoint-20000
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		
		if Item_CanGet <= 0 then
			SystemNotice(character ,"У вас недостаточно свободных слотов в инвентаре ")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2616  , 1 , 4 )
end

function Eleven_Log_0( role ) 
	local cha_name = GetChaDefaultName ( role ) 
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	LG( "Eleven_Log_0" ,cha_name,lv,job)
end

function Eleven_Log( role,typ ) 
	local cha_name = GetChaDefaultName ( role ) 
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	LG( "Eleven_Log" ,cha_name,lv,job,typ)
end

--------------------------------------------------------------------
------------------------ АнтиБот (Не нужен) ------------------------
--------------------------------------------------------------------

function WGPrizeBegin( role , rightCount)
	local rightCountTemp = rightCount
	if rightCountTemp > 6 then
		rightCountTemp = 6
	end
	local isPrizeRandom = math.random(rightCountTemp,10)
	local retRandom = math.random ( 1 , 100 )
	local ret  = 1
	if isPrizeRandom > 5  then
		if math.mod ( retRandom , 6 ) == 0 then
			 ret = WGprize_1(role)
		end
		if math.mod ( retRandom , 6 ) == 1  then
			 ret = WGprize_2(role)
		end
		if math.mod ( retRandom , 6 ) == 2  then
			 ret = WGprize_3(role)
		end
		if math.mod ( retRandom , 6 ) == 3  then
			 ret = WGprize_4(role)
		end
		if math.mod ( retRandom , 6 ) == 4  then
			 ret = WGprize_5(role)
		end
		if math.mod ( retRandom , 6 ) == 5  then
			 ret = WGprize_6(role)
		end		
		if ret ==1 then
			SystemNotice( role , "Return value error")
		end
	else
		SystemNotice( role , "Правильно! Вы не выиграли некакого приза " )
	end
end

function WGprize_1( role ) 
	local expNow = GetChaAttr( role , ATTR_CEXP )
	local lvNow = GetChaAttr( role , ATTR_LV)
	SystemNotice( role , "Правильно! Вы получили " .. lvNow*10 .. " очков опыта ")
	SetChaAttrI(  role , ATTR_CEXP ,expNow+lvNow*10  )
	RefreshCha(role)
	return 0
end

function WGprize_2( role ) 
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	SystemNotice( role , "Правильно! Ваше здоровье восстановлено ")
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_3(role) 
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	SystemNotice( role , " Правильный ответ! Вам восстановили Вам максимальное кол-во МН ")
	SetChaAttrI( role , ATTR_SP, SPMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_4(role) 
	local lvNow = GetChaAttr( role , ATTR_LV)
	SystemNotice( role , "Ответ правильный и Вы получили  " .. lvNow .. " кексов ")
	GiveItem( role , 0 , 1849  , lvNow , 4 )
	return 0
end

function WGprize_5(role) 
	SystemNotice( role , "Правильный ответ даст 1 Обратный Билет ")
	GiveItem( role , 0 , 3141  , 1 , 4 )
	return 0
end

function WGprize_6(role) 
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	SystemNotice( role , "Правильный ответ будет восстанавливит Вам здоровье и ману ")
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	SetChaAttrI( role , ATTR_SP ,SPMaxNow  )
	RefreshCha(role)
	return 0
end

	GetExp		= {}
	GetExp[1]	= 0
	GetExp[2]	= 5
	GetExp[3]	= 15
	GetExp[4]	= 35
	GetExp[5]	= 101
	GetExp[6]	= 250
	GetExp[7]	= 500
	GetExp[8]	= 1000
	GetExp[9]	= 1974
	GetExp[10]	= 3208
	GetExp[11]	= 4986
	GetExp[12]	= 7468
	GetExp[13]	= 10844
	GetExp[14]	= 15338
	GetExp[15]	= 21210
	GetExp[16]	= 28766
	GetExp[17]	= 38356
	GetExp[18]	= 50382
	GetExp[19]	= 65306
	GetExp[20]	= 83656
	GetExp[21]	= 106032
	GetExp[22]	= 133112
	GetExp[23]	= 165668
	GetExp[24]	= 204564
	GetExp[25]	= 250780
	GetExp[26]	= 305412
	GetExp[27]	= 369692
	GetExp[28]	= 444998
	GetExp[29]	= 532870
	GetExp[30]	= 635026
	GetExp[31]	= 753378
	GetExp[32]	= 890062
	GetExp[33]	= 1047438
	GetExp[34]	= 1228138
	GetExp[35]	= 1435074
	GetExp[36]	= 1671470
	GetExp[37]	= 1940892
	GetExp[38]	= 2247288
	GetExp[39]	= 2595010
	GetExp[40]	= 2988860
	GetExp[41]	= 3434132
	GetExp[42]	= 3936658
	GetExp[43]	= 4502856
	GetExp[44]	= 5139778
	GetExp[45]	= 5855180
	GetExp[46]	= 6657576
	GetExp[47]	= 7556310
	GetExp[48]	= 8561630
	GetExp[49]	= 9684764
	GetExp[50]	= 10938016
	GetExp[51]	= 12334856
	GetExp[52]	= 13890020
	GetExp[53]	= 15619622
	GetExp[54]	= 17541282
	GetExp[55]	= 19674240
	GetExp[56]	= 22039516
	GetExp[57]	= 24660044
	GetExp[58]	= 27560852
	GetExp[59]	= 30769230
	GetExp[60]	= 37746418
	GetExp[61]	= 45876427
	GetExp[62]	= 59571153
	GetExp[63]	= 75703638
	GetExp[64]	= 94615279
	GetExp[65]	= 116688304
	GetExp[66]	= 155291059
	GetExp[67]	= 186418013
	GetExp[68]	= 238159614
	GetExp[69]	= 298622278
	GetExp[70]	= 368975850
	GetExp[71]	= 450525549
	GetExp[72]	= 568409779
	GetExp[73]	= 679324744
	GetExp[74]	= 806544569
	GetExp[75]	= 952091724
	GetExp[76]	= 1188099236
	GetExp[77]	= 1480429211
	GetExp[78]	= 1776125584
	GetExp[79]	= 2091634902
	GetExp[80]	= 2425349810
	GetExp[81]	= 2440895086
	GetExp[82]	= 2458896515
	GetExp[83]	= 2479742169
	GetExp[84]	= 2503881436
	GetExp[85]	= 2531834707
	GetExp[86]	= 2564204594
	GetExp[87]	= 2601688923
	GetExp[88]	= 2645095775
	GetExp[89]	= 2695360909
	GetExp[90]	= 2753567934
	GetExp[91]	= 2820971668
	GetExp[92]	= 2899025191
	GetExp[93]	= 2989411170
	GetExp[94]	= 3094078133
	GetExp[95]	= 3215282476
	GetExp[96]	= 3355637105
	GetExp[97]	= 3518167765
	GetExp[98]	= 3706378269
	GetExp[99]	= 3924326032
	GetExp[100]	= 4176709541

function AddExp_1 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_1 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_1 = exp_up
	elseif lv_role > 20 and lv_role <= 30 then
		exp_1 = math.floor(exp_up * 0.8)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_1 = math.floor(exp_up * 0.2)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_1 = math.floor(exp_up * 0.2)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_1 = math.floor(exp_up * 0.1)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_1 = math.floor(exp_up * 0.05)
	else
		exp_1 = math.floor(exp_up * 0.03)
	end
	AddExp ( role, npc, exp_1, exp_1)
	return LUA_TRUE
end

function AddExp_2 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_2 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_2 = exp_up
	elseif lv_role > 20 and lv_role <= 30 then
		exp_2 = math.floor(exp_up * 0.9)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_2 = math.floor(exp_up * 0.3)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_2 = math.floor(exp_up * 0.22)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_2 = math.floor(exp_up * 0.11)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_2 = math.floor(exp_up * 0.055)
	else
		exp_2 = math.floor(exp_up * 0.033)
	end
	AddExp ( role, npc, exp_2, exp_2)
	return LUA_TRUE
end

function AddExp_3 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_3 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_3 = math.floor(exp_up * 1.2)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_3 = math.floor(exp_up * 1)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_3 = math.floor(exp_up * 0.5)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_3 = math.floor(exp_up * 0.24)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_3 = math.floor(exp_up * 0.078)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_3 = math.floor(exp_up * 0.0083)
	else
		exp_3 = math.floor(exp_up * 0.0045)
	end
	AddExp ( role, npc, exp_3, exp_3)
end

function AddExp_4 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_4 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_4 = math.floor(exp_up * 1.4)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_4 = math.floor(exp_up * 1)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_4 = math.floor(exp_up * 0.8)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_4 = math.floor(exp_up * 0.4)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_4 = math.floor(exp_up * 0.2)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_4 = math.floor(exp_up * 0.10)
	else
		exp_4 = math.floor(exp_up * 0.06)
	end
	AddExp ( role, npc, exp_4, exp_4)
	return LUA_TRUE
end

function AddExp_5 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_5 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_5 = math.floor(exp_up * 1.6)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_5 = math.floor(exp_up * 1.1)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_5 = math.floor(exp_up * 1)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_5 = math.floor(exp_up * 0.44)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_5 = math.floor(exp_up * 0.22)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_5 = math.floor(exp_up * 0.11)
	else
		exp_5 = math.floor(exp_up * 0.066)
	end
	AddExp ( role, npc, exp_5, exp_5)
	return LUA_TRUE
end

function AddExp_6 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_6 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_6 = math.floor(exp_up * 1.8)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_6 = math.floor(exp_up * 1.2)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_6 = math.floor(exp_up * 1.2)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_6 = math.floor(exp_up * 0.5)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_6 = math.floor(exp_up * 0.25)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_6 = math.floor(exp_up * 0.125)
	else
		exp_6 = math.floor(exp_up * 0.075)
	end
	AddExp ( role, npc, exp_6, exp_6)
	return LUA_TRUE
end

function CheckTeam( role )
	local player = {}
	player[1] = role
	player[2] = GetTeamCha( role, 0 )
	player[3] = GetTeamCha( role, 1 )
	player[4] = GetTeamCha( role, 2 )
	player[5] = GetTeamCha( role, 3 )
	local n1 = 0
	local n2 = 0
	local n3 = 0
	for j = 0, 5, 1 do
		if ValidCha( player[j] )== 1 then
			local lv_p = GetChaAttr ( player[j], ATTR_LV )
			if lv_p >= 20 and lv_p <= 30 then
				n1 = n1 + 1
			elseif lv_p > 30 and lv_p <= 40 then
				n2 = n2 + 1
			elseif lv_p > 40 then
				n3 = n3 + 1
			end
		end
	end
	if n1 >= 1 and n2 >= 1 and n3>= 1 then
		return LUA_TRUE
	end
end

function CheckTime( role )
	local now_week = os.date( "%w" )
	local now_hour = os.date( "%H" )
	now_week = tonumber( now_week )
	now_hour = tonumber( now_hour )
	if now_week == 6 then
		if now_hour >= 9 and now_hour < 12 then
			return LUA_TRUE
		elseif now_hour >= 21 then
			return LUA_TRUE
		end
	end
end

--------------------------------------------------------------------
------------------------ АнтиБот (Не нужен) ------------------------
--------------------------------------------------------------------

function WGPrizeBegin( role, rightCount )
	local rightCountTemp = rightCount

	if rightCountTemp > 6 then
		rightCountTemp = 6
	end

	local isPrizeRandom = math.random( rightCountTemp, 10 )
	local retRandom = math.random( 1, 100 )
	local ret = 1

	if isPrizeRandom > 5 then
		if math.mod( retRandom, 6 ) == 0 then
			ret = WGprize_1( role )
		end
		if math.mod( retRandom, 6 ) == 1 then
			ret = WGprize_2( role )
		end
		if math.mod( retRandom, 6 ) == 2 then
			ret = WGprize_3( role )
		end
		if math.mod( retRandom, 6 ) == 3 then
			ret = WGprize_4( role )
		end
		if math.mod( retRandom, 6 ) == 4 then
			ret = WGprize_5( role )
		end
		if math.mod( retRandom, 6 ) == 5 then
			ret = WGprize_6( role )
		end
		if ret == 1 then
			SystemNotice( role, "ошибка " )
		end
	else
		SystemNotice( role, "Правильно! Вы не выиграли никакого приза " )
	end
end

function WGprize_1( role )
	local expNow = GetChaAttr( role, ATTR_CEXP )
	local lvNow = GetChaAttr( role, ATTR_LV )
	SystemNotice( role, "Вы получили ".. ( lvNow*10 ) .." очков опыта " )
	SetChaAttrI( role, ATTR_CEXP, expNow + lvNow * 10 )
	RefreshCha( role )
	return 0
end

function WGprize_2( role )
	local bloodMaxNow = GetChaAttr( role, ATTR_MXHP )
	SystemNotice( role, "Правильно! Ваше здоровье восстановлено " )
	SetChaAttrI( role, ATTR_HP, bloodMaxNow )
	RefreshCha( role )
	return 0
end

function WGprize_3( role )
	local SPMaxNow = GetChaAttr( role, ATTR_MXSP )
	SystemNotice( role, "Правильно! Ваша мана восстановлена " )
	SetChaAttrI( role, ATTR_SP, SPMaxNow )
	RefreshCha( role )
	return 0
end

function WGprize_4( role )
	local lvNow = GetChaAttr( role, ATTR_LV )
	SystemNotice( role, "Правильно! Вы получили "..lvNow.." кексов " )
	GiveItem( role, 0, 1849, lvNow, 4 )
	return 0
end

function WGprize_5( role )
	SystemNotice( role, "Правильно! Вам дали 1 Обратный Билет " )
	GiveItem( role, 0, 3141, 1, 4 )
	return 0
end

function WGprize_6( role )
	local bloodMaxNow = GetChaAttr( role, ATTR_MXHP )
	local SPMaxNow = GetChaAttr( role, ATTR_MXSP )
	SystemNotice( role, "Правильно! Ваши здоровье и мана восстановелны " )
	SetChaAttrI( role, ATTR_HP, bloodMaxNow )
	SetChaAttrI( role, ATTR_SP, SPMaxNow )
	RefreshCha( role )
	return 0
end

function Can_Exchange( sSrcItem, sSrcNum, sTagItem, sTagNum )
	local Data
	for Data in ChangeItemList do
		if ChangeItemList[Data][1] == sSrcItem and ChangeItemList[Data][2] == sSrcNum and ChangeItemList[Data][3] == sTagItem and ChangeItemList[Data][4] == sTagNum then
			return LUA_TRUE
		end
	end
	return LUA_FALSE
end

--------------------------------------------------------------------
----------------------------- Свадьба ------------------------------
--------------------------------------------------------------------

---------------------------------------
-- Выдача билета на посещение Церкви --
---------------------------------------
function ChangeItem( character, npc )
	local Item_CanGet = GetChaFreeBagGridNum( character )

	if Item_CanGet < 1 then
		SystemNotice( character, "Убедитесь, что у вас есть свободное место в инвентаре " )
		return 0
	end

	local am1 = CheckBagItem( character, 3066 )

	if am1 < 1 then
		SystemNotice( role, "У вас не хватает свободного места в инвентаре " )
		return 0
	end

	local Money_Need = 50000
	local Money_Have = GetChaAttr( character, ATTR_GD )

	if Money_Need > Money_Have then
		SystemNotice( character, "У вас не хватает золота " )
		return 0
	else
		TakeMoney( character, nil, Money_Need )
	end

	local r1 = 0
	local r2 = 0

	r1,r2 = MakeItem( character, 3666, 10, 4 )

	local Item_el = GetChaItem( character, 2, r2 )
	local item_old = GetChaItem2( character, 2, 3066 )
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA )
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR )
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON )
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX )

	SetItemAttr( Item_el, ITEMATTR_VAL_STA, old_month )
	SetItemAttr( Item_el, ITEMATTR_VAL_STR, old_day )
	SetItemAttr( Item_el, ITEMATTR_VAL_CON, old_hour )
	SetItemAttr( Item_el, ITEMATTR_VAL_DEX, old_miniute )

	local old_month2 = GetItemAttr( Item_el, ITEMATTR_VAL_STA )
	local old_day2 = GetItemAttr( Item_el, ITEMATTR_VAL_STR )
	local old_hour2 = GetItemAttr( Item_el, ITEMATTR_VAL_CON )
	local old_miniute2 = GetItemAttr( Item_el, ITEMATTR_VAL_DEX )

	SynChaKitbag( character, 13 )
end

------------------------------------------------------------------
-- Возвращает количество персонажей, которые в отряде с игроком --
------------------------------------------------------------------
function PartyNum( role )
	local player = {}
	player[1] = role
	player[2] = GetTeamCha( role, 0 )
	player[3] = GetTeamCha( role, 1 )
	player[4] = GetTeamCha( role, 2 )
	player[5] = GetTeamCha( role, 3 )
	local i = 0
	for j = 0, 5, 1 do
		if ValidCha( player[j] )== 1 then
			i = i + 1
		end
	end
	return i
end

--------------------------------
-- Проверяет свадебные наряды --
--------------------------------
function WeddingDress( role, fata )
	local race = GetChaTypeID( role )
	local head = GetEquipItemP( role, 0 )
	local body = GetEquipItemP( role, 2 )
	local glove = GetEquipItemP( role, 3 )
	local shoes = GetEquipItemP( role, 4 )
	local body_id  = GetItemID( body )
	local glove_id = GetItemID( glove )
	local shoes_id = GetItemID( shoes )
	local head_id = GetItemID( head )
	if race == 1 then
		if body_id ~= 5221 then
			return 0
		end
		if glove_id ~= 5222 then
			return 0
		end
		if shoes_id ~= 5223 then
			return 0
		end
	elseif race == 2 then
		if body_id ~= 5238 then
			return 0
		end
		if glove_id ~= 5239 then
			return 0 
		end
		if shoes_id ~= 5240 then
			return 0
		end
	elseif race == 3 then
	if fata == 1 then
		if head_id ~= 5244 then
			return 0
		end
	end
		if body_id ~= 5245 then
			return 0
		end
		if glove_id ~= 5246 then
			return 0
		end
		if shoes_id ~= 5247 then
			return 0
		end
	elseif race == 4 then
	if fata == 1 then
		if head_id ~= 5252 then
			return 0
		end
	end
		if body_id ~= 5253 then
			return 0
		end
		if glove_id ~= 5254 then
			return 0
		end
		if shoes_id ~= 5255 then
			return 0
		end
	else
		return 0
	end
end

-------------------------------
-- Проверяет расы персонажей --
-------------------------------
function WeddingRace( character1, character2 )
	local character1_type = GetChaTypeID( character1 )
	local character2_type = GetChaTypeID( character2 )
	if character1_type == 1 and character2_type == 1 then
		SystemNotice( character1, "\203\224\237\241 \237\229 \236\238\230\229\242 \230\229\237\232\242\252\241\255 \237\224 \203\224\237\241\229!" )
		SystemNotice( character2, "\203\224\237\241 \237\229 \236\238\230\229\242 \230\229\237\232\242\252\241\255 \237\224 \203\224\237\241\229!" )
		return 0
	elseif character1_type == 1 and character2_type == 2 then
		SystemNotice( character1, "\203\224\237\241 \237\229 \236\238\230\229\242 \230\229\237\232\242\252\241\255 \237\224 \202\224\240\246\232\231\229!" )
		SystemNotice( character2, "\203\224\237\241 \237\229 \236\238\230\229\242 \230\229\237\232\242\252\241\255 \237\224 \202\224\240\246\232\231\229!" )
		return 0
	elseif character1_type == 2 and character2_type == 1 then
		SystemNotice( character1, "\202\224\240\246\232\231 \237\229 \236\238\230\229\242 \230\229\237\232\242\252\241\255 \237\224 \203\224\237\241\229!" )
		SystemNotice( character2, "\202\224\240\246\232\231 \237\229 \236\238\230\229\242 \230\229\237\232\242\252\241\255 \237\224 \203\224\237\241\229!" )
		return 0
	elseif character1_type == 2 and character2_type == 2 then
		SystemNotice( character1, "\202\224\240\246\232\231 \237\229 \236\238\230\229\242 \230\229\237\232\242\252\241\255 \237\224 \202\224\240\246\232\231\229!" )
		SystemNotice( character2, "\202\224\240\246\232\231 \237\229 \236\238\230\229\242 \230\229\237\232\242\252\241\255 \237\224 \202\224\240\246\232\231\229!" )
		return 0
	elseif character1_type == 3 and character2_type == 4 then
		SystemNotice( character1, "\212\232\235\235\232\241 \237\229 \236\238\230\229\242 \226\251\233\242\232 \231\224\236\243\230 \231\224 \192\236\232!" )
		SystemNotice( character2, "\212\232\235\235\232\241 \237\229 \236\238\230\229\242 \226\251\233\242\232 \231\224\236\243\230 \231\224 \192\236\232!" )
		return 0
	elseif character1_type == 3 and character2_type == 3 then
		SystemNotice( character1, "\212\232\235\235\232\241 \237\229 \236\238\230\229\242 \226\251\233\242\232 \231\224\236\243\230 \231\224 \212\232\235\235\232\241!" )
		SystemNotice( character2, "\212\232\235\235\232\241 \237\229 \236\238\230\229\242 \226\251\233\242\232 \231\224\236\243\230 \231\224 \212\232\235\235\232\241!" )
		return 0
	elseif character1_type == 4 and character2_type == 3 then
		SystemNotice( character1, "\192\236\232 \237\229 \236\238\230\229\242 \226\251\233\242\232 \231\224\236\243\230 \231\224 \212\232\235\235\232\241!" )
		SystemNotice( character2, "\192\236\232 \237\229 \236\238\230\229\242 \226\251\233\242\232 \231\224\236\243\230 \231\224 \212\232\235\235\232\241!" )
		return 0
	elseif character1_type == 4 and character2_type == 4 then
		SystemNotice( character1, "\192\236\232 \237\229 \236\238\230\229\242 \226\251\233\242\232 \231\224\236\243\230 \231\224 \192\236\232!" )
		SystemNotice( character1, "\192\236\232 \237\229 \236\238\230\229\242 \226\251\233\242\232 \231\224\236\243\230 \231\224 \192\236\232!" )
		return 0
	end
end

----------------------------------
-- Проверка Колец Св. Валентина --
----------------------------------
function ValentinesRing( role )
	local ring = CheckBagItem( role, 2521 )
	if ring == 0 then
		return 0
	else
		return 1
	end
end

--------------------
-- Проверка Денег --
--------------------
function CheckMoney( role, money )
	local money_cha = GetChaAttr( role, ATTR_GD )
	if money_cha < money then
		return 0
	end
end

--------------
-- Фейверки --
--------------
function FireworksChurch(role, npc)
	local t = {}
	t[0] = 839
	t[1] = 838
	t[2] = 366
	t[3] = 369
	t[4] = 363

	local i = math.random( 0, 4 )
	return PlayEffect( role, t[i] )
end

---------------------
-- Функция Свадьбы --
---------------------
function Marry( role, npc )
	local fata_need = 1		-- Надо ли одевать фату (1 - да, 0 - нет)
	local sk_add = SK_QLZX	-- Добавляем скилл "Узы Любви "

	-- Персонаж должен быть в отряде только со своей половинкой
	if IsInTeam( role ) == 1 then
		if PartyNum( role ) > 2 then
			SystemNotice( role, "Пожалуйста, останьтесь наедине в группе со своей половинкой." )
			return
		end

		local player = {}
		player[1] = role
		player[2] = GetTeamCha( role, 0 )

		local GetCertificate1 = CheckBagItem( role, 2913 )
		local GetCertificate2 = CheckBagItem( player[2], 2913 )

		-- Проверка свадебного сертефиката
		if GetCertificate1 < 1 then
			SystemNotice( role, "У Вас нет Свадебного сертификата." )
			SystemNotice( player[2], "У Вашей половинки нет Свадебного сертификата." )
			return
		end

		if GetCertificate2 < 1 then
			SystemNotice( player[2], "У Вас нет Свадебного сертификата." )
			SystemNotice( role, "У Вашей половинки нет Свадебного сертификата." )
			return
		end

		local NocLock1 = KitbagLock( role, 0 )
		local NocLock2 = KitbagLock( player[2], 0 )

		-- Проверка заблокирован ли инвентарь
		if NocLock1 == 0 then
			SystemNotice( role, "У Вас заблокирован инвентарь." )
			SystemNotice( player[2], "У Вашей половинки заблокирован инвентарь." )
			return
		end

		if NocLock2 == 0 then
			SystemNotice( player[2], "У Вас заблокирован инвентарь." )
			SystemNotice( role, "У Вашей половинки заблокирован инвентарь." )
			return
		end

		local GetMarryRing1 = CheckBagItem( role, 2520 )
		local GetMarryRing2 = CheckBagItem( player[2], 2520 )

		-- Проверка была ли свадьба у персонажа
		if GetMarryRing1 > 0 then
			SystemNotice( role, "У Вас уже была Свадьба." )
			SystemNotice( player[2], "У Вашей половинки уже была Свадьба." )
			return
		end

		if GetMarryRing2 > 0 then
			SystemNotice( player[2], "У Вас уже была Свадьба." )
			SystemNotice( role, "У Вашей половинки уже была Свадьба." )
			return
		end

		if WeddingRace( role, player[2] ) == 0 then
			return
		end

		-- Проверка есть ли у персонажей Кольца дня Св.Валентина
		if ValentinesRing( role ) == 0 then
			SystemNotice( role, "У тебя нет Кольца дня Св.Валентина!" )
			SystemNotice( player[2], "У твоей половинки нет Кольца дня Св.Валентина!" )
			return
		end
	
		if ValentinesRing( player[2] ) == 0 then
			SystemNotice( player[2], "У тебя нет Кольца дня Св.Валентина!" )
			SystemNotice( role, "У твоей половинки нет Кольца дня Св.Валентина!" )
			return
		end

		-- Проверка на наряды
		if WeddingDress( role, fata_need ) == 0 then
			SystemNotice( role, "Оденьте свадебный наряд." )
			SystemNotice( player[2], "Ваша половинка должна надеть свадебный наряд." )
			return
		end

		if WeddingDress( player[2], fata_need ) == 0 then
			SystemNotice( player[2], "Оденьте свадебный наряд." )
			SystemNotice( role, "Ваша половинка должна надеть свадебный наряд." )
			return
		end

		local Ring = GetChaItem2( role, 2 , 2521 )
		local CheckRing = GetChaItem2( player[2], 2, 2521 )
		local Num = GetItemForgeParam( CheckRing, 1 )
		CheckNum = TansferNum( Num )

		if CheckNum ~= 2 then
			SetItemForgeParam( Ring, 1, 2 )
			SystemNotice( role, "Дождитесь пока ваша вторая половинка поговорит с Первосященником." )
			SystemNotice( player[2], "Ваша вторая половинка уже поговорила с Первосященником. Теперь ваша очередь." )
		else
			local ID_Num1 = GetPlayerID( GetChaPlayer( role ))
			local ID_Num2 = GetPlayerID( GetChaPlayer( player[2] ))
			local cha_name1 = GetChaDefaultName( role )
			local cha_name2 = GetChaDefaultName( player[2] )

			TakeItem( role, 0, 2913, 1 )
			TakeItem( player[2], 0, 2913, 1 )
			TakeItem( role, 0, 2521, 1 )
			TakeItem( player[2], 0, 2521, 1 )

			MakeItem( role , 7314, 1, 1 )
			MakeItem( player[2], 7314, 1, 1 )
			MakeItem( role, 2520, 1, 1 )

			local ring1 = GetChaItem2( role, 2, 2520 )
			SetItemForgeParam( ring1, 1, ID_Num2 )
			MakeItem( player[2], 2520, 1, 1 )

			local ring2 = GetChaItem2( player[2], 2, 2520 )
			SetItemForgeParam( ring2, 1, ID_Num1 )
			AddChaSkill( role, sk_add, 1, 1, 0 )
			AddChaSkill( player[2], sk_add, 1, 1, 0 )
			PlayEffect( npc, 366 )

			PlayEffect( role, 838 )
			PlayEffect( player[2], 838 )
			local message = "Поздравляем " ..cha_name1.. " и " ..cha_name2.. " с состоявшейся свадьбой. От всей души желаем вам счастья в совместной жизни."

			Notice( message )
		end
	else
		SystemNotice( role, "Чтобы соединить Ваши сердца молодожены должны быть в отряде" )
	return
	end
end

--------------------------------------------------------------------
---------------------- Перерождение Феникса 1 ----------------------
--------------------------------------------------------------------

-------------
-- Воитель --
-------------
function GetChaName1_born( role, npc )
	local cha_type = GetChaTypeID( role )
	if cha_type ~= 1 then
	SystemNotice( role, "Только Ланс может стать Воителем " )
		return
	end

	local check = GetChaName_born( role )
	if check == 0 then
		SystemNotice( role, "Требования перерождения не выполнены " )
		return
	end

	local cha_job = GetChaAttr( role, ATTR_JOB )
	SetChaAttr( role, ATTR_JOB, 9 )
	GiveItem_chibang( role )
	GiveItem_zsbook( role )
	RefreshCha( role )
end

-------------
-- Чемпион --
-------------
function GetChaName2_born( role, npc )
	local cha_type = GetChaTypeID( role )
	if cha_type ~= 2 then
		SystemNotice( role, "Только Карциз может стать Чемпионом " )
		return
	end

	local check = GetChaName_born( role )
	if check == 0 then
		SystemNotice( role, "Требования перерождения не выполнены " )
		return
	end

	local cha_job = GetChaAttr( role, ATTR_JOB )
	SetChaAttr( role, ATTR_JOB, 8 )
	GiveItem_chibang( role )
	GiveItem_zsbook( role )
	RefreshCha( role )
end

----------------------
-- Покоритель Морей --
----------------------
function GetChaName3_born( role, npc )
	local cha_type = GetChaTypeID( role )
	if cha_type ~= 1 and cha_type ~= 3 and cha_type ~= 4 then
		SystemNotice( role, "Только Ланс, Филлис или Ами могут стать Покорителем Морей " )
		return
	end

	local check = GetChaName_born( role )
	if check == 0 then
		SystemNotice( role, "Требования перерождения не выполнены " )
		return
	end

	local cha_job = GetChaAttr( role, ATTR_JOB )
	SetChaAttr( role, ATTR_JOB, 16 )
	GiveItem_chibang( role )
	GiveItem_zsbook( role )
	RefreshCha( role )
end

-------------
-- Стрелок --
-------------
function GetChaName4_born( role, npc )
	local cha_type = GetChaTypeID( role )
	if cha_type ~= 1 and cha_type ~= 3 then
		SystemNotice( role, "Только Ланс и Филлис могут стать Стрелком " )
		return
	end

	local check = GetChaName_born( role )
	if check == 0 then
		SystemNotice( role, "Требования перерождения не выполнены " )
		return
	end

	local cha_job = GetChaAttr( role, ATTR_JOB )
	SetChaAttr( role, ATTR_JOB, 12 )
	GiveItem_chibang( role )
	GiveItem_zsbook( role )
	RefreshCha( role )
end

------------------
-- Целительница --
------------------
function GetChaName5_born( role, npc )
	local cha_type = GetChaTypeID( role )
	if cha_type ~= 3 and cha_type ~= 4 then
		SystemNotice( role, "Только Филлис и Ами могут стать Целительницей " )
		return
	end

	local check = GetChaName_born( role )
	if check == 0 then
		SystemNotice( role, "Требования перерождения не выполнены " )
		return
	end

	local cha_job = GetChaAttr( role, ATTR_JOB )
	SetChaAttr( role, ATTR_JOB, 13 )
	GiveItem_chibang( role )
	GiveItem_zsbook( role )
	RefreshCha( role )
end

--------------
-- Колдунья --
--------------
function GetChaName6_born( role, npc )
	local cha_type = GetChaTypeID( role )
	if cha_type ~= 3 and cha_type ~= 4 then
		SystemNotice( role, "Только Филлис и Ами могу стать Колдуньей " )
		return
	end

	local check = GetChaName_born( role )
	if check == 0 then
		SystemNotice( role, "Требования перерождения не выполнены " )
		return
	end

	local cha_job = GetChaAttr( role, ATTR_JOB )
	SetChaAttr( role, ATTR_JOB, 14 )
	GiveItem_chibang( role )
	GiveItem_zsbook( role )
	RefreshCha( role )
end

---------------------------------
-- Выдача Крыльев Перерождения --
---------------------------------
function GiveItem_chibang( role )
	local cha_type = GetChaTypeID( role )
	if cha_type == 1 then
		GiveItem( role, 0, 134, 1, 4 )
	elseif cha_type == 2 then
		GiveItem( role, 0, 138, 1, 4 )
	elseif cha_type == 3 then
		GiveItem( role, 0, 128, 1, 4 )
	elseif cha_type == 4 then
		GiveItem( role, 0, 131, 1, 4 )
	end
end

------------------------------
-- Выдача Книг Перерождения --
------------------------------
function GiveItem_zsbook( role )
	local cha_job = GetChaAttr( role, ATTR_JOB )

	if cha_job == 8 then
		GiveItem( role, 0, 2957, 1, 4 )
	elseif cha_job == 9 then
		GiveItem( role, 0, 2956, 1, 4 )
	elseif cha_job == 12 then
		GiveItem( role, 0, 2961, 1, 4 )
	elseif cha_job == 13 then
		GiveItem( role, 0, 2959, 1, 4 )
	elseif cha_job == 14 then
		GiveItem( role, 0, 2958, 1, 4 )
	elseif cha_job == 16 then
		GiveItem( role, 0, 2960, 1, 4 )
	end
end

-----------------------------
-- Проверки и Перерождение --
-----------------------------
function GetChaName_born( role )
	local cha_name = GetChaDefaultName( role )
	local cha_lv = GetChaAttr( role, ATTR_LV )
	local cha_job = GetChaAttr( role, ATTR_JOB )
	local i = CheckBagItem( role, 2235 )

	if i < 1 then
		SystemNotice( role, "Пожалуйста, проверьте наличие Камня Перерождения " )
		return 0
	end

	local item_empty = IsEquip( role )

	if item_empty == LUA_TRUE then
		SystemNotice( role, "Проверьте наличие свободного места в инвентаре " )
		return 0
	end

	local Item_CanGet = GetChaFreeBagGridNum( role )

	if Item_CanGet < 5 then
		SystemNotice( role, "Необходимо 5 свободных слотов в инвентаре " )
		UseItemFailed( role )
		return 0
	end

	local zs1 = TakeItem( role, 0, 2235, 1 )

	if zs1 == 0 then
		return 0
	end

	local Zs_Exp = GetChaAttr( role, ATTR_CSAILEXP )

	if Zs_Exp > 0 then
		SystemNotice( role, "Вы уже перерождались " )
		return 0
	end

	local QLZX = GetSkillLv( role, SK_QLZX )
	local cha_skill_num = GetChaAttr( role, ATTR_TP )
	local clear_skill_num = ClearFightSkill( role )
	cha_skill_num = cha_skill_num + clear_skill_num

	if QLZX == 1 then
		cha_skill_num = cha_skill_num - 1
		AddChaSkill( role, SK_QLZX, 2, 2, 0 )
	end

	SetChaAttr( role, ATTR_TP, cha_skill_num )

	local ap = GetChaAttr( role, ATTR_AP )
	local cha_str = GetChaAttr( role, ATTR_BSTR )
	local cha_dex = GetChaAttr( role, ATTR_BDEX )
	local cha_agi = GetChaAttr( role, ATTR_BAGI )
	local cha_con = GetChaAttr( role, ATTR_BCON )
	local cha_sta = GetChaAttr( role, ATTR_BSTA )

	ap = ap + cha_str + cha_dex + cha_agi + cha_con + cha_sta - 25

	SetChaAttr( role, ATTR_BSTR, 5 )
	SyncChar( role, 4 )
	SetChaAttr( role, ATTR_BDEX, 5 )
	SyncChar( role, 4 )
	SetChaAttr( role, ATTR_BAGI, 5 )
	SyncChar( role, 4 )
	SetChaAttr( role, ATTR_BCON, 5 )
	SyncChar( role, 4 )
	SetChaAttr( role, ATTR_BSTA, 5 )
	SyncChar( role, 4 )
	SetChaAttr( role, ATTR_AP, ap )
	SyncChar( role, 4 )
	AddSailExp( role, npc, 1, 1 )

	local sk_add = SK_ZSSL
	AddChaSkill( role, sk_add, 1, 1, 0 )

	Notice( "Особенный праздник! " ..cha_name.. " успешно завершил Перерождение Феникса! Тебя благославляет сама Богиня! Прими поздравления от всего сервера, " ..cha_name.. ", пусть твой дальнейший путь будет счастлив и светл." )
	return 1
end

----------------------------
-- Обработчик команд чата --
----------------------------
function HandleChat( role, message )
	local r = 1

	-- Проверка GM уровня персонажа
	if ( message == "/гмуровень" ) then
		SystemNotice( role, "Ваш GM-уровень равен " ..GetGmLv( role ))
		r = 0
	end

	-- Защита GM-команд
	if( GetGmLv( role ) > 0 ) then
		if ( string.find( message, "&" ) == 1 ) then
			local cha_name = GetChaDefaultName( role )

			GMCommandLog( role, message )

			if ( GMPlayers[cha_name] == nil and AddonSystem["ProtectGMCommand"] == 0 ) then
				KickCha( role )
				r = 0
			else
				for data in ProhGMCommand do
					if string.find( message, ProhGMCommand[data] ) == 1 then
						r = 0
						SystemNotice( role, "Эта команда запрещена на сервере!" )
					else
						r = 1
					end
				end
			end
		end
	end

	return
end

--------------------------------------------------------------------------
--		Определяет расстояние между игроками (Нужно для свадьбы)		--
--------------------------------------------------------------------------
function Distance( a, b, c, d )
	local x1, y1, x2, y2 = a, b, c, d
	local dis = math.pow( math.pow( x1 - x2, 2 ) + math.pow( y1 - y2, 2 ), 0.5 )
	return dis
end

------------------------------------------
--		Защита от рисования скиллов		--
------------------------------------------
function CheckCanUpgradeSkill( role, skill_id )
	-- Проверка на наличие навыка у игрока
	local skill = GetSkillLv( role, skill_id )

	if ( skill > 0 ) then
		-- Ищем навык в "специальном" списке навыков, который нельзя обновить, используя кнопку «плюс» в форме умения (например, владение феей (посешн))
		local Data

		for Data in SkillList do
			if SkillList[Data] == skill_id then
				SystemNotice( role, "Увеличить уровень навыка невозможно!" )
				return 0
			end
		end

		-- У игрока есть навык и он не "специальный". Повышаем уровень навыка!
		return 1
	end

	-- У игрока отсутствует навык
	SystemNotice( role, "Вы не изучали этот навык. Невозможно увеличить уровень!" )
	return 0
end

--------------------------------------------------
--		Функция "кика" персонажа из игры		--
--------------------------------------------------
function KickCha( character )
	local pkt = GetPacket()

	WriteCmd( pkt, 1505 )
	SendPacket( character, pkt )
end

--------------------------------------
--		Лог вводимых GM-команд		--
--------------------------------------
function GMCommandLog( role, command )
	-- Получение даты и времени
	local now_day, now_month, now_year, now_time = os.date("%d"), os.date("%m"), os.date("%y"), os.date()

	local cha_name = GetChaDefaultName( role )	-- Получаем имя персонажа
	local cha_id = GetRoleID( role )	-- Получаем ID персонажа
	local gm_str = "[" ..now_time.. "]"	-- Записываем в строку текущее время

	-- Если игрок не GM и система защиты включена
	if ( GMPlayers[cha_name] == nil and AddonSystem["ProtectGMCommand"] == 1 ) then
		gm_str = gm_str .." Игрок с ником " ..cha_name.. "(" ..cha_id.. ") получил несанкционированный доступ к GM аккаунту и был кикнут с сервера! Команда: " ..command.. "\n"
		print( "Игрок с ником " ..cha_name.." получил несанкционированный доступ к GM аккаунту и был кикнут с сервера!" )
	else	-- иначе
		gm_str = gm_str .." Игрок: " ..cha_name.. "\tID: " ..cha_id.. "\tКоманда: "..command.. "\n"
	end

	GMCommandLogPath = GetResPath( "script/AddonSystem/GMCommandLog/" )	-- Путь до папки с логами

	local file = io.open( GMCommandLogPath..now_day.. "." ..now_month.. "." ..now_year.. ".txt", "r" )	-- Открываем файл в режиме чтения

	if file == nil then	-- Если файла не существует
		file = io.open( GMCommandLogPath..now_day.. "." ..now_month.. "." ..now_year.. ".txt", "w" )	-- Создаем новый файл
		file:close()	-- Закрываем файл
	end

	file = io.open( GMCommandLogPath..now_day.. "." ..now_month.. "." ..now_year.. ".txt", "a" )	-- Открываем файл в режиме записи в конец файла
	file:write( gm_str )	-- Записываем строку в файл
	file:flush()			-- Сохраняем файл
	file:close()			-- Закрываем файл
end

----------------------------------
--		Безопасный телепорт		--
----------------------------------
function teleport( role, n )
	local map_name = TeleportList[n][1]
	local x = TeleportList[n][2]
	local y = TeleportList[n][3]

	MoveTo( role, x, y, map_name )

	return 1
end