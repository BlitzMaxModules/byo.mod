	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_com_com
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_drivers_drivers
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_freejoy_freejoy
	extrn	___bb_freeprocess_freeprocess
	extrn	___bb_freetypefont_freetypefont
	extrn	___bb_glew_glew
	extrn	___bb_gnet_gnet
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_macos_macos
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_reflection_reflection
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_threads_threads
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	___bb_zipengine_zipengine
	extrn	_bbEmptyString
	extrn	_bbEnd
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbObjectDowncast
	extrn	_bbObjectNew
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_brl_blitz_DebugLog
	extrn	_brl_eventqueue_EventData
	extrn	_brl_eventqueue_EventID
	extrn	_brl_eventqueue_EventSource
	extrn	_brl_eventqueue_WaitEvent
	extrn	_brl_linkedlist_TList
	extrn	_byo_com_TComObject
	extrn	_maxgui_maxgui_ActivateGadget
	extrn	_maxgui_maxgui_CreateButton
	extrn	_maxgui_maxgui_CreatePanel
	extrn	_maxgui_maxgui_CreateTextField
	extrn	_maxgui_maxgui_CreateWindow
	extrn	_maxgui_maxgui_DisableGadget
	extrn	_maxgui_maxgui_EnableGadget
	extrn	_maxgui_maxgui_FreeGadget
	extrn	_maxgui_maxgui_HideGadget
	extrn	_maxgui_maxgui_RedrawGadget
	extrn	_maxgui_maxgui_SetButtonState
	extrn	_maxgui_maxgui_SetGadgetText
	extrn	_maxgui_maxgui_ShowGadget
	extrn	_maxgui_maxgui_TGadget
	extrn	_maxgui_maxgui_TextFieldText
	public	__bb_main
	public	_bb_GadgetCommander
	public	_bb_GadgetList
	public	_bb_Group1
	public	_bb_Group2
	public	_bb_btnObject1
	public	_bb_btnObject1_GA
	public	_bb_btnObject2
	public	_bb_btnObject2_GA
	public	_bb_chkTheater1
	public	_bb_chkTheater1_GA
	public	_bb_chkTheater2
	public	_bb_chkTheater2_GA
	public	_bb_ie1
	public	_bb_ie2
	public	_bb_txtObject1
	public	_bb_txtObject1_GA
	public	_bb_txtObject2
	public	_bb_txtObject2_GA
	public	_bb_winMain
	public	_bb_winMain_WC
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_186],0
	je	_187
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_187:
	mov	dword [_186],1
	call	___bb_blitz_blitz
	call	___bb_com_com
	call	___bb_drivers_drivers
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_basic_basic
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_reflection_reflection
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	call	___bb_threads_threads
	call	___bb_zipengine_zipengine
	mov	eax,dword [_96]
	and	eax,1
	cmp	eax,0
	jne	_97
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_GadgetList],eax
	or	dword [_96],1
_97:
	mov	eax,dword [_96]
	and	eax,2
	cmp	eax,0
	jne	_99
	push	553
	push	_bbNullObject
	push	262
	push	350
	push	111
	push	292
	push	_20
	call	_maxgui_maxgui_CreateWindow
	add	esp,28
	inc	dword [eax+4]
	mov	dword [_bb_winMain],eax
	or	dword [_96],2
_99:
	mov	eax,dword [_bb_GadgetList]
	push	dword [_bb_winMain]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,_21
	inc	dword [ebx+4]
	mov	eax,dword [_bb_winMain]
	mov	eax,dword [eax+104]
	dec	dword [eax+4]
	jnz	_104
	push	eax
	call	_bbGCFree
	add	esp,4
_104:
	mov	eax,dword [_bb_winMain]
	mov	dword [eax+104],ebx
	mov	eax,dword [_96]
	and	eax,4
	cmp	eax,0
	jne	_106
	push	_22
	push	8
	push	dword [_bb_winMain]
	push	111
	push	333
	push	139
	push	9
	call	_maxgui_maxgui_CreatePanel
	add	esp,28
	inc	dword [eax+4]
	mov	dword [_bb_Group2],eax
	or	dword [_96],4
_106:
	mov	eax,dword [_bb_GadgetList]
	push	dword [_bb_Group2]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,_23
	inc	dword [ebx+4]
	mov	eax,dword [_bb_Group2]
	mov	eax,dword [eax+104]
	dec	dword [eax+4]
	jnz	_111
	push	eax
	call	_bbGCFree
	add	esp,4
_111:
	mov	eax,dword [_bb_Group2]
	mov	dword [eax+104],ebx
	mov	eax,dword [_96]
	and	eax,8
	cmp	eax,0
	jne	_113
	push	0
	push	dword [_bb_Group2]
	push	23
	push	219
	push	18
	push	96
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_txtObject2],eax
	or	dword [_96],8
_113:
	push	_1
	push	dword [_bb_txtObject2]
	call	_maxgui_maxgui_SetGadgetText
	add	esp,8
	mov	eax,dword [_bb_GadgetList]
	push	dword [_bb_txtObject2]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,_24
	inc	dword [ebx+4]
	mov	eax,dword [_bb_txtObject2]
	mov	eax,dword [eax+104]
	dec	dword [eax+4]
	jnz	_118
	push	eax
	call	_bbGCFree
	add	esp,4
_118:
	mov	eax,dword [_bb_txtObject2]
	mov	dword [eax+104],ebx
	mov	eax,dword [_96]
	and	eax,16
	cmp	eax,0
	jne	_120
	push	2
	push	dword [_bb_Group2]
	push	23
	push	118
	push	57
	push	11
	push	_25
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	inc	dword [eax+4]
	mov	dword [_bb_chkTheater2],eax
	or	dword [_96],16
_120:
	mov	eax,dword [_bb_GadgetList]
	push	dword [_bb_chkTheater2]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,_26
	inc	dword [ebx+4]
	mov	eax,dword [_bb_chkTheater2]
	mov	eax,dword [eax+104]
	dec	dword [eax+4]
	jnz	_125
	push	eax
	call	_bbGCFree
	add	esp,4
_125:
	mov	eax,dword [_bb_chkTheater2]
	mov	dword [eax+104],ebx
	push	0
	push	dword [_bb_chkTheater2]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	mov	eax,dword [_96]
	and	eax,32
	cmp	eax,0
	jne	_127
	push	8
	push	dword [_bb_Group2]
	push	23
	push	78
	push	18
	push	11
	push	_27
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	inc	dword [eax+4]
	mov	dword [_bb_btnObject2],eax
	or	dword [_96],32
_127:
	mov	eax,dword [_bb_GadgetList]
	push	dword [_bb_btnObject2]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,_28
	inc	dword [ebx+4]
	mov	eax,dword [_bb_btnObject2]
	mov	eax,dword [eax+104]
	dec	dword [eax+4]
	jnz	_132
	push	eax
	call	_bbGCFree
	add	esp,4
_132:
	mov	eax,dword [_bb_btnObject2]
	mov	dword [eax+104],ebx
	mov	eax,dword [_96]
	and	eax,64
	cmp	eax,0
	jne	_134
	push	_29
	push	8
	push	dword [_bb_winMain]
	push	111
	push	333
	push	7
	push	9
	call	_maxgui_maxgui_CreatePanel
	add	esp,28
	inc	dword [eax+4]
	mov	dword [_bb_Group1],eax
	or	dword [_96],64
_134:
	mov	eax,dword [_bb_GadgetList]
	push	dword [_bb_Group1]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,_30
	inc	dword [ebx+4]
	mov	eax,dword [_bb_Group1]
	mov	eax,dword [eax+104]
	dec	dword [eax+4]
	jnz	_139
	push	eax
	call	_bbGCFree
	add	esp,4
_139:
	mov	eax,dword [_bb_Group1]
	mov	dword [eax+104],ebx
	mov	eax,dword [_96]
	and	eax,128
	cmp	eax,0
	jne	_141
	push	0
	push	dword [_bb_Group1]
	push	23
	push	219
	push	18
	push	97
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_txtObject1],eax
	or	dword [_96],128
_141:
	push	_1
	push	dword [_bb_txtObject1]
	call	_maxgui_maxgui_SetGadgetText
	add	esp,8
	mov	eax,dword [_bb_GadgetList]
	push	dword [_bb_txtObject1]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,_31
	inc	dword [ebx+4]
	mov	eax,dword [_bb_txtObject1]
	mov	eax,dword [eax+104]
	dec	dword [eax+4]
	jnz	_146
	push	eax
	call	_bbGCFree
	add	esp,4
_146:
	mov	eax,dword [_bb_txtObject1]
	mov	dword [eax+104],ebx
	mov	eax,dword [_96]
	and	eax,256
	cmp	eax,0
	jne	_148
	push	2
	push	dword [_bb_Group1]
	push	23
	push	118
	push	57
	push	11
	push	_25
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	inc	dword [eax+4]
	mov	dword [_bb_chkTheater1],eax
	or	dword [_96],256
_148:
	mov	eax,dword [_bb_GadgetList]
	push	dword [_bb_chkTheater1]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,_32
	inc	dword [ebx+4]
	mov	eax,dword [_bb_chkTheater1]
	mov	eax,dword [eax+104]
	dec	dword [eax+4]
	jnz	_153
	push	eax
	call	_bbGCFree
	add	esp,4
_153:
	mov	eax,dword [_bb_chkTheater1]
	mov	dword [eax+104],ebx
	push	0
	push	dword [_bb_chkTheater1]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	mov	eax,dword [_96]
	and	eax,512
	cmp	eax,0
	jne	_155
	push	8
	push	dword [_bb_Group1]
	push	23
	push	78
	push	18
	push	11
	push	_33
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	inc	dword [eax+4]
	mov	dword [_bb_btnObject1],eax
	or	dword [_96],512
_155:
	mov	eax,dword [_bb_GadgetList]
	push	dword [_bb_btnObject1]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,_34
	inc	dword [ebx+4]
	mov	eax,dword [_bb_btnObject1]
	mov	eax,dword [eax+104]
	dec	dword [eax+4]
	jnz	_160
	push	eax
	call	_bbGCFree
	add	esp,4
_160:
	mov	eax,dword [_bb_btnObject1]
	mov	dword [eax+104],ebx
	mov	eax,dword [_96]
	and	eax,1024
	cmp	eax,0
	jne	_162
	push	_byo_com_TComObject
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_ie1],eax
	or	dword [_96],1024
_162:
	mov	eax,dword [_bb_ie1]
	push	_20
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,8
	mov	eax,dword [_96]
	and	eax,2048
	cmp	eax,0
	jne	_165
	push	_byo_com_TComObject
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_ie2],eax
	or	dword [_96],2048
_165:
	mov	eax,dword [_bb_ie2]
	push	_20
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,8
_37:
_35:
	call	_brl_eventqueue_WaitEvent
	call	_brl_eventqueue_EventID
	cmp	eax,16387
	je	_169
	cmp	eax,8193
	je	_170
	jmp	_168
_169:
	call	_brl_eventqueue_EventSource
	cmp	eax,dword [_bb_winMain]
	je	_173
	jmp	_172
_173:
	push	dword [_bb_GadgetList]
	push	dword [_bb_winMain]
	call	_bb_winMain_WC
	add	esp,8
	jmp	_172
_172:
	jmp	_168
_170:
	call	_brl_eventqueue_EventSource
	cmp	eax,dword [_bb_txtObject2]
	je	_176
	cmp	eax,dword [_bb_txtObject1]
	je	_177
	cmp	eax,dword [_bb_chkTheater1]
	je	_178
	cmp	eax,dword [_bb_chkTheater2]
	je	_179
	cmp	eax,dword [_bb_btnObject1]
	je	_180
	cmp	eax,dword [_bb_btnObject2]
	je	_181
	jmp	_175
_176:
	push	dword [_bb_GadgetList]
	push	dword [_bb_txtObject2]
	call	_bb_txtObject2_GA
	add	esp,8
	jmp	_175
_177:
	push	dword [_bb_GadgetList]
	push	dword [_bb_txtObject1]
	call	_bb_txtObject1_GA
	add	esp,8
	jmp	_175
_178:
	push	dword [_bb_GadgetList]
	call	_brl_eventqueue_EventData
	push	eax
	push	dword [_bb_chkTheater1]
	call	_bb_chkTheater1_GA
	add	esp,12
	jmp	_175
_179:
	push	dword [_bb_GadgetList]
	call	_brl_eventqueue_EventData
	push	eax
	push	dword [_bb_chkTheater2]
	call	_bb_chkTheater2_GA
	add	esp,12
	jmp	_175
_180:
	push	dword [_bb_GadgetList]
	push	dword [_bb_btnObject1]
	call	_bb_btnObject1_GA
	add	esp,8
	jmp	_175
_181:
	push	dword [_bb_GadgetList]
	push	dword [_bb_btnObject2]
	call	_bb_btnObject2_GA
	add	esp,8
	jmp	_175
_175:
	jmp	_168
_168:
	jmp	_37
_bb_winMain_WC:
	push	ebp
	mov	ebp,esp
	push	_38
	call	_brl_blitz_DebugLog
	add	esp,4
	call	_bbEnd
	mov	eax,0
	jmp	_61
_61:
	mov	esp,ebp
	pop	ebp
	ret
_bb_txtObject2_GA:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	_39
	call	_brl_blitz_DebugLog
	add	esp,4
	push	ebx
	call	_maxgui_maxgui_TextFieldText
	add	esp,4
	push	eax
	push	_40
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
	mov	eax,0
	jmp	_65
_65:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_txtObject1_GA:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	_41
	call	_brl_blitz_DebugLog
	add	esp,4
	push	ebx
	call	_maxgui_maxgui_TextFieldText
	add	esp,4
	push	eax
	push	_40
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
	mov	eax,0
	jmp	_69
_69:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_chkTheater1_GA:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+12]
	push	ebx
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_42
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
	cmp	ebx,0
	je	_190
	cmp	ebx,1
	je	_191
	jmp	_189
_190:
	mov	eax,dword [_bb_ie1]
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	jmp	_189
_191:
	mov	eax,dword [_bb_ie1]
	push	_44
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	jmp	_189
_189:
	mov	eax,0
	jmp	_74
_74:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_chkTheater2_GA:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+12]
	push	ebx
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_45
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
	cmp	ebx,0
	je	_196
	cmp	ebx,1
	je	_197
	jmp	_195
_196:
	mov	eax,dword [_bb_ie2]
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	jmp	_195
_197:
	mov	eax,dword [_bb_ie2]
	push	_44
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	jmp	_195
_195:
	mov	eax,0
	jmp	_79
_79:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_btnObject1_GA:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	_46
	call	_brl_blitz_DebugLog
	add	esp,4
	mov	eax,dword [_bb_ie1]
	push	_47
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	mov	ebx,dword [_bb_ie1]
	mov	eax,dword [_bb_txtObject1]
	push	_49
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+220]
	add	esp,4
	push	eax
	push	_48
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	eax,0
	jmp	_83
_83:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_btnObject2_GA:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	_50
	call	_brl_blitz_DebugLog
	add	esp,4
	mov	eax,dword [_bb_ie2]
	push	_47
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	mov	ebx,dword [_bb_ie2]
	mov	eax,dword [_bb_txtObject2]
	push	_49
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+220]
	add	esp,4
	push	eax
	push	_48
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	eax,0
	jmp	_87
_87:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_GadgetCommander:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+12]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp-12]
	add	eax,24
	mov	dword [ebp-8],eax
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-12]
	add	edx,dword [eax+16]
	mov	dword [ebp-16],edx
	jmp	_51
_53:
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	mov	dword [ebp-4],eax
	add	dword [ebp-8],4
	cmp	dword [ebp-4],_bbNullObject
	je	_51
	mov	eax,dword [ebp+16]
	mov	esi,dword [eax]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_54
_56:
	mov	eax,ebx
	push	_maxgui_maxgui_TGadget
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	edi,eax
	cmp	edi,_bbNullObject
	je	_54
	push	_bbStringClass
	push	dword [edi+104]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_218
	mov	eax,_bbEmptyString
_218:
	push	dword [ebp-4]
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_219
	mov	eax,dword [ebp+8]
	cmp	eax,1
	je	_222
	cmp	eax,2
	je	_223
	cmp	eax,3
	je	_224
	cmp	eax,4
	je	_225
	cmp	eax,5
	je	_226
	cmp	eax,6
	je	_227
	cmp	eax,7
	je	_228
	cmp	eax,8
	je	_229
	cmp	eax,9
	je	_230
	cmp	eax,10
	je	_231
	cmp	eax,11
	je	_232
	cmp	eax,12
	je	_233
	jmp	_221
_222:
	push	edi
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	jmp	_221
_223:
	push	edi
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	jmp	_221
_224:
	push	edi
	call	_maxgui_maxgui_HideGadget
	add	esp,4
	jmp	_221
_225:
	push	edi
	call	_maxgui_maxgui_ShowGadget
	add	esp,4
	jmp	_221
_226:
	push	1
	push	edi
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	jmp	_221
_227:
	push	0
	push	edi
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	jmp	_221
_228:
	push	edi
	call	_maxgui_maxgui_FreeGadget
	add	esp,4
	jmp	_221
_229:
	push	dword [ebp+20]
	push	edi
	call	_maxgui_maxgui_SetGadgetText
	add	esp,8
	jmp	_221
_230:
	push	edi
	call	_maxgui_maxgui_ActivateGadget
	add	esp,4
	jmp	_221
_231:
	push	edi
	call	_maxgui_maxgui_RedrawGadget
	add	esp,4
	jmp	_221
_232:
	mov	eax,dword [ebp+16]
	mov	eax,dword [eax]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	jmp	_221
_233:
	mov	eax,edi
	jmp	_93
_221:
	jmp	_55
_219:
_54:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_56
_55:
_51:
	mov	eax,dword [ebp-16]
	cmp	dword [ebp-8],eax
	jne	_53
_52:
	mov	eax,_bbNullObject
	jmp	_93
_93:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_186:
	dd	0
	align	4
_96:
	dd	0
	align	4
_bb_GadgetList:
	dd	_bbNullObject
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	73,110,116,101,114,110,101,116,69,120,112,108,111,114,101,114
	dw	46,65,112,112,108,105,99,97,116,105,111,110
	align	4
_bb_winMain:
	dd	_bbNullObject
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	119,105,110,77,97,105,110
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	73,110,116,101,114,110,101,116,32,69,120,112,108,111,114,101
	dw	114,32,50
	align	4
_bb_Group2:
	dd	_bbNullObject
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	71,114,111,117,112,50
	align	4
_bb_txtObject2:
	dd	_bbNullObject
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	116,120,116,79,98,106,101,99,116,50
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	83,101,116,32,116,104,101,97,116,101,114,32,109,111,100,101
	align	4
_bb_chkTheater2:
	dd	_bbNullObject
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	99,104,107,84,104,101,97,116,101,114,50
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	79,98,106,101,99,116,50
	align	4
_bb_btnObject2:
	dd	_bbNullObject
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	98,116,110,79,98,106,101,99,116,50
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	73,110,116,101,114,110,101,116,32,69,120,112,108,111,114,101
	dw	114,32,49
	align	4
_bb_Group1:
	dd	_bbNullObject
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	71,114,111,117,112,49
	align	4
_bb_txtObject1:
	dd	_bbNullObject
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	116,120,116,79,98,106,101,99,116,49
	align	4
_bb_chkTheater1:
	dd	_bbNullObject
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	99,104,107,84,104,101,97,116,101,114,49
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	79,98,106,101,99,116,49
	align	4
_bb_btnObject1:
	dd	_bbNullObject
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	98,116,110,79,98,106,101,99,116,49
	align	4
_bb_ie1:
	dd	_bbNullObject
	align	4
_bb_ie2:
	dd	_bbNullObject
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	87,105,110,100,111,119,32,119,105,110,77,97,105,110,32,119
	dw	97,110,116,115,32,116,111,32,98,101,32,99,108,111,115,101
	dw	100
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	84,101,120,116,70,105,101,108,100,32,116,120,116,79,98,106
	dw	101,99,116,50,32,119,97,115,32,109,111,100,105,102,105,101
	dw	100
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	84,101,120,116,32,61,32
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	84,101,120,116,70,105,101,108,100,32,116,120,116,79,98,106
	dw	101,99,116,49,32,119,97,115,32,109,111,100,105,102,105,101
	dw	100
	align	4
_42:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	67,104,101,99,107,98,111,120,32,66,117,116,116,111,110,32
	dw	99,104,107,84,104,101,97,116,101,114,49,32,99,104,97,110
	dw	103,101,100,32,116,111,32
	align	4
_43:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	84,104,101,97,116,101,114,77,111,100,101,32,61,32,35,70
	dw	97,108,115,101
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	84,104,101,97,116,101,114,77,111,100,101,32,61,32,35,84
	dw	114,117,101
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	67,104,101,99,107,98,111,120,32,66,117,116,116,111,110,32
	dw	99,104,107,84,104,101,97,116,101,114,50,32,99,104,97,110
	dw	103,101,100,32,116,111,32
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	66,117,116,116,111,110,32,98,116,110,79,98,106,101,99,116
	dw	49,32,119,97,115,32,112,114,101,115,115,101,100
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	86,105,115,105,98,108,101,32,61,32,35,84,114,117,101
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	39,41
	align	4
_48:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	78,97,118,105,103,97,116,101,40,39
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	66,117,116,116,111,110,32,98,116,110,79,98,106,101,99,116
	dw	50,32,119,97,115,32,112,114,101,115,115,101,100
