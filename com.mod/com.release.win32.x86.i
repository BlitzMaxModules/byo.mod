import brl.blitz
import "lib\comHelper.lib"
comInit%()S="comInit@0"
comCreate%(name$w,progId$w)S="comCreate@8"
comGetObjectHandle%(name$w)S="comGetObjectHandle@4"
comFreeObject%(name$w)S="comFreeObject@4"
comSetProperty%(name$w,command$w)S="comSetProperty@8"
comCallMethod%(name$w,command$w)S="comCallMethod@8"
comGetObject%(parentObject$w,newObject$w,command$w)S="comGetObject@12"
comGetInteger%%(name$w,command$w)S="comGetInteger@8"
comGetFloat#(name$w,command$w)S="comGetFloat@8"
comGetString$w(name$w,command$w)S="comGetString@8"
comGetLastErrorDescription$w()S="comGetLastErrorDescription@0"
comGetLastErrorCode%()S="comGetLastErrorCode@0"
comEnd%()S="comEnd@0"
MaxObjects%=32767
TComObject^brl.blitz.Object{
.ObjectNumber%&
-New%()="_byo_com_TComObject_New"
-Delete%()="_byo_com_TComObject_Delete"
-CreateObject%(objectID$)="_byo_com_TComObject_CreateObject"
-GetObject%(parentObject$,command$)="_byo_com_TComObject_GetObject"
-SetProperty%(command$)="_byo_com_TComObject_SetProperty"
-CallMethod%(command$)="_byo_com_TComObject_CallMethod"
-DeleteObject%()="_byo_com_TComObject_DeleteObject"
}="byo_com_TComObject"
CountObjects%&=mem("byo_com_CountObjects")
