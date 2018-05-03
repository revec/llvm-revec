	.text
	.file	"SimdSse2BgraToGray.cpp"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5               # -- Begin function _ZN4Simd4Sse210BgraToGrayEPKhmmmPhm
.LCPI0_0:
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.zero	1
	.zero	1
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
.LCPI0_1:
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.zero	1
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.zero	1
.LCPI0_2:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_3:
	.long	9617                    # 0x2591
.LCPI0_4:
	.long	321062732               # 0x1323074c
.LCPI0_5:
	.long	8192                    # 0x2000
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_6:
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
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
	vbroadcastss	.LCPI0_3(%rip), %xmm0 # xmm0 = [9617,9617,9617,9617]
	vmovaps	%xmm0, 32(%rsp)         # 16-byte Spill
	vbroadcastss	.LCPI0_4(%rip), %xmm0 # xmm0 = [321062732,321062732,321062732,321062732]
	vmovaps	%xmm0, 16(%rsp)         # 16-byte Spill
	vpbroadcastd	.LCPI0_5(%rip), %xmm0 # xmm0 = [8192,8192,8192,8192]
	vmovdqa	%xmm0, (%rsp)           # 16-byte Spill
	vmovdqa	.LCPI0_0(%rip), %ymm4   # ymm4 = <0,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,u,u,0,0,0,0,0,0,0,0,0,0,0,0,0,0>
	vmovdqa	.LCPI0_1(%rip), %ymm5   # ymm5 = <0,255,255,255,255,255,255,255,255,255,255,255,255,255,255,u,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,u>
	vmovdqa	.LCPI0_2(%rip), %ymm6   # ymm6 = [255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0]
	vpbroadcastd	.LCPI0_3(%rip), %ymm7 # ymm7 = [9617,9617,9617,9617,9617,9617,9617,9617]
	vpbroadcastd	.LCPI0_4(%rip), %ymm8 # ymm8 = [321062732,321062732,321062732,321062732,321062732,321062732,321062732,321062732]
	vpbroadcastd	.LCPI0_5(%rip), %ymm9 # ymm9 = [8192,8192,8192,8192,8192,8192,8192,8192]
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
	vmovdqa	(%rdi,%rbx,4), %xmm12
	vmovdqa	16(%rdi,%rbx,4), %xmm11
	vpsrldq	$1, %xmm12, %xmm10      # xmm10 = xmm12[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vmovdqa	64(%rdi,%rbx,4), %xmm13
	vinserti128	$1, %xmm12, %ymm10, %ymm10
	vpblendvb	%ymm4, %ymm13, %ymm10, %ymm14
	vmovdqa	32(%rdi,%rbx,4), %xmm10
	vpermq	$78, %ymm14, %ymm15     # ymm15 = ymm14[2,3,0,1]
	vpsrldq	$1, %ymm15, %ymm15      # ymm15 = ymm15[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,ymm15[17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],zero
	vpblendvb	%ymm5, %ymm15, %ymm14, %ymm14
	vpsrldq	$1, %xmm11, %xmm15      # xmm15 = xmm11[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vinserti128	$1, %xmm13, %ymm12, %ymm12
	vmovdqa	80(%rdi,%rbx,4), %xmm13
	vpand	%ymm6, %ymm14, %ymm14
	vpmaddwd	%ymm7, %ymm14, %ymm14
	vpand	%ymm6, %ymm12, %ymm12
	vpmaddwd	%ymm8, %ymm12, %ymm12
	vpaddd	%ymm9, %ymm12, %ymm12
	vpaddd	%ymm12, %ymm14, %ymm14
	vinserti128	$1, %xmm11, %ymm15, %ymm12
	vpblendvb	%ymm4, %ymm13, %ymm12, %ymm12
	vpermq	$78, %ymm12, %ymm15     # ymm15 = ymm12[2,3,0,1]
	vpsrldq	$1, %ymm15, %ymm15      # ymm15 = ymm15[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,ymm15[17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],zero
	vpblendvb	%ymm5, %ymm15, %ymm12, %ymm15
	vmovdqa	48(%rdi,%rbx,4), %xmm12
	vinserti128	$1, %xmm13, %ymm11, %ymm11
	vpsrldq	$1, %xmm10, %xmm13      # xmm13 = xmm10[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vpand	%ymm6, %ymm15, %ymm15
	vpmaddwd	%ymm7, %ymm15, %ymm15
	vpand	%ymm6, %ymm11, %ymm11
	vpmaddwd	%ymm8, %ymm11, %ymm11
	vpaddd	%ymm9, %ymm11, %ymm11
	vpaddd	%ymm11, %ymm15, %ymm11
	vmovdqa	96(%rdi,%rbx,4), %xmm15
	vpsrld	$14, %ymm14, %ymm14
	vpsrld	$14, %ymm11, %ymm11
	vinserti128	$1, %xmm10, %ymm13, %ymm13
	vpblendvb	%ymm4, %ymm15, %ymm13, %ymm13
	vpackssdw	%ymm11, %ymm14, %ymm11
	vpermq	$78, %ymm13, %ymm14     # ymm14 = ymm13[2,3,0,1]
	vpsrldq	$1, %ymm14, %ymm14      # ymm14 = ymm14[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,ymm14[17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],zero
	vpblendvb	%ymm5, %ymm14, %ymm13, %ymm13
	vpsrldq	$1, %xmm12, %xmm14      # xmm14 = xmm12[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
	vinserti128	$1, %xmm15, %ymm10, %ymm10
	vmovdqa	112(%rdi,%rbx,4), %xmm15
	vpand	%ymm6, %ymm13, %ymm13
	vpmaddwd	%ymm7, %ymm13, %ymm13
	vpand	%ymm6, %ymm10, %ymm10
	vpmaddwd	%ymm8, %ymm10, %ymm10
	vpaddd	%ymm9, %ymm10, %ymm10
	vpaddd	%ymm10, %ymm13, %ymm10
	vinserti128	$1, %xmm12, %ymm14, %ymm13
	vpblendvb	%ymm4, %ymm15, %ymm13, %ymm13
	vpermq	$78, %ymm13, %ymm14     # ymm14 = ymm13[2,3,0,1]
	vpsrldq	$1, %ymm14, %ymm14      # ymm14 = ymm14[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,ymm14[17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],zero
	vpblendvb	%ymm5, %ymm14, %ymm13, %ymm13
	vinserti128	$1, %xmm15, %ymm12, %ymm12
	vpand	%ymm6, %ymm13, %ymm13
	vpmaddwd	%ymm7, %ymm13, %ymm13
	vpand	%ymm6, %ymm12, %ymm12
	vpmaddwd	%ymm8, %ymm12, %ymm12
	vpaddd	%ymm9, %ymm12, %ymm12
	vpaddd	%ymm12, %ymm13, %ymm12
	vpsrld	$14, %ymm10, %ymm10
	vpsrld	$14, %ymm12, %ymm12
	vpackssdw	%ymm12, %ymm10, %ymm10
	vpackuswb	%ymm10, %ymm11, %ymm10
	vmovdqu	%ymm10, (%r8,%rbx)
	addq	$32, %rbx
	addq	$2, %rax
	jne	.LBB0_11
# %bb.12:                               #   in Loop: Header=BB0_8 Depth=1
	testq	%r11, %r11
	je	.LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	vmovdqa	(%rdi,%rbx,4), %xmm1
	vmovdqa	16(%rdi,%rbx,4), %xmm0
	vmovdqa	32(%rdi,%rbx,4), %xmm12
	vmovdqa	48(%rdi,%rbx,4), %xmm10
	vpsrlw	$8, %xmm1, %xmm3
	vmovdqa	32(%rsp), %xmm11        # 16-byte Reload
	vpmaddwd	%xmm11, %xmm3, %xmm3
	vmovdqa	.LCPI0_6(%rip), %xmm2   # xmm2 = [255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0]
	vmovdqa	%xmm2, %xmm13
	vpand	%xmm13, %xmm1, %xmm1
	vmovdqa	16(%rsp), %xmm14        # 16-byte Reload
	vpmaddwd	%xmm14, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm3, %xmm1
	vmovdqa	(%rsp), %xmm15          # 16-byte Reload
	vpaddd	%xmm15, %xmm1, %xmm1
	vpsrld	$14, %xmm1, %xmm1
	vpsrlw	$8, %xmm0, %xmm3
	vpmaddwd	%xmm11, %xmm3, %xmm3
	vpand	%xmm13, %xmm0, %xmm0
	vpmaddwd	%xmm14, %xmm0, %xmm0
	vpaddd	%xmm0, %xmm3, %xmm0
	vpaddd	%xmm15, %xmm0, %xmm0
	vpsrld	$14, %xmm0, %xmm0
	vpackssdw	%xmm0, %xmm1, %xmm0
	vpsrlw	$8, %xmm12, %xmm1
	vpmaddwd	%xmm11, %xmm1, %xmm1
	vpand	%xmm13, %xmm12, %xmm2
	vpmaddwd	%xmm14, %xmm2, %xmm2
	vpaddd	%xmm2, %xmm1, %xmm1
	vpaddd	%xmm15, %xmm1, %xmm1
	vpsrld	$14, %xmm1, %xmm1
	vpsrlw	$8, %xmm10, %xmm2
	vpmaddwd	%xmm11, %xmm2, %xmm2
	vpand	%xmm13, %xmm10, %xmm3
	vpmaddwd	%xmm14, %xmm3, %xmm3
	vpaddd	%xmm3, %xmm2, %xmm2
	vpaddd	%xmm15, %xmm2, %xmm2
	vpsrld	$14, %xmm2, %xmm2
	vpackssdw	%xmm2, %xmm1, %xmm1
	vpackuswb	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, (%r8,%rbx)
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	addq	%rcx, %rdi
	addq	%r9, %r8
	addq	$1, %r14
	cmpq	%rdx, %r14
	jne	.LBB0_8
.LBB0_15:
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	vzeroupper
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
