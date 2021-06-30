print( "Загрузка NPCScript05.lua" )
function hell_circle()
	Talk( 1, "Привет, пират! Хочешь попасть в адский круговорот? ")
	Text( 1, "Временно недоступно. ", CloseTalk )
	Text( 1, "Уйти. ", CloseTalk )
end

function bronze_cloak()
	Talk( 1, "Привет, пират! Хочешь получить бронзовый плащ? ")
	Text( 1, "Временно недоступно. ", CloseTalk )
	Text( 1, "Уйти. ", CloseTalk )
end

function sereb_cloak()
	Talk( 1, "Привет, пират! Хочешь получить серебряный плащ? ")
	Text( 1, "Временно недоступно. ", CloseTalk )
	Text( 1, "Уйти. ", CloseTalk )
end

function equip_apoc()
	Talk( 1, "Привет, пират! Хочешь получить экипировку Апокалипсиса? ")
	Text( 1, "Временно недоступно. ", CloseTalk )
	Text( 1, "Уйти. ", CloseTalk )
end

function nec_apoc()
	Talk( 1, "Привет, пират! Хочешь получить бижутерию Апокалипсиса? ")
	Text( 1, "Временно недоступно. ", CloseTalk )
	Text( 1, "Уйти. ", CloseTalk )
end

function tp_Sibir()
	Talk( 1, "Привет, пират! Хочешь попасть в Сибирь? ")
	Text( 1, "Телепортироваться ", GoTo, 1316, 536,  "darkblue" )
	Text( 1, "Уйти. ", CloseTalk )
end

function tp_SPB()
	Talk( 1, "Привет, пират! Хочешь попасть в СПБ? ")
	Text( 1, "Телепортироваться ", GoTo, 891, 3575,  "magicsea" )
	Text( 1, "Уйти. ", CloseTalk )
end

function GoToWhere()
	Talk( 1, "Привет. Решил попутешествовать? Выбирай, куда хочешь попасть: ")
	Text( 1, "Москва ", GoTo, 2191, 2781,  "garner" )
	Text( 1, "Санкт-Петербург ", GoTo, 891, 3575,  "magicsea" )
	Text( 1, "Уйти. ", CloseTalk )
end

function transmittal()
	Talk( 1, "Привет. Решил попутешествовать? Выбирай, куда хочешь попасть: ")
	Text( 1, "Москва ", GoTo, 2191, 2781,  "garner" )
	Text( 1, "Сибирь ", GoTo, 1316, 536,  "darkblue" )
	Text( 1, "Уйти. ", CloseTalk )
end