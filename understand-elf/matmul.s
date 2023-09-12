	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"matmul.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.section	.rodata
	.align	2
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, %object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.word	2
	.align	2
	.type	_ZN6__pstl9execution2v1L3seqE, %object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.space	1
	.align	2
	.type	_ZN6__pstl9execution2v1L3parE, %object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.space	1
	.align	2
	.type	_ZN6__pstl9execution2v1L9par_unseqE, %object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.space	1
	.align	2
	.type	_ZN6__pstl9execution2v1L5unseqE, %object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.space	1
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
	.fnstart
.LFB2614:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	ldr	r4, .L13
.LPIC0:
	add	r4, pc
	ldr	r2, .L13+4
.LPIC1:
	add	r2, pc
	ldr	r3, .L13+8
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	mov	r3, #0
	adds	r3, r7, #4
	mov	r1, #57600
	movt	r1, 1525
	mov	r0, r3
.LEHB0:
	bl	_ZSt11make_uniqueIA_iENSt9_MakeUniqIT_E7__arrayEj(PLT)
.LEHE0:
	add	r3, r7, #8
	movw	r1, #10000
	mov	r0, r3
.LEHB1:
	bl	_ZSt11make_uniqueIA_iENSt9_MakeUniqIT_E7__arrayEj(PLT)
.LEHE1:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L5:
	ldr	r3, [r7, #12]
	movw	r2, #60495
	movt	r2, 20164
	smull	r1, r2, r2, r3
	asrs	r1, r2, #2
	asrs	r2, r3, #31
	subs	r5, r1, r2
	movs	r2, #13
	mul	r2, r5, r2
	subs	r5, r3, r2
	ldr	r2, [r7, #12]
	add	r3, r7, #8
	mov	r1, r2
	mov	r0, r3
	bl	_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EEixEj(PLT)
	mov	r3, r0
	str	r5, [r3]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L3
.L4:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	movw	r2, #26215
	movt	r2, 26214
	smull	r1, r2, r2, r3
	asrs	r1, r2, #3
	asrs	r2, r3, #31
	subs	r5, r1, r2
	movs	r2, #20
	mul	r2, r5, r2
	subs	r5, r3, r2
	ldr	r2, [r7, #16]
	adds	r3, r7, #4
	mov	r1, r2
	mov	r0, r3
	bl	_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EEixEj(PLT)
	mov	r3, r0
	str	r5, [r3]
	ldr	r2, [r7, #12]
	add	r3, r7, #8
	mov	r1, r2
	mov	r0, r3
	bl	_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EEixEj(PLT)
	mov	r3, r0
	ldr	r5, [r3]
	ldr	r2, [r7, #16]
	adds	r3, r7, #4
	mov	r1, r2
	mov	r0, r3
	bl	_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EEixEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mul	r5, r3, r5
	ldr	r3, [r7, #12]
	movw	r2, #10000
	mul	r2, r3, r2
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	mov	r2, r3
	adds	r3, r7, #4
	mov	r1, r2
	mov	r0, r3
	bl	_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EEixEj(PLT)
	mov	r3, r0
	str	r5, [r3]
	ldr	r3, [r7, #12]
	movw	r2, #10000
	mul	r2, r3, r2
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	mov	r2, r3
	adds	r3, r7, #4
	mov	r1, r2
	mov	r0, r3
	bl	_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EEixEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, .L13+12
	ldr	r3, [r4, r3]
	mov	r0, r3
.LEHB2:
	bl	_ZNSolsEi(PLT)
	mov	r3, r0
	movs	r1, #32
	mov	r0, r3
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L3:
	ldr	r3, [r7, #16]
	movw	r2, #9999
	cmp	r3, r2
	ble	.L4
	ldr	r3, .L13+16
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r3, .L13+12
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	_ZNSolsEPFRSoS_E(PLT)
.LEHE2:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7, #12]
	movw	r2, #9999
	cmp	r3, r2
	ble	.L5
	movs	r4, #0
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED1Ev(PLT)
	adds	r3, r7, #4
	mov	r0, r3
	bl	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED1Ev(PLT)
	mov	r3, r4
	ldr	r1, .L13+20
.LPIC2:
	add	r1, pc
	ldr	r2, .L13+8
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #20]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L9
	b	.L12
.L11:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED1Ev(PLT)
	b	.L8
.L10:
.L8:
	adds	r3, r7, #4
	mov	r0, r3
	bl	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED1Ev(PLT)
.LEHB3:
	bl	__cxa_end_cleanup(PLT)
.LEHE3:
.L12:
	bl	__stack_chk_fail(PLT)
.L9:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L14:
	.align	2
.L13:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_ZSt4cout(GOT)
	.word	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA2614:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2614-.LLSDACSB2614
.LLSDACSB2614:
	.uleb128 .LEHB0-.LFB2614
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2614
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L10-.LFB2614
	.uleb128 0
	.uleb128 .LEHB2-.LFB2614
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L11-.LFB2614
	.uleb128 0
	.uleb128 .LEHB3-.LFB2614
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2614:
	.text
	.fnend
	.size	main, .-main
	.section	.text._ZSt11make_uniqueIA_iENSt9_MakeUniqIT_E7__arrayEj,"axG",%progbits,_ZSt11make_uniqueIA_iENSt9_MakeUniqIT_E7__arrayEj,comdat
	.align	1
	.weak	_ZSt11make_uniqueIA_iENSt9_MakeUniqIT_E7__arrayEj
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZSt11make_uniqueIA_iENSt9_MakeUniqIT_E7__arrayEj, %function
_ZSt11make_uniqueIA_iENSt9_MakeUniqIT_E7__arrayEj:
	.fnstart
.LFB2888:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #12
	sub	sp, sp, #12
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	movw	r3, #65534
	movt	r3, 8191
	cmp	r4, r3
	bhi	.L16
	lsls	r3, r4, #2
	mov	r0, r3
	bl	_Znaj(PLT)
	mov	r3, r0
	mov	r0, r3
	mov	r2, r0
	subs	r3, r4, #1
	b	.L18
.L16:
	bl	__cxa_throw_bad_array_new_length(PLT)
.L19:
	movs	r1, #0
	str	r1, [r2]
	adds	r2, r2, #4
	subs	r3, r3, #1
.L18:
	cmp	r3, #0
	bge	.L19
	mov	r1, r0
	ldr	r0, [r7, #4]
	bl	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EEC1IPiS2_vbEET_(PLT)
	ldr	r0, [r7, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZSt11make_uniqueIA_iENSt9_MakeUniqIT_E7__arrayEj, .-_ZSt11make_uniqueIA_iENSt9_MakeUniqIT_E7__arrayEj
	.section	.text._ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev,"axG",%progbits,_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED5Ev,comdat
	.align	1
	.weak	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev, %function
_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev:
	.fnstart
.LFB2890:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L22
	ldr	r0, [r7, #4]
	bl	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EE11get_deleterEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_(PLT)
.L22:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev, .-_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev
	.weak	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED1Ev
	.thumb_set _ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED1Ev,_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev
	.section	.text._ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EEixEj,"axG",%progbits,_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EEixEj,comdat
	.align	1
	.weak	_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EEixEj
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EEixEj, %function
_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EEixEj:
	.fnstart
.LFB2892:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	cmp	r3, #0
	ldr	r0, [r7, #4]
	bl	_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EE3getEv(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	lsls	r3, r3, #2
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EEixEj, .-_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EEixEj
	.section	.text._ZNSt15__uniq_ptr_dataIiSt14default_deleteIA_iELb1ELb1EECI2St15__uniq_ptr_implIiS2_EEPi,"axG",%progbits,_ZNSt15__uniq_ptr_dataIiSt14default_deleteIA_iELb1ELb1EECI5St15__uniq_ptr_implIiS2_EEPi,comdat
	.align	1
	.weak	_ZNSt15__uniq_ptr_dataIiSt14default_deleteIA_iELb1ELb1EECI2St15__uniq_ptr_implIiS2_EEPi
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt15__uniq_ptr_dataIiSt14default_deleteIA_iELb1ELb1EECI2St15__uniq_ptr_implIiS2_EEPi, %function
_ZNSt15__uniq_ptr_dataIiSt14default_deleteIA_iELb1ELb1EECI2St15__uniq_ptr_implIiS2_EEPi:
	.fnstart
.LFB2979:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	mov	r1, r2
	mov	r0, r3
	bl	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC2EPi(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNSt15__uniq_ptr_dataIiSt14default_deleteIA_iELb1ELb1EECI2St15__uniq_ptr_implIiS2_EEPi, .-_ZNSt15__uniq_ptr_dataIiSt14default_deleteIA_iELb1ELb1EECI2St15__uniq_ptr_implIiS2_EEPi
	.weak	_ZNSt15__uniq_ptr_dataIiSt14default_deleteIA_iELb1ELb1EECI1St15__uniq_ptr_implIiS2_EEPi
	.thumb_set _ZNSt15__uniq_ptr_dataIiSt14default_deleteIA_iELb1ELb1EECI1St15__uniq_ptr_implIiS2_EEPi,_ZNSt15__uniq_ptr_dataIiSt14default_deleteIA_iELb1ELb1EECI2St15__uniq_ptr_implIiS2_EEPi
	.section	.text._ZNSt10unique_ptrIA_iSt14default_deleteIS0_EEC2IPiS2_vbEET_,"axG",%progbits,_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EEC5IPiS2_vbEET_,comdat
	.align	1
	.weak	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EEC2IPiS2_vbEET_
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EEC2IPiS2_vbEET_, %function
_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EEC2IPiS2_vbEET_:
	.fnstart
.LFB2981:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, [r7]
	mov	r0, r3
	bl	_ZNSt15__uniq_ptr_dataIiSt14default_deleteIA_iELb1ELb1EECI1St15__uniq_ptr_implIiS2_EEPi(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EEC2IPiS2_vbEET_, .-_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EEC2IPiS2_vbEET_
	.weak	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EEC1IPiS2_vbEET_
	.thumb_set _ZNSt10unique_ptrIA_iSt14default_deleteIS0_EEC1IPiS2_vbEET_,_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EEC2IPiS2_vbEET_
	.section	.text._ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv,"axG",%progbits,_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv,comdat
	.align	1
	.weak	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv, %function
_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv:
	.fnstart
.LFB2983:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZSt3getILj0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv, .-_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv
	.section	.text._ZNSt10unique_ptrIA_iSt14default_deleteIS0_EE11get_deleterEv,"axG",%progbits,_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EE11get_deleterEv,comdat
	.align	1
	.weak	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EE11get_deleterEv
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EE11get_deleterEv, %function
_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EE11get_deleterEv:
	.fnstart
.LFB2984:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EE11get_deleterEv, .-_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EE11get_deleterEv
	.section	.text._ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_,"axG",%progbits,_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_,comdat
	.align	1
	.weak	_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_, %function
_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_:
	.fnstart
.LFB2985:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L37
	ldr	r0, [r7]
	bl	_ZdaPv(PLT)
.L37:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_, .-_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS0_E5valueEvE4typeEPS5_
	.section	.text._ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EE3getEv,"axG",%progbits,_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EE3getEv,comdat
	.align	1
	.weak	_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EE3getEv
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EE3getEv, %function
_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EE3getEv:
	.fnstart
.LFB2986:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EE3getEv, .-_ZNKSt10unique_ptrIA_iSt14default_deleteIS0_EE3getEv
	.section	.text._ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC2EPi,"axG",%progbits,_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC5EPi,comdat
	.align	1
	.weak	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC2EPi
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC2EPi, %function
_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC2EPi:
	.fnstart
.LFB3025:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC1ILb1ELb1EEEv(PLT)
	ldr	r4, [r7]
	ldr	r0, [r7, #4]
	bl	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv(PLT)
	mov	r3, r0
	str	r4, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.cantunwind
	.fnend
	.size	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC2EPi, .-_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC2EPi
	.weak	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC1EPi
	.thumb_set _ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC1EPi,_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEEC2EPi
	.section	.text._ZSt3getILj0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,"axG",%progbits,_ZSt3getILj0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,comdat
	.align	1
	.weak	_ZSt3getILj0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZSt3getILj0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, %function
_ZSt3getILj0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_:
	.fnstart
.LFB3027:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZSt3getILj0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, .-_ZSt3getILj0EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.section	.text._ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv,"axG",%progbits,_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv,comdat
	.align	1
	.weak	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv, %function
_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv:
	.fnstart
.LFB3028:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZSt3getILj1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv, .-_ZNSt15__uniq_ptr_implIiSt14default_deleteIA_iEE10_M_deleterEv
	.section	.text._ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv,"axG",%progbits,_ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv,comdat
	.align	1
	.weak	_ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv, %function
_ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv:
	.fnstart
.LFB3029:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZSt3getILj0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv, .-_ZNKSt15__uniq_ptr_implIiSt14default_deleteIA_iEE6_M_ptrEv
	.section	.text._ZNSt5tupleIJPiSt14default_deleteIA_iEEEC2ILb1ELb1EEEv,"axG",%progbits,_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC5ILb1ELb1EEEv,comdat
	.align	1
	.weak	_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC2ILb1ELb1EEEv
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC2ILb1ELb1EEEv, %function
_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC2ILb1ELb1EEEv:
	.fnstart
.LFB3073:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEEC2Ev(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA3073:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3073-.LLSDACSB3073
.LLSDACSB3073:
.LLSDACSE3073:
	.section	.text._ZNSt5tupleIJPiSt14default_deleteIA_iEEEC2ILb1ELb1EEEv,"axG",%progbits,_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC5ILb1ELb1EEEv,comdat
	.fnend
	.size	_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC2ILb1ELb1EEEv, .-_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC2ILb1ELb1EEEv
	.weak	_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC1ILb1ELb1EEEv
	.thumb_set _ZNSt5tupleIJPiSt14default_deleteIA_iEEEC1ILb1ELb1EEEv,_ZNSt5tupleIJPiSt14default_deleteIA_iEEEC2ILb1ELb1EEEv
	.section	.text._ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",%progbits,_ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.align	1
	.weak	_ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, %function
_ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE:
	.fnstart
.LFB3075:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERS4_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZSt3getILj1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,"axG",%progbits,_ZSt3getILj1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,comdat
	.align	1
	.weak	_ZSt3getILj1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZSt3getILj1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, %function
_ZSt3getILj1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_:
	.fnstart
.LFB3076:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZSt12__get_helperILj1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZSt3getILj1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, .-_ZSt3getILj1EJPiSt14default_deleteIA_iEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.section	.text._ZSt3getILj0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_,"axG",%progbits,_ZSt3getILj0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_,comdat
	.align	1
	.weak	_ZSt3getILj0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZSt3getILj0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_, %function
_ZSt3getILj0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_:
	.fnstart
.LFB3077:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZSt3getILj0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_, .-_ZSt3getILj0EJPiSt14default_deleteIA_iEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_
	.section	.text._ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEEC2Ev,"axG",%progbits,_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEEC5Ev,comdat
	.align	1
	.weak	_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEEC2Ev
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEEC2Ev, %function
_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEEC2Ev:
	.fnstart
.LFB3123:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEEC2Ev(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNSt10_Head_baseILj0EPiLb0EEC2Ev(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEEC2Ev, .-_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEEC2Ev
	.weak	_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEEC1Ev
	.thumb_set _ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEEC1Ev,_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEEC2Ev
	.section	.text._ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERS4_,"axG",%progbits,_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERS4_,comdat
	.align	1
	.weak	_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERS4_
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERS4_, %function
_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERS4_:
	.fnstart
.LFB3125:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNSt10_Head_baseILj0EPiLb0EE7_M_headERS1_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERS4_, .-_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERS4_
	.section	.text._ZSt12__get_helperILj1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE,"axG",%progbits,_ZSt12__get_helperILj1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE,comdat
	.align	1
	.weak	_ZSt12__get_helperILj1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZSt12__get_helperILj1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE, %function
_ZSt12__get_helperILj1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE:
	.fnstart
.LFB3126:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEE7_M_headERS3_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZSt12__get_helperILj1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE, .-_ZSt12__get_helperILj1ESt14default_deleteIA_iEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE
	.section	.text._ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",%progbits,_ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.align	1
	.weak	_ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE, %function
_ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE:
	.fnstart
.LFB3127:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILj0EPiJSt14default_deleteIA_iEEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEEC2Ev,"axG",%progbits,_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEEC5Ev,comdat
	.align	1
	.weak	_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEEC2Ev
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEEC2Ev, %function
_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEEC2Ev:
	.fnstart
.LFB3153:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EEC2Ev(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEEC2Ev, .-_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEEC2Ev
	.weak	_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEEC1Ev
	.thumb_set _ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEEC1Ev,_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEEC2Ev
	.section	.text._ZNSt10_Head_baseILj0EPiLb0EEC2Ev,"axG",%progbits,_ZNSt10_Head_baseILj0EPiLb0EEC5Ev,comdat
	.align	1
	.weak	_ZNSt10_Head_baseILj0EPiLb0EEC2Ev
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt10_Head_baseILj0EPiLb0EEC2Ev, %function
_ZNSt10_Head_baseILj0EPiLb0EEC2Ev:
	.fnstart
.LFB3156:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNSt10_Head_baseILj0EPiLb0EEC2Ev, .-_ZNSt10_Head_baseILj0EPiLb0EEC2Ev
	.weak	_ZNSt10_Head_baseILj0EPiLb0EEC1Ev
	.thumb_set _ZNSt10_Head_baseILj0EPiLb0EEC1Ev,_ZNSt10_Head_baseILj0EPiLb0EEC2Ev
	.section	.text._ZNSt10_Head_baseILj0EPiLb0EE7_M_headERS1_,"axG",%progbits,_ZNSt10_Head_baseILj0EPiLb0EE7_M_headERS1_,comdat
	.align	1
	.weak	_ZNSt10_Head_baseILj0EPiLb0EE7_M_headERS1_
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt10_Head_baseILj0EPiLb0EE7_M_headERS1_, %function
_ZNSt10_Head_baseILj0EPiLb0EE7_M_headERS1_:
	.fnstart
.LFB3158:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNSt10_Head_baseILj0EPiLb0EE7_M_headERS1_, .-_ZNSt10_Head_baseILj0EPiLb0EE7_M_headERS1_
	.section	.text._ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEE7_M_headERS3_,"axG",%progbits,_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEE7_M_headERS3_,comdat
	.align	1
	.weak	_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEE7_M_headERS3_
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEE7_M_headERS3_, %function
_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEE7_M_headERS3_:
	.fnstart
.LFB3159:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EE7_M_headERS3_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEE7_M_headERS3_, .-_ZNSt11_Tuple_implILj1EJSt14default_deleteIA_iEEE7_M_headERS3_
	.section	.text._ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_,"axG",%progbits,_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_,comdat
	.align	1
	.weak	_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_, %function
_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_:
	.fnstart
.LFB3160:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNSt10_Head_baseILj0EPiLb0EE7_M_headERKS1_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_, .-_ZNSt11_Tuple_implILj0EJPiSt14default_deleteIA_iEEE7_M_headERKS4_
	.section	.text._ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EEC2Ev,"axG",%progbits,_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EEC5Ev,comdat
	.align	1
	.weak	_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EEC2Ev
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EEC2Ev, %function
_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EEC2Ev:
	.fnstart
.LFB3174:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EEC2Ev, .-_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EEC2Ev
	.weak	_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EEC1Ev
	.thumb_set _ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EEC1Ev,_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EEC2Ev
	.section	.text._ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EE7_M_headERS3_,"axG",%progbits,_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EE7_M_headERS3_,comdat
	.align	1
	.weak	_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EE7_M_headERS3_
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EE7_M_headERS3_, %function
_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EE7_M_headERS3_:
	.fnstart
.LFB3176:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EE7_M_headERS3_, .-_ZNSt10_Head_baseILj1ESt14default_deleteIA_iELb1EE7_M_headERS3_
	.section	.text._ZNSt10_Head_baseILj0EPiLb0EE7_M_headERKS1_,"axG",%progbits,_ZNSt10_Head_baseILj0EPiLb0EE7_M_headERKS1_,comdat
	.align	1
	.weak	_ZNSt10_Head_baseILj0EPiLb0EE7_M_headERKS1_
	.syntax unified
	.thumb
	.thumb_func
	.type	_ZNSt10_Head_baseILj0EPiLb0EE7_M_headERKS1_, %function
_ZNSt10_Head_baseILj0EPiLb0EE7_M_headERKS1_:
	.fnstart
.LFB3177:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNSt10_Head_baseILj0EPiLb0EE7_M_headERKS1_, .-_ZNSt10_Head_baseILj0EPiLb0EE7_M_headERKS1_
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	.fnstart
.LFB3196:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, .L83
.LPIC5:
	add	r4, pc
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L82
	ldr	r3, [r7]
	movw	r2, #65535
	cmp	r3, r2
	bne	.L82
	ldr	r3, .L83+4
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	_ZNSt8ios_base4InitC1Ev(PLT)
	ldr	r3, .L83+8
.LPIC4:
	add	r3, pc
	mov	r2, r3
	ldr	r3, .L83+12
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r3, .L83+16
.LPIC6:
	add	r3, pc
	mov	r0, r3
	bl	__aeabi_atexit(PLT)
.L82:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L84:
	.align	2
.L83:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	_ZStL8__ioinit-(.LPIC3+4)
	.word	__dso_handle-(.LPIC4+4)
	.word	_ZNSt8ios_base4InitD1Ev(GOT)
	.word	_ZStL8__ioinit-(.LPIC6+4)
	.cantunwind
	.fnend
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
	.fnstart
.LFB3197:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movw	r1, #65535
	movs	r0, #1
	bl	_Z41__static_initialization_and_destruction_0ii(PLT)
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__sub_I_main(target1)
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",%progbits
