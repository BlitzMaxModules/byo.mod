	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_data_data
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_freejoy_freejoy
	extrn	___bb_freeprocess_freeprocess
	extrn	___bb_freetypefont_freetypefont
	extrn	___bb_glew_glew
	extrn	___bb_gnet_gnet
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_macos_macos
	extrn	___bb_map_map
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pcxloader_pcxloader
	extrn	___bb_pngloader_pngloader
	extrn	___bb_reflection_reflection
	extrn	___bb_sqlserver_sqlserver
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_threads_threads
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	___bb_zipengine_zipengine
	extrn	_bbNullObject
	extrn	_bbObjectNew
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_standardio_Print
	extrn	_brl_system_Notify
	extrn	_byo_sqlserver_TSQLServer
	public	__bb_main
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	cmp	dword [_91],0
	je	_92
	mov	eax,0
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_92:
	mov	dword [_91],1
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	push	ebp
	push	_83
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_sqlserver_sqlserver
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_data_data
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_map_map
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_reflection_reflection
	call	___bb_tgaloader_tgaloader
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	call	___bb_pcxloader_pcxloader
	call	___bb_threads_threads
	call	___bb_zipengine_zipengine
	push	_36
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_byo_sqlserver_TSQLServer
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_39
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	push	_43
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_45
	call	_brl_blitz_NullObjectError
_45:
	push	_21
	push	_20
	push	_19
	push	_18
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	cmp	eax,0
	je	_46
	push	_47
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_49
	call	_brl_blitz_NullObjectError
_49:
	push	_22
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_50
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_52
	call	_brl_blitz_NullObjectError
_52:
	push	_23
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_53
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_55
	call	_brl_blitz_NullObjectError
_55:
	push	_24
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_56
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_58
	call	_brl_blitz_NullObjectError
_58:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_25
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	push	_59
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_61
	call	_brl_blitz_NullObjectError
_61:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,4
	push	eax
	push	_26
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	push	_62
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_27
_29:
	push	_65
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_67
	call	_brl_blitz_NullObjectError
_67:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_69
	call	_brl_blitz_NullObjectError
_69:
	push	6
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,8
	push	eax
	push	_31
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	eax
	push	_30
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_70
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_72
	call	_brl_blitz_NullObjectError
_72:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_74
	call	_brl_blitz_NullObjectError
_74:
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,8
	push	eax
	push	_31
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	eax
	push	_32
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_75
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_77
	call	_brl_blitz_NullObjectError
_77:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_79
	call	_brl_blitz_NullObjectError
_79:
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,8
	push	eax
	push	_31
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	eax
	push	_33
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
_27:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_64
	call	_brl_blitz_NullObjectError
_64:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,4
	cmp	eax,0
	jne	_29
_28:
	push	_80
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_82
	call	_brl_blitz_NullObjectError
_82:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,4
_46:
	mov	ebx,0
	jmp	_34
_34:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_91:
	dd	0
_84:
	db	"sqlserver_connection",0
_85:
	db	"con1",0
_86:
	db	":byo.sqlserver.TSQLServer",0
_87:
	db	"rs1",0
_88:
	db	":byo.sqlserver.TCursor",0
_89:
	db	"rs2",0
_90:
	db	"rs3",0
	align	4
_83:
	dd	1
	dd	_84
	dd	2
	dd	_85
	dd	_86
	dd	-4
	dd	2
	dd	_87
	dd	_88
	dd	-8
	dd	2
	dd	_89
	dd	_88
	dd	-12
	dd	2
	dd	_90
	dd	_88
	dd	-16
	dd	0
_37:
	db	"$BMXPATH/mod/byo.mod/sqlserver.mod/samples/sqlserver_connection.bmx",0
	align	4
_36:
	dd	_37
	dd	3
	dd	1
	align	4
_39:
	dd	_37
	dd	4
	dd	1
	align	4
_43:
	dd	_37
	dd	6
	dd	1
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,51
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	115,97
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,97,115,116,101,114
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	66,89,79,92,83,81,76,69,88,80,82,69,83,83
	align	4
_47:
	dd	_37
	dd	7
	dd	2
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	26
	dw	83,69,76,69,67,84,32,42,32,70,82,79,77,32,83,89
	dw	83,68,65,84,65,66,65,83,69,83
	align	4
_50:
	dd	_37
	dd	8
	dd	2
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	83,69,76,69,67,84,32,42,32,70,82,79,77,32,83,89
	dw	83,79,66,74,69,67,84,83
	align	4
_53:
	dd	_37
	dd	9
	dd	2
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	83,69,76,69,67,84,32,42,32,70,82,79,77,32,83,89
	dw	83,76,79,71,73,78,83
	align	4
_56:
	dd	_37
	dd	11
	dd	2
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	69,114,114,111,114,67,111,100,101,58,32
	align	4
_59:
	dd	_37
	dd	12
	dd	2
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	69,114,114,111,114,58,32
	align	4
_62:
	dd	_37
	dd	14
	dd	2
	align	4
_65:
	dd	_37
	dd	15
	dd	3
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,45,32
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	49,41,32
	align	4
_70:
	dd	_37
	dd	16
	dd	3
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	50,41,32
	align	4
_75:
	dd	_37
	dd	17
	dd	3
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	51,41,32
	align	4
_80:
	dd	_37
	dd	20
	dd	2
