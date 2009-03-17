Module byo.sqlserver

Strict

Import brl.Stream


ModuleInfo "Blitzmax module for SQL Server database connections"
ModuleInfo "Version 0.1.0"
ModuleInfo "Please report any bugs you find. Thank you."
ModuleInfo "Made by Andre Guerreiro Neto (byo)"
ModuleInfo "Thanks a lot to Stephen Rodriguez for all the help"
ModuleInfo "Website: http://code.google.com/p/byomods"

Import "lib\byoMSSQL.lib"

Extern
	Function adoConnect:Byte Ptr(provider$w, server$w, user$w, password$w, database$w) "win32"
	Function adoDuplicateConnection:Byte Ptr() "win32"
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
	Field connection:Byte Ptr
	
	Rem
	bbdoc: Connect to database
	EndRem
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
	
	
	Rem
	bbdoc: Query database
	EndRem
	Method query:TCursor(query:String)
		Local cursor:TCursor
		Local result:Byte Ptr = Null
		
		If connection <> Null Then
			cursor = New TCursor
			cursor.connection = adoDuplicateConnection()
			
			result = adoQuery(cursor.connection, query)
			
			If result = Null Then
				Return Null
			End If
		End If
		
		Return cursor
	End Method
	
	
	Rem
	bbdoc: Executes a query/request without returning any value
	EndRem
	Method update:Int(request:String)
		Return adoUpdate(connection, request)
	End Method
	
	
	Rem
	bbdoc: Executes the SQL commands from a file
	EndRem
	Method execFile:Byte(_file:String)
		Local file:TStream = ReadStream(_file)
		Local str:String = ""
		
		If Not file
			Return 0
		End If
		
		While Not Eof(file)
			str = str + ReadLine(file) + " "
		Wend
		CloseStream(file)
		
		Return update(str)
	End Method
	
	
		Rem
	bbdoc: Retrieves the last error code from the last operation as an integer
	EndRem
	Method getLastErrorCode:Int()
		Return adoGetLastErrorCode()
	End Method
	
	
	Rem
	bbdoc: Retrieves the last error description from the last operation as a string
	EndRem
	Method getLastErrorDescription:String()
		Local error:String = adoGetLastErrorDescription()
		
		If error = "Okay." Then
			error = "No errors."
		End If
		
		Return error
	End Method
	
	
	Rem
	bbdoc: Internal debugger use only. Prints the error message to the debug console.
	EndRem
	Method debugError()
		DebugLog getLastErrorDescription()
	End Method
	
	
	Rem
	bbdoc: Closes the current SQLServer connection
	EndRem
	Method close()
		adoDisconnect(connection)
		connection = Null
	End Method
	
End Type
	

Type TCursor
	Field connection:Byte Ptr
	
	Rem
	bbdoc: Retrieves the value of the current row from the specified column as a string
	EndRem
	Method getString:String(column:Int)
		Return adoGetString(connection, column)
	End Method
	
	
	Rem
	bbdoc: Retrieves the value of the current row from the specified column as an integer
	EndRem
	Method getInt:Int(column:Int)
		Return adoGetInt(connection, column)
	End Method
	
	
	Rem
	bbdoc: Retrieves the value of the current row from the specified column as a float
	EndRem
	Method getFloat:Float(column:Int)
		Return adoGetFloat(connection, column)
	End Method
	
	
	Rem
	bbdoc: Retrieves the value of the current row from the specified column as a double
	EndRem
	Method getDouble:Double(column:Int)
		Return adoGetDouble(connection, column)
	End Method
	
	
	Rem
	bbdoc: Goes to the first row of the current resultset
	EndRem
	Method firstRow:Int()
		Return adoFirstRow(connection)
	End Method
	
	
	Rem
	bbdoc: Goes to the previous row of the current resultset
	EndRem
	Method previousRow:Int()
		Return adoPreviousRow(connection)
	End Method
	
	
	Rem
	bbdoc: Goes to the next row of the current resultset
	EndRem
	Method nextRow:Int()
		Return adoNextRow(connection)
	End Method
	
	
	Rem
	bbdoc: Goes to the last row of the current resultset
	EndRem
	Method lastRow:Int()
		Return adoLastRow(connection)
	End Method
	
End Type