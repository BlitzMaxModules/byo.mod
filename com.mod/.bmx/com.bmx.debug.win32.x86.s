	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	_bbMemFree
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDtor
	extrn	_bbObjectFree
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_bbStringToWString
	extrn	_brl_blitz_NullObjectError
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
	push	ebx
	cmp	dword [_52],0
	je	_53
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_53:
	mov	dword [_52],1
	push	ebp
	push	_47
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	push	_byo_com_TComObject
	call	_bbObjectRegisterType
	add	esp,4
	push	_44
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_comInit@0
	push	_46
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_16
_16:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_com_TComObject_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_55
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_byo_com_TComObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	push	ebp
	push	_54
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_19
_19:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	jmp	_58
_58:
	mov	esp,ebp
	pop	ebp
	ret
__byo_com_TComObject_CreateObject:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],0
	mov	eax,ebp
	push	eax
	push	_80
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_59
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	push	_61
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_byo_com_CountObjects]
	add	eax,1
	cmp	eax,32767
	jge	_62
	mov	eax,ebp
	push	eax
	push	_78
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_63
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_byo_com_CountObjects],1
	push	_64
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_66
	call	_brl_blitz_NullObjectError
_66:
	mov	eax,dword [_byo_com_CountObjects]
	mov	dword [ebx+8],eax
	push	_68
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_70
	call	_brl_blitz_NullObjectError
_70:
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
	push	dword [ebp-8]
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
	mov	dword [ebp-12],edi
	push	_74
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],0
	jne	_75
	mov	eax,ebp
	push	eax
	push	_77
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_76
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [_byo_com_CountObjects],1
	call	dword [_bbOnDebugLeaveScope]
_75:
	call	dword [_bbOnDebugLeaveScope]
_62:
	push	_79
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_26
_26:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_com_TComObject_GetObject:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],0
	mov	eax,ebp
	push	eax
	push	_106
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_86
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_byo_com_CountObjects]
	add	eax,1
	cmp	eax,32767
	jge	_87
	mov	eax,ebp
	push	eax
	push	_104
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_88
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_byo_com_CountObjects],1
	push	_89
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_91
	call	_brl_blitz_NullObjectError
_91:
	mov	eax,dword [_byo_com_CountObjects]
	mov	dword [ebx+8],eax
	push	_93
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_bbStringToWString
	add	esp,4
	mov	dword [ebp-20],eax
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_96
	call	_brl_blitz_NullObjectError
_96:
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
	push	dword [ebp-12]
	call	_bbStringToWString
	add	esp,4
	mov	ebx,eax
	push	ebx
	push	esi
	push	dword [ebp-20]
	call	_comGetObject@12
	mov	edi,eax
	push	dword [ebp-20]
	call	_bbMemFree
	add	esp,4
	push	esi
	call	_bbMemFree
	add	esp,4
	push	ebx
	call	_bbMemFree
	add	esp,4
	mov	dword [ebp-16],edi
	push	_100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	jne	_101
	mov	eax,ebp
	push	eax
	push	_103
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [_byo_com_CountObjects],1
	call	dword [_bbOnDebugLeaveScope]
_101:
	call	dword [_bbOnDebugLeaveScope]
_87:
	push	_105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_31
_31:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_com_TComObject_SetProperty:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_115
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_111
	call	_brl_blitz_NullObjectError
_111:
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
	mov	ebx,eax
	push	dword [ebp-8]
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
	mov	ebx,0
	jmp	_35
_35:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_com_TComObject_CallMethod:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_122
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_118
	call	_brl_blitz_NullObjectError
_118:
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
	mov	ebx,eax
	push	dword [ebp-8]
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
	mov	ebx,0
	jmp	_39
_39:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_com_TComObject_DeleteObject:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_128
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_125
	call	_brl_blitz_NullObjectError
_125:
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
	mov	ebx,eax
	push	ebx
	call	_comFreeObject@4
	push	ebx
	call	_bbMemFree
	add	esp,4
	mov	ebx,0
	jmp	_42
_42:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_52:
	dd	0
_48:
	db	"com",0
_49:
	db	"MaxObjects",0
_5:
	db	"i",0
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	51,50,55,54,55
_51:
	db	"CountObjects",0
	align	4
_byo_com_CountObjects:
	dd	0
	align	4
_47:
	dd	1
	dd	_48
	dd	1
	dd	_49
	dd	_5
	dd	_50
	dd	4
	dd	_51
	dd	_5
	dd	_byo_com_CountObjects
	dd	0
_3:
	db	"TComObject",0
_4:
	db	"ObjectNumber",0
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
_45:
	db	"$BMXPATH/mod/byo.mod/com.mod/com.bmx",0
	align	4
_44:
	dd	_45
	dd	24
	dd	1
	align	4
_46:
	dd	_45
	dd	26
	dd	1
_56:
	db	"Self",0
_57:
	db	":TComObject",0
	align	4
_55:
	dd	1
	dd	_6
	dd	2
	dd	_56
	dd	_57
	dd	-4
	dd	0
	align	4
_54:
	dd	3
	dd	0
	dd	0
_81:
	db	"objectID",0
_82:
	db	"$",0
_83:
	db	"result",0
	align	4
_80:
	dd	1
	dd	_9
	dd	2
	dd	_56
	dd	_57
	dd	-4
	dd	2
	dd	_81
	dd	_82
	dd	-8
	dd	2
	dd	_83
	dd	_5
	dd	-12
	dd	0
	align	4
_59:
	dd	_45
	dd	33
	dd	3
	align	4
_61:
	dd	_45
	dd	35
	dd	3
	align	4
_78:
	dd	3
	dd	0
	dd	0
	align	4
_63:
	dd	_45
	dd	36
	dd	4
	align	4
_64:
	dd	_45
	dd	37
	dd	4
	align	4
_68:
	dd	_45
	dd	38
	dd	4
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	99,111,109,79,98,106,101,99,116
	align	4
_74:
	dd	_45
	dd	40
	dd	4
	align	4
_77:
	dd	3
	dd	0
	dd	0
	align	4
_76:
	dd	_45
	dd	41
	dd	5
	align	4
_79:
	dd	_45
	dd	44
	dd	3
_107:
	db	"parentObject",0
_108:
	db	"command",0
	align	4
_106:
	dd	1
	dd	_11
	dd	2
	dd	_56
	dd	_57
	dd	-4
	dd	2
	dd	_107
	dd	_82
	dd	-8
	dd	2
	dd	_108
	dd	_82
	dd	-12
	dd	2
	dd	_83
	dd	_5
	dd	-16
	dd	0
	align	4
_84:
	dd	_45
	dd	48
	dd	3
	align	4
_86:
	dd	_45
	dd	50
	dd	3
	align	4
_104:
	dd	3
	dd	0
	dd	0
	align	4
_88:
	dd	_45
	dd	51
	dd	4
	align	4
_89:
	dd	_45
	dd	52
	dd	4
	align	4
_93:
	dd	_45
	dd	53
	dd	4
	align	4
_100:
	dd	_45
	dd	55
	dd	4
	align	4
_103:
	dd	3
	dd	0
	dd	0
	align	4
_102:
	dd	_45
	dd	56
	dd	5
	align	4
_105:
	dd	_45
	dd	59
	dd	3
	align	4
_115:
	dd	1
	dd	_13
	dd	2
	dd	_56
	dd	_57
	dd	-4
	dd	2
	dd	_108
	dd	_82
	dd	-8
	dd	0
	align	4
_109:
	dd	_45
	dd	63
	dd	3
	align	4
_122:
	dd	1
	dd	_14
	dd	2
	dd	_56
	dd	_57
	dd	-4
	dd	2
	dd	_108
	dd	_82
	dd	-8
	dd	0
	align	4
_116:
	dd	_45
	dd	67
	dd	3
	align	4
_128:
	dd	1
	dd	_15
	dd	2
	dd	_56
	dd	_57
	dd	-4
	dd	0
	align	4
_123:
	dd	_45
	dd	71
	dd	3
