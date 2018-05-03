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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5               # -- Begin function _ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf
.LCPI3_0:
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	2                       # 0x2
	.byte	3                       # 0x3
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	4                       # 0x4
	.byte	5                       # 0x5
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	6                       # 0x6
	.byte	7                       # 0x7
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	24                      # 0x18
	.byte	25                      # 0x19
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	26                      # 0x1a
	.byte	27                      # 0x1b
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	28                      # 0x1c
	.byte	29                      # 0x1d
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	30                      # 0x1e
	.byte	31                      # 0x1f
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI3_1:
	.long	998277249               # float 0.00392156886
	.section	.text._ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf,"axG",@progbits,_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf,comdat
	.weak	_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf
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
	jbe	.LBB3_32
# %bb.6:
	testq	%rcx, %rcx
	je	.LBB3_11
# %bb.7:
	leaq	(,%rdx,4), %r9
	xorl	%r10d, %r10d
	vpcmpeqd	%xmm0, %xmm0, %xmm0
	vmovdqa	.LCPI3_0(%rip), %ymm1   # ymm1 = [0,1,255,255,2,3,255,255,4,5,255,255,6,7,255,255,24,25,255,255,26,27,255,255,28,29,255,255,30,31,255,255]
	vbroadcastss	.LCPI3_1(%rip), %ymm2 # ymm2 = [0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886]
	vpxor	%xmm3, %xmm3, %xmm3
	.p2align	4, 0x90
.LBB3_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_9:                                #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpxor	(%rdi,%rax), %xmm0, %xmm4
	vpmovzxbw	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpmovzxwd	%xmm5, %xmm6    # xmm6 = xmm5[0],zero,xmm5[1],zero,xmm5[2],zero,xmm5[3],zero
	vinserti128	$1, %xmm5, %ymm6, %ymm5
	vpermq	$78, %ymm5, %ymm6       # ymm6 = ymm5[2,3,0,1]
	vpblendw	$14, %ymm6, %ymm5, %ymm5 # ymm5 = ymm5[0],ymm6[1,2,3],ymm5[4,5,6,7,8],ymm6[9,10,11],ymm5[12,13,14,15]
	vpshufb	%ymm1, %ymm5, %ymm5
	vcvtdq2ps	%ymm5, %ymm5
	vmulps	%ymm2, %ymm5, %ymm5
	vmovups	%ymm5, (%r8,%rax,4)
	vpunpckhbw	%xmm3, %xmm4, %xmm4 # xmm4 = xmm4[8],xmm3[8],xmm4[9],xmm3[9],xmm4[10],xmm3[10],xmm4[11],xmm3[11],xmm4[12],xmm3[12],xmm4[13],xmm3[13],xmm4[14],xmm3[14],xmm4[15],xmm3[15]
	vpmovzxwd	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vpermq	$78, %ymm4, %ymm5       # ymm5 = ymm4[2,3,0,1]
	vpblendw	$14, %ymm5, %ymm4, %ymm4 # ymm4 = ymm4[0],ymm5[1,2,3],ymm4[4,5,6,7,8],ymm5[9,10,11],ymm4[12,13,14,15]
	vpshufb	%ymm1, %ymm4, %ymm4
	vcvtdq2ps	%ymm4, %ymm4
	vmulps	%ymm2, %ymm4, %ymm4
	vmovups	%ymm4, 32(%r8,%rax,4)
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
	jbe	.LBB3_34
# %bb.19:
	testq	%rcx, %rcx
	je	.LBB3_31
# %bb.20:
	movq	%rdx, %r11
	andq	$-16, %r11
	je	.LBB3_28
# %bb.21:
	leaq	(,%rdx,4), %r9
	xorl	%r10d, %r10d
	vpcmpeqd	%xmm0, %xmm0, %xmm0
	vmovdqa	.LCPI3_0(%rip), %ymm1   # ymm1 = [0,1,255,255,2,3,255,255,4,5,255,255,6,7,255,255,24,25,255,255,26,27,255,255,28,29,255,255,30,31,255,255]
	vbroadcastss	.LCPI3_1(%rip), %ymm2 # ymm2 = [0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886]
	vpxor	%xmm3, %xmm3, %xmm3
	cmpq	%rdx, %r11
	jne	.LBB3_22
	.p2align	4, 0x90
.LBB3_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_26 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_26:                               #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpxor	(%rdi,%rax), %xmm0, %xmm4
	vpmovzxbw	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpmovzxwd	%xmm5, %xmm6    # xmm6 = xmm5[0],zero,xmm5[1],zero,xmm5[2],zero,xmm5[3],zero
	vinserti128	$1, %xmm5, %ymm6, %ymm5
	vpermq	$78, %ymm5, %ymm6       # ymm6 = ymm5[2,3,0,1]
	vpblendw	$14, %ymm6, %ymm5, %ymm5 # ymm5 = ymm5[0],ymm6[1,2,3],ymm5[4,5,6,7,8],ymm6[9,10,11],ymm5[12,13,14,15]
	vpshufb	%ymm1, %ymm5, %ymm5
	vcvtdq2ps	%ymm5, %ymm5
	vmulps	%ymm2, %ymm5, %ymm5
	vmovups	%ymm5, (%r8,%rax,4)
	vpunpckhbw	%xmm3, %xmm4, %xmm4 # xmm4 = xmm4[8],xmm3[8],xmm4[9],xmm3[9],xmm4[10],xmm3[10],xmm4[11],xmm3[11],xmm4[12],xmm3[12],xmm4[13],xmm3[13],xmm4[14],xmm3[14],xmm4[15],xmm3[15]
	vpmovzxwd	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vpermq	$78, %ymm4, %ymm5       # ymm5 = ymm4[2,3,0,1]
	vpblendw	$14, %ymm5, %ymm4, %ymm4 # ymm4 = ymm4[0],ymm5[1,2,3],ymm4[4,5,6,7,8],ymm5[9,10,11],ymm4[12,13,14,15]
	vpshufb	%ymm1, %ymm4, %ymm4
	vcvtdq2ps	%ymm4, %ymm4
	vmulps	%ymm2, %ymm4, %ymm4
	vmovups	%ymm4, 32(%r8,%rax,4)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jb	.LBB3_26
# %bb.27:                               #   in Loop: Header=BB3_25 Depth=1
	addq	%r9, %r8
	addq	%rsi, %rdi
	addq	$1, %r10
	cmpq	%rcx, %r10
	jne	.LBB3_25
	jmp	.LBB3_31
	.p2align	4, 0x90
.LBB3_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_23 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_23:                               #   Parent Loop BB3_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpxor	(%rdi,%rax), %xmm0, %xmm4
	vpmovzxbw	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpmovzxwd	%xmm5, %xmm6    # xmm6 = xmm5[0],zero,xmm5[1],zero,xmm5[2],zero,xmm5[3],zero
	vinserti128	$1, %xmm5, %ymm6, %ymm5
	vpermq	$78, %ymm5, %ymm6       # ymm6 = ymm5[2,3,0,1]
	vpblendw	$14, %ymm6, %ymm5, %ymm5 # ymm5 = ymm5[0],ymm6[1,2,3],ymm5[4,5,6,7,8],ymm6[9,10,11],ymm5[12,13,14,15]
	vpshufb	%ymm1, %ymm5, %ymm5
	vcvtdq2ps	%ymm5, %ymm5
	vmulps	%ymm2, %ymm5, %ymm5
	vmovups	%ymm5, (%r8,%rax,4)
	vpunpckhbw	%xmm3, %xmm4, %xmm4 # xmm4 = xmm4[8],xmm3[8],xmm4[9],xmm3[9],xmm4[10],xmm3[10],xmm4[11],xmm3[11],xmm4[12],xmm3[12],xmm4[13],xmm3[13],xmm4[14],xmm3[14],xmm4[15],xmm3[15]
	vpmovzxwd	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vpermq	$78, %ymm4, %ymm5       # ymm5 = ymm4[2,3,0,1]
	vpblendw	$14, %ymm5, %ymm4, %ymm4 # ymm4 = ymm4[0],ymm5[1,2,3],ymm4[4,5,6,7,8],ymm5[9,10,11],ymm4[12,13,14,15]
	vpshufb	%ymm1, %ymm4, %ymm4
	vcvtdq2ps	%ymm4, %ymm4
	vmulps	%ymm2, %ymm4, %ymm4
	vmovups	%ymm4, 32(%r8,%rax,4)
	addq	$16, %rax
	cmpq	%r11, %rax
	jb	.LBB3_23
# %bb.24:                               #   in Loop: Header=BB3_22 Depth=1
	vpxor	-16(%rdi,%rdx), %xmm0, %xmm4
	vpmovzxbw	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpmovzxwd	%xmm5, %xmm6    # xmm6 = xmm5[0],zero,xmm5[1],zero,xmm5[2],zero,xmm5[3],zero
	vinserti128	$1, %xmm5, %ymm6, %ymm5
	vpermq	$78, %ymm5, %ymm6       # ymm6 = ymm5[2,3,0,1]
	vpblendw	$14, %ymm6, %ymm5, %ymm5 # ymm5 = ymm5[0],ymm6[1,2,3],ymm5[4,5,6,7,8],ymm6[9,10,11],ymm5[12,13,14,15]
	vpshufb	%ymm1, %ymm5, %ymm5
	vcvtdq2ps	%ymm5, %ymm5
	vmulps	%ymm2, %ymm5, %ymm5
	vmovups	%ymm5, -64(%r8,%rdx,4)
	vpunpckhbw	%xmm3, %xmm4, %xmm4 # xmm4 = xmm4[8],xmm3[8],xmm4[9],xmm3[9],xmm4[10],xmm3[10],xmm4[11],xmm3[11],xmm4[12],xmm3[12],xmm4[13],xmm3[13],xmm4[14],xmm3[14],xmm4[15],xmm3[15]
	vpmovzxwd	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vpermq	$78, %ymm4, %ymm5       # ymm5 = ymm4[2,3,0,1]
	vpblendw	$14, %ymm5, %ymm4, %ymm4 # ymm4 = ymm4[0],ymm5[1,2,3],ymm4[4,5,6,7,8],ymm5[9,10,11],ymm4[12,13,14,15]
	vpshufb	%ymm1, %ymm4, %ymm4
	vcvtdq2ps	%ymm4, %ymm4
	vmulps	%ymm2, %ymm4, %ymm4
	vmovups	%ymm4, -32(%r8,%rdx,4)
	leaq	(%r8,%r9), %r8
	addq	%rsi, %rdi
	addq	$1, %r10
	cmpq	%rcx, %r10
	jne	.LBB3_22
	jmp	.LBB3_31
.LBB3_28:
	cmpq	%rdx, %r11
	je	.LBB3_31
# %bb.29:
	leaq	(%rdi,%rdx), %rax
	addq	$-16, %rax
	leaq	-32(%r8,%rdx,4), %rdi
	leaq	(,%rdx,4), %r9
	vpcmpeqd	%xmm0, %xmm0, %xmm0
	vmovdqa	.LCPI3_0(%rip), %ymm1   # ymm1 = [0,1,255,255,2,3,255,255,4,5,255,255,6,7,255,255,24,25,255,255,26,27,255,255,28,29,255,255,30,31,255,255]
	vbroadcastss	.LCPI3_1(%rip), %ymm2 # ymm2 = [0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886]
	vpxor	%xmm3, %xmm3, %xmm3
	.p2align	4, 0x90
.LBB3_30:                               # =>This Inner Loop Header: Depth=1
	vpxor	(%rax), %xmm0, %xmm4
	leaq	(%r8,%rdx,4), %r8
	vpmovzxbw	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpmovzxwd	%xmm5, %xmm6    # xmm6 = xmm5[0],zero,xmm5[1],zero,xmm5[2],zero,xmm5[3],zero
	vinserti128	$1, %xmm5, %ymm6, %ymm5
	vpermq	$78, %ymm5, %ymm6       # ymm6 = ymm5[2,3,0,1]
	vpblendw	$14, %ymm6, %ymm5, %ymm5 # ymm5 = ymm5[0],ymm6[1,2,3],ymm5[4,5,6,7,8],ymm6[9,10,11],ymm5[12,13,14,15]
	vpshufb	%ymm1, %ymm5, %ymm5
	vcvtdq2ps	%ymm5, %ymm5
	vmulps	%ymm2, %ymm5, %ymm5
	vmovups	%ymm5, -32(%rdi)
	vpunpckhbw	%xmm3, %xmm4, %xmm4 # xmm4 = xmm4[8],xmm3[8],xmm4[9],xmm3[9],xmm4[10],xmm3[10],xmm4[11],xmm3[11],xmm4[12],xmm3[12],xmm4[13],xmm3[13],xmm4[14],xmm3[14],xmm4[15],xmm3[15]
	vpmovzxwd	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vpermq	$78, %ymm4, %ymm5       # ymm5 = ymm4[2,3,0,1]
	vpblendw	$14, %ymm5, %ymm4, %ymm4 # ymm4 = ymm4[0],ymm5[1,2,3],ymm4[4,5,6,7,8],ymm5[9,10,11],ymm4[12,13,14,15]
	vpshufb	%ymm1, %ymm4, %ymm4
	vcvtdq2ps	%ymm4, %ymm4
	vmulps	%ymm2, %ymm4, %ymm4
	vmovups	%ymm4, (%rdi)
	addq	%rsi, %rax
	addq	%r9, %rdi
	addq	$-1, %rcx
	jne	.LBB3_30
	jmp	.LBB3_31
.LBB3_12:
	cmpq	$15, %rdx
	jbe	.LBB3_33
# %bb.13:
	testq	%rcx, %rcx
	je	.LBB3_31
# %bb.14:
	leaq	(,%rdx,4), %r9
	xorl	%r10d, %r10d
	vpcmpeqd	%xmm0, %xmm0, %xmm0
	vmovdqa	.LCPI3_0(%rip), %ymm1   # ymm1 = [0,1,255,255,2,3,255,255,4,5,255,255,6,7,255,255,24,25,255,255,26,27,255,255,28,29,255,255,30,31,255,255]
	vbroadcastss	.LCPI3_1(%rip), %ymm2 # ymm2 = [0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886]
	vpxor	%xmm3, %xmm3, %xmm3
	.p2align	4, 0x90
.LBB3_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_16:                               #   Parent Loop BB3_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpxor	(%rdi,%rax), %xmm0, %xmm4
	vpmovzxbw	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpmovzxwd	%xmm5, %xmm6    # xmm6 = xmm5[0],zero,xmm5[1],zero,xmm5[2],zero,xmm5[3],zero
	vinserti128	$1, %xmm5, %ymm6, %ymm5
	vpermq	$78, %ymm5, %ymm6       # ymm6 = ymm5[2,3,0,1]
	vpblendw	$14, %ymm6, %ymm5, %ymm5 # ymm5 = ymm5[0],ymm6[1,2,3],ymm5[4,5,6,7,8],ymm6[9,10,11],ymm5[12,13,14,15]
	vpshufb	%ymm1, %ymm5, %ymm5
	vcvtdq2ps	%ymm5, %ymm5
	vmulps	%ymm2, %ymm5, %ymm5
	vmovups	%ymm5, (%r8,%rax,4)
	vpunpckhbw	%xmm3, %xmm4, %xmm4 # xmm4 = xmm4[8],xmm3[8],xmm4[9],xmm3[9],xmm4[10],xmm3[10],xmm4[11],xmm3[11],xmm4[12],xmm3[12],xmm4[13],xmm3[13],xmm4[14],xmm3[14],xmm4[15],xmm3[15]
	vpmovzxwd	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vpermq	$78, %ymm4, %ymm5       # ymm5 = ymm4[2,3,0,1]
	vpblendw	$14, %ymm5, %ymm4, %ymm4 # ymm4 = ymm4[0],ymm5[1,2,3],ymm4[4,5,6,7,8],ymm5[9,10,11],ymm4[12,13,14,15]
	vpshufb	%ymm1, %ymm4, %ymm4
	vcvtdq2ps	%ymm4, %ymm4
	vmulps	%ymm2, %ymm4, %ymm4
	vmovups	%ymm4, 32(%r8,%rax,4)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jb	.LBB3_16
# %bb.17:                               #   in Loop: Header=BB3_15 Depth=1
	addq	%rsi, %rdi
	addq	%r9, %r8
	addq	$1, %r10
	cmpq	%rcx, %r10
	jne	.LBB3_15
.LBB3_31:
	popq	%rax
	vzeroupper
	retq
.LBB3_34:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$61, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb0ELb0EEEvPKhmmmPf, %ecx
	callq	__assert_fail
.LBB3_32:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$61, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb1EEEvPKhmmmPf, %ecx
	callq	__assert_fail
.LBB3_33:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$61, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb0EEEvPKhmmmPf, %ecx
	callq	__assert_fail
.Lfunc_end3:
	.size	_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf, .Lfunc_end3-_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5               # -- Begin function _ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf
.LCPI4_0:
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	2                       # 0x2
	.byte	3                       # 0x3
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	4                       # 0x4
	.byte	5                       # 0x5
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	6                       # 0x6
	.byte	7                       # 0x7
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	24                      # 0x18
	.byte	25                      # 0x19
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	26                      # 0x1a
	.byte	27                      # 0x1b
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	28                      # 0x1c
	.byte	29                      # 0x1d
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	30                      # 0x1e
	.byte	31                      # 0x1f
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI4_1:
	.long	998277249               # float 0.00392156886
	.section	.text._ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf,"axG",@progbits,_ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf,comdat
	.weak	_ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf
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
	jbe	.LBB4_32
# %bb.6:
	testq	%rcx, %rcx
	je	.LBB4_11
# %bb.7:
	leaq	(,%rdx,4), %r9
	xorl	%r10d, %r10d
	vmovdqa	.LCPI4_0(%rip), %ymm0   # ymm0 = [0,1,255,255,2,3,255,255,4,5,255,255,6,7,255,255,24,25,255,255,26,27,255,255,28,29,255,255,30,31,255,255]
	vbroadcastss	.LCPI4_1(%rip), %ymm1 # ymm1 = [0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886]
	vpxor	%xmm2, %xmm2, %xmm2
	.p2align	4, 0x90
.LBB4_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_9:                                #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovdqa	(%rdi,%rax), %xmm3
	vpmovzxbw	%xmm3, %xmm4    # xmm4 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpmovzxwd	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vpermq	$78, %ymm4, %ymm5       # ymm5 = ymm4[2,3,0,1]
	vpblendw	$14, %ymm5, %ymm4, %ymm4 # ymm4 = ymm4[0],ymm5[1,2,3],ymm4[4,5,6,7,8],ymm5[9,10,11],ymm4[12,13,14,15]
	vpshufb	%ymm0, %ymm4, %ymm4
	vcvtdq2ps	%ymm4, %ymm4
	vmulps	%ymm1, %ymm4, %ymm4
	vmovups	%ymm4, (%r8,%rax,4)
	vpunpckhbw	%xmm2, %xmm3, %xmm3 # xmm3 = xmm3[8],xmm2[8],xmm3[9],xmm2[9],xmm3[10],xmm2[10],xmm3[11],xmm2[11],xmm3[12],xmm2[12],xmm3[13],xmm2[13],xmm3[14],xmm2[14],xmm3[15],xmm2[15]
	vpmovzxwd	%xmm3, %xmm4    # xmm4 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpermq	$78, %ymm3, %ymm4       # ymm4 = ymm3[2,3,0,1]
	vpblendw	$14, %ymm4, %ymm3, %ymm3 # ymm3 = ymm3[0],ymm4[1,2,3],ymm3[4,5,6,7,8],ymm4[9,10,11],ymm3[12,13,14,15]
	vpshufb	%ymm0, %ymm3, %ymm3
	vcvtdq2ps	%ymm3, %ymm3
	vmulps	%ymm1, %ymm3, %ymm3
	vmovups	%ymm3, 32(%r8,%rax,4)
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
	jbe	.LBB4_34
# %bb.19:
	testq	%rcx, %rcx
	je	.LBB4_31
# %bb.20:
	movq	%rdx, %r11
	andq	$-16, %r11
	je	.LBB4_28
# %bb.21:
	leaq	(,%rdx,4), %r9
	xorl	%r10d, %r10d
	vmovdqa	.LCPI4_0(%rip), %ymm0   # ymm0 = [0,1,255,255,2,3,255,255,4,5,255,255,6,7,255,255,24,25,255,255,26,27,255,255,28,29,255,255,30,31,255,255]
	vbroadcastss	.LCPI4_1(%rip), %ymm1 # ymm1 = [0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886]
	vpxor	%xmm2, %xmm2, %xmm2
	cmpq	%rdx, %r11
	jne	.LBB4_22
	.p2align	4, 0x90
.LBB4_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_26 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_26:                               #   Parent Loop BB4_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovdqu	(%rdi,%rax), %xmm3
	vpmovzxbw	%xmm3, %xmm4    # xmm4 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpmovzxwd	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vpermq	$78, %ymm4, %ymm5       # ymm5 = ymm4[2,3,0,1]
	vpblendw	$14, %ymm5, %ymm4, %ymm4 # ymm4 = ymm4[0],ymm5[1,2,3],ymm4[4,5,6,7,8],ymm5[9,10,11],ymm4[12,13,14,15]
	vpshufb	%ymm0, %ymm4, %ymm4
	vcvtdq2ps	%ymm4, %ymm4
	vmulps	%ymm1, %ymm4, %ymm4
	vmovups	%ymm4, (%r8,%rax,4)
	vpunpckhbw	%xmm2, %xmm3, %xmm3 # xmm3 = xmm3[8],xmm2[8],xmm3[9],xmm2[9],xmm3[10],xmm2[10],xmm3[11],xmm2[11],xmm3[12],xmm2[12],xmm3[13],xmm2[13],xmm3[14],xmm2[14],xmm3[15],xmm2[15]
	vpmovzxwd	%xmm3, %xmm4    # xmm4 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpermq	$78, %ymm3, %ymm4       # ymm4 = ymm3[2,3,0,1]
	vpblendw	$14, %ymm4, %ymm3, %ymm3 # ymm3 = ymm3[0],ymm4[1,2,3],ymm3[4,5,6,7,8],ymm4[9,10,11],ymm3[12,13,14,15]
	vpshufb	%ymm0, %ymm3, %ymm3
	vcvtdq2ps	%ymm3, %ymm3
	vmulps	%ymm1, %ymm3, %ymm3
	vmovups	%ymm3, 32(%r8,%rax,4)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jb	.LBB4_26
# %bb.27:                               #   in Loop: Header=BB4_25 Depth=1
	addq	%r9, %r8
	addq	%rsi, %rdi
	addq	$1, %r10
	cmpq	%rcx, %r10
	jne	.LBB4_25
	jmp	.LBB4_31
	.p2align	4, 0x90
.LBB4_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_23 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_23:                               #   Parent Loop BB4_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovdqu	(%rdi,%rax), %xmm3
	vpmovzxbw	%xmm3, %xmm4    # xmm4 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpmovzxwd	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vpermq	$78, %ymm4, %ymm5       # ymm5 = ymm4[2,3,0,1]
	vpblendw	$14, %ymm5, %ymm4, %ymm4 # ymm4 = ymm4[0],ymm5[1,2,3],ymm4[4,5,6,7,8],ymm5[9,10,11],ymm4[12,13,14,15]
	vpshufb	%ymm0, %ymm4, %ymm4
	vcvtdq2ps	%ymm4, %ymm4
	vmulps	%ymm1, %ymm4, %ymm4
	vmovups	%ymm4, (%r8,%rax,4)
	vpunpckhbw	%xmm2, %xmm3, %xmm3 # xmm3 = xmm3[8],xmm2[8],xmm3[9],xmm2[9],xmm3[10],xmm2[10],xmm3[11],xmm2[11],xmm3[12],xmm2[12],xmm3[13],xmm2[13],xmm3[14],xmm2[14],xmm3[15],xmm2[15]
	vpmovzxwd	%xmm3, %xmm4    # xmm4 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpermq	$78, %ymm3, %ymm4       # ymm4 = ymm3[2,3,0,1]
	vpblendw	$14, %ymm4, %ymm3, %ymm3 # ymm3 = ymm3[0],ymm4[1,2,3],ymm3[4,5,6,7,8],ymm4[9,10,11],ymm3[12,13,14,15]
	vpshufb	%ymm0, %ymm3, %ymm3
	vcvtdq2ps	%ymm3, %ymm3
	vmulps	%ymm1, %ymm3, %ymm3
	vmovups	%ymm3, 32(%r8,%rax,4)
	addq	$16, %rax
	cmpq	%r11, %rax
	jb	.LBB4_23
# %bb.24:                               #   in Loop: Header=BB4_22 Depth=1
	vmovdqu	-16(%rdi,%rdx), %xmm3
	vpmovzxbw	%xmm3, %xmm4    # xmm4 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpmovzxwd	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vpermq	$78, %ymm4, %ymm5       # ymm5 = ymm4[2,3,0,1]
	vpblendw	$14, %ymm5, %ymm4, %ymm4 # ymm4 = ymm4[0],ymm5[1,2,3],ymm4[4,5,6,7,8],ymm5[9,10,11],ymm4[12,13,14,15]
	vpshufb	%ymm0, %ymm4, %ymm4
	vcvtdq2ps	%ymm4, %ymm4
	vmulps	%ymm1, %ymm4, %ymm4
	vmovups	%ymm4, -64(%r8,%rdx,4)
	vpunpckhbw	%xmm2, %xmm3, %xmm3 # xmm3 = xmm3[8],xmm2[8],xmm3[9],xmm2[9],xmm3[10],xmm2[10],xmm3[11],xmm2[11],xmm3[12],xmm2[12],xmm3[13],xmm2[13],xmm3[14],xmm2[14],xmm3[15],xmm2[15]
	vpmovzxwd	%xmm3, %xmm4    # xmm4 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpermq	$78, %ymm3, %ymm4       # ymm4 = ymm3[2,3,0,1]
	vpblendw	$14, %ymm4, %ymm3, %ymm3 # ymm3 = ymm3[0],ymm4[1,2,3],ymm3[4,5,6,7,8],ymm4[9,10,11],ymm3[12,13,14,15]
	vpshufb	%ymm0, %ymm3, %ymm3
	vcvtdq2ps	%ymm3, %ymm3
	vmulps	%ymm1, %ymm3, %ymm3
	vmovups	%ymm3, -32(%r8,%rdx,4)
	leaq	(%r8,%r9), %r8
	addq	%rsi, %rdi
	addq	$1, %r10
	cmpq	%rcx, %r10
	jne	.LBB4_22
	jmp	.LBB4_31
.LBB4_28:
	cmpq	%rdx, %r11
	je	.LBB4_31
# %bb.29:
	leaq	(%rdi,%rdx), %rax
	addq	$-16, %rax
	leaq	-32(%r8,%rdx,4), %rdi
	leaq	(,%rdx,4), %r9
	vmovdqa	.LCPI4_0(%rip), %ymm0   # ymm0 = [0,1,255,255,2,3,255,255,4,5,255,255,6,7,255,255,24,25,255,255,26,27,255,255,28,29,255,255,30,31,255,255]
	vbroadcastss	.LCPI4_1(%rip), %ymm1 # ymm1 = [0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886]
	vpxor	%xmm2, %xmm2, %xmm2
	.p2align	4, 0x90
.LBB4_30:                               # =>This Inner Loop Header: Depth=1
	leaq	(%r8,%rdx,4), %r8
	vmovdqu	(%rax), %xmm3
	vpmovzxbw	%xmm3, %xmm4    # xmm4 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpmovzxwd	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vpermq	$78, %ymm4, %ymm5       # ymm5 = ymm4[2,3,0,1]
	vpblendw	$14, %ymm5, %ymm4, %ymm4 # ymm4 = ymm4[0],ymm5[1,2,3],ymm4[4,5,6,7,8],ymm5[9,10,11],ymm4[12,13,14,15]
	vpshufb	%ymm0, %ymm4, %ymm4
	vcvtdq2ps	%ymm4, %ymm4
	vmulps	%ymm1, %ymm4, %ymm4
	vmovups	%ymm4, -32(%rdi)
	vpunpckhbw	%xmm2, %xmm3, %xmm3 # xmm3 = xmm3[8],xmm2[8],xmm3[9],xmm2[9],xmm3[10],xmm2[10],xmm3[11],xmm2[11],xmm3[12],xmm2[12],xmm3[13],xmm2[13],xmm3[14],xmm2[14],xmm3[15],xmm2[15]
	vpmovzxwd	%xmm3, %xmm4    # xmm4 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpermq	$78, %ymm3, %ymm4       # ymm4 = ymm3[2,3,0,1]
	vpblendw	$14, %ymm4, %ymm3, %ymm3 # ymm3 = ymm3[0],ymm4[1,2,3],ymm3[4,5,6,7,8],ymm4[9,10,11],ymm3[12,13,14,15]
	vpshufb	%ymm0, %ymm3, %ymm3
	vcvtdq2ps	%ymm3, %ymm3
	vmulps	%ymm1, %ymm3, %ymm3
	vmovups	%ymm3, (%rdi)
	addq	%rsi, %rax
	addq	%r9, %rdi
	addq	$-1, %rcx
	jne	.LBB4_30
	jmp	.LBB4_31
.LBB4_12:
	cmpq	$15, %rdx
	jbe	.LBB4_33
# %bb.13:
	testq	%rcx, %rcx
	je	.LBB4_31
# %bb.14:
	leaq	(,%rdx,4), %r9
	xorl	%r10d, %r10d
	vmovdqa	.LCPI4_0(%rip), %ymm0   # ymm0 = [0,1,255,255,2,3,255,255,4,5,255,255,6,7,255,255,24,25,255,255,26,27,255,255,28,29,255,255,30,31,255,255]
	vbroadcastss	.LCPI4_1(%rip), %ymm1 # ymm1 = [0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886,0.00392156886]
	vpxor	%xmm2, %xmm2, %xmm2
	.p2align	4, 0x90
.LBB4_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_16 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_16:                               #   Parent Loop BB4_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovdqa	(%rdi,%rax), %xmm3
	vpmovzxbw	%xmm3, %xmm4    # xmm4 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpmovzxwd	%xmm4, %xmm5    # xmm5 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vpermq	$78, %ymm4, %ymm5       # ymm5 = ymm4[2,3,0,1]
	vpblendw	$14, %ymm5, %ymm4, %ymm4 # ymm4 = ymm4[0],ymm5[1,2,3],ymm4[4,5,6,7,8],ymm5[9,10,11],ymm4[12,13,14,15]
	vpshufb	%ymm0, %ymm4, %ymm4
	vcvtdq2ps	%ymm4, %ymm4
	vmulps	%ymm1, %ymm4, %ymm4
	vmovups	%ymm4, (%r8,%rax,4)
	vpunpckhbw	%xmm2, %xmm3, %xmm3 # xmm3 = xmm3[8],xmm2[8],xmm3[9],xmm2[9],xmm3[10],xmm2[10],xmm3[11],xmm2[11],xmm3[12],xmm2[12],xmm3[13],xmm2[13],xmm3[14],xmm2[14],xmm3[15],xmm2[15]
	vpmovzxwd	%xmm3, %xmm4    # xmm4 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpermq	$78, %ymm3, %ymm4       # ymm4 = ymm3[2,3,0,1]
	vpblendw	$14, %ymm4, %ymm3, %ymm3 # ymm3 = ymm3[0],ymm4[1,2,3],ymm3[4,5,6,7,8],ymm4[9,10,11],ymm3[12,13,14,15]
	vpshufb	%ymm0, %ymm3, %ymm3
	vcvtdq2ps	%ymm3, %ymm3
	vmulps	%ymm1, %ymm3, %ymm3
	vmovups	%ymm3, 32(%r8,%rax,4)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jb	.LBB4_16
# %bb.17:                               #   in Loop: Header=BB4_15 Depth=1
	addq	%rsi, %rdi
	addq	%r9, %r8
	addq	$1, %r10
	cmpq	%rcx, %r10
	jne	.LBB4_15
.LBB4_31:
	popq	%rax
	vzeroupper
	retq
.LBB4_34:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$61, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb0ELb0EEEvPKhmmmPf, %ecx
	callq	__assert_fail
.LBB4_32:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$61, %edx
	movl	$.L__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb1EEEvPKhmmmPf, %ecx
	callq	__assert_fail
.LBB4_33:
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
	.asciz	"SimdSse2Neural/SimdSse2Neural.cpp"
	.size	.L.str.1, 34

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
