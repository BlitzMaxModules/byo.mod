ModuleInfo "Blitzmax module for SQL Server database connections"
ModuleInfo "Version 0.1.0"
ModuleInfo "Please report any bugs you find. Thank you."
ModuleInfo "Made by Andre Guerreiro Neto (byo)"
ModuleInfo "Thanks a lot to Stephen Rodriguez for all the help"
ModuleInfo "Website: http://code.google.com/p/byomods"
import brl.blitz
import brl.retro
import "lib\byoMSSQL.lib"
adoConnect@*(provider$w,server$w,user$w,password$w,database$w)S="adoConnect@20"
adoQuery@*(connection@*,query$w)S="adoQuery@8"
adoUpdate%(connection@*,request$w)S="adoUpdate@8"
adoGetString$w(connection@*,column%)S="adoGetString@8"
adoGetInt%(connection@*,column%)S="adoGetInt@8"
adoGetFloat#(connection@*,column%)S="adoGetFloat@8"
adoGetDouble!(connection@*,column%)S="adoGetDouble@8"
adoFirstRow%(connection@*)S="adoFirstRow@4"
adoPreviousRow%(connection@*)S="adoPreviousRow@4"
adoNextRow%(connection@*)S="adoNextRow@4"
adoLastRow%(connection@*)S="adoLastRow@4"
adoGetLastErrorCode%()S="adoGetLastErrorCode@0"
adoGetLastErrorDescription$w()S="adoGetLastErrorDescription@0"
adoDisconnect%(connection@*)S="adoDisconnect@4"
TSQLServer^brl.blitz.Object{
.recordSet@*&
.connection@*&
-New%()="_byo_sqlserver_TSQLServer_New"
-Delete%()="_byo_sqlserver_TSQLServer_Delete"
-open@(server$,database$,user$,password$)="_byo_sqlserver_TSQLServer_open"
-query@(query$)="_byo_sqlserver_TSQLServer_query"
-update%(request$)="_byo_sqlserver_TSQLServer_update"
-getString$(column%)="_byo_sqlserver_TSQLServer_getString"
-getInt%(column%)="_byo_sqlserver_TSQLServer_getInt"
-getFloat#(column%)="_byo_sqlserver_TSQLServer_getFloat"
-getDouble!(column%)="_byo_sqlserver_TSQLServer_getDouble"
-firstRow%()="_byo_sqlserver_TSQLServer_firstRow"
-previousRow%()="_byo_sqlserver_TSQLServer_previousRow"
-nextRow%()="_byo_sqlserver_TSQLServer_nextRow"
-lastRow%()="_byo_sqlserver_TSQLServer_lastRow"
-getLastErrorCode%()="_byo_sqlserver_TSQLServer_getLastErrorCode"
-getLastErrorDescription$()="_byo_sqlserver_TSQLServer_getLastErrorDescription"
-close%()="_byo_sqlserver_TSQLServer_close"
}="byo_sqlserver_TSQLServer"