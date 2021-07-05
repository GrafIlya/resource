--print("-- Newbie")
--------------------------------------------
-- Баланс характеристик профессии Новичок --
--------------------------------------------
	--Макс. кол-во ХП от кона, кона, уровня.
	Mxhp_con_rad1[JOB_TYPE_XINSHOU], Mxhp_con_rad2[JOB_TYPE_XINSHOU], Mxhp_lv_rad[JOB_TYPE_XINSHOU]	= 5, 3, 100			
	--Макс. кол-во МН от духа, духа, уровня.
	Mxsp_sta_rad1[JOB_TYPE_XINSHOU], Mxsp_sta_rad2[JOB_TYPE_XINSHOU], Mxsp_lv_rad[JOB_TYPE_XINSHOU]	= 1, 0, 3 		
	--Мин. атака от силы, силы, точности, точности
	Mnatk_str_rad1[JOB_TYPE_XINSHOU], Mnatk_str_rad2[JOB_TYPE_XINSHOU], Mnatk_dex_rad1[JOB_TYPE_XINSHOU], Mnatk_dex_rad2[JOB_TYPE_XINSHOU]	= 1.5, 0.4, 0, 0	
	--Макс. атака от силы, силы, точности, точности
	Mxatk_str_rad1[JOB_TYPE_XINSHOU], Mxatk_str_rad2[JOB_TYPE_XINSHOU], Mxatk_dex_rad1[JOB_TYPE_XINSHOU], Mxatk_dex_rad2[JOB_TYPE_XINSHOU]	= 1.5, 0.4, 0, 0	
	--Защита от тела, тела
	Def_con_rad1[JOB_TYPE_XINSHOU], Def_con_rad2[JOB_TYPE_XINSHOU]	= 0.1, 0.1				
	--Шанс попадания от точности, точности
	Hit_dex_rad1[JOB_TYPE_XINSHOU], Hit_dex_rad2[JOB_TYPE_XINSHOU]	= 0.6, 0		
	--Скорость бега от ловкости, ловкости
	Flee_agi_rad1[JOB_TYPE_XINSHOU], Flee_agi_rad2[JOB_TYPE_XINSHOU]	= 0.6, 0	
	--Удача??	
	Mf_luk_rad[JOB_TYPE_XINSHOU]	= 0.39		
	--Шанс крит. атаки
	Crt_luk_rad[JOB_TYPE_XINSHOU]	= 0.31		
	--Восстановление жизней
	Hrec_bsmxhp_rad[JOB_TYPE_XINSHOU], Hrec_con_rad[JOB_TYPE_XINSHOU]	= 1/200, 1/8		
	--Восстановление маны	
	Srec_bsmxsp_rad[JOB_TYPE_XINSHOU], Srec_sta_rad[JOB_TYPE_XINSHOU]	= 1/100, 1/12		
	--Скорость атаки от ловкости
	Aspd_agi_rad[JOB_TYPE_XINSHOU]	= 0.5									
	Str_updata[JOB_TYPE_XINSHOU]	= 0.2 
	Dex_updata[JOB_TYPE_XINSHOU]	= 0.1 
	Con_updata[JOB_TYPE_XINSHOU]	= 0.6 
	Agi_updata[JOB_TYPE_XINSHOU]	= 0.1 
	Sta_updata[JOB_TYPE_XINSHOU]	= 0.1 
	Luk_updata[JOB_TYPE_XINSHOU]	= 0.1