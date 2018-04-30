	.text
	.file	"SimdSse2Neural.cpp"
	.globl	_ZN4Simd4Sse26InvertILb1EEEDv2_xS2_ # -- Begin function _ZN4Simd4Sse26InvertILb1EEEDv2_xS2_
	.p2align	4, 0x90
	.type	_ZN4Simd4Sse26InvertILb1EEEDv2_xS2_,@function
_ZN4Simd4Sse26InvertILb1EEEDv2_xS2_:    # @_ZN4Simd4Sse26InvertILb1EEEDv2_xS2_
	.cfi_startproc
# %bb.0:
	vpcmpeqd	%xmm1, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	retq
.Lfunc_end0:
	.size	_ZN4Simd4Sse26InvertILb1EEEDv2_xS2_, .Lfunc_end0-_ZN4Simd4Sse26InvertILb1EEEDv2_xS2_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Simd4Sse26InvertILb0EEEDv2_xS2_ # -- Begin function _ZN4Simd4Sse26InvertILb0EEEDv2_xS2_
	.p2align	4, 0x90
	.type	_ZN4Simd4Sse26InvertILb0EEEDv2_xS2_,@function
_ZN4Simd4Sse26InvertILb0EEEDv2_xS2_:    # @_ZN4Simd4Sse26InvertILb0EEEDv2_xS2_
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end1:
	.size	_ZN4Simd4Sse26InvertILb0EEEDv2_xS2_, .Lfunc_end1-_ZN4Simd4Sse26InvertILb0EEEDv2_xS2_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Simd4Sse213NeuralConvertEPKhmmmPfi # -- Begin function _ZN4Simd4Sse213NeuralConvertEPKhmmmPfi
	.p2align	4, 0x90
	.type	_ZN4Simd4Sse213NeuralConvertEPKhmmmPfi,@function
_ZN4Simd4Sse213NeuralConvertEPKhmmmPfi: # @_ZN4Simd4Sse213NeuralConvertEPKhmmmPfi
	.cfi_startproc
# %bb.0:
	testl	%r9d, %r9d
	je	.LBB2_2
# %bb.1:
	jmp	_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf # TAILCALL
.LBB2_2:
	jmp	_ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf # TAILCALL
.Lfunc_end2:
	.size	_ZN4Simd4Sse213NeuralConvertEPKhmmmPfi, .Lfunc_end2-_ZN4Simd4Sse213NeuralConvertEPKhmmmPfi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf,"axG",@progbits,_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf,comdat
	.weak	_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf # -- Begin function _ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf
	.p2align	4, 0x90
	.type	_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf,@function
_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf: # @_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	testb	$15, %sil
	jne	.LBB3_18
# %bb.1:
	movq	%rdi, %rax
	andq	$-16, %rax
	cmpq	%rdi, %rax
	jne	.LBB3_18
# %bb.2:
	testb	$15, %dl
	jne	.LBB3_18
# %bb.3:
	movq	%r8, %rax
	andq	$-16, %rax
	cmpq	%r8, %rax
	jne	.LBB3_18
# %bb.4:
	movq	%rdx, %rax
	imulq	%rcx, %rax
	shlq	$2, %rax
	cmpq	$1048576, %rax          # imm = 0x100000
	jb	.LBB3_12
# %bb.5:
	cmpq	$15, %rdx
	jbe	.LBB3_33
# %bb.6:
	testq	%rcx, %rcx
	je	.LBB3_11
# %bb.7:
	leaq	(,%rdx,4), %r9
	xorl	%r10d, %r10d
	vcvtdq2ps	%ymm0, %ymm0
	vmulps	%ymm0, %ymm0, %ymm0
	.p2align	4, 0x90
.LBB3_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_9:                                #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	%ymm0, (%r8,%rax,4)
	vmovups	%ymm0, 32(%r8,%rax,4)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jb	.LBB3_9
# %bb.10:                               #   in Loop: Header=BB3_8 Depth=1
	addq	%rsi, %rdi
	addq	%r9, %r8
	addq	$1, %r10
	cmpq	%rcx, %r10
	jne	.LBB3_8
.LBB3_11:
	mfence
	popq	%rax
	vzeroupper
	retq
.LBB3_18:
	cmpq	$15, %rdx
	jbe	.LBB3_35
# %bb.19:
	testq	%rcx, %rcx
	je	.LBB3_32
# %bb.20:
	movq	%rdx, %r11
	andq	$-16, %r11
	je	.LBB3_29
# %bb.21:
	leaq	(,%rdx,4), %r9
	xorl	%r10d, %r10d
	vcvtdq2ps	%ymm0, %ymm0
	vmulps	%ymm0, %ymm0, %ymm0
	cmpq	%rdx, %r11
	jne	.LBB3_22
	.p2align	4, 0x90
.LBB3_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_27 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_27:                               #   Parent Loop BB3_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	%ymm0, (%r8,%rax,4)
	vmovups	%ymm0, 32(%r8,%rax,4)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jb	.LBB3_27
# %bb.28:                               #   in Loop: Header=BB3_26 Depth=1
	addq	%r9, %r8
	addq	%rsi, %rdi
	addq	$1, %r10
	cmpq	%rcx, %r10
	jne	.LBB3_26
	jmp	.LBB3_32
.LBB3_29:
	cmpq	%rdx, %r11
	je	.LBB3_32
# %bb.30:
	leaq	(%rdi,%rdx), %rax
	addq	$-16, %rax
	leaq	(%r8,%rdx,4), %rdi
	addq	$-32, %rdi
	leaq	(,%rdx,4), %r9
	vcvtdq2ps	%ymm0, %ymm0
	vmulps	%ymm0, %ymm0, %ymm0
	.p2align	4, 0x90
.LBB3_31:                               # =>This Inner Loop Header: Depth=1
	vmovups	%ymm0, -32(%rdi)
	leaq	(%r8,%rdx,4), %r8
	vmovups	%ymm0, (%rdi)
	addq	%rsi, %rax
	addq	%r9, %rdi
	addq	$-1, %rcx
	jne	.LBB3_31
	jmp	.LBB3_32
.LBB3_22:
	vcvtdq2ps	%ymm0, %ymm1
	vmulps	%ymm0, %ymm1, %ymm1
	.p2align	4, 0x90
.LBB3_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_24 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_24:                               #   Parent Loop BB3_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	%ymm0, (%r8,%rax,4)
	vmovups	%ymm0, 32(%r8,%rax,4)
	addq	$16, %rax
	cmpq	%r11, %rax
	jb	.LBB3_24
# %bb.25:                               #   in Loop: Header=BB3_23 Depth=1
	vmovups	%ymm1, -64(%r8,%rdx,4)
	vmovups	%ymm1, -32(%r8,%rdx,4)
	leaq	(%r8,%r9), %r8
	addq	%rsi, %rdi
	addq	$1, %r10
	cmpq	%rcx, %r10
	jne	.LBB3_23
	jmp	.LBB3_32
.LBB3_12:
	cmpq	$15, %rdx
	jbe	.LBB3_34
# %bb.13:
	testq	%rcx, %rcx
	je	.LBB3_32
# %bb.14:
	leaq	(,%rdx,4), %r9
	xorl	%r10d, %r10d
	vcvtdq2ps	%ymm0, %ymm0
	vmulps	%ymm0, %ymm0, %ymm0
	.p2align	4, 0x90
.LBB3_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_16:                               #   Parent Loop BB3_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	%ymm0, (%r8,%rax,4)
	vmovups	%ymm0, 32(%r8,%rax,4)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jb	.LBB3_16
# %bb.17:                               #   in Loop: Header=BB3_15 Depth=1
	addq	%rsi, %rdi
	addq	%r9, %r8
	addq	$1, %r10
	cmpq	%rcx, %r10
	jne	.LBB3_15
.LBB3_32:
	popq	%rax
	vzeroupper
	retq
.LBB3_35:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$61, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb0ELb0EEEvPKhmmmPf, %ecx
	callq	__assert_fail
.LBB3_33:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$61, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb1EEEvPKhmmmPf, %ecx
	callq	__assert_fail
.LBB3_34:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$61, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb0EEEvPKhmmmPf, %ecx
	callq	__assert_fail
.Lfunc_end3:
	.size	_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf, .Lfunc_end3-_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf,"axG",@progbits,_ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf,comdat
	.weak	_ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf # -- Begin function _ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf
	.p2align	4, 0x90
	.type	_ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf,@function
_ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf: # @_ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	testb	$15, %sil
	jne	.LBB4_18
# %bb.1:
	movq	%rdi, %rax
	andq	$-16, %rax
	cmpq	%rdi, %rax
	jne	.LBB4_18
# %bb.2:
	testb	$15, %dl
	jne	.LBB4_18
# %bb.3:
	movq	%r8, %rax
	andq	$-16, %rax
	cmpq	%r8, %rax
	jne	.LBB4_18
# %bb.4:
	movq	%rdx, %rax
	imulq	%rcx, %rax
	shlq	$2, %rax
	cmpq	$1048576, %rax          # imm = 0x100000
	jb	.LBB4_12
# %bb.5:
	cmpq	$15, %rdx
	jbe	.LBB4_33
# %bb.6:
	testq	%rcx, %rcx
	je	.LBB4_11
# %bb.7:
	leaq	(,%rdx,4), %r9
	xorl	%r10d, %r10d
	vcvtdq2ps	%ymm0, %ymm0
	vmulps	%ymm0, %ymm0, %ymm0
	.p2align	4, 0x90
.LBB4_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_9:                                #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	%ymm0, (%r8,%rax,4)
	vmovups	%ymm0, 32(%r8,%rax,4)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jb	.LBB4_9
# %bb.10:                               #   in Loop: Header=BB4_8 Depth=1
	addq	%rsi, %rdi
	addq	%r9, %r8
	addq	$1, %r10
	cmpq	%rcx, %r10
	jne	.LBB4_8
.LBB4_11:
	mfence
	popq	%rax
	vzeroupper
	retq
.LBB4_18:
	cmpq	$15, %rdx
	jbe	.LBB4_35
# %bb.19:
	testq	%rcx, %rcx
	je	.LBB4_32
# %bb.20:
	movq	%rdx, %r11
	andq	$-16, %r11
	je	.LBB4_29
# %bb.21:
	leaq	(,%rdx,4), %r9
	xorl	%r10d, %r10d
	vcvtdq2ps	%ymm0, %ymm0
	vmulps	%ymm0, %ymm0, %ymm0
	cmpq	%rdx, %r11
	jne	.LBB4_22
	.p2align	4, 0x90
.LBB4_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_27 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_27:                               #   Parent Loop BB4_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	%ymm0, (%r8,%rax,4)
	vmovups	%ymm0, 32(%r8,%rax,4)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jb	.LBB4_27
# %bb.28:                               #   in Loop: Header=BB4_26 Depth=1
	addq	%r9, %r8
	addq	%rsi, %rdi
	addq	$1, %r10
	cmpq	%rcx, %r10
	jne	.LBB4_26
	jmp	.LBB4_32
.LBB4_29:
	cmpq	%rdx, %r11
	je	.LBB4_32
# %bb.30:
	leaq	(%rdi,%rdx), %rax
	addq	$-16, %rax
	leaq	(%r8,%rdx,4), %rdi
	addq	$-32, %rdi
	leaq	(,%rdx,4), %r9
	vcvtdq2ps	%ymm0, %ymm0
	vmulps	%ymm0, %ymm0, %ymm0
	.p2align	4, 0x90
.LBB4_31:                               # =>This Inner Loop Header: Depth=1
	vmovups	%ymm0, -32(%rdi)
	leaq	(%r8,%rdx,4), %r8
	vmovups	%ymm0, (%rdi)
	addq	%rsi, %rax
	addq	%r9, %rdi
	addq	$-1, %rcx
	jne	.LBB4_31
	jmp	.LBB4_32
.LBB4_22:
	vcvtdq2ps	%ymm0, %ymm1
	vmulps	%ymm0, %ymm1, %ymm1
	.p2align	4, 0x90
.LBB4_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_24 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_24:                               #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	%ymm0, (%r8,%rax,4)
	vmovups	%ymm0, 32(%r8,%rax,4)
	addq	$16, %rax
	cmpq	%r11, %rax
	jb	.LBB4_24
# %bb.25:                               #   in Loop: Header=BB4_23 Depth=1
	vmovups	%ymm1, -64(%r8,%rdx,4)
	vmovups	%ymm1, -32(%r8,%rdx,4)
	leaq	(%r8,%r9), %r8
	addq	%rsi, %rdi
	addq	$1, %r10
	cmpq	%rcx, %r10
	jne	.LBB4_23
	jmp	.LBB4_32
.LBB4_12:
	cmpq	$15, %rdx
	jbe	.LBB4_34
# %bb.13:
	testq	%rcx, %rcx
	je	.LBB4_32
# %bb.14:
	leaq	(,%rdx,4), %r9
	xorl	%r10d, %r10d
	vcvtdq2ps	%ymm0, %ymm0
	vmulps	%ymm0, %ymm0, %ymm0
	.p2align	4, 0x90
.LBB4_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_16 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_16:                               #   Parent Loop BB4_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	%ymm0, (%r8,%rax,4)
	vmovups	%ymm0, 32(%r8,%rax,4)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jb	.LBB4_16
# %bb.17:                               #   in Loop: Header=BB4_15 Depth=1
	addq	%rsi, %rdi
	addq	%r9, %r8
	addq	$1, %r10
	cmpq	%rcx, %r10
	jne	.LBB4_15
.LBB4_32:
	popq	%rax
	vzeroupper
	retq
.LBB4_35:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$61, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb0ELb0EEEvPKhmmmPf, %ecx
	callq	__assert_fail
.LBB4_33:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$61, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb1EEEvPKhmmmPf, %ecx
	callq	__assert_fail
.LBB4_34:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$61, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb0EEEvPKhmmmPf, %ecx
	callq	__assert_fail
.Lfunc_end4:
	.size	_ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf, .Lfunc_end4-_ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"width >= A"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"SimdSse2Neural.cpp"
	.size	.L.str.1, 19

	.type	.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb1EEEvPKhmmmPf,@object # @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb1EEEvPKhmmmPf
.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb1EEEvPKhmmmPf:
	.asciz	"void Simd::Sse2::NeuralConvert(const uint8_t *, size_t, size_t, size_t, float *) [inversion = true, align = true, stream = true]"
	.size	.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb1EEEvPKhmmmPf, 129

	.type	.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb0EEEvPKhmmmPf,@object # @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb0EEEvPKhmmmPf
.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb0EEEvPKhmmmPf:
	.asciz	"void Simd::Sse2::NeuralConvert(const uint8_t *, size_t, size_t, size_t, float *) [inversion = true, align = true, stream = false]"
	.size	.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb0EEEvPKhmmmPf, 130

	.type	.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb0ELb0EEEvPKhmmmPf,@object # @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb0ELb0EEEvPKhmmmPf
.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb0ELb0EEEvPKhmmmPf:
	.asciz	"void Simd::Sse2::NeuralConvert(const uint8_t *, size_t, size_t, size_t, float *) [inversion = true, align = false, stream = false]"
	.size	.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb0ELb0EEEvPKhmmmPf, 131

	.type	.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb1EEEvPKhmmmPf,@object # @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb1EEEvPKhmmmPf
.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb1EEEvPKhmmmPf:
	.asciz	"void Simd::Sse2::NeuralConvert(const uint8_t *, size_t, size_t, size_t, float *) [inversion = false, align = true, stream = true]"
	.size	.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb1EEEvPKhmmmPf, 130

	.type	.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb0EEEvPKhmmmPf,@object # @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb0EEEvPKhmmmPf
.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb0EEEvPKhmmmPf:
	.asciz	"void Simd::Sse2::NeuralConvert(const uint8_t *, size_t, size_t, size_t, float *) [inversion = false, align = true, stream = false]"
	.size	.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb0EEEvPKhmmmPf, 131

	.type	.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb0ELb0EEEvPKhmmmPf,@object # @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb0ELb0EEEvPKhmmmPf
.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb0ELb0EEEvPKhmmmPf:
	.asciz	"void Simd::Sse2::NeuralConvert(const uint8_t *, size_t, size_t, size_t, float *) [inversion = false, align = false, stream = false]"
	.size	.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb0ELb0EEEvPKhmmmPf, 132


	.ident	"clang version 6.0.0-svn326550-1~exp1~20180305180131.61 (branches/release_60)"
	.section	".note.GNU-stack","",@progbits
