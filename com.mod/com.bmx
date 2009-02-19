Module byo.com

Strict

Import "lib\comHelper.lib"

Extern
	Function comInit() "win32"
	Function comCreate:Int(name$w, progId$w) "win32"
	Function comGetObjectHandle:Int(name$w) "win32"
	Function comFreeObject(name$w) "win32"
	Function comSetProperty(name$w, command$w) "win32"
	Function comCallMethod(name$w, command$w) "win32"
	Function comGetObject:Int(parentObject$w, newObject$w, command$w) "win32"
	Function comGetInteger:Long(name$w, command$w) "win32"
	Function comGetFloat:Float(name$w, command$w) "win32"
	Function comGetString$w(name$w, command$w) "win32"
	Function comGetLastErrorDescription$w() "win32"
	Function comGetLastErrorCode:Int() "win32"
	Function comEnd() "win32"
End Extern

'Initializing the library for the types to work with it
comInit()
Const MaxObjects = 32767
Global CountObjects:Int = 0

'Type for ease of use
Type TComObject
	Field ObjectNumber:Int

	Method CreateObject:Int(objectID:String)
		Local result:Int = 0
	
		If CountObjects + 1 < MaxObjects Then
			CountObjects = CountObjects + 1
			ObjectNumber = CountObjects
			result = comCreate("comObject" + ObjectNumber, objectID)
			
			If result = 0 Then
				CountObjects = CountObjects - 1
			End If
		End If
		Return result
	End Method
	
	Method GetObject:Int(parentObject:String, command:String)
		Local result:Int = 0
		
		If CountObjects + 1 < MaxObjects Then
			CountObjects = CountObjects + 1
			ObjectNumber = CountObjects
			result = comGetObject(parentObject, "comObject" + ObjectNumber, command)
			
			If result = 0 Then
				CountObjects = CountObjects - 1
			End If
		EndIf
		Return result
	End Method
	
	Method SetProperty(command:String)
		comSetProperty("comObject" + ObjectNumber, command)
	End Method
	
	Method CallMethod(command:String)
		comCallMethod("comObject" + ObjectNumber, command)
	End Method
	
	Method DeleteObject()
		comFreeObject("comObject" + ObjectNumber)
	End Method
End Type