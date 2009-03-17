Import byo.sqlserver

Local con1:TSQLServer = New TSQLServer
Local rs1:TCursor, rs2:TCursor, rs3:TCursor

If con1.open("BYO\SQLEXPRESS", "master", "sa", "123") Then
	rs1 = con1.query("SELECT * FROM SYSDATABASES")
	rs2 = con1.query("SELECT * FROM SYSOBJECTS")
	rs3 = con1.query("SELECT * FROM SYSLOGINS")
	
	Notify("ErrorCode: " + con1.getLastErrorCode())
	Notify("Error: " + con1.getLastErrorDescription())
	
	While rs1.nextRow()
		Print "1) " + rs1.getString(0) + " - " + rs1.getString(6)
		Print "2) " + rs2.getString(0) + " - " + rs2.getString(1)
		Print "3) " + rs3.getString(0) + " - " + rs3.getString(1)
	Wend
	
	con1.close()
End If
