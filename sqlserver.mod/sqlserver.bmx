Module byo.sqlserver

Strict

ModuleInfo "Blitzmax module for SQL Server database connections"
ModuleInfo "Version 0.1.0"
ModuleInfo "Please report any bugs you find. Thank you."
ModuleInfo "Made by Andre Guerreiro Neto (byo)"
ModuleInfo "Thanks a lot to Stephen Rodriguez for all the help"
ModuleInfo "Website: http://code.google.com/p/byomods"

Import brl.retro

Import "lib\byoMSSQL.lib"

Extern
	Function adoConnect:Byte Ptr(provider$w, server$w, user$w, password$w, database$w) "win32"
	Function adoQuery:Byte Ptr(connection:Byte Ptr, query$w) "win32"
	Function adoUpdate:Int(connection:Byte Ptr, request$w) "win32"
	Function adoGetString$w(connection:Byte Ptr, column:Int) "win32"
	Function adoGetInt:Int(connection:Byte Ptr, column:Int) "win32"
	Function adoGetFloat:Float(connection:Byte Ptr, column:Int) "win32"
	Function adoGetDouble:Double(connection:Byte Ptr, column:Int) "win32"
	Function adoFirstRow:Int(connection:Byte Ptr) "win32"
	Function adoPreviousRow:Int(connection:Byte Ptr) "win32"
	Function adoNextRow:Int(connection:Byte Ptr) "win32"
	Function adoLastRow:Int(connection:Byte Ptr) "win32"
	Function adoGetLastErrorCode:Int() "win32"
	Function adoGetLastErrorDescription$w() "win32"
	Function adoDisconnect(connection:Byte Ptr) "win32"
End Extern


Type TSQLServer
	Field recordSet:Byte Ptr, connection:Byte Ptr
	
	'Connect to database
	Method open:Byte(server:String, database:String, user:String, password:String)
		Local result:Byte = False
		
		'Creating a new ADO database connection with the supplied values
		connection = adoConnect("sqloledb", server, user, password, database)
		
		'If the connection failed, break the method and return False
		If connection = Null Then
			Return False
		Else
			result = True
		End If
		
		Return result
	End Method
	
	
	'Query database
	Method query:Byte(query:String)
		Local result:Byte = False

		If connection <> Null Then
			recordSet = adoQuery(connection, query)
			
			If recordSet = Null Then
				Return False
			Else
				result = True
			End If
		End If
		
		Return result
	End Method
	
	
	Method update:Int(request:String)
		Return adoUpdate(connection, request)
	End Method
	
	
	Method getString:String(column:Int)
		Return adoGetString(connection, column)
	End Method
	
	
	Method getInt:Int(column:Int)
		Return adoGetInt(connection, column)
	End Method
	
	
	Method getFloat:Float(column:Int)
		Return adoGetFloat(connection, column)
	End Method
	
	
	Method getDouble:Double(column:Int)
		Return adoGetDouble(connection, column)
	End Method
	
	
	Method firstRow:Int()
		Return adoFirstRow(connection)
	End Method
	
	
	Method previousRow:Int()
		Return adoPreviousRow(connection)
	End Method
	
	
	Method nextRow:Int()
		Return adoNextRow(connection)
	End Method
	
	
	Method lastRow:Int()
		Return adoLastRow(connection)
	End Method
	
	
	Method getLastErrorCode:Int()
		Return adoGetLastErrorCode()
	End Method
	
	
	Method getLastErrorDescription:String()
		Local error:String = adoGetLastErrorDescription()
		
		If error = "Okay." Then
			error = "No errors."
		End If
		
		Return error
	End Method
	
	
	Method close()
		adoDisconnect(connection)
		connection = Null
	End Method
	
End Type