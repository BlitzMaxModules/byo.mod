	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_retro_retro
	extrn	_adoConnect@20
	extrn	_adoDisconnect@4
	extrn	_adoFirstRow@4
	extrn	_adoGetDouble@8
	extrn	_adoGetFloat@8
	extrn	_adoGetInt@8
	extrn	_adoGetLastErrorCode@0
	extrn	_adoGetLastErrorDescription@0
	extrn	_adoGetString@8
	extrn	_adoLastRow@4
	extrn	_adoNextRow@4
	extrn	_adoPreviousRow@4
	extrn	_adoQuery@8
	extrn	_adoUpdate@8
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
	extrn	_bbStringCompare
	extrn	_bbStringFromWString
	extrn	_bbStringToWString
	public	___bb_sqlserver_sqlserver
	public	__byo_sqlserver_TSQLServer_Delete
	public	__byo_sqlserver_TSQLServer_New
	public	__byo_sqlserver_TSQLServer_close
	public	__byo_sqlserver_TSQLServer_firstRow
	public	__byo_sqlserver_TSQLServer_getDouble
	public	__byo_sqlserver_TSQLServer_getFloat
	public	__byo_sqlserver_TSQLServer_getInt
	public	__byo_sqlserver_TSQLServer_getLastErrorCode
	public	__byo_sqlserver_TSQLServer_getLastErrorDescription
	public	__byo_sqlserver_TSQLServer_getString
	public	__byo_sqlserver_TSQLServer_lastRow
	public	__byo_sqlserver_TSQLServer_nextRow
	public	__byo_sqlserver_TSQLServer_open
	public	__byo_sqlserver_TSQLServer_previousRow
	public	__byo_sqlserver_TSQLServer_query
	public	__byo_sqlserver_TSQLServer_update
	public	_byo_sqlserver_TSQLServer
	section	"code" code
___bb_sqlserver_sqlserver:
	push	ebp
	mov	ebp,esp
	cmp	dword [_96],0
	je	_97
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_97:
	mov	dword [_96],1
	call	___bb_blitz_blitz
	call	___bb_retro_retro
	push	_byo_sqlserver_TSQLServer
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,0
	jmp	_36
_36:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_byo_sqlserver_TSQLServer
	mov	dword [ebx+8],0
	mov	dword [ebx+12],0
	mov	eax,0
	jmp	_39
_39:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_42:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_98
_98:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_open:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+12]
	mov	ebx,dword [ebp+20]
	mov	byte [ebp-4],0
	push	_3
	call	_bbStringToWString
	add	esp,4
	mov	dword [ebp-16],eax
	push	esi
	call	_bbStringToWString
	add	esp,4
	mov	edi,eax
	push	ebx
	call	_bbStringToWString
	add	esp,4
	mov	esi,eax
	push	dword [ebp+24]
	call	_bbStringToWString
	add	esp,4
	mov	ebx,eax
	push	dword [ebp+16]
	call	_bbStringToWString
	add	esp,4
	mov	dword [ebp-12],eax
	push	dword [ebp-12]
	push	ebx
	push	esi
	push	edi
	push	dword [ebp-16]
	call	_adoConnect@20
	mov	dword [ebp-20],eax
	push	dword [ebp-16]
	call	_bbMemFree
	add	esp,4
	push	edi
	call	_bbMemFree
	add	esp,4
	push	esi
	call	_bbMemFree
	add	esp,4
	push	ebx
	call	_bbMemFree
	add	esp,4
	push	dword [ebp-12]
	call	_bbMemFree
	add	esp,4
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp-20]
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	cmp	dword [eax+12],0
	jne	_106
	mov	byte [ebp-8],0
	jmp	_49
_106:
	mov	byte [ebp-4],1
_107:
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	mov	byte [ebp-8],al
	jmp	_49
_49:
	movzx	eax,byte [ebp-8]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_query:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	eax,dword [ebp+12]
	mov	byte [ebp-4],0
	cmp	dword [esi+12],0
	je	_109
	push	eax
	call	_bbStringToWString
	add	esp,4
	mov	ebx,eax
	push	ebx
	push	dword [esi+12]
	call	_adoQuery@8
	mov	edi,eax
	push	ebx
	call	_bbMemFree
	add	esp,4
	mov	dword [esi+8],edi
	cmp	dword [esi+8],0
	jne	_112
	mov	byte [ebp-8],0
	jmp	_53
_112:
	mov	byte [ebp-4],1
_113:
_109:
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	mov	byte [ebp-8],al
	jmp	_53
_53:
	movzx	eax,byte [ebp-8]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_update:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	eax
	call	_bbStringToWString
	add	esp,4
	mov	ebx,eax
	push	ebx
	push	dword [esi+12]
	call	_adoUpdate@8
	mov	esi,eax
	push	ebx
	call	_bbMemFree
	add	esp,4
	mov	eax,esi
	jmp	_57
_57:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_getString:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	eax
	push	dword [edx+12]
	call	_adoGetString@8
	push	eax
	call	_bbStringFromWString
	add	esp,4
	jmp	_61
_61:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_getInt:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	eax
	push	dword [edx+12]
	call	_adoGetInt@8
	jmp	_65
_65:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_getFloat:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	eax
	push	dword [edx+12]
	call	_adoGetFloat@8
	jmp	_69
_69:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_getDouble:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	eax
	push	dword [edx+12]
	call	_adoGetDouble@8
	jmp	_73
_73:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_firstRow:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	_adoFirstRow@4
	jmp	_76
_76:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_previousRow:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	_adoPreviousRow@4
	jmp	_79
_79:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_nextRow:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	_adoNextRow@4
	jmp	_82
_82:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_lastRow:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	_adoLastRow@4
	jmp	_85
_85:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_getLastErrorCode:
	push	ebp
	mov	ebp,esp
	call	_adoGetLastErrorCode@0
	jmp	_88
_88:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_getLastErrorDescription:
	push	ebp
	mov	ebp,esp
	push	ebx
	call	_adoGetLastErrorDescription@0
	push	eax
	call	_bbStringFromWString
	add	esp,4
	mov	ebx,eax
	push	_4
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_117
	mov	ebx,_5
_117:
	mov	eax,ebx
	jmp	_91
_91:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_close:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	dword [ebx+12]
	call	_adoDisconnect@4
	mov	dword [ebx+12],0
	mov	eax,0
	jmp	_94
_94:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_96:
	dd	0
_7:
	db	"TSQLServer",0
_8:
	db	"recordSet",0
_9:
	db	"*b",0
_10:
	db	"connection",0
_11:
	db	"New",0
_12:
	db	"()i",0
_13:
	db	"Delete",0
_14:
	db	"open",0
_15:
	db	"($,$,$,$)b",0
_16:
	db	"query",0
_17:
	db	"($)b",0
_18:
	db	"update",0
_19:
	db	"($)i",0
_20:
	db	"getString",0
_21:
	db	"(i)$",0
_22:
	db	"getInt",0
_23:
	db	"(i)i",0
_24:
	db	"getFloat",0
_25:
	db	"(i)f",0
_26:
	db	"getDouble",0
_27:
	db	"(i)d",0
_28:
	db	"firstRow",0
_29:
	db	"previousRow",0
_30:
	db	"nextRow",0
_31:
	db	"lastRow",0
_32:
	db	"getLastErrorCode",0
_33:
	db	"getLastErrorDescription",0
_34:
	db	"()$",0
_35:
	db	"close",0
	align	4
_6:
	dd	2
	dd	_7
	dd	3
	dd	_8
	dd	_9
	dd	8
	dd	3
	dd	_10
	dd	_9
	dd	12
	dd	6
	dd	_11
	dd	_12
	dd	16
	dd	6
	dd	_13
	dd	_12
	dd	20
	dd	6
	dd	_14
	dd	_15
	dd	48
	dd	6
	dd	_16
	dd	_17
	dd	52
	dd	6
	dd	_18
	dd	_19
	dd	56
	dd	6
	dd	_20
	dd	_21
	dd	60
	dd	6
	dd	_22
	dd	_23
	dd	64
	dd	6
	dd	_24
	dd	_25
	dd	68
	dd	6
	dd	_26
	dd	_27
	dd	72
	dd	6
	dd	_28
	dd	_12
	dd	76
	dd	6
	dd	_29
	dd	_12
	dd	80
	dd	6
	dd	_30
	dd	_12
	dd	84
	dd	6
	dd	_31
	dd	_12
	dd	88
	dd	6
	dd	_32
	dd	_12
	dd	92
	dd	6
	dd	_33
	dd	_34
	dd	96
	dd	6
	dd	_35
	dd	_12
	dd	100
	dd	0
	align	4
_byo_sqlserver_TSQLServer:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_6
	dd	16
	dd	__byo_sqlserver_TSQLServer_New
	dd	__byo_sqlserver_TSQLServer_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__byo_sqlserver_TSQLServer_open
	dd	__byo_sqlserver_TSQLServer_query
	dd	__byo_sqlserver_TSQLServer_update
	dd	__byo_sqlserver_TSQLServer_getString
	dd	__byo_sqlserver_TSQLServer_getInt
	dd	__byo_sqlserver_TSQLServer_getFloat
	dd	__byo_sqlserver_TSQLServer_getDouble
	dd	__byo_sqlserver_TSQLServer_firstRow
	dd	__byo_sqlserver_TSQLServer_previousRow
	dd	__byo_sqlserver_TSQLServer_nextRow
	dd	__byo_sqlserver_TSQLServer_lastRow
	dd	__byo_sqlserver_TSQLServer_getLastErrorCode
	dd	__byo_sqlserver_TSQLServer_getLastErrorDescription
	dd	__byo_sqlserver_TSQLServer_close
	align	4
_3:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,113,108,111,108,101,100,98
	align	4
_4:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	79,107,97,121,46
	align	4
_5:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	78,111,32,101,114,114,111,114,115,46
