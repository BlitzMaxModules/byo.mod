Strict

Extern "win32"
	Function LoadLibraryW:Int(dll:Byte Ptr)
End Extern

Module byo.colorpicker

Local dllLib:Int = LoadLibraryW("colorpicker.dll")

If dllLib Then
	Global PickColor(R:Byte, G:Byte, B:Byte) "win32" = GetProcAddress(dllLib, "PickColor")
End If