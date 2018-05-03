	.text
	.file	"SimdSse2BgraToGray.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _ZN4Simd4Sse210BgraToGrayEPKhmmmPhm
.LCPI0_0:
	.long	9617                    # 0x2591
.LCPI0_2:
	.long	321062732               # 0x1323074c
.LCPI0_3:
	.long	8192                    # 0x2000
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_1:
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.text
	.globl	_ZN4Simd4Sse210BgraToGrayEPKhmmmPhm
	.p2align	4, 0x90
	.type	_ZN4Simd4Sse210BgraToGrayEPKhmmmPhm,@function
_ZN4Simd4Sse210BgraToGrayEPKhmmmPhm:    # @_ZN4Simd4Sse210BgraToGrayEPKhmmmPhm
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	cmpq	$15, %rsi
	jbe	.LBB0_16
# %bb.1:
	testb	$15, %dil
	jne	.LBB0_17
# %bb.2:
	movq	%rcx, %rax
	andq	$-16, %rax
	cmpq	%rcx, %rax
	jne	.LBB0_17
# %bb.3:
	testb	$15, %r9b
	jne	.LBB0_17
# %bb.4:
	movq	%r8, %rax
	andq	$-16, %rax
	cmpq	%r8, %rax
	jne	.LBB0_17
# %bb.5:
	testb	$15, %sil
	jne	.LBB0_18
# %bb.6:
	testq	%rdx, %rdx
	je	.LBB0_15
# %bb.7:
	addq	$-1, %rsi
	shrq	$4, %rsi
	leal	1(%rsi), %r11d
	andl	$1, %r11d
	leaq	-1(%r11), %r10
	subq	%rsi, %r10
	xorl	%r14d, %r14d
	vpbroadcastd	.LCPI0_0(%rip), %xmm0 # xmm0 = [9617,9617,9617,9617]
	vmovdqa	.LCPI0_1(%rip), %xmm8   # xmm8 = [255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0]
	vpbroadcastd	.LCPI0_2(%rip), %xmm2 # xmm2 = [321062732,321062732,321062732,321062732]
	vpbroadcastd	.LCPI0_3(%rip), %xmm3 # xmm3 = [8192,8192,8192,8192]
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_8 Depth=1
	xorl	%ebx, %ebx
	testq	%r11, %r11
	jne	.LBB0_13
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	testq	%rsi, %rsi
	je	.LBB0_9
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	movq	%r10, %rax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_11:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovdqa	(%rdi,%rbx,4), %xmm4
	vmovdqa	16(%rdi,%rbx,4), %xmm5
	vmovdqa	32(%rdi,%rbx,4), %xmm6
	vmovdqa	48(%rdi,%rbx,4), %xmm7
	vpsrlw	$8, %xmm4, %xmm1
	vpmaddwd	%xmm0, %xmm1, %xmm1
	vpand	%xmm8, %xmm4, %xmm4
	vpmaddwd	%xmm2, %xmm4, %xmm4
	vpaddd	%xmm4, %xmm1, %xmm1
	vpaddd	%xmm3, %xmm1, %xmm1
	vpsrld	$14, %xmm1, %xmm1
	vpsrlw	$8, %xmm5, %xmm4
	vpmaddwd	%xmm0, %xmm4, %xmm4
	vpand	%xmm8, %xmm5, %xmm5
	vpmaddwd	%xmm2, %xmm5, %xmm5
	vpaddd	%xmm5, %xmm4, %xmm4
	vpaddd	%xmm3, %xmm4, %xmm4
	vpsrld	$14, %xmm4, %xmm4
	vpackssdw	%xmm4, %xmm1, %xmm1
	vpsrlw	$8, %xmm6, %xmm4
	vpmaddwd	%xmm0, %xmm4, %xmm4
	vpand	%xmm8, %xmm6, %xmm5
	vpmaddwd	%xmm2, %xmm5, %xmm5
	vpaddd	%xmm5, %xmm4, %xmm4
	vpaddd	%xmm3, %xmm4, %xmm4
	vpsrld	$14, %xmm4, %xmm4
	vpsrlw	$8, %xmm7, %xmm5
	vpmaddwd	%xmm0, %xmm5, %xmm5
	vpand	%xmm8, %xmm7, %xmm6
	vpmaddwd	%xmm2, %xmm6, %xmm6
	vpaddd	%xmm6, %xmm5, %xmm5
	vpaddd	%xmm3, %xmm5, %xmm5
	vpsrld	$14, %xmm5, %xmm5
	vpackssdw	%xmm5, %xmm4, %xmm4
	vpackuswb	%xmm4, %xmm1, %xmm1
	vmovdqa	%xmm1, (%r8,%rbx)
	vmovdqa	64(%rdi,%rbx,4), %xmm1
	vmovdqa	80(%rdi,%rbx,4), %xmm4
	vmovdqa	96(%rdi,%rbx,4), %xmm5
	vmovdqa	112(%rdi,%rbx,4), %xmm6
	vpsrlw	$8, %xmm1, %xmm7
	vpmaddwd	%xmm0, %xmm7, %xmm7
	vpand	%xmm8, %xmm1, %xmm1
	vpmaddwd	%xmm2, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm7, %xmm1
	vpaddd	%xmm3, %xmm1, %xmm1
	vpsrld	$14, %xmm1, %xmm1
	vpsrlw	$8, %xmm4, %xmm7
	vpmaddwd	%xmm0, %xmm7, %xmm7
	vpand	%xmm8, %xmm4, %xmm4
	vpmaddwd	%xmm2, %xmm4, %xmm4
	vpaddd	%xmm4, %xmm7, %xmm4
	vpaddd	%xmm3, %xmm4, %xmm4
	vpsrld	$14, %xmm4, %xmm4
	vpackssdw	%xmm4, %xmm1, %xmm1
	vpsrlw	$8, %xmm5, %xmm4
	vpmaddwd	%xmm0, %xmm4, %xmm4
	vpand	%xmm8, %xmm5, %xmm5
	vpmaddwd	%xmm2, %xmm5, %xmm5
	vpaddd	%xmm5, %xmm4, %xmm4
	vpaddd	%xmm3, %xmm4, %xmm4
	vpsrld	$14, %xmm4, %xmm4
	vpsrlw	$8, %xmm6, %xmm5
	vpmaddwd	%xmm0, %xmm5, %xmm5
	vpand	%xmm8, %xmm6, %xmm6
	vpmaddwd	%xmm2, %xmm6, %xmm6
	vpaddd	%xmm6, %xmm5, %xmm5
	vpaddd	%xmm3, %xmm5, %xmm5
	vpsrld	$14, %xmm5, %xmm5
	vpackssdw	%xmm5, %xmm4, %xmm4
	vpackuswb	%xmm4, %xmm1, %xmm1
	vmovdqa	%xmm1, 16(%r8,%rbx)
	addq	$32, %rbx
	addq	$2, %rax
	jne	.LBB0_11
# %bb.12:                               #   in Loop: Header=BB0_8 Depth=1
	testq	%r11, %r11
	je	.LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	vmovdqa	(%rdi,%rbx,4), %xmm1
	vmovdqa	16(%rdi,%rbx,4), %xmm4
	vmovdqa	32(%rdi,%rbx,4), %xmm5
	vmovdqa	48(%rdi,%rbx,4), %xmm6
	vpsrlw	$8, %xmm1, %xmm7
	vpmaddwd	%xmm0, %xmm7, %xmm7
	vpand	%xmm8, %xmm1, %xmm1
	vpmaddwd	%xmm2, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm7, %xmm1
	vpaddd	%xmm3, %xmm1, %xmm1
	vpsrld	$14, %xmm1, %xmm1
	vpsrlw	$8, %xmm4, %xmm7
	vpmaddwd	%xmm0, %xmm7, %xmm7
	vpand	%xmm8, %xmm4, %xmm4
	vpmaddwd	%xmm2, %xmm4, %xmm4
	vpaddd	%xmm4, %xmm7, %xmm4
	vpaddd	%xmm3, %xmm4, %xmm4
	vpsrld	$14, %xmm4, %xmm4
	vpackssdw	%xmm4, %xmm1, %xmm1
	vpsrlw	$8, %xmm5, %xmm4
	vpmaddwd	%xmm0, %xmm4, %xmm4
	vpand	%xmm8, %xmm5, %xmm5
	vpmaddwd	%xmm2, %xmm5, %xmm5
	vpaddd	%xmm5, %xmm4, %xmm4
	vpaddd	%xmm3, %xmm4, %xmm4
	vpsrld	$14, %xmm4, %xmm4
	vpsrlw	$8, %xmm6, %xmm5
	vpmaddwd	%xmm0, %xmm5, %xmm5
	vpand	%xmm8, %xmm6, %xmm6
	vpmaddwd	%xmm2, %xmm6, %xmm6
	vpaddd	%xmm6, %xmm5, %xmm5
	vpaddd	%xmm3, %xmm5, %xmm5
	vpsrld	$14, %xmm5, %xmm5
	vpackssdw	%xmm5, %xmm4, %xmm4
	vpackuswb	%xmm4, %xmm1, %xmm1
	vmovdqa	%xmm1, (%r8,%rbx)
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	addq	%rcx, %rdi
	addq	%r9, %r8
	addq	$1, %r14
	cmpq	%rdx, %r14
	jne	.LBB0_8
.LBB0_15:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB0_17:
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$62, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN4Simd4Sse210BgraToGrayEPKhmmmPhm, %ecx
	callq	__assert_fail
.LBB0_16:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$61, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN4Simd4Sse210BgraToGrayEPKhmmmPhm, %ecx
	callq	__assert_fail
.LBB0_18:
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$65, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN4Simd4Sse210BgraToGrayEPKhmmmPhm, %ecx
	callq	__assert_fail
.Lfunc_end0:
	.size	_ZN4Simd4Sse210BgraToGrayEPKhmmmPhm, .Lfunc_end0-_ZN4Simd4Sse210BgraToGrayEPKhmmmPhm
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_SimdSse2BgraToGray.cpp
	.type	_GLOBAL__sub_I_SimdSse2BgraToGray.cpp,@function
_GLOBAL__sub_I_SimdSse2BgraToGray.cpp:  # @_GLOBAL__sub_I_SimdSse2BgraToGray.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end1:
	.size	_GLOBAL__sub_I_SimdSse2BgraToGray.cpp, .Lfunc_end1-_GLOBAL__sub_I_SimdSse2BgraToGray.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"width >= A"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"SimdSse2BgraToGray/SimdSse2BgraToGray.cpp"
	.size	.L.str.1, 42

	.type	.L__PRETTY_FUNCTION__._ZN4Simd4Sse210BgraToGrayEPKhmmmPhm,@object # @__PRETTY_FUNCTION__._ZN4Simd4Sse210BgraToGrayEPKhmmmPhm
.L__PRETTY_FUNCTION__._ZN4Simd4Sse210BgraToGrayEPKhmmmPhm:
	.asciz	"void Simd::Sse2::BgraToGray(const uint8_t *__restrict, size_t, size_t, size_t, uint8_t *__restrict, size_t)"
	.size	.L__PRETTY_FUNCTION__._ZN4Simd4Sse210BgraToGrayEPKhmmmPhm, 108

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Aligned(bgra) && Aligned(bgraStride) && Aligned(gray) && Aligned(grayStride)"
	.size	.L.str.2, 77

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"alignedWidth == width"
	.size	.L.str.3, 22

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_SimdSse2BgraToGray.cpp

	.ident	"clang version 6.0.0-svn326550-1~exp1~20180305180131.61 (branches/release_60)"
	.section	".note.GNU-stack","",@progbits
