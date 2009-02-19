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
	extrn	_bbEmptyString
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
	extrn	_bbStringCompare
	extrn	_bbStringFromWString
	extrn	_bbStringToWString
	extrn	_brl_blitz_NullObjectError
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
	push	ebx
	cmp	dword [_98],0
	je	_99
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_99:
	mov	dword [_98],1
	push	ebp
	push	_96
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_retro_retro
	push	_byo_sqlserver_TSQLServer
	call	_bbObjectRegisterType
	add	esp,4
	mov	ebx,0
	jmp	_36
_36:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_101
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_byo_sqlserver_TSQLServer
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	push	ebp
	push	_100
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_39
_39:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	jmp	_104
_104:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_open:
	push	ebp
	mov	ebp,esp
	sub	esp,44
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-24],eax
	mov	byte [ebp-4],0
	mov	eax,ebp
	push	eax
	push	_128
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_110
	call	_brl_blitz_NullObjectError
_110:
	mov	dword [ebp-44],ebx
	push	_3
	call	_bbStringToWString
	add	esp,4
	mov	dword [ebp-36],eax
	push	dword [ebp-12]
	call	_bbStringToWString
	add	esp,4
	mov	edi,eax
	push	dword [ebp-20]
	call	_bbStringToWString
	add	esp,4
	mov	esi,eax
	push	dword [ebp-24]
	call	_bbStringToWString
	add	esp,4
	mov	ebx,eax
	push	dword [ebp-16]
	call	_bbStringToWString
	add	esp,4
	mov	dword [ebp-32],eax
	push	dword [ebp-32]
	push	ebx
	push	esi
	push	edi
	push	dword [ebp-36]
	call	_adoConnect@20
	mov	dword [ebp-40],eax
	push	dword [ebp-36]
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
	push	dword [ebp-32]
	call	_bbMemFree
	add	esp,4
	mov	edx,dword [ebp-40]
	mov	eax,dword [ebp-44]
	mov	dword [eax+12],edx
	push	_118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_120
	call	_brl_blitz_NullObjectError
_120:
	cmp	dword [ebx+12],0
	jne	_121
	mov	eax,ebp
	push	eax
	push	_123
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-28],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_49
_121:
	mov	eax,ebp
	push	eax
	push	_126
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_124:
	push	_127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	mov	byte [ebp-28],al
	jmp	_49
_49:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-28]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_query:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-12],eax
	mov	byte [ebp-4],0
	mov	eax,ebp
	push	eax
	push	_161
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_140
	call	_brl_blitz_NullObjectError
_140:
	cmp	dword [ebx+12],0
	je	_141
	mov	eax,ebp
	push	eax
	push	_159
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_142
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_144
	call	_brl_blitz_NullObjectError
_144:
	mov	edi,ebx
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_147
	call	_brl_blitz_NullObjectError
_147:
	push	dword [ebp-12]
	call	_bbStringToWString
	add	esp,4
	mov	ebx,eax
	push	ebx
	push	dword [esi+12]
	call	_adoQuery@8
	mov	esi,eax
	push	ebx
	call	_bbMemFree
	add	esp,4
	mov	dword [edi+8],esi
	push	_150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_152
	call	_brl_blitz_NullObjectError
_152:
	cmp	dword [ebx+8],0
	jne	_153
	mov	eax,ebp
	push	eax
	push	_155
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_53
_153:
	mov	eax,ebp
	push	eax
	push	_158
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_156:
	call	dword [_bbOnDebugLeaveScope]
_141:
	push	_160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	mov	byte [ebp-16],al
	jmp	_53
_53:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-16]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_update:
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
	push	_167
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_164
	call	_brl_blitz_NullObjectError
_164:
	push	dword [ebp-8]
	call	_bbStringToWString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebx+12]
	call	_adoUpdate@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	jmp	_57
_57:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_getString:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_172
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_171
	call	_brl_blitz_NullObjectError
_171:
	push	dword [ebp-8]
	push	dword [ebx+12]
	call	_adoGetString@8
	push	eax
	call	_bbStringFromWString
	add	esp,4
	mov	ebx,eax
	jmp	_61
_61:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_getInt:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_178
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_177
	call	_brl_blitz_NullObjectError
_177:
	push	dword [ebp-8]
	push	dword [ebx+12]
	call	_adoGetInt@8
	mov	ebx,eax
	jmp	_65
_65:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_getFloat:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_182
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_181
	call	_brl_blitz_NullObjectError
_181:
	push	dword [ebp-8]
	push	dword [ebx+12]
	call	_adoGetFloat@8
	fstp	dword [ebp-12]
	jmp	_69
_69:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-12]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_getDouble:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_186
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_185
	call	_brl_blitz_NullObjectError
_185:
	push	dword [ebp-8]
	push	dword [ebx+12]
	call	_adoGetDouble@8
	fstp	qword [ebp-16]
	jmp	_73
_73:
	call	dword [_bbOnDebugLeaveScope]
	fld	qword [ebp-16]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_firstRow:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_190
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_189
	call	_brl_blitz_NullObjectError
_189:
	push	dword [ebx+12]
	call	_adoFirstRow@4
	mov	ebx,eax
	jmp	_76
_76:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_previousRow:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_194
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_193
	call	_brl_blitz_NullObjectError
_193:
	push	dword [ebx+12]
	call	_adoPreviousRow@4
	mov	ebx,eax
	jmp	_79
_79:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_nextRow:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_198
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_197
	call	_brl_blitz_NullObjectError
_197:
	push	dword [ebx+12]
	call	_adoNextRow@4
	mov	ebx,eax
	jmp	_82
_82:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_lastRow:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_202
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_201
	call	_brl_blitz_NullObjectError
_201:
	push	dword [ebx+12]
	call	_adoLastRow@4
	mov	ebx,eax
	jmp	_85
_85:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_getLastErrorCode:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_204
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_adoGetLastErrorCode@0
	mov	ebx,eax
	jmp	_88
_88:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_getLastErrorDescription:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbEmptyString
	push	ebp
	push	_212
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_adoGetLastErrorDescription@0
	push	eax
	call	_bbStringFromWString
	add	esp,4
	mov	dword [ebp-8],eax
	push	_207
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_208
	push	ebp
	push	_210
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_5
	call	dword [_bbOnDebugLeaveScope]
_208:
	push	_211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_91
_91:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_close:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_221
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_216
	call	_brl_blitz_NullObjectError
_216:
	push	dword [ebx+12]
	call	_adoDisconnect@4
	push	_217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_219
	call	_brl_blitz_NullObjectError
_219:
	mov	dword [ebx+12],0
	mov	ebx,0
	jmp	_94
_94:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_98:
	dd	0
_97:
	db	"sqlserver",0
	align	4
_96:
	dd	1
	dd	_97
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
_102:
	db	"Self",0
_103:
	db	":TSQLServer",0
	align	4
_101:
	dd	1
	dd	_11
	dd	2
	dd	_102
	dd	_103
	dd	-4
	dd	0
	align	4
_100:
	dd	3
	dd	0
	dd	0
_129:
	db	"server",0
_130:
	db	"$",0
_131:
	db	"database",0
_132:
	db	"user",0
_133:
	db	"password",0
_134:
	db	"result",0
_135:
	db	"b",0
	align	4
_128:
	dd	1
	dd	_14
	dd	2
	dd	_102
	dd	_103
	dd	-8
	dd	2
	dd	_129
	dd	_130
	dd	-12
	dd	2
	dd	_131
	dd	_130
	dd	-16
	dd	2
	dd	_132
	dd	_130
	dd	-20
	dd	2
	dd	_133
	dd	_130
	dd	-24
	dd	2
	dd	_134
	dd	_135
	dd	-4
	dd	0
_106:
	db	"$BMXPATH/mod/byo.mod/sqlserver.mod/sqlserver.bmx",0
	align	4
_105:
	dd	_106
	dd	39
	dd	3
	align	4
_108:
	dd	_106
	dd	42
	dd	3
	align	4
_3:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,113,108,111,108,101,100,98
	align	4
_118:
	dd	_106
	dd	45
	dd	3
	align	4
_123:
	dd	3
	dd	0
	dd	0
	align	4
_122:
	dd	_106
	dd	46
	dd	4
	align	4
_126:
	dd	3
	dd	0
	dd	0
	align	4
_125:
	dd	_106
	dd	48
	dd	4
	align	4
_127:
	dd	_106
	dd	51
	dd	3
	align	4
_161:
	dd	1
	dd	_16
	dd	2
	dd	_102
	dd	_103
	dd	-8
	dd	2
	dd	_16
	dd	_130
	dd	-12
	dd	2
	dd	_134
	dd	_135
	dd	-4
	dd	0
	align	4
_136:
	dd	_106
	dd	57
	dd	3
	align	4
_138:
	dd	_106
	dd	59
	dd	3
	align	4
_159:
	dd	3
	dd	0
	dd	0
	align	4
_142:
	dd	_106
	dd	60
	dd	4
	align	4
_150:
	dd	_106
	dd	62
	dd	4
	align	4
_155:
	dd	3
	dd	0
	dd	0
	align	4
_154:
	dd	_106
	dd	63
	dd	5
	align	4
_158:
	dd	3
	dd	0
	dd	0
	align	4
_157:
	dd	_106
	dd	65
	dd	5
	align	4
_160:
	dd	_106
	dd	69
	dd	3
_168:
	db	"request",0
	align	4
_167:
	dd	1
	dd	_18
	dd	2
	dd	_102
	dd	_103
	dd	-4
	dd	2
	dd	_168
	dd	_130
	dd	-8
	dd	0
	align	4
_162:
	dd	_106
	dd	74
	dd	3
_173:
	db	"column",0
_174:
	db	"i",0
	align	4
_172:
	dd	1
	dd	_20
	dd	2
	dd	_102
	dd	_103
	dd	-4
	dd	2
	dd	_173
	dd	_174
	dd	-8
	dd	0
	align	4
_169:
	dd	_106
	dd	79
	dd	3
	align	4
_178:
	dd	1
	dd	_22
	dd	2
	dd	_102
	dd	_103
	dd	-4
	dd	2
	dd	_173
	dd	_174
	dd	-8
	dd	0
	align	4
_175:
	dd	_106
	dd	84
	dd	3
	align	4
_182:
	dd	1
	dd	_24
	dd	2
	dd	_102
	dd	_103
	dd	-4
	dd	2
	dd	_173
	dd	_174
	dd	-8
	dd	0
	align	4
_179:
	dd	_106
	dd	89
	dd	3
	align	4
_186:
	dd	1
	dd	_26
	dd	2
	dd	_102
	dd	_103
	dd	-4
	dd	2
	dd	_173
	dd	_174
	dd	-8
	dd	0
	align	4
_183:
	dd	_106
	dd	94
	dd	3
	align	4
_190:
	dd	1
	dd	_28
	dd	2
	dd	_102
	dd	_103
	dd	-4
	dd	0
	align	4
_187:
	dd	_106
	dd	99
	dd	3
	align	4
_194:
	dd	1
	dd	_29
	dd	2
	dd	_102
	dd	_103
	dd	-4
	dd	0
	align	4
_191:
	dd	_106
	dd	104
	dd	3
	align	4
_198:
	dd	1
	dd	_30
	dd	2
	dd	_102
	dd	_103
	dd	-4
	dd	0
	align	4
_195:
	dd	_106
	dd	109
	dd	3
	align	4
_202:
	dd	1
	dd	_31
	dd	2
	dd	_102
	dd	_103
	dd	-4
	dd	0
	align	4
_199:
	dd	_106
	dd	114
	dd	3
	align	4
_204:
	dd	1
	dd	_32
	dd	2
	dd	_102
	dd	_103
	dd	-4
	dd	0
	align	4
_203:
	dd	_106
	dd	119
	dd	3
_213:
	db	"error",0
	align	4
_212:
	dd	1
	dd	_33
	dd	2
	dd	_102
	dd	_103
	dd	-4
	dd	2
	dd	_213
	dd	_130
	dd	-8
	dd	0
	align	4
_205:
	dd	_106
	dd	124
	dd	3
	align	4
_207:
	dd	_106
	dd	126
	dd	3
	align	4
_4:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	79,107,97,121,46
	align	4
_210:
	dd	3
	dd	0
	dd	0
	align	4
_209:
	dd	_106
	dd	127
	dd	4
	align	4
_5:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	78,111,32,101,114,114,111,114,115,46
	align	4
_211:
	dd	_106
	dd	130
	dd	3
	align	4
_221:
	dd	1
	dd	_35
	dd	2
	dd	_102
	dd	_103
	dd	-4
	dd	0
	align	4
_214:
	dd	_106
	dd	135
	dd	3
	align	4
_217:
	dd	_106
	dd	136
	dd	3
