Import byo.sqlserver

con1:TSQLServer = New TSQLServer

Local nInt:Int, nFloat:Float, nDouble:Double

If con1.open("BYO\SQLEXPRESS", "master", "sa", "123") Then
	con1.query("SELECT * FROM SYSDATABASES")
	
	Notify("ErrorCode: " + con1.getLastErrorCode())
	Notify("Error: " + con1.getLastErrorDescription())
	
	While con1.nextRow()
		DebugLog con1.getString(0) + " - " + con1.getString(6)
		nInt = con1.getInt(1)
		nFloat = con1.getFloat(2)
		nDouble = con1.getDouble(4)
		DebugLog nInt
		DebugLog nFloat
		DebugLog nDouble
	Wend
End If


con1.close()

