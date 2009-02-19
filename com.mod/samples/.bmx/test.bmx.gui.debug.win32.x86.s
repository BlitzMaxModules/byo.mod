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
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_brl_blitz_DebugLog
	extrn	_brl_blitz_NullObjectError
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
	push	esi
	cmp	dword [_322],0
	je	_323
	mov	eax,0
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_323:
	mov	dword [_322],1
	push	ebp
	push	_280
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
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
	push	_95
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_98]
	and	eax,1
	cmp	eax,0
	jne	_99
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_GadgetList],eax
	or	dword [_98],1
_99:
	push	_100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_98]
	and	eax,2
	cmp	eax,0
	jne	_102
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
	or	dword [_98],2
_102:
	push	_103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_GadgetList]
	cmp	ebx,_bbNullObject
	jne	_105
	call	_brl_blitz_NullObjectError
_105:
	push	dword [_bb_winMain]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_winMain]
	cmp	esi,_bbNullObject
	jne	_108
	call	_brl_blitz_NullObjectError
_108:
	mov	ebx,_21
	inc	dword [ebx+4]
	mov	eax,dword [esi+104]
	dec	dword [eax+4]
	jnz	_113
	push	eax
	call	_bbGCFree
	add	esp,4
_113:
	mov	dword [esi+104],ebx
	push	_114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_98]
	and	eax,4
	cmp	eax,0
	jne	_116
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
	or	dword [_98],4
_116:
	push	_117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_GadgetList]
	cmp	ebx,_bbNullObject
	jne	_119
	call	_brl_blitz_NullObjectError
_119:
	push	dword [_bb_Group2]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_Group2]
	cmp	esi,_bbNullObject
	jne	_122
	call	_brl_blitz_NullObjectError
_122:
	mov	ebx,_23
	inc	dword [ebx+4]
	mov	eax,dword [esi+104]
	dec	dword [eax+4]
	jnz	_127
	push	eax
	call	_bbGCFree
	add	esp,4
_127:
	mov	dword [esi+104],ebx
	push	_128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_98]
	and	eax,8
	cmp	eax,0
	jne	_130
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
	or	dword [_98],8
_130:
	push	_131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [_bb_txtObject2]
	call	_maxgui_maxgui_SetGadgetText
	add	esp,8
	push	_132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_GadgetList]
	cmp	ebx,_bbNullObject
	jne	_134
	call	_brl_blitz_NullObjectError
_134:
	push	dword [_bb_txtObject2]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_135
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_txtObject2]
	cmp	esi,_bbNullObject
	jne	_137
	call	_brl_blitz_NullObjectError
_137:
	mov	ebx,_24
	inc	dword [ebx+4]
	mov	eax,dword [esi+104]
	dec	dword [eax+4]
	jnz	_142
	push	eax
	call	_bbGCFree
	add	esp,4
_142:
	mov	dword [esi+104],ebx
	push	_143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_98]
	and	eax,16
	cmp	eax,0
	jne	_145
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
	or	dword [_98],16
_145:
	push	_146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_GadgetList]
	cmp	ebx,_bbNullObject
	jne	_148
	call	_brl_blitz_NullObjectError
_148:
	push	dword [_bb_chkTheater2]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_chkTheater2]
	cmp	esi,_bbNullObject
	jne	_151
	call	_brl_blitz_NullObjectError
_151:
	mov	ebx,_26
	inc	dword [ebx+4]
	mov	eax,dword [esi+104]
	dec	dword [eax+4]
	jnz	_156
	push	eax
	call	_bbGCFree
	add	esp,4
_156:
	mov	dword [esi+104],ebx
	push	_157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [_bb_chkTheater2]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_98]
	and	eax,32
	cmp	eax,0
	jne	_160
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
	or	dword [_98],32
_160:
	push	_161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_GadgetList]
	cmp	ebx,_bbNullObject
	jne	_163
	call	_brl_blitz_NullObjectError
_163:
	push	dword [_bb_btnObject2]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_btnObject2]
	cmp	esi,_bbNullObject
	jne	_166
	call	_brl_blitz_NullObjectError
_166:
	mov	ebx,_28
	inc	dword [ebx+4]
	mov	eax,dword [esi+104]
	dec	dword [eax+4]
	jnz	_171
	push	eax
	call	_bbGCFree
	add	esp,4
_171:
	mov	dword [esi+104],ebx
	push	_172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_98]
	and	eax,64
	cmp	eax,0
	jne	_174
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
	or	dword [_98],64
_174:
	push	_175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_GadgetList]
	cmp	ebx,_bbNullObject
	jne	_177
	call	_brl_blitz_NullObjectError
_177:
	push	dword [_bb_Group1]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_Group1]
	cmp	esi,_bbNullObject
	jne	_180
	call	_brl_blitz_NullObjectError
_180:
	mov	ebx,_30
	inc	dword [ebx+4]
	mov	eax,dword [esi+104]
	dec	dword [eax+4]
	jnz	_185
	push	eax
	call	_bbGCFree
	add	esp,4
_185:
	mov	dword [esi+104],ebx
	push	_186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_98]
	and	eax,128
	cmp	eax,0
	jne	_188
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
	or	dword [_98],128
_188:
	push	_189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [_bb_txtObject1]
	call	_maxgui_maxgui_SetGadgetText
	add	esp,8
	push	_190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_GadgetList]
	cmp	ebx,_bbNullObject
	jne	_192
	call	_brl_blitz_NullObjectError
_192:
	push	dword [_bb_txtObject1]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_txtObject1]
	cmp	esi,_bbNullObject
	jne	_195
	call	_brl_blitz_NullObjectError
_195:
	mov	ebx,_31
	inc	dword [ebx+4]
	mov	eax,dword [esi+104]
	dec	dword [eax+4]
	jnz	_200
	push	eax
	call	_bbGCFree
	add	esp,4
_200:
	mov	dword [esi+104],ebx
	push	_201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_98]
	and	eax,256
	cmp	eax,0
	jne	_203
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
	or	dword [_98],256
_203:
	push	_204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_GadgetList]
	cmp	ebx,_bbNullObject
	jne	_206
	call	_brl_blitz_NullObjectError
_206:
	push	dword [_bb_chkTheater1]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_207
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_chkTheater1]
	cmp	esi,_bbNullObject
	jne	_209
	call	_brl_blitz_NullObjectError
_209:
	mov	ebx,_32
	inc	dword [ebx+4]
	mov	eax,dword [esi+104]
	dec	dword [eax+4]
	jnz	_214
	push	eax
	call	_bbGCFree
	add	esp,4
_214:
	mov	dword [esi+104],ebx
	push	_215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [_bb_chkTheater1]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_98]
	and	eax,512
	cmp	eax,0
	jne	_218
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
	or	dword [_98],512
_218:
	push	_219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_GadgetList]
	cmp	ebx,_bbNullObject
	jne	_221
	call	_brl_blitz_NullObjectError
_221:
	push	dword [_bb_btnObject1]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_btnObject1]
	cmp	esi,_bbNullObject
	jne	_224
	call	_brl_blitz_NullObjectError
_224:
	mov	ebx,_34
	inc	dword [ebx+4]
	mov	eax,dword [esi+104]
	dec	dword [eax+4]
	jnz	_229
	push	eax
	call	_bbGCFree
	add	esp,4
_229:
	mov	dword [esi+104],ebx
	push	_230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_98]
	and	eax,1024
	cmp	eax,0
	jne	_232
	push	_byo_com_TComObject
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_ie1],eax
	or	dword [_98],1024
_232:
	push	_233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ie1]
	cmp	ebx,_bbNullObject
	jne	_235
	call	_brl_blitz_NullObjectError
_235:
	push	_20
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_98]
	and	eax,2048
	cmp	eax,0
	jne	_238
	push	_byo_com_TComObject
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_ie2],eax
	or	dword [_98],2048
_238:
	push	_239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ie2]
	cmp	ebx,_bbNullObject
	jne	_241
	call	_brl_blitz_NullObjectError
_241:
	push	_20
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_37:
_35:
	push	_243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_eventqueue_WaitEvent
	push	_244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_eventqueue_EventID
	cmp	eax,16387
	je	_247
	cmp	eax,8193
	je	_248
	jmp	_246
_247:
	push	_249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_eventqueue_EventSource
	cmp	eax,dword [_bb_winMain]
	je	_252
	jmp	_251
_252:
	push	_253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_GadgetList]
	push	dword [_bb_winMain]
	call	_bb_winMain_WC
	add	esp,8
	jmp	_251
_251:
	jmp	_246
_248:
	push	_254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_eventqueue_EventSource
	cmp	eax,dword [_bb_txtObject2]
	je	_257
	cmp	eax,dword [_bb_txtObject1]
	je	_258
	cmp	eax,dword [_bb_chkTheater1]
	je	_259
	cmp	eax,dword [_bb_chkTheater2]
	je	_260
	cmp	eax,dword [_bb_btnObject1]
	je	_261
	cmp	eax,dword [_bb_btnObject2]
	je	_262
	jmp	_256
_257:
	push	_263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_GadgetList]
	push	dword [_bb_txtObject2]
	call	_bb_txtObject2_GA
	add	esp,8
	jmp	_256
_258:
	push	_264
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_GadgetList]
	push	dword [_bb_txtObject1]
	call	_bb_txtObject1_GA
	add	esp,8
	jmp	_256
_259:
	push	_265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_GadgetList]
	call	_brl_eventqueue_EventData
	push	eax
	push	dword [_bb_chkTheater1]
	call	_bb_chkTheater1_GA
	add	esp,12
	jmp	_256
_260:
	push	_266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_GadgetList]
	call	_brl_eventqueue_EventData
	push	eax
	push	dword [_bb_chkTheater2]
	call	_bb_chkTheater2_GA
	add	esp,12
	jmp	_256
_261:
	push	_267
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_GadgetList]
	push	dword [_bb_btnObject1]
	call	_bb_btnObject1_GA
	add	esp,8
	jmp	_256
_262:
	push	_268
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_GadgetList]
	push	dword [_bb_btnObject2]
	call	_bb_btnObject2_GA
	add	esp,8
	jmp	_256
_256:
	jmp	_246
_246:
	jmp	_37
_bb_winMain_WC:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_326
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_38
	call	_brl_blitz_DebugLog
	add	esp,4
	push	_325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_61
_61:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_txtObject2_GA:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_331
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_39
	call	_brl_blitz_DebugLog
	add	esp,4
	push	_330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_maxgui_maxgui_TextFieldText
	add	esp,4
	push	eax
	push	_40
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
	mov	ebx,0
	jmp	_65
_65:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_txtObject1_GA:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_336
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_41
	call	_brl_blitz_DebugLog
	add	esp,4
	push	_335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_maxgui_maxgui_TextFieldText
	add	esp,4
	push	eax
	push	_40
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
	mov	ebx,0
	jmp	_69
_69:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_chkTheater1_GA:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_350
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_338
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_42
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
	push	_339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	eax,0
	je	_342
	cmp	eax,1
	je	_343
	jmp	_341
_342:
	push	_344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ie1]
	cmp	ebx,_bbNullObject
	jne	_346
	call	_brl_blitz_NullObjectError
_346:
	push	_43
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	jmp	_341
_343:
	push	_347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ie1]
	cmp	ebx,_bbNullObject
	jne	_349
	call	_brl_blitz_NullObjectError
_349:
	push	_44
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	jmp	_341
_341:
	mov	ebx,0
	jmp	_74
_74:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_chkTheater2_GA:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_366
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_45
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
	push	_355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	eax,0
	je	_358
	cmp	eax,1
	je	_359
	jmp	_357
_358:
	push	_360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ie2]
	cmp	ebx,_bbNullObject
	jne	_362
	call	_brl_blitz_NullObjectError
_362:
	push	_43
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	jmp	_357
_359:
	push	_363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ie2]
	cmp	ebx,_bbNullObject
	jne	_365
	call	_brl_blitz_NullObjectError
_365:
	push	_44
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	jmp	_357
_357:
	mov	ebx,0
	jmp	_79
_79:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_btnObject1_GA:
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
	push	_377
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_46
	call	_brl_blitz_DebugLog
	add	esp,4
	push	_369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ie1]
	cmp	ebx,_bbNullObject
	jne	_371
	call	_brl_blitz_NullObjectError
_371:
	push	_47
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	_372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ie1]
	cmp	ebx,_bbNullObject
	jne	_374
	call	_brl_blitz_NullObjectError
_374:
	mov	esi,dword [_bb_txtObject1]
	cmp	esi,_bbNullObject
	jne	_376
	call	_brl_blitz_NullObjectError
_376:
	push	_49
	push	esi
	mov	eax,dword [esi]
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
	mov	ebx,0
	jmp	_83
_83:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_btnObject2_GA:
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
	push	_388
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_50
	call	_brl_blitz_DebugLog
	add	esp,4
	push	_380
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ie2]
	cmp	ebx,_bbNullObject
	jne	_382
	call	_brl_blitz_NullObjectError
_382:
	push	_47
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	_383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ie2]
	cmp	ebx,_bbNullObject
	jne	_385
	call	_brl_blitz_NullObjectError
_385:
	mov	esi,dword [_bb_txtObject2]
	cmp	esi,_bbNullObject
	jne	_387
	call	_brl_blitz_NullObjectError
_387:
	push	_49
	push	esi
	mov	eax,dword [esi]
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
	mov	ebx,0
	jmp	_87
_87:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_GadgetCommander:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],_bbEmptyString
	mov	dword [ebp-24],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_443
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbEmptyString
	mov	eax,dword [ebp-8]
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp-32]
	add	eax,24
	mov	dword [ebp-28],eax
	mov	edx,dword [ebp-28]
	mov	eax,dword [ebp-32]
	add	edx,dword [eax+16]
	mov	dword [ebp-36],edx
	jmp	_51
_53:
	mov	eax,dword [ebp-28]
	mov	eax,dword [eax]
	mov	dword [ebp-20],eax
	add	dword [ebp-28],4
	cmp	dword [ebp-20],_bbNullObject
	je	_51
	push	_396
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	eax,dword [ebp-12]
	mov	edi,dword [eax]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_400
	call	_brl_blitz_NullObjectError
_400:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_54
_56:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_405
	call	_brl_blitz_NullObjectError
_405:
	push	_maxgui_maxgui_TGadget
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_54
	push	_406
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_408
	call	_brl_blitz_NullObjectError
_408:
	push	_bbStringClass
	push	dword [ebx+104]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_410
	mov	eax,_bbEmptyString
_410:
	push	dword [ebp-20]
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_411
	push	_412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	cmp	eax,1
	je	_415
	cmp	eax,2
	je	_416
	cmp	eax,3
	je	_417
	cmp	eax,4
	je	_418
	cmp	eax,5
	je	_419
	cmp	eax,6
	je	_420
	cmp	eax,7
	je	_421
	cmp	eax,8
	je	_422
	cmp	eax,9
	je	_423
	cmp	eax,10
	je	_424
	cmp	eax,11
	je	_425
	cmp	eax,12
	je	_426
	jmp	_414
_415:
	push	_427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	jmp	_414
_416:
	push	_428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	jmp	_414
_417:
	push	_429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	call	_maxgui_maxgui_HideGadget
	add	esp,4
	jmp	_414
_418:
	push	_430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	call	_maxgui_maxgui_ShowGadget
	add	esp,4
	jmp	_414
_419:
	push	_431
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	dword [ebp-24]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	jmp	_414
_420:
	push	_432
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-24]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	jmp	_414
_421:
	push	_433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	call	_maxgui_maxgui_FreeGadget
	add	esp,4
	jmp	_414
_422:
	push	_434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	push	dword [ebp-24]
	call	_maxgui_maxgui_SetGadgetText
	add	esp,8
	jmp	_414
_423:
	push	_435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	call	_maxgui_maxgui_ActivateGadget
	add	esp,4
	jmp	_414
_424:
	push	_436
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	call	_maxgui_maxgui_RedrawGadget
	add	esp,4
	jmp	_414
_425:
	push	_437
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	ebx,dword [eax]
	cmp	ebx,_bbNullObject
	jne	_439
	call	_brl_blitz_NullObjectError
_439:
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	jmp	_414
_426:
	push	_440
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	jmp	_93
_414:
	push	_441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_55
_411:
_54:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_403
	call	_brl_blitz_NullObjectError
_403:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_56
_55:
_51:
	mov	eax,dword [ebp-36]
	cmp	dword [ebp-28],eax
	jne	_53
_52:
	push	_442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	jmp	_93
_93:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_322:
	dd	0
_281:
	db	"test",0
_282:
	db	"Disable",0
_283:
	db	"i",0
	align	4
_284:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	49
_285:
	db	"Enable",0
	align	4
_286:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	50
_287:
	db	"Hide",0
	align	4
_288:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	51
_289:
	db	"Show",0
	align	4
_290:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	52
_291:
	db	"Check",0
	align	4
_292:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	53
_293:
	db	"Uncheck",0
	align	4
_294:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	54
_295:
	db	"Free",0
	align	4
_296:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	55
_297:
	db	"SetText",0
	align	4
_298:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	56
_299:
	db	"Activate",0
	align	4
_300:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	57
_301:
	db	"Redraw",0
	align	4
_302:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,48
_303:
	db	"RemoveFromList",0
	align	4
_304:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,49
_305:
	db	"GetGadgetHandle",0
	align	4
_306:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	49,50
_307:
	db	"GadgetList",0
_308:
	db	":brl.linkedlist.TList",0
	align	4
_bb_GadgetList:
	dd	_bbNullObject
_309:
	db	"winMain",0
_310:
	db	":maxgui.maxgui.TGadget",0
	align	4
_bb_winMain:
	dd	_bbNullObject
_311:
	db	"Group2",0
	align	4
_bb_Group2:
	dd	_bbNullObject
_312:
	db	"txtObject2",0
	align	4
_bb_txtObject2:
	dd	_bbNullObject
_313:
	db	"chkTheater2",0
	align	4
_bb_chkTheater2:
	dd	_bbNullObject
_314:
	db	"btnObject2",0
	align	4
_bb_btnObject2:
	dd	_bbNullObject
_315:
	db	"Group1",0
	align	4
_bb_Group1:
	dd	_bbNullObject
_316:
	db	"txtObject1",0
	align	4
_bb_txtObject1:
	dd	_bbNullObject
_317:
	db	"chkTheater1",0
	align	4
_bb_chkTheater1:
	dd	_bbNullObject
_318:
	db	"btnObject1",0
	align	4
_bb_btnObject1:
	dd	_bbNullObject
_319:
	db	"ie1",0
_320:
	db	":byo.com.TComObject",0
	align	4
_bb_ie1:
	dd	_bbNullObject
_321:
	db	"ie2",0
	align	4
_bb_ie2:
	dd	_bbNullObject
	align	4
_280:
	dd	1
	dd	_281
	dd	1
	dd	_282
	dd	_283
	dd	_284
	dd	1
	dd	_285
	dd	_283
	dd	_286
	dd	1
	dd	_287
	dd	_283
	dd	_288
	dd	1
	dd	_289
	dd	_283
	dd	_290
	dd	1
	dd	_291
	dd	_283
	dd	_292
	dd	1
	dd	_293
	dd	_283
	dd	_294
	dd	1
	dd	_295
	dd	_283
	dd	_296
	dd	1
	dd	_297
	dd	_283
	dd	_298
	dd	1
	dd	_299
	dd	_283
	dd	_300
	dd	1
	dd	_301
	dd	_283
	dd	_302
	dd	1
	dd	_303
	dd	_283
	dd	_304
	dd	1
	dd	_305
	dd	_283
	dd	_306
	dd	4
	dd	_307
	dd	_308
	dd	_bb_GadgetList
	dd	4
	dd	_309
	dd	_310
	dd	_bb_winMain
	dd	4
	dd	_311
	dd	_310
	dd	_bb_Group2
	dd	4
	dd	_312
	dd	_310
	dd	_bb_txtObject2
	dd	4
	dd	_313
	dd	_310
	dd	_bb_chkTheater2
	dd	4
	dd	_314
	dd	_310
	dd	_bb_btnObject2
	dd	4
	dd	_315
	dd	_310
	dd	_bb_Group1
	dd	4
	dd	_316
	dd	_310
	dd	_bb_txtObject1
	dd	4
	dd	_317
	dd	_310
	dd	_bb_chkTheater1
	dd	4
	dd	_318
	dd	_310
	dd	_bb_btnObject1
	dd	4
	dd	_319
	dd	_320
	dd	_bb_ie1
	dd	4
	dd	_321
	dd	_320
	dd	_bb_ie2
	dd	0
_96:
	db	"$BMXPATH/mod/byo.mod/com.mod/samples/test.bmx",0
	align	4
_95:
	dd	_96
	dd	4
	dd	1
	align	4
_98:
	dd	0
	align	4
_100:
	dd	_96
	dd	18
	dd	1
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	73,110,116,101,114,110,101,116,69,120,112,108,111,114,101,114
	dw	46,65,112,112,108,105,99,97,116,105,111,110
	align	4
_103:
	dd	_96
	dd	19
	dd	2
	align	4
_106:
	dd	_96
	dd	19
	dd	42
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	119,105,110,77,97,105,110
	align	4
_114:
	dd	_96
	dd	20
	dd	2
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	73,110,116,101,114,110,101,116,32,69,120,112,108,111,114,101
	dw	114,32,50
	align	4
_117:
	dd	_96
	dd	21
	dd	3
	align	4
_120:
	dd	_96
	dd	21
	dd	42
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	71,114,111,117,112,50
	align	4
_128:
	dd	_96
	dd	22
	dd	3
	align	4
_131:
	dd	_96
	dd	23
	dd	4
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_132:
	dd	_96
	dd	24
	dd	4
	align	4
_135:
	dd	_96
	dd	24
	dd	47
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	116,120,116,79,98,106,101,99,116,50
	align	4
_143:
	dd	_96
	dd	25
	dd	3
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	83,101,116,32,116,104,101,97,116,101,114,32,109,111,100,101
	align	4
_146:
	dd	_96
	dd	26
	dd	4
	align	4
_149:
	dd	_96
	dd	26
	dd	48
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	99,104,107,84,104,101,97,116,101,114,50
	align	4
_157:
	dd	_96
	dd	27
	dd	4
	align	4
_158:
	dd	_96
	dd	28
	dd	3
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	79,98,106,101,99,116,50
	align	4
_161:
	dd	_96
	dd	29
	dd	4
	align	4
_164:
	dd	_96
	dd	29
	dd	47
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	98,116,110,79,98,106,101,99,116,50
	align	4
_172:
	dd	_96
	dd	30
	dd	2
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	73,110,116,101,114,110,101,116,32,69,120,112,108,111,114,101
	dw	114,32,49
	align	4
_175:
	dd	_96
	dd	31
	dd	3
	align	4
_178:
	dd	_96
	dd	31
	dd	42
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	71,114,111,117,112,49
	align	4
_186:
	dd	_96
	dd	32
	dd	3
	align	4
_189:
	dd	_96
	dd	33
	dd	4
	align	4
_190:
	dd	_96
	dd	34
	dd	4
	align	4
_193:
	dd	_96
	dd	34
	dd	47
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	116,120,116,79,98,106,101,99,116,49
	align	4
_201:
	dd	_96
	dd	35
	dd	3
	align	4
_204:
	dd	_96
	dd	36
	dd	4
	align	4
_207:
	dd	_96
	dd	36
	dd	48
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	99,104,107,84,104,101,97,116,101,114,49
	align	4
_215:
	dd	_96
	dd	37
	dd	4
	align	4
_216:
	dd	_96
	dd	38
	dd	3
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	79,98,106,101,99,116,49
	align	4
_219:
	dd	_96
	dd	39
	dd	4
	align	4
_222:
	dd	_96
	dd	39
	dd	47
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	98,116,110,79,98,106,101,99,116,49
	align	4
_230:
	dd	_96
	dd	42
	dd	1
	align	4
_233:
	dd	_96
	dd	43
	dd	1
	align	4
_236:
	dd	_96
	dd	44
	dd	1
	align	4
_239:
	dd	_96
	dd	45
	dd	1
	align	4
_242:
	dd	_96
	dd	67
	dd	1
	align	4
_243:
	dd	_96
	dd	49
	dd	2
	align	4
_244:
	dd	_96
	dd	50
	dd	2
	align	4
_249:
	dd	_96
	dd	52
	dd	4
	align	4
_253:
	dd	_96
	dd	53
	dd	18
	align	4
_254:
	dd	_96
	dd	57
	dd	4
	align	4
_263:
	dd	_96
	dd	58
	dd	21
	align	4
_264:
	dd	_96
	dd	59
	dd	21
	align	4
_265:
	dd	_96
	dd	60
	dd	22
	align	4
_266:
	dd	_96
	dd	61
	dd	22
	align	4
_267:
	dd	_96
	dd	62
	dd	21
	align	4
_268:
	dd	_96
	dd	63
	dd	21
_327:
	db	"winMain_WC",0
_328:
	db	"Window",0
	align	4
_326:
	dd	1
	dd	_327
	dd	2
	dd	_328
	dd	_310
	dd	-4
	dd	2
	dd	_307
	dd	_308
	dd	-8
	dd	0
	align	4
_324:
	dd	_96
	dd	74
	dd	2
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	87,105,110,100,111,119,32,119,105,110,77,97,105,110,32,119
	dw	97,110,116,115,32,116,111,32,98,101,32,99,108,111,115,101
	dw	100
	align	4
_325:
	dd	_96
	dd	77
	dd	2
_332:
	db	"txtObject2_GA",0
_333:
	db	"TextField",0
	align	4
_331:
	dd	1
	dd	_332
	dd	2
	dd	_333
	dd	_310
	dd	-4
	dd	2
	dd	_307
	dd	_308
	dd	-8
	dd	0
	align	4
_329:
	dd	_96
	dd	81
	dd	2
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	84,101,120,116,70,105,101,108,100,32,116,120,116,79,98,106
	dw	101,99,116,50,32,119,97,115,32,109,111,100,105,102,105,101
	dw	100
	align	4
_330:
	dd	_96
	dd	82
	dd	2
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	84,101,120,116,32,61,32
_337:
	db	"txtObject1_GA",0
	align	4
_336:
	dd	1
	dd	_337
	dd	2
	dd	_333
	dd	_310
	dd	-4
	dd	2
	dd	_307
	dd	_308
	dd	-8
	dd	0
	align	4
_334:
	dd	_96
	dd	87
	dd	2
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	84,101,120,116,70,105,101,108,100,32,116,120,116,79,98,106
	dw	101,99,116,49,32,119,97,115,32,109,111,100,105,102,105,101
	dw	100
	align	4
_335:
	dd	_96
	dd	88
	dd	2
_351:
	db	"chkTheater1_GA",0
_352:
	db	"Button",0
_353:
	db	"State",0
	align	4
_350:
	dd	1
	dd	_351
	dd	2
	dd	_352
	dd	_310
	dd	-4
	dd	2
	dd	_353
	dd	_283
	dd	-8
	dd	2
	dd	_307
	dd	_308
	dd	-12
	dd	0
	align	4
_338:
	dd	_96
	dd	93
	dd	2
	align	4
_42:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	67,104,101,99,107,98,111,120,32,66,117,116,116,111,110,32
	dw	99,104,107,84,104,101,97,116,101,114,49,32,99,104,97,110
	dw	103,101,100,32,116,111,32
	align	4
_339:
	dd	_96
	dd	94
	dd	2
	align	4
_344:
	dd	_96
	dd	95
	dd	10
	align	4
_43:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	84,104,101,97,116,101,114,77,111,100,101,32,61,32,35,70
	dw	97,108,115,101
	align	4
_347:
	dd	_96
	dd	96
	dd	10
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	84,104,101,97,116,101,114,77,111,100,101,32,61,32,35,84
	dw	114,117,101
_367:
	db	"chkTheater2_GA",0
	align	4
_366:
	dd	1
	dd	_367
	dd	2
	dd	_352
	dd	_310
	dd	-4
	dd	2
	dd	_353
	dd	_283
	dd	-8
	dd	2
	dd	_307
	dd	_308
	dd	-12
	dd	0
	align	4
_354:
	dd	_96
	dd	101
	dd	2
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	67,104,101,99,107,98,111,120,32,66,117,116,116,111,110,32
	dw	99,104,107,84,104,101,97,116,101,114,50,32,99,104,97,110
	dw	103,101,100,32,116,111,32
	align	4
_355:
	dd	_96
	dd	102
	dd	2
	align	4
_360:
	dd	_96
	dd	103
	dd	10
	align	4
_363:
	dd	_96
	dd	104
	dd	10
_378:
	db	"btnObject1_GA",0
	align	4
_377:
	dd	1
	dd	_378
	dd	2
	dd	_352
	dd	_310
	dd	-4
	dd	2
	dd	_307
	dd	_308
	dd	-8
	dd	0
	align	4
_368:
	dd	_96
	dd	109
	dd	2
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	66,117,116,116,111,110,32,98,116,110,79,98,106,101,99,116
	dw	49,32,119,97,115,32,112,114,101,115,115,101,100
	align	4
_369:
	dd	_96
	dd	110
	dd	2
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	86,105,115,105,98,108,101,32,61,32,35,84,114,117,101
	align	4
_372:
	dd	_96
	dd	111
	dd	2
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
_389:
	db	"btnObject2_GA",0
	align	4
_388:
	dd	1
	dd	_389
	dd	2
	dd	_352
	dd	_310
	dd	-4
	dd	2
	dd	_307
	dd	_308
	dd	-8
	dd	0
	align	4
_379:
	dd	_96
	dd	115
	dd	2
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	66,117,116,116,111,110,32,98,116,110,79,98,106,101,99,116
	dw	50,32,119,97,115,32,112,114,101,115,115,101,100
	align	4
_380:
	dd	_96
	dd	116
	dd	2
	align	4
_383:
	dd	_96
	dd	117
	dd	2
_444:
	db	"GadgetCommander",0
_445:
	db	"Action",0
_446:
	db	"GadgetArray",0
_447:
	db	"[]$",0
_448:
	db	"Params",0
_449:
	db	"$",0
_450:
	db	"ii",0
	align	4
_443:
	dd	1
	dd	_444
	dd	2
	dd	_445
	dd	_283
	dd	-4
	dd	2
	dd	_446
	dd	_447
	dd	-8
	dd	5
	dd	_307
	dd	_308
	dd	-12
	dd	2
	dd	_448
	dd	_449
	dd	-16
	dd	2
	dd	_283
	dd	_449
	dd	-20
	dd	2
	dd	_450
	dd	_310
	dd	-24
	dd	0
	align	4
_390:
	dd	_96
	dd	121
	dd	2
	align	4
_396:
	dd	_96
	dd	122
	dd	3
	align	4
_406:
	dd	_96
	dd	123
	dd	4
	align	4
_412:
	dd	_96
	dd	124
	dd	5
	align	4
_427:
	dd	_96
	dd	125
	dd	21
	align	4
_428:
	dd	_96
	dd	126
	dd	21
	align	4
_429:
	dd	_96
	dd	127
	dd	19
	align	4
_430:
	dd	_96
	dd	128
	dd	19
	align	4
_431:
	dd	_96
	dd	129
	dd	20
	align	4
_432:
	dd	_96
	dd	130
	dd	21
	align	4
_433:
	dd	_96
	dd	131
	dd	19
	align	4
_434:
	dd	_96
	dd	132
	dd	21
	align	4
_435:
	dd	_96
	dd	133
	dd	22
	align	4
_436:
	dd	_96
	dd	134
	dd	21
	align	4
_437:
	dd	_96
	dd	135
	dd	27
	align	4
_440:
	dd	_96
	dd	136
	dd	27
	align	4
_441:
	dd	_96
	dd	138
	dd	5
	align	4
_442:
	dd	_96
	dd	142
	dd	2
