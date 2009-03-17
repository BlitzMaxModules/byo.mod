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
	extrn	_bbEmptyString
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
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringFromWString
	extrn	_bbStringToWString
	extrn	_brl_blitz_DebugLog
	extrn	_brl_blitz_NullObjectError
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
	push	ebx
	cmp	dword [_118],0
	je	_119
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_119:
	mov	dword [_118],1
	push	ebp
	push	_116
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_stream_stream
	push	_byo_sqlserver_TSQLServer
	call	_bbObjectRegisterType
	add	esp,4
	push	_byo_sqlserver_TCursor
	call	_bbObjectRegisterType
	add	esp,4
	mov	ebx,0
	jmp	_43
_43:
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
	push	_121
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_byo_sqlserver_TSQLServer
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	push	ebp
	push	_120
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_46
_46:
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
_49:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_124
_124:
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
	push	_148
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_130
	call	_brl_blitz_NullObjectError
_130:
	mov	dword [ebp-44],ebx
	push	_1
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
	mov	dword [eax+8],edx
	push	_138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_140
	call	_brl_blitz_NullObjectError
_140:
	cmp	dword [ebx+8],0
	jne	_141
	mov	eax,ebp
	push	eax
	push	_143
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_142
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-28],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_56
_141:
	mov	eax,ebp
	push	eax
	push	_146
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_144:
	push	_147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	mov	byte [ebp-28],al
	jmp	_56
_56:
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
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],0
	push	ebp
	push	_180
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	push	_158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_162
	call	_brl_blitz_NullObjectError
_162:
	cmp	dword [ebx+8],0
	je	_163
	push	ebp
	push	_178
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_byo_sqlserver_TCursor
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	push	_165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_167
	call	_brl_blitz_NullObjectError
_167:
	call	_adoDuplicateConnection@0
	mov	dword [ebx+8],eax
	push	_169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_171
	call	_brl_blitz_NullObjectError
_171:
	push	dword [ebp-8]
	call	_bbStringToWString
	add	esp,4
	mov	ebx,eax
	push	ebx
	push	dword [esi+8]
	call	_adoQuery@8
	mov	esi,eax
	push	ebx
	call	_bbMemFree
	add	esp,4
	mov	dword [ebp-16],esi
	push	_174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	jne	_175
	push	ebp
	push	_177
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_60
_175:
	call	dword [_bbOnDebugLeaveScope]
_163:
	push	_179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_60
_60:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	push	_188
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
	call	_bbStringToWString
	add	esp,4
	mov	esi,eax
	push	esi
	push	dword [ebx+8]
	call	_adoUpdate@8
	mov	ebx,eax
	push	esi
	call	_bbMemFree
	add	esp,4
	jmp	_64
_64:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_execFile:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbEmptyString
	push	ebp
	push	_205
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_brl_stream_ReadStream
	add	esp,4
	mov	dword [ebp-12],eax
	push	_192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_2
	push	_194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	jne	_195
	push	ebp
	push	_197
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-20],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_68
_195:
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_3
_5:
	push	ebp
	push	_200
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_6
	push	dword [ebp-12]
	call	_brl_stream_ReadLine
	add	esp,4
	push	eax
	push	dword [ebp-16]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
_3:
	push	dword [ebp-12]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_5
_4:
	push	_201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_stream_CloseStream
	add	esp,4
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_204
	call	_brl_blitz_NullObjectError
_204:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-20],al
	jmp	_68
_68:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-20]
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
	push	_211
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_adoGetLastErrorCode@0
	mov	ebx,eax
	jmp	_71
_71:
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
	push	_219
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_adoGetLastErrorDescription@0
	push	eax
	call	_bbStringFromWString
	add	esp,4
	mov	dword [ebp-8],eax
	push	_214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_7
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_215
	push	ebp
	push	_217
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_8
	call	dword [_bbOnDebugLeaveScope]
_215:
	push	_218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_74
_74:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TSQLServer_debugError:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_224
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_223
	call	_brl_blitz_NullObjectError
_223:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,4
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
	mov	ebx,0
	jmp	_77
_77:
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
	push	_232
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_227
	call	_brl_blitz_NullObjectError
_227:
	push	dword [ebx+8]
	call	_adoDisconnect@4
	push	_228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_230
	call	_brl_blitz_NullObjectError
_230:
	mov	dword [ebx+8],0
	mov	ebx,0
	jmp	_80
_80:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_234
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_byo_sqlserver_TCursor
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	push	ebp
	push	_233
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_83
_83:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	jmp	_235
_235:
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_getString:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_239
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_238
	call	_brl_blitz_NullObjectError
_238:
	push	dword [ebp-8]
	push	dword [ebx+8]
	call	_adoGetString@8
	push	eax
	call	_bbStringFromWString
	add	esp,4
	mov	ebx,eax
	jmp	_90
_90:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_getInt:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_245
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_244
	call	_brl_blitz_NullObjectError
_244:
	push	dword [ebp-8]
	push	dword [ebx+8]
	call	_adoGetInt@8
	mov	ebx,eax
	jmp	_94
_94:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_getFloat:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_249
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_248
	call	_brl_blitz_NullObjectError
_248:
	push	dword [ebp-8]
	push	dword [ebx+8]
	call	_adoGetFloat@8
	fstp	dword [ebp-12]
	jmp	_98
_98:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-12]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_getDouble:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_253
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_252
	call	_brl_blitz_NullObjectError
_252:
	push	dword [ebp-8]
	push	dword [ebx+8]
	call	_adoGetDouble@8
	fstp	qword [ebp-16]
	jmp	_102
_102:
	call	dword [_bbOnDebugLeaveScope]
	fld	qword [ebp-16]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_firstRow:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_257
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_256
	call	_brl_blitz_NullObjectError
_256:
	push	dword [ebx+8]
	call	_adoFirstRow@4
	mov	ebx,eax
	jmp	_105
_105:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_previousRow:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_261
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_258
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_260
	call	_brl_blitz_NullObjectError
_260:
	push	dword [ebx+8]
	call	_adoPreviousRow@4
	mov	ebx,eax
	jmp	_108
_108:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_nextRow:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_265
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_262
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_264
	call	_brl_blitz_NullObjectError
_264:
	push	dword [ebx+8]
	call	_adoNextRow@4
	mov	ebx,eax
	jmp	_111
_111:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__byo_sqlserver_TCursor_lastRow:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_269
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_268
	call	_brl_blitz_NullObjectError
_268:
	push	dword [ebx+8]
	call	_adoLastRow@4
	mov	ebx,eax
	jmp	_114
_114:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_118:
	dd	0
_117:
	db	"sqlserver",0
	align	4
_116:
	dd	1
	dd	_117
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
_122:
	db	"Self",0
_123:
	db	":TSQLServer",0
	align	4
_121:
	dd	1
	dd	_13
	dd	2
	dd	_122
	dd	_123
	dd	-4
	dd	0
	align	4
_120:
	dd	3
	dd	0
	dd	0
_149:
	db	"server",0
_150:
	db	"$",0
_151:
	db	"database",0
_152:
	db	"user",0
_153:
	db	"password",0
_154:
	db	"result",0
_155:
	db	"b",0
	align	4
_148:
	dd	1
	dd	_16
	dd	2
	dd	_122
	dd	_123
	dd	-8
	dd	2
	dd	_149
	dd	_150
	dd	-12
	dd	2
	dd	_151
	dd	_150
	dd	-16
	dd	2
	dd	_152
	dd	_150
	dd	-20
	dd	2
	dd	_153
	dd	_150
	dd	-24
	dd	2
	dd	_154
	dd	_155
	dd	-4
	dd	0
_126:
	db	"$BMXPATH/mod/byo.mod/sqlserver.mod/sqlserver.bmx",0
	align	4
_125:
	dd	_126
	dd	43
	dd	3
	align	4
_128:
	dd	_126
	dd	46
	dd	3
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,113,108,111,108,101,100,98
	align	4
_138:
	dd	_126
	dd	49
	dd	3
	align	4
_143:
	dd	3
	dd	0
	dd	0
	align	4
_142:
	dd	_126
	dd	50
	dd	4
	align	4
_146:
	dd	3
	dd	0
	dd	0
	align	4
_145:
	dd	_126
	dd	52
	dd	4
	align	4
_147:
	dd	_126
	dd	55
	dd	3
_181:
	db	"cursor",0
_182:
	db	":TCursor",0
	align	4
_180:
	dd	1
	dd	_18
	dd	2
	dd	_122
	dd	_123
	dd	-4
	dd	2
	dd	_18
	dd	_150
	dd	-8
	dd	2
	dd	_181
	dd	_182
	dd	-12
	dd	2
	dd	_154
	dd	_12
	dd	-16
	dd	0
	align	4
_156:
	dd	_126
	dd	63
	dd	3
	align	4
_158:
	dd	_126
	dd	64
	dd	3
	align	4
_160:
	dd	_126
	dd	66
	dd	3
	align	4
_178:
	dd	3
	dd	0
	dd	0
	align	4
_164:
	dd	_126
	dd	67
	dd	4
	align	4
_165:
	dd	_126
	dd	68
	dd	4
	align	4
_169:
	dd	_126
	dd	70
	dd	4
	align	4
_174:
	dd	_126
	dd	72
	dd	4
	align	4
_177:
	dd	3
	dd	0
	dd	0
	align	4
_176:
	dd	_126
	dd	73
	dd	5
	align	4
_179:
	dd	_126
	dd	77
	dd	3
_189:
	db	"request",0
	align	4
_188:
	dd	1
	dd	_20
	dd	2
	dd	_122
	dd	_123
	dd	-4
	dd	2
	dd	_189
	dd	_150
	dd	-8
	dd	0
	align	4
_183:
	dd	_126
	dd	85
	dd	3
_206:
	db	"_file",0
_207:
	db	"file",0
_208:
	db	":brl.stream.TStream",0
_209:
	db	"str",0
	align	4
_205:
	dd	1
	dd	_22
	dd	2
	dd	_122
	dd	_123
	dd	-4
	dd	2
	dd	_206
	dd	_150
	dd	-8
	dd	2
	dd	_207
	dd	_208
	dd	-12
	dd	2
	dd	_209
	dd	_150
	dd	-16
	dd	0
	align	4
_190:
	dd	_126
	dd	93
	dd	3
	align	4
_192:
	dd	_126
	dd	94
	dd	3
	align	4
_2:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_194:
	dd	_126
	dd	96
	dd	3
	align	4
_197:
	dd	3
	dd	0
	dd	0
	align	4
_196:
	dd	_126
	dd	97
	dd	4
	align	4
_198:
	dd	_126
	dd	100
	dd	3
	align	4
_200:
	dd	3
	dd	0
	dd	0
	align	4
_199:
	dd	_126
	dd	101
	dd	4
	align	4
_6:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_201:
	dd	_126
	dd	103
	dd	3
	align	4
_202:
	dd	_126
	dd	105
	dd	3
	align	4
_211:
	dd	1
	dd	_24
	dd	2
	dd	_122
	dd	_123
	dd	-4
	dd	0
	align	4
_210:
	dd	_126
	dd	113
	dd	3
_220:
	db	"error",0
	align	4
_219:
	dd	1
	dd	_25
	dd	2
	dd	_122
	dd	_123
	dd	-4
	dd	2
	dd	_220
	dd	_150
	dd	-8
	dd	0
	align	4
_212:
	dd	_126
	dd	121
	dd	3
	align	4
_214:
	dd	_126
	dd	123
	dd	3
	align	4
_7:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	79,107,97,121,46
	align	4
_217:
	dd	3
	dd	0
	dd	0
	align	4
_216:
	dd	_126
	dd	124
	dd	4
	align	4
_8:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	78,111,32,101,114,114,111,114,115,46
	align	4
_218:
	dd	_126
	dd	127
	dd	3
	align	4
_224:
	dd	1
	dd	_27
	dd	2
	dd	_122
	dd	_123
	dd	-4
	dd	0
	align	4
_221:
	dd	_126
	dd	135
	dd	3
	align	4
_232:
	dd	1
	dd	_28
	dd	2
	dd	_122
	dd	_123
	dd	-4
	dd	0
	align	4
_225:
	dd	_126
	dd	143
	dd	3
	align	4
_228:
	dd	_126
	dd	144
	dd	3
	align	4
_234:
	dd	1
	dd	_13
	dd	2
	dd	_122
	dd	_182
	dd	-4
	dd	0
	align	4
_233:
	dd	3
	dd	0
	dd	0
_240:
	db	"column",0
_241:
	db	"i",0
	align	4
_239:
	dd	1
	dd	_31
	dd	2
	dd	_122
	dd	_182
	dd	-4
	dd	2
	dd	_240
	dd	_241
	dd	-8
	dd	0
	align	4
_236:
	dd	_126
	dd	157
	dd	3
	align	4
_245:
	dd	1
	dd	_33
	dd	2
	dd	_122
	dd	_182
	dd	-4
	dd	2
	dd	_240
	dd	_241
	dd	-8
	dd	0
	align	4
_242:
	dd	_126
	dd	165
	dd	3
	align	4
_249:
	dd	1
	dd	_35
	dd	2
	dd	_122
	dd	_182
	dd	-4
	dd	2
	dd	_240
	dd	_241
	dd	-8
	dd	0
	align	4
_246:
	dd	_126
	dd	173
	dd	3
	align	4
_253:
	dd	1
	dd	_37
	dd	2
	dd	_122
	dd	_182
	dd	-4
	dd	2
	dd	_240
	dd	_241
	dd	-8
	dd	0
	align	4
_250:
	dd	_126
	dd	181
	dd	3
	align	4
_257:
	dd	1
	dd	_39
	dd	2
	dd	_122
	dd	_182
	dd	-4
	dd	0
	align	4
_254:
	dd	_126
	dd	189
	dd	3
	align	4
_261:
	dd	1
	dd	_40
	dd	2
	dd	_122
	dd	_182
	dd	-4
	dd	0
	align	4
_258:
	dd	_126
	dd	197
	dd	3
	align	4
_265:
	dd	1
	dd	_41
	dd	2
	dd	_122
	dd	_182
	dd	-4
	dd	0
	align	4
_262:
	dd	_126
	dd	205
	dd	3
	align	4
_269:
	dd	1
	dd	_42
	dd	2
	dd	_122
	dd	_182
	dd	-4
	dd	0
	align	4
_266:
	dd	_126
	dd	213
	dd	3
