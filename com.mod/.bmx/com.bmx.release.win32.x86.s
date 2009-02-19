	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	_bbMemFree
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDtor
	extrn	_bbObjectFree
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_bbStringToWString
	extrn	_comCallMethod@8
	extrn	_comCreate@8
	extrn	_comFreeObject@4
	extrn	_comGetObject@12
	extrn	_comInit@0
	extrn	_comSetProperty@8
	public	___bb_com_com
	public	__byo_com_TComObject_CallMethod
	public	__byo_com_TComObject_CreateObject
	public	__byo_com_TComObject_Delete
	public	__byo_com_TComObject_DeleteObject
	public	__byo_com_TComObject_GetObject
	public	__byo_com_TComObject_New
	public	__byo_com_TComObject_SetProperty
	public	_byo_com_CountObjects
	public	_byo_com_TComObject
	section	"code" code
___bb_com_com:
	push	ebp
	mov	ebp,esp
	cmp	dword [_44],0
	je	_45
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_45:
	mov	dword [_44],1
	call	___bb_blitz_blitz
	push	_byo_com_TComObject
	call	_bbObjectRegisterType
	add	esp,4
	call	_comInit@0
	mov	eax,0
	jmp	_16
_16:
	mov	esp,ebp
	pop	ebp
	ret
__byo_com_TComObject_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_byo_com_TComObject
	mov	dword [ebx+8],0
	mov	eax,0
	jmp	_19
_19:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_com_TComObject_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_22:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_46
_46:
	mov	esp,ebp
	pop	ebp
	ret
__byo_com_TComObject_CreateObject:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	ecx,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	mov	eax,0
	mov	edx,dword [_byo_com_CountObjects]
	add	edx,1
	cmp	edx,32767
	jge	_48
	add	dword [_byo_com_CountObjects],1
	mov	eax,dword [_byo_com_CountObjects]
	mov	dword [ecx+8],eax
	push	dword [ecx+8]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_1
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringToWString
	add	esp,4
	mov	esi,eax
	push	ebx
	call	_bbStringToWString
	add	esp,4
	mov	ebx,eax
	push	ebx
	push	esi
	call	_comCreate@8
	mov	edi,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	push	ebx
	call	_bbMemFree
	add	esp,4
	mov	eax,edi
	cmp	eax,0
	jne	_52
	sub	dword [_byo_com_CountObjects],1
_52:
_48:
	jmp	_26
_26:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_com_TComObject_GetObject:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+8]
	mov	ecx,dword [ebp+12]
	mov	eax,0
	mov	edx,dword [_byo_com_CountObjects]
	add	edx,1
	cmp	edx,32767
	jge	_54
	add	dword [_byo_com_CountObjects],1
	mov	eax,dword [_byo_com_CountObjects]
	mov	dword [ebx+8],eax
	push	ecx
	call	_bbStringToWString
	add	esp,4
	mov	edi,eax
	push	dword [ebx+8]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_1
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringToWString
	add	esp,4
	mov	esi,eax
	push	dword [ebp+16]
	call	_bbStringToWString
	add	esp,4
	mov	ebx,eax
	push	ebx
	push	esi
	push	edi
	call	_comGetObject@12
	mov	dword [ebp-4],eax
	push	edi
	call	_bbMemFree
	add	esp,4
	push	esi
	call	_bbMemFree
	add	esp,4
	push	ebx
	call	_bbMemFree
	add	esp,4
	mov	eax,dword [ebp-4]
	cmp	eax,0
	jne	_59
	sub	dword [_byo_com_CountObjects],1
_59:
_54:
	jmp	_31
_31:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_com_TComObject_SetProperty:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	esi,dword [ebp+12]
	push	dword [eax+8]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_1
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringToWString
	add	esp,4
	mov	ebx,eax
	push	esi
	call	_bbStringToWString
	add	esp,4
	mov	esi,eax
	push	esi
	push	ebx
	call	_comSetProperty@8
	push	ebx
	call	_bbMemFree
	add	esp,4
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,0
	jmp	_35
_35:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_com_TComObject_CallMethod:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	esi,dword [ebp+12]
	push	dword [eax+8]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_1
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringToWString
	add	esp,4
	mov	ebx,eax
	push	esi
	call	_bbStringToWString
	add	esp,4
	mov	esi,eax
	push	esi
	push	ebx
	call	_comCallMethod@8
	push	ebx
	call	_bbMemFree
	add	esp,4
	push	esi
	call	_bbMemFree
	add	esp,4
	mov	eax,0
	jmp	_39
_39:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_com_TComObject_DeleteObject:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_1
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringToWString
	add	esp,4
	mov	ebx,eax
	push	ebx
	call	_comFreeObject@4
	push	ebx
	call	_bbMemFree
	add	esp,4
	mov	eax,0
	jmp	_42
_42:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_44:
	dd	0
_3:
	db	"TComObject",0
_4:
	db	"ObjectNumber",0
_5:
	db	"i",0
_6:
	db	"New",0
_7:
	db	"()i",0
_8:
	db	"Delete",0
_9:
	db	"CreateObject",0
_10:
	db	"($)i",0
_11:
	db	"GetObject",0
_12:
	db	"($,$)i",0
_13:
	db	"SetProperty",0
_14:
	db	"CallMethod",0
_15:
	db	"DeleteObject",0
	align	4
_2:
	dd	2
	dd	_3
	dd	3
	dd	_4
	dd	_5
	dd	8
	dd	6
	dd	_6
	dd	_7
	dd	16
	dd	6
	dd	_8
	dd	_7
	dd	20
	dd	6
	dd	_9
	dd	_10
	dd	48
	dd	6
	dd	_11
	dd	_12
	dd	52
	dd	6
	dd	_13
	dd	_10
	dd	56
	dd	6
	dd	_14
	dd	_10
	dd	60
	dd	6
	dd	_15
	dd	_7
	dd	64
	dd	0
	align	4
_byo_com_TComObject:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_2
	dd	12
	dd	__byo_com_TComObject_New
	dd	__byo_com_TComObject_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__byo_com_TComObject_CreateObject
	dd	__byo_com_TComObject_GetObject
	dd	__byo_com_TComObject_SetProperty
	dd	__byo_com_TComObject_CallMethod
	dd	__byo_com_TComObject_DeleteObject
	align	4
_byo_com_CountObjects:
	dd	0
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	99,111,109,79,98,106,101,99,116
