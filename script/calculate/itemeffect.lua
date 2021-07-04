print( "‡ Јаг§Є  ItemEffect.lua" )

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Неизвестно (Целебные\восстанавливающие вещи)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function hp_med_min( role , Item )
	local hp = GetChaAttr( role , ATTR_HP )
	local con = Con(role)
	if hp <= 0 then
		return 
	end 
	hp_resume = 20 +con*5
	hp = hp + hp_resume 
	mxhp = GetChaAttr( role , ATTR_MXHP)
	if hp > mxhp then
		 hp = mxhp
	 end 
	SetCharaAttr(hp, role, ATTR_HP)
end 

function hp_med_small(role, Item )
	local hp = GetChaAttr(role, ATTR_HP)
	local con = Con(role)
	if hp <= 0 then
	end 
	hp_resume = 20+ con*5
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP)
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

function hp_med_middle( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then 
	end 
	hp_resume = 800 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	 if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

function hp_med_large( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then 
	end 
	local mxhp = GetChaAttr(role, ATTR_MXHP) 
	hp_resume = 0.2 * mxhp 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

function hp_med_super( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then 
	end 
	local mxhp = GetChaAttr(role, ATTR_MXHP) 
	hp_resume = 0.8 * mxhp  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Целебные\восстанавливающие вещи (Хлеб, Яблоко, Кекс, Тиамарин и т.д.) 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Хлеб
function ItemUse_BREAD (role, Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then   
	end 
	hp_resume = 80    
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end  
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Яблоко
function ItemUse_APPLE ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP)  
	if hp <= 0 then   
	end 
		hp_resume = 20    
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then 
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Кекс
function ItemUse_CAKE ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP)  
	if hp <= 0 then  
	end 
	hp_resume = 180   
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Эльфийский фрукт
function ItemUse_JLG( role , Item )
	local hp = GetChaAttr(role, ATTR_HP)  
	if hp <= 0 then 
	end 
	hp_resume = 15   
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Красный финик
function ItemUse_SZ ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then 
	end 
	hp_resume = 20   
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Гриб
function ItemUse_MG ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then 
	end 
	hp_resume = 35  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Плод дурмана
function ItemUse_MTLG ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then 
	end 
	hp_resume = 40  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Ледяной фрукт
function ItemUse_BG ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then  
	end 
	hp_resume = 50 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Радужный фрукт
function ItemUse_WCG( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then 
	end 
	hp_resume = 108 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Сок эльфийского фрукта
function ItemUse_JLGZ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then  
	end 
	hp_resume = 250 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp  
	end  
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Чай из красных фиников
function ItemUse_SZC( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then 
	end 
	hp_resume = 300
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Грибной суп
function ItemUse_MGT( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then 
	end 
	hp_resume = 350 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end  
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Сок плодов дурмана
function ItemUse_MTLGZ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then 
	end 
	hp_resume = 400
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Мороженое
function ItemUse_BQL( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then  
	end 
	hp_resume = 450
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Сок радужных фруктов
function ItemUse_WCLLZ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP)  
	if hp <= 0 then  
	end 
	hp_resume = 500 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Фруктовый коктейль
function ItemUse_ZHGZ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then 
	end 
	hp_resume = 550
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

-- Целебная трава
function ItemUse_YYCY( role , Item )
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 4 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

-- Лепесток многоцвета
function ItemUse_MHHB( role , Item )
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 8 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

-- Чудо-фрукт
function ItemUse_QYGS( role , Item )
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 18 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

-- Побег снежной травы
function ItemUse_BFCY( role , Item )
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 22 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

-- Лакричное зелье
function ItemUse_GCYS( role , Item )
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 33  
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

-- Чай "Бодрячок"
function ItemUse_XSHC( role , Item )
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 38 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

-- Чудо-мазь
function ItemUse_MZQYG( role , Item )
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 41 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

-- Брикет снежной травы
function ItemUse_BYS( role , Item )
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 59 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

-- Тиамарин
function ItemUse_TMLGZ( role , Item )
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 100 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

-- Загадочный фрукт
function ItemUse_SMG( role , Item )
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 111 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

-- Агрипнотик
function ItemUse_TSJ( role , Item )
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 141 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

-- Волшебное зелье
function ItemUse_MHYS( role , Item )
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 201 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

-- Особый клубничный бисквит
function ItemUse_TZCMB ( role , Item )
	tempt_monster( role ,  99 )
end 

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Книги боевых скиллов
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Владение щитом (ID 3184)
function Sk_Script_Dpsl ( role , Item )
	local sk_add = SK_DPSL
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Двойной выстрел (ID 3190)
function Sk_Script_Lzj ( role , Item )
										
	local sk_add = SK_LZJ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Метеоритный дождь (ID 3193)
function Sk_Script_Lxjy ( role , Item )
	local sk_add = SK_LXJY 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Вой (ID 3167)
function Sk_Script_Lh ( role , Item )
	local sk_add = SK_LH 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Дробь (ID 3200)
function Sk_Script_Ssd ( role , Item )
	local sk_add = SK_SSD  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Проникающая пуля (ID 3199)
function Sk_Script_Ctd ( role , Item )
	local sk_add = SK_CTD 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Великое исцеление (ID 3213)
function Sk_Script_Dzy ( role , Item )
	local sk_add = SK_DZY 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Рык тигра (ID 3293)
function Sk_Script_Hx ( role , Item ) 											
	local sk_add = SK_HX 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Зажигательная пуля (ID 3198)
function Sk_Script_Rsd ( role , Item ) 											
	local sk_add =SK_RSD 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Искусство владеть мечом (ID 3160)
function Sk_Script_Jssl ( role , Item ) 											
	local sk_add = SK_JSSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Стальная воля (ID 3161)
function Sk_Script_Gtyz ( role , Item ) 											
	local sk_add = SK_GTYZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Усиление (ID 3162)
function Sk_Script_Qhtz ( role , Item ) 											
	local sk_add = SK_QHTZ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Сноровка (ID 3163)
function Sk_Script_Lqhb ( role , Item ) 											
	local sk_add = SK_LQHB 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Концентрация (ID 3164)
function Sk_Script_Jdzz ( role , Item ) 											
	local sk_add = SK_JDZZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Иллюзорный удар (ID 3165)
function Sk_Script_Hyz ( role , Item ) 											
	local sk_add = SK_HYZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Могучий удар (ID 3166)
function Sk_Script_Zj ( role , Item ) 											
	local sk_add = SK_ZJ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Мастер большого меча (ID 3168)
function Sk_Script_Jjsl ( role , Item ) 											
	local sk_add = SK_JJSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Варварское дробление (ID 3169)
function Sk_Script_Ymsl ( role , Item ) 											
	local sk_add = SK_YMSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Берсерк (ID 3170)
function Sk_Script_Kb ( role , Item ) 											
	local sk_add = SK_KB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Поклонение тотему (ID 3171)
function Sk_Script_Ttcb ( role , Item ) 											
	local sk_add = SK_TTCB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Кровавый бык (ID 3172)
function Sk_Script_Mnrx ( role , Item ) 											
	local sk_add = SK_MNRX 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Первобытная ярость (ID 3173)
function Sk_Script_Swzq ( role , Item ) 											
	local sk_add = SK_SWZQ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Рубка двумя мечами (ID 3174)
function Sk_Script_Ssjjc ( role , Item ) 											
	local sk_add = SK_FSZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Отклонение (ID 3175)
function Sk_Script_Hys ( role , Item ) 											
	local sk_add = SK_HYS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Кровавое безумие (ID 3176)
function Sk_Script_Pxkg ( role , Item ) 											
	local sk_add = SK_PXKG 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Скрытность (ID 3177)
function Sk_Script_Qx ( role , Item ) 											
	local sk_add = SK_YS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Удар в спину (ID 3178)
function Sk_Script_Bc ( role , Item ) 											
	local sk_add = SK_BC  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Теневой удар (ID 3179)
function Sk_Script_Guz ( role , Item ) 											
	local sk_add = SK_GWZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Ядовитый дротик (ID 3180)
function Sk_Script_Db ( role , Item ) 											
	local sk_add = SK_DB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Оцепенение (ID 3181)
function Sk_Script_Mb ( role , Item ) 											
	local sk_add = SK_MB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Звериная сила (ID 3182)
function Sk_Script_Shtz ( role , Item ) 											
	local sk_add = SK_SHTZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Восстанавливать (ID 3183)
function Sk_Script_Tzhf ( role , Item ) 											
	local sk_add = SK_TZHF  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Мастер стрелкового оружия (ID 3187)
function Sk_Script_Gjsl ( role , Item ) 											
	local sk_add = SK_GJSL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Путь ветра (ID 3188)
function Sk_Script_Jfb ( role , Item ) 											
	local sk_add = SK_JFB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Глаз орла (ID 3189)
function Sk_Script_Yy ( role , Item ) 											
	local sk_add = SK_YY 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Мастер огнестрельного оружия (ID 3192)
function Sk_Script_Hqsl ( role , Item ) 											
	local sk_add = SK_HQSL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Метеоритный дождь (ID 3193)
function Sk_Script_Lxjy ( role , Item ) 											
	local sk_add = SK_LXJY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Неизвестно (ID n\a)
function Sk_Script_Dyjj ( role , Item ) 											
	local sk_add = SK_DYJJ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Калечащий выстрел (ID 3202)
function Sk_Script_Tj ( role , Item ) 											
	local sk_add = SK_TJ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Ослабление (ID 3203)
function Sk_Script_Sj ( role , Item ) 											
	local sk_add = SK_SJ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Выстрел в голову (ID 3204)
function Sk_Script_Bt ( role , Item ) 											
	local sk_add = SK_BT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Сила (ID 3205)
function Sk_Script_Jsjc ( role , Item ) 											
	local sk_add = SK_JSJC  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Исцеление (ID 3206)
function Sk_Script_Xzys ( role , Item ) 											
	local sk_add = SK_XZY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Восстановление (ID 3207)
function Sk_Script_Hfs ( role , Item ) 											
	local sk_add = SK_HFS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Призрачный удар (ID 3208)
function Sk_Script_Xlcz ( role , Item ) 											
	local sk_add = SK_XLCZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Истинное зрение (ID 3209)
function Sk_Script_Syzy ( role , Item ) 											
	local sk_add = SK_SYZY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Великое исцеление (ID 3213)
function Sk_Script_Dzy( role , Item ) 											
	local sk_add = SK_DZY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Мощное Восстановление (ID 3214)
function Sk_Script_Dhfs ( role , Item ) 											
	local sk_add = SK_DHFS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Призрачный огонь (ID 3210)
function Sk_Script_Xlzh ( role , Item ) 											
	local sk_add = SK_XLZH  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Мощь бури (ID 3211)
function Sk_Script_Fzlz ( role , Item ) 											
	local sk_add = SK_FZLZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Благодать господня (ID 3212)
function Sk_Script_Sy ( role , Item ) 											
	local sk_add = SK_SY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Воскрешение (ID 3215)
function Sk_Script_Fh ( role , Item ) 											
	local sk_add = SK_FH  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Воронка торнадо (ID 3216)
function Sk_Script_Jsfb ( role , Item ) 											
	local sk_add = SK_JSFB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Ангельский щит (ID 3217)
function Sk_Script_Tshd ( role , Item ) 											
	local sk_add = SK_TSHD  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Печать старейшины (ID 3218)
function Sk_Script_Xzfy ( role , Item ) 											
	local sk_add = SK_XZFY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Росчерк тени (ID 3219)
function Sk_Script_Ayzz ( role , Item ) 											
	local sk_add = SK_AYZZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Проклятый огонь (ID 3220)
function Sk_Script_Zzzh ( role , Item ) 											
	local sk_add = SK_ZZZH  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Контргард (ID 3221)
function Sk_Script_Sdbz ( role , Item ) 											
	local sk_add = SK_SDBZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Бездонное болото (ID 3222)
function Sk_Script_Nzs ( role , Item ) 											
	local sk_add = SK_SYNZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Магический щит (ID 3223)
function Sk_Script_Xlpz ( role , Item ) 											
	local sk_add = SK_XLPZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Исцеляющий источник (ID 3224)
function Sk_Script_Hfwq ( role , Item ) 											
	local sk_add = SK_HFWQ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Книги мирных скиллов (Книги мирных навыков)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Рубка леса (ID 3226)
function Sk_Script_Ks	( role , Item ) 
	local sk_add = SK_KS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Введение в производство (ID 2679 - 2688)
function Sk_Script_ZhiZao( role , Item ) 
	local star_lv=GetItemID(Item)-2678
	local sk_add = SK_ZHIZAO  
	local form_sklv = GetSkillLv( role , sk_add ) 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"\194\224\236 \237\243\230\229\237 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \226\251\243\247\232\242\252 \253\242\238 \243\236\229\237\232\229")
		UseItemFailed ( role )
		return
	end
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_KS ) 
	if el_sklv <star_lv  then 	
		SystemNotice ( role , "\194\224\236 \237\243\230\237\238 \226\251\243\247\232\242\252 \240\243\225\234\243 \228\229\240\229\226\224 "..star_lv.." \243\240\238\226\237\255, \247\242\238\225\251 \239\240\238\247\232\242\224\242\252 \253\242\243 \234\237\232\227\243" ) 
		UseItemFailed ( role )
		return
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if star_lv==1 and Item_CanGet < 1 then
		SystemNotice(role ,"\194\224\236 \237\243\230\229\237 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \226\251\243\247\232\242\252 \253\242\238 \243\236\229\237\232\229")
	UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "\205\229 \245\226\224\242\224\229\242 \238\247\234\238\226 \204\232\240\237\251\245 \237\224\226\251\234\238\226. \207\238\239\251\242\224\233\242\229\241\252 \239\240\238\233\242\232 \234\224\234 \236\238\230\237\238 \225\238\235\252\248\229 \232\241\242\238\240\232\247\229\241\234\232\245 \234\226\229\241\242\238\226." )
		UseItemFailed ( role )  
		return 
	end 
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1068  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)
	end
end 

-- Справочник по Ремеслу (ID 2699 - 2708)
function Sk_Script_ZhuZao( role , Item ) 
	local star_lv=GetItemID(Item)-2698
	local sk_add = SK_ZHUZAO  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_WK ) 
	if el_sklv <star_lv  then 
		SystemNotice ( role , "\194\224\236 \237\243\230\237\238 \226\251\243\247\232\242\252 \228\238\225\251\247\243 \240\243\228\251 "..star_lv.." \243\240\238\226\237\255, \247\242\238\225\251 \239\240\238\247\232\242\224\242\252 \253\242\243 \234\237\232\227\243" )
		UseItemFailed ( role )
		return
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if star_lv==1 and Item_CanGet < 1 then
		SystemNotice(role ,"\194\224\236 \237\243\230\229\237 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \226\251\243\247\232\242\252 \253\242\238 \243\236\229\237\232\229")
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "\205\229 \245\226\224\242\224\229\242 \238\247\234\238\226 \204\232\240\237\251\245 \237\224\226\251\234\238\226. \207\238\239\251\242\224\233\242\229\241\252 \239\240\238\233\242\232 \234\224\234 \236\238\230\237\238 \225\238\235\252\248\229 \232\241\242\238\240\232\247\229\241\234\232\245 \234\226\229\241\242\238\226." )
		UseItemFailed ( role )  
		return 
	end
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1069  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)
	end
end 

-- Введение в кулинарию (ID 2689 - 2698)
function Sk_Script_PengRen( role , Item ) 
	local star_lv=GetItemID(Item)-2688
	local sk_add = SK_PENGREN  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_BY ) 
	if el_sklv <star_lv  then
		SystemNotice ( role ,  "\194\224\236 \237\243\230\237\238 \226\251\243\247\232\242\252 \240\251\225\238\235\238\226\241\242\226\238 "..star_lv.." уровня, \247\242\238\225\251 \239\240\238\247\232\242\224\242\252 \253\242\243 \234\237\232\227\243" )
		UseItemFailed ( role )
		return
	end 
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "\205\229 \245\226\224\242\224\229\242 \238\247\234\238\226 \204\232\240\237\251\245 \237\224\226\251\234\238\226. \207\238\239\251\242\224\233\242\229\241\252 \239\240\238\233\242\232 \234\224\234 \236\238\230\237\238 \225\238\235\252\248\229 \232\241\242\238\240\232\247\229\241\234\232\245 \234\226\229\241\242\238\226." )
		UseItemFailed ( role )  
		return 
	end 
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1067  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)
	end
end 

-- Справочник по Анализу (ID 2709 - 2718)
function Sk_Script_FenJie( role , Item ) 
	local star_lv=GetItemID(Item)-2708
	local sk_add = SK_FENJIE  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_DL ) 
	if el_sklv <star_lv  then
		SystemNotice ( role , "\194\224\236 \237\243\230\237\238 \226\251\243\247\232\242\252 \242\240\224\235\229\237\232\229 "..star_lv.." \243\240\238\226\237\255, \247\242\238\225\251 \239\240\238\247\232\242\224\242\252 \253\242\243 \234\237\232\227\243" ) 
		UseItemFailed ( role )
		return
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if star_lv==1 and Item_CanGet < 1 then
		SystemNotice(role ,"\194\224\236 \237\243\230\229\237 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \226\251\243\247\232\242\252 \253\242\238 \243\236\229\237\232\229")
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "\205\229 \245\226\224\242\224\229\242 \238\247\234\238\226 \204\232\240\237\251\245 \237\224\226\251\234\238\226. \207\238\239\251\242\224\233\242\229\241\252 \239\240\238\233\242\232 \234\224\234 \236\238\230\237\238 \225\238\235\252\248\229 \232\241\242\238\240\232\247\229\241\234\232\245 \234\226\229\241\242\238\226." )
		UseItemFailed ( role )  
		return 
	end
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1070  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)
	end
end 

-- Добыча руды (ID 3225)
function Sk_Script_Wk	( role , Item ) 
	local sk_add = SK_WK  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--------------------------------------------------------------------------------------------------
-- Книги боевых скиллов
--------------------------------------------------------------------------------------------------

-- Усердие (ID 3227)
function Sk_Script_Jr	( role , Item ) 
	local sk_add = SK_JR  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Водоток (ID 3228)
function Sk_Script_Sl	( role , Item ) 
	local sk_add = SK_SL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Броня из раковин (ID 3229)
function Sk_Script_Bkzj ( role , Item ) 
	local sk_add = SK_BKZJ   
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Торнадо (ID 3230)
function Sk_Script_Jf ( role , Item ) 
	local sk_add = SK_JF   
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Молния (ID 3231)
function Sk_Script_Lj ( role , Item ) 
	local sk_add = SK_LJ    
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Переплетение водорослей (ID 3232)
function Sk_Script_Hzcr ( role , Item ) 
	local sk_add = SK_HZCR     
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Коралловый луч (ID 3233)
function Sk_Script_Bkcj ( role , Item ) 
	local sk_add = SK_BKCJ      
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Попутный ветер (ID 3234)
function Sk_Script_Sf ( role , Item ) 
	local sk_add = SK_SF       
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Вихрь (ID 3235)
function Sk_Script_Xw ( role , Item ) 
	local sk_add = SK_XW        
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Туман (ID 3236)
function Sk_Script_Mw ( role , Item ) 
	local sk_add = SK_MW        
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Грозовая завеса (ID 3237)
function Sk_Script_Lm ( role , Item ) 
	local sk_add = SK_LM         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Бронелом (ID 3238)
function Sk_Script_Pj ( role , Item ) 
	local sk_add = SK_PJ         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Воодушевление (ID 3239)
function Sk_Script_Fnq ( role , Item ) 
	local sk_add = SK_FNQ         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Ледяная стрела (ID 3197)
function Sk_Script_Bdj ( role , Item ) 
	local sk_add = SK_BDJ         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Отравленная стрела (ID 3241)
function Sk_Script_Dj ( role , Item ) 
	local sk_add = SK_DJ         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Закалка (ID 3242)
function Sk_Script_Shpf ( role , Item ) 
	local sk_add = SK_SHPF         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Cf ( role , Item )
	local sk_add = SK_CHF         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

-- Рык (ID 3298)
function Sk_Script_Px ( role , Item )
	local sk_add = SK_PAX         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

-- Сильная магия (ID 3300)
function Sk_Script_MLCH ( role , Item )
	local sk_add = SK_MLCH         
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

-- Кристальное благословение (ID 3301)
function Sk_Script_BLYZ ( role , Item )
	local sk_add = SK_BLYZ         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

--------------------------------------------------------------------------------------------------
--Неизвестные вещи (unknow2979 - unknow3027; ID 3243 - 3291)
--------------------------------------------------------------------------------------------------

function AddSailSkill ( role , i , sk_add , sailexp_req ) 
	LG ( "AddSailSkill" , "__add a new sailsk________________________ "  ) 

	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= i - 1  then 
		SystemNotice ( role , "Эта книга не может поднять ваш уровень умения " ) 
		UseItemFailed ( role )  
		return 
	end 

	local sail_exp_remain = GetChaAttr ( role , ATTR_CLEFT_SAILEXP ) 
	if sail_exp_remain < sailexp_req  then 
		SystemNotice ( role , "Remaining Navigation experience insufficient. Unable to raise skill level. Please try harder!" ) 
		UseItemFailed ( role )  
		return 
	end 
	LG ( "AddSailSkill" , "Skill ID" ,  sk_add , "  Skill Level  " , i  ) 
	LG ( "AddSailSkill" , " Exisiting Navigation EXP  " , sail_exp_remain , "  Navigation EXP consumed " , sailexp_req ) 
	sail_exp_remain = sail_exp_remain - sailexp_req 
	LG ( "AddSailSkill" , " Remaining Navigation EXP  " , sail_exp_remain ) 

	SetCharaAttr ( sail_exp_remain , role , ATTR_CLEFT_SAILEXP ) 
	SystemNotice ( role , "Consumes Navigation experience" .. sailexp_req ) 

	a = AddChaSkill ( role , sk_add, 1 , 0 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Hpsl1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 

end

function Sk_Script_Hpsl2 ( role , Item ) 
	local i = 2 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg2 ( role , Item ) 
	local i = 2 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs2 ( role , Item ) 
	local i = 2 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh2 ( role , Item ) 
	local i = 2 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 

end

function Sk_Script_Ctqh5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr2 ( role , Item ) 
	local i = 2 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

--------------------------------------------------------------------------------------------------
--Книги мирных скиллов (Книги мирных навыков)
--------------------------------------------------------------------------------------------------
--Рыболовство (ID 3294)
function Sk_Script_By ( role , Item )
	local sk_add = SK_BY         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

--Траление (ID 3295)
function Sk_Script_Dl ( role , Item )
	local sk_add = SK_DL         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

--Поставить ларек (ID 3296)
function Sk_Script_Btjn ( role , Item )
	local sk_add = SK_BAT         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

--Ремонт (ID 3299)
function Sk_Script_Pkqx ( role , Item )
	local sk_add = SK_PKQX         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

--------------------------------------------------------------------------------------------------
--Билеты
--------------------------------------------------------------------------------------------------
--Обратный билет (ID 3141)
function Jz_Script_hc(role, Item )
	local i = CheckBagItem(role,3141)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация очень утомительный процесс. Пожалуйста, восстановите Ваше здоровье и ману ")
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3141,1)
			if j == 1 then
				MoveCity( role, "" )
				return
			end
		end
	else
		UseItemFailed( role )
	end
	
end

-- Билет до Серебряного (ID 4602)
function Jz_Script_bycs( role, Item )
	local i = CheckBagItem( role, 4602 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 4602, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = math.random( 1, 3 )
					teleport( role, n )
				else
					MoveCity( role, "Argent City" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

-- Билет до Шайтана (ID 4603)
function Jz_Script_slcs( role, Item )
	local i = CheckBagItem( role, 4603 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 4603, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = math.random( 7, 9 )
					teleport( role, n )
				else
					MoveCity( role, "Shaitan City" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

-- Билет до Ледыни (ID 4604)
function Jz_Script_blbcs( role, Item )
	local i = CheckBagItem( role, 4604 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 4604, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = math.random( 10, 12 )
					teleport( role, n )
				else
					MoveCity( role, "Icicle Castle" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

--Билет на о. Весны (Id 0332)
function Jz_Script_cfzs(role, Item )
	local i = CheckBagItem( role, 332 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 332, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 75
					teleport( role, n )
				else
					MoveCity( role, "Spring Town" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

-- Билет на о. Арены (ID n\a)
function Jz_Script_cfzsAI( role, Item )
	local i = CheckBagItem( role, 5780 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 5780, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = math.random( 13, 17 )
					teleport( role, n )
				else
					MoveCity( role, "Arena Isle" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

--------------------------------------------------------------------------------------------------
--Корабельнай лес и мясо
--------------------------------------------------------------------------------------------------

--Корабельный лес (ID 4547)
function ItemUse_Wood ( role , Item ) 
	local k = ChaIsBoat ( role ) 
	if k == 0 then 
		UseItemFailed ( role )
		SystemNotice ( role , "\207\240\229\228\236\229\242 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237 \242\238\235\252\234\238 \226 \236\238\240\229" )
		return 
	end 
	local hp = GetChaAttr ( role , ATTR_HP ) 
	local mxhp = GetChaAttr ( role, ATTR_MXHP ) 
	if hp < 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "\209\243\228\237\238 \231\224\242\238\237\243\235\238. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242" ) 
	end 
	local statelv = 1
	local statetime = 63
	AddState ( role , role , STATE_MCK , statelv , statetime )
	
 

end 

function State_MCK_Add ( role , statelv ) 
	local hpdmg = -100   
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role)  
end 

function State_MCK_Rem ( role , statelv ) 
end

--Мясо (ID 4551)
function ItemUse_Fish ( role , Item ) 
	local k = ChaIsBoat ( role ) 
	if k == 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "\207\240\229\228\236\229\242 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237 \242\238\235\252\234\238 \226 \236\238\240\229" )
		return 
	end 
	local sp = GetChaAttr ( role , ATTR_SP ) 
	local mxsp = GetChaAttr ( role, ATTR_MXSP ) 
	local hp = GetChaAttr ( role , ATTR_HP ) 
	local mxhp = GetChaAttr ( role, ATTR_MXHP ) 
	if hp < 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "\209\243\228\237\238 \231\224\242\238\237\243\235\238. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242" ) 
	end 
	local sp_resume = 50 
	sp = math.min ( mxsp , sp + sp_resume  ) 
	SetCharaAttr ( sp , role , ATTR_SP ) 
end 

--------------------------------------------------------------------------------------------------
--Лунный пирог
--------------------------------------------------------------------------------------------------

--Лунный пирог (ID 3915)
function ItemUse_YB ( role , Item )
	local exp = Exp ( role )
	local charLv=Lv ( role )
	local exp_new = 0
	if charLv >= 80 then
		exp_new = exp + 6
	else
		exp_new = exp + 300		
	end
	SetCharaAttr ( exp_new , role , ATTR_CEXP )
end

--------------------------------------------------------------------------------------------------
--Сундуки
--------------------------------------------------------------------------------------------------

--Красивый сундук (ID 1815)
function ItemUse_HLBX ( role , Item )
	local item_type = BaoXiang_HLBX 
	local item_type_rad = BaoXiang_HLBX_Rad 
	local item_type_count = BaoXiang_HLBX_Count 
	local maxitem = BaoXiang_HLBX_Mxcount
	local item_quality = BaoXiang_HLBX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end

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
end 

--Мистический сундук (ID 1814)
function ItemUse_SMBX ( role , Item )
	local item_type = BaoXiang_SMBX 
	local item_type_rad = BaoXiang_SMBX_Rad 
	local item_type_count = BaoXiang_SMBX_Count 
	local maxitem = BaoXiang_SMBX_Mxcount
	local item_quality = BaoXiang_SMBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
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
end 

--Обычный сундук (ID 1852)
function ItemUse_SYBOX ( role , Item )
	local item_type = BaoXiang_SYBOX 
	local item_type_rad = BaoXiang_SYBOX_Rad 
	local item_type_count = BaoXiang_SYBOX_Count 
	local maxitem = BaoXiang_SYBOX_Mxcount
	local item_quality = BaoXiang_SYBOX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
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
	 if   ItemId >= 0183 and  ItemId <= 0199   then
	 
		local itemname = GetItemName ( ItemId ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
 		Notice ( message )
	end
end

--Сундук с вещами (ID 1851)
function ItemUse_WZX ( role , Item )
	local item_type = BaoXiang_WZX 
	local item_type_rad = BaoXiang_WZX_Rad 
	local item_type_count = BaoXiang_WZX_Count 
	local maxitem = BaoXiang_WZX_Mxcount
	local item_quality = BaoXiang_WZX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
end

--Скелетный сундук мечника (ID 3400)
function ItemUse_KLJS ( role , Item )
	local item_type = BaoXiang_KLJS 
	local item_type_rad = BaoXiang_KLJS_Rad 
	local item_type_count = BaoXiang_KLJS_Count 
	local maxitem = BaoXiang_KLJS_Mxcount
	local item_quality = BaoXiang_KLJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end 

--Скелетный сундук охотника (ID 3401)
function ItemUse_KLLR ( role , Item )
	local item_type = BaoXiang_KLLR 
	local item_type_rad = BaoXiang_KLLR_Rad 
	local item_type_count = BaoXiang_KLLR_Count 
	local maxitem = BaoXiang_KLLR_Mxcount
	local item_quality = BaoXiang_KLLR_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end 

--Скелетный сундук знахарки (ID 3402)
function ItemUse_KLYS ( role , Item )
	local item_type = BaoXiang_KLYS 
	local item_type_rad = BaoXiang_KLYS_Rad 
	local item_type_count = BaoXiang_KLYS_Count 
	local maxitem = BaoXiang_KLYS_Mxcount
	local item_quality = BaoXiang_KLYS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Скелетный сундук исследователя (ID 3403)
function ItemUse_KLMX ( role , Item )
	local item_type = BaoXiang_KLMX 
	local item_type_rad = BaoXiang_KLMX_Rad 
	local item_type_count = BaoXiang_KLMX_Count 
	local maxitem = BaoXiang_KLMX_Mxcount
	local item_quality = BaoXiang_KLMX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Сундук заклинаний воителя (ID 3404)
function ItemUse_ZSSJ ( role , Item )
	local item_type = BaoXiang_ZSSJ 
	local item_type_rad = BaoXiang_ZSSJ_Rad 
	local item_type_count = BaoXiang_ZSSJ_Count 
	local maxitem = BaoXiang_ZSSJ_Mxcount
	local item_quality = BaoXiang_ZSSJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Сундук заклинаний чемпиона (ID 3405)
function ItemUse_ZSJS ( role , Item )
	local item_type = BaoXiang_ZSJS 
	local item_type_rad = BaoXiang_ZSJS_Rad 
	local item_type_count = BaoXiang_ZSJS_Count 
	local maxitem = BaoXiang_ZSJS_Mxcount
	local item_quality = BaoXiang_ZSJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Сундук заклинаний стрелка (ID 3406)
function ItemUse_ZSJJ ( role , Item )
	local item_type = BaoXiang_ZSJJ
	local item_type_rad = BaoXiang_ZSJJ_Rad 
	local item_type_count = BaoXiang_ZSJJ_Count 
	local maxitem = BaoXiang_ZSJJ_Mxcount
	local item_quality = BaoXiang_ZSJJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Сундук заклинаний целительницы (ID 3407)
function ItemUse_ZSSZ ( role , Item )
	local item_type = BaoXiang_ZSSZ
	local item_type_rad = BaoXiang_ZSSZ_Rad 
	local item_type_count = BaoXiang_ZSSZ_Count 
	local maxitem = BaoXiang_ZSSZ_Mxcount
	local item_quality = BaoXiang_ZSSZ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Сундук заклинаний колдуньи (ID 3408)
function ItemUse_ZSFY ( role , Item )
	local item_type = BaoXiang_ZSFY
	local item_type_rad = BaoXiang_ZSFY_Rad 
	local item_type_count = BaoXiang_ZSFY_Count 
	local maxitem = BaoXiang_ZSFY_Mxcount
	local item_quality = BaoXiang_ZSFY_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Cундук заклинаний мореплавателя (ID 3409)
function ItemUse_ZSHH ( role , Item )
	local item_type = BaoXiang_ZSHH
	local item_type_rad = BaoXiang_ZSHH_Rad 
	local item_type_count = BaoXiang_ZSHH_Count 
	local maxitem = BaoXiang_ZSHH_Mxcount
	local item_quality = BaoXiang_ZSHH_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Исчезающий сундук воителя (ID 3410)
function ItemUse_HLSJ ( role , Item )
	local item_type = BaoXiang_HLSJ
	local item_type_rad = BaoXiang_HLSJ_Rad 
	local item_type_count = BaoXiang_HLSJ_Count 
	local maxitem = BaoXiang_HLSJ_Mxcount
	local item_quality = BaoXiang_HLSJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Сундук исчезновения чемпиона (ID 3411)
function ItemUse_HLJS ( role , Item )
	local item_type = BaoXiang_HLJS
	local item_type_rad = BaoXiang_HLJS_Rad 
	local item_type_count = BaoXiang_HLJS_Count 
	local maxitem = BaoXiang_HLJS_Mxcount
	local item_quality = BaoXiang_HLJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Сундук исчезновения стрелка (ID 3412)
function ItemUse_HLJJ ( role , Item )
	local item_type = BaoXiang_HLJJ
	local item_type_rad = BaoXiang_HLJJ_Rad 
	local item_type_count = BaoXiang_HLJJ_Count 
	local maxitem = BaoXiang_HLJJ_Mxcount
	local item_quality = BaoXiang_HLJJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Исчезающий сундук целительницы (ID 3413)
function ItemUse_HLSZ ( role , Item )
	local item_type = BaoXiang_HLSZ
	local item_type_rad = BaoXiang_HLSZ_Rad 
	local item_type_count = BaoXiang_HLSZ_Count 
	local maxitem = BaoXiang_HLSZ_Mxcount
	local item_quality = BaoXiang_HLSZ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Сундук исчезновения колдуньи (ID 3414)
function ItemUse_HLFY ( role , Item )
	local item_type = BaoXiang_HLFY
	local item_type_rad = BaoXiang_HLFY_Rad 
	local item_type_count = BaoXiang_HLFY_Count 
	local maxitem = BaoXiang_HLFY_Mxcount
	local item_quality = BaoXiang_HLFY_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Сундук исчезновения мореплавателя (ID 3415)
function ItemUse_HLHH ( role , Item )
	local item_type = BaoXiang_HLHH
	local item_type_rad = BaoXiang_HLHH_Rad 
	local item_type_count = BaoXiang_HLHH_Count 
	local maxitem = BaoXiang_HLHH_Mxcount
	local item_quality = BaoXiang_HLHH_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Потайной сундук воителя (ID 3416)
function ItemUse_MSJ ( role , Item )
	local item_type = BaoXiang_MSJ
	local item_type_rad = BaoXiang_MSJ_Rad 
	local item_type_count = BaoXiang_MSJ_Count 
	local maxitem = BaoXiang_MSJ_Mxcount
	local item_quality = BaoXiang_MSJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Таинственный сундук чемпиона (ID 3417)
function ItemUse_MJS ( role , Item )
	local item_type = BaoXiang_MJS
	local item_type_rad = BaoXiang_MJS_Rad 
	local item_type_count = BaoXiang_MJS_Count 
	local maxitem = BaoXiang_MJS_Mxcount
	local item_quality = BaoXiang_MJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Таинственный сундук стрелка (ID 3418)
function ItemUse_MJJ ( role , Item )
	local item_type = BaoXiang_MJJ
	local item_type_rad = BaoXiang_MJJ_Rad 
	local item_type_count = BaoXiang_MJJ_Count 
	local maxitem = BaoXiang_MJJ_Mxcount
	local item_quality = BaoXiang_MJJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Таинственный сундук клирика (ID 3419)
function ItemUse_MSZ ( role , Item )
	local item_type = BaoXiang_MSZ
	local item_type_rad = BaoXiang_MSZ_Rad 
	local item_type_count = BaoXiang_MSZ_Count 
	local maxitem = BaoXiang_MSZ_Mxcount
	local item_quality = BaoXiang_MSZ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Таинственный сундук колдуньи (ID 3420)
function ItemUse_MFY ( role , Item )
	local item_type = BaoXiang_MFY
	local item_type_rad = BaoXiang_MFY_Rad 
	local item_type_count = BaoXiang_MFY_Count 
	local maxitem = BaoXiang_MFY_Mxcount
	local item_quality = BaoXiang_MFY_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Таинственный сундук покорителя морей (ID 3421)
function ItemUse_MHH ( role , Item )
	local item_type = BaoXiang_MHH
	local item_type_rad = BaoXiang_MHH_Rad 
	local item_type_count = BaoXiang_MHH_Count 
	local maxitem = BaoXiang_MHH_Mxcount
	local item_quality = BaoXiang_MHH_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Сундук из Затерянного города (ID 3422)
function ItemUse_FLBX ( role , Item )
	local item_type = BaoXiang_FLBX
	local item_type_rad = BaoXiang_FLBX_Rad 
	local item_type_count = BaoXiang_FLBX_Count 
	local maxitem = BaoXiang_FLBX_Mxcount
	local item_quality = BaoXiang_FLBX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Сундук с Темной топи (ID 3423)
function ItemUse_ZZBX ( role , Item )
	local item_type = BaoXiang_ZZBX
	local item_type_rad = BaoXiang_ZZBX_Rad 
	local item_type_count = BaoXiang_ZZBX_Count 
	local maxitem = BaoXiang_ZZBX_Mxcount
	local item_quality = BaoXiang_ZZBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Сундук из Мира демонов (ID 3424)
function ItemUse_MFBX ( role , Item )
	local item_type = BaoXiang_MFBX
	local item_type_rad = BaoXiang_MFBX_Rad 
	local item_type_count = BaoXiang_MFBX_Count 
	local maxitem = BaoXiang_MFBX_Mxcount
	local item_quality = BaoXiang_MFBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--Сундук потаенного (ID 3458)
function ItemUse_MZBX ( role , Item )
	local item_type = BaoXiang_MZBX
	local item_type_rad = BaoXiang_MZBX_Rad 
	local item_type_count = BaoXiang_MZBX_Count 
	local maxitem = BaoXiang_MZBX_Mxcount
	local item_quality = BaoXiang_MZBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \241\243\237\228\243\234 \241 \241\238\234\240\238\226\232\249\224\236\232 \232 \239\238\235\243\247\224\229\242   "..itemname  
	Notice ( message )
end

--------------------------------------------------------------------------------------------------
--Производство
--------------------------------------------------------------------------------------------------

--Водяная мина (ID 3459)
function  ItemUse_BOMB ( role , Item ) 
	local bomb = SummonCha ( role , 1 , 704 ) 
	local statetime = 10 
	local statelv = 1 
	AddState ( role , bomb , STATE_BOMB , statelv , statetime ) 
	AddChaSkill ( bomb , SK_BOMB , 1 , 1 , 0 ) 
	SystemNotice ( role , "\194\238\228\255\237\224\255 \236\232\237\224 \243\241\239\229\248\237\238 \243\241\242\224\237\238\226\235\229\237\224" ) 
end 


--------------------------------------------------------------------------------------------------
--Зелья
--------------------------------------------------------------------------------------------------

--Бычье зелье (ID 1854)
function ItemUse_PKMNYS ( role , Item )
	local statelv = 10
	local statetime = 1800
	AddState( role , role , STATE_PKMNYS , statelv , statetime )
end


--Боевое зелье (ID 1855)
function ItemUse_PKZDYS ( role , Item )
	local statelv = 10
	local statetime = 150
	AddState( role , role , STATE_PKZDYS , statelv , statetime )
end

--Зелье берсерка (ID 1856)
function ItemUse_PKKBYS ( role , Item )
	local statelv = 10
	local statetime = 20
	AddState( role , role , STATE_PKKBYS , statelv , statetime )
end

--Энергозелье (ID 1857)
function ItemUse_PKJSYS ( role , Item )
	local statelv = 10
	local statetime = 180
	AddState( role , role , STATE_PKJSYS , statelv , statetime )
end

--Укрепляющее зелье (ID 1858)
function ItemUse_PKSFYS ( role , Item )
	local statelv = 10
	local statetime = 300
	AddState( role , role , STATE_PKSFYS , statelv , statetime )
end

--Зелье точности (ID 1859)
function ItemUse_PKJZYS ( role , Item )
	local statelv = 10
	local statetime = 900
	AddState( role , role , STATE_PKJZYS , statelv , statetime )
end

--Неизвестно (ID n\a)
function ItemUse_PKWDYS ( role , Item )
	local statelv = 10
	local statetime = 15
	AddState( role , role , STATE_PKWD , statelv , statetime )
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \241\242\224\237\238\226\232\242\241\255 \205\229\232\231\226\229\241\242\237\206 \237\224 15 \241\229\234\243\237\228" 
	Notice ( message )
end

--Качественный Корабельный лес (ID 1861)
function ItemUse_PKMCK ( role , Item )
	local map_name = GetChaMapName ( role )
	if map_name == "secretgarden" then
		local hpdmg = -500   
		Hp_Endure_Dmg ( role , hpdmg ) 
		ALLExAttrSet(role)
	else
		SystemNotice ( role , "\221\242\238\242 \239\240\229\228\236\229\242 \236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \242\238\235\252\234\238 \226 \209\224\228\243 \221\228\229\235\252" )
	end
end



--------------------------------------------------------------------------------------------------
--											Билеты												--
--------------------------------------------------------------------------------------------------
-- Пропуск в Громоград ID 3048)
function Jz_Script_ltcs( role, Item )
	local i = CheckBagItem( role, 3828 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )
	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 3828, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = math.random( 4, 6 )
					teleport( role, n )
				else
					MoveCity( role, "Thundoria Castle" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

-- Следуй в порт Громограда (ID 3049)
function Jz_Script_ltjgcs(role, Item )
	local i = CheckBagItem(role,3829)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3829,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 75
					teleport( role, n )
				else
					MoveCity( role, "Thundoria Harbor" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

-- Пропуск к Священной Снежной горе (ID 3050)
function Jz_Script_sxscs( role, Item )
	local i = CheckBagItem( role, 3830 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 3830, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 56
					teleport( role, n )
				else
					MoveCity( role, "Sacred Snow Mountain" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

-- Пропуск в Андийский лес (ID 3051)
function Jz_Script_laslcs( role, Item )
	local i = CheckBagItem( role, 3831 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then 
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end 

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 3831, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 57
					teleport( role, n )
				else
					MoveCity( role, "Andes Forest Haven" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

-- Пропуск в Оазис (ID 3052)
function Jz_Script_sqcs( role, Item )
	local i = CheckBagItem( role, 3832 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then 
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end 

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 3832, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 58
					teleport( role, n )
				else
					MoveCity( role, "Oasis Haven" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

-- Пропуск к Ледяному шипу (ID 3053)
function Jz_Script_bjcs( role, Item )
	local i = CheckBagItem( role, 3833 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 3833, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 59
					teleport( role, n )
				else
					MoveCity( role, "Icespire Haven" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

-- Пропуск в Одинокую башню (ID 3054)
function Jz_Script_jmztcs( role, Item )
	local i = CheckBagItem( role, 3834 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end 

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 3834, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 60
					teleport( role, n )
				else
					MoveCity( role, "Lone Tower Entrace" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

-- Часть защиты (ID 3055)
function Jz_Script_scrkcs( role, Item )
	local i = CheckBagItem( role, 3835 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )
	if sp < mxsp or hp < mxhp then 
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 3835, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 61
					teleport( role, n )
				else
					MoveCity( role, "Barren Cavern Entrance" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

--Проход в Заброшенные шахты 2 (ID 3056)
function Jz_Script_fk2cs( role, Item )
	local i = CheckBagItem( role, 3836 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end 

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 3836, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 62
					teleport( role, n )
				else
					MoveCity( role, "Abandon Mine 2" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

--Пропуск в Серебряную шахту 2 (ID 3057)
function Jz_Script_yk2cs( role, Item )
	local i = CheckBagItem( role, 3837 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end 

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 3837, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 63
					teleport( role, n )
				else
					MoveCity( role, "Silver Mine 2" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

-- Пропуск в Серебряную шахту 3 (ID 3058)
function Jz_Script_yk3cs( role, Item )
	local i = CheckBagItem( role, 3838 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 3838, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 63
					teleport( role, n )
				else
					MoveCity( role, "Silver Mine 3" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

--Билет в Одинокую башню 2 (ID 3059)
function Jz_Script_jmzt2cs(role, Item )
	local i = CheckBagItem(role,3839)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3839,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 66
					teleport( role, n )
				else
					MoveCity( role, "Lone Tower 2" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
		
end

--Пропуск в Одинокую башню 3 (ID 3060)
function Jz_Script_jmzt3cs(role, Item )
	local i = CheckBagItem(role,3840)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3840,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 67
					teleport( role, n )
				else
					MoveCity( role, "Lone Tower 3" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

-- Пропуск в Одинокую башню 4 (ID 3070)
function Jz_Script_jmzt4cs(role, Item )
	local i = CheckBagItem(role,3841)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3841,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 68
					teleport( role, n )
				else
					MoveCity( role, "Lone Tower 4" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--Пропуск в Одинокую башню 5 (ID 3071)
function Jz_Script_jmzt5cs(role, Item )
	local i = CheckBagItem(role,3842)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3842,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 69
					teleport( role, n )
				else
					MoveCity( role, "Lone Tower 5" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

--Пропуск в Одинокую башню 6 (ID 3072)
function Jz_Script_jmzt6cs(role, Item )
	local i = CheckBagItem(role,3843)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3843,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 70
					teleport( role, n )
				else
					MoveCity( role, "Lone Tower 6" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

-- Пропуск в Заброшенную шахту 1 (ID 3073)
function Jz_Script_fk1cs( role, Item )
	local i = CheckBagItem( role, 3847 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 3847, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 65
					teleport( role, n )
				else
					MoveCity( role, "Abandon Mine 1" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

--------------------------------------------------------------------------------------------------
--УС, СУС, БУУ и остальные множители рейтов
--------------------------------------------------------------------------------------------------

--Усилитель стремлений (ID 3094)
function ItemUse_MoreExpGz( role, Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv( role, STATE_SBJYGZ )

	if ChaStateLv > statelv then
		SystemNotice( role, "\207\240\229\228\236\229\242 \243\230\229 \232\241\239\238\235\252\231\243\229\242\241\255. \207\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat( role )
	if Cha_Boat ==  nil then
		AddState( role, role, STATE_SBJYGZ, statelv, statetime )
	else
		AddState( Cha_Boat, Cha_Boat, STATE_SBJYGZ, statelv, statetime )
	end
end

-- Фрукт опыта отряда ( ID 0849 )
function ItemUse_ZD_MoreExpGz( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_ZDSBJYGZ )

	if ChaStateLv > statelv then
		SystemNotice ( role , "\207\240\229\228\236\229\242 \243\230\229 \232\241\239\238\235\252\231\243\229\242\241\255. \207\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_ZDSBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_ZDSBJYGZ , statelv , statetime )
	end
end

--Слеза без любви (ID 1006)
function ItemUse_MoreItemGz( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "\207\240\229\228\236\229\242 \243\230\229 \232\241\239\238\235\252\231\243\229\242\241\255. \207\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
end

--Особый тайнофрукт (ID 3879)
function ItemUse_MoreExpGzLv2( role , Item )
	local Lv = Lv( role )
	if Lv < 40 then
		SystemNotice(role ,"\210\238\235\252\234\238 \232\227\240\238\234\232 \243\240\238\226\237\255 40 \232 \226\251\248\229 \236\238\227\243\242 \232\241\239\238\235\252\231\238\226\224\242\252 \253\242\238\242 \239\240\229\228\236\229\242")
		UseItemFailed ( role )
		return
	end

	local statelv = 2
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "\207\240\229\228\236\229\242 \243\230\229 \232\241\239\238\235\252\231\243\229\242\241\255. \207\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"Feel the effect of Special Mystic Fruit" )
end

--Особый счастье-фрукт (ID 3881)
function ItemUse_MoreItemGzLv2( role , Item )
	local Lv = Lv( role )
	if Lv < 40 then
		SystemNotice(role ,"\210\238\235\252\234\238 \232\227\240\238\234\232 \243\240\238\226\237\255 40 \232 \226\251\248\229 \236\238\227\243\242 \232\241\239\238\235\252\231\238\226\224\242\252 \253\242\238\242 \239\240\229\228\236\229\242")
		UseItemFailed ( role )
		return
	end


	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "\207\240\229\228\236\229\242 \243\230\229 \232\241\239\238\235\252\231\243\229\242\241\255. \207\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"Feels the effect of Special Lucky Fruit" )
end

------------СУСЫ
--Супер Усилитель стремлений х2.5 (ID 3095)
function ItemUse_MoreExpGzLv3( role, Item )
	local statelv = 3
	local ChaStateLv = GetChaStateLv( role, STATE_SBJYGZ )

	if ChaStateLv > statelv then
		SystemNotice( role, "\207\240\229\228\236\229\242 \243\230\229 \232\241\239\238\235\252\231\243\229\242\241\255. \207\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat( role )
	if Cha_Boat == nil then
		AddState( role, role, STATE_SBJYGZ, statelv, statetime )
	else
		AddState( Cha_Boat, Cha_Boat, STATE_SBJYGZ, statelv, statetime )
	end
end

--Супер Усилитель стремлений х3.5 (ID 5794)
function ItemUse_MoreExpGzLv3x5A( role , Item )
	local Lv = Lv( role )
	if Lv < 75 then
		SystemNotice(role ,"\210\238\235\252\234\238 \232\227\240\238\234\232 \243\240\238\226\237\255 75 \232 \226\251\248\229 \236\238\227\243\242 \232\241\239\238\235\252\231\238\226\224\242\252 \253\242\238\242 \239\240\229\228\236\229\242")
		UseItemFailed ( role )
		return
	end

	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "\207\240\229\228\236\229\242 \243\230\229 \232\241\239\238\235\252\231\243\229\242\241\255. \207\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
end

--Супер Усилитель стремлений х4 (ID 5695)
function ItemUse_MoreExpGzLv4A( role , Item )
	local Lv = Lv( role )
	if Lv < 80 then
		SystemNotice( role, "\210\238\235\252\234\238 \232\227\240\238\234\232 \243\240\238\226\237\255 80 \232 \226\251\248\229 \236\238\227\243\242 \232\241\239\238\235\252\231\238\226\224\242\252 \253\242\238\242 \239\240\229\228\236\229\242" )
		UseItemFailed( role )
		return
	end

	local statelv = 5
	local ChaStateLv = GetChaStateLv( role, STATE_SBJYGZ )

	if ChaStateLv > statelv then
		SystemNotice( role, "\207\240\229\228\236\229\242 \243\230\229 \232\241\239\238\235\252\231\243\229\242\241\255. \207\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat( role )
	if Cha_Boat == nil then
		AddState( role, role, STATE_SBJYGZ, statelv, statetime )
	else
		AddState( Cha_Boat, Cha_Boat, STATE_SBJYGZ, statelv, statetime )
	end
	SystemNotice( role, "\207\238\247\243\226\241\242\226\243\233 \253\244\244\229\234\242 \238\242 4x \211\241\232\235\232\242\235\255 \209\242\240\229\236\235\229\237\232\233" )
end

--Буу 3.5x и 4x от SimplePRO

--Большой усилитель удачи (ID 3097)
function ItemUse_MoreItemGzLv3( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"\210\238\235\252\234\238 \232\227\240\238\234\232 \243\240\238\226\237\255 60 \232 \226\251\248\229 \236\238\227\243\242 \232\241\239\238\235\252\231\238\226\224\242\252 \253\242\238\242 \239\240\229\228\236\229\242")
		UseItemFailed ( role )
		return
	end

	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )

	if ChaStateLv > statelv then
		SystemNotice ( role , "\207\240\229\228\236\229\242 \243\230\229 \232\241\239\238\235\252\231\243\229\242\241\255. \207\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"\207\238\247\243\226\241\242\226\243\233 \253\244\244\229\234\242 \238\242 \193\238\235\252\248\238\227\238 \211\241\232\235\232\242\229\235\255 \211\228\224\247\232" )
end

--Волшебный фрукт (ID 0898)
function ItemUse_MoreItemAndExpGz( role , Item )
	local Lv = Lv( role )
	if Lv < 30 then
		SystemNotice(role ,"\210\238\235\252\234\238 \232\227\240\238\234\232 \243\240\238\226\237\255 30 \232 \226\251\248\229 \236\238\227\243\242 \232\241\239\238\235\252\231\238\226\224\242\252 \253\242\238\242 \239\240\229\228\236\229\242")
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
end

--------------------------------------------------------------------------------------------------
--Книги сброса статов
--------------------------------------------------------------------------------------------------
--Фляга восстановления телосложения (ID 3098)
function ItemUse_TLHFJ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	hp_resume = 800 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then 
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)
end

--Восстановление книги силы (ID 0899)
function ItemUse_XD_Str1 ( role , Item )
	local str = GetChaAttr( role , ATTR_BSTR )
	local ap = GetChaAttr( role , ATTR_AP )
	if str <= 5 then 
		SystemNotice ( role , "\211 \194\224\241 \237\229\242 \241\226\238\225\238\228\237\251\245 \238\247\234\238\226 \245\224\240\224\234\242\229\240\232\241\242\232\234. \209\225\240\238\241 \237\229\226\238\231\236\238\230\229\237" )
		UseItemFailed ( role )
		return
	end
	local str_dif = 1
	local ap_dif = 1
	str = str - str_dif
	ap = ap + 1

	SystemNotice ( role , "\193\251\235\238 \241\225\240\238\248\229\237\238 1 \238\247\234\238 \241\232\235\251" )
	
	
	SetCharaAttr ( str , role , ATTR_BSTR )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--Книга сброса телосложения (ID 0900)
function ItemUse_XD_Con1 ( role , Item )
	local con = GetChaAttr( role , ATTR_BCON )
	local ap = GetChaAttr( role , ATTR_AP )
	if con <= 5 then 
		SystemNotice ( role , "\211 \194\224\241 \237\229\242 \241\226\238\225\238\228\237\251\245 \238\247\234\238\226 \245\224\240\224\234\242\229\240\232\241\242\232\234. \209\225\240\238\241 \237\229\226\238\231\236\238\230\229\237" )
		UseItemFailed ( role )
		return
	end
	local con_dif = 1
	local ap_dif = 1
	con = con - con_dif
	ap = ap + 1

	SystemNotice ( role , "\193\251\235\238 \241\225\240\238\248\229\237\238 1 \238\247\234\238 \242\229\235\238\241\235\238\230\229\237\232\255" )

	SetCharaAttr ( con , role , ATTR_BCON )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--Восстановление книги ловкости (ID 0901)
function ItemUse_XD_Agi1 ( role , Item )
	local agi = GetChaAttr( role , ATTR_BAGI )
	local ap = GetChaAttr( role , ATTR_AP )
	if agi <= 5 then 
		SystemNotice ( role , "\211 \194\224\241 \237\229\242 \241\226\238\225\238\228\237\251\245 \238\247\234\238\226 \245\224\240\224\234\242\229\240\232\241\242\232\234. \209\225\240\238\241 \237\229\226\238\231\236\238\230\229\237" )
		UseItemFailed ( role )
		return
	end
	local agi_dif = 1
	local ap_dif = 1
	agi = agi - agi_dif
	ap = ap + 1
	
	SystemNotice ( role , "\193\251\235\238 \241\225\240\238\248\229\237\238 1 \238\247\234\238 \235\238\226\234\238\241\242\232" )

	SetCharaAttr ( agi , role , ATTR_BAGI )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--Книга восстановления точности (ID 0902)
function ItemUse_XD_Dex1 ( role , Item )
	local dex = GetChaAttr( role , ATTR_BDEX )
	local ap = GetChaAttr( role , ATTR_AP )
	if dex <= 5 then 
		SystemNotice ( role , "\211 \194\224\241 \237\229\242 \241\226\238\225\238\228\237\251\245 \238\247\234\238\226 \245\224\240\224\234\242\229\240\232\241\242\232\234. \209\225\240\238\241 \237\229\226\238\231\236\238\230\229\237" )
		UseItemFailed ( role )
		return
	end
	local dex_dif = 1
	local ap_dif = 1
	dex = dex - dex_dif
	ap = ap + 1
	
	SystemNotice ( role , "\193\251\235\238 \241\225\240\238\248\229\237\238 1 \238\247\234\238 \242\238\247\237\238\241\242\232" )

	SetCharaAttr ( dex , role , ATTR_BDEX )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--Книга сброса духа (ID 0903)
function ItemUse_XD_Sta1 ( role , Item )
	local sta = GetChaAttr( role , ATTR_BSTA )
	local ap = GetChaAttr( role , ATTR_AP )
	if sta <= 5 then 
		SystemNotice ( role , "\211 \194\224\241 \237\229\242 \241\226\238\225\238\228\237\251\245 \238\247\234\238\226 \245\224\240\224\234\242\229\240\232\241\242\232\234. \209\225\240\238\241 \237\229\226\238\231\236\238\230\229\237" )
		UseItemFailed ( role )
		return
	end
	local sta_dif = 1
	local ap_dif = 1
	sta = sta - sta_dif
	ap = ap + 1

	SystemNotice ( role , "\193\251\235\238 \241\225\240\238\248\229\237\238 1 \238\247\234\238 \228\243\245\224" )

	SetCharaAttr ( sta , role , ATTR_BSTA )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--------------------------------------------------------------------------------------------------
--Эликсиры повышающие статы
--------------------------------------------------------------------------------------------------
--Эликсир  Обезьяны (ID 3101)
function ItemUse_SPLhyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSLQQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"\221\244\244\229\234\242\251 \238\242 \228\240\243\227\232\245 \231\229\235\232\233 \237\229 \241\238\247\232\242\224\254\242\241\255")
		UseItemFailed ( role )
		return
	end
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSMJQH , statelv , statetime )

end

--Эликсир Орла (ID 3103)
function ItemUse_SPYyyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"\221\244\244\229\234\242\251 \238\242 \228\240\243\227\232\245 \231\229\235\232\233 \237\229 \241\238\247\232\242\224\254\242\241\255")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSLQQH , statelv , statetime )

end

--Зелье быка (ID 0895)
function ItemUse_SPMnyj( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"\221\244\244\229\234\242\251 \238\242 \228\240\243\227\232\245 \231\229\235\232\233 \237\229 \241\238\247\232\242\224\254\242\241\255")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSTZQH , statelv , statetime )

end

--Зелье души (ID 0896)
function ItemUse_SPSlyj( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end


	if OtherStateLv > 0 then
		SystemNotice(role ,"\221\244\244\229\234\242\251 \238\242 \228\240\243\227\232\245 \231\229\235\232\233 \237\229 \241\238\247\232\242\224\254\242\241\255")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSJSQH , statelv , statetime )

end

--Зелье льва (ID 0897)
function ItemUse_SPXsyj( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSJSQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"\221\244\244\229\234\242\251 \238\242 \228\240\243\227\232\245 \231\229\235\232\233 \237\229 \241\238\247\232\242\224\254\242\241\255")
		UseItemFailed ( role )
		return
	end	

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSLLQH , statelv , statetime )

end

--------------------------------------------------------------------------------------------------
--Очищающий\Композиционный катализаторы
--------------------------------------------------------------------------------------------------
--Очищающий самоцвет (ID 3074)
function ItemUse_LSDZG ( role , Item )
	local statelv = 4
	local statetime = 60
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_JLGLJB , statelv , statetime )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
end

--Композиционный катализатор (ID 3075)
function ItemUse_HSDZG ( role , Item )
	local statelv = 2
	local statetime = 60
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_HCGLJB , statelv , statetime )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
end

--------------------------------------------------------------------------------------------------
--Новогодние предметы\камни желаний\коробочки
--------------------------------------------------------------------------------------------------
--Потерянная рождественская шапка (ID 3888)
function ItemUse_DSSDM ( role , Item )
	local statelv = 1
	local statetime = 300
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSFYS , statelv , statetime )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
end

--Злобный рог (ID 3896)
function ItemUse_XEZJ ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKZDYS , statelv , statetime )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
end

--Боевой строй (ID 0851)
function ItemUse_XEZJB ( role , Item )
	Rem_State_StarUnnormal ( role )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_KUANGZ , statelv , statetime )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
end

--Новогодняя конфета (ID3899)
function ItemUse_SDTG ( role , Item )
	
	local hp = GetChaAttr(role, ATTR_HP) 
	local sp = GetChaAttr(role, ATTR_SP) 
	
	hp_resume = 30 
	sp_resume = 10
	
	hp = hp + hp_resume 
	sp = sp + sp_resume 

	mxhp = GetChaAttr(role,ATTR_MXHP) 
	mxsp = GetChaAttr(role,ATTR_MXSP) 

	if hp > mxhp then 
		hp = mxhp 
	end 

	if sp > mxsp then 
		sp = mxsp 
	end 

	SetCharaAttr(hp, role, ATTR_HP)
	SetCharaAttr(sp, role, ATTR_SP) 

end

--Рождественский носок (ID 3895)
function ItemUse_SDWZBOX ( role , Item )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	
	if CheckDateNum < 122423  then
		SystemNotice ( role , "\207\238\230\224\235\243\233\241\242\224, \225\243\228\252\242\229 \242\229\240\239\229\235\232\226\251. \209\224\237\242\224 \202\235\224\243\241 \225\243\228\229\242 \238\247\229\237\252 \239\243\237\234\242\243\224\235\229\237 \241 \226\224\248\232\236 \239\238\228\224\240\234\238\236. \207\238\230\224\235\243\233\241\242\224, \232\241\239\238\235\252\231\243\233\242\229 \239\240\229\228\236\229\242 \236\229\230\228\243 24-\251\236 \228\229\234\224\225\240\255, 8.00 \243\242\240\224 \232 25-\251\236 \228\229\234\224\225\240\255, 8.00 \226\229\247\229\240\224" )
		UseItemFailed ( role )
		return
	end
	
	if CheckDateNum > 122506 then
		SystemNotice ( role , "\209\224\237\242\224 \202\235\224\243\241 \243\229\245\224\235. \207\238\239\251\242\224\233\242\229\241\252 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242 \226 \241\235\229\228\243\254\249\229\236 \227\238\228\243" )
		UseItemFailed ( role )
		return
	end
	
	local item_type = BaoXiang_SDWZBOX
	local item_type_rad = BaoXiang_SDWZBOX_Rad 
	local item_type_count = BaoXiang_SDWZBOX_Count 
	local maxitem = BaoXiang_SDWZBOX_Mxcount
	local item_quality = BaoXiang_SDWZBOX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
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
end

--Подарочная коробочка (ID 3898)
function ItemUse_SDLHBOX ( role , Item )
	local Check = math.random ( 1, 100 )
	if Check <= 35 then

		local exp = Exp ( role )
		local exp_dif = math.random ( 100 , 300 )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			exp_dif = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + exp_dif
	
		SetCharaAttr ( exp_new , role , ATTR_CEXP )

	elseif Check > 35 and Check <= 70 then
		local Money_add = math.random ( 200 , 600 )
		AddMoney ( role , 0 , Money_add )
	else
		local item_type = BaoXiang_SDLHBOX
		local item_type_rad = BaoXiang_SDLHBOX_Rad 
		local item_type_count = BaoXiang_SDLHBOX_Count 
		local maxitem = BaoXiang_SDLHBOX_Mxcount
		local item_quality = BaoXiang_SDLHBOX_Qua
		local General = 0  
		local ItemId = 0 
		
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		
		if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
			UseItemFailed ( role )
			return
		end
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
	end
end

--Счастливый мешочек (ID 3901)
function ItemUse_HYBOX ( role , Item )
	AddMoney ( role , 0 , 20000 )
end 

--Счастливый мешочек (ID 3902)
function ItemUse_FGBOX ( role , Item )
	
	AddMoney ( role , 0 , 88 )	
	local item_type = BaoXiang_FGBOX 
	local item_type_rad = BaoXiang_FGBOX_Rad 
	local item_type_count = BaoXiang_FGBOX_Count 
	local maxitem = BaoXiang_FGBOX_Mxcount	
	local item_quality = BaoXiang_FGBOX_Qua
	local General = 0  
	local ItemId = 0 

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
	GiveItem ( role , 0 , 3904 , 1 , item_quality )

	
	if ItemId == 878 then
		local itemname = GetItemName ( ItemId ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = cha_name.." \238\242\234\240\251\226\224\229\242 \209\247\224\241\242\235\232\226\251\233 \236\229\248\238\247\229\234 \232 \239\238\235\243\247\224\229\242  "..itemname 
		Notice ( message )
	end
end 

--Большой пакет (ID 3903)
function ItemUse_HYUNBOX ( role , Item )
	
	AddMoney ( role , 0 , 888 )
	local item_type = BaoXiang_HYUNBOX 
	local item_type_rad = BaoXiang_HYUNBOX_Rad 
	local item_type_count = BaoXiang_HYUNBOX_Count 
	local maxitem = BaoXiang_HYUNBOX_Mxcount
	local item_quality = BaoXiang_HYUNBOX_Qua
	local General = 0  
	local ItemId = 0 

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
	GiveItem ( role , 0 , 3904 , 1 , item_quality )

	local GoodItem = {}
	GoodItem[0] = 3844
	GoodItem[1] = 3845
	GoodItem[2] = 899
	GoodItem[3] = 900
	GoodItem[4] = 901
	GoodItem[5] = 902
	GoodItem[6] = 903

	local Good_C = 0
	for Good_C = 0 , 6 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.." \238\242\234\240\251\226\224\229\242 a \193\238\235\252\248\238\233 \239\224\234\229\242 \232 \239\238\235\243\247\224\229\242 "..itemname
			Notice ( message )
		end
	end
end 

--Темный камень желаний (ID 3905)
function ItemUse_ADBOX ( role , Item )
	local item_type = BaoXiang_ADBOX 
	local item_type_rad = BaoXiang_ADBOX_Rad 
	local item_type_count = BaoXiang_ADBOX_Count 
	local maxitem = BaoXiang_ADBOX_Mxcount
	local item_quality = BaoXiang_ADBOX_Qua
	local General = 0  
	local ItemId = 0 

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

end 

--Искрящийся камень желаний (ID 3906)
function ItemUse_SGBOX ( role , Item )
	local item_type = BaoXiang_SGBOX 
	local item_type_rad = BaoXiang_SGBOX_Rad 
	local item_type_count = BaoXiang_SGBOX_Count 
	local maxitem = BaoXiang_SGBOX_Mxcount
	local item_quality = BaoXiang_SGBOX_Qua
	local General = 0  
	local ItemId = 0 

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
	
	GoodItem[0] = 879
	GoodItem[1] = 880
	GoodItem[2] = 881
	GoodItem[3] = 882
	GoodItem[4] = 883
	GoodItem[5] = 884
	GoodItem[6] = 885
	GoodItem[7] = 887
	GoodItem[8] = 7
	GoodItem[9] = 42
	GoodItem[10] = 18
	GoodItem[11] = 1375
	GoodItem[12] = 1384
	GoodItem[13] = 1394
	GoodItem[14] = 1411
	GoodItem[15] = 1421
	GoodItem[16] = 4198
	GoodItem[17] = 4200
	GoodItem[18] = 4202
	GoodItem[19] = 4204
	GoodItem[20] = 4206
	GoodItem[21] = 4208
	

	local Good_C = 0
	for Good_C = 0 , 21 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.."\232\241\239\238\235\252\231\229\242 \200\241\234\240\255\249\232\233\241\255 \234\224\236\229\237\252 \230\229\235\224\237\232\233 \232 \239\238\235\243\247\224\229\242 "..itemname
			Notice ( message )
		end
	end
end 

--Коробочка феи (ID 0262)
function ItemUse_JingLingBOX ( role, Item )
	local item_type = BaoXiang_JingLingBOX 
	local item_type_rad = BaoXiang_JingLingBOX_Rad 
	local item_type_count = BaoXiang_JingLingBOX_Count 
	local maxitem = BaoXiang_JingLingBOX_Mxcount
	local item_quality = BaoXiang_JingLingBOX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \202\238\240\238\225\238\247\234\243 \212\229\233")
		UseItemFailed ( role )
		return
	end

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
end

--Гьоза (ID 3909)
function ItemUse_SSSJ ( role , Item )

  	local hp = GetChaAttr(role, ATTR_HP) 
	local mxhp = GetChaAttr(role,ATTR_MXHP) 	
	hp = hp + 0.3*mxhp 

	if hp > mxhp then 
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)

end

--Суперконфета на палочке (ID 3910)
function ItemUse_CJTHL ( role , Item )
      
	GiveItem ( role , 0 , 3911 , 1 , 5 ) 	
  	local hp = GetChaAttr(role, ATTR_HP) 
	local sp = GetChaAttr(role, ATTR_SP) 
	
	hp_resume = 100 
	sp_resume = 100
	
	hp = hp + hp_resume 
	sp = sp + sp_resume 

	mxhp = GetChaAttr(role,ATTR_MXHP) 
	mxsp = GetChaAttr(role,ATTR_MXSP) 

	if hp > mxhp then 
		hp = mxhp 
	end 

	if sp > mxsp then 
		sp = mxsp 
	end 

	SetCharaAttr(hp, role, ATTR_HP)
	SetCharaAttr(sp, role, ATTR_SP)    


end

--Полный доспех (ID 0852)
function ItemUse_Denglong ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_DENGLONG , statelv , statetime )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
end

--------------------------------------------------------------------------------------------------
--Роза\Шоколад для влюбленных
--------------------------------------------------------------------------------------------------
	
--Роза (ID 3343)
function ItemUse_MeiGui ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_MEIGUI , statelv , statetime )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
end

--Шоколад для влюбленных (ID 3344)
function ItemUse_BZ ( role , Item )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local Cha_Boat = GetCtrlBoat ( role )

	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end
end 

--------------------------------------------------------------------------------------------------
--Сундуки
--------------------------------------------------------------------------------------------------
--Сундук Килин (OD 0192)
function ItemUse_SaintCloth ( role , Item ) 
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"\205\229\238\225\245\238\228\232\236\238 4 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \232\237\226\229\237\242\224\240\229, \247\242\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234 \202\232\235\232\237")
		UseItemFailed ( role )
		return
	end
	if cha_type == 4 then 
		GiveItem ( cha , 0 , 828 , 1 , 0 )	
	end 
	GiveItem ( cha , 0 , 825 , 1 , 0 )	
	GiveItem ( cha , 0 , 826 , 1 , 0 )	
	GiveItem ( cha , 0 , 827 , 1 , 0 )	
end 

-- Ящик с древними доспехами (Ночь) (ID 0209)
function ItemUse_SCBoxYXTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 2 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \241\243\237\228\243\234 \237\243\230\237\238 3 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end

	if cha_type == 1 then
		GiveItem ( cha , 0 , 0395 , 1 , 95 )	
		GiveItem ( cha , 0 , 0587 , 1 , 95 )	
		GiveItem ( cha , 0 , 0747 , 1 , 95 )	
	else
		SystemNotice(role ,"\208\224\231\236\229\240 \242\229\235\224 \237\229 \241\238\238\242\226\229\242\241\242\226\243\229\242. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
end

-- Ящик с древними доспехами (Геркулес) (ID 0210)
function ItemUse_SCBoxLSTZ ( role , Item )		
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \241\243\237\228\243\234 \237\243\230\237\238 3 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	if cha_type == 2 then
		GiveItem ( cha , 0 , 0397 , 1 , 95 )
		GiveItem ( cha , 0 , 0829 , 1 , 95 )
		GiveItem ( cha , 0 , 0603 , 1 , 95 )
	else
		SystemNotice(role ,"\208\224\231\236\229\240 \242\229\235\224 \237\229 \241\238\238\242\226\229\242\241\242\226\243\229\242. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end

end

-- Ящик с древними доспехами (Отпрыск) (ID 0211)
function ItemUse_SCBoxHYTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 2 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \241\243\237\228\243\234 \237\243\230\237\238 3 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end

	if cha_type == 1 or cha_type == 3 then
		GiveItem ( cha , 0 , 0399 , 1 , 95 )
		GiveItem ( cha , 0 , 0589 , 1 , 95 )
		GiveItem ( cha , 0 , 0749 , 1 , 95 )
	else
		SystemNotice(role ,"\208\224\231\236\229\240 \242\229\235\224 \237\229 \241\238\238\242\226\229\242\241\242\226\243\229\242. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end

end

--Реликтовый бронированный ящик (мудрый/панда) (ID 0212)
function ItemUse_SCBoxFYSTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \241\243\237\228\243\234 \237\243\230\237\238 4 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	
	if cha_type == 3 then
		GiveItem ( cha , 0 , 0401 , 1 , 95 )
		GiveItem ( cha , 0 , 0591 , 1 , 95 )
		GiveItem ( cha , 0 , 0751 , 1 , 95 )
	elseif cha_type == 4 then
		GiveItem ( cha , 0 , 0403 , 1 , 95 )
		GiveItem ( cha , 0 , 0593 , 1 , 95 )
		GiveItem ( cha , 0 , 0753 , 1 , 95 )
		GiveItem ( cha , 0 , 2218 , 1 , 95 )
	else
		SystemNotice(role ,"\208\224\231\236\229\240 \242\229\235\224 \237\229 \241\238\238\242\226\229\242\241\242\226\243\229\242. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
end

--Ящик с древними доспехами (Фея/Золотая рыбка) (ID 0213)
function ItemUse_SCBoxSZZTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \241\243\237\228\243\234 \237\243\230\237\238 4 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	
	if cha_type == 3 then
		GiveItem ( cha , 0 , 0405 , 1 , 95 )
		GiveItem ( cha , 0 , 0595 , 1 , 95 )
		GiveItem ( cha , 0 , 0755 , 1 , 95 )
	elseif cha_type == 4 then
		GiveItem ( cha , 0 , 0407 , 1 , 95 )
		GiveItem ( cha , 0 , 0597 , 1 , 95 )
		GiveItem ( cha , 0 , 0757 , 1 , 95 )
		GiveItem ( cha , 0 , 2220 , 1 , 95 )
	else
		SystemNotice(role ,"\208\224\231\236\229\240 \242\229\235\224 \237\229 \241\238\238\242\226\229\242\241\242\226\243\229\242. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
end

--Ящик с древними доспехами (Прилив/Дракон) (ID 0214)
function ItemUse_SCBoxHHSTZ ( role , Item )	
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \241\243\237\228\243\234 \237\243\230\237\238 4 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	
	if cha_type == 1 or cha_type == 3 then
		GiveItem ( cha , 0 , 0409 , 1 , 95 )
		GiveItem ( cha , 0 , 0599 , 1 , 95 )
		GiveItem ( cha , 0 , 0759 , 1 , 95 )
	elseif cha_type == 4 then
		GiveItem ( cha , 0 , 0412 , 1 , 95 )
		GiveItem ( cha , 0 , 0601 , 1 , 95 )
		GiveItem ( cha , 0 , 0761 , 1 , 95 )
		GiveItem ( cha , 0 , 2222 , 1 , 95 )
	else
		SystemNotice(role ,"\208\224\231\236\229\240 \242\229\235\224 \237\229 \241\238\238\242\226\229\242\241\242\226\243\229\242. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
end

--Ящик с древним оружием (Чудеса) (ID 0215)
function ItemUse_SCBoxRYBZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0109 , 1 , 95 )
end

--Ящик с древним оружием (Бич демонов) (ID 0216)
function ItemUse_SCBoxXMC ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0111 , 1 , 95 )
end

--Ящик с древним оружием (Драко) (ID 0217)
function ItemUse_SCBoxLQJ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0113 , 1 , 95 )
end

--Ящик с древним оружием (Утёс) (ID 0218)
function ItemUse_SCBoxLYJ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0115 , 1 , 95 )
end

--Ящик с древним оружием (Радуга) (ID 0219)
function ItemUse_SCBoxFHG ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0117 , 1 , 95 )
end

--Ящик с древним оружием (Метеор) (ID 0220)
function ItemUse_SCBoxLXHZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0119 , 1 , 95 )
end

--Реликтовый оружейный ящик (вицеральный) (ID 0221)
function ItemUse_SCBoxYCJ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0150 , 1 , 95 )
end

--------------------------------------------------------------------------------------------------
--Старый пергамент\Новый пергамент, карты сокровищ
--------------------------------------------------------------------------------------------------

--Старый пергамент (ID 1092)
function ItemUse_Map_YPJ ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"\211 \194\224\241 \228\238\235\230\229\237 \225\251\242\252 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 1093 )
	if Has_GoldenMap >= 1 then
		SystemNotice ( role , "\194\251 \236\238\230\229\242\229 \239\240\232\237\229\241\242\232 \242\238\235\252\234\238 1 \209\242\224\240\243\254 \234\224\240\242\243 \239\232\240\224\242\241\234\232\245 \241\238\234\240\238\226\232\249 \231\224 \238\228\232\237 \240\224\231" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1093 , 1 , 0 )
end

--Новый пергамент (ID 0684)
function ItemUse_Map_JLBYPJ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"\211 \194\224\241 \228\238\235\230\229\237 \225\251\242\252 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 682 )
	local lv= GetChaAttr(role, ATTR_LV) 
	if Has_GoldenMap >= 1 then
		SystemNotice ( role , "\194\251 \236\238\230\229\242\229 \239\240\232\237\229\241\242\232 \242\238\235\252\234\238 1 \202\224\240\242\243 \202\224\240\232\225\241\234\232\245 \241\238\234\240\238\226\232\249 \231\224 \238\228\232\237 \240\224\231" )
		UseItemFailed ( role )
		return
	end
	if lv <15 or  lv >40 then
		SystemNotice ( role , "\210\238\235\252\234\238 \239\229\240\241\238\237\224\230\232 \236\229\230\228\243 15 \232 40 \243\240\238\226\237\255\236\232 \236\238\227\243\242 \232\241\239\238\235\252\231\238\226\224\242\252 \205\238\226\251\233 \207\229\240\227\224\236\229\237\242" )
		UseItemFailed ( role )
		return	
	end
	GiveItem ( role , 0 , 682 , 1 , 0 )
end

--Старая карта пиратских сокровищ ID 1093)
function ItemUse_GoldenMap ( role , Item )
 	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"\211 \194\224\241 \228\238\235\230\229\237 \225\251\242\252 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 1093 )
	if Has_GoldenMap >= 2 then
		SystemNotice ( role , "\211 \226\224\241 \225\238\235\252\248\229 \247\229\236 \238\228\237\224 \209\242\224\240\224\255 \234\224\240\242\224 \239\232\240\224\242\241\234\232\245 \241\238\234\240\238\226\232\249. \207\238\232\241\234\232 \241\238\234\240\238\226\232\249\224 \237\229 \243\226\229\237\247\224\235\232\241\252 \243\241\239\229\245\238\236" )
		UseItemFailed ( role )
		return
	end
	local Item = GetChaItem2 ( role , 2 , 1093 )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
	local pos_x = Item_MAXURE
	local pos_y = Item_MAXENERGY
	local Themap = Item_URE
	
	local MapList = { }
	
	MapList [0] = "NoMap"
	MapList [1] = "garner"
	MapList [2] = "magicsea"
	MapList [3] = "darkblue"

	local MapNameList = { }
	
	MapNameList [0] = "No map"
	MapNameList [1] = "Ascaron"
	MapNameList [2] = "Magical Ocean"
	MapNameList [3] = "Deep Blue"
	if pos_x == 0 or pos_y == 0 or Themap == 0 then
		pos_x , pos_y , Themap = GetTheMapPos ( role , 1 )
		Item_MAXURE = pos_x
		Item_URE = Themap
		Item_MAXENERGY = pos_y
		
		SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
		SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
	end
	local GetPos = CheckGetMapPos ( role , pos_x , pos_y , MapList[Themap] )
	if GetPos == 0 then
		SystemNotice ( role , "\209\238\234\240\238\226\232\249\229 \241\239\240\255\242\224\237\238 \226 "..MapNameList[Themap].." \207\238 \234\238\238\240\228\232\237\224\242\224\236 ("..pos_x..","..pos_y..")" )
	
		UseItemFailed ( role )
		return
	elseif GetPos == 1 then
		local getrandom = math.random ( 1 , 3 )
		if getrandom == 1 then
			GiveGoldenMapItem ( role )
		else
			SystemNotice ( role , "\207\238\245\238\230\229, \247\242\238 \194\251 \237\232\247\229\227\238 \237\229 \237\224\248\235\232. \207\238\239\240\238\225\243\233\242\229 \239\238\232\241\234\224\242\252 \240\255\228\238\236" )
			UseItemFailed ( role )
			return
		end
	end
end

--Карта Карибских сокровищ (ID 0682)
function ItemUse_JLB_GoldenMap ( role , Item )
 	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"\211 \194\224\241 \228\238\235\230\229\237 \225\251\242\252 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end 
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv <15 or  lv >40 then
		SystemNotice ( role , "\207\229\240\241\238\237\224\230\232 \236\229\237\252\248\229, \247\229\236 \243\240\238\226\237\255 15 \232\235\232 \226\251\248\229 \247\229\236 \243\240\238\226\237\255 40 \237\229 \236\238\227\243\242 \232\241\239\238\235\252\231\238\226\224\242\252 \253\242\243 \234\224\240\242\243 \241\238\234\240\238\226\232\249" )
		UseItemFailed ( role )
		return	
	end
	local Has_GoldenMap = CheckBagItem ( role , 682 )
	if Has_GoldenMap >= 2 then
		SystemNotice ( role , "\211 \194\224\241 \236\238\230\229\242 \242\238\235\252\234\238 \225\251\242\252 1 \234\224\240\242\224 \241\238\234\240\238\226\232\249 \226 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \232\241\234\224\242\252 \241\238\234\240\238\226\232\249\229. \207\238\230\224\235\243\233\241\242\224 \243\228\224\235\232\242\229 \232\235\232 \239\238\235\238\230\232\242\229 \226 \225\224\237\234 \238\241\242\224\235\252\237\251\229" )
		UseItemFailed ( role )
		return
	end
	local Item = GetChaItem2 ( role , 2 , 682 )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
	local pos_x = Item_MAXURE
	local pos_y = Item_MAXENERGY
	local Themap = Item_URE
	local MapList = { }	
	MapList [0] = "NoMap"
	MapList [1] = "jialebi"
	local MapNameList = { }
	MapNameList [0] = "No map"
	MapNameList [1] = "Treasure Gulf"
	if pos_x == 0 or pos_y == 0 or Themap == 0 then
		pos_x , pos_y , Themap = GetTheMapPos_JLB ( role , 1 )	
		Item_MAXURE = pos_x
		Item_URE = Themap
		Item_MAXENERGY = pos_y
		SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
		SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
	end
	local GetPos = CheckGetMapPos ( role , pos_x , pos_y , MapList[Themap] )
	if GetPos == 0 then
		SystemNotice ( role , "\209\238\234\240\238\226\232\249\229 \241\239\240\255\242\224\237\238 \226 "..MapNameList[Themap].." \207\238 \234\238\238\240\228\232\237\224\242\224\236 ("..pos_x..","..pos_y..")" )
		UseItemFailed ( role )
		return
	elseif GetPos == 1 then
		local getrandom = math.random ( 1 , 3 )
		if getrandom == 1 then
			GiveGoldenMapItem_JLB ( role )
		else
			SystemNotice ( role , "\207\238\245\238\230\229, \247\242\238 \194\251 \237\232\247\229\227\238 \237\229 \237\224\248\235\232. \207\238\239\240\238\225\243\233\242\229 \239\238\232\241\234\224\242\252 \240\255\228\238\236" )
			UseItemFailed ( role )
			return
		end
	end
end

--------------------------------------------------------------------------------------------------
--Разное
--------------------------------------------------------------------------------------------------

--Всемогущий камень (ID 3240)
function ItemUse_BirthCake ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		local attr_ap = Attr_ap( role )
		local ap_extre = 3
		attr_ap = attr_ap + ap_extre 
		SetCharaAttr( attr_ap, role, ATTR_AP )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end

--Журнал "Счастливый отдых" (ID 0853)
function ItemUse_HappyBook ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local dif_exp_one = DEXP[charLv+1]
	local dif_exp_three = DEXP[charLv+3]
	local dif_exp_five = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )
	local dif_exp_half = (DEXP[charLv+1] - DEXP[charLv])*0.5 +  Exp_star +10
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.3331  +  Exp_star + 10
	local dif_exp_thalf_b = (DEXP[charLv+1] - DEXP[charLv])*0.2  +  Exp_star + 10
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	elseif charLv>=90 and charLv<=100 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_one )
	elseif charLv>=100 and charLv<=110 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_half )
	elseif charLv>=110 and charLv<=120 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv>=120 and charLv<=130 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_b )
	elseif charLv>=130 then
		SystemNotice( role , "\194\224\248 \243\240\238\226\229\237\252 \241\235\232\248\234\238\236 \226\251\241\238\234\232\233, \247\242\238\225\251 \232\241\239\238\235\252\231\238\226\224\242\252 \253\242\238\242 \239\240\229\228\236\229\242" )
		UseItemFailed ( role )
		return
	end
end

--Развитие феи (ID 3335)
function ItemUse_MarchElf ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		local cha_type = GetChaTypeID ( role )
		if cha_type == 3 or cha_type == 4 then
			AddState( role , role , STATE_MarchElf , statelv , statetime )
		else
			SystemNotice ( role , "\208\224\231\226\232\242\232\229 \244\229\232 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238 \242\238\235\252\234\238 \230\229\237\241\234\232\236 \239\238\235\238\236" )
			UseItemFailed ( role )
			return
		end
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end

end

--Зелье ускорения (ID 3339)
function ItemUse_MspdYS ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )


	if Cha_Boat ==  nil then
		AddState( role , role , STATE_YSMspd , statelv , statetime )
		SystemNotice( role , "A" )

	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		return
	end

end

--Треугольный парус (ID 3340)
function ItemUse_SanJiaoFan ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_YSBoatMspd , statelv , statetime )
	else
		SystemNotice( role , "\204\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238 \242\238\235\252\234\238 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end

end

--Высококачественный доспех (ID 3341)
function ItemUse_GJZhuangJia ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_YSBoatDEF , statelv , statetime )
	else
		SystemNotice( role , "\204\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238 \242\238\235\252\234\238 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end

end

--------------------------------------------------------------------------------------------------
--Жребии
--------------------------------------------------------------------------------------------------

--Жребий фортуны (ID 3087)
function ItemUse_SuanmingMoney ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		
		
		local Has_GoldenMap = CheckBagItem ( role , 3336 )
		if Has_GoldenMap >= 1 then
			SystemNotice ( role , "\200\241\239\238\235\252\231\243\229\242\241\255 \204\232\241\242\232\247\229\241\234\232\233 \202\235\229\226\229\240" )
			SuanmingTeshu_Money ( role )
			DelBagItem( role , 3336 , 1 )
		else
			Suanming_Money ( role )
		end
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end

	
end

--Счастливый жребий (ID 3086)
function ItemUse_SuanmingWork ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		local lv = Lv ( role )
		local exp = Exp(role) 
		local clexp = GetChaAttrI ( role , ATTR_CLEXP )
		if exp < clexp then
			SystemNotice ( role , "\206\239\251\242 \237\232\230\229 \247\229\236 \243\240\238\226\229\237\252. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \230\240\229\225\232\233" )
			UseItemFailed ( role )
			return
		end
		
		local Has_GoldenMap = CheckBagItem ( role , 3336 )
		if Has_GoldenMap >= 1 then
			SystemNotice ( role , "\200\241\239\238\235\252\231\243\229\242\241\255 \204\232\241\242\232\247\229\241\234\232\233 \202\235\229\226\229\240" )
			SuanmingTeshu_Work ( role )
			DelBagItem( role , 3336 , 1 )	
		else
			Suanming_Work ( role )
		end
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
end

--------------------------------------------------------------------------------------------------
--Ингредиенты защитного средства	
--------------------------------------------------------------------------------------------------

--Трут (ID 4259)
function ItemUse_HuoRongSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_BDJ )
		AddState ( role , role , STATE_TTISW , 1 , 300 )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	
end

--Проклятая кость (ID 4260)
function ItemUse_ZhouGUSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_ZZZH )
		AddState ( role , role , STATE_TTISW , 2 , 300 )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	
end

--Ость (ID 4261)
function ItemUse_ShuiMangSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_CRXSF )
		AddState ( role , role , STATE_TTISW , 3 , 300 )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	
end

--Амулет (ID 4249)
function ItemUse_HuFuSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_JSDD )
		AddState ( role , role , STATE_TTISW , 4 , 1200 )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	
end

--------------------------------------------------------------------------------------------------
--Рюкзаки, расширяющие инвентарь	
--------------------------------------------------------------------------------------------------

--Рюкзак с 28 ячейками (ID3088)
function ItemUse_28BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 28 then
		SystemNotice(role ,"Нельзя использовать несколько раз ")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 

--Рюкзак с 32 ячейками ID 3089)
function ItemUse_32BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 32 then
		SystemNotice(role ,"\205\229\235\252\231\255 \232\241\239\238\235\252\231\238\226\224\242\252 \237\229\241\234\238\235\252\234\238 \240\224\231")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 24 then
		SystemNotice(role ,"\207\238\230\224\235\243\233\241\242\224, \240\224\241\248\232\240\252\242\229 \241\237\224\247\224\235\238 \232\237\226\229\237\242\224\240\252 \237\224 28 \255\247\229\229\234")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 

--Рюкзак с 36 ячейками (ID 3090)
function ItemUse_36BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 36 then
		SystemNotice(role ,"\205\229\235\252\231\255 \232\241\239\238\235\252\231\238\226\224\242\252 \237\229\241\234\238\235\252\234\238 \240\224\231")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 28 then
		SystemNotice(role ,"\207\238\230\224\235\243\233\241\242\224, \240\224\241\248\232\240\252\242\229 \241\237\224\247\224\235\238 \232\237\226\229\237\242\224\240\252 \237\224 32 \255\247\229\233\234\232")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 

--Рюкзак с 40 ячейками (ID 3091)
function ItemUse_40BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 40 then
		SystemNotice(role ,"\205\229\235\252\231\255 \232\241\239\238\235\252\231\238\226\224\242\252 \237\229\241\234\238\235\252\234\238 \240\224\231")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 32 then
		SystemNotice(role ,"\207\238\230\224\235\243\233\241\242\224, \240\224\241\248\232\240\252\242\229 \241\237\224\247\224\235\238 \232\237\226\229\237\242\224\240\252 \237\224 36 \255\247\229\229\234")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 

--Рюкзак с 44 ячейками (ID 3092)
function ItemUse_44BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 44 then
		SystemNotice(role ,"\205\229\235\252\231\255 \232\241\239\238\235\252\231\238\226\224\242\252 \237\229\241\234\238\235\252\234\238 \240\224\231")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 36 then
		SystemNotice(role ,"\207\238\230\224\235\243\233\241\242\224, \240\224\241\248\232\240\252\242\229 \241\237\224\247\224\235\238 \232\237\226\229\237\242\224\240\252 \237\224 40 \255\247\229\229\234")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 

--Рюкзак с 48 ячейками (ID 3093)
function ItemUse_48BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 48 then
		SystemNotice(role ,"\205\229\235\252\231\255 \232\241\239\238\235\252\231\238\226\224\242\252 \237\229\241\234\238\235\252\234\238 \240\224\231")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 40 then
		SystemNotice(role ,"\207\238\230\224\235\243\233\241\242\224, \240\224\241\248\232\240\252\242\229 \241\237\224\247\224\235\238 \232\237\226\229\237\242\224\240\252 \237\224 44 \255\247\229\233\234\232")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 

--Мороженое (ID 3126)
function ItemUse_BQ ( role , Item )

end 

--------------------------------------------------------------------------------------------------
--Питание, фрукты для фей, книги боевых скиллов для фей
--------------------------------------------------------------------------------------------------
--Питание феи (ID 0227)
function ItemUse_SiLiao ( role , Item , Item_Traget )
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end      
		local Item_Traget_URE=GetItemAttr(Item_Traget,ITEMATTR_URE)
		local Item_Traget_MAXURE=GetItemAttr(Item_Traget,ITEMATTR_MAXURE)
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Num = 2500

		if Item_type == 57 and Item_Traget_Type == 59 then
				if Item_Traget_URE < Item_Traget_MAXURE then
				   Give_ElfURE ( role , Item_Traget , Num )
   	 			else
                    SystemNotice(role , "\212\229\255 \241\251\242\224" ) 
					UseItemFailed ( role )
					return
				end
		end 

end

--Пища фей (ID 3152)
function ItemUse_CWSiLiao ( role , Item , Item_Traget )
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end      
		local Item_Traget_URE=GetItemAttr(Item_Traget,ITEMATTR_URE)
		local Item_Traget_MAXURE=GetItemAttr(Item_Traget,ITEMATTR_MAXURE)
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Num = 250

		if Item_type == 57 and Item_Traget_Type == 59 then
				if Item_Traget_URE < Item_Traget_MAXURE then
				   Give_ElfURE ( role , Item_Traget , Num )
   	 			else
                    SystemNotice(role , "\212\229\255 \241\251\242\224" ) 
					UseItemFailed ( role )
					return
				end
		end 

end

--Фрукт снежного дракона (ID - 0222)
function ItemUse_LS_longguo ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "После 51 лвл невозможно использовать фрукт. " )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
		local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
		local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
		local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
		local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
		local elf_lvl = str + con + agi + dex + sta
		if elf_lvl >= 51 and elf_lvl <= 99999999999 then
			SystemNotice(role , "После 51 лвл невозможно использовать фрукт. " )
			UseItemFailed ( role )
			return
		end
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget ) 
				if Check_Exp == 0 then
					SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224. \205\229\226\238\231\236\238\230\237\238 \239\238\234\238\240\236\232\242\252 \244\229\254 \244\240\243\234\242\238\236 \209\237\229\230\237\238\227\238 \196\240\224\234\238\237\224" ) 
					UseItemFailed ( role )
				else
				   Lvup_Str ( role , Item_Num , Item_Traget )
				end 
		end 
end

--Ледяная слива (ID 0223)
function ItemUse_LS_koumei ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
		local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
		local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
		local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
		local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
		local elf_lvl = str + con + agi + dex + sta
		if elf_lvl >= 51 and elf_lvl <= 99999999999 then
			SystemNotice(role , "После 51 лвл невозможно использовать фрукт. " )
			UseItemFailed ( role )
			return
		end
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 then
					SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224. \205\229\226\238\231\236\238\230\237\238 \239\238\234\238\240\236\232\242\252 \244\229\254 \203\229\228\255\237\238\233 \241\235\232\226\238\233" ) 
					UseItemFailed ( role )
				else
				   Lvup_Agi ( role , Item_Num , Item_Traget )
				end 
		end 
end

--Фишфлос с Зефира (ID 0224)
function ItemUse_LS_yusi ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
		local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
		local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
		local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
		local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
		local elf_lvl = str + con + agi + dex + sta
		if elf_lvl >= 51 and elf_lvl <= 99999999999 then
			SystemNotice(role , "После 51 лвл невозможно использовать фрукт.  " )
			UseItemFailed ( role )
			return
		end
		if Item_type == 58 and Item_Traget_Type == 59  then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 then
					SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224. \205\229\226\238\231\236\238\230\237\238 \239\238\234\238\240\236\232\242\252 \244\229\254 \212\232\248\244\235\238\241\238\236 \241 \199\229\244\232\240\224" ) 
					UseItemFailed ( role )
				else
				   Lvup_Dex ( role , Item_Num , Item_Traget )
				end 
		end 
end

--Серебряное манго (ID 0225)
function ItemUse_LS_guopu ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
		local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
		local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
		local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
		local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
		local elf_lvl = str + con + agi + dex + sta
		if elf_lvl >= 51 and elf_lvl <= 99999999999 then
			SystemNotice(role , "После 51 лвл невозможно использовать фрукт. " )
			UseItemFailed ( role )
			return
		end
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 then
					SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224. \205\229\226\238\231\236\238\230\237\238 \239\238\234\238\240\236\232\242\252 \244\229\254 \209\229\240\229\225\240\255\237\251\236 \236\224\237\227\238" ) 
					UseItemFailed ( role )
				else
				   Lvup_Con ( role , Item_Num , Item_Traget )
				end 
		end 
end

--Шайтанский бисквит (ID 0226)
function ItemUse_LS_mibing ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
		local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
		local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
		local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
		local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
		local elf_lvl = str + con + agi + dex + sta
		if elf_lvl >= 51 and elf_lvl <= 99999999999 then
			SystemNotice(role , "После 51 лвл невозможно использовать фрукт.  " )
			UseItemFailed ( role )
			return
		end
		if Item_type == 58 and Item_Traget_Type == 59  then
				Check_Exp = CheckElf_EXP ( role , Item_Traget ) 
				if Check_Exp == 0 then
					SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224. \205\229\226\238\231\236\238\230\237\238 \239\238\234\238\240\236\232\242\252 \244\229\254 \216\224\233\242\224\237\241\234\232\236 \225\232\241\234\226\232\242\238\236" )
					UseItemFailed ( role )
				else
				   Lvup_Sta ( role , Item_Num , Item_Traget ) 
				end  				
		end 
end

--Защита нач. ур (ID 0243)
function ItemUse_HuDun_CJ ( role , Item , Item_Traget )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 1	
		local SkillNum = 1		

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "\194\251 \243\230\229 \232\231\243\247\224\235\232 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else

			AddElfSkill ( Item_Traget , SkillType , SkillNum )

			end
		end

end

--Обычная защита (ID 0244)
function ItemUse_HuDun_ZJ ( role , Item , Item_Traget )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 2		
		local SkillNum = 1	

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "\194\251 \243\230\229 \232\231\243\247\224\235\232 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else

			AddElfSkill ( Item_Traget , SkillType , SkillNum )

			end
		end

end

--Защита выс. ур. (ID 0245)
function ItemUse_HuDun_GJ ( role , Item , Item_Traget )
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 3
		local SkillNum = 1
				SystemNotice( role , SkillType )
				SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "\194\251 \243\230\229 \232\231\243\247\224\235\232 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else
		        SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
				SystemNotice( role , "\211\236\229\237\232\229 \225\251\235\238 \226\251\243\247\229\237\238" )

			end
		end

end

--Берсерк нач. ур. (ID 0246)
function ItemUse_BaoJi_CJ ( role , Item , Item_Traget )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 1	
		local SkillNum = 2	

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "\194\251 \243\230\229 \232\231\243\247\224\235\232 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
				SystemNotice( role , "\211\236\229\237\232\229 \225\251\235\238 \226\251\243\247\229\237\238" )

			end
		end

end

--Обычный берсерк(ID 0247
function ItemUse_BaoJi_ZJ ( role , Item , Item_Traget )  

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	
		local SkillType = 2	
		local SkillNum = 2		

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "\194\251 \243\230\229 \232\231\243\247\224\235\232 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else

			AddElfSkill ( Item_Traget , SkillType , SkillNum )

			end
		end

end

--Берсерк выс. ур. (ID 0248)
function ItemUse_BaoJi_GJ ( role , Item , Item_Traget ) 
		UseItemFailed ( role ) 
end

--Магия нач. ур. (ID 0249)
function ItemUse_MoLi_CJ ( role , Item , Item_Traget )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 1		
		local SkillNum = 3	

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "\194\251 \243\230\229 \232\231\243\247\224\235\232 \228\224\237\237\238\229 \243\236\229\237\232\229" )  
				UseItemFailed ( role )
			else

			AddElfSkill ( Item_Traget , SkillType , SkillNum )

			end
		end

end

--Обычная магия (ID 0250)
function ItemUse_MoLi_ZJ ( role , Item , Item_Traget )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	
		local SkillType = 2		
		local SkillNum = 3		

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "\194\251 \243\230\229 \232\231\243\247\224\235\232 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else

			AddElfSkill ( Item_Traget , SkillType , SkillNum )

			end
		end

end

--Магия выс. ур. (ID 0251)
function ItemUse_MoLi_GJ ( role , Item , Item_Traget ) 
		UseItemFailed ( role ) 
end

--Восстановление нач. ур.(ID 0252)
function ItemUse_HuiFu_CJ ( role , Item , Item_Traget )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )

		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 1	
		local SkillNum = 4	


		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "\194\251 \243\230\229 \232\231\243\247\224\235\232 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else

			AddElfSkill ( Item_Traget , SkillType , SkillNum )

			end
		end

end

--Обычное восстановление (ID 0253)
function ItemUse_HuiFu_ZJ ( role , Item , Item_Traget )   

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	
		local SkillType = 2		
		local SkillNum = 4	

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "\194\251 \243\230\229 \232\231\243\247\224\235\232 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else

			AddElfSkill ( Item_Traget , SkillType , SkillNum )


			end
		end

end

--Восстановление выс. ур.(ID 0254)
function ItemUse_HuiFu_GJ ( role , Item , Item_Traget )  
		UseItemFailed ( role ) 
end

--Медитация нач. ур. (ID 0259)
function ItemUse_ChenSi_CJ ( role , Item , Item_Traget )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	
		local SkillType = 1		
		local SkillNum = 5		

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "\194\251 \243\230\229 \232\231\243\247\224\235\232 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else

			AddElfSkill ( Item_Traget , SkillType , SkillNum )

			end
		end

end

--Обычная медитация (ID 0260)
function ItemUse_ChenSi_ZJ ( role , Item , Item_Traget )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 2
		local SkillNum = 5	

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "\194\251 \243\230\229 \232\231\243\247\224\235\232 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else

			AddElfSkill ( Item_Traget , SkillType , SkillNum )

			end
		end

end

--Медитация выс. ур. (ID 0261)
function ItemUse_ChenSi_GJ ( role , Item , Item_Traget )
	UseItemFailed ( role )
end

--Свиток призыва чудовищ (ID 0319)
function ItemUse_MonsterSummon ( role , Item , Item_Traget )

	local Monster_GetID = {}
	Monster_GetID[1] = math.random ( 40 , 80 )
	Monster_GetID[2] = math.random ( 98 , 146 )
	Monster_GetID[3] = math.random ( 194, 241 )
	Monster_GetID[4] = math.random ( 500, 571 )
	Monster_GetID[5]= 789

	local ID_Get = math.random ( 1 , 5 )
	local x, y = GetChaPos( role )
	local MonsterID = Monster_GetID [ ID_Get ]
	local Refresh = 50		
	local life = 40000		
	local new = CreateCha( MonsterID , x , y , 145 , Refresh )
	SetChaLifeTime( new, life )

end

--Кольчуга убийцы ID 0892)
function ItemUse_Ant_Hzcr ( role , Item , Item_Traget )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		RemoveState( Cha_Boat , STATE_HZCR )
	else
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \237\224 \241\243\248\229" )
		UseItemFailed ( role )
		return
	end

end

--------------------------------------------------------------------------------------------------
--Яйца фей
--------------------------------------------------------------------------------------------------
--Яйцо жизни (ID 0422)
function ItemUse_MINGZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \255\233\246\238 \244\229\232")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 183  , 1 , 4 ) 
end

--Яйцо тьмы (ID 0423)
function ItemUse_FAZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \255\233\246\238 \244\229\232")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 184  , 1 , 4 ) 
end

--Яйцо добродетели (ID 0424)
function ItemUse_QIANZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \255\233\246\238 \244\229\232")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 185  , 1 , 4 ) 
end

--Яйцо славы (ID 0425)
function ItemUse_HENGZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \255\233\246\238 \244\229\232")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 186  , 1 , 4 )  
end

--Яйцо Веры (ID 0426)
function ItemUse_YUZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \255\233\246\238 \244\229\232")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 187  , 1 , 4 )  
end

--Яйцо отваги (ID 0427)
function ItemUse_XUEZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \255\233\246\238 \244\229\232")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 188  , 1 , 4 )  
end

--Яйцо надежды (ID 0428)
function ItemUse_XINGZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \255\233\246\238 \244\229\232")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 189  , 1 , 4 )  
end

--Яйцо горя (ID 0429)
function ItemUse_HUIZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \255\233\246\238 \244\229\232")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 190  , 1 , 4 )  

end

--Яйцо Любви (ID 0430)
function ItemUse_AIZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \255\233\246\238 \244\229\232")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 191  , 1 , 4 )  
end

--Яйцо Сердца (ID 0431)
function ItemUse_XINGZHIJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \255\233\246\238 \244\229\232")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 199  , 1 , 4 )  
end

--------------------------------------------------------------------------------------------------
--Сундуки новичков (1 - 45 уровень)
--------------------------------------------------------------------------------------------------

--Сундук новичка (ID 0436)
function ItemUse_XRBOX( role, Item )

	local lv = GetChaAttr(role, ATTR_LV)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \237\238\226\232\247\234\224 \242\240\229\225\243\229\242\241\255 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 4 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	if lv < 5 then
		SystemNotice(role ,"\194\224\248 \243\240\238\226\237\252 \237\232\230\229 \247\229\236 5. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242!")
		UseItemFailed ( role )	
	else
		GiveItem ( role , 0 , 437  , 1 , 4 )
		GiveItem ( role , 0 , 9  , 1 , 95 )
		GiveItem ( role , 0 , 4308  , 1 , 95 )
		GiveItem ( role , 0 , 444  , 1 , 4 )
	end
end

--Летучий сундук (ID 0437)
function ItemUse_XRBOX1( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 7 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \203\229\242\243\247\232\233 \241\243\237\228\243\234 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 \242\240\229\225\243\229\242\241\255 7 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	if lv < 10 then
		SystemNotice(role ,"\194\224\248 \243\240\238\226\237\252 \237\232\230\229 \247\229\236 10. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 10  , 1 , 95 ) 
		GiveItem ( role , 0 , 296  , 1 , 95 )
		GiveItem ( role , 0 , 4602  , 1 , 4 )
		GiveItem ( role , 0 , 4603  , 1 , 4 )
		GiveItem ( role , 0 , 4604  , 1 , 4 )
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
	elseif job == 2 then   
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 32  , 1 , 95 ) 
		GiveItem ( role , 0 , 311  , 1 , 95 )
		GiveItem ( role , 0 , 4602  , 1 , 4 )
		GiveItem ( role , 0 , 4603  , 1 , 4 )
		GiveItem ( role , 0 , 4604  , 1 , 4 )
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 4602  , 1 , 4 )
		GiveItem ( role , 0 , 4603  , 1 , 4 )
		GiveItem ( role , 0 , 4604  , 1 , 4 )
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 80  , 1 , 95 ) 
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 336  , 1 , 95 ) 
		else 
			GiveItem ( role , 0 , 351  , 1 , 95 ) 
		end
	elseif job == 5 then   
		GiveItem ( role , 0 , 4602  , 1 , 4 ) 
		GiveItem ( role , 0 , 4603  , 1 , 4 ) 
		GiveItem ( role , 0 , 4604  , 1 , 4 ) 
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 104  , 1 , 95 ) 
		if cha_type == 3 then 
			GiveItem ( role , 0 , 372  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 359  , 1 , 95 ) 
		end
	else 
		SystemNotice(role ,"\194\229\249\252 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\224 \242\238\235\252\234\238 \239\238\241\235\229 \226\251\225\238\240\224 \238\241\237\238\226\237\238\227\238 \234\235\224\241\241\224!")
		UseItemFailed ( role )	
	end
end

--Цветочный сундук (ID 0438)
function ItemUse_XRBOX2( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 6 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \214\226\229\242\238\247\237\251\233 \241\243\237\228\243\234 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 \242\240\229\225\243\229\242\241\255 6 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	if lv < 15 then
		SystemNotice(role ,"\194\224\248 \243\240\238\226\237\252 \237\232\230\229 \247\229\236 15. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 2  , 1 , 95 ) 
		GiveItem ( role , 0 , 291  , 1 , 95 )
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3351  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
	elseif job == 2 then   
		GiveItem ( role , 0 , 26  , 1 , 95 ) 
		GiveItem ( role , 0 , 306  , 1 , 95 )
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3352  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3353  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 74  , 1 , 95 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 338  , 1 , 95 )
		else
			GiveItem ( role , 0 , 386  , 1 , 95 ) 
		end
	elseif job == 5 then
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3352  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
		GiveItem ( role , 0 , 98  , 1 , 95 ) 
		if cha_type == 3 then 
			GiveItem ( role , 0 , 366  , 1 , 95 ) 
		else 
			GiveItem ( role , 0 , 381  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"\194\229\249\252 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\224 \242\238\235\252\234\238 \239\238\241\235\229 \226\251\225\238\240\224 \238\241\237\238\226\237\238\227\238 \234\235\224\241\241\224!")
		UseItemFailed ( role )	
	end
end

--Исследовательский сундук (ID 0439)
function ItemUse_XRBOX3( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 5 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \214\226\229\242\238\247\237\251\233 \241\243\237\228\243\234 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 \242\240\229\225\243\229\242\241\255 5 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	if lv < 20 then
		SystemNotice(role ,"\194\224\248 \243\240\238\226\237\252 \237\232\230\229 \247\229\236 20. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 14  , 1 , 95 ) 
		GiveItem ( role , 0 , 297  , 1 , 95 )
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
	elseif job == 2 then  
		GiveItem ( role , 0 , 33  , 1 , 95 ) 
		GiveItem ( role , 0 , 313  , 1 , 95 )
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
		GiveItem ( role , 0 , 81  , 1 , 95 ) 
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 337  , 1 , 95 )
		else
			GiveItem ( role , 0 , 352  , 1 , 95 ) 
		end
	elseif job == 5 then 
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
		GiveItem ( role , 0 , 105  , 1 , 95 )
		if cha_type == 3 then 
			GiveItem ( role , 0 , 373  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 360  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"\194\229\249\252 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\224 \242\238\235\252\234\238 \239\238\241\235\229 \226\251\225\238\240\224 \238\241\237\238\226\237\238\227\238 \234\235\224\241\241\224!")
		UseItemFailed ( role )	
	end
end

--Плавка сундука (ID 0440)
function ItemUse_XRBOX4( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet < 4 then
		SystemNotice(role ,"\210\240\229\225\243\229\242\241\255 4 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \207\235\224\226\234\243 \241\243\237\228\243\234\224")
		UseItemFailed ( role )
		return
	end
	if lv < 25 then
		SystemNotice(role ,"\194\224\248 \243\240\238\226\237\252 \237\232\230\229 \247\229\236 25. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242!")
		UseItemFailed ( role )	
	elseif job == 1 then
		local r1,r2 =MakeItem ( role , 3  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )
		GiveItem ( role , 0 , 293  , 1 , 95 )
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
	elseif job == 2 then  
		local r1,r2 =MakeItem ( role , 27  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )
		GiveItem ( role , 0 , 307  , 1 , 95 )
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
	elseif job == 4 then 
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
		local r1,r2 =MakeItem ( role , 75  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )
		if cha_type == 1 or cha_type == 3 then
			GiveItem ( role , 0 , 340  , 1 , 95 ) 
		else
			GiveItem ( role , 0 , 350  , 1 , 95 ) 
		end
	elseif job == 5 then 
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
		local r1,r2 =MakeItem ( role , 99  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )
		if cha_type == 3 then
			GiveItem ( role , 0 , 368  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 389  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"\194\229\249\252 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\224 \242\238\235\252\234\238 \239\238\241\235\229 \226\251\225\238\240\224 \238\241\237\238\226\237\238\227\238 \234\235\224\241\241\224!")
		UseItemFailed ( role )	
	end
end

--Сундук исследований (ID 0441)
function ItemUse_XRBOX5( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"\205\243\230\237\238 4 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \232\241\241\235\229\228\238\226\224\237\232\233")
		UseItemFailed ( role )
		return
	end
	if lv < 30 then
		SystemNotice(role ,"\194\224\248 \243\240\238\226\237\252 \237\232\230\229 \247\229\236 30. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 12  , 1 , 95 ) 
		GiveItem ( role , 0 , 298  , 1 , 95 )
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 ) 
	elseif job == 2 then 
		GiveItem ( role , 0 , 34  , 1 , 95 ) 
		GiveItem ( role , 0 , 314  , 1 , 95 )
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 )
		GiveItem ( role , 0 , 82  , 1 , 95 )
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 339  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 354  , 1 , 95 ) 
		end
	elseif job == 5 then
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 ) 
		GiveItem ( role , 0 , 106  , 1 , 95 )
		if cha_type == 3 then
			GiveItem ( role , 0 , 374  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 361  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"\194\229\249\252 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\224 \242\238\235\252\234\238 \239\238\241\235\229 \226\251\225\238\240\224 \238\241\237\238\226\237\238\227\238 \234\235\224\241\241\224!")
		UseItemFailed ( role )	
	end
end

--Сундук руководства (ID 0442)
function ItemUse_XRBOX6( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 2 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \240\243\234\238\226\238\228\241\242\226\224 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 \242\240\229\225\243\229\242\241\255 2 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	if lv < 35 then
		SystemNotice(role ,"\194\224\248 \243\240\238\226\237\252 \237\232\230\229 \247\229\236 35. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242!")
		UseItemFailed ( role )	
	elseif job == 1 or job == 2 or job == 4 or job == 5 then
		GiveItem ( role , 0 , 443  , 1 , 4 ) 
		GiveItem ( role , 0 , 451  , 1 , 4 ) 
		AddMoney ( role , 0 , 20000 ) 
	else 
		SystemNotice(role ,"\194\229\249\252 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\224 \242\238\235\252\234\238 \239\238\241\235\229 \226\251\225\238\240\224 \238\241\237\238\226\237\238\227\238 \234\235\224\241\241\224!")
		UseItemFailed ( role )	
	end
end

--Сундук развития (ID 0443)
function ItemUse_XRBOX7( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 5 then
		SystemNotice(role ,"\205\243\230\237\238 5 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \240\224\231\226\232\242\232\255")
		UseItemFailed ( role )
		return
	end
	if lv < 40 then
		SystemNotice(role ,"\194\224\248 \243\240\238\226\237\252 \237\232\230\229 \247\229\236 40. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242!")
		UseItemFailed ( role )	
	elseif job == 9 then 
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 295  , 1 , 95 )
		GiveItem ( role , 0 , 4  , 1 , 95 ) 
		GiveItem ( role , 0 , 302  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 22  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )
	elseif job == 8 then   
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 300  , 1 , 95 )
		GiveItem ( role , 0 , 15  , 1 , 95 ) 
		GiveItem ( role , 0 , 301  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 20  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )
	elseif job == 12 then 
		GiveItem ( role , 0 , 39  , 1 , 95 ) 
		GiveItem ( role , 0 , 310  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 44  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )
		GiveItem ( role , 0 , 315  , 1 , 95 )
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
	elseif job == 16 then 
		GiveItem ( role , 0 , 450  , 1 , 95 )
		GiveItem ( role , 0 , 76  , 1 , 95 ) 
		local r1,r2 =MakeItem ( role , 83  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 341  , 1 , 95 )
			GiveItem ( role , 0 , 342  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 353  , 1 , 95 )
			GiveItem ( role , 0 , 356  , 1 , 95 )
		end
	elseif job == 13 then    
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 100  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 1440  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )	
		if cha_type == 3 then 
			GiveItem ( role , 0 , 370  , 1 , 95 )
			GiveItem ( role , 0 , 378  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 392  , 1 , 95 ) 
			GiveItem ( role , 0 , 388  , 1 , 95 ) 
		end
	elseif job == 14 then    
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 101  , 1 , 95 ) 
		local r1,r2 =MakeItem ( role , 107  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )	
		if cha_type == 3 then 
			GiveItem ( role , 0 , 367  , 1 , 95 ) 
			GiveItem ( role , 0 , 375  , 1 , 95 ) 
		else  
			GiveItem ( role , 0 , 390  , 1 , 95 ) 
			GiveItem ( role , 0 , 362  , 1 , 95 ) 
		
		end
	else 
		SystemNotice(role ,"\194\229\249\252 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\224 \242\238\235\252\234\238 \239\238\241\235\229 \226\251\225\238\240\224 \238\241\237\238\226\237\238\227\238 \234\235\224\241\241\224!")
		UseItemFailed ( role )	
	end
end

--------------------------------------------------------------------------------------------------
--Разное
--------------------------------------------------------------------------------------------------

--Клецка (ID 0263)
function ItemUse_ZhongZi ( role , Item ) 
	local hp = GetChaAttr(role, ATTR_HP)  
	if hp <= 0 then   
	end 
	hp_resume = 1000   
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then 
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

--Веселящее вино (ID 0264)
function ItemUse_XiongHJ ( role , Item ) 
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSFYS , statelv , statetime )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
end 

--Небесный клевер (ID 0265)
function ItemUse_AiCao ( role , Item )  
	local statelv = 1
	local statetime = 180
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSBYS , statelv , statetime )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
end 

--Кровожадный сундук (ID 0459)
function ItemUse_FLeiBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local BNUM = B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15
	if Item_CanGet < BNUM then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \202\240\238\226\238\230\224\228\237\251\233 \241\243\237\228\243\234 \242\240\229\225\243\229\242\241\255"..BNUM.."\241\235\238\242\238\226 \226 \232\237\226\229\237\242\224\240\229 ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , A1 , B1 , 4 )
	GiveItem ( role , 0 , A2 , B2 , 4 )
	GiveItem ( role , 0 , A3 , B3 , 4 )
	GiveItem ( role , 0 , A4 , B4 , 4 )
	GiveItem ( role , 0 , A5 , B5 , 4 )
	GiveItem ( role , 0 , A6 , B6 , 4 )
	GiveItem ( role , 0 , A7 , B7 , 4 )
	GiveItem ( role , 0 , A8 , B8 , 4 )
	GiveItem ( role , 0 , A9 , B9 , 4 )
	GiveItem ( role , 0 , A10 , B10 , 4 )
	GiveItem ( role , 0 , A11 , B11 , 4 )
	GiveItem ( role , 0 , A12 , B12 , 4 )
	GiveItem ( role , 0 , A13 , B13 , 4 )
	GiveItem ( role , 0 , A14 , B14 , 4 )
	GiveItem ( role , 0 , A15 , B15 , 4 )
	GiveItem ( role , 0 , A16 , B16 , 4 )
	GiveItem ( role , 0 , A17 , B17 , 4 )
	GiveItem ( role , 0 , A18 , B18 , 4 )
	GiveItem ( role , 0 , A19 , B19 , 4 )
	GiveItem ( role , 0 , A20 , B20 , 4 )
	GiveItem ( role , 0 , A21 , B21 , 4 )
	GiveItem ( role , 0 , A22 , B22 , 4 )
	GiveItem ( role , 0 , A23 , B23 , 4 )
	GiveItem ( role , 0 , A24 , B24 , 4 )
end
	 
--Суп перерождения (ID 2315)
function ItemUse_CJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"\210\240\229\225\243\229\242\241\255 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \232\241\239\238\235\252\231\238\226\224\242\252 \209\243\239 \239\229\240\229\240\238\230\228\229\237\232\255")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , C1  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )


	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )
	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )
	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )
	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )
	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	local Part2_JL = GetNum_Part2 ( Num_JL )	
	local Part3_JL = GetNum_Part3 ( Num_JL )
	local Part4_JL = GetNum_Part4 ( Num_JL )
	local Part5_JL = GetNum_Part5 ( Num_JL )
	local Part6_JL = GetNum_Part6 ( Num_JL )
	local Part7_JL = GetNum_Part7 ( Num_JL )
	if Item_newJLID==231 or Item_newJLID==232 or Item_newJLID==233 or Item_newJLID==234 or Item_newJLID==235  or Item_newJLID==236  or Item_newJLID==237  or Item_newJLID==681 then
		Part1_JL=1
		Num_JL = SetNum_Part1 ( Num_JL , 1 )
		SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	end
	str_JLone	= N1
	con_JLone = N2
	agi_JLone	= N3
	dex_JLone = N4
	sta_JLone	= N5
	local new_lv=N1+N2+N3+N4+N5
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone)
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone)
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
	local cha_name = GetChaDefaultName ( role )
	LG( "star_CJBOX" ,cha_name, C1 , N1 , N2 ,  N3 , N4 , N5 )

end

--Сундук Чемпиона (ID 0460)
function ItemUse_YZheBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 8 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \215\229\236\239\232\238\237\224 \242\240\229\225\243\229\242\241\255 8 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 453 , 1 , 4 )
	GiveItem ( role , 0 , 454 , 1 , 4 )
	GiveItem ( role , 0 , 455 , 1 , 4 )
	GiveItem ( role , 0 , 456 , 1 , 4 )
	local rad = math.random ( 1, 8 )
	if rad == 1 then
	GiveItem ( role , 0 , 5013  , 1 , 4 ) 
	GiveItem ( role , 0 , 5021  , 1 , 4 ) 
	GiveItem ( role , 0 , 5029  , 1 , 4 ) 
	elseif rad == 2 then
	GiveItem ( role , 0 , 5014  , 1 , 4 ) 
	GiveItem ( role , 0 , 5022  , 1 , 4 ) 
	GiveItem ( role , 0 , 5030  , 1 , 4 ) 
	elseif rad == 3 then
	GiveItem ( role , 0 , 5015  , 1 , 4 ) 
	GiveItem ( role , 0 , 5023  , 1 , 4 ) 
	GiveItem ( role , 0 , 5031  , 1 , 4 ) 
	elseif rad == 4 then
	GiveItem ( role , 0 , 5016  , 1 , 4 ) 
	GiveItem ( role , 0 , 5024  , 1 , 4 ) 
	GiveItem ( role , 0 , 5032  , 1 , 4 ) 
	GiveItem ( role , 0 , 5037  , 1 , 4 ) 
	elseif rad == 5 then
	GiveItem ( role , 0 , 5017  , 1 , 4 ) 
	GiveItem ( role , 0 , 5025  , 1 , 4 ) 
	GiveItem ( role , 0 , 5033  , 1 , 4 )
	elseif rad == 6 then
	GiveItem ( role , 0 , 5018  , 1 , 4 ) 
	GiveItem ( role , 0 , 5026  , 1 , 4 ) 
	GiveItem ( role , 0 , 5034  , 1 , 4 )
	elseif rad == 7 then
	GiveItem ( role , 0 , 5019  , 1 , 4 ) 
	GiveItem ( role , 0 , 5027  , 1 , 4 ) 
	GiveItem ( role , 0 , 5035  , 1 , 4 )
	elseif rad == 8 then
	GiveItem ( role , 0 , 5020  , 1 , 4 ) 
	GiveItem ( role , 0 , 5028  , 1 , 4 ) 
	GiveItem ( role , 0 , 5036  , 1 , 4 )
	GiveItem ( role , 0 , 5038  , 1 , 4 )
	end
end

--------------------------------------------------------------------------------------------------
--Предметы-множители рейтов
--------------------------------------------------------------------------------------------------

--Усилитель стремлений (ID 3094)
function ItemUse_MoreExpGzA( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "\211\241\232\235\232\242\229\235\252 \241\242\240\229\236\235\229\237\232\233 \243\230\229 \232\241\239\238\235\252\231\243\229\242\241\255. \207\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
end

--Супер Усилитель стремлений (ID 3095)
function ItemUse_MoreExpGzLv3A( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"\210\238\235\252\234\238 \232\227\240\238\234\232 \243\240\238\226\237\255 60 \232 \226\251\248\229 \236\238\227\243\242 \232\241\239\238\235\252\231\238\226\224\242\252 \209\243\239\229\240 \211\241\232\235\232\242\229\235\252 \241\242\240\229\236\235\229\237\232\233")
		UseItemFailed ( role )
		return
	end

	local statelv = 3
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "\209\243\239\229\240 \211\241\232\235\232\242\229\235\252 \241\242\240\229\236\235\229\237\232\233 \243\230\229 \232\241\239\238\235\252\231\243\229\242\241\255. \207\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"\207\238\247\243\226\241\242\226\243\233 \253\244\244\229\234\242 \238\242 \209\243\239\229\240 \211\241\232\235\232\242\229\235\255 \241\242\240\229\236\235\229\237\232\233" )
end

--Усилитель удачи (ID 3096)
function ItemUse_MoreItemGzA( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "\211\241\232\235\232\242\229\235\252 \243\228\224\247\232 \243\230\229 \232\241\239\238\235\252\231\243\229\242\241\255. \207\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
end

--Большой усилитель удачи (ID 3097)
function ItemUse_MoreItemGzLv3A( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"\210\238\235\252\234\238 \232\227\240\238\234\232 \243\240\238\226\237\255 60 \232 \226\251\248\229 \236\238\227\243\242 \232\241\239\238\235\252\231\238\226\224\242\252 \193\238\235\252\248\238\233 \243\241\232\235\232\242\229\235\252 \243\228\224\247\232")
		UseItemFailed ( role )
		return
	end


	local statelv = 3	
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "\193\238\235\252\248\238\233 \243\241\232\235\232\242\229\235\252 \243\228\224\247\232 \243\230\229 \232\241\239\238\235\252\231\243\229\242\241\255. \207\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"\207\238\247\243\226\241\242\226\243\233 \253\244\244\229\234\242 \238\242 \193\238\235\252\248\238\227\238 \243\241\232\235\232\242\229\235\255 \243\228\224\247\232" )
end

--------------------------------------------------------------------------------------------------
--Зелья\Элексиры
--------------------------------------------------------------------------------------------------

--Фляга восстановления телосложения (ID 3098)
function ItemUse_TLHFJA( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	hp_resume = 1000 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)
end

--SP Святая вода (ID 3099)
function ItemUse_TMLGZA( role , Item ) 
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 150 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then 
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

--Эликсир льва (ID 3100)
function ItemUse_SPXsyjA( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSJSQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"\221\244\244\229\234\242 \228\224\237\237\238\227\238 \231\229\235\252\255 \237\229 \241\238\247\232\242\224\229\242\241\255 \241 \253\244\244\229\234\242\224\236\232 \238\242 \228\240\243\227\232\245 \231\229\235\232\233")
		UseItemFailed ( role )
		return
	end	

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSLLQH , statelv , statetime )

end

--Эликсир  Обезьяны (ID 3101)
function ItemUse_SPLhyjA( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSLQQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end

	if OtherStateLv > 0 then
		SystemNotice(role ,"\221\244\244\229\234\242 \228\224\237\237\238\227\238 \231\229\235\252\255 \237\229 \241\238\247\232\242\224\229\242\241\255 \241 \253\244\244\229\234\242\224\236\232 \238\242 \228\240\243\227\232\245 \231\229\235\232\233")
		UseItemFailed ( role )
		return
	end
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSMJQH , statelv , statetime )

end

--Эликсир Орла (ID 3103)
function ItemUse_SPYyyjA( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"\221\244\244\229\234\242 \228\224\237\237\238\227\238 \231\229\235\252\255 \237\229 \241\238\247\232\242\224\229\242\241\255 \241 \253\244\244\229\234\242\224\236\232 \238\242 \228\240\243\227\232\245 \231\229\235\232\233")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSLQQH , statelv , statetime )

end

--Эликсир быка (ID 3102)
function ItemUse_SPMnyjA( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"\221\244\244\229\234\242 \228\224\237\237\238\227\238 \231\229\235\252\255 \237\229 \241\238\247\232\242\224\229\242\241\255 \241 \253\244\244\229\234\242\224\236\232 \238\242 \228\240\243\227\232\245 \231\229\235\232\233")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSTZQH , statelv , statetime )

end

--Эликсир души (ID 3104)
function ItemUse_SPSlyjA( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end


	if OtherStateLv > 0 then
		SystemNotice(role ,"\221\244\244\229\234\242 \228\224\237\237\238\227\238 \231\229\235\252\255 \237\229 \241\238\247\232\242\224\229\242\241\255 \241 \253\244\244\229\234\242\224\236\232 \238\242 \228\240\243\227\232\245 \231\229\235\232\233")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSJSQH , statelv , statetime )

end

--Зелье скольжения (ID 3105)
function ItemUse_MspdYSA ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_YSMspd , statelv , statetime )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end

end

--Зелье легкости (ID 0850)
function ItemUse_MspdYSB ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_QINGZ , statelv , statetime )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
end

--Корабельная броня (ID3106)
function ItemUse_GJZhuangJiaA ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_YSBoatDEF , statelv , statetime )
	else
		SystemNotice( role , "\204\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238 \242\238\235\252\234\238 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end

end

--Фестивальная лампа (ID 3107)
function ItemUse_DenglongA ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_DENGLONG , statelv , statetime )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
end

--Полный доспех (ID 0852)
function ItemUse_DenglongB ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_QUANS , statelv , statetime )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
end

--------------------------------------------------------------------------------------------------
--Билеты
--------------------------------------------------------------------------------------------------

--Пропуск в Громоград (ID 3048)
function Jz_Script_ltcsA(role, Item )
	local i = CheckBagItem(role,3048)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3048,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = math.random( 4, 6 )
					teleport( role, n )
				else
					MoveCity( role, "Thundoria Castle" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Следуй в порт Громограда (ID 3049)
function Jz_Script_ltjgcsA(role, Item )
	local i = CheckBagItem(role,3049)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3049,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 75
					teleport( role, n )
				else
					MoveCity( role, "Thundoria Harbor" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск к Священной Снежной горе (ID 3050)
function Jz_Script_sxscsA(role, Item )
	local i = CheckBagItem(role,3050)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3050,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 56
					teleport( role, n )
				else
					MoveCity( role, "Sacred Snow Mountain" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск в Андийский лес (ID 3051)
function Jz_Script_laslcsA(role, Item )
	local i = CheckBagItem(role,3051)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3051,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 57
					teleport( role, n )
				else
					MoveCity( role, "Andes Forest Haven" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск в Оазис (ID 3052)
function Jz_Script_sqcsA(role, Item )
	local i = CheckBagItem(role,3052)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3052,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 58
					teleport( role, n )
				else
					MoveCity( role, "Oasis Haven" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск к Ледяному шипу (ID 3053)
function Jz_Script_bjcsA(role, Item )
	local i = CheckBagItem(role,3053)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3053,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 59
					teleport( role, n )
				else
					MoveCity( role, "Icespire Haven" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск в Одинокую башню (ID 3054)
function Jz_Script_jmztcsA(role, Item )
	local i = CheckBagItem(role,3054)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3054,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 60
					teleport( role, n )
				else
					MoveCity( role, "Lone Tower Entrace" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Часть защиты (ID 3055)
function Jz_Script_scrkcsA(role, Item )
	local i = CheckBagItem(role,3055)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3055,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 61
					teleport( role, n )
				else
					MoveCity( role, "Barren Cavern Entrance" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Проход в Заброшенные шахты 2 (ID 3056)
function Jz_Script_fk2csA(role, Item )
	local i = CheckBagItem(role,3056)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3056,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 62
					teleport( role, n )
				else
					MoveCity( role, "Abandon Mine 2" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск в Серебряную шахту 2 (ID 3057)
function Jz_Script_yk2csA(role, Item )
	local i = CheckBagItem(role,3057)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3057,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 63
					teleport( role, n )
				else
					MoveCity( role, "Silver Mine 2" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск в Серебряную шахту 3 (ID 3058)
function Jz_Script_yk3csA(role, Item )
	local i = CheckBagItem(role,3058)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3058,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 64
					teleport( role, n )
				else
					MoveCity( role, "Silver Mine 3" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Билет в Одинокую башню 2 (ID 3059)
function Jz_Script_jmzt2csA(role, Item )
	local i = CheckBagItem(role,3059)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3059,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 66
					teleport( role, n )
				else
					MoveCity( role, "Lone Tower 2" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск в Одинокую башню 3 (ID 3060)
function Jz_Script_jmzt3csA(role, Item )
	local i = CheckBagItem(role,3060)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3060,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 67
					teleport( role, n )
				else
					MoveCity( role, "Lone Tower 3" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск в Одинокую башню 4 (ID 3070)
function Jz_Script_jmzt4csA(role, Item )
	local i = CheckBagItem(role,3070)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3070,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 68
					teleport( role, n )
				else
					MoveCity( role, "Lone Tower 4" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск в Одинокую башню 5 (ID 3071)
function Jz_Script_jmzt5csA(role, Item )
	local i = CheckBagItem(role,3071)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3071,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 69
					teleport( role, n )
				else
					MoveCity( role, "Lone Tower 5" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск в Одинокую башню 6 (ID 3072)
function Jz_Script_jmzt6csA(role, Item )
	local i = CheckBagItem(role,3072)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3072,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 70
					teleport( role, n )
				else
					MoveCity( role, "Lone Tower 6" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск в Заброшенную шахту 1 (ID 3073)
function Jz_Script_fk1csA(role, Item )
	local i = CheckBagItem(role,3073)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3073,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 65
					teleport( role, n )
				else
					MoveCity( role, "Abandon Mine 1" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск в Весноград (ID 3076)
function Jz_Script_cfzsA(role, Item )
	local i = CheckBagItem(role,3076)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3076,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 75
					teleport( role, n )
				else
					MoveCity( role, "Spring Town" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--------------------------------------------------------------------------------------------------
--Черный дракон алтарь\Вещи для распечатки
--------------------------------------------------------------------------------------------------

--Черный дракон Алтарь (ID 0266)
function ItemUse_CiChang( role, Item )
	local Elf_URE = GetItemAttr(Item,ITEMATTR_URE)
	local Elf_EXP = GetItemAttr(Item,ITEMATTR_ENERGY)
	if Elf_URE ~= 0 then
		SystemNotice(role ,"\207\229\247\224\242\252 \237\229 \225\251\235\224 \241\237\255\242\224")
		UseItemFailed ( role )
		return
	end
	if Elf_EXP >9 then
		SystemNotice(role ,"\206\247\234\238\226 \239\240\238\234\235\255\242\232\233 \225\238\235\252\248\229 \247\229\236 9. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \224\235\242\224\240\252")
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242")

		UseItemFailed ( role )
		return
	end
	local sta = GetItemAttr( Item ,ITEMATTR_VAL_STA )
	if sta == 0 then
		SystemNotice(role ,"\205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \224\235\242\224\240\252.")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	if sta == 1 then
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 845  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 845  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 845  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 845  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 845  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 845  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 845  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 845  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 845  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 845  , 1 , 12  )  		
		end
		local message ="\215\229\240\237\251\233 \196\240\224\234\238\237 \192\235\242\224\240\252 \225\251\235 \240\224\241\239\229\247\224\242\224\237! ".. cha_name.." \239\238\235\243\247\232\235 \210\240\243\239 \247\229\240\237\238\227\238 \228\240\224\234\238\237\224!" 		
		Notice ( message )
		LG("HeiLongJiTan","\200\236\255 \239\229\240\241\238\237\224\230\224",cha_name," \207\240\238\234\235\255\242\251\245 \239\243\237\234\242\238\226",Elf_EXP," \207\238\241\235\229 \238\242\234\240\251\242\232\255 \192\235\242\224\240\255 \215\229\240\237\238\227\238 \196\240\224\234\238\237\224 \194\251 \239\238\235\243\247\232\235\232 \210\240\243\239 \247\229\240\237\238\227\238 \228\240\224\234\238\237\224")
	end
	if sta == 2 then
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 847  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 847  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 847  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 847  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 847  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 847  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 847  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 847  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 847  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 847  , 1 , 2  )  		
		end
		local message ="\215\229\240\237\251\233 \196\240\224\234\238\237 \192\235\242\224\240\252 \225\251\235 \240\224\241\239\229\247\224\242\224\237! ".. cha_name.." \239\238\235\243\247\232\235 \202\240\251\235\238 \215\229\240\237\238\227\238 \228\240\224\234\238\237\224!"  
		Notice ( message )
		LG("HeiLongJiTan","\200\236\255 \239\229\240\241\238\237\224\230\224",cha_name," \207\240\238\234\235\255\242\251\245 \239\243\237\234\242\238\226",Elf_EXP," \207\238\241\235\229 \238\242\234\240\251\242\232\255 \192\235\242\224\240\255 \215\229\240\237\238\227\238 \196\240\224\234\238\237\224 \194\251 \239\238\235\243\247\232\235\232 \202\240\251\235\238 \215\229\240\237\238\227\238 \228\240\224\234\238\237\224")
	end
	if sta == 3 then
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 846  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 846  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 846  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 846  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 846  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 846  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 846  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 846  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 846  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 846  , 1 , 2  )  		
		end
		local message ="\215\229\240\237\251\233 \196\240\224\234\238\237 \192\235\242\224\240\252 \225\251\235 \240\224\241\239\229\247\224\242\224\237! ".. cha_name.." \239\238\235\243\247\232\235 \202\238\227\238\242\252 \215\229\240\237\238\227\238 \228\240\224\234\238\237\224!"   
		Notice ( message )
		LG("HeiLongJiTan","\200\236\255 \239\229\240\241\238\237\224\230\224",cha_name," \207\240\238\234\235\255\242\251\245 \239\243\237\234\242\238\226",Elf_EXP," \207\238\241\235\229 \238\242\234\240\251\242\232\255 \192\235\242\224\240\255 \215\229\240\237\238\227\238 \196\240\224\234\238\237\224 \194\251 \239\238\235\243\247\232\235\232 \202\238\227\238\242\252 \215\229\240\237\238\227\238 \228\240\224\234\238\237\224")
	end
	if sta == 4 then
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 848  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 848  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 848  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 848  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 848  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 848  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 848  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 848  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 848  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 848  , 1 , 2  )  		
		end
		local message ="\215\229\240\237\251\233 \196\240\224\234\238\237 \192\235\242\224\240\252 \225\251\235 \240\224\241\239\229\247\224\242\224\237! ".. cha_name.." \239\238\235\243\247\232\235 \216\235\229\236 \247\229\240\237\238\227\238 \228\240\224\234\238\237\224!"  
		Notice ( message )
		LG("HeiLongJiTan","\200\236\255 \239\229\240\241\238\237\224\230\224",cha_name," \207\240\238\234\235\255\242\251\245 \239\243\237\234\242\238\226",Elf_EXP," \207\238\241\235\229 \238\242\234\240\251\242\232\255 \192\235\242\224\240\255 \215\229\240\237\238\227\238 \196\240\224\234\238\237\224 \194\251 \239\238\235\243\247\232\235\232 \216\235\229\236 \247\229\240\237\238\227\238 \228\240\224\234\238\237\224")
	end
	if Elf_EXP ~=0 then
		SystemNotice(role ,"\206\241\242\224\226\248\232\229\241\255 \238\247\234\232 \239\240\238\234\235\255\242\232\233 \231\224\236\229\242\237\238 \241\237\232\231\232\235\232 \234\224\247\229\241\242\226\238 \209\237\224\240\255\230\229\237\232\255 \215\229\240\237\238\227\238 \196\240\224\234\238\237\224")
	end
end

--Глаз черного дракона\Душа Черного дракона\Сердце черного дракона (ID 0864\0865\0866)
function ItemUse_hexin ( role , Item , Item_Traget ) 
	local Item_Traget_ID = GetItemID ( Item_Traget )
	local Item_ID = GetItemID ( Item )		
	local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )
	if Item_Traget_ID ~= 266 then
		SystemNotice(role ,"\207\238\230\224\235\243\233\241\242\224, \239\238\236\229\241\242\232\242\229 \230\229\240\242\226\229\237\237\251\233 \239\240\229\228\236\229\242 \237\224 \224\235\242\224\240\252")
		UseItemFailed ( role )
		return
	end
	if sta==1 and Item_ID == 866 then
		SystemNotice(role ,"\194\251 \232\241\239\238\235\252\231\238\226\224\235\232 \209\229\240\228\246\229 \215\229\240\237\238\227\238 \196\240\224\234\238\237\224 \234\224\234 \230\229\240\242\226\229\237\237\251\233 \239\240\229\228\236\229\242")
		UseItemFailed ( role )
		return	
	end
	if sta==2 and Item_ID == 865 then
		SystemNotice(role ,"\194\251 \232\241\239\238\235\252\231\238\226\224\235\232 \196\243\248\243 \215\229\240\237\238\227\238 \196\240\224\234\238\237\224 \234\224\234 \230\229\240\242\226\229\237\237\251\233 \239\240\229\228\236\229\242")
		UseItemFailed ( role )
		return	
	end
	if sta==3 and Item_ID == 864 then
		SystemNotice(role ,"\194\251 \232\241\239\238\235\252\231\238\226\224\235\232 \195\235\224\231 \215\229\240\237\238\227\238 \196\240\224\234\238\237\224 \234\224\234 \230\229\240\242\226\229\237\237\251\233 \239\240\229\228\236\229\242")
		UseItemFailed ( role )
		return	
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local cha_name = GetChaDefaultName ( role ) 
		if Item_type == 49 and Item_Traget_Type == 65 then
				if Item_ID == 866 then
				sta =1
				SystemNotice( role , "\200\241\239\238\235\252\231\243\233\242\229 \209\229\240\228\246\229 \215\229\240\237\238\227\238 \196\240\224\234\238\237\224 \234\224\234 \230\229\240\242\226\229\237\237\251\233 \239\240\229\228\236\229\242 \232 \239\238\235\243\247\232\242\229 \210\240\243\239 \247\229\240\237\238\227\238 \228\240\224\234\238\237\224" )
				LG("HeiLongJiTan_HeXin","Character name as",cha_name,"player used Heart of Black Dragon as sacrificial item")
				elseif Item_ID == 865 then
				sta =2
				SystemNotice( role , "\200\241\239\238\235\252\231\243\233\242\229 \196\243\248\243 \215\229\240\237\238\227\238 \196\240\224\234\238\237\224 \234\224\234 \230\229\240\242\226\229\237\237\251\233 \239\240\229\228\236\229\242 \232 \239\238\235\243\247\232\242\229 \202\240\251\235\238 \215\229\240\237\238\227\238 \228\240\224\234\238\237\224" )
				LG("HeiLongJiTan_HeXin","Character name as",cha_name,"player used Soul of Black Dragon as a sacrificial item")
				elseif Item_ID == 864 then
				sta =3
				SystemNotice( role , "\200\241\239\238\235\252\231\243\233\242\229 \195\235\224\231 \215\229\240\237\238\227\238 \196\240\224\234\238\237\224 \234\224\234 \230\229\240\242\226\229\237\237\251\233 \239\240\229\228\236\229\242 \232 \239\238\235\243\247\232\242\229 \202\238\227\238\242\252 \215\229\240\237\238\227\238 \228\240\224\234\238\237\224" )
				LG("HeiLongJiTan_HeXin","Character name as",cha_name,"player used Eye of Black Dragon as a sacrificial item")
				elseif Item_ID == 275 then
				sta =4
				else 
						UseItemFailed ( role )
						return
				end
				SetItemAttr( Item_Traget ,ITEMATTR_VAL_STA ,sta )
		end 
end

--Огнетворная сила (ID 0267)
function ItemUse_HZLi ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"\207\238\230\224\235\243\233\241\242\224, \239\238\236\229\241\242\232\242\229 \206\227\237\229\242\226\238\240\237\243\254 \241\232\235\243 \237\224 \224\235\242\224\240\252")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65  then
				local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )
				if str >= 5 then
					UseItemFailed ( role )
				return
				end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE)
					str = str + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_STR ,str )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY)
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY)
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "\202 \241\238\230\224\235\229\237\232\254, \192\235\242\224\240\252 \225\251\235 \239\240\238\234\235\255\242 \228\243\248\238\233 \247\229\240\237\238\227\238 \228\240\224\234\238\237\224" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end

--Сила Мороза (ID 0270)
function ItemUse_BZLi ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"\207\238\230\224\235\243\233\241\242\224, \239\238\236\229\241\242\232\242\229 \209\232\235\243 \204\238\240\238\231\224 \237\224 \224\235\242\224\240\252")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )
				if con >= 5 then
					UseItemFailed ( role )
				return
				end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE)
					con = con + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_CON ,con )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY)
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY)
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "\202 \241\238\230\224\235\229\237\232\254, \192\235\242\224\240\252 \225\251\235 \239\240\238\234\235\255\242 \228\243\248\238\233 \247\229\240\237\238\227\238 \228\240\224\234\238\237\224" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end

--Мощь ветра (ID 0268)
function ItemUse_FZLi( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"\207\238\230\224\235\243\233\241\242\224, \239\238\236\229\241\242\232\242\229 \204\238\249\252 \226\229\242\240\224 \237\224 \224\235\242\224\240\252")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )
					if agi >= 5 then
					UseItemFailed ( role )
					return
					end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE)
					agi = agi + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI ,agi )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY)
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY)
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "\202 \241\238\230\224\235\229\237\232\254, \192\235\242\224\240\252 \225\251\235 \239\240\238\234\235\255\242 \228\243\248\238\233 \247\229\240\237\238\227\238 \228\240\224\234\238\237\224" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end

--Сила грома (ID 0269)
function ItemUse_LZli ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"\207\238\230\224\235\243\233\241\242\224, \239\238\236\229\241\242\232\242\229 \209\232\235\243 \227\240\238\236\224 \237\224 \224\235\242\224\240\252")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )
					if dex >= 5 then
					UseItemFailed ( role )
					return
					end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE)
					dex = dex + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX ,dex )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY)
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY)
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "\202 \241\238\230\224\235\229\237\232\254, \192\235\242\224\240\252 \225\251\235 \239\240\238\234\235\255\242 \228\243\248\238\233 \247\229\240\237\238\227\238 \228\240\224\234\238\237\224" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end

--Ангельские кости (ID 0271)
function ItemUse_ZhuFu ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"\207\238\230\224\235\243\233\241\242\224 \239\238\228\242\226\229\240\228\232\242\229 \232\241\239\238\235\252\231\238\226\224\237\232\229 \192\237\227\229\235\252\241\234\232\245 \202\238\241\242\229\233")
		UseItemFailed ( role )
		return
	end
	local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY)
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY)

	if Elf_EXP == 0 then
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 100 )

	if Elf_EXP <= 5 and Elf_EXP >= 1 then
		if rad <= 30 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"\192\237\227\229\235\252\241\234\232\229 \234\238\241\242\232, \234\238\242\238\240\251\229 \194\251 \232\241\239\238\235\252\231\238\226\224\235\232, \232\236\229\235\232 \239\235\238\245\238\229 \234\224\247\229\241\242\226\238, \239\240\238\234\235\255\242\232\229 \237\229 \225\251\235\238 \241\237\255\242\238.")
		end
	end

	if Elf_EXP <= 10 and Elf_EXP >= 6 then
		if rad <= 50 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"\192\237\227\229\235\252\241\234\232\229 \234\238\241\242\232, \234\238\242\238\240\251\229 \194\251 \232\241\239\238\235\252\231\238\226\224\235\232, \232\236\229\235\232 \239\235\238\245\238\229 \234\224\247\229\241\242\226\238, \239\240\238\234\235\255\242\232\229 \237\229 \225\251\235\238 \241\237\255\242\238.")
		end
	end

	if Elf_EXP <= 15 and Elf_EXP >= 11 then
		if rad <= 80 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"\192\237\227\229\235\252\241\234\232\229 \234\238\241\242\232, \234\238\242\238\240\251\229 \194\251 \232\241\239\238\235\252\231\238\226\224\235\232, \232\236\229\235\232 \239\235\238\245\238\229 \234\224\247\229\241\242\226\238, \239\240\238\234\235\255\242\232\229 \237\229 \225\251\235\238 \241\237\255\242\238.")
		end
	end

	if Elf_EXP >= 16  then
		Elf_EXP = Elf_EXP -1
	end

	SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
	SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_EXP )
end

--------------------------------------------------------------------------------------------------
--Мешочки\Гран-при
--------------------------------------------------------------------------------------------------

--Посылка с удачным подарком (ID 1094)
function ItemUse_YiYuanHaoYunBOX ( role , Item )
	local Percentage = Percentage_Random ( 0.1 )
			if Percentage == 1 then
				 AddMoney ( role , 0 , 50000 )
			else	
				local item_type = BoxXiang_YiYuanBOX
				local item_type_rad = BoxXiang_YiYuanBOX_Rad 
				local item_type_count = BoxXiang_YiYuanBOX_Count 
				local maxitem = BoxXiang_YiYuanBOX_Mxcount
				local item_quality = BoxXiang_YiYuanBOX_Qua
				local General = 0  
				local ItemId = 0 

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
				GoodItem[0] = 3336
				GoodItem[1] = 3885
				GoodItem[2] = 430
				GoodItem[3] = 3886
				GoodItem[4] = 3113
				GoodItem[5] = 3111
				GoodItem[6] = 3093
				GoodItem[7] = 3090
				GoodItem[8] =0860
				GoodItem[9] =0861
				GoodItem[10] =0862
				GoodItem[11] =0863
				GoodItem[12] =179
				GoodItem[13] =3084
				GoodItem[14] =3085


				local Good_C = 0
				for Good_C = 0 , 14 , 1 do
					if ItemId == GoodItem[Good_C] then
						local itemname = GetItemName ( ItemId ) 
						local cha_name = GetChaDefaultName ( role ) 
						local message = cha_name.." \238\242\234\240\251\226\224\229\242 \207\238\241\251\235\234\243 \241 \243\228\224\247\237\251\236 \239\238\228\224\240\234\238\236 \232 \239\238\235\243\247\224\229\242"..itemname  
						Notice ( message )
					end
				end
			end 
	end

--Гран-при (ID 0272)
function ItemUse_tedengjiang ( role , Item )
local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 845  , 1 , 16  )  
	GiveItem ( role , 0 , 846  , 1 , 16  )  
	GiveItem ( role , 0 , 847  , 1 , 16  ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \195\240\224\237-\239\240\232 \232 \239\238\235\243\247\224\229\242 \209\237\224\240\255\230\229\237\232\229 \215\229\240\237\238\227\238 \196\240\224\234\238\237\224"
		Notice ( message )
end

--Первый приз ID 0273)
function ItemUse_yidengjiang ( role , Item )
local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0853  , 1 , 4 ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \207\229\240\226\251\233 \239\240\232\231 \232 \239\238\235\243\247\224\229\242 \198\243\240\237\224\235 \241\247\224\241\242\235\232\226\251\233 \238\242\228\251\245" 
		Notice ( message )
end

--Второй приз (ID 0274)
function ItemUse_erdengjiang ( role , Item )
local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 14 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0456  , 10 , 4  ) 
	local rad = math.random ( 1, 8 )
	if rad == 1 then
	GiveItem ( role , 0 , 5013  , 1 , 4 ) 
	GiveItem ( role , 0 , 5021  , 1 , 4 ) 
	GiveItem ( role , 0 , 5029  , 1 , 4 ) 
	elseif rad == 2 then
	GiveItem ( role , 0 , 5014  , 1 , 4 ) 
	GiveItem ( role , 0 , 5022  , 1 , 4 ) 
	GiveItem ( role , 0 , 5030  , 1 , 4 ) 
	elseif rad == 3 then
	GiveItem ( role , 0 , 5015  , 1 , 4 ) 
	GiveItem ( role , 0 , 5023  , 1 , 4 ) 
	GiveItem ( role , 0 , 5031  , 1 , 4 ) 
	elseif rad == 4 then
	GiveItem ( role , 0 , 5020  , 1 , 4 ) 
	GiveItem ( role , 0 , 5024  , 1 , 4 ) 
	GiveItem ( role , 0 , 5032  , 1 , 4 ) 
	GiveItem ( role , 0 , 5037  , 1 , 4 ) 
	elseif rad == 5 then
	GiveItem ( role , 0 , 5017  , 1 , 4 ) 
	GiveItem ( role , 0 , 5025  , 1 , 4 ) 
	GiveItem ( role , 0 , 5033  , 1 , 4 )
	elseif rad == 6 then
	GiveItem ( role , 0 , 5018  , 1 , 4 ) 
	GiveItem ( role , 0 , 5026  , 1 , 4 ) 
	GiveItem ( role , 0 , 5034  , 1 , 4 )
	elseif rad == 7 then
	GiveItem ( role , 0 , 5019  , 1 , 4 ) 
	GiveItem ( role , 0 , 5027  , 1 , 4 ) 
	GiveItem ( role , 0 , 5035  , 1 , 4 )
	elseif rad == 8 then
	GiveItem ( role , 0 , 5016  , 1 , 4 ) 
	GiveItem ( role , 0 , 5028  , 1 , 4 ) 
	GiveItem ( role , 0 , 5036  , 1 , 4 )
	GiveItem ( role , 0 , 5038  , 1 , 4 )
	end
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \194\242\238\240\238\233 \239\240\232\231 \232 \239\238\235\243\247\224\229\242 10 \211\241\232\235\232\226\224\254\249\232\245 \234\240\232\241\242\224\235\235\238\226 \232 1 \237\224\225\238\240 \243\234\240\224\248\229\237\232\233"   
		Notice ( message )
end

--Приз за третье место (ID 0275)
function ItemUse_sandengjiang ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 2 )
	if rad == 1 then
		GiveItem ( role , 0 , 3094  , 1 , 4 ) 
		GiveItem ( role , 0 , 3096  , 1 , 4 )
	else
		GiveItem ( role , 0 , 1094  , 1 , 4 ) 
	end
end

--Посылка 99 (ID 1095)
function ItemUse_BaoZhaBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount
	local item_quality = BoxXiang_baozhabao_Qua
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
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.." \238\242\234\240\251\226\224\229\242 \207\238\241\251\235\234\243 99 \232 \239\238\235\243\247\224\229\242 "..itemname  
			Notice ( message )
		end
	end
end

--Пагона реинкарнации (ID 0240)
function ItemUse_wxlh( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"\210\240\229\225\243\229\242\241\255 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , SI  , SN , SE )
	local Item_star = GetChaItem ( role , 2 , r2 )
	local num={}
	local numAttr={}
	local b = 0
	local a = {}
	for b=1,5,1 do
		num [b]=0
		numAttr [b]=0
	end
	b = 0
	for i=1,47,1 do
	    a [i]=GetItemAttr ( Item_star , i )
		if a [i]~=0 then
				b = b + 1
				num [b]=i
				numAttr [b]=a[i]
		end
	end
	SetItemAttr ( Item_star ,num [1] , SA1 )
	SetItemAttr ( Item_star ,num [2] , SA2 )
	SetItemAttr ( Item_star ,num [3] , SA3 )
	SetItemAttr ( Item_star ,num [4] , SA4)
	SetItemAttr ( Item_star ,num [5] , SA5)

end

--------------------------------------------------------------------------------------------------
--Расписки на уникальные кольца
--------------------------------------------------------------------------------------------------

--Расписка на уникальное кольцо ID 0580)
function ItemUse_Sjz( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"\215\242\238\225\251 \232\241\239\238\235\252\231\238\226\224\242\252 \208\224\241\239\232\241\234\243 \237\224 \243\237\232\234\224\235\252\237\238\229 \234\238\235\252\246\238 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 \242\240\229\225\243\229\242\241\255 5 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 5 )
	if rad ==1 then
	GiveItem ( role , 0 , 281  , 1 , 4 )	
	GiveItem ( role , 0 , 286  , 1 , 4 )	
	GiveItem ( role , 0 , 324  , 1 , 4 )	
	GiveItem ( role , 0 , 334  , 1 , 4 )	
	GiveItem ( role , 0 , 387  , 1 , 4 )	
	end
	if rad ==2 then
	GiveItem ( role , 0 , 282  , 1 , 4 )	
	GiveItem ( role , 0 , 287  , 1 , 4 )	
	GiveItem ( role , 0 , 327  , 1 , 4 )	
	GiveItem ( role , 0 , 346  , 1 , 4 )	
	GiveItem ( role , 0 , 414  , 1 , 4 )		
	end
	if rad ==3 then
	GiveItem ( role , 0 , 283  , 1 , 4 )	
	GiveItem ( role , 0 , 288  , 1 , 4 )	
	GiveItem ( role , 0 , 328  , 1 , 4 )	
	GiveItem ( role , 0 , 347  , 1 , 4 )	
	GiveItem ( role , 0 , 415  , 1 , 4 )	
	end
	if rad ==4 then
	GiveItem ( role , 0 , 284  , 1 , 4 )	
	GiveItem ( role , 0 , 524  , 1 , 4 )	
	GiveItem ( role , 0 , 329  , 1 , 4 )	
	GiveItem ( role , 0 , 348  , 1 , 4 )	
	GiveItem ( role , 0 , 416  , 1 , 4 )		
	end
	if rad ==5 then
	GiveItem ( role , 0 , 285  , 1 , 4 )	
	GiveItem ( role , 0 , 321  , 1 , 4 )	
	GiveItem ( role , 0 , 330  , 1 , 4 )	
	GiveItem ( role , 0 , 349  , 1 , 4 )	
	GiveItem ( role , 0 , 417  , 1 , 4 )			
	end
end

--Расписка на уникальное ожерелье (ID 0581)
function ItemUse_Sxl( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"\215\242\238\225\251 \232\241\239\238\235\252\231\238\226\224\242\252 \208\224\241\239\232\241\234\243 \237\224 \243\237\232\234\224\235\252\237\238\229 \238\230\229\240\229\235\252\229 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 \242\240\229\225\243\229\242\241\255 5 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 2 )
	if rad ==1 then
	GiveItem ( role , 0 , 418  , 1 , 4 )	
	GiveItem ( role , 0 , 420  , 1 , 4 )	
	GiveItem ( role , 0 , 739  , 1 , 4 )	
	GiveItem ( role , 0 , 462  , 1 , 4 )	
	GiveItem ( role , 0 , 495  , 1 , 4 )		
	end
	if rad ==2 then
	GiveItem ( role , 0 , 419  , 1 , 4 )	
	GiveItem ( role , 0 , 421  , 1 , 4 )	
	GiveItem ( role , 0 , 461  , 1 , 4 )	
	GiveItem ( role , 0 , 463  , 1 , 4 )	
	GiveItem ( role , 0 , 497  , 1 , 4 )		
	end
end

--Расписка на уникальный коралл (ID 0582)
function ItemUse_Sbk( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"\215\242\238\225\251 \232\241\239\238\235\252\231\238\226\224\242\252 \208\224\241\239\232\241\234\243 \237\224 \243\237\232\234\224\235\252\237\251\233 \234\238\240\224\235\235 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 \242\240\229\225\243\229\242\241\255 5 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 2 )
	if rad ==1 then
	GiveItem ( role , 0 , 498  , 1 , 4 )	
	GiveItem ( role , 0 , 503  , 1 , 4 )	
	GiveItem ( role , 0 , 504  , 1 , 4 )	
	GiveItem ( role , 0 , 505  , 1 , 4 )	
	GiveItem ( role , 0 , 506  , 1 , 4 )		
	end
	if rad ==2 then
	GiveItem ( role , 0 , 508  , 1 , 4 )	
	GiveItem ( role , 0 , 509  , 1 , 4 )	
	GiveItem ( role , 0 , 510  , 1 , 4 )	
	GiveItem ( role , 0 , 522  , 1 , 4 )	
	GiveItem ( role , 0 , 523  , 1 , 4 )		
	end
end

--------------------------------------------------------------------------------------------------
--Билеты
--------------------------------------------------------------------------------------------------

--Пропуск на остров Лета (ID 0563)
function Jz_Script_xdfjp(role, Item )
	local i = CheckBagItem(role,563)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,563,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 76
					teleport( role, n )
				else
					MoveCity( role, "Summer Island" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск на остров Осени (ID 0583)
function Jz_Script_qdfjp(role, Item )
	local i = CheckBagItem(role,583)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,583,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 77
					teleport( role, n )
				else
					MoveCity( role, "Autumn Island" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--Суперледенец (ID 0584)
function ItemUse_Crbbt(role, Item )
	local statelv = 1
	local statetime = 20
	AddState( role , role , STATE_CJBBT , statelv , statetime )
end

--Огромная шоколадка (ID 0585)
function ItemUse_Jrqkl(role, Item )
	local statelv = 1
	local statetime = 20
	AddState( role , role , STATE_JRQKL , statelv , statetime )
end

--Юбилейный сундук (ID 1096)
function ItemUse_ZhouSuiBOX ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \222\225\232\235\229\233\237\251\233 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1097 , 1 , 0 )
	local item_type = BoxXiang_ZhousSuiBOX
	local item_type_rad = BoxXiang_ZhousSuiBOX_Rad 
	local item_type_count = BoxXiang_ZhousSuiBOX_Count 
	local maxitem = BoxXiang_ZhouSui_Mxcount
	local item_quality = BoxXiang_ZhouSui_Qua
	local General = 0  
	local ItemId = 0 
	
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
	if ItemId ==  0853 then
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \222\225\232\235\229\233\237\251\233 \241\243\237\228\243\234 \232 \239\238\235\243\247\224\229\242 \198\243\240\237\224\235 \209\247\224\241\242\235\232\226\251\233 \206\242\228\251\245" 
	Notice ( message )
	end
end

--Купюра достоинством миллион долларов (ID 0854)
function ItemUse_CZHe( role , Item ) 							
 	local Money_add = 1000000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Have>=999900000 then
		SystemNotice (role, "\211 \194\224\241 \241\235\232\248\234\238\236 \236\237\238\227\238 \231\238\235\238\242\224. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242")
		UseItemFailed ( role )
		return	
	end
	AddMoney ( role , 0 , Money_add )
end 

--------------------------------------------------------------------------------------------------
--Яйца фей и Билет в карибское путешествие
--------------------------------------------------------------------------------------------------

--Яйцо Мордо (ID 0679)
function ItemUse_MDXZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \223\233\246\238 \204\238\240\228\238")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 680  , 1 , 4 ) 
end

--Билет в карибское путешествие (ID 2445)
function Jz_Script_jialebi(role, Item )
	local i = CheckBagItem(role,2445)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2445,1)
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 78
					teleport( role, n )
				else
					MoveCity( role, "Caribbean" )
				end
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--Яйцо Удачи (ID 0571)
function ItemUse_YZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \223\233\246\238 \211\228\224\247\232")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 231  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

--Яйцо телосложения (ID 0572)
function ItemUse_TZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \223\233\246\238 \242\229\235\238\241\235\238\230\229\237\232\255")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 233  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )	
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

--Яйцо Силы (ID 0573)
function ItemUse_LZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \223\233\246\238 \209\232\235\251")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 232  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

--Яйцо Духа (ID 0574)
function ItemUse_SZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \223\233\246\238 \196\243\245\224")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 234  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

--Яйцо Точности (ID 0575)
function ItemUse_ZZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \223\233\246\238 \210\238\247\237\238\241\242\232")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 235  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

--Яйцо ловкости (ID 0576)
function ItemUse_MZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \223\233\246\238 \203\238\226\234\238\241\242\232")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 236  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

--Яйцо Зла (ID 0577)
function ItemUse_XZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \223\233\246\238 \199\235\224")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 237  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

--Яйцо Мордо Младшего (ID 0910)
function ItemUse_MDXZESJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \223\233\246\238 \204\238\240\228\238 \204\235\224\228\248\229\227\238")
		UseItemFailed ( role )
		return
	end
	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  
	GiveItem ( role , 0 , 609  , 1 , 4 ) 
	local r1,r2 =MakeItem ( role , 681  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

--------------------------------------------------------------------------------------------------
--Поссешны
--------------------------------------------------------------------------------------------------

--Фея нач. ур. (ID 0239)
function Sk_Script_CJJLFT( role , Item ) 							
 	local sk_add = SK_JLFT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

 --Обычная фея (ID 0608)
function Sk_Script_ZJJLFT ( role , Item ) 							
  	local sk_add = SK_JLFT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 2 then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 2 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

 --Опытная фея (ID 0609)
function Sk_Script_GJJLFT( role , Item ) 							
   	local sk_add = SK_JLFT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 3  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 3 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--------------------------------------------------------------------------------------------------
--Большие фрукты фей
--------------------------------------------------------------------------------------------------

--Огромный Фрукт снежного дракона (ID 0276)
function ItemUse_CJ_longguo( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY)
		local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
		local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
		local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
		local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
		local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
		local elf_lvl = str + con + agi + dex + sta
		if elf_lvl >= 50 and elf_lvl <= 99999999999 then
			SystemNotice(role , "\221\242\238\242 \244\240\243\234\242 \236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \242\238\235\252\234\238 \228\235\255 \244\229\233 \236\229\237\252\248\229 51 \243\240\238\226\237\255." )
			UseItemFailed ( role )
			return
		end

	if Item_type == 58 and Item_Traget_Type == 59 then
			Check_Exp = CheckElf_EXP ( role , Item_Traget )
			if Check_Exp == 0 then
				SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224. \205\229\226\238\231\236\238\230\237\238 \239\238\234\238\240\236\232\242\252 \244\229\254 \212\240\243\234\242\238\236 \209\237\229\230\237\238\227\238 \196\240\224\234\238\237\224" ) 
				UseItemFailed ( role )
			else
			Lvup_Str_1 ( role , Item_Num , Item_Traget )
			end 
	end 
end

--Огромная Ледяная слива (ID 0277)
function ItemUse_CJ_koumei ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
		local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
		local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
		local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
		local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
		local elf_lvl = str + con + agi + dex + sta
		if elf_lvl >= 50 and elf_lvl <= 99999999999 then
			SystemNotice(role , "\221\242\238\242 \244\240\243\234\242 \236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \242\238\235\252\234\238 \228\235\255 \244\229\233 \236\229\237\252\248\229 51 \243\240\238\226\237\255." )
			UseItemFailed ( role )
			return
		end
	if Item_type == 58 and Item_Traget_Type == 59 then
			Check_Exp = CheckElf_EXP ( role , Item_Traget )
			if Check_Exp == 0 then
				SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224. \205\229\226\238\231\236\238\230\237\238 \239\238\234\238\240\236\232\242\252 \244\229\254 \206\227\240\238\236\237\238\233 \203\229\228\255\237\238\233 \241\235\232\226\238\233" ) 
				UseItemFailed ( role )
			else
			   Lvup_Agi_1 ( role , Item_Num , Item_Traget ) 
			end 
	end 
end

--Огромный Фишфлос с Зефира (ID 0278)
function ItemUse_CJ_yusi ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )  
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
		local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
		local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
		local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
		local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
		local elf_lvl = str + con + agi + dex + sta
		if elf_lvl >= 50 and elf_lvl <= 99999999999 then
			SystemNotice(role , "\221\242\238\242 \244\240\243\234\242 \236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \242\238\235\252\234\238 \228\235\255 \244\229\233 \236\229\237\252\248\229 51 \243\240\238\226\237\255." )
			UseItemFailed ( role )
			return
		end
	if Item_type == 58 and Item_Traget_Type == 59  then
			Check_Exp = CheckElf_EXP ( role , Item_Traget )
			if Check_Exp == 0 then
				SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224. \205\229\226\238\231\236\238\230\237\238 \239\238\234\238\240\236\232\242\252 \244\229\254 \206\227\240\238\236\237\251\236 \212\232\248\244\235\238\241\238\236 \241 \199\229\244\232\240\224" ) 
				UseItemFailed ( role )
			else
			   Lvup_Dex_1 ( role , Item_Num , Item_Traget ) 
			end 
	end 
end

--Огромное Серебряное манго (ID 0279)
function ItemUse_CJ_guopu ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )  
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
		local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
		local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
		local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
		local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
		local elf_lvl = str + con + agi + dex + sta
		if elf_lvl >= 50 and elf_lvl <= 99999999999 then
			SystemNotice(role , "\221\242\238\242 \244\240\243\234\242 \236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \242\238\235\252\234\238 \228\235\255 \244\229\233 \236\229\237\252\248\229 51 \243\240\238\226\237\255." )
			UseItemFailed ( role )
			return
		end
	if Item_type == 58 and Item_Traget_Type == 59 then
			Check_Exp = CheckElf_EXP ( role , Item_Traget )
			if Check_Exp == 0 then
				SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224. \205\229\226\238\231\236\238\230\237\238 \239\238\234\238\240\236\232\242\252 \244\229\254 \206\227\240\238\236\237\251\236 \209\229\240\229\225\240\255\237\251\236 \236\224\237\227\238" ) 
				UseItemFailed ( role )
			else
			   Lvup_Con_1 ( role , Item_Num , Item_Traget )
			end 
	end 
end

--Большой шайтанский бисквит (ID 0280)
function ItemUse_CJ_mibing ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )  
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
		local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
		local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
		local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
		local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
		local elf_lvl = str + con + agi + dex + sta
		if elf_lvl >= 50 and elf_lvl <= 99999999999 then
			SystemNotice(role , "\221\242\238\242 \244\240\243\234\242 \236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \242\238\235\252\234\238 \228\235\255 \244\229\233 \236\229\237\252\248\229 51 \243\240\238\226\237\255." )
			UseItemFailed ( role )
			return
		end
	if Item_type == 58 and Item_Traget_Type == 59  then
			Check_Exp = CheckElf_EXP ( role , Item_Traget )
			if Check_Exp == 0 then
				SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224. \205\229\226\238\231\236\238\230\237\238 \239\238\234\238\240\236\232\242\252 \244\229\254 \193\238\235\252\248\232\236 \216\224\233\242\224\237\241\234\232\236 \225\232\241\234\226\232\242\238\236" ) 
				UseItemFailed ( role )
			else
			   Lvup_Sta_1 ( role , Item_Num , Item_Traget )
			end  			
	end 
end

--Фрукт роста (Id 0578)
function ItemUse_JLJSGz( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_JLJSGZ)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Эфект от фрукта еще работает. " )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_JLJSGZ , statelv , statetime )
end

--Огромный Фрукт снежного дракона до 100лв (ID 7550)
function ItemUse_CJ_longguo2( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY)
		local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
		local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
		local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
		local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
		local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
		local elf_lvl = str + con + agi + dex + sta
		if elf_lvl >= 100 and elf_lvl <= 99999999999 then
			SystemNotice(role , "\221\242\238\242 \244\240\243\234\242 \236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \242\238\235\252\234\238 \228\235\255 \244\229\233 \236\229\237\252\248\229 51 \243\240\238\226\237\255." )
			UseItemFailed ( role )
			return
		end

	if Item_type == 58 and Item_Traget_Type == 59 then
			Check_Exp = CheckElf_EXP ( role , Item_Traget )
			if Check_Exp == 0 then
				SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224. \205\229\226\238\231\236\238\230\237\238 \239\238\234\238\240\236\232\242\252 \244\229\254 \212\240\243\234\242\238\236 \209\237\229\230\237\238\227\238 \196\240\224\234\238\237\224" ) 
				UseItemFailed ( role )
			else
			Lvup_Str_1 ( role , Item_Num , Item_Traget )
			end 
	end 
end

--Огромная Ледяная слива до 100лв (ID 7551)
function ItemUse_CJ_koumei2 ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
		local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
		local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
		local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
		local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
		local elf_lvl = str + con + agi + dex + sta
		if elf_lvl >= 100 and elf_lvl <= 99999999999 then
			SystemNotice(role , "\221\242\238\242 \244\240\243\234\242 \236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \242\238\235\252\234\238 \228\235\255 \244\229\233 \236\229\237\252\248\229 51 \243\240\238\226\237\255." )
			UseItemFailed ( role )
			return
		end
	if Item_type == 58 and Item_Traget_Type == 59 then
			Check_Exp = CheckElf_EXP ( role , Item_Traget )
			if Check_Exp == 0 then
				SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224. \205\229\226\238\231\236\238\230\237\238 \239\238\234\238\240\236\232\242\252 \244\229\254 \206\227\240\238\236\237\238\233 \203\229\228\255\237\238\233 \241\235\232\226\238\233" ) 
				UseItemFailed ( role )
			else
			   Lvup_Agi_1 ( role , Item_Num , Item_Traget ) 
			end 
	end 
end

--Огромный Фишфлос с Зефира до 100лв (ID 7552)
function ItemUse_CJ_yusi2 ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
		local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
		local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
		local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
		local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
		local elf_lvl = str + con + agi + dex + sta
		if elf_lvl >= 100 and elf_lvl <= 99999999999 then
			SystemNotice(role , "\221\242\238\242 \244\240\243\234\242 \236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \242\238\235\252\234\238 \228\235\255 \244\229\233 \236\229\237\252\248\229 51 \243\240\238\226\237\255." )
			UseItemFailed ( role )
			return
		end
	if Item_type == 58 and Item_Traget_Type == 59  then
			Check_Exp = CheckElf_EXP ( role , Item_Traget )
			if Check_Exp == 0 then
				SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224. \205\229\226\238\231\236\238\230\237\238 \239\238\234\238\240\236\232\242\252 \244\229\254 \206\227\240\238\236\237\251\236 \212\232\248\244\235\238\241\238\236 \241 \199\229\244\232\240\224" ) 
				UseItemFailed ( role )
			else
			   Lvup_Dex_1 ( role , Item_Num , Item_Traget ) 
			end 
	end 
end

--Огромное Серебряное манго до 100лв (ID 7553)
function ItemUse_CJ_guopu2 ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
		local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
		local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
		local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
		local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
		local elf_lvl = str + con + agi + dex + sta
		if elf_lvl >= 100 and elf_lvl <= 99999999999 then
			SystemNotice(role , "\221\242\238\242 \244\240\243\234\242 \236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \242\238\235\252\234\238 \228\235\255 \244\229\233 \236\229\237\252\248\229 51 \243\240\238\226\237\255." )
			UseItemFailed ( role )
			return
		end
	if Item_type == 58 and Item_Traget_Type == 59 then
			Check_Exp = CheckElf_EXP ( role , Item_Traget )
			if Check_Exp == 0 then
				SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224. \205\229\226\238\231\236\238\230\237\238 \239\238\234\238\240\236\232\242\252 \244\229\254 \206\227\240\238\236\237\251\236 \209\229\240\229\225\240\255\237\251\236 \236\224\237\227\238" ) 
				UseItemFailed ( role )
			else
			   Lvup_Con_1 ( role , Item_Num , Item_Traget )
			end 
	end 
end

--Большой шайтанский бисквит до 100лв (ID 7554)
function ItemUse_CJ_mibing2 ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local str = GetItemAttr(Item_Traget,ITEMATTR_VAL_STR)
		local con = GetItemAttr(Item_Traget,ITEMATTR_VAL_CON)
		local dex = GetItemAttr(Item_Traget,ITEMATTR_VAL_DEX)
		local agi = GetItemAttr(Item_Traget,ITEMATTR_VAL_AGI)
		local sta = GetItemAttr(Item_Traget,ITEMATTR_VAL_STA)
		local elf_lvl = str + con + agi + dex + sta
		if elf_lvl >= 100 and elf_lvl <= 99999999999 then
			SystemNotice(role , "\221\242\238\242 \244\240\243\234\242 \236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \242\238\235\252\234\238 \228\235\255 \244\229\233 \236\229\237\252\248\229 51 \243\240\238\226\237\255." )
			UseItemFailed ( role )
			return
		end
	if Item_type == 58 and Item_Traget_Type == 59  then
			Check_Exp = CheckElf_EXP ( role , Item_Traget )
			if Check_Exp == 0 then
				SystemNotice(role , "\208\238\241\242 \244\229\232 \237\229 \228\238\241\242\232\227 \236\224\234\241\232\236\243\236\224. \205\229\226\238\231\236\238\230\237\238 \239\238\234\238\240\236\232\242\252 \244\229\254 \193\238\235\252\248\232\236 \216\224\233\242\224\237\241\234\232\236 \225\232\241\234\226\232\242\238\236" ) 
				UseItemFailed ( role )
			else
			   Lvup_Sta_1 ( role , Item_Num , Item_Traget )
			end			
	end 
end


--------------------------------------------------------------------------------------------------
--Сундуки
--------------------------------------------------------------------------------------------------

--Пурпурный сундук Ведьмы 70 ур. (ID 0322)
function ItemUse_70FYZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \194\229\228\252\236\251 70 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4204  , 1 , 22) 
end

--Пурпурный сундук Чемпиона 70 ур. (ID 0525)
function ItemUse_70JJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \215\229\236\239\232\238\237\224 70 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1375 , 1 , 22) 
end

--Пурпурный сундук Воителя 70 ур. (ID 0613)
function ItemUse_70SJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \194\238\232\242\229\235\255 70 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1394 , 1 , 22) 
end

--Пурпурный сундук Стрелка 70 ур. (ID 0614)
function ItemUse_70JUJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \209\242\240\229\235\234\224 70 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 42 , 1 , 22) 
end

--Пурпурный сундук покорителя морей 70 ур. (ID 0615)
function ItemUse_70HHZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \239\238\234\238\240\232\242\229\235\255 \236\238\240\229\233 70 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1421 , 1 , 22) 
end

--Пурпурный сундук Целительницы 70 ур. (ID 0616)
function ItemUse_70SZZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \214\229\235\232\242\229\235\252\237\232\246\251 70 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4198 , 1 , 22) 
end

--Сундук воителя 50 ур. (ID 0617)
function ItemUse_50SJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \226\238\232\242\229\235\255 50 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0299 , 1 , 22) 
	GiveItem ( role , 0 , 0475 , 1 , 22) 
	GiveItem ( role , 0 , 0651 , 1 , 22) 
end

--Сундук воителя 60 ур. (ID 0618)
function ItemUse_60SJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \226\238\232\242\229\235\255 60 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0304 , 1 , 22) 
	GiveItem ( role , 0 , 0480 , 1 , 22) 
	GiveItem ( role , 0 , 0656 , 1 , 22) 
end

--Сундук воителя 70 ур. (ID 0619)
function ItemUse_70SJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \226\238\232\242\229\235\255 70 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4150 , 1 , 22) 
	GiveItem ( role , 0 , 4166 , 1 , 22) 
	GiveItem ( role , 0 , 4182 , 1 , 22) 
end

--Сундук Чемпиона 50 ур. (ID 0620)
function ItemUse_50JJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \215\229\236\239\232\238\237\224 50 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0229 , 1 , 22) 
	GiveItem ( role , 0 , 653 , 1 , 22)  
end

--Сундук Чемпиона 60 ур. (ID 0621)
function ItemUse_60JJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \215\229\236\239\232\238\237\224 60 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0230 , 1 , 22) 
	GiveItem ( role , 0 , 477 , 1 , 22)  
end

--Сундук Чемпиона 70 ур. (ID 0622)
function ItemUse_70JJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \215\229\236\239\232\238\237\224 70 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4148 , 1 , 22) 
	GiveItem ( role , 0 , 653 , 1 , 22)  
	GiveItem ( role , 0 , 477 , 1 , 22)
end

--Сундук Целительницы 50 ур. (ID 0623)
function ItemUse_50SZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \214\229\235\232\242\229\235\252\237\232\246\251 50 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0371 , 1 , 22) 
	GiveItem ( role , 0 , 0547 , 1 , 22)  
	GiveItem ( role , 0 , 0723 , 1 , 22) 
end

--Сундук Целительницы 60 ур. (ID 0624)
function ItemUse_60SZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \214\229\235\232\242\229\235\252\237\232\246\251 60 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0394 , 1 , 22) 
	GiveItem ( role , 0 , 0570 , 1 , 22)  
	GiveItem ( role , 0 , 0746 , 1 , 22) 
end

--Сундук целительницы 70 ур. (ID 0625)
function ItemUse_70SZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \214\229\235\232\242\229\235\252\237\232\246\251 70 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4159 , 1 , 22) 
	GiveItem ( role , 0 , 4175 , 1 , 22)  
	GiveItem ( role , 0 , 4191 , 1 , 22) 
end

--Сундук Ами Целительницы 50 ур. (ID 0626)
function ItemUse_50AMSZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \192\236\232 \214\229\235\232\242\229\235\252\237\232\246\251 50 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0382 , 1 , 22) 
	GiveItem ( role , 0 , 0558 , 1 , 22)  
	GiveItem ( role , 0 , 0734 , 1 , 22) 
	GiveItem ( role , 0 , 2204 , 1 , 22) 
end

--Сундук Ами Целительницы 60 ур. (ID 0627)
function ItemUse_60AMSZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \192\236\232 \214\229\235\232\242\229\235\252\237\232\246\251 60 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0393 , 1 , 22) 
	GiveItem ( role , 0 , 0569 , 1 , 22)  
	GiveItem ( role , 0 , 0745 , 1 , 22) 
	GiveItem ( role , 0 , 2215 , 1 , 22) 
end

--Сундук Целительницы Ами 70 ур. (ID 0628)
function ItemUse_70AMSZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \192\236\232 \214\229\235\232\242\229\235\252\237\232\246\251 70 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4160 , 1 , 22) 
	GiveItem ( role , 0 , 4176 , 1 , 22)  
	GiveItem ( role , 0 , 4192 , 1 , 22)  
end

--Сундук Ами Ведьмы 50 ур. (ID 0629)
function ItemUse_50AMFYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \192\236\232 \194\229\228\252\236\251 50 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0385 , 1 , 22) 
	GiveItem ( role , 0 , 0561 , 1 , 22)  
	GiveItem ( role , 0 , 0737 , 1 , 22) 
	GiveItem ( role , 0 , 2207 , 1 , 22) 
end

--Сундук Ами Ведьмы 60 ур. (ID 0630)
function ItemUse_60AMFYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \192\236\232 \194\229\228\252\236\251 60 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0364 , 1 , 22) 
	GiveItem ( role , 0 , 0540 , 1 , 22)  
	GiveItem ( role , 0 , 0716 , 1 , 22) 
	GiveItem ( role , 0 , 2201 , 1 , 22) 
end

--Ведьмовской сундук Ами 70 ур. (ID 0631)
function ItemUse_70AMFYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \192\236\232 \194\229\228\252\236\251 70 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4164 , 1 , 22) 
	GiveItem ( role , 0 , 4180 , 1 , 22)  
	GiveItem ( role , 0 , 4196 , 1 , 22) 
end

--Сундук Покорителя морей Ами 50 ур. (ID 0632)
function ItemUse_50AMHHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \207\238\234\238\240\232\242\229\235\255 \236\238\240\229\233 \192\236\232 50 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0355 , 1 , 22) 
	GiveItem ( role , 0 , 0531 , 1 , 22)  
	GiveItem ( role , 0 , 0707 , 1 , 22) 
	GiveItem ( role , 0 , 2192 , 1 , 22) 
end

--Сундук покорителя морей Ами 60 ур. (ID 0633)
function ItemUse_60AMHHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \207\238\234\238\240\232\242\229\235\255 \236\238\240\229\233 \192\236\232 60 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0358 , 1 , 22) 
	GiveItem ( role , 0 , 0534 , 1 , 22)  
	GiveItem ( role , 0 , 0710 , 1 , 22) 
	GiveItem ( role , 0 , 2195 , 1 , 22) 
end

--Сундук покорителя морей Ами 70 ур. (ID 0634)
function ItemUse_70AMHHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \207\238\234\238\240\232\242\229\235\255 \236\238\240\229\233 \192\236\232 70 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4156 , 1 , 22) 
	GiveItem ( role , 0 , 4172 , 1 , 22)  
	GiveItem ( role , 0 , 4188 , 1 , 22)  
end

--Сундук Стрелка 50 ур. (ID 0671)
function ItemUse_50JUJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \209\242\240\229\235\234\224 50 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0312 , 1 , 22) 
	GiveItem ( role , 0 , 0488 , 1 , 22)  
	GiveItem ( role , 0 , 0664 , 1 , 22) 
end

--Сундук Стрелка 60 ур. (ID 0673)
function ItemUse_60JUJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \209\242\240\229\235\234\224 60 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0317 , 1 , 22) 
	GiveItem ( role , 0 , 0493 , 1 , 22)  
	GiveItem ( role , 0 , 0669 , 1 , 22) 
end

--Сундук Стрелка 70 ур (ID 0674)
function ItemUse_70JUJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \209\242\240\229\235\234\224 70 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4152 , 1 , 22) 
	GiveItem ( role , 0 , 4168 , 1 , 22)  
	GiveItem ( role , 0 , 4184 , 1 , 22) 
end

--Сундук Покорителя морей 50 ур. (ID 0676)
function ItemUse_50HHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \207\238\234\238\240\232\242\229\235\255 \236\238\240\229\233 50 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0345 , 1 , 22) 
	GiveItem ( role , 0 , 0521 , 1 , 22)  
	GiveItem ( role , 0 , 0697 , 1 , 22) 
end

--Сундук Покорителя морей 60 ур. (ID 0686)
function ItemUse_60HHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \207\238\234\238\240\232\242\229\235\255 \236\238\240\229\233 60 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0344 , 1 , 22) 
	GiveItem ( role , 0 , 0520 , 1 , 22)  
	GiveItem ( role , 0 , 0696 , 1 , 22) 
end

--Сундук Покорителя морей 70 ур. (ID 0698)
function ItemUse_70HHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \207\238\234\238\240\232\242\229\235\255 \236\238\240\229\233 70 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4155 , 1 , 22) 
	GiveItem ( role , 0 , 4171 , 1 , 22)  
	GiveItem ( role , 0 , 4187 , 1 , 22) 
end

--Сундук Ведьмы 50 ур. (ID 0699)
function ItemUse_50FYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \194\229\228\252\236\251 50 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0369 , 1 , 22) 
	GiveItem ( role , 0 , 0545 , 1 , 22)  
	GiveItem ( role , 0 , 0721 , 1 , 22) 
end

--Сундук Ведьмы 60 ур. (ID 0700)
function ItemUse_60FYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \194\229\228\252\236\251 60 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0377 , 1 , 22) 
	GiveItem ( role , 0 , 0553 , 1 , 22)  
	GiveItem ( role , 0 , 0729 , 1 , 22) 
end

--Сундук Ведьмы 70 ур. (ID 0701)
function ItemUse_70FYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \194\229\228\252\236\251 70 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4163 , 1 , 22) 
	GiveItem ( role , 0 , 4179 , 1 , 22)  
	GiveItem ( role , 0 , 4195 , 1 , 22) 
end

--------------------------------------------------------------------------------------------------
--Райский мешочек
--------------------------------------------------------------------------------------------------

--Райский мешочек (ID 1119)
function ItemUse_98BOX ( role , Item )
			local item_type = BaoXiang_98BOX
			local item_type_rad = BaoXiang_98BOX_Rad 
			local item_type_count = BaoXiang_98BOX_Count 
			local maxitem = BaoXiang_98BOX_Mxcount
			local item_quality = BaoXiang_98BOX_Qua
			local General = 0  
			local ItemId = 0 
			
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		
		if Item_CanGet <= 0 then
			SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \208\224\233\241\234\232\233 \236\229\248\238\247\229\234")
			UseItemFailed ( role )
			return
		end
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
				GoodItem[0] = 3074
				GoodItem[1] = 0937
				GoodItem[2] = 3885
				GoodItem[3] = 0680
				GoodItem[4] = 0938
				GoodItem[5] = 2488
				GoodItem[6] = 2489
				GoodItem[7] = 2490
				GoodItem[8] =2436
				GoodItem[9] =3075

				local Good_C = 0
				for Good_C = 0 , 9 , 1 do
					if ItemId == GoodItem[Good_C] then
						local itemname = GetItemName ( ItemId ) 
						local cha_name = GetChaDefaultName ( role ) 
						local message = cha_name.." \238\242\234\240\251\226\224\229\242 \208\224\233\241\234\232\233 \236\229\248\238\247\229\234 \232 \239\238\235\243\247\224\229\242 "..itemname  
						Notice ( message )
					end
				end
	
	end

--------------------------------------------------------------------------------------------------
--Расписки на самоцветы
--------------------------------------------------------------------------------------------------

--Расписка на Огненный самоцвет (ID 0856)
function ItemUse_lieyanBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \208\224\241\239\232\241\234\243 \237\224 \206\227\237\229\237\237\251\233 \241\224\236\238\246\226\229\242")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0878 , 1 , 4) 
end

--Расписка на Самоцвет Ярости (ID 0857)
function ItemUse_zhiyanBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \208\224\241\239\232\241\234\243 \237\224 \209\224\236\238\246\226\229\242 \223\240\238\241\242\232")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0879 , 1 , 4) 
end

--Расписка на Разрыв-самоцвет (ID 0858)
function ItemUse_huoyaoBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \208\224\241\239\232\241\234\243 \237\224 \208\224\231\240\251\226\237\238\233 \241\224\236\238\246\226\229\242")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0880 , 1 , 4) 
end

--Расписка на Люстриновый самоцвет (ID 0859)
function ItemUse_manaoBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \208\224\241\239\232\241\234\243 \237\224 \203\254\241\242\240\232\237\238\226\251\233 \241\224\236\238\246\226\229\242")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0881 , 1 , 4) 
end

--Расписка на Самоцвет Духа (ID 0911)
function ItemUse_shengguangBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \208\224\241\239\232\241\234\243 \237\224 \209\224\236\238\246\226\229\242 \196\243\245\224")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0887 , 1 , 4) 
end

--Расписка на Блестящий самоцвет (ID 0915)
function ItemUse_yuezhixinBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \208\224\241\239\232\241\234\243 \237\224 \193\235\229\241\242\255\249\232\233 \241\224\236\238\246\226\229\242")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0883 , 1 , 4) 
end

--Расписка на Сияющий самоцвет (ID 0914)
function ItemUse_hanyuBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \208\224\241\239\232\241\234\243 \237\224 \209\232\255\254\249\232\233 \241\224\236\238\246\226\229\242")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0882 , 1 , 4) 
end

--Расписка на Самоцвет Ветра (ID 0918)
function ItemUse_fenglingBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \208\224\241\239\232\241\234\243 \237\224 \209\224\236\238\246\226\229\242 \194\229\242\240\224")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0860 , 1 , 4) 
end

--Расписка на Теневой самоцвет (ID 0916)
function ItemUse_xianlingBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \208\224\241\239\232\241\234\243 \237\224 \210\229\237\229\226\238\233 \241\224\236\238\246\226\229\242")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0884 , 1 , 4) 
end

--Расписка на Самоцвет удара (ID 0919)
function ItemUse_yingyanBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \208\224\241\239\232\241\234\243 \237\224 \209\224\236\238\246\226\229\242 \243\228\224\240\224")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0861 , 1 , 4) 
end

--Расписка на Самоцвет колосса (ID 0920)
function ItemUse_yanyuBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \208\224\241\239\232\241\234\243 \237\224 \209\224\236\238\246\226\229\242 \234\238\235\238\241\241\224")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0862 , 1 , 4) 
end

--Расписка на Самоцвет Ярости (ID 0921)
function ItemUse_tanyuBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \208\224\241\239\232\241\234\243 \237\224 \209\224\236\238\246\226\229\242 \223\240\238\241\242\232")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0863 , 1 , 4) 
end

--------------------------------------------------------------------------------------------------
--Сундуки
--------------------------------------------------------------------------------------------------

--Пурпурный сундук Воителя 50 ур. (ID 0939)
function ItemUse_50SJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \194\238\232\242\229\235\255 50 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1392 , 1 , 22) 
end

--Пурпурный сундук Чемпиона 50 ур. (ID 0940)
function ItemUse_50JJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \215\229\236\239\232\238\237\224 50 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1373 , 1 , 22) 
end

--Пурпурный сундук Стрелка 50 ур. (ID 0941)
function ItemUse_50JUJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \209\242\240\229\235\234\224 50 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0040 , 1 , 22) 
end

--Пурпурный сундук Покорителя морей 50 ур.(ID 0942)
function ItemUse_50HHZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \207\238\234\238\240\232\242\229\235\255 \236\238\240\229\233 50 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1419 , 1 , 22) 
end

--Пурпурный сундук Целительницы 50 ур. (ID 0943)
function ItemUse_50SZZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \214\229\235\232\242\229\235\252\237\232\246\251 50 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0103 , 1 , 22) 
end

--Пурпурный сундук Ведьмы 50 ур. (ID 0944)
function ItemUse_50FYZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \194\229\228\252\236\251 50 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0102 , 1 , 22) 
end

--Пурпурный сундук Воителя 60 ур. (ID 0945)
function ItemUse_60SJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \194\238\232\242\229\235\255 60 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1393 , 1 , 22) 
end

--Пурпурный сундук Чемпиона 60 ур. (ID 0946)
function ItemUse_60JJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \215\229\236\239\232\238\237\224 60 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1374 , 1 , 22) 
end

--Пурпурный сундук Стрелка 60 ур. (ID 0947
function ItemUse_60JUJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \209\242\240\229\235\234\224 60 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0041 , 1 , 22) 
end

--Пурпурный сундук Покорителя морей 60 ур. (ID 0950)
function ItemUse_60HHZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \207\238\234\238\240\232\242\229\235\255 \236\238\240\229\233 60 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1420 , 1 , 22) 
end

--Пурпурный сундук Целительницы 60 ур. (ID 0951)
function ItemUse_60SZZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \214\229\235\232\242\229\235\252\237\232\246\251 60 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4303 , 1 , 22) 
end

--Пурпурный сундук Ведьмы 60 ур. (ID 0952)
function ItemUse_60FYZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \207\243\240\239\243\240\237\251\233 \241\243\237\228\243\234 \194\229\228\252\236\251 60 \243\240\238\226\237\255")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4300 , 1 , 22) 
end

--------------------------------------------------------------------------------------------------
--Разное
--------------------------------------------------------------------------------------------------

--Сердце Невинности (ID 1009)
function ItemUse_CZZX( role , Item )
	local statelv = 1
	local statetime = 30
	local Item_ID=GetItemID(Item)
	AddState( role , role , STATE_CZZX , statelv , statetime )
	if Item_ID~=1013 then
		GiveItem ( role , 0 , 1010 , 1 , 4)
	end
end

--Грандиозный салют (ID 1011)
function ItemUse_HHLP( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local star = 0


	if CheckDateNum >= 10122  and CheckDateNum <= 10123 then
		ItemUse_XNBOX ( role , Item )

	end
end

--Неизвестно (ID n\a)
function ItemUse_GNZS( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		local attr_sta = GetChaAttr( role , ATTR_STA )
		local sta_extre = 5
		attr_sta = attr_sta + sta_extre 
		SetCharaAttr( attr_sta, role, ATTR_STA )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
end

--Загадочное яйцо феи (ID 1015)
function ItemUse_JNJLD( role , Item )
	local star=math.random ( 1, 10 )
	local r1 = 0
	local r2 = 0
	if star==1 then
		r1,r2=MakeItem( role , 183 , 1 , 4)
	elseif  star==2 then
		r1,r2=MakeItem( role , 184 , 1 , 4)
	elseif  star==3 then
		r1,r2=MakeItem( role , 185 , 1 , 4)
	elseif  star==4 then
		r1,r2=MakeItem( role , 186 , 1 , 4)
	elseif  star==5 then
		r1,r2=MakeItem( role , 187 , 1 , 4)
	elseif  star==6 then
		r1,r2=MakeItem( role , 188 , 1 , 4)
	elseif  star==7 then
		r1,r2=MakeItem( role , 189 , 1 , 4)
	elseif  star==8 then
		r1,r2=MakeItem( role , 190 , 1 , 4)
	elseif  star==9 then
		r1,r2=MakeItem( role , 191 , 1 , 4)
	else  
		r1,r2=MakeItem( role , 199 , 1 , 4)
	end
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )
	local Part4_newJL = GetNum_Part4 ( Num_newJL )
	local Part5_newJL = GetNum_Part5 ( Num_newJL )
	local Part6_newJL = GetNum_Part6 ( Num_newJL )
	local Part7_newJL= GetNum_Part7 ( Num_newJL )
	local t={}
		t[0]=1
		t[1]=2
		t[2]=3
		t[3]=4
		t[4]=5
	local eleven=math.random ( 1,3 )
	Part2_newJL=t[eleven-1]
	Part4_newJL=t[eleven]
	Part6_newJL=t[eleven+1]
	Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
	Num_newJL = SetNum_Part3 ( Num_newJL , 1 )
	Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
	Num_newJL = SetNum_Part5 ( Num_newJL , 1 )
	Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
	Num_newJL = SetNum_Part7 ( Num_newJL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_newJL )
end

--Свиток призыва Богини (ID 1014)
function ItemUse_NSSN ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \226\251\231\226\224\242\252 \193\238\227\232\237\254 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 857
	local Refresh = 3700
	local life = 3600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

--Мешочек Богини (ID 1016)
function ItemUse_NSDXB ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \204\229\248\238\247\229\234 \193\238\227\232\237\232")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 12 )
	local r1 = 0
	local r2 = 0
	if star==1 then
		r1,r2=MakeItem( role , 619 , 1 , 4)
	elseif star==2 then
		r1,r2=MakeItem( role , 625 , 1 , 4)
	elseif  star==3 then
		r1,r2=MakeItem( role , 628 , 1 , 4)
	elseif  star==4 then
		r1,r2=MakeItem( role , 631 , 1 , 4)
	elseif  star==5 then
		r1,r2=MakeItem( role , 634 , 1 , 4)
	elseif  star==6 then
		r1,r2=MakeItem( role , 674 , 1 , 4)
	elseif  star==7 then
		r1,r2=MakeItem( role , 698 , 1 , 4)
	elseif  star==8 then
		r1,r2=MakeItem( role , 701 , 1 , 4)
	else 
		local eleven =math.random ( 2530, 2548 )
		r1,r2=MakeItem( role , eleven , 1 , 4)
	end
	local Item_new = GetChaItem ( role , 2 , r2 )
	local Item_ID = GetItemID ( Item_new )
	local itemname = GetItemName (Item_ID) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \204\229\248\238\247\229\234 \193\238\227\232\237\232 \232 \239\238\235\243\247\224\229\242 "..itemname   
	Notice ( message )
end

--Аскаронский сундук (ID 1017)
function ItemUse_JaNaBox ( role , Item ) 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \192\241\234\224\240\238\237\241\234\232\233 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1012 , 1 , 4) 			
	local itemname = GetItemName (1012) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." \238\242\234\240\251\226\224\229\242 \192\241\234\224\240\238\237\241\234\232\233 \241\243\237\228\243\234 \232 \239\238\235\243\247\224\229\242 "..itemname  
	Notice ( message )
end

--------------------------------------------------------------------------------------------------
--Черный рынок
--------------------------------------------------------------------------------------------------

--Неизвестно (ID n\a)
function gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local cha_name = GetChaDefaultName ( role ) 
	local General = 0  
	local ItemId = 0 
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
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
	if ItemId==0845 or ItemId==0846 or ItemId==0847 or ItemId==0848 then
		local check_rad = math.random ( 1, 100 )
		local heilong_rad = math.random ( 1, 1000 )
		if check_rad==99 and heilong_rad>=999 then
			item_quality=16
		elseif  check_rad==99 and  heilong_rad>=900 then 
			item_quality=15
		elseif  check_rad==99 and  heilong_rad>=500 then 
			item_quality=14
		elseif  check_rad==99 and  heilong_rad>=200 then 
			item_quality=13
		elseif  check_rad==99 then  
			item_quality=12
		else 
			ItemId=0266
		end
	end	
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 0845
	GoodItem[1] = 0846
	GoodItem[2] = 0847
	GoodItem[3] = 0848
	GoodItem[4] = 0266
	local Good_C = 0
	for Good_C = 0 , 4 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local message = cha_name.." \238\242\234\240\251\226\224\229\242 \209\237\224\240\255\230\229\237\232\229 \215\229\240\237\251\233 \208\251\237\238\234 \232 \239\238\235\243\247\224\229\242 "..itemname  
			Notice ( message )
		end
	end

	return 1
end

--Снаряжение Черный рынок (ID 3302 - 3334_
function ItemUse_jsyla( role , Item )
	local item_quality =BaoXiang_jsyla_Qua
	local maxitem = BaoXiang_jsyla_Mxcount
	local item_type = BaoXiang_jsyla
	local item_type_rad =BaoXiang_jsyla_Rad

	local item_type_count =BaoXiang_jsyla_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsylb( role , Item )
	local item_quality =BaoXiang_jsylb_Qua
	local maxitem =BaoXiang_jsylb_Mxcount
	local item_type = BaoXiang_jsylb
	local item_type_rad =BaoXiang_jsylb_Rad

	local item_type_count =BaoXiang_jsylb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmzlra( role , Item )
	local item_quality =BaoXiang_jsmzlra_Qua
	local maxitem =BaoXiang_jsmzlra_Mxcount
	local item_type = BaoXiang_jsmzlra
	local item_type_rad =BaoXiang_jsmzlra_Rad

	local item_type_count =BaoXiang_jsmzlra_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmzlrb( role , Item )
	local item_quality =BaoXiang_jsmzlrb_Qua
	local maxitem =BaoXiang_jsmzlrb_Mxcount
	local item_type = BaoXiang_jsmzlrb
	local item_type_rad =BaoXiang_jsmzlrb_Rad

	local item_type_count =BaoXiang_jsmzlrb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsjqa( role , Item )
	local item_quality =BaoXiang_jsjqa_Qua
	local maxitem =BaoXiang_jsjqa_Mxcount
	local item_type = BaoXiang_jsjqa
	local item_type_rad =BaoXiang_jsjqa_Rad

	local item_type_count =BaoXiang_jsjqa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsjqb( role , Item )
	local item_quality =BaoXiang_jsjqb_Qua
	local maxitem =BaoXiang_jsjqb_Mxcount
	local item_type = BaoXiang_jsjqb
	local item_type_rad =BaoXiang_jsjqb_Rad

	local item_type_count =BaoXiang_jsjqb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmzcja( role , Item )
	local item_quality =BaoXiang_jsmzcja_Qua
	local maxitem =BaoXiang_jsmzcja_Mxcount
	local item_type = BaoXiang_jsmzcja
	local item_type_rad =BaoXiang_jsmzcja_Rad

	local item_type_count =BaoXiang_jsmzcja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmzcjb( role , Item )
	local item_quality =BaoXiang_jsmzcjb_Qua
	local maxitem =BaoXiang_jsmzcjb_Mxcount
	local item_type = BaoXiang_jsmzcjb
	local item_type_rad =BaoXiang_jsmzcjb_Rad

	local item_type_count =BaoXiang_jsmzcjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jssjkja( role , Item )
	local item_quality =BaoXiang_jssjkja_Qua
	local maxitem =BaoXiang_jssjkja_Mxcount
	local item_type = BaoXiang_jssjkja
	local item_type_rad =BaoXiang_jssjkja_Rad

	local item_type_count =BaoXiang_jssjkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jssjkjb( role , Item )
	local item_quality =BaoXiang_jssjkjb_Qua
	local maxitem =BaoXiang_jssjkjb_Mxcount
	local item_type = BaoXiang_jssjkjb
	local item_type_rad =BaoXiang_jssjkjb_Rad

	local item_type_count =BaoXiang_jssjkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jszjkja( role , Item )
	local item_quality =BaoXiang_jszjkja_Qua
	local maxitem =BaoXiang_jszjkja_Mxcount
	local item_type = BaoXiang_jszjkja
	local item_type_rad =BaoXiang_jszjkja_Rad

	local item_type_count =BaoXiang_jszjkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jszjkjb( role , Item )
	local item_quality =BaoXiang_jszjkjb_Qua
	local maxitem =BaoXiang_jszjkjb_Mxcount
	local item_type = BaoXiang_jszjkjb
	local item_type_rad =BaoXiang_jszjkjb_Rad

	local item_type_count =BaoXiang_jszjkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsszkja( role , Item )
	local item_quality =BaoXiang_jsszkja_Qua
	local maxitem =BaoXiang_jsszkja_Mxcount
	local item_type = BaoXiang_jsszkja
	local item_type_rad =BaoXiang_jsszkja_Rad

	local item_type_count =BaoXiang_jsszkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsszkjb( role , Item )
	local item_quality =BaoXiang_jsszkjb_Qua
	local maxitem =BaoXiang_jsszkjb_Mxcount
	local item_type = BaoXiang_jsszkjb
	local item_type_rad =BaoXiang_jsszkjb_Rad

	local item_type_count =BaoXiang_jsszkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsfykja( role , Item )
	local item_quality =BaoXiang_jsfykja_Qua
	local maxitem =BaoXiang_jsfykja_Mxcount
	local item_type = BaoXiang_jsfykja
	local item_type_rad =BaoXiang_jsfykja_Rad

	local item_type_count =BaoXiang_jsfykja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsfykjb( role , Item )
	local item_quality =BaoXiang_jsfykjb_Qua
	local maxitem =BaoXiang_jsfykjb_Mxcount
	local item_type = BaoXiang_jsfykjb
	local item_type_rad =BaoXiang_jsfykjb_Rad

	local item_type_count =BaoXiang_jsfykjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshhkja( role , Item )
	local item_quality =BaoXiang_jshhkja_Qua
	local maxitem =BaoXiang_jshhkja_Mxcount
	local item_type = BaoXiang_jshhkja
	local item_type_rad =BaoXiang_jshhkja_Rad

	local item_type_count =BaoXiang_jshhkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshhkjb( role , Item )
	local item_quality =BaoXiang_jshhkjb_Qua
	local maxitem =BaoXiang_jshhkjb_Mxcount
	local item_type = BaoXiang_jshhkjb
	local item_type_rad =BaoXiang_jshhkjb_Rad

	local item_type_count =BaoXiang_jshhkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsjjkja( role , Item )
	local item_quality =BaoXiang_jsjjkja_Qua
	local maxitem =BaoXiang_jsjjkja_Mxcount
	local item_type = BaoXiang_jsjjkja
	local item_type_rad =BaoXiang_jsjjkja_Rad

	local item_type_count =BaoXiang_jsjjkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsjjkjb( role , Item )
	local item_quality =BaoXiang_jsjjkjb_Qua
	local maxitem =BaoXiang_jsjjkjb_Mxcount
	local item_type = BaoXiang_jsjjkjb
	local item_type_rad =BaoXiang_jsjjkjb_Rad

	local item_type_count =BaoXiang_jsjjkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshlza( role , Item )
	local item_quality =BaoXiang_jshlza_Qua
	--local 
	local maxitem =BaoXiang_jshlza_Mxcount
	local item_type = BaoXiang_jshlza
	local item_type_rad =BaoXiang_jshlza_Rad

	local item_type_count =BaoXiang_jshlza_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshlzb( role , Item )
	local item_quality =BaoXiang_jshlzb_Qua
	local maxitem =BaoXiang_jshlzb_Mxcount
	local item_type = BaoXiang_jshlzb
	local item_type_rad =BaoXiang_jshlzb_Rad

	local item_type_count =BaoXiang_jshlzb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshlta( role , Item )
	local item_quality =BaoXiang_jshlta_Qua
	local maxitem =BaoXiang_jshlta_Mxcount
	local item_type = BaoXiang_jshlta
	local item_type_rad =BaoXiang_jshlta_Rad

	local item_type_count =BaoXiang_jshlta_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshlsa( role , Item )
	local item_quality =BaoXiang_jshlsa_Qua
	local maxitem =BaoXiang_jshlsa_Mxcount
	local item_type = BaoXiang_jshlsa
	local item_type_rad =BaoXiang_jshlsa_Rad

	local item_type_count =BaoXiang_jshlsa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshlsb( role , Item )
	local item_quality =BaoXiang_jshlsb_Qua
	local maxitem =BaoXiang_jshlsb_Mxcount
	local item_type = BaoXiang_jshlsb
	local item_type_rad =BaoXiang_jshlsb_Rad

	local item_type_count =BaoXiang_jshlsb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshlya( role , Item )
	local item_quality =BaoXiang_jshlya_Qua
	local maxitem =BaoXiang_jshlya_Mxcount
	local item_type = BaoXiang_jshlya
	local item_type_rad =BaoXiang_jshlya_Rad

	local item_type_count =BaoXiang_jshlya_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshlyb( role , Item )
	local item_quality =BaoXiang_jshlyb_Qua
	local maxitem =BaoXiang_jshlyb_Mxcount
	local item_type = BaoXiang_jshlyb
	local item_type_rad =BaoXiang_jshlyb_Rad

	local item_type_count =BaoXiang_jshlyb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmhzca( role , Item )
	local item_quality =BaoXiang_jsmhzca_Qua
	local maxitem =BaoXiang_jsmhzca_Mxcount
	local item_type = BaoXiang_jsmhzca
	local item_type_rad =BaoXiang_jsmhzca_Rad

	local item_type_count =BaoXiang_jsmhzca_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmhzcb( role , Item )
	local item_quality =BaoXiang_jsmhzcb_Qua
	local maxitem =BaoXiang_jsmhzcb_Mxcount
	local item_type = BaoXiang_jsmhzcb
	local item_type_rad =BaoXiang_jsmhzcb_Rad

	local item_type_count =BaoXiang_jsmhzcb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmzfza( role , Item )
	local item_quality =BaoXiang_jsmzfza_Qua
	local maxitem =BaoXiang_jsmzfza_Mxcount
	local item_type = BaoXiang_jsmzfza
	local item_type_rad =BaoXiang_jsmzfza_Rad

	local item_type_count =BaoXiang_jsmzfza_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmzfzb( role , Item )
	local item_quality =BaoXiang_jsmzfzb_Qua
	local maxitem =BaoXiang_jsmzfza_Mxcount
	local item_type = BaoXiang_jsmzfzb
	local item_type_rad =BaoXiang_jsmzfzb_Rad

	local item_type_count =BaoXiang_jsmzfzb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmfzza( role , Item )
	local item_quality =BaoXiang_jsmfzza_Qua
	local maxitem =BaoXiang_jsmfzza_Mxcount
	local item_type = BaoXiang_jsmfzza
	local item_type_rad =BaoXiang_jsmfzza_Rad

	local item_type_count =BaoXiang_jsmfzza_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmfzzb( role , Item )
	local item_quality =BaoXiang_jsmfzzb_Qua
	local maxitem =BaoXiang_jsmfzzb_Mxcount
	local item_type = BaoXiang_jsmfzzb
	local item_type_rad =BaoXiang_jsmfzzb_Rad

	local item_type_count =BaoXiang_jsmfzzb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmzcqa( role , Item )
	local item_quality =BaoXiang_jsmzcqa_Qua
	local maxitem =BaoXiang_jsmzcqa_Mxcount
	local item_type = BaoXiang_jsmzcqa
	local item_type_rad =BaoXiang_jsmzcqa_Rad

	local item_type_count =BaoXiang_jsmzcqa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmzcqa( role , Item )
	local item_quality =BaoXiang_jsmzcqa_Qua
	local maxitem =BaoXiang_jsmzcqa_Mxcount
	local item_type = BaoXiang_jsmzcqa
	local item_type_rad =BaoXiang_jsmzcqa_Rad

	local item_type_count =BaoXiang_jsmzcqa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

--------------------------------------------------------------------------------------------------
--Разное
--------------------------------------------------------------------------------------------------

--Мешочек Черного дракона (ID 1019)
function ItemUse_minibh( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \204\229\248\238\247\229\234 \215\229\240\237\238\227\238 \228\240\224\234\238\237\224 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 \242\240\229\225\243\229\242\241\255 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 10000 )
	if star==1 then
		GiveItem ( role , 0 , 272  , 1 , 4  )
		local message = cha_name.." \238\242\234\240\251\226\224\229\242 \204\229\248\238\247\229\234 \215\229\240\237\238\227\238 \228\240\224\234\238\237\224 \232 \239\238\235\243\247\224\229\242 \195\240\224\237-\239\240\232: \209\237\224\240\255\230\229\237\232\229 \247\229\240\237\238\227\238 \228\240\224\234\238\237\224" 
		Notice ( message )
	elseif star>1 and star<=51 then
		GiveItem ( role , 0 , 273  , 1 , 4  ) 
		local message1 = cha_name.." \238\242\234\240\251\226\224\229\242 \204\229\248\238\247\229\234 \215\229\240\237\238\227\238 \228\240\224\234\238\237\224 \232 \239\238\235\243\247\224\229\242 \207\229\240\226\251\233 \239\240\232\231: \198\243\240\237\224\235 \209\247\224\241\242\235\232\226\251\233 \206\242\228\251\245" 
		Notice ( message1 )
	elseif star>51 and star<1652 then
		GiveItem ( role , 0 , 274  , 1 , 4  ) 
	else
		GiveItem ( role , 0 , 275  , 1 , 4  ) 
	end
end

--Победа богини Кары (ID 1021)
function ItemUse_kala( role , Item )
	local statelv = 1
	local statetime = 20
	AddState( role , role , STATE_KALA , statelv , statetime )
end

--Запачканная История Болезни (ID 1027)
function ItemUse_MHDYSD ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \226\251\231\226\224\242\252 \236\238\237\241\242\240\224 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
		return
	end

	local x, y = GetChaPos(role)
	local MonsterID = 858
	local Refresh = 190
	local life = 180000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

--Карта зачарованной Богини (ID 1036)
function ItemUse_mohuan( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \202\224\240\242\243 \231\224\247\224\240\238\226\224\237\237\238\233 \193\238\227\232\237\232")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 1000 )
	SystemNotice(role ,"star=="..star)
	if star<=8 then
		GiveItem ( role , 0 , 1014  , 1 , 4  )
		local message = cha_name.." \232\241\239\238\235\252\231\243\229\242 \202\224\240\242\243 \231\224\247\224\240\238\226\224\237\237\238\233 \193\238\227\232\237\232 \232 \239\238\235\243\247\224\229\242 \209\226\232\242\238\234 \239\240\232\231\251\226\224 \193\238\227\232\237\232" 
		Notice ( message )
	elseif star>=9 and star<=17 then
		GiveItem ( role , 0 , 271, 1 , 4  ) 
		local message2 = cha_name.." \232\241\239\238\235\252\231\243\229\242 \202\224\240\242\243 \231\224\247\224\240\238\226\224\237\237\238\233 \193\238\227\232\237\232 \232 \239\238\235\243\247\224\229\242 \192\237\227\229\235\252\241\234\232\229 \234\238\241\242\232" 
		Notice ( message1 )
	elseif star>=18 and star<=27 then
		GiveItem ( role , 0 , 1012, 1 , 4  ) 
		local message3 = cha_name.." \232\241\239\238\235\252\231\243\229\242 \202\224\240\242\243 \231\224\247\224\240\238\226\224\237\237\238\233 \193\238\227\232\237\232 \232 \239\238\235\243\247\224\229\242 \192\241\234\224\240\238\237\241\234\232\233 \241\243\237\228\243\234" 
		Notice ( message3 )
	elseif star>=28 and star<=227 then
		GiveItem ( role , 0 , 3886, 1 , 4  ) 
	else
		GiveItem ( role , 0 , 3830, 5 , 4  ) 
	end
end

--Сундук колдовской карты (ID 1035)
function ItemUse_MoHuanBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"\210\240\229\225\243\229\242\241\255 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \234\238\235\228\238\226\241\234\238\233 \234\224\240\242\251")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 4663 )
	if star>=1 and star<=3 then
		GiveItem ( role , 0 , 3866, 1 , 4  ) 	
	elseif star>=4 and star<=14 then
		GiveItem ( role , 0 , 3864, 1 , 4  ) 		
	elseif star>=15 and star<=65 then
		GiveItem ( role , 0 , 3858, 1 , 4  )		
	else
		local star=math.random ( 3850, 3875 )
		if star==3858 or star==3864 or star==3866  then
			GiveItem ( role , 0 , 3850  , 1 , 4  ) 
		else 
			GiveItem ( role , 0 , star  , 1 , 4  ) 			
		end
	end
end

--------------------------------------------------------------------------------------------------
--Самоуничтожение
--------------------------------------------------------------------------------------------------

--Самоуничтожение нач. ур. (Id 0610)
function Sk_Script_CJJLZB( role , Item ) 							
 	local sk_add = SK_JLZB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

 --Обычное Самоуничтожение (ID 0611)
function Sk_Script_ZJJLZB ( role , Item ) 							
  	local sk_add = SK_JLZB
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 2 then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 2 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

 --Самоуничтожение выс. ур. (ID 0612)
function Sk_Script_GJJLZB( role , Item ) 							
   	local sk_add = SK_JLZB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 3  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 3 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--------------------------------------------------------------------------------------------------
--Чертежи (ID 1000 - 1003)
--------------------------------------------------------------------------------------------------

--Чертеж Пачкули (ID 1000)
function ItemUse_MHDTZ( role , Item ) 							
 	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"\215\242\238\225\251 \240\224\241\239\229\247\224\242\224\242\252 \247\229\240\242\229\230 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 \242\240\229\225\243\229\242\241\255 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end  	
	local r1 = 0
	local r2 = 0
	local item_ID=GetItemID(Item)
	local Itemnew_ID=2300
	local rad_ID=math.random ( 1, 100 )
	if rad_ID<=40 then
		Itemnew_ID=2300 
	elseif rad_ID>=41 and rad_ID<=81 then
		Itemnew_ID=2302
	else
		Itemnew_ID=2301
	end
	r1, r2 = MakeItem ( role , Itemnew_ID  , 1 , 4 )
	local Itemnew = GetChaItem ( role , 2 , r2 )


	local rad_energy=math.random ( 1, 100 )
	local energy = 1
	if item_ID==1000 then
		energy=1
	elseif item_ID==1001 then
		if rad_energy<=5 then
			energy=4
		elseif  rad_energy<=30 and rad_energy>=6 then
			energy=3
		else
			energy=2
		end
	elseif item_ID==1002 then
		if rad_energy<=5 then
			energy=6
		elseif  rad_energy<=30 and rad_energy>=6 then
			energy=5
		else
			energy=4
		end
	elseif item_ID==1003 then
		if rad_energy<=5 and Itemnew_ID~=2301 then
			energy=8
		elseif  rad_energy<=30 and rad_energy>=6 then
			energy=7
		else
			energy=6
		end
	end	

	local final_ID=1849 
	local final_LV=20
	local final_ID1=3116
	local final_ID2=3116
	local final_ID3=3116
	local General = 0  
	local ItemId =3124
	if Itemnew_ID==2300 then
		local STAR_BEGIN=ZHIZAO_Mxcount*(energy-1)/10+1
		local STAR_END=ZHIZAO_Mxcount*energy/10

		for i = STAR_BEGIN , STAR_END , 1 do 
		    General = ZHIZAO__Rad[ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local k = 0 
		local c = -1
		for k = STAR_BEGIN , STAR_END , 1 do
			d = ZHIZAO__Rad[ k ] + b
			if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then
			c =STAR_BEGIN
		end
		final_ID=ZHIZAO_ID[c]
		final_LV=ZHIZAO_LV[c]
		final_ID1=ZHIZAO_ID1[c]
		final_ID2=ZHIZAO_ID2[c]
		final_ID3=ZHIZAO_ID3[c]

	end
	if Itemnew_ID==2301 then
		local STAR_BEGIN=1
		local STAR_END=77
		if energy==1 then
			STAR_BEGIN=1
			STAR_END=77
		elseif energy==2 then
			STAR_BEGIN=78
			STAR_END=166
		elseif energy==3 then
			STAR_BEGIN=167
			STAR_END=278
		elseif energy==4 then
			STAR_BEGIN=279
			STAR_END=434
		elseif energy==5 then
			STAR_BEGIN=435
			STAR_END=596
		elseif energy==6 then
			STAR_BEGIN=597
			STAR_END=732
		elseif energy==7 then
			STAR_BEGIN=733
			STAR_END=871
		elseif energy==8 then
			STAR_BEGIN=895
			STAR_END=902
		end

		for i = STAR_BEGIN , STAR_END , 1 do 
		    General = ZHUZAO__Rad[ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local k = 0 
		local c = -1
		for k = STAR_BEGIN , STAR_END , 1 do
			d = ZHUZAO__Rad[ k ] + b
			if a <= d and a > b then
				c = k
				break 
				end 
			b = d 
		end 
		if c == -1 then
			c =STAR_BEGIN
		end
		final_ID=ZHUZAO_ID[c]
		final_LV=ZHUZAO_LV[c]
		final_ID1=ZHUZAO_ID1[c]
		final_ID2=ZHUZAO_ID2[c]
		final_ID3=ZHUZAO_ID3[c]		
		local final_type=GetItemType2(final_ID)
		local check=0
		local i = 0
		for i = 0 , Item_CanJinglian_Num  , 1 do
			if final_type == Item_CanJinglian_ID [i] then
				check=1
			end
		end

		if  check==1 then
			local check_rad=math.random ( 1, 1000 )
			if check_rad==1 then
				final_LV=70
			elseif check_rad>=2 and check_rad<=11 then
				final_LV=60
			elseif check_rad>=12 and check_rad<=21 then
				final_LV=50
			elseif check_rad>=22 and check_rad<=221 then
				final_LV=40
			elseif check_rad>=222 and check_rad<=421 then
				final_LV=30
			elseif check_rad>=422 and check_rad<=621 then
				final_LV=20
			else
				final_LV=10				
			end
			if final_LV>70 then
				final_LV=70
			end

			if final_LV~=10 and final_LV~=0 then
				local tmd=(energy-1)*6+final_LV*0.1-1
				final_ID3=TESHU_ID[tmd]
			end
		end
	end
	if Itemnew_ID==2302 then
		local STAR_BEGIN=1
		local STAR_END=80
		if energy==1 then
			STAR_BEGIN=1
			STAR_END=7
		elseif energy==2 then
			STAR_BEGIN=8
			STAR_END=12
		elseif energy==3 then
			STAR_BEGIN=13
			STAR_END=17
		elseif energy==4 then
			STAR_BEGIN=18
			STAR_END=26
		elseif energy==5 then
			STAR_BEGIN=27
			STAR_END=31
		elseif energy==6 then
			STAR_BEGIN=32
			STAR_END=36
		else
			STAR_BEGIN=energy+30
			STAR_END=energy+30             
		end
		for i = STAR_BEGIN , STAR_END , 1 do 
		    General = ZHIZAO__Rad[ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local k = 0 
		local c = -1
		for k = STAR_BEGIN , STAR_END , 1 do
			d = PENGREN__Rad[ k ] + b
			if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then
			c =STAR_BEGIN
		end
		final_ID=PENGREN_ID[c]
		final_LV=PENGREN_LV[c]
		final_ID1=PENGREN_ID1[c]
		final_ID2=PENGREN_ID2[c]
		final_ID3=PENGREN_ID3[c]		
	end

	local star_number=energy*10
	local yingbi_num=math.random ( 10, star_number )
	if energy<=3 then
		SetItemAttr(Itemnew, ITEMATTR_MAXURE, energy )
		SetItemAttr(Itemnew, ITEMATTR_URE, energy )		
	else
		SetItemAttr(Itemnew, ITEMATTR_MAXURE, yingbi_num )
		SetItemAttr(Itemnew, ITEMATTR_URE, energy )
	end
	local sta =math.random ( 1, 10 )
	if Itemnew_ID==2301 then
		sta=sta*0.5
		sta=math.max(1,sta)
	end
	SetItemAttr(Itemnew, ITEMATTR_VAL_STA, sta )
	local qulity=math.floor(final_LV*0.1)+100
	SetItemAttr(Itemnew, ITEMATTR_MAXENERGY, qulity )

	local ure=10-final_LV*0.1
	SetItemAttr(Itemnew, ITEMATTR_ENERGY, ure )

	SetItemAttr(Itemnew, ITEMATTR_VAL_STR, final_ID1 )
	SetItemAttr(Itemnew, ITEMATTR_VAL_CON, final_ID2 )
	SetItemAttr(Itemnew, ITEMATTR_VAL_DEX, final_ID3 )
	SetItemAttr(Itemnew, ITEMATTR_VAL_AGI, final_ID )

	local Num_new = GetItemForgeParam ( Itemnew , 1 )
	local Part2_new = GetNum_Part2 ( Num_new )	
	local Part4_new = GetNum_Part4 ( Num_new )
	local Part6_new = GetNum_Part6 ( Num_new )
	Part2_new = math.random ( 3, 20 ) 
	Part4_new = math.random ( 2, 9 )
	Part6_new = math.random ( 1, 3 )
	Part6_new = Part6_new*math.max(1,(energy-2))
	Num_new = SetNum_Part2 ( Num_new , Part2_new )
	Num_new = SetNum_Part4 ( Num_new , Part4_new )
	Num_new = SetNum_Part6 ( Num_new , Part6_new )
	SetItemForgeParam ( Itemnew , 1 , Num_new )

end 

--------------------------------------------------------------------------------------------------
--Навыки "Дурак"
--------------------------------------------------------------------------------------------------

--Навык - Очищение (Id 1037)
function Sk_Script_DBs( role , Item ) 							
 	local sk_add = SK_JLTX1  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--Навык - Белье (ID1038)
function Sk_Script_NKs( role , Item ) 							
 	local sk_add = SK_JLTX2  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--Навык - одевание (ID 1039)
function Sk_Script_XZs( role , Item ) 							
 	local sk_add = SK_JLTX3  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--Навык - Денежный дождь (ID 1129)
function Sk_Script_JQs( role , Item ) 							
 	local sk_add = SK_JLTX4  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--Навык - Дурак (ID 1130)
function Sk_Script_BCs( role , Item ) 							
 	local sk_add = SK_JLTX5  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--Навык - Превосходство (ID 1131)
function Sk_Script_BSs( role , Item ) 							
 	local sk_add = SK_JLTX6  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--Навык - Немой (ID 1132)
function Sk_Script_PZs( role , Item ) 							
 	local sk_add = SK_JLTX7  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--Навык - Немой (ID 1133)
function Sk_Script_SZs( role , Item ) 							
 	local sk_add = SK_JLTX8  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--------------------------------------------------------------------------------------------------
--Предметы для новичков
--------------------------------------------------------------------------------------------------

--Сундук Звезды единства (ID 1033)
function ItemUse_TunDuiZhiXing( role , Item ) 							
   	local r1 = 0
	local r2 = 0
	r1, r2 = MakeItem ( role , 1034 , 1 , 4 )
	local Itemnew = GetChaItem ( role , 2 , r2 )
	SetItemAttr(Itemnew, ITEMATTR_URE, 100 )
	SetItemAttr(Itemnew, ITEMATTR_MAXURE, 20100 )
end 

--Мини-усилитель натиска (ID 1128)
function ItemUse_WeiXing( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\207\240\229\228\236\229\242 \243\230\229 \232\241\239\238\235\252\231\243\229\242\241\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local lv_star = GetChaAttr( role , ATTR_LV) 
	if lv_star > 40 then
		SystemNotice ( role , "\221\244\244\229\234\242\232\226\237\238 \242\238\235\252\234\238 \228\235\255 \232\227\240\238\234\238\226 \243\240\238\226\237\255 40 \232 \237\232\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 60+5*(lv_star-1)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
end

--------------------------------------------------------------------------------------------------
--Мирные навыки для фей
--------------------------------------------------------------------------------------------------

--Производство фей нач. ур. (ID 1055)
function ItemUse_JLZhiZ_CJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 1
		local SkillNum = 13

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "\212\229\255 \243\230\229 \232\236\229\229\242 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

--Изготовление фей станд. ур. (ID 1056)
function ItemUse_JLZhiZ_ZJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 2
		local SkillNum = 13

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "\212\229\255 \243\230\229 \232\236\229\229\242 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

--Производство фей выс. ур. (ID 1057)
function ItemUse_JLZhiZ_GJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 3
		local SkillNum = 13

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "\212\229\255 \243\230\229 \232\236\229\229\242 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

--Изготовление фей нач. ур. (ID 1058)
function ItemUse_JLZhuZ_CJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 1
		local SkillNum = 14

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "\212\229\255 \243\230\229 \232\236\229\229\242 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

--Изготовление фей станд. ур. (ID 1059)
function ItemUse_JLZhuZ_ZJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 2
		local SkillNum = 14

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "\212\229\255 \243\230\229 \232\236\229\229\242 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

--Ремесло фей выс. ур. (ID 1060)
function ItemUse_JLZhuZ_GJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 3
		local SkillNum = 14

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "\212\229\255 \243\230\229 \232\236\229\229\242 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

--Анализ ручных фей для начинающих (ID 1061)
function ItemUse_JLFenJ_CJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 1
		local SkillNum = 15

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "\212\229\255 \243\230\229 \232\236\229\229\242 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

--Обычный анализ ручных фей (ID 1062)
function ItemUse_JLFenJ_ZJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 2
		local SkillNum = 15

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "\212\229\255 \243\230\229 \232\236\229\229\242 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

--Анализ фей выс. ур. (ID 1063)
function ItemUse_JLFenJ_GJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 3
		local SkillNum = 15

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "\212\229\255 \243\230\229 \232\236\229\229\242 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

--Кулинария нач. ур. для ручных фей (ID 1064)
function ItemUse_JLPengR_CJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 1
		local SkillNum = 16

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "\212\229\255 \243\230\229 \232\236\229\229\242 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

--Обычная кулинария фей (ID 1065)
function ItemUse_JLPengR_ZJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 2
		local SkillNum = 16

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "\212\229\255 \243\230\229 \232\236\229\229\242 \228\224\237\237\238\229 \243\236\229\237\232\229" )  
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

--Кулинария высшего уровня для ручных фей (ID 1066)
function ItemUse_JLPengR_GJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 3
		local SkillNum = 16

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "\212\229\255 \243\230\229 \232\236\229\229\242 \228\224\237\237\238\229 \243\236\229\237\232\229" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

--------------------------------------------------------------------------------------------------
--Сундук Хаоса
--------------------------------------------------------------------------------------------------

--Сундук Хаоса (ID 1134)
function ItemUse_FightingBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"\210\240\229\225\243\229\242\241\255 2 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \213\224\238\241\224")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2610  , 1 , 4 )
	local rad = math.random ( 1, 3 )
	if rad ==1 then
	GiveItem ( role , 0 , 1124  , 1 , 15 )	
	end
	
	if rad ==2 then
	GiveItem ( role , 0 , 1125  , 1 , 15 )	
	end
	
	if rad ==3 then
	GiveItem ( role , 0 , 1126  , 1 , 15 )	
	end
end

--------------------------------------------------------------------------------------------------
--Кулинария
--------------------------------------------------------------------------------------------------

--Паровое судно Треска (ID 4019)
function ItemUse_XUEYU( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

--Осетрина с бамбуком (ID 4020)
function ItemUse_CUIZHU( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 600
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

--Вкусная рыба-шар (ID4021)
function ItemUse_HUIXIANG( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 600
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

--Суп из осетра (ID 4022)
function ItemUse_YINGYUE( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime =480
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

--Суп из жареных устриц (ID 4023)
function ItemUse_LANGBEI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local statelv =5
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 480
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

--Креветочная пышка (ID 4024)
function ItemUse_XIAOXIAO( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 6
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 360
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

--Обломок кости рыбы-тигра (ID 4025)
function ItemUse_HUPI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv =7
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 300
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

--Рис с рыбой-химерой (ID 4026)
function ItemUse_YINJIAO( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )  
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 8
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 180
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

--Глина для изготовления фарфора (ID 4027)
function ItemUse_TAOTU( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )  
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 9
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 180
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

--Барбекю из акульего плавника (ID 4028)
function ItemUse_BAIWANG( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )  
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 10
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime =60
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

--Парная булочка (ID 1078)
function ItemUse_MANTOU( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 200 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 

--Булочка (ID 1079)
function ItemUse_BAOZI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 400 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime =600
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 

--Бисквит (ID 1080)
function ItemUse_DABING( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 600 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 420
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 

--Поджаренная лепешка (ID 1082)
function ItemUse_YOUTIAO( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 800 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime =300
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 

--Весноградский свиток (ID 1083)
function ItemUse_CHUNJUAN( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 1000 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 5
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 120
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 

--Вино девы (ID 1084)
function ItemUse_NVER( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 100 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_NVER , statelv , statetime )
end 

--Вино ученых (ID 1085)
function ItemUse_ZHUANGYUAN( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 200 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 600
	AddState( role , role , STATE_NVER , statelv , statetime )
end 

--Дукановое вино (ID 1088)
function ItemUse_DUKANG( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 300 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 420
	AddState( role , role , STATE_NVER , statelv , statetime )
end 

--Вино мао (ID 1087)
function ItemUse_MAOTAI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 400 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 300
	AddState( role , role , STATE_NVER , statelv , statetime )
end 

--Вино с женьшенем (ID 1089)
function ItemUse_RENSHEN( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 500 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 5
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 180
	AddState( role , role , STATE_NVER , statelv , statetime )
end 

--Тоник из тигриной кости (ID 1090)
function ItemUse_HUGU( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 600 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 6
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "\194\251 \243\230\229 \232\241\239\238\235\252\231\238\226\224\235\232 \234\243\235\232\237\224\240\232\254 \225\238\235\229\229 \226\251\241\238\234\238\227\238 \243\240\238\226\237\255. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229" )
		UseItemFailed ( role )
		return
	end
	local statetime = 120
	AddState( role , role , STATE_NVER , statelv , statetime )
end 

--------------------------------------------------------------------------------------------------
--Сундуки
--------------------------------------------------------------------------------------------------

--Сундук с современными украшениями (ID 2224)
function ItemUse_MOLIBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 4 then
		SystemNotice(role ,"\194\224\236 \237\243\230\237\238 4 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 12 )
	if rad == 1 then
	GiveItem ( role , 0 , 5107  , 1 , 4 ) 
	GiveItem ( role , 0 , 5108  , 1 , 4 ) 
	GiveItem ( role , 0 , 5109  , 1 , 4 ) 
	elseif rad == 2 then
	GiveItem ( role , 0 , 5111  , 1 , 4 ) 
	GiveItem ( role , 0 , 5112  , 1 , 4 ) 
	GiveItem ( role , 0 , 5113  , 1 , 4 ) 
	elseif rad == 3 then
	GiveItem ( role , 0 , 5115  , 1 , 4 ) 
	GiveItem ( role , 0 , 5116  , 1 , 4 ) 
	GiveItem ( role , 0 , 5117  , 1 , 4 ) 
	elseif rad == 4 then
	GiveItem ( role , 0 , 5119  , 1 , 4 ) 
	GiveItem ( role , 0 , 5120  , 1 , 4 ) 
	GiveItem ( role , 0 , 5121  , 1 , 4 ) 
	elseif rad == 5 then
	GiveItem ( role , 0 , 5123  , 1 , 4 ) 
	GiveItem ( role , 0 , 5124  , 1 , 4 ) 
	GiveItem ( role , 0 , 5125  , 1 , 4 )
	elseif rad == 6 then
	GiveItem ( role , 0 , 5127  , 1 , 4 ) 
	GiveItem ( role , 0 , 5128  , 1 , 4 ) 
	GiveItem ( role , 0 , 5129  , 1 , 4 )
	elseif rad == 7 then
	GiveItem ( role , 0 , 5130  , 1 , 4 ) 
	GiveItem ( role , 0 , 5131  , 1 , 4 ) 
	GiveItem ( role , 0 , 5132  , 1 , 4 )
	GiveItem ( role , 0 , 5133  , 1 , 4 )
	elseif rad == 8 then
	GiveItem ( role , 0 , 5134  , 1 , 4 ) 
	GiveItem ( role , 0 , 5135  , 1 , 4 ) 
	GiveItem ( role , 0 , 5136  , 1 , 4 )
	GiveItem ( role , 0 , 5137  , 1 , 4 )
	elseif rad == 9 then
	GiveItem ( role , 0 , 5138  , 1 , 4 ) 
	GiveItem ( role , 0 , 5139  , 1 , 4 ) 
	GiveItem ( role , 0 , 5140  , 1 , 4 )
	GiveItem ( role , 0 , 5141  , 1 , 4 )
	elseif rad == 10 then
	GiveItem ( role , 0 , 5143  , 1 , 4 ) 
	GiveItem ( role , 0 , 5144  , 1 , 4 ) 
	GiveItem ( role , 0 , 5145  , 1 , 4 ) 
	elseif rad == 11 then
	GiveItem ( role , 0 , 5147  , 1 , 4 ) 
	GiveItem ( role , 0 , 5148  , 1 , 4 ) 
	GiveItem ( role , 0 , 5149  , 1 , 4 )
	elseif rad == 12 then
	GiveItem ( role , 0 , 5151  , 1 , 4 ) 
	GiveItem ( role , 0 , 5152  , 1 , 4 ) 
	GiveItem ( role , 0 , 5153  , 1 , 4 )
	end
end

--Сундук интриги (ID 0024)
function ItemUse_IDBOX(role, Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local cha_name = GetChaDefaultName ( role ) 
	local count = 1
	
	if lv < 60 then
		SystemNotice( role ,"\194\224\248 \243\240\238\226\229\237\252 \237\232\230\229 \247\229\236 60. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242!")
		UseItemFailed ( role )	
	else
		SystemNotice(role,"\221\226\229\237\242 \231\224\234\238\237\247\232\235\241\255, \209\239\224\241\232\225\238 \194\224\236 \231\224 \243\247\224\241\242\232\229. \207\238\230\224\235\243\233\241\242\224, \231\224\233\228\232\242\229 \237\224 \244\238\240\243\236 \194\224\248\229\227\238 \241\229\240\226\229\240\224, \247\242\238\225\251 \243\231\237\224\242\252 \225\235\232\230\224\233\248\232\229 \241\238\225\251\242\232\255!")
	end
end 

--Бонус Книги чести (ID 2816)
function ItemUse_HonorPoint (role, Item )
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( role,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( role , "\211 \194\224\241 \237\229\242 \204\229\228\224\235\232 \206\242\226\224\227\232")
		return 0
		end
	local Book2 =  GetChaItem2 ( role , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
	
	local HonorPoint_X=HonorPoint+100
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	
end

--Книга бонусов Хаоса (ID 2951)
function ItemUse_FightingPoint (role, Item )
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( role,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( role , "\211 \194\224\241 \237\229\242 \204\229\228\224\235\232 \206\242\226\224\227\232")
		return 0
		end
	local Book2 =  GetChaItem2 ( role , 2 , 3849 )
	local FightingPoint=GetItemAttr ( Book2 , ITEMATTR_MAXENERGY)
	
	local FightingPoint_X=FightingPoint+100
	SetItemAttr ( Book2 , ITEMATTR_MAXENERGY,FightingPoint_X)
	
end

--------------------------------------------------------------------------------------------------
--Рождество
--------------------------------------------------------------------------------------------------

--Вкусное индюшачье мясо (ID 2895)
function ItemUse_MWHJ ( role , Item )  
	local el_exp = GetChaAttr(role, ATTR_CEXP)
	local exp1=el_exp
	local charLv=Lv ( role )
	local exp_resume = 5000
	local	exp_resume_1= 100
	el_exp = el_exp + exp_resume
	 if charLv>=80 then	
		el_exp = exp1 + exp_resume_1
	end
	SetCharaAttr(el_exp, role, ATTR_CEXP) 
end 

--Праздничный обед (ID 2898)
function ItemUse_SDDC ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local dif_exp_one = DEXP[charLv+1]
	local dif_exp_three = DEXP[charLv+3]
	local dif_exp_five = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )
	local dif_exp_half = (DEXP[charLv+1] - DEXP[charLv])*0.5 +  Exp_star +10
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.3  +  Exp_star + 10
	local dif_exp_thalf_b = dif_exp_thalf - DEXP[charLv+1]
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.01+Exp_star
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" ) 
		UseItemFailed ( role )
		return
	elseif charLv>=1 and charLv<=9 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_five )
	elseif charLv>=10 and charLv<=29 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_three )
	elseif charLv>=30 and charLv<=59 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_one )
	elseif charLv>=60 and charLv<=75 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_half )
	elseif charLv>=76 and charLv<=85 and charLv~=79  then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b<=0 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b>0 then 
			dif_exp_thalf = dif_exp_thalf_b*0.02 + DEXP[charLv+1]
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv>=86 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )
	end
end

--Свиток призвания чудища (ID 2900)
function ItemUse_GWZHQ ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <=3 then
		SystemNotice(role ,"\205\229 \245\226\224\242\224\229\242 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229. \194\224\236 \237\243\230\237\238 4 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \209\226\232\242\238\234 \239\240\232\231\226\224\237\232\255 \247\243\228\232\249\224")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2888  , 1 , 4) 
	GiveItem ( role , 0 , 2889  , 1 , 4)
	GiveItem ( role , 0 , 2890  , 1 , 4)
	GiveItem ( role , 0 , 2891  , 1 , 4)
end

--Свиток вызова индюшки (ID 2888)
function ItemUse_HJZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \227\238\228\232\242\241\255 \234 \232\241\239\238\235\252\231\238\226\224\237\232\254 \237\224 \236\238\240\229." )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "\199\224 \240\224\231 \236\224\234\241\232\236\243\236 \236\238\230\237\238 \226\251\231\226\224\242\252 5 \240\243\247\237\251\245 \230\232\226\238\242\237\251\245. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =930
	local Refresh = 1800
	local life = 1800000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

--Свиток вызова Северного оленя (ID 2889)
function ItemUse_MLZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \227\238\228\232\242\241\255 \234 \232\241\239\238\235\252\231\238\226\224\237\232\254 \237\224 \236\238\240\229." )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "\199\224 \240\224\231 \236\224\234\241\232\236\243\236 \236\238\230\237\238 \226\251\231\226\224\242\252 5 \240\243\247\237\251\245 \230\232\226\238\242\237\251\245. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =931
	local Refresh = 3600
	local life = 3600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

--Свиток вызова Снежного человека (ID 2890)
function ItemUse_XRZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \227\238\228\232\242\241\255 \234 \232\241\239\238\235\252\231\238\226\224\237\232\254 \237\224 \236\238\240\229." )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "\199\224 \240\224\231 \236\224\234\241\232\236\243\236 \236\238\230\237\238 \226\251\231\226\224\242\252 5 \240\243\247\237\251\245 \230\232\226\238\242\237\251\245. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =932
	local Refresh = 7200
	local life = 7200000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

--Свиток вызова Деда Мороза (ID 2891)
function ItemUse_SDZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \227\238\228\232\242\241\255 \234 \232\241\239\238\235\252\231\238\226\224\237\232\254 \237\224 \236\238\240\229." )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "\199\224 \240\224\231 \236\224\234\241\232\236\243\236 \236\238\230\237\238 \226\251\231\226\224\242\252 5 \240\243\247\237\251\245 \230\232\226\238\242\237\251\245. \207\238\230\224\235\243\233\241\242\224, \239\238\239\240\238\225\243\233\242\229 \239\238\231\230\229!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =929
	local Refresh = 10800
	local life = 10800000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

--Рождественский подарок (ID 2897)
function ItemUse_SDDLB ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <=5 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \208\238\230\228\229\241\242\226\229\237\241\234\232\233 \239\238\228\224\240\238\234 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 \242\240\229\225\243\229\242\241\255 6 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \208\238\230\228\229\241\242\226\229\237\241\234\232\233 \239\238\228\224\240\238\234.")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2894  , 1 , 4) 
	GiveItem ( role , 0 , 2893  , 10 , 4) 
	GiveItem ( role , 0 , 2889  , 1 , 4) 
	GiveItem ( role , 0 , 2890 , 1 , 4) 
	GiveItem ( role , 0 , 2891  , 1 , 4) 
	GiveItem ( role , 0 , 2896  , 99 , 4) 
end

--------------------------------------------------------------------------------------------------
--Билеты
--------------------------------------------------------------------------------------------------

--Пропуск на событие (Остров Скелетов) (ID 2446)
function TW_Ticket_Script1(role, Item )
	local i = CheckBagItem(role,2446)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2446,1)
			if j == 1 then
				GoTo( role,  2816, 3255, "darkblue")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск на Остров Скелетов? (ID 2447)
function TW_Ticket_Script2(role, Item )
	local i = CheckBagItem(role,2447)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2447,1)
			if j == 1 then
				GoTo( role,  609 , 624 , "jialebi")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Пропуск на Базу Флота (ID 2491)
function TW_Ticket_Script3(role, Item )
	local i = CheckBagItem(role,2491)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2491,1)
			if j == 1 then
				GoTo( role,  1080 , 210 , "jialebi" )
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--------------------------------------------------------------------------------------------------
--Новый год
--------------------------------------------------------------------------------------------------

--Изысканная подарочная коробка (ID 2893)
function ItemUse_JMSDBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
		
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229 \245\226\224\242\224\229\242 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \200\231\251\241\234\224\237\237\243\254 \239\238\228\224\240\238\247\237\243\254 \234\238\240\238\225\234\243")
		UseItemFailed ( role )
		return
	end
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
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.." \238\242\234\240\251\226\224\229\242 \200\231\251\241\234\224\237\237\243\254 \239\238\228\224\240\238\247\237\243\254 \234\238\240\238\225\234\243 \232 \239\238\235\243\247\224\229\242 "..itemname    
			Notice ( message )
		end
	end
end

--Новогодний фейерверк (ID 2304)
function ItemUse_XNLP( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local star = 0
	if CheckDateNum >= 10122  and CheckDateNum <= 10123 then
		ItemUse_XINBOX ( role , Item )	
	end
end

function ItemUse_XINBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
		
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \205\238\226\238\227\238\228\237\232\233 \244\229\233\229\240\226\229\240\234.")
		UseItemFailed ( role )
		return
	end
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
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.." \232\241\239\238\235\252\231\243\229\242 \205\238\226\238\227\238\228\237\232\233 \244\229\233\229\240\226\229\240\234 \232 \239\238\235\243\247\224\229\242 "..itemname  
			Notice ( message )
		end
	end
end

--Новогодний сундук (ID 2307)
function ItemUse_XNBOX( role , Item )
		
	local lv = GetChaAttr(role, ATTR_LV)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if lv < 40 then
		SystemNotice( role ,"\194\224\248 \243\240\238\226\229\237\252 \237\232\230\229 \247\229\236 40. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242!")
		UseItemFailed ( role )	
	return
	end
	if Item_CanGet < 1 then
		SystemNotice(role ,"\194\224\236 \237\243\230\237\224 1 \241\226\238\225\238\228\237\224\255 \255\247\229\233\234\224 \226 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \205\238\226\238\227\238\228\237\232\233 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 30000 )
	if  el>=29700 and el<30000 then
	GiveItem ( role , 0 , 2240  , 1 , 4 ) 
	elseif el>=28700 and el<29700 then
	GiveItem ( role , 0 , 2237  , 1 , 4 ) 
	elseif el>=25700 and el<28700 then
	GiveItem ( role , 0 , 2239  , 1 , 4 ) 
	elseif el>=15700 and el<25700 then
	GiveItem ( role , 0 , 2241  , 1 , 4 )
	else
	local EID = math.random ( 2242, 2245 )
	GiveItem ( role , 0 , EID  , 1 , 4 ) 	
	end
end

--Номер билета (ID 2305)
function ItemUse_SZF ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <1 then
		SystemNotice(role ,"\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \205\238\236\229\240 \225\232\235\229\242\224. \205\243\230\229\237 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2306  , 1 , 4)
	local cha_name = GetChaDefaultName ( role ) 
			local message ="\207\238\231\228\240\224\226\235\229\237\232\255" ..cha_name.."\239\238\235\243\247\232\235 \240\224\241\239\232\241\234\243 \237\224 IPOD" 
			Notice ( message )
	
end

--Камень памяти (ID 2314)
function ItemUse_ShiTouJi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"\215\242\238\225\251 \232\241\239\238\235\252\231\238\226\224\242\252 \202\224\236\229\237\252 \239\224\236\255\242\232 \237\243\230\229\237 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , STONE_ID  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID = GetItemID ( Item_newJL )		
	if STONE_LV>8 then
		STONE_LV=8
	end
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_BaoshiLV , STONE_LV )
	local cha_name = GetChaDefaultName ( role )
	LG( "star_stonebox" ,cha_name, STONE_ID , STONE_LV )
end

--------------------------------------------------------------------------------------------------
--Производство
--------------------------------------------------------------------------------------------------

--Мешок с песком 1 ур. (ID 1145)
function ItemUse_ShaBao1(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "\210\240\229\237\232\240\238\226\234\224 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229? \221\242\238 \236\229\247\242\224!" )
		UseItemFailed ( role )
                return
	end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 937
                local Refresh = 1900000				        
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end

--Мешок с песком 2 ур. (ID 2729)
function ItemUse_ShaBao2(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "\210\240\229\237\232\240\238\226\234\224 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229? \221\242\238 \236\229\247\242\224!" )
		UseItemFailed ( role )
                return
	end
	        local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 938
                local Refresh = 1900000				        
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end

--Мешок с песком 3 ур. (ID 2753)
function ItemUse_ShaBao3(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "\210\240\229\237\232\240\238\226\234\224 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229? \221\242\238 \236\229\247\242\224!" )
		UseItemFailed ( role )
                return
	end
	        local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 939
                local Refresh = 1900000				        
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh , role )
		SetChaLifeTime( new, life )
end

--Мешок с песком 4 ур. (ID 2777)
function ItemUse_ShaBao4(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "\210\240\229\237\232\240\238\226\234\224 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229? \221\242\238 \236\229\247\242\224!" )
		UseItemFailed ( role )
                return
	end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 940
                local Refresh = 1900000				        
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end

--Мешок с песком 5 ур. (ID 2801)
function ItemUse_ShaBao5(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "\210\240\229\237\232\240\238\226\234\224 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229? \221\242\238 \236\229\247\242\224!" )
		UseItemFailed ( role )
                return
	end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 941
                local Refresh = 1900000				        
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end

--Генератор зла 1 ур. (ID 1144)
function ItemUse_FaSheng1(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
	      SystemNotice( role , "\194\251\231\238\226 \236\238\237\241\242\240\224 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229? \207\238\230\224\235\243\233\241\242\224, \225\243\228\252\242\229 \226\237\232\236\224\242\229\235\252\237\251!" )
	      UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,8 )
	local MonsterID = 0

	  if radID == 1   then
	       MonsterID = 841
	       
	  elseif radID == 2 then
	       MonsterID = 842
	           
	  elseif radID == 3 then
	       MonsterID = 843

	  elseif radID == 4 then
	       MonsterID = 843

	  elseif radID == 5 then
	       MonsterID = 845
	  elseif radID == 6 then
	       MonsterID = 846
	  elseif radID == 7 then
	       MonsterID = 229
	  elseif radID == 8 then
	       MonsterID = 274

	  end
		
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
                local Refresh = 3700000
		local life =  3600000
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
		SetChaLifeTime( new, life )
end

--Генератор зла 2 ур. (ID 2728)
function ItemUse_FaSheng2(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
	      SystemNotice( role , "\194\251\231\238\226 \236\238\237\241\242\240\224 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229? \207\238\230\224\235\243\233\241\242\224, \225\243\228\252\242\229 \226\237\232\236\224\242\229\235\252\237\251!" )
	      UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,15 )
	local MonsterID = 0


		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 then
	      MonsterID = 847
	  elseif radID == 2 then
	      MonsterID = 848
	  elseif radID == 3 then 
	      MonsterID = 849
	  elseif radID == 4 then 
	      MonsterID = 850
          elseif radID == 5 then
	      MonsterID = 851
	    elseif radID == 6 then
	      MonsterID = 852
	    elseif radID == 7 then
	      MonsterID = 211
	    elseif radID == 8 then
	      MonsterID = 706
	    elseif radID == 9 then
	      MonsterID = 673
	    elseif radID == 10 then
	      MonsterID = 690
	    elseif radID == 11 then
	      MonsterID = 691
	    elseif radID == 12 then
	      MonsterID = 692
	    elseif radID == 13 then
	      MonsterID = 693
	    elseif radID == 14 then
	      MonsterID = 106
	    elseif radID == 15 then
	      MonsterID = 289
	  end
		local Refresh = 3700000
		local life = 3600000
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end

--Генератор зла 3 ур. (ID 2752)
function ItemUse_FaSheng3(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
	      SystemNotice( role , "\194\251\231\238\226 \236\238\237\241\242\240\224 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229? \207\238\230\224\235\243\233\241\242\224, \225\243\228\252\242\229 \226\237\232\236\224\242\229\235\252\237\251!" )
	      UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,7 )
	local MonsterID = 0

		 
                local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 then
	       MonsterID = 757       
	  elseif radID == 2 then
	       MonsterID = 679                          
	  elseif radID == 3 then                    
	       MonsterID = 678                           
	  elseif radID == 4 then                    
	       MonsterID = 707      
	  elseif radID == 5 then
	       MonsterID = 708                          
          elseif radID == 6 then
	       MonsterID = 776                           
          elseif radID == 7 then
	       MonsterID = 74   
	  end
		local Refresh = 7300000
		local life = 7200000
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end

--Генератор зла 4 ур. (ID 2776)
function ItemUse_FaSheng4(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
	      SystemNotice( role , "\194\251\231\238\226 \236\238\237\241\242\240\224 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229? \207\238\230\224\235\243\233\241\242\224, \225\243\228\252\242\229 \226\237\232\236\224\242\229\235\252\237\251!" )
	      UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,5 )
	local MonsterID = 0
	local Refresh = 0
	local life = 0
	
                local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 then
	      MonsterID = 952        
	  elseif radID == 2 then
	      MonsterID = 805                          
	  elseif radID == 3 then                    
	      MonsterID = 807                           
	  elseif radID == 4 then                    
	      MonsterID = 786      
	  elseif radID == 5 then
	      MonsterID = 788                           
	  end
	       
	       if MonsterID == 952 then 
	          Refresh = 10900000
	          life = 10800000
	       else
		  Refresh = 7300000
		  life = 7200000
	       end
	          local new = CreateChaX( MonsterID , x , y , 145 , Refresh ,role)
		SetChaLifeTime( new, life )
end

--Водяная мина, 1 ур. (ID 2678)
function ItemUse_SL1 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "\204\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238 \242\238\235\252\234\238 \226 \236\238\240\229." )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \194\238\228\255\237\243\254 \236\232\237\243 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
                return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 1200
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=1200
	       y_move=-1200
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-1000
	 elseif fx_move == 4 then
	       x_move=-1000
	       y_move=-1000
	 elseif fx_move == 5 then
	       x_move=1000
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-1000
	       y_move=1000
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=1000
	 else  x_move=1000
	       y_move=1000
	 end
	      x =x_move + x
	      y =y_move + y

	local MonsterID = 942
	local Refresh = 700000
	local life = 600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end

--Водяная мина 2 ур. (ID 2742)
function ItemUse_SL2 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "\204\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238 \242\238\235\252\234\238 \226 \236\238\240\229." )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \194\238\228\255\237\243\254 \236\232\237\243 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
                return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 1200
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=1200
	       y_move=-1200
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-1000
	 elseif fx_move == 4 then
	       x_move=-1000
	       y_move=-1000
	 elseif fx_move == 5 then
	       x_move=1000
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-1000
	       y_move=1000
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=1000
	 else  x_move=1000
	       y_move=1000
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 943
	local Refresh = 700000
	local life = 600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end

--Водяная мина 3 ур. (ID 2766)
function ItemUse_SL3 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "\204\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238 \242\238\235\252\234\238 \226 \236\238\240\229." )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \194\238\228\255\237\243\254 \236\232\237\243 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
                return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 1200
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=1200
	       y_move=-1200
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-1000
	 elseif fx_move == 4 then
	       x_move=-1000
	       y_move=-1000
	 elseif fx_move == 5 then
	       x_move=1000
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-1000
	       y_move=1000
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=1000
	 else  x_move=1000
	       y_move=1000
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 944
	local Refresh = 700000
	local life = 600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end

--Водяная мина 4 ур. (ID 2790)
function ItemUse_SL4 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "\204\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238 \242\238\235\252\234\238 \226 \236\238\240\229." )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \194\238\228\255\237\243\254 \236\232\237\243 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
                return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 1200
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=1200
	       y_move=-1200
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-1000
	 elseif fx_move == 4 then
	       x_move=-1000
	       y_move=-1000
	 elseif fx_move == 5 then
	       x_move=1000
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-1000
	       y_move=1000
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=1000
	 else  x_move=1000
	       y_move=1000
	 end
	      x =x_move + x
	      y =y_move + y

	local MonsterID = 945
	local Refresh = 700000
	local life = 600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end

--Водяная мина 5 ур. (ID 2814
function ItemUse_SL5 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "\204\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238 \242\238\235\252\234\238 \226 \236\238\240\229." )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \194\238\228\255\237\243\254 \236\232\237\243 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
                return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 1200
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=1200
	       y_move=-1200
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-1000
	 elseif fx_move == 4 then
	       x_move=-1000
	       y_move=-1000
	 elseif fx_move == 5 then
	       x_move=1000
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-1000
	       y_move=1000
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=1000
	 else  x_move=1000
	       y_move=1000
	 end
	      x =x_move + x
	      y =y_move + y

	local MonsterID = 946
	local Refresh = 700000
	local life = 600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )

	SetChaLifeTime( new, life )
end

--Взрывной ягненок ур. 1 (ID 2372)
function ItemUse_ZBML1 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "\205\229\227\238\228\237\238 \234 \232\241\239\238\235\252\231\238\226\224\237\232\254 \237\224 \236\238\240\229" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Невозможно ипользовать в безопасной зоне " )
		UseItemFailed ( role )
                return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 800
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=800
	       y_move=-800
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-800
	 elseif fx_move == 4 then
	       x_move=-800
	       y_move=-800
	 elseif fx_move == 5 then
	       x_move=800
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-800
	       y_move=800
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=800
	 else  x_move=800
	       y_move=800
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 947
	local Refresh = 700000
	local life = 600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end

--Взрывающаяся овца 2 ур. (ID 2373)
function ItemUse_ZBML2 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "\205\229\227\238\228\237\238 \234 \232\241\239\238\235\252\231\238\226\224\237\232\254 \237\224 \236\238\240\229" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
                return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 800
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=800
	       y_move=-800
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-800
	 elseif fx_move == 4 then
	       x_move=-800
	       y_move=-800
	 elseif fx_move == 5 then
	       x_move=800
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-800
	       y_move=800
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=800
	 else  x_move=800
	       y_move=800
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 948
	local Refresh = 700000
	local life = 600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end

--Взрывающаяся овца 3 ур. (ID 2375)
function ItemUse_ZBML3 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "\205\229\227\238\228\237\238 \234 \232\241\239\238\235\252\231\238\226\224\237\232\254 \237\224 \236\238\240\229" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
                return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 800
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=800
	       y_move=-800
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-800
	 elseif fx_move == 4 then
	       x_move=-800
	       y_move=-800
	 elseif fx_move == 5 then
	       x_move=800
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-800
	       y_move=800
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=800
	 else  x_move=800
	       y_move=800
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 949
	local Refresh = 700000
	local life = 600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end

--Взрывающаяся овца 4 ур. (ID 2379)
function ItemUse_ZBML4 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "\205\229\227\238\228\237\238 \234 \232\241\239\238\235\252\231\238\226\224\237\232\254 \237\224 \236\238\240\229" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
                return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 800
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=800
	       y_move=-800
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-800
	 elseif fx_move == 4 then
	       x_move=-800
	       y_move=-800
	 elseif fx_move == 5 then
	       x_move=800
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-800
	       y_move=800
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=800
	 else  x_move=800
	       y_move=800
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 950
	local Refresh = 700000
	local life = 600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end

--Взрывная овечка 5 ур. (ID 2380)
function ItemUse_ZBML5 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "\205\229\227\238\228\237\238 \234 \232\241\239\238\235\252\231\238\226\224\237\232\254 \237\224 \236\238\240\229" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
                return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 800
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=800
	       y_move=-800
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-800
	 elseif fx_move == 4 then
	       x_move=-800
	       y_move=-800
	 elseif fx_move == 5 then
	       x_move=800
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-800
	       y_move=800
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=800
	 else  x_move=800
	       y_move=800
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 951
	local Refresh = 700000
	local life = 600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end

--------------------------------------------------------------------------------------------------
--Свадьба
--------------------------------------------------------------------------------------------------

--Сундук судьбы (ID 2916)
function ItemUse_LoveBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"\215\242\238\225\251 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242 \242\240\229\225\243\229\242\241\255 1 \241\226\238\225\238\228\237\224\255 \255\247\229\233\234\224 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	local count = 0
	if cha_type == 3 or cha_type == 4 then 
	       count =1
	end
	if cha_type == 1 or cha_type == 2 then
	       count =2
	end
	local el = math.random ( 1, 35 )
	if   count == 1 then
		if el==35 then
			local r1 = 0
			local r2 = 0	
			r1,r2 =MakeItem ( role , 2902  , 1 , 4 )
			local Item_girl = GetChaItem ( role , 2 , r2 )
			local new_el=math.random ( 1, 200 )
			SetItemAttr ( Item_girl , ITEMATTR_VAL_STR , new_el )	
		else
			local el1 = math.random ( 1, 12 )
			if el1==1  then
				GiveItem ( role , 0 , 3343  , 1 , 4 )
			elseif el1==2 then
				GiveItem ( role , 0 , 3077  , 1 , 4 )
			else
				local EID = math.random ( 4264, 4273 )
				GiveItem ( role , 0 , EID  , 1 , 4 )
			end
		end
	end
	local el2= math.random ( 1, 7 )
	if   count == 2 then
		if el2==7 then
			local r1 = 0
			local r2 = 0	
				r1,r2 =MakeItem ( role , 2903  , 1 , 4 )
			local Item_boy = GetChaItem ( role , 2 , r2 )
			local new_el=math.random ( 1, 1000 )
			SetItemAttr( Item_boy , ITEMATTR_VAL_STR , new_el )
		else
			local el3 = math.random ( 1, 12 )
			if el3==1  then
				GiveItem ( role , 0 , 3343  , 1 , 4 )
			elseif el3==2 then
				GiveItem ( role , 0 , 3077  , 1 , 4 )
			else
				local EID = math.random ( 4264, 4273 )
				GiveItem ( role , 0 , EID  , 1 , 4 )
			end
		end
	end
end

--Сундук платья (ID 2915)
function ItemUse_MarryBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"\194\224\236 \237\243\230\237\238 4 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \239\235\224\242\252\255")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
	       GiveItem ( role , 0 , 5244  , 1 , 4 )
	       GiveItem ( role , 0 , 5245  , 1 , 4 )
	       GiveItem ( role , 0 , 5246  , 1 , 4 )
	       GiveItem ( role , 0 , 5247  , 1 , 4 )
	elseif cha_type == 4  then 
	       GiveItem ( role , 0 , 5252  , 1 , 4 )
	       GiveItem ( role , 0 , 5253  , 1 , 4 )
	       GiveItem ( role , 0 , 5254  , 1 , 4 )
	       GiveItem ( role , 0 , 5255  , 1 , 4 )
	elseif cha_type == 1 then 
	       GiveItem ( role , 0 , 5221  , 1 , 4 )
	       GiveItem ( role , 0 , 5222  , 1 , 4 )
	       GiveItem ( role , 0 , 5223  , 1 , 4 )
	elseif cha_type == 2 then 
	       GiveItem ( role , 0 , 5238  , 1 , 4 )
	       GiveItem ( role , 0 , 5239  , 1 , 4 )
	       GiveItem ( role , 0 , 5240  , 1 , 4 )
	end
end

--Подарок Красоты (ID 2904)
function ItemUse_JRDQBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 10 then
		SystemNotice(role ,"\194\224\236 \237\243\230\237\238 10 \241\226\238\225\238\228\237\251\245 \241\235\238\242\238\226 \226 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \232\241\239\238\235\252\231\238\226\224\242\252 \207\238\228\224\240\238\234 \202\240\224\241\238\242\251")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	 if cha_type ==1 or cha_type ==2 then
	 SystemNotice(role ,"\207\238\228\224\240\238\234 \202\240\224\241\238\242\251 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237 \242\238\235\252\234\238 \239\229\240\241\238\237\224\230\224\236\232 \230\229\237\241\234\238\227\238 \239\238\235\224")
	UseItemFailed ( role )
		return
	end 
	
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=20 then
	GiveItem ( role , 0 , 3343  , 1 , 4 )
	elseif  el>=21 and el<=40 then
	GiveItem ( role , 0 , 3354  , 1 , 4 )
	GiveItem ( role , 0 , 3355  , 1 , 4 )
	GiveItem ( role , 0 , 3356  , 1 , 4 )
	GiveItem ( role , 0 , 3357  , 1 , 4 )
	GiveItem ( role , 0 , 3358  , 1 , 4 )
	GiveItem ( role , 0 , 3359  , 1 , 4 )
	elseif el>=41 and el<=45 then
	GiveItem ( role , 0 , 937  , 1 , 4 )
	elseif el>=46 and el<=65 then
	GiveItem ( role , 0 , 4264  , 1 , 4 )
	GiveItem ( role , 0 , 4265  , 1 , 4 )
	GiveItem ( role , 0 , 4266  , 1 , 4 )
	GiveItem ( role , 0 , 4267  , 1 , 4 )
	GiveItem ( role , 0 , 4268  , 1 , 4 )
	GiveItem ( role , 0 , 4269  , 1 , 4 )
	GiveItem ( role , 0 , 4270  , 1 , 4 )
	GiveItem ( role , 0 , 4271  , 1 , 4 )
	GiveItem ( role , 0 , 4272  , 1 , 4 )
	GiveItem ( role , 0 , 4273  , 1 , 4 )
	elseif el>=66 and el<=75 then
	GiveItem ( role , 0 , 3094  , 3 , 4 )
	elseif el>=76 and el<=85 then
	GiveItem ( role , 0 , 855  , 10 , 4 )
	elseif el>=86 and el<87 then
	GiveItem ( role , 0 , 1012  , 1 , 4 )
	elseif el>=87 and el<89 and cha_type == 3  then 
	GiveItem ( role , 0 , 5244  , 1 , 4 )
	GiveItem ( role , 0 , 5245  , 1 , 4 )
	GiveItem ( role , 0 , 5246  , 1 , 4 )
	GiveItem ( role , 0 , 5247  , 1 , 4 )
	elseif el>=89 and el<=90 and cha_type == 4 then
	GiveItem ( role , 0 , 5252  , 1 , 4 )
	GiveItem ( role , 0 , 5253  , 1 , 4 )
	GiveItem ( role , 0 , 5254  , 1 , 4 )
	GiveItem ( role , 0 , 5255  , 1 , 4 )
	else
	local EID = math.random ( 1808, 1811 )
	GiveItem ( role , 0 , EID  , 1 , 4 )
	end
end

--Подарок Ханка (ID 2905)
function ItemUse_CJDQBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 10 then
		SystemNotice(role ,"you need at least 10 free slot to open Gift of the Hunk")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	 if cha_type ==3 or cha_type ==4 then
		SystemNotice(role ,"\207\238\228\224\240\238\234 \213\224\237\234\224 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237 \242\238\235\252\234\238 \239\229\240\241\238\237\224\230\224\236\232 \236\243\230\241\234\238\227\238 \239\238\235\224")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=20 then
	GiveItem ( role , 0 , 3077  , 1 , 4 )
	elseif  el>=21 and el<=40 then
	GiveItem ( role , 0 , 3354  , 1 , 4 )
	GiveItem ( role , 0 , 3355  , 1 , 4 )
	GiveItem ( role , 0 , 3356  , 1 , 4 )
	GiveItem ( role , 0 , 3357  , 1 , 4 )
	GiveItem ( role , 0 , 3358  , 1 , 4 )
	GiveItem ( role , 0 , 3359  , 1 , 4 )
	elseif el>=41 and el<=45 then
	GiveItem ( role , 0 , 0936  , 1 , 4 ) 
	elseif el>=46 and el<=65 then
	GiveItem ( role , 0 , 4264  , 1 , 4 )
	GiveItem ( role , 0 , 4265  , 1 , 4 )
	GiveItem ( role , 0 , 4266  , 1 , 4 )
	GiveItem ( role , 0 , 4267  , 1 , 4 )
	GiveItem ( role , 0 , 4268  , 1 , 4 )
	GiveItem ( role , 0 , 4269  , 1 , 4 )
	GiveItem ( role , 0 , 4270  , 1 , 4 )
	GiveItem ( role , 0 , 4271  , 1 , 4 )
	GiveItem ( role , 0 , 4272  , 1 , 4 )
	GiveItem ( role , 0 , 4273  , 1 , 4 )
	elseif el>=66 and el<=75 then
	GiveItem ( role , 0 , 3094  , 3 , 4 )
	elseif el>=76 and el<=85 then
	GiveItem ( role , 0 , 855  , 10 , 4 )
	elseif el>=86 and el<87 then
	GiveItem ( role , 0 , 0862  , 1 , 4 )
	elseif el>=87 and el<89 and cha_type == 1  then 
	GiveItem ( role , 0 , 5221  , 1 , 4 )
	GiveItem ( role , 0 , 5222  , 1 , 4 )
	GiveItem ( role , 0 , 5223  , 1 , 4 )
	elseif el>=89 and el<=90 and cha_type == 2 then
	GiveItem ( role , 0 , 5238  , 1 , 4 )
	GiveItem ( role , 0 , 5239  , 1 , 4 )
	GiveItem ( role , 0 , 5240  , 1 , 4 )
	else
	local EID = math.random ( 1808, 1811 )
	GiveItem ( role , 0 , EID  , 1 , 4 )
	end
end

--Свадебные сладости (ID 2906)
function ItemUse_XTBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
		
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \209\226\224\228\229\225\237\251\229 \209\235\224\228\238\241\242\232")
		UseItemFailed ( role )
		return
	end
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
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.." \232\241\239\238\235\252\231\243\229\242 \209\226\224\228\229\225\237\251\229 \241\235\224\228\238\241\242\232 \232 \239\238\235\243\247\224\229\242 "..itemname  

			Notice ( message )
		end
	end
end

--Пакет со свадебными подарками (ID 2907)
function ItemUse_HQBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \241\226\238\225\238\228\237\238\227\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \210\240\229\225\243\229\242\241\255 3 \241\226\238\225\238\228\237\251\245 \255\247\229\233\234\232 \226 \240\254\234\231\224\234\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \207\224\234\229\242 \241\238 \241\226\224\228\229\225\237\251\236\232 \239\238\228\224\240\234\224\236\232")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=20 then
	GiveItem ( role , 0 , 1012  , 1 , 4 )
	elseif el>=21 and el<=40 then
	GiveItem ( role , 0 , 1016  , 1 , 4 )
	elseif el>=41 and el<60 then
	GiveItem ( role , 0 , 0333  , 1 , 4 )
	elseif el>=61 and el<=100 then
	GiveItem ( role , 0 , 0273  , 1 , 4 )	
	end
end

--Сундук счастливой хрюшки (ID 2909)
function ItemUse_XYPIGBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"\210\240\229\225\243\229\242\241\255 4 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \241\247\224\241\242\235\232\226\238\233 \245\240\254\248\234\232")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=4 then
	GiveItem ( role , 0 , 1012  , 1 , 4 )
	elseif el==5  then
	GiveItem ( role , 0 , 1016  , 1 , 4 )
	elseif el>=6 and el<=30 then
	GiveItem ( role , 0 , 0861  , 1 , 4 )
	elseif el>=31 and el<=60 then
	GiveItem ( role , 0 , 885  , 1 , 4 )
	elseif el>=61 and el<=75 then
	GiveItem ( role , 0 , 0860  , 1 , 4 )
	elseif el>=76 and el<=88 then
	GiveItem ( role , 0 , 0862  , 1 , 4 )
	elseif el>=89 and el<=100 then
	GiveItem ( role , 0 , 0863  , 1 , 4 )
	end
end

--Мешок благополучия пиратии (ID 2910)
function ItemUse_YSB( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\243\230\229\237 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \204\229\248\238\234 \225\235\224\227\238\239\238\235\243\247\232\255 \239\232\240\224\242\232\232")
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local star = 0
	if CheckDateNum >= 21723  and CheckDateNum <= 21801 then
		ItemUse_YSBOX ( role , Item )
	else 
		SystemNotice(role ,"\194\240\229\236\255 \229\249\229 \237\229 \239\240\232\248\235\238. \205\229 \239\251\242\224\233\241\255 \236\229\237\255 \238\225\236\224\237\243\242\252!")
		UseItemFailed ( role )
		return
	end
end

--------------------------------------------------------------------------------------------------
--Абаддон
--------------------------------------------------------------------------------------------------

function ItemUse_YSBOX ( role , Item )
	local el = math.random ( 1, 1000 )
	if  el>=1 and el<=5 then
		GiveItem ( role , 0 , 1012  , 1 , 4 )
	elseif el>=6 and el<=206 then
		GiveItem ( role , 0 , 0860  , 1 , 4 )
	elseif el>=207 and el<=407 then
		GiveItem ( role , 0 , 0861  , 1 , 4 )
	elseif el>=408 and el<=608 then
		GiveItem ( role , 0 , 0862  , 1 , 4 )
	elseif el>=609 and el<=810 then
		GiveItem ( role , 0 , 0863  , 1 , 4 )
	elseif el>=811 and el<=1000 then

end
end

--Сундук Хардина (ID 2836)
function ItemUse_Hadisi( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \202\224\234 \236\232\237\232\236\243\236 \237\243\230\237\238 3 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \194\224\248\229\236 \240\254\234\231\224\234\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \213\224\240\228\232\237\224")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2817  , 1 , 4 )
	GiveItem ( role , 0 , 2818  , 1 , 4 )
	GiveItem ( role , 0 , 2819  , 1 , 4 )
end

--Сундук Тьмы (ID 2837)
function ItemUse_Anhei( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \202\224\234 \236\232\237\232\236\243\236 \237\243\230\237\238 3 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \194\224\248\229\236 \240\254\234\231\224\234\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \210\252\236\251")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2820  , 1 , 4 )
	GiveItem ( role , 0 , 2821  , 1 , 4 )
	GiveItem ( role , 0 , 2822  , 1 , 4 )
end

--Сундук Абаддона (ID 2838)
function ItemUse_Diyu( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \202\224\234 \236\232\237\232\236\243\236 \237\243\230\237\238 3 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \194\224\248\229\236 \240\254\234\231\224\234\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \192\225\224\228\228\238\237\224")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2823  , 1 , 4 )
	GiveItem ( role , 0 , 2824  , 1 , 4 )
	GiveItem ( role , 0 , 2825  , 1 , 4 )
end

--Сундук Асуры (ID 2839)
function ItemUse_Xiuluo( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"\194\224\236 \237\243\230\237\238 3 \241\226\238\225\238\228\237\251\229 \255\247\229\233\234\232 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \192\241\243\240\251")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2826  , 1 , 4 )
	GiveItem ( role , 0 , 2827  , 1 , 4 )
	GiveItem ( role , 0 , 2828  , 1 , 4 )
end

--Сундук Бездны (ID 2840)
function ItemUse_Youming( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"\194\224\236 \237\243\230\237\238 3 \241\226\238\225\238\228\237\251\229 \255\247\229\233\234\232 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \193\229\231\228\237\251")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2829  , 1 , 4 )
	GiveItem ( role , 0 , 2830  , 1 , 4 )
	GiveItem ( role , 0 , 2831  , 1 , 4 )
end

--Сундук Стикса (ID 2841)
function ItemUse_Minghe( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"\194\224\236 \237\243\230\237\238 3 \241\226\238\225\238\228\237\251\229 \255\247\229\233\234\232 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \209\242\232\234\241\224 ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2832  , 1 , 4 )
	GiveItem ( role , 0 , 2833  , 1 , 4 )
	GiveItem ( role , 0 , 2834  , 1 , 4 )
end

--Скелет Смерти (ID 2842)
function ItemUse_Sishen( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \209\234\229\235\229\242 \209\236\229\240\242\232 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 \242\240\229\225\243\229\242\241\255 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	local star_rad=math.random ( 1, 2 )
	if lv < 40 then
		SystemNotice(role ,"\194\224\248 \243\240\238\226\229\237\252 \237\232\230\229 \247\229\236 40. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242!")
		UseItemFailed ( role )	
	elseif job == 9 then 
		if star_rad==1 then
			GiveItem ( role , 0 , 2331  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2332  , 1 , 4 ) 
		end
	elseif job == 8 then   
		if star_rad==1 then
			GiveItem ( role , 0 , 2333  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2334  , 1 , 4 ) 
		end
	elseif job == 12 then 
		local eleven_rad=math.random ( 1, 4 )
		if eleven_rad==1 then
			GiveItem ( role , 0 , 2337  , 1 , 4 ) 
		elseif eleven_rad==2 then
			GiveItem ( role , 0 , 2338  , 1 , 4 ) 
		elseif eleven_rad==3 then
			GiveItem ( role , 0 , 2339  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2340  , 1 , 4 ) 
		end
	elseif job == 16 then 
		if star_rad==1 then
			GiveItem ( role , 0 , 2335  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2336  , 1 , 4 ) 
		end
	elseif job == 13 then    
		if star_rad==1 then
			GiveItem ( role , 0 , 2341  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2342  , 1 , 4 ) 
		end
	elseif job == 14 then    
		if star_rad==1 then
			GiveItem ( role , 0 , 2343  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2344  , 1 , 4 ) 
		end
	else 
		SystemNotice(role ,"\207\240\229\228\236\229\242 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237 \242\238\235\252\234\238 \239\238\241\235\229 \226\251\225\238\240\224 \226\242\238\240\238\227\238 \238\241\237\238\226\237\238\227\238 \234\235\224\241\241\224!")
		UseItemFailed ( role )	
	end
end

--Законный сундук Черного дракона (ID 2843)
function ItemUse_Zhenheilong( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"\215\242\238\225\251 \238\242\234\240\251\242\252 \199\224\234\238\237\237\251\233 \241\243\237\228\243\234 \215\229\240\237\238\227\238 \228\240\224\234\238\237\224 \239\238 \234\240\224\233\237\229\233 \236\229\240\229 \242\240\229\225\243\229\242\241\255 4 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2367  , 1 , 20 ) 
	GiveItem ( role , 0 , 2368  , 1 , 20 ) 
	GiveItem ( role , 0 , 2369  , 1 , 20 )
        local cha_type = GetChaTypeID ( role )
	if cha_type == 4 then 
		GiveItem ( role , 0 , 2370  , 1 , 20 )		
	end
end

--Проход в Абаддон 4 (ID 2844)
function Jz_Script_4thDy( role, Item )
	local i = CheckBagItem( role, 2844 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then 
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end 

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 2844, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 79
					teleport( role, n )
				else
					MoveCity( role, "Abaddon 4" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

--Бремя Смерти (ID 2919)
function ItemUse_DathBagA(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \194\224\236 \237\243\230\237\224 1 \241\226\238\225\238\228\237\224\255 \255\247\229\233\234\224 \226 \194\224\248\229\236 \240\254\234\231\224\234\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \193\240\229\236\255 \209\236\229\240\242\232")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2846  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2928  , 1 , 16 ) 
	end
end

--Бремя Смерти (ID 2920)
function ItemUse_DathBagB(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \194\224\236 \237\243\230\237\224 1 \241\226\238\225\238\228\237\224\255 \255\247\229\233\234\224 \226 \194\224\248\229\236 \240\254\234\231\224\234\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \193\240\229\236\255 \209\236\229\240\242\232")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2847  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2929  , 1 , 16 ) 
	end
end

--Бремя Смерти (ID 2921)
function ItemUse_DathBagC(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \194\224\236 \237\243\230\237\224 1 \241\226\238\225\238\228\237\224\255 \255\247\229\233\234\224 \226 \194\224\248\229\236 \240\254\234\231\224\234\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \193\240\229\236\255 \209\236\229\240\242\232")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2848  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2927  , 1 , 16 ) 
	end
end

--Бремя Смерти (ID 2922)
function ItemUse_DathBagD(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \194\224\236 \237\243\230\237\224 1 \241\226\238\225\238\228\237\224\255 \255\247\229\233\234\224 \226 \194\224\248\229\236 \240\254\234\231\224\234\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \193\240\229\236\255 \209\236\229\240\242\232")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2849  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2927  , 1 , 16 ) 
	end
end

--Бремя Смерти (ID 2923)
function ItemUse_DathBagE(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \194\224\236 \237\243\230\237\224 1 \241\226\238\225\238\228\237\224\255 \255\247\229\233\234\224 \226 \194\224\248\229\236 \240\254\234\231\224\234\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \193\240\229\236\255 \209\236\229\240\242\232")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2850  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2929  , 1 , 16 ) 
	end
end

--Бремя Смерти (ID 2924)
function ItemUse_DathBagF(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \194\224\236 \237\243\230\237\224 1 \241\226\238\225\238\228\237\224\255 \255\247\229\233\234\224 \226 \194\224\248\229\236 \240\254\234\231\224\234\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \193\240\229\236\255 \209\236\229\240\242\232")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2851  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2931  , 1 , 16 ) 
	end
end

--Бремя Смерти (ID 2925)
function ItemUse_DathBagG(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \194\224\236 \237\243\230\237\224 1 \241\226\238\225\238\228\237\224\255 \255\247\229\233\234\224 \226 \194\224\248\229\236 \240\254\234\231\224\234\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \193\240\229\236\255 \209\236\229\240\242\232")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2852  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2932  , 1 , 16 ) 
	end
end

--Бремя Смерти (ID 2926)
function ItemUse_DathBagH(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \194\224\236 \237\243\230\237\224 1 \241\226\238\225\238\228\237\224\255 \255\247\229\233\234\224 \226 \194\224\248\229\236 \240\254\234\231\224\234\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \193\240\229\236\255 \209\236\229\240\242\232")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2930  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2930  , 1 , 16 ) 
	end
end

--------------------------------------------------------------------------------------------------
--Карта перерождения
--------------------------------------------------------------------------------------------------

--Карта перерождения (ID 2941)
function ItemUse_ZSCard(role, Item )
	local i = CheckBagItem(role,2941)
	local k = ChaIsBoat(role)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local charLv=Lv ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"\215\242\238\225\251 \232\241\239\238\235\252\231\238\226\224\242\252 \202\224\240\242\243 \239\229\240\229\240\238\230\228\229\237\232\255 \237\243\230\229\237 1 \241\226\238\225\238\228\237\251\233 \241\235\238\242 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229")
		UseItemFailed ( role )
		return
	end
	if charLv<=1  then
		SystemNotice( role , "\194\251 \228\238\235\230\237\251 \225\251\242\252 \243\240\238\226\237\255 75 \232\235\232 \226\251\248\229, \247\242\238\225\251 \232\241\239\238\235\252\231\238\226\224\242\252 \202\224\240\242\243 \239\229\240\229\240\238\230\228\229\237\232\255" )
		UseItemsFailed ( role )
		return
	elseif k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2941,1) -- карта перерождения
			if j == 1 then
				GiveItem ( role , 0 , 2235 , 1 , 42)
				GoTo( role,  1750 , 909 , "jialebi")
				return
			end
		end
	else
		UseItemsFailed ( role )
	end
		
end

--------------------------------------------------------------------------------------------------
--Священная война
--------------------------------------------------------------------------------------------------

--Свиток призыва хранителя (ID 2381)
function ItemUse_SummonBigBOSS(role, Item )
local map_name_role = GetChaMapName ( role )
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "\205\229\227\238\228\237\238 \234 \232\241\239\238\235\252\231\238\226\224\237\232\254 \237\224 \236\238\240\229" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
                return
	end
   if  map_name_role == "guildwar" then
	local x,y = GetChaPos(role)
	if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
	local MonsterID = 1007
	local Refresh = 1300
	local life = 1200000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,1)
	end

	if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
	local MonsterID = 1008
	local Refresh = 1300
	local life = 1200000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,2)
	end
   elseif map_name_role == "guildwar2" then 

    local x,y = GetChaPos(role)
	if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
	local MonsterID = 1007
	local Refresh = 1300
	local life = 12600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,1)
	end

	if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
	local MonsterID = 1008
	local Refresh = 1300
	local life = 1200000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,2)
	end
    else 
        SystemNotice( role , "\221\242\238\242 \239\240\229\228\236\229\242 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237 \242\238\235\252\234\238 \237\224 \242\229\240\240\232\242\238\240\232\232 \209\226\255\249\229\237\237\238\233 \194\238\233\237\251" )
        UseItemFailed ( role )
        return
    end

end

--Проход к статуе (ID 2986)
function ItemUse_moveDX(role, Item)
local i = CheckBagItem(role,2986)
 local Cha_Boat = 0
       Cha_Boat = GetCtrlBoat ( role )
	 if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "\205\229\227\238\228\237\238 \234 \232\241\239\238\235\252\231\238\226\224\237\232\254 \237\224 \236\238\240\229" )
		UseItemFailed ( Cha_Boat )
		return
	 end
	 local reg = 0
	      reg =IsChaInRegion( role, 2 )
	 if reg == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
                return
	 end


 if GetChaGuildID(role) == 0 then
    SystemNotice( role , "\194\251 \237\229 \241\238\241\242\238\232\242\229 \237\232 \226 \238\228\237\238\233 \244\240\224\234\246\232\232. \207\229\240\229\236\229\249\229\237\232\229 \237\229\226\238\231\236\238\230\237\238" )
    UseItemFailed ( role )
    return
 end

local map_name_role = GetChaMapName ( role )
if map_name_role =="guildwar" then
	 if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 and map_name_role =="guildwar" then
			if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					MoveTo( role,  305, 87,  "guildwar" )
					return
				end
			end
								 

	 elseif GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 and map_name_role =="guildwar" then
			 if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					MoveTo( role,  309, 539,  "guildwar" )
					return
				end
			end
	 
	 else
			UseItemFailed ( role )
			    
	 end

elseif map_name_role =="guildwar2" then

	 if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 and map_name_role =="guildwar2"  then
		       if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					MoveTo( role,  305, 87,  "guildwar2" )
					return
				end
			end
			
	 elseif GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 and map_name_role =="guildwar2"  then
			 if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					 MoveTo( role,  309, 539,  "guildwar2" )
					return
				end
			end
	 
	 else
			UseItemFailed ( role )
		
   
         end

else
        SystemNotice( role , "\221\242\238\242 \225\232\235\229\242 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237 \242\238\235\252\234\238 \237\224 \242\229\240\240\232\242\238\240\232\232 \209\226\255\249\229\237\237\238\233 \194\238\233\237\251" )
        UseItemFailed ( role )
        return
   end        
end

--------------------------------------------------------------------------------------------------
--Разное
--------------------------------------------------------------------------------------------------
--Сундук с украшениями капитана овна (ID 2955)
function ItemUse_CZBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"\205\243\230\237\238 4 \241\226\238\225\238\228\237\251\245 \241\235\238\242\224 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \241 \243\234\240\224\248\229\237\232\255\236\232 \234\224\239\232\242\224\237\224 \238\226\237\224")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
	     
	       GiveItem ( role , 0 , 5349  , 1 , 4 )
	       GiveItem ( role , 0 , 5350  , 1 , 4 )
	       GiveItem ( role , 0 , 5351  , 1 , 4 )
	elseif cha_type == 4  then 
	       GiveItem ( role , 0 , 5352  , 1 , 4 )
	       GiveItem ( role , 0 , 5353  , 1 , 4 )
	       GiveItem ( role , 0 , 5354  , 1 , 4 )
	       GiveItem ( role , 0 , 5355  , 1 , 4 )
	elseif cha_type == 1 then 
	      
	       GiveItem ( role , 0 , 5341  , 1 , 4 )
	       GiveItem ( role , 0 , 5342  , 1 , 4 )
	       GiveItem ( role , 0 , 5343  , 1 , 4 )
	elseif cha_type == 2 then 
	       
	       GiveItem ( role , 0 , 5345  , 1 , 4 )
	       GiveItem ( role , 0 , 5346  , 1 , 4 )
	       GiveItem ( role , 0 , 5347  , 1 , 4 )
	end
end


--Первоапрельский подарок (ID 2953)
function ItemUse_Foolish ( role , Item )
	local charLv=Lv ( role )
	local Cha_Boat = 0
		Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local Exp_el=GetChaAttr (  role , ATTR_CEXP )
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.03+Exp_el
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )

end

--Свиток хранителя Белой овцы (ID 2990)
function ItemUse_BYSHJZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \226\251\231\226\224\242\252 \236\238\237\241\242\240\224 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1009
	local Refresh = 3700
	local life = 3600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

--------------------------------------------------------------------------------------------------
--Книги навыков перерождения
--------------------------------------------------------------------------------------------------
--Книга навыков перерожденного Воителя (ID 2956)
function Sk_Script_Wyz ( role , Item ) 											
	local sk_add = SK_WYZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--Книга навыков перерожденного Чемпиона (ID 2957)
function Sk_Script_Bsj ( role , Item ) 											
	local sk_add = SK_BSJ 
	local form_sklv = GetSkillLv( role , sk_add ) 

	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--Книга навыков перерожденной колдуньи (ID 2958)
function Sk_Script_Emzz ( role , Item ) 											
	local sk_add = SK_EMZZ 
	local form_sklv = GetSkillLv( role , sk_add ) 

	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--Книга навыков перерожденной Целительницы (ID 2959)
function Sk_Script_Sssp ( role , Item ) 											
	local sk_add = SK_SSSP 
	local form_sklv = GetSkillLv( role , sk_add ) 

	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Книга навыков перерожденного покорителя морей (ID 2960)
function Sk_Script_Cyn ( role , Item ) 											
	local sk_add = SK_CYN 
	local form_sklv = GetSkillLv( role , sk_add ) 

	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Книга навыков перерожденного стрелка (ID 2961)
function Sk_Script_Hlp ( role , Item ) 											
	local sk_add = SK_HLP 
	local form_sklv = GetSkillLv( role , sk_add ) 

	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Знаменитый кекс (ID 2988)
function ItemUse_NiceCake (role, Item )

	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( role,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( role , "\211 \194\224\241 \237\229\242 \236\229\228\224\235\232 \238\242\226\224\227\232")
		UseItemFailed ( role )
		return 0
		end
	local Book2 =  GetChaItem2 ( role , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
	local el_fame = GetChaAttr(role, ATTR_FAME)
	
		if HonorPoint < 27000 and el_fame < 99990001 then
		local HonorPoint_X=HonorPoint+3000
		SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
		
		local fame_resume = 9999
		el_fame = el_fame + fame_resume
		SetCharaAttr(el_fame, role, ATTR_FAME) 

		else 
		SystemNotice( role , "\211 \194\224\241 \241\235\232\248\234\238\236 \236\237\238\227\238 \238\247\234\238\226 \247\229\241\242\232 \232\235\232 \240\229\239\243\242\224\246\232\232. \221\242\238\242 \239\232\240\238\227 \225\238\235\252\248\229 \237\229 \243\228\238\226\235\229\242\226\238\240\232\242 \194\224\241")
		UseItemFailed ( role )
		end
end

-- Неизвестно (n\a)
function ItemUse_TJQ ( role , Item )
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv >70 then
		SystemNotice ( role , "\210\238\235\252\234\238 \232\227\240\238\234\232 \243\240\238\226\237\255 70 \232 \226\251\248\229 \236\238\227\243\242 \232\241\239\238\235\252\231\238\226\224\242\252 \253\242\238\242 \239\240\229\228\236\229\242" )
		UseItemFailed ( role )
		return	
	end
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	if ChaStateLv > statelv then
		SystemNotice(role ,"\221\244\244\229\234\242\251 \238\242 \228\240\243\227\232\245 \231\229\235\232\233 \237\229 \241\238\247\232\242\224\254\242\241\255")
		UseItemFailed ( role )
		return
	end
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
end
 
-- Неизвестно (n\a)
function ItemUse_65BBBox ( role , Item )
	local job = GetChaAttr( role, ATTR_JOB)
        local cha_type = GetChaTypeID ( role )
	if job == 0 then
		SystemNotice ( role , "\210\238\235\252\234\238 \239\232\240\224\242\251 \239\238\241\235\229 \229\227\238/\229\229 \239\240\238\228\226\232\230\229\237\232\255 \239\238 \241\235\243\230\225\229 \236\238\227\243\242 \232\241\239\238\235\252\231\238\226\224\242\252 \253\242\238\242 \241\243\237\228\243\234.")
		UseItemFailed ( role )
		return
	else
		if job == 12 or job == 2 then
			GiveItem( role , 0 , 780  , 1 , 4 )
		elseif job == 9	then
			GiveItem( role , 0 , 769  , 1 , 4 )
		elseif job == 16 or job == 4 then
			GiveItem( role , 0 , 806  , 1 , 4 )
		elseif job == 8	then
			GiveItem( role , 0 , 766  , 1 , 4 )
		elseif job == 13 or job == 5 then
			GiveItem( role , 0 ,792  , 1 , 4 )
		elseif job == 14 then
			GiveItem( role , 0 , 798  , 1 , 4 )
		elseif job == 1 then
			if cha_type == 1 then
				GiveItem( role , 0 , 769  , 1 , 4 )
			elseif cha_type == 2 then
				GiveItem( role , 0 , 766  , 1 , 4 )
			end
		end
	
	end
end

-- Билет на Кольцо 65 ур.
function ItemUse_65JZDH ( role , Item )

	local item_type = BaoXiang_65JZDH
	local item_type_rad = BaoXiang_65JZDH_Rad 
	local item_type_count = BaoXiang_65JZDH_Count 
	local maxitem = BaoXiang_65JZDH_Mxcount	
	local item_quality = 4
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
	SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242")
		UseItemFailed ( role )
		return
	end
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

		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 6618 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
end

-- Билет на Кольцо 75 ур.
function ItemUse_75JZDH ( role , Item )

	local item_type = BaoXiang_75JZDH
	local item_type_rad = BaoXiang_75JZDH_Rad 
	local item_type_count = BaoXiang_75JZDH_Count 
	local maxitem = BaoXiang_75JZDH_Mxcount
	local item_quality = 4
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
	SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \232\241\239\238\235\252\231\238\226\224\242\252 \239\240\229\228\236\229\242")
		UseItemFailed ( role )
		return
	end
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

		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 6638 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
end

-- Пакет
function ItemUse_RedBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы использовать Пакет необходимо иметь 1 свободный слот в Вашем инвентаре. ")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 5 )
	if rad ==1 then
	GiveItem ( role , 0 , 1012  , 1 , 4 )	
	end
	if rad ==2 then	
	GiveItem ( role , 0 , 860  , 1 , 4 )	
	end
	if rad ==3 then	
	GiveItem ( role , 0 , 862  , 1 , 4 )		
	end
	if rad ==4 then	
	GiveItem ( role , 0 , 861  , 1 , 4 )			
	end
	if rad ==5 then	
	GiveItem ( role , 0 , 863  , 1 , 4 )			
	end
end

function ItemUse_Avgust ( role , Item )
	local item_type = BaoXiang_Avgust 
	local item_type_rad = BaoXiang_Avgust_Rad 
	local item_type_count = BaoXiang_Avgust_Count 
	local maxitem = BaoXiang_Avgust_Mxcount
	local item_quality = BaoXiang_Avgust_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229. \205\229\226\238\231\236\238\230\237\238 \238\242\234\240\251\242\252 \241\243\237\228\243\234")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role )  
	Notice ( message )
end 

function ItemUse_FLOWER ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end

	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \226\251\231\226\224\242\252 \236\238\237\241\242\240\224 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1037					-- Брачный аферист
	local Refresh = 7300					
	local life = 7200000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

function ItemUse_QQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end

	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "\205\229\226\238\231\236\238\230\237\238 \226\251\231\226\224\242\252 \236\238\237\241\242\240\224 \226 \193\229\231\238\239\224\241\237\238\233 \199\238\237\229" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1036					-- Воздушный шар
	local Refresh = 60					
	local life = 7200000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

-- Билет на посещение Церкви
function Jz_Script_yszs( role, Item )
	local Now_Week		= os.date( "%w" )
	local Now_WeekNum	= tonumber( Now_Week )
	local Now_Time		= os.date( "%H" )
	local Now_TimeNum	= tonumber( Now_Time )
	local Now_Miniute	= os.date( "%M" )
	local Now_Miniute	= tonumber( Now_Miniute )
	local CheckDateNum	= Now_WeekNum * 10000 + Now_TimeNum * 100 + Now_Miniute

	if CheckDateNum < 61200 then
		SystemNotice( role, "Церковь еще не открылась. Приходи между 12:00 и 24:00 каждую субботу и воскресенье." )
		UseItemFailed( role )
		return
	end

	if CheckDateNum > 72400 then
		UseItemFailed( role )
		return
	end

	local i = CheckBagItem( role, 3024 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		UseItemFailed( role )
		return
	end 

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 3024, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 114
					teleport( role, n )
				else
					MoveCity( role, "Church" )
				end
				return
			end
		end
	else
		UseItemFailed( role )
	end
end

-- Карта второго перерождения
function ItemUse_ZSCard2(role, Item )
	local i = CheckBagItem(role,6019)
	local k = ChaIsBoat(role)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local charLv=Lv ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы использовать Карту второго перерождения нужен 1 свободный слот в Вашем инвентаре ")
		UseItemFailed ( role )
		return
	end
	if charLv<=74  then
		SystemNotice( role , "Вы должны быть 75 уровня или выше, чтобы использовать Карту перерождения " )
		UseItemsFailed ( role )
		return
	elseif k == 0 then
		if i > 0 then
			local j = DelBagItem(role,6019,1) 
			if j == 1 then
				GiveItem ( role , 0 , 5765 , 1 , 42)
				GoTo( role,  1750 , 909 , "jialebi")
				return
			end
		end
	else
		UseItemsFailed ( role )
	end
	
end

----------------------------------------
-- Книги навыков второго перерождения --
----------------------------------------

-- Книга навыков второго перерождения (Воитель)
function Sk_Script_Wyz2 ( role , Item ) 											
	local sk_add = SK_WYZ 
	local form_sklv = GetSkillLv( role , sk_add ) 

	if form_sklv >= 2  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 2 , 2 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

-- Книга навыков второго перерождения (Чемпион)
function Sk_Script_Bsj2 ( role , Item ) 											
	local sk_add = SK_BSJ 
	local form_sklv = GetSkillLv( role , sk_add ) 

	if form_sklv >= 2  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 2 , 2 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Книга навыков второго перерождения (Колдунья)
function Sk_Script_Emzz2 ( role , Item ) 											
	local sk_add = SK_EMZZ 
	local form_sklv = GetSkillLv( role , sk_add ) 

	if form_sklv >= 2  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 2 , 2 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Книга навыков второго перерождения (Целительница)
function Sk_Script_Sssp2 ( role , Item ) 											
	local sk_add = SK_SSSP 
	local form_sklv = GetSkillLv( role , sk_add ) 

	if form_sklv >= 2  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 2 , 2 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Книга навыков второго перерождения (Покоритель морей)
function Sk_Script_Cyn2 ( role , Item ) 											
	local sk_add = SK_CYN 
	local form_sklv = GetSkillLv( role , sk_add ) 

	if form_sklv >= 2  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 2 , 2 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Книга навыков второго перерождения (Стрелок)
function Sk_Script_Hlp2 ( role , Item ) 											
	local sk_add = SK_HLP 
	local form_sklv = GetSkillLv( role , sk_add ) 

	if form_sklv >= 2  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 2 , 2 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

-- Покровительство Богини (ID 938)
function Jz_Script_Nebesa(role, Item )
	local i = CheckBagItem(role,938)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,938,1)
			if j == 1 then
				GoTo( role,  1750 , 909 , "jialebi")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

-- Расписка на 40 украшения
function ItemUse_40ynik( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"Чтобы использовать Расписку необходимо иметь 2 свободных слота в Вашем инвентаре. ")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 5 )
	if rad ==1 then
	GiveItem ( role , 0 , 324  , 1 , 4 )	
	end
	if rad ==2 then	
	GiveItem ( role , 0 , 327  , 1 , 4 )	
	end
	if rad ==3 then	
	GiveItem ( role , 0 , 328  , 1 , 4 )		
	end
	if rad ==4 then	
	GiveItem ( role , 0 , 329  , 1 , 4 )			
	end
	if rad ==5 then	
	GiveItem ( role , 0 , 330  , 1 , 4 )				
	end
	local rad1 = math.random ( 1, 2 )
	if rad1 ==1 then
		GiveItem ( role , 0 , 739  , 1 , 4 )	
	end
	if rad1 ==2 then	
		GiveItem ( role , 0 , 461  , 1 , 4 )	
	end
end

-- Расписка на 50 украшения
function ItemUse_50ynik( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"Чтобы использовать Расписку необходимо иметь 2 свободных слота в Вашем инвентаре. ")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 5 )
	if rad ==1 then
	GiveItem ( role , 0 , 349  , 1 , 4 )	
	end
	if rad ==2 then	
	GiveItem ( role , 0 , 348  , 1 , 4 )	
	end
	if rad ==3 then	
	GiveItem ( role , 0 , 347  , 1 , 4 )		
	end
	if rad ==4 then	
	GiveItem ( role , 0 , 346  , 1 , 4 )			
	end
	if rad ==5 then	
	GiveItem ( role , 0 , 334  , 1 , 4 )				
	end


	local rad1 = math.random ( 1, 2 )
	if rad1 ==1 then
		GiveItem ( role , 0 , 463  , 1 , 4 )	
	end
	if rad1 ==2 then	
		GiveItem ( role , 0 , 462  , 1 , 4 )	
	end
end

-- Расписка на 60 украшения
function ItemUse_60ynik( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"Чтобы использовать Расписку необходимо иметь 2 свободных слота в Вашем инвентаре. ")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 5 )
	if rad ==1 then
	GiveItem ( role , 0 , 414  , 1 , 4 )	
	end
	if rad ==2 then	
	GiveItem ( role , 0 , 415  , 1 , 4 )	
	end
	if rad ==3 then	
	GiveItem ( role , 0 , 416  , 1 , 4 )		
	end
	if rad ==4 then	
	GiveItem ( role , 0 , 417  , 1 , 4 )			
	end
	if rad ==5 then	
	GiveItem ( role , 0 , 387  , 1 , 4 )				
	end

	local rad1 = math.random ( 1, 2 )
	if rad1 ==1 then
		GiveItem ( role , 0 , 495  , 1 , 4 )	
	end
	if rad1 ==2 then	
		GiveItem ( role , 0 , 497  , 1 , 4 )	
	end
end

-- Расписка на 65 украшения
function ItemUse_65ynik( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"Чтобы использовать Расписку необходимо иметь 2 свободных слота в Вашем инвентаре. ")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 5 )
	if rad ==1 then
	GiveItem ( role , 0 , 6621  , 1 , 4 )	
	end
	if rad ==2 then	
	GiveItem ( role , 0 , 6625  , 1 , 4 )	
	end
	if rad ==3 then	
	GiveItem ( role , 0 , 6626  , 1 , 4 )		
	end
	if rad ==4 then	
	GiveItem ( role , 0 , 6630  , 1 , 4 )			
	end
	if rad ==5 then	
	GiveItem ( role , 0 , 6635  , 1 , 4 )				
	end

	local rad1 = math.random ( 1, 5 )
	if rad1 ==1 then
		GiveItem ( role , 0 , 6904  , 1 , 4 )	
	end
	if rad1 ==2 then	
		GiveItem ( role , 0 , 6905  , 1 , 4 )	
	end
	if rad1 ==3 then	
		GiveItem ( role , 0 , 6906  , 1 , 4 )	
	end
	if rad1 ==4 then	
		GiveItem ( role , 0 , 6907  , 1 , 4 )	
	end
	if rad1 ==5 then	
		GiveItem ( role , 0 , 6908  , 1 , 4 )	
	end
end

-- Расписка на 75 украшения
function ItemUse_75ynik( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"Чтобы использовать Расписку необходимо иметь 2 свободных слота в Вашем инвентаре. ")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 5 )
	if rad ==1 then
	GiveItem ( role , 0 , 6641  , 1 , 4 )	
	end
	if rad ==2 then	
	GiveItem ( role , 0 , 6646  , 1 , 4 )	
	end
	if rad ==3 then	
	GiveItem ( role , 0 , 6648  , 1 , 4 )		
	end
	if rad ==4 then	
	GiveItem ( role , 0 , 6653  , 1 , 4 )			
	end
	if rad ==5 then	
	GiveItem ( role , 0 , 6659  , 1 , 4 )				
	end

	local rad1 = math.random ( 1, 5 )
	if rad1 ==1 then
		GiveItem ( role , 0 , 7320  , 1 , 4 )	
	end
	if rad1 ==2 then	
		GiveItem ( role , 0 , 7321  , 1 , 4 )	
	end
	if rad1 ==3 then	
		GiveItem ( role , 0 , 7322  , 1 , 4 )	
	end
	if rad1 ==4 then	
		GiveItem ( role , 0 , 7323  , 1 , 4 )	
	end
	if rad1 ==5 then	
		GiveItem ( role , 0 , 7324  , 1 , 4 )	
	end
end

-- Сундук с самоцветами Тьмы
function ItemUse_newgem( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы использовать Сундук с самоцветами Тьмы необходимо иметь 1 свободный слот в Вашем инвентаре. ")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 4 )
	if rad ==1 then
	GiveItem ( role , 0 , 7293  , 1 , 4 )	
	end
	if rad ==2 then	
	GiveItem ( role , 0 , 7294  , 1 , 4 )	
	end
	if rad ==3 then	
	GiveItem ( role , 0 , 7295  , 1 , 4 )		
	end
	if rad ==4 then	
	GiveItem ( role , 0 , 7296  , 1 , 4 )			
	end

end

-- Сундук с кольцами Тьмы
function ItemUse_85ring( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море. " )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы открыть Сундук с Кольцами Тьмы требуется 1 свободный слот в Вашем инвентаре. ")
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	local star_rad=math.random ( 1, 2 )
	if lv < 40 then
		SystemNotice(role ,"Ваш уровень ниже чем 40. Невозможно использовать предмет. ")
		UseItemFailed ( role )	
	elseif job == 9 then 
			GiveItem ( role , 0 , 2578  , 1 , 4 ) 

	elseif job == 8 then   
			GiveItem ( role , 0 , 2577  , 1 , 4 ) 

	elseif job == 12 then 
			GiveItem ( role , 0 , 2579  , 1 , 4 ) 

	elseif job == 16 then 
			GiveItem ( role , 0 , 2580  , 1 , 4 ) 

	elseif job == 13 then    
			GiveItem ( role , 0 , 2582  , 1 , 4 ) 

	elseif job == 14 then    
			GiveItem ( role , 0 , 2581  , 1 , 4 ) 

	else 
		SystemNotice(role ,"\207\240\229\228\236\229\242 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237 \242\238\235\252\234\238 \239\238\241\235\229 \226\251\225\238\240\224 \226\242\238\240\238\227\238 \238\241\237\238\226\237\238\227\238 \234\235\224\241\241\224!")
		UseItemFailed ( role )	
	end
end

-- Сундук с монетами фей
function ItemUse_YingbiBox ( role , Item )

	local map_name_role = GetChaMapName ( role )
	if map_name_role == "darkblue" then
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv >= 10 then
			local Item_CanGet = GetChaFreeBagGridNum ( role )
			if Item_CanGet < 4 then
				SystemNotice(role ,"\210\240\229\225\243\229\242\241\255 4 \241\226\238\225\238\228\237\251\229 \255\247\229\233\234\232 \226 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \241 \236\238\237\229\242\224\236\232 \244\229\233")
				UseItemFailed ( role )
				return
			end
			local ChaName = GetChaDefaultName(role)
			if PlayUseBox1[ChaName] == nil then
				PlayUseBox1[ChaName] = 0
			end
			local Use_Num = PlayUseBox1[ChaName]
			local now_day= os.date("%d")   
			local now_month= os.date("%m")
			now_month= tonumber(now_month)    
			now_day = tonumber(now_day)
			local Date = JNSTime_Flag[now_month]+now_day
			local Yingbi_Num = 0
			if Use_Num == 0 then
				local Time = 1
				Use_Num = Date * 10 + Time
				Yingbi_Num = 20
				local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
					if j == 1 then 
						PlayUseBox1[ChaName] = Use_Num
						GiveBragiItem ( role , 1 )
						GiveItem ( role , 0 , 1872 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "\210\240\229\225\243\229\242\241\255 20 \236\238\237\229\242 \244\229\233")
					end
			else
				local Date_Box = math.floor ( Use_Num / 10 )
				local a = Date - Date_Box
				local Time = Use_Num - Date_Box * 10
				if a == 0 then
					Use_Num = Use_Num +1
					local time_new = Time + 1
					if time_new >= 1 and time_new <= 3 then
						Yingbi_Num = (time_new*5) + 15
						local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
						if j == 1 then
							GiveBragiItem ( role , 1 )
							PlayUseBox1[ChaName] = Use_Num
							GiveItem ( role , 0 , 1872 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "\205\229\228\238\241\242\224\242\238\247\237\238 \236\238\237\229\242 \244\229\233")
						end
					elseif time_new >= 4 and time_new <= 6 then
						Yingbi_Num = Time * 15
						local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
						if j == 1 then
							GiveBragiItem ( role , 2 )
							PlayUseBox1[ChaName] = Use_Num
							GiveItem ( role , 0 , 1872 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "\205\229\228\238\241\242\224\242\238\247\237\238 \236\238\237\229\242 \244\229\233")
						end
					else
						Yingbi_Num = 99
						local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
						if j == 1 then
							GiveBragiItem ( role , 3 )
							PlayUseBox1[ChaName] = Use_Num
							GiveItem ( role , 0 , 1872 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "\205\229\228\238\241\242\224\242\238\247\237\238 \236\238\237\229\242 \244\229\233")
						end
					end
				elseif a == -1 then
					UseItemFailed ( role )
					SystemNotice ( role , "\209\243\237\228\243\234 \241 \236\238\237\229\242\224\236\232 \212\229\233 \236\238\230\237\238 \238\242\234\240\251\226\224\242\252 \242\238\235\252\234\238 10 \240\224\231 \226 \228\229\237\252")
				else
					local Time = 1
					Use_Num = Date * 10 + Time
					Yingbi_Num = 20
					local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
					if j == 1 then
						PlayUseBox1[ChaName] = Use_Num
						GiveBragiItem ( role )
						GiveItem ( role , 0 , 1872 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "\205\229\228\238\241\242\224\242\238\247\237\238 \236\238\237\229\242 \244\229\233")
					end
				end
			end
		else
			SystemNotice( role , "\210\238\235\252\234\238 \232\227\240\238\234\232 \243\240\238\226\237\255 10 \232 \226\251\248\229 \236\238\227\243\242 \238\242\234\240\251\226\224\242\252 \209\243\237\228\243\234 \241 \236\238\237\229\242\224\236\232 \212\229\233")
			UseItemFailed ( role )
		end
	else
		SystemNotice( role , "\209\243\237\228\243\234 \241 \236\238\237\229\242\224\236\232 \212\229\233 \236\238\230\237\238 \238\242\234\240\251\226\224\242\252 \242\238\235\252\234\238 \237\224 \242\229\240\240\232\242\238\240\232\232 \194\229\235\232\234\238\227\238 \209\232\237\229\227\238 \206\234\229\224\237\224")
		UseItemFailed ( role )
	end
end

-- Запечатанный сундук фей
function ItemUse_HuiYinBox ( role, Item )

	local map_name_role = GetChaMapName ( role )
	if map_name_role == "darkblue" then
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv >= 60 then
			local Item_CanGet = GetChaFreeBagGridNum ( role )
			if Item_CanGet < 2 then
				SystemNotice(role ,"\210\240\229\225\243\229\242\241\255 2 \241\226\238\225\238\228\237\251\229 \255\247\229\233\234\232 \226 \194\224\248\229\236 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \199\224\239\229\247\224\242\224\237\237\251\233 \241\243\237\228\243\234 \244\229\233")
				UseItemFailed ( role )
				return
			end
			local ChaName = GetChaDefaultName(role)
			if PlayUseBox2[ChaName] == nil then
				PlayUseBox2[ChaName] = 0
			end
			local Use_Num = PlayUseBox2[ChaName]
			local now_day= os.date("%d")  
			local now_month= os.date("%m")
			now_month= tonumber(now_month)   
			now_day = tonumber(now_day)
			local Date = JNSTime_Flag[now_month]+now_day
			if Use_Num == 0 then
				local Time = 1
				Use_Num = Date * 10 + Time
				local j = TakeItem ( role , 0 , 2588 , 10 )
				if j == 1 then 
					PlayUseBox2[ChaName] = Use_Num
					GiveItem ( role , 0 , 3107 , 1 , 4 )
					GiveItem ( role , 0 , 1570 , 1 , 4 )
				else
					UseItemFailed ( role )
					SystemNotice( role, "\205\229\228\238\241\242\224\242\238\247\237\238 \221\235\252\244\232\233\241\234\232\245 \239\229\247\224\242\229\233")
				end
			else
				local Date_Box = math.floor ( Use_Num / 10 )
				local a = Date - Date_Box
				local Time = Use_Num - Date_Box * 10
				if a == 0 then
					local time_new = Time + 1
					if time_new == 1 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 10 )
						if j == 1 then 
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 3107 , 1 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "\205\229\228\238\241\242\224\242\238\247\237\238 \221\235\252\244\232\233\241\234\232\245 \239\229\247\224\242\229\233")
						end
					elseif time_new == 2 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 20 )
						if j == 1 then 
							PlayUseBox2[ChaName] = Use_Num
							XSAddExpAll ( role , 5 , 5, 2)
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "\205\229\228\238\241\242\224\242\238\247\237\238 \221\235\252\244\232\233\241\234\232\245 \239\229\247\224\242\229\233")
						end
					elseif time_new == 3 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 30 )
						if j == 1 then 
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 850 , 1 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "\205\229\228\238\241\242\224\242\238\247\237\238 \221\235\252\244\232\233\241\234\232\245 \239\229\247\224\242\229\233")
						end
					elseif time_new == 4 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 40 )
						if j == 1 then 
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 852 , 1 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "\205\229\228\238\241\242\224\242\238\247\237\238 \221\235\252\244\232\233\241\234\232\245 \239\229\247\224\242\229\233")
						end
					elseif time_new == 5 then
						Use_Num = ( Date + 1 )*10
						local j = TakeItem ( role , 0 , 2588 , 50 )
						if j == 1 then 
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 851 , 1 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "\205\229\228\238\241\242\224\242\238\247\237\238 \221\235\252\244\232\233\241\234\232\245 \239\229\247\224\242\229\233")
						end
					end
				elseif a == -1 then
					UseItemFailed ( role )
					SystemNotice ( role , "\199\224\239\229\247\224\242\224\237\237\251\233 \241\243\237\228\243\234 \244\229\233 \236\238\230\237\238 \238\242\234\240\251\226\224\242\252 \242\238\235\252\234\238 5 \240\224\231 \226 \228\229\237\252")
				else
					local Time = 1
					Use_Num = Date * 10 + Time
					local j = TakeItem ( role , 0 , 2588 , 10 )
					if j == 1 then
						PlayUseBox2[ChaName] = Use_Num
						GiveItem ( role , 0 , 3107 , 1 , 4 )
						GiveItem ( role , 0 , 1570 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "\205\229\228\238\241\242\224\242\238\247\237\238 \221\235\252\244\232\233\241\234\232\245 \239\229\247\224\242\229\233")
					end
				end
			end
		else
			SystemNotice( role , "\210\238\235\252\234\238 \232\227\240\238\234\232 \243\240\238\226\237\255 60 \232 \226\251\248\229 \236\238\227\243\242 \238\242\234\240\251\226\224\242\252 \199\224\239\229\247\224\242\224\237\237\251\233 \241\243\237\228\243\234 \244\229\233")
			UseItemFailed ( role )
		end
	else
		SystemNotice( role , "\199\224\239\229\247\224\242\224\237\237\251\233 \241\243\237\228\243\234 \244\229\233 \236\238\230\237\238 \238\242\234\240\251\226\224\242\252 \242\238\235\252\234\238 \237\224 \242\229\240\240\232\242\238\240\232\232 \194\229\235\232\234\238\227\238 \209\232\237\229\227\238 \206\234\229\224\237\224")
		UseItemFailed ( role )
	end
end

-- Запечатанный сундук повелителя фей
function ItemUse_HuiYinKBox ( role, Item )

	local map_name_role = GetChaMapName ( role )
	if map_name_role == "darkblue" then
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv >= 70 then
			local Item_CanGet = GetChaFreeBagGridNum ( role )
			if Item_CanGet < 2 then
				SystemNotice(role ,"\210\240\229\225\243\229\242\241\255 2 \241\226\238\225\238\228\237\251\229 \255\247\229\233\234\232 \226 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \199\224\239\229\247\224\242\224\237\237\251\233 \241\243\237\228\243\234 \239\238\226\229\235\232\242\229\235\255 \244\229\233")
				UseItemFailed ( role )
				return
			end
			local ChaName = GetChaDefaultName(role)
			if PlayUseBox3[ChaName] == nil then
				PlayUseBox3[ChaName] = 0
			end
			local Use_Num = PlayUseBox3[ChaName]
			local now_day= os.date("%d") 
			local now_month= os.date("%m")
			now_month= tonumber(now_month)    
			now_day = tonumber(now_day)
			local Date = JNSTime_Flag[now_month]+now_day
			if Use_Num == 0 then
				local Time = 1
				Use_Num = Date * 10 + Time
				local j = TakeItem ( role , 0 , 2589 , 1 )
				if j == 1 then 
					PlayUseBox3[ChaName] = Use_Num
					AddExpAll ( role , 1 , 1, 2 )
					GiveItem ( role , 0 , 1571 , 1 , 4 )
				else
					UseItemFailed ( role )
					SystemNotice( role, "\205\229\228\238\241\242\224\242\238\247\237\238 \221\235\252\244\232\233\241\234\232\245 \234\238\240\238\235\229\226\241\234\232\245 \239\229\247\224\242\229\233")
				end
			else
				local Date_Box = math.floor ( Use_Num / 10 )
				local a = Date - Date_Box
				local Time = Use_Num - Date_Box * 10
				if a == 0 then
					local time_new = Time + 1
					if time_new == 1 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2589 , 1 )
						if j == 1 then 
							PlayUseBox3[ChaName] = Use_Num
							AddExpAll ( role , 1 , 1, 2 )
							GiveItem ( role , 0 , 1571 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "\205\229\228\238\241\242\224\242\238\247\237\238 \221\235\252\244\232\233\241\234\232\245 \234\238\240\238\235\229\226\241\234\232\245 \239\229\247\224\242\229\233")
						end
					elseif time_new == 2 then
						Use_Num = ( Date + 1 ) * 10
						local j = TakeItem ( role ,  0 , 2589 , 2 )
						if j == 1 then 
							PlayUseBox3[ChaName] = Use_Num
							GiveItem ( role , 0 , 3336 , 1 , 4 )
							GiveItem ( role , 0 , 1571 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "\205\229\228\238\241\242\224\242\238\247\237\238 \221\235\252\244\232\233\241\234\232\245 \234\238\240\238\235\229\226\241\234\232\245 \239\229\247\224\242\229\233")
						end
					end
				elseif a == -1 then
					UseItemFailed ( role )
					SystemNotice ( role , "\199\224\239\229\247\224\242\224\237\237\251\233 \241\243\237\228\243\234 \239\238\226\229\235\232\242\229\235\255 \244\229\233 \236\238\230\237\238 \238\242\234\240\251\226\224\242\252 \242\238\235\252\234\238 2 \240\224\231\224 \226 \228\229\237\252")
				else
					local Time = 1
					Use_Num = Date * 10 + Time
					local j = TakeItem ( role , 0 , 2589 , 1 )
					if j == 1 then
						PlayUseBox3[ChaName] = Use_Num
						AddExpAll ( role , 1, 1, 2 )
						GiveItem ( role , 0 , 1571 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "\205\229\228\238\241\242\224\242\238\247\237\238 \221\235\252\244\232\233\241\234\232\245 \234\238\240\238\235\229\226\241\234\232\245 \239\229\247\224\242\229\233")
					end
				end
			end
		else
			SystemNotice( role , "\210\238\235\252\234\238 \232\227\240\238\234\232 \243\240\238\226\237\255 70 \232 \226\251\248\229 \236\238\227\243\242 \238\242\234\240\251\226\224\242\252 \199\224\239\229\247\224\242\224\237\237\251\233 \241\243\237\228\243\234 \239\238\226\229\235\232\242\229\235\255 \244\229\233")
			UseItemFailed ( role )
		end
	else
		SystemNotice( role , "\199\224\239\229\247\224\242\224\237\237\251\233 \241\243\237\228\243\234 \239\238\226\229\235\232\242\229\235\255 \244\229\233 \236\238\230\237\238 \238\242\234\240\251\226\224\242\252 \242\238\235\252\234\238 \237\224 \242\229\240\240\232\242\238\240\232\232 \194\229\235\232\234\238\227\238 \209\232\237\229\227\238 \206\234\229\224\237\224")
		UseItemFailed ( role )
	end
end

-- Фастфуд
function ItemUse_CZKC ( role , Item )

	local Cha_Boat = 0
	local charLv=Lv ( role )
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.01+Exp_star
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		return
	end
	if charLv<86 or charLv>100 then
		SystemNotice( role , "\200\227\240\238\234\232 \237\229 \236\229\237\229\229 86 \232 \237\229 \226\251\248\229 100 \243\240\238\226\237\255 \236\238\227\243\242 \232\241\239\238\235\252\231\238\226\224\242\252 \212\224\241\242\244\243\228" )
		UseItemFailed ( role )
		return
	end
	if charLv>=86 and charLv<=100 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )
        end
end

-- Сундук Бермудских островов
function ItemUse_baimodabox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "\205\229 \236\238\230\229\242 \225\251\242\252 \232\241\239\238\235\252\231\238\226\224\237\238, \234\238\227\228\224 \194\251 \226 \236\238\240\229" )
		UseItemFailed ( role )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"\210\240\229\225\243\229\242\241\255 1 \241\226\238\225\238\228\237\224\255 \255\247\229\233\234\224 \226 \232\237\226\229\237\242\224\240\229, \247\242\238\225\251 \238\242\234\240\251\242\252 \209\243\237\228\243\234 \193\229\240\236\243\228\241\234\232\245 \238\241\242\240\238\226\238\226")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random ( 1, 100 )
	
	if  sc <=25 then	
		GiveItem ( role , 0 , 1036 , 50 , 4 )
	elseif sc <=50 then		
		GiveItem ( role , 0 , 0578 , 99 , 4 )
	elseif sc <=75 then
		GiveItem ( role , 0 , 0850 , 99 , 4 )
	else   
		GiveItem ( role , 0 , 0852 , 99 , 4 )
	end
end

-- Свиток вызова Печали (id 1103)
function ItemUse_bierbec (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!"  )
		UseItemFailed ( role )
		return
	end
	local sc = 0
	sc =IsChaInRegion( role, 2 )
	if sc == 1 then
		SystemNotice( role , "Невозможно вызвать монстра в Безопасной Зоне " )
		UseItemFailed ( role )
		return
	end
	local Monsterattr = {687,686}
	local	sc = math.random(1,2)
	local x, y = GetChaPos( role )
	local Refresh = 3700				
	local life = 3600000					
	local new = CreateChaX( Monsterattr[sc] , x , y , 145 ,  Refresh, role )
	SetChaLifeTime( new, life )
end

-- Свиток вызова Одиночества (id 1105)
function ItemUse_loneybec (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!"  )
		UseItemFailed ( role )
		return
	end
	local sc = 0
	sc =IsChaInRegion( role, 2 )
	if sc == 1 then
		SystemNotice( role , "Невозможно вызвать монстра в Безопасной Зоне " )
		UseItemFailed ( role )
		return
	end
	local Monsterattr = {523,524,525,36,526,527,529,35,532,532}
	local	sc = math.random(1,10)
	local x, y = GetChaPos( role )
	local Refresh = 3700				
	local life = 3600000					
	local new = CreateChaX( Monsterattr[sc] , x , y , 145 ,  Refresh, role )
	SetChaLifeTime( new, life )
end

-- Праздничный Салют (id 2870)
function ItemUse_XmasQRYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!"  )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно использовать предмет ")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 25 and NowDayNum <= 31 then
		local el = math.random ( 1 , 5 )
		local Item_ID = 0
		if el == 1 then
			Item_ID = 3354
		elseif el == 2 then
			Item_ID = 3355
		elseif el == 3 then
			Item_ID = 3356
		elseif el == 4 then
			Item_ID = 3077
		else
			Item_ID = 3343
		end
		GiveItem ( role , 0 , Item_ID , 1 , 4 )
	else
		SystemNotice( role , "Можно использовать только во время Нового Года ")
		UseItemFailed ( role )
		return
	end
end

-- Карнавальный Салют (id 2871)
function ItemUse_XmasKHYH ( role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!"  )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно использовать предмет ")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 25 and NowDayNum <= 31 then
		local el = math.random ( 1 , 10000 )
		local Item_ID = 0
		if el >= 1 and el <= 3000 then
			Item_ID = 2999
		elseif el >3000 and el <= 5000 then
			Item_ID = 1870
		elseif el > 5000 and el <= 7000 then
			Item_ID = 0145
		elseif el > 7000 and el <= 9000 then
			Item_ID = 1019
		elseif el == 9001 then
			Item_ID = 3000
		else
			Item_ID = 1036
		end
		GiveItem ( role , 0 , Item_ID , 1 , 4 )
	else
		SystemNotice( role , "Можно использовать только во время Нового Года ")
		UseItemFailed ( role )
		return
	end
end

-- Фейерверк Санта Клауса (id 2872)
function ItemUse_SDLRYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!"  )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно использовать предмет ")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 17 and NowDayNum <= 31 then
	local cha_name = GetChaDefaultName ( role ) 
		local el = math.random ( 1 , 1000 )
		local Item_ID = 0
		local Item_Num = 0
		if el >= 1 and el <= 500 then
			Item_ID = 227
			Item_Num = 5
		elseif el == 501 then
			Item_ID = 1014
			Item_Num = 1
		else
			Item_ID = 3834
			Item_Num = 5
		end
		GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
		Notice ( cha_name.." Использует Фейерверк Санта Клауса и получает Рождественский подарок!")
	else
		SystemNotice( role , "Можно использовать только во время Нового Года ")
		UseItemFailed ( role )
		return
	end
end

-- Рождественский Салют (id 2873)
function ItemUse_MCYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!"  )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно использовать предмет ")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 17 and NowDayNum <= 31 then
	local cha_name = GetChaDefaultName ( role ) 
		local el = math.random ( 1 , 100 )
		local Item_ID = 0
		local Item_Num = 0
		if el >= 1 and el <= 40 then
			Item_ID = 849
			Item_Num = 5
		elseif el > 40 and el <= 65 then
			Item_ID = 3097
			Item_Num = 2
		elseif el > 65 and el <= 90 then
			Item_ID = 3096
			Item_Num = 4
		else
			Item_ID = 3909
			Item_Num = 1
		end
		GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
		Notice ( cha_name.." Использует Рождественский Салют и получает Рождественский подарок!")
	else
		SystemNotice( role , "Можно использовать только во время Нового Года ")
		UseItemFailed ( role )
		return
	end
end

-- Новогодний фейерверк (id 2874)
function ItemUse_HNYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!"  )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно использовать предмет ")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 17 and NowDayNum <= 31 then
	local cha_name = GetChaDefaultName ( role ) 
		local el = math.random ( 1 , 100 )
		local Item_ID = 0
		local Item_Num = 0
		if el >= 1 and el <= 40 then
			Item_ID = 849
			Item_Num = 5
		elseif el > 40 and el <= 65 then
			Item_ID = 3097
			Item_Num = 2
		elseif el > 65 and el <= 90 then
			Item_ID = 3096
			Item_Num = 4
		else
			Item_ID = 3909
			Item_Num = 1
		end
		GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
		Notice ( cha_name.." Использует Новогодний фейерверк и получает Новогодний подарок!")
	else
		SystemNotice( role , "Можно использовать только во время Нового Года ")
		UseItemFailed ( role )
		return
	end
end

-- Салют с Носком (id 2875)
function ItemUse_XRBQYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!"  )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно использовать предмет ")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 17 and NowDayNum <= 31 then
		local el = math.random ( 1 , 100 )
		local Item_ID = 0
		local Item_Num = 0
		if el >= 1 and el <= 50 then
			Item_ID = 3098
			Item_Num = 25
		elseif el == 51 then
			Item_ID = 333
			Item_Num = 1
		elseif el > 51 and el <= 81 then
			Item_ID = 227
			Item_Num = 15
		elseif el > 81 and el <= 91 then
			Item_ID = 3105
			Item_Num = 10
		else
			Item_ID = 3342
			Item_Num = 10
		end
		GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
	else
		SystemNotice( role , "Можно использовать только во время Нового Года ")
		UseItemFailed ( role )
		return
	end
end

-- Салют с Упряжкой (id 2876)
function ItemUse_MLBQYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!"  )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно использовать предмет ")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 17 and NowDayNum <= 31 then
		local el = math.random ( 1 , 100 )
		local Item_ID = 0
		local Item_Num = 0
		if el >= 1 and el <= 61 then
			Item_ID = 885
			Item_Num = 1
		elseif el == 62 then
			Item_ID = 333
			Item_Num = 1
		elseif el >= 63 and el <= 64 then
			Item_ID = math.random ( 276 , 280 )
			Item_Num = 1
		elseif el > 64 and el <= 84 then
			Item_ID = 2312
			Item_Num = 15
		else
			Item_ID = 578
			Item_Num = 17
		end
		GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
	else
		SystemNotice( role , "Можно использовать только во время Нового Года ")
		UseItemFailed ( role )
		return
	end
end

-- Подарок Деда Мороза (id 2877)
function ItemUse_SDLRKZ ( role , Item )
	local Item_ID = {}
	local Item_Num = {}
	local Item_PZ = {}
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!"  )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно использовать предмет.")
		UseItemFailed ( role )
		return
	end
	local role_job = GetChaAttr ( role, ATTR_JOB)
	if role_job == 0 or role_job == 1 or role_job == 2 or role_job == 4 or role_job == 5 then
		SystemNotice ( role , "Использовать могут только игроки, которые получили вторую профессию.")
		UseItemFailed ( role )
		return
	end
	local role_type = GetChaTypeID ( role )
	local a = math.random ( 1, 1000)
	if a >= 0 and a <= 300 then
		Item_ID[1] = 2872
		Item_Num[1] = 5
		Item_PZ[1] = 4
	elseif a >= 301 and a <= 600 then
		Item_ID[1] = 2873
		Item_Num [1]= 5
		Item_PZ[1] = 4
	elseif a >= 601 and a <= 650 then
		if role_type == 1 then
			Item_ID[1] = 5264
			Item_ID[2] = 5265
			Item_ID[3] = 5266
			Item_Num[1] = 1
			Item_Num[2] = 1
			Item_Num[3] = 1
			Item_PZ[1] = 4
			Item_PZ[2] = 4
			Item_PZ[3] = 4
		elseif role_type == 2 then
			Item_ID[1] = 5267
			Item_ID[2] = 5268
			Item_ID[3] = 5269
			Item_Num[1] = 1
			Item_Num[2] = 1
			Item_Num[3] = 1
			Item_PZ[1] = 4
			Item_PZ[2] = 4
			Item_PZ[3] = 4
		elseif role_type == 3 then
			Item_ID[1] = 5270
			Item_ID[2] = 5271
			Item_ID[3] = 5272
			Item_Num[1] = 1
			Item_Num[2] = 1
			Item_Num[3] = 1
			Item_PZ[1] = 4
			Item_PZ[2] = 4
			Item_PZ[3] = 4
		elseif role_type == 4 then
			Item_ID[1] = 5273
			Item_ID[2] = 5274
			Item_ID[3] = 5275
			Item_Num[1] = 1
			Item_Num[2] = 1
			Item_Num[3] = 1
			Item_PZ[1] = 4
			Item_PZ[2] = 4
			Item_PZ[3] = 4
		end
	elseif a >= 651 and a <= 700 then
		if role_job == 8 then
			Item_ID[1] = 1375
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 9 then
			Item_ID[1] = 1394
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 12 then
			Item_ID[1] = 42
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 13 then
			Item_ID[1] = 4198
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 14 then
			Item_ID[1] = 4204
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 16 then
			Item_ID[1] = 1421
			Item_Num[1] = 1
			Item_PZ[1] = 22
		end
	elseif a >= 701 and a <= 750 then
			Item_ID[1] = 2888
			Item_Num[1] = 3
			Item_PZ[1] = 4
	elseif a >= 751 and a <= 800 then
			Item_ID[1] = 2889
			Item_Num[1] = 3
			Item_PZ[1] = 4
	elseif a >= 801 and a <= 850 then
			Item_ID[1] = 2890
			Item_Num[1] = 3
			Item_PZ[1] = 4
	elseif a >= 851 and a <= 900 then
			Item_ID[1] = 2891
			Item_Num[1] = 3
			Item_PZ[1] = 4
	elseif a >= 901 and a <= 950 then
		if role_job == 8 then
			Item_ID[1] = 4148
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 9 then
			Item_ID[1] = 4150
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 12 then
			Item_ID[1] = 4152
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 13 then
			if role_type == 3 then
				Item_ID[1] = 4159
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4160
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 14 then
			if role_type == 4 then
				Item_ID[1] = 4164
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4163
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 16 then
			if role_type == 4 then
				Item_ID[1] = 4156
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4155
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		end
	elseif a >= 951 and a <= 975 then
		if role_job == 8 then
			Item_ID[1] = 653
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 9 then
			Item_ID[1] = 4182
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 12 then
			Item_ID[1] = 4184
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 13 then
			if role_type == 3 then
				Item_ID[1] = 4191
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4192
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 14 then
			if role_type == 4 then
				Item_ID[1] = 4196
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4195
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 16 then
			if role_type == 4 then
				Item_ID[1] = 4188
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4187
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		end
	else
		if role_job == 8 then
			Item_ID[1] = 477
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 9 then
			Item_ID[1] = 4166
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 12 then
			Item_ID[1] = 4168
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 13 then
			if role_type == 3 then
				Item_ID[1] = 4175
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4176
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 14 then
			if role_type == 4 then
				Item_ID[1] = 4180
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4179
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 16 then
			if role_type == 4 then
				Item_ID[1] = 4172
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4171
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		end
	end
	for i = 1, 3, 1 do
		if Item_ID[i] ~= nil and Item_Num[i] ~= nil and Item_PZ[i] ~= nil then
			GiveItem ( role , 0 , Item_ID[i] , Item_Num[i] , Item_PZ[i] )
		end
	end
end

-- Упаковка Праздничных Подарков (id 2882)
function ItemUse_XmasLB ( role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!"  )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно использовать предмет.")
		UseItemFailed ( role )
		return
	end
	local br = math.random( 1, 10)
	local Item_ID = 0
	local Item_Num = 0
	if br >= 1 and br <= 3 then
		Item_ID = 3343
		Item_Num = 10
	elseif br >= 4 and br <= 6 then
		Item_ID = 3344
		Item_Num = 10
	else
		Item_ID = 2883
		Item_Num = 5
	end
	GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
end

-- Билет в Новогоднюю Деревню (id 2883)
function ItemUse_movexmas( role, Item )
	local Cha_Boat = GetCtrlBoat( role )

	if Cha_Boat ~= nil then
		SystemNotice( role, "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end

	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )
	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "Телепортация очень утомительный процесс, пожалуйста востановите Ваше здоровье и ману." )
		UseItemFailed( role )
		return
	end 

	local Now_Day = os.date( "%d" )
	local Now_Month = os.date( "%m" )
	local NowDayNum = tonumber( Now_Day )
	local NowMonthNum = tonumber( Now_Month )

	if NowMonthNum == 12 and NowDayNum <= 31 then
		local j = DelBagItem( role, 2883, 1 )
		if j == 1 then
			if ( AddonSystem["Teleport"] == 1 ) then
				local n = math.random( 115, 116 )
				teleport( role, n )
			else
				MoveCity( role, "07xmas" )
			end
			return
		end
	else
		SystemNotice( role, "Попасть в Рожетсвенскую деревню можно только во время Нового Года" )
		UseItemFailed( role )
		return
	end
end

-- Пакет Алладина (id 2371)
function ItemUse_ALDXB ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно использовать предмет.")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 20000 )
		if star<=3700 then
			GiveItem ( role , 0 , 2440  , 10 , 4  )
		elseif star>=3701 and star<=5700 then
			GiveItem ( role , 0 , 3885  , 1 , 4  )
		elseif star>=5701 and star<=7100 then
			GiveItem ( role , 0 , 3094  , 1 , 4  )
		elseif star>=7101 and star<=13100 then
			local el = math.random ( 1, 5 )
			if el==1  then
				GiveItem ( role , 0 , 2445  , 3 , 4 )
			elseif el==2	then
				GiveItem ( role , 0 , 3076  , 3 , 4 )
			elseif el==3	then
				GiveItem ( role , 0 , 0563  , 3 , 4 )
			elseif el==4	then	
				GiveItem ( role , 0 , 0583  , 3 , 4 )
			elseif el==5	then
				GiveItem ( role , 0 , 3050  , 3 , 4 )
			end
		elseif star>=13101 and star<=15100 then
			local el = math.random ( 1, 2 )
			if el==1  then
				GiveItem ( role , 0 , 0849  , 1 , 4 )
			elseif el==2  then
				GiveItem ( role , 0 , 0680  , 1 , 4 )
			end
		elseif star>=15101 and star<=19300then
			local el1= math.random ( 1, 6 )
			if el1==1  then
				GiveItem ( role , 0 , 2438  , 5 , 4 )
			elseif el1==2 then
				GiveItem ( role , 0 , 2419  , 3 , 4 )
			elseif el1==3 then
				GiveItem ( role , 0 , 2386  , 4 , 4 )
			elseif el1==4 then
				GiveItem ( role , 0 , 0179  , 1 , 4 )
			elseif el1==5 then
				GiveItem ( role , 0 , 3084  , 1 , 4 )
			elseif el1==6 then
				GiveItem ( role , 0 , 3085  , 1 , 4 )
			end
		elseif star>=19301 and star<=19600then
			local el1= math.random ( 1, 5 )
			if el1==1  then
				GiveItem ( role , 0 , 0863  , 1 , 4 )
				local message = cha_name.." открывает Пакет Алладина и получает Самоцвет Ярости " 
				Notice ( message )
			elseif el1==2 then
				GiveItem ( role , 0 , 0860  , 1 , 4 )
				local message1 = cha_name.." открывает Пакет Алладина и получает Самоцвет Ветра " 
				Notice ( message1 )
			elseif el1==3 then
				GiveItem ( role , 0 , 0861  , 1 , 4 )
				local message2 = cha_name.." открывает Пакет Алладина и получает Самоцвет удара " 
				Notice ( message2 )
			elseif el1==4 then
				GiveItem ( role , 0 , 0862  , 1 , 4 )
				local message3 = cha_name.." открывает Пакет Алладина и получает Самоцвет колосса " 
				Notice ( message3 )
			elseif el1==5 then
				GiveItem ( role , 0 , 1012  , 1 , 4 )
				local message4 = cha_name.." открывает Пакет Алладина и получает Самоцвет души " 
				Notice ( message4 )
			end
		elseif star==19601 then
			GiveItem ( role , 0 , 0192  , 1 , 4  )
			local message8= cha_name.." открывает Пакет Алладина и получает Сундук Килин " 
			Notice ( message8 )
		elseif star>=19601 and star<=20000 then	
			GiveItem ( role , 0 , 2224  , 1 , 4  )
			local message8= cha_name.." открывает Пакет Алладина и получает Сундук с современными украшениями " 
			Notice ( message8 )
		end
end

---------------------------
-- Пригласительный билет --
---------------------------
function Jz_Script_qj( role, Item )
	local Now_Day		= os.date( "%d" )
	local Now_Month		= os.date( "%m" )
	local Now_Time		= os.date( "%H" )
	local NowMniuteNum	= os.date( "%M" )
	
	local NowMiniuteNum	= tonumber( Now_Miniute )
	local NowTimeNum	= tonumber( Now_Time )
	local NowDayNum		= tonumber( Now_Day )
	local NowMonthNum	= tonumber( Now_Month )
	
	local CheckDateNum	= NowMonthNum * 1000000 + NowDayNum * 10000 + NowTimeNum * 100 + NowMniuteNum


	local item_old		= GetChaItem2( role, 2, 3078)
	local old_month		= GetItemAttr( item_old, ITEMATTR_VAL_STA )
	local old_day		= GetItemAttr( item_old, ITEMATTR_VAL_STR )
	local old_hour		= GetItemAttr( item_old, ITEMATTR_VAL_CON )
	local old_miniute	= GetItemAttr( item_old, ITEMATTR_VAL_DEX )
	 

	local CheckBook1Num = old_month * 1000000 + old_day * 10000 + old_hour * 100 + old_miniute
	local CheckBook2Num = old_month * 1000000 + old_day * 10000 + (old_hour + 2) * 100 + old_miniute
	
	if CheckDateNum < CheckBook1Num then
		SystemNotice( role, "Время церемонии бракосочетания еще не пришло!" )
		UseItemFailed( role )
		return
	end

	if CheckDateNum > CheckBook2Num then
		SystemNotice( role, "Время церемонии бракосочетания уже прошло!" )
		UseItemFailed( role )
		return
	end

	local i = CheckBagItem( role, 3078 )
	local k = ChaIsBoat( role )
	local hp = Hp( role )
	local mxhp = Mxhp( role )
	local sp = Sp( role )
	local mxsp = Mxsp( role )

	if sp < mxsp or hp < mxhp then
		SystemNotice( role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243" )
		--SystemNotice( role, "Телепортация очень утомительный процесс. Пожалуйста, восстановите Ваше здоровье и ману" )
		UseItemFailed( role )
		return
	end 

	if k == 0 then
		if i > 0 then
			local j = DelBagItem( role, 3078, 1 )
			if j == 1 then
				if ( AddonSystem["Teleport"] == 1 ) then
					local n = 114
					teleport( role, n )
				else
					MoveCity( role, "Church" )
				end
			end
		end
	else
		UseItemFailed( role )
	end
end