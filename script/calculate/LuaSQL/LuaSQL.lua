print("***********Lua SQL************")
SQL_SUCCESS_WITH_INFO = 1
SQL_CONNECTION = {}
SQL_CONNECTION[1] = 
		{
		SQL_CONNECT	= 'connect',
		SQL_HOST	= '127.0.0.1,1434',
		SQL_UID		= 'FlamingDevil',
		SQL_PWD		= '2020Graf2020'
		}
SQL_CONNECTION[2] = 
		{
		SQL_CONNECT	= 'connect',
		SQL_HOST	= '127.0.0.1,1434',
		SQL_UID		= 'FlamingDevil',
		SQL_PWD		= '2020Graf2020'
		}
SQL_CONNECTION[3] = 
		{
		SQL_CONNECT	= 'connect',
		SQL_HOST	= '127.0.0.1,1434',
		SQL_UID		= 'FlamingDevil',
		SQL_PWD		= '2020Graf2020'
		}
SQL_CONNECTION[4] = 
		{
		SQL_CONNECT	= 'connect',
		SQL_HOST	= '127.0.0.1,1434',
		SQL_UID		= 'FlamingDevil',
		SQL_PWD		= '2020Graf2020'
		}
function CheckConnection()
	local i = math.random(1, 4)
	if LuaSQL(SQL_CONNECTION[i].SQL_CONNECT, SQL_CONNECTION[i].SQL_HOST, SQL_CONNECTION[i].SQL_UID, SQL_CONNECTION[i].SQL_PWD) == 1 then
		print("Connection successful!")
		local result = LuaSQL("close", ConnectID)
	else
		print("Connection failed!")
	end
end
CheckConnection()