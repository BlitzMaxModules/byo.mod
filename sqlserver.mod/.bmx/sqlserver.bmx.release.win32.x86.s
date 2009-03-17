	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_stream_stream
	extrn	_adoConnect@20
	extrn	_adoDisconnect@4
	extrn	_adoDuplicateConnection@0
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
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDtor
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringFromWString
	extrn	_bbStringToWString
	extrn	_brl_blitz_DebugLog
	extrn	_brl_stream_CloseStream
	extrn	_brl_stream_Eof
	extrn	_brl_stream_ReadLine
	extrn	_brl_stream_ReadStream
	public	___bb_sqlserver_sqlserver
	public	__byo_sqlserver_TCursor_Delete
	public	__byo_sqlserver_TCursor_New
	public	__byo_sqlserver_TCursor_firstRow
	public	__byo_sqlserver_TCursor_getDouble
	public	__byo_sqlserver_TCursor_getFloat
	public	__byo_sqlserver_TCursor_getInt
	public	__byo_sqlserver_TCursor_getString
	public	__byo_sqlserver_TCursor_lastRow
	public	__byo_sqlserver_TCursor_nextRow
	public	__byo_sqlserver_TCursor_previousRow
	public	__byo_sqlserver_TSQLServer_Delete
	public	__byo_sqlserver_TSQLServer_New
	public	__byo_sqlserver_TSQLServer_close
	public	__byo_sqlserver_TSQLServer_debugError
	public	__byo_sqlserver_TSQLServer_execFile
	public	__byo_sqlserver_TSQLServer_getLastErrorCode
	public	__byo_sqlserver_TSQLServer_getLastErrorDescription
	public	__byo_sqlserver_TSQLServer_open
	public	__byo_sqlserver_TSQLServer_query
	public	__byo_sqlserver_TSQLServer_update
	public	_byo_sqlserver_TCursor
	public	_byo_sqlserver_TSQLServer
	section	"code" code
___bb_sqlserver_sqlserver:
	push	ebp
	mov	ebp,esp
	cmp	dword [_116],0
	je	_117
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_117:
	mov	dword [_116],1
	call	___bb_blitz_blitz
	call	___bb_stream_stream
	push	_byo_sqlserver_TSQLServer
	call	_bbObjectRegisterType
	add	esp,4
	push	_byo_sqlserver_TCursor
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,0
	jmp	_43
_43:
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
	mov	eax,0
	jmp	_46
_46:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_49:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_118
_118:
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
	push	_1
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
	mov	dword [edx+8],eax
	mov	eax,dword [ebp+8]
	cmp	dword [eax+8],0
	jne	_126
	mov	byte [ebp-8],0
	jmp	_56
_126:
	mov	byte [ebp-4],1
_127:
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	mov	byte [ebp-8],al
	jmp	_56
_56:
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
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	mov	esi,_bbNullObject
	cmp	dword [eax+8],0
	je	_130
	push	_byo_sqlserver_TCursor
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	call	_adoDuplicateConnection@0
	mov	dword [esi+8],eax
	push	ebx
	call	_bbStringToWString
	add	esp,4
	mov	ebx,eax
	push	ebx
	push	dword [esi+8]
	call	_adoQuery@8
	mov	edi,eax
	push	ebx
	call	_bbMemFree
	add	esp,4
	mov	eax,edi
	cmp	eax,0
	jne	_133
	mov	eax,_bbNullObject
	jmp	_60
_133:
_130:
	mov	eax,esi
	jmp	_60
_60:
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
	push	dword [esi+8]
	call	_adoUpdate@8
	mov	esi,eax
	push	ebx
	call	_bbMemFree
	add	esp,4
	mov	eax,esi
	jmp	_64
_64:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_execFile:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	eax
	call	_brl_stream_ReadStream
	add	esp,4
	mov	esi,eax
	mov	ebx,_2
	cmp	esi,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	jne	_138
	mov	byte [ebp-4],0
	jmp	_68
_138:
	jmp	_3
_5:
	push	_6
	push	esi
	call	_brl_stream_ReadLine
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
_3:
	push	esi
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_5
_4:
	push	esi
	call	_brl_stream_CloseStream
	add	esp,4
	mov	eax,edi
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-4],al
	jmp	_68
_68:
	movzx	eax,byte [ebp-4]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_getLastErrorCode:
	push	ebp
	mov	ebp,esp
	call	_adoGetLastErrorCode@0
	jmp	_71
_71:
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
	push	_7
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_141
	mov	ebx,_8
_141:
	mov	eax,ebx
	jmp	_74
_74:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_debugError:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,4
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
	mov	eax,0
	jmp	_77
_77:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_close:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	dword [ebx+8]
	call	_adoDisconnect@4
	mov	dword [ebx+8],0
	mov	eax,0
	jmp	_80
_80:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_byo_sqlserver_TCursor
	mov	dword [ebx+8],0
	mov	eax,0
	jmp	_83
_83:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_86:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_143
_143:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_getString:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	eax
	push	dword [edx+8]
	call	_adoGetString@8
	push	eax
	call	_bbStringFromWString
	add	esp,4
	jmp	_90
_90:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_getInt:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	eax
	push	dword [edx+8]
	call	_adoGetInt@8
	jmp	_94
_94:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_getFloat:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	eax
	push	dword [edx+8]
	call	_adoGetFloat@8
	jmp	_98
_98:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_getDouble:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	eax
	push	dword [edx+8]
	call	_adoGetDouble@8
	jmp	_102
_102:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_firstRow:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_adoFirstRow@4
	jmp	_105
_105:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_previousRow:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_adoPreviousRow@4
	jmp	_108
_108:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_nextRow:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_adoNextRow@4
	jmp	_111
_111:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_lastRow:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_adoLastRow@4
	jmp	_114
_114:
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_116:
	dd	0
_10:
	db	"TSQLServer",0
_11:
	db	"connection",0
_12:
	db	"*b",0
_13:
	db	"New",0
_14:
	db	"()i",0
_15:
	db	"Delete",0
_16:
	db	"open",0
_17:
	db	"($,$,$,$)b",0
_18:
	db	"query",0
_19:
	db	"($):TCursor",0
_20:
	db	"update",0
_21:
	db	"($)i",0
_22:
	db	"execFile",0
_23:
	db	"($)b",0
_24:
	db	"getLastErrorCode",0
_25:
	db	"getLastErrorDescription",0
_26:
	db	"()$",0
_27:
	db	"debugError",0
_28:
	db	"close",0
	align	4
_9:
	dd	2
	dd	_10
	dd	3
	dd	_11
	dd	_12
	dd	8
	dd	6
	dd	_13
	dd	_14
	dd	16
	dd	6
	dd	_15
	dd	_14
	dd	20
	dd	6
	dd	_16
	dd	_17
	dd	48
	dd	6
	dd	_18
	dd	_19
	dd	52
	dd	6
	dd	_20
	dd	_21
	dd	56
	dd	6
	dd	_22
	dd	_23
	dd	60
	dd	6
	dd	_24
	dd	_14
	dd	64
	dd	6
	dd	_25
	dd	_26
	dd	68
	dd	6
	dd	_27
	dd	_14
	dd	72
	dd	6
	dd	_28
	dd	_14
	dd	76
	dd	0
	align	4
_byo_sqlserver_TSQLServer:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_9
	dd	12
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
	dd	__byo_sqlserver_TSQLServer_execFile
	dd	__byo_sqlserver_TSQLServer_getLastErrorCode
	dd	__byo_sqlserver_TSQLServer_getLastErrorDescription
	dd	__byo_sqlserver_TSQLServer_debugError
	dd	__byo_sqlserver_TSQLServer_close
_30:
	db	"TCursor",0
_31:
	db	"getString",0
_32:
	db	"(i)$",0
_33:
	db	"getInt",0
_34:
	db	"(i)i",0
_35:
	db	"getFloat",0
_36:
	db	"(i)f",0
_37:
	db	"getDouble",0
_38:
	db	"(i)d",0
_39:
	db	"firstRow",0
_40:
	db	"previousRow",0
_41:
	db	"nextRow",0
_42:
	db	"lastRow",0
	align	4
_29:
	dd	2
	dd	_30
	dd	3
	dd	_11
	dd	_12
	dd	8
	dd	6
	dd	_13
	dd	_14
	dd	16
	dd	6
	dd	_15
	dd	_14
	dd	20
	dd	6
	dd	_31
	dd	_32
	dd	48
	dd	6
	dd	_33
	dd	_34
	dd	52
	dd	6
	dd	_35
	dd	_36
	dd	56
	dd	6
	dd	_37
	dd	_38
	dd	60
	dd	6
	dd	_39
	dd	_14
	dd	64
	dd	6
	dd	_40
	dd	_14
	dd	68
	dd	6
	dd	_41
	dd	_14
	dd	72
	dd	6
	dd	_42
	dd	_14
	dd	76
	dd	0
	align	4
_byo_sqlserver_TCursor:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_29
	dd	12
	dd	__byo_sqlserver_TCursor_New
	dd	__byo_sqlserver_TCursor_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__byo_sqlserver_TCursor_getString
	dd	__byo_sqlserver_TCursor_getInt
	dd	__byo_sqlserver_TCursor_getFloat
	dd	__byo_sqlserver_TCursor_getDouble
	dd	__byo_sqlserver_TCursor_firstRow
	dd	__byo_sqlserver_TCursor_previousRow
	dd	__byo_sqlserver_TCursor_nextRow
	dd	__byo_sqlserver_TCursor_lastRow
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,113,108,111,108,101,100,98
	align	4
_2:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_6:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_7:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	79,107,97,121,46
	align	4
_8:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	78,111,32,101,114,114,111,114,115,46
