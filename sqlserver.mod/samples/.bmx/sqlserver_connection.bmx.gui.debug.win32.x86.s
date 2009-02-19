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
	extrn	_bbStringFromDouble
	extrn	_bbStringFromFloat
	extrn	_bbStringFromInt
	extrn	_brl_blitz_DebugLog
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_system_Notify
	extrn	_byo_sqlserver_TSQLServer
	public	__bb_main
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	cmp	dword [_84],0
	je	_85
	mov	eax,0
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_85:
	mov	dword [_84],1
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],0
	fldz
	fstp	dword [ebp-12]
	fldz
	fstp	qword [ebp-20]
	push	ebp
	push	_74
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
	push	_31
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_byo_sqlserver_TSQLServer
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_34
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	fldz
	fstp	dword [ebp-12]
	fldz
	fstp	qword [ebp-20]
	push	_38
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_40
	call	_brl_blitz_NullObjectError
_40:
	push	_21
	push	_20
	push	_19
	push	_18
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	cmp	eax,0
	je	_41
	push	_42
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_44
	call	_brl_blitz_NullObjectError
_44:
	push	_22
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	push	_45
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_47
	call	_brl_blitz_NullObjectError
_47:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+92]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	push	_48
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_50
	call	_brl_blitz_NullObjectError
_50:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,4
	push	eax
	push	_24
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	push	_51
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_25
_27:
	push	_54
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_56
	call	_brl_blitz_NullObjectError
_56:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_58
	call	_brl_blitz_NullObjectError
_58:
	push	6
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	_28
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
	push	_59
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_61
	call	_brl_blitz_NullObjectError
_61:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_62
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_64
	call	_brl_blitz_NullObjectError
_64:
	push	2
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	fstp	dword [ebp-12]
	push	_65
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_67
	call	_brl_blitz_NullObjectError
_67:
	push	4
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,8
	fstp	qword [ebp-20]
	push	_68
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
	push	_69
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
	push	_70
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-20]
	sub	esp,8
	fstp	qword [esp]
	call	_bbStringFromDouble
	add	esp,8
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
_25:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_53
	call	_brl_blitz_NullObjectError
_53:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,4
	cmp	eax,0
	jne	_27
_26:
_41:
	push	_71
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_73
	call	_brl_blitz_NullObjectError
_73:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,4
	mov	ebx,0
	jmp	_29
_29:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_84:
	dd	0
_75:
	db	"sqlserver_connection",0
_76:
	db	"con1",0
_77:
	db	":byo.sqlserver.TSQLServer",0
_78:
	db	"nInt",0
_79:
	db	"i",0
_80:
	db	"nFloat",0
_81:
	db	"f",0
_82:
	db	"nDouble",0
_83:
	db	"d",0
	align	4
_74:
	dd	1
	dd	_75
	dd	2
	dd	_76
	dd	_77
	dd	-4
	dd	2
	dd	_78
	dd	_79
	dd	-8
	dd	2
	dd	_80
	dd	_81
	dd	-12
	dd	2
	dd	_82
	dd	_83
	dd	-20
	dd	0
_32:
	db	"$BMXPATH/mod/byo.mod/sqlserver.mod/samples/sqlserver_connection.bmx",0
	align	4
_31:
	dd	_32
	dd	3
	dd	1
	align	4
_34:
	dd	_32
	dd	5
	dd	1
	align	4
_38:
	dd	_32
	dd	7
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
_42:
	dd	_32
	dd	8
	dd	2
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	26
	dw	83,69,76,69,67,84,32,42,32,70,82,79,77,32,83,89
	dw	83,68,65,84,65,66,65,83,69,83
	align	4
_45:
	dd	_32
	dd	10
	dd	2
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	69,114,114,111,114,67,111,100,101,58,32
	align	4
_48:
	dd	_32
	dd	11
	dd	2
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	69,114,114,111,114,58,32
	align	4
_51:
	dd	_32
	dd	13
	dd	2
	align	4
_54:
	dd	_32
	dd	14
	dd	3
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,45,32
	align	4
_59:
	dd	_32
	dd	15
	dd	3
	align	4
_62:
	dd	_32
	dd	16
	dd	3
	align	4
_65:
	dd	_32
	dd	17
	dd	3
	align	4
_68:
	dd	_32
	dd	18
	dd	3
	align	4
_69:
	dd	_32
	dd	19
	dd	3
	align	4
_70:
	dd	_32
	dd	20
	dd	3
	align	4
_71:
	dd	_32
	dd	25
	dd	1
