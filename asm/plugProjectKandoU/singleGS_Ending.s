.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
.4byte __sinit_singleGS_Ending_cpp

.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.global lbl_804839B0
lbl_804839B0:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x53696E67
	.4byte 0x6C654753
	.4byte 0x5F456E64
	.4byte 0x696E6700
.global lbl_804839CC
lbl_804839CC:
	.4byte 0x50534761
	.4byte 0x6D652E68
	.4byte 0x00000000
.global lbl_804839D8
lbl_804839D8:
	.asciz "P2Assert"
	.skip 3
	.4byte 0x50535363
	.4byte 0x656E652E
	.4byte 0x68000000

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global lbl_804C1370
lbl_804C1370:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.global lbl_804C137C
lbl_804C137C:
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte dvdload__Q34Game10SingleGame11EndingStateFv
.global lbl_804C1388
lbl_804C1388:
	.4byte lbl_80232A9C
	.4byte lbl_80232B20
	.4byte lbl_80232BDC
	.4byte lbl_80232C28
	.4byte lbl_80232CA4
	.4byte lbl_80232E04
	.4byte lbl_80232E58
	.4byte lbl_80232F24
	.4byte lbl_80232FA4
	.4byte lbl_802330E4
	.4byte lbl_80233224
.global __vt__Q32og6Screen22DispMemberFinalMessage
__vt__Q32og6Screen22DispMemberFinalMessage:
	.4byte 0
	.4byte 0
	.4byte getSize__Q32og6Screen22DispMemberFinalMessageFv
	.4byte getOwnerID__Q32og6Screen22DispMemberFinalMessageFv
	.4byte getMemberID__Q32og6Screen22DispMemberFinalMessageFv
	.4byte doSetSubMemberAll__Q32og6Screen14DispMemberBaseFv
.global __vt__Q34Game10SingleGame11EndingState
__vt__Q34Game10SingleGame11EndingState:
	.4byte 0
	.4byte 0
	.4byte init__Q34Game10SingleGame11EndingStateFPQ24Game17SingleGameSectionPQ24Game8StateArg
	.4byte exec__Q34Game10SingleGame11EndingStateFPQ24Game17SingleGameSection
	.4byte cleanup__Q34Game10SingleGame11EndingStateFPQ24Game17SingleGameSection
	.4byte "resume__Q24Game36FSMState<Q24Game17SingleGameSection>FPQ24Game17SingleGameSection"
	.4byte "restart__Q24Game36FSMState<Q24Game17SingleGameSection>FPQ24Game17SingleGameSection"
	.4byte "transit__Q24Game36FSMState<Q24Game17SingleGameSection>FPQ24Game17SingleGameSectioniPQ24Game8StateArg"
	.4byte draw__Q34Game10SingleGame11EndingStateFPQ24Game17SingleGameSectionR8Graphics
	.4byte onOrimaDown__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectioni
	.4byte onMovieStart__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ24Game11MovieConfigUlUl
	.4byte onMovieDone__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ24Game11MovieConfigUlUl
	.4byte onMovieCommand__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectioni
	.4byte onHoleIn__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ34Game8ItemCave4Item
	.4byte onNextFloor__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ34Game8ItemHole4Item
	.4byte onFountainReturn__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ34Game15ItemBigFountain4Item
	.4byte on_section_fadeout__Q34Game10SingleGame5StateFPQ24Game17SingleGameSection
	.4byte on_demo_timer__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionUl
	.4byte do_dvdload__Q34Game10SingleGame11EndingStateFv
.global "__vt__42Delegate<Q34Game10SingleGame11EndingState>"
"__vt__42Delegate<Q34Game10SingleGame11EndingState>":
	.4byte 0
	.4byte 0
	.4byte "invoke__42Delegate<Q34Game10SingleGame11EndingState>Fv"
	.4byte 0

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.global lbl_80515CA0
lbl_80515CA0:
	.skip 0x4
.global lbl_80515CA4
lbl_80515CA4:
	.skip 0x4

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q34Game10SingleGame11EndingStateFv
__ct__Q34Game10SingleGame11EndingStateFv:
/* 802326A8 0022F5E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802326AC 0022F5EC  7C 08 02 A6 */	mflr r0
/* 802326B0 0022F5F0  3C 80 80 4B */	lis r4, "__vt__Q24Game36FSMState<Q24Game17SingleGameSection>"@ha
/* 802326B4 0022F5F4  38 A0 00 00 */	li r5, 0
/* 802326B8 0022F5F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802326BC 0022F5FC  38 04 13 18 */	addi r0, r4, "__vt__Q24Game36FSMState<Q24Game17SingleGameSection>"@l
/* 802326C0 0022F600  3C 80 80 4B */	lis r4, __vt__Q34Game10SingleGame5State@ha
/* 802326C4 0022F604  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802326C8 0022F608  7C 7F 1B 78 */	mr r31, r3
/* 802326CC 0022F60C  38 84 12 D0 */	addi r4, r4, __vt__Q34Game10SingleGame5State@l
/* 802326D0 0022F610  90 03 00 00 */	stw r0, 0(r3)
/* 802326D4 0022F614  38 00 00 0B */	li r0, 0xb
/* 802326D8 0022F618  3C 60 80 4C */	lis r3, __vt__Q34Game10SingleGame11EndingState@ha
/* 802326DC 0022F61C  90 1F 00 04 */	stw r0, 4(r31)
/* 802326E0 0022F620  38 03 13 CC */	addi r0, r3, __vt__Q34Game10SingleGame11EndingState@l
/* 802326E4 0022F624  38 60 00 B0 */	li r3, 0xb0
/* 802326E8 0022F628  90 BF 00 08 */	stw r5, 8(r31)
/* 802326EC 0022F62C  90 9F 00 00 */	stw r4, 0(r31)
/* 802326F0 0022F630  90 1F 00 00 */	stw r0, 0(r31)
/* 802326F4 0022F634  98 BF 00 10 */	stb r5, 0x10(r31)
/* 802326F8 0022F638  4B DF 17 AD */	bl __nw__FUl
/* 802326FC 0022F63C  7C 60 1B 79 */	or. r0, r3, r3
/* 80232700 0022F640  41 82 00 10 */	beq lbl_80232710
/* 80232704 0022F644  38 80 00 00 */	li r4, 0
/* 80232708 0022F648  48 1F 27 4D */	bl __ct__10ControllerFQ210JUTGamePad8EPadPort
/* 8023270C 0022F64C  7C 60 1B 78 */	mr r0, r3
lbl_80232710:
/* 80232710 0022F650  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80232714 0022F654  38 60 00 14 */	li r3, 0x14
/* 80232718 0022F658  4B DF 17 8D */	bl __nw__FUl
/* 8023271C 0022F65C  28 03 00 00 */	cmplwi r3, 0
/* 80232720 0022F660  41 82 00 4C */	beq lbl_8023276C
/* 80232724 0022F664  3C 80 80 4C */	lis r4, lbl_804C137C@ha
/* 80232728 0022F668  3C A0 80 4B */	lis r5, __vt__9IDelegate@ha
/* 8023272C 0022F66C  39 04 13 7C */	addi r8, r4, lbl_804C137C@l
/* 80232730 0022F670  3C 80 80 4C */	lis r4, "__vt__42Delegate<Q34Game10SingleGame11EndingState>"@ha
/* 80232734 0022F674  80 E8 00 00 */	lwz r7, 0(r8)
/* 80232738 0022F678  38 A5 0F 00 */	addi r5, r5, __vt__9IDelegate@l
/* 8023273C 0022F67C  80 C8 00 04 */	lwz r6, 4(r8)
/* 80232740 0022F680  38 04 14 18 */	addi r0, r4, "__vt__42Delegate<Q34Game10SingleGame11EndingState>"@l
/* 80232744 0022F684  80 88 00 08 */	lwz r4, 8(r8)
/* 80232748 0022F688  90 E1 00 08 */	stw r7, 8(r1)
/* 8023274C 0022F68C  90 A3 00 00 */	stw r5, 0(r3)
/* 80232750 0022F690  90 03 00 00 */	stw r0, 0(r3)
/* 80232754 0022F694  93 E3 00 04 */	stw r31, 4(r3)
/* 80232758 0022F698  90 E3 00 08 */	stw r7, 8(r3)
/* 8023275C 0022F69C  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80232760 0022F6A0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80232764 0022F6A4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80232768 0022F6A8  90 83 00 10 */	stw r4, 0x10(r3)
lbl_8023276C:
/* 8023276C 0022F6AC  90 7F 00 24 */	stw r3, 0x24(r31)
/* 80232770 0022F6B0  7F E3 FB 78 */	mr r3, r31
/* 80232774 0022F6B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80232778 0022F6B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8023277C 0022F6BC  7C 08 03 A6 */	mtlr r0
/* 80232780 0022F6C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80232784 0022F6C4  4E 80 00 20 */	blr 

.global init__Q34Game10SingleGame11EndingStateFPQ24Game17SingleGameSectionPQ24Game8StateArg
init__Q34Game10SingleGame11EndingStateFPQ24Game17SingleGameSectionPQ24Game8StateArg:
/* 80232788 0022F6C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023278C 0022F6CC  7C 08 02 A6 */	mflr r0
/* 80232790 0022F6D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80232794 0022F6D4  38 00 00 00 */	li r0, 0
/* 80232798 0022F6D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023279C 0022F6DC  7C 9F 23 78 */	mr r31, r4
/* 802327A0 0022F6E0  93 C1 00 08 */	stw r30, 8(r1)
/* 802327A4 0022F6E4  7C 7E 1B 78 */	mr r30, r3
/* 802327A8 0022F6E8  90 03 00 14 */	stw r0, 0x14(r3)
/* 802327AC 0022F6EC  90 03 00 18 */	stw r0, 0x18(r3)
/* 802327B0 0022F6F0  98 03 00 11 */	stb r0, 0x11(r3)
/* 802327B4 0022F6F4  88 05 00 00 */	lbz r0, 0(r5)
/* 802327B8 0022F6F8  98 03 00 10 */	stb r0, 0x10(r3)
/* 802327BC 0022F6FC  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 802327C0 0022F700  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 802327C4 0022F704  48 1C 98 B5 */	bl setGamePad__Q26Screen9Game2DMgrFP10Controller
/* 802327C8 0022F708  38 00 00 00 */	li r0, 0
/* 802327CC 0022F70C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 802327D0 0022F710  98 1E 00 20 */	stb r0, 0x20(r30)
/* 802327D4 0022F714  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 802327D8 0022F718  88 1E 00 10 */	lbz r0, 0x10(r30)
/* 802327DC 0022F71C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802327E0 0022F720  40 82 00 50 */	bne lbl_80232830
/* 802327E4 0022F724  80 AD 94 90 */	lwz r5, playData__4Game@sda21(r13)
/* 802327E8 0022F728  7F C3 F3 78 */	mr r3, r30
/* 802327EC 0022F72C  7F E4 FB 78 */	mr r4, r31
/* 802327F0 0022F730  38 C0 00 00 */	li r6, 0
/* 802327F4 0022F734  83 E5 00 E8 */	lwz r31, 0xe8(r5)
/* 802327F8 0022F738  80 A5 00 B4 */	lwz r5, 0xb4(r5)
/* 802327FC 0022F73C  4B F1 FD 8D */	bl accountEarnings__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ24Game16PelletCropMemoryb
/* 80232800 0022F740  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80232804 0022F744  93 E3 00 E8 */	stw r31, 0xe8(r3)
/* 80232808 0022F748  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 8023280C 0022F74C  80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 80232810 0022F750  4B FB 30 31 */	bl clear__Q24Game16PelletCropMemoryFv
/* 80232814 0022F754  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80232818 0022F758  4B FB 76 65 */	bl setPikminCounts_Today__Q24Game8PlayDataFv
/* 8023281C 0022F75C  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80232820 0022F760  4B FB 77 65 */	bl setPikminCounts_Yesterday__Q24Game8PlayDataFv
/* 80232824 0022F764  4B FF D7 51 */	bl account_today_adjust__Q24Game8BirthMgrFv
/* 80232828 0022F768  4B FF DA 01 */	bl account_today__Q24Game8BirthMgrFv
/* 8023282C 0022F76C  4B FF E3 3D */	bl account_today__Q24Game8DeathMgrFv
lbl_80232830:
/* 80232830 0022F770  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80232834 0022F774  38 00 00 00 */	li r0, 0
/* 80232838 0022F778  98 03 00 20 */	stb r0, 0x20(r3)
/* 8023283C 0022F77C  80 6D 92 E0 */	lwz r3, naviMgr__4Game@sda21(r13)
/* 80232840 0022F780  4B F2 89 B1 */	bl clearDeadCount__Q24Game7NaviMgrFv
/* 80232844 0022F784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80232848 0022F788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023284C 0022F78C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80232850 0022F790  7C 08 03 A6 */	mtlr r0
/* 80232854 0022F794  38 21 00 10 */	addi r1, r1, 0x10
/* 80232858 0022F798  4E 80 00 20 */	blr 

.global dvdload__Q34Game10SingleGame11EndingStateFv
dvdload__Q34Game10SingleGame11EndingStateFv:
/* 8023285C 0022F79C  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80232860 0022F7A0  7C 08 02 A6 */	mflr r0
/* 80232864 0022F7A4  3C 80 80 48 */	lis r4, lbl_804839B0@ha
/* 80232868 0022F7A8  90 01 01 54 */	stw r0, 0x154(r1)
/* 8023286C 0022F7AC  93 E1 01 4C */	stw r31, 0x14c(r1)
/* 80232870 0022F7B0  7C 7F 1B 78 */	mr r31, r3
/* 80232874 0022F7B4  38 61 01 08 */	addi r3, r1, 0x108
/* 80232878 0022F7B8  93 C1 01 48 */	stw r30, 0x148(r1)
/* 8023287C 0022F7BC  3B C4 39 B0 */	addi r30, r4, lbl_804839B0@l
/* 80232880 0022F7C0  93 A1 01 44 */	stw r29, 0x144(r1)
/* 80232884 0022F7C4  48 10 2C 2D */	bl __ct__Q26PSGame9SceneInfoFv
/* 80232888 0022F7C8  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8023288C 0022F7CC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80232890 0022F7D0  41 82 00 10 */	beq lbl_802328A0
/* 80232894 0022F7D4  38 00 00 0E */	li r0, 0xe
/* 80232898 0022F7D8  98 01 01 0E */	stb r0, 0x10e(r1)
/* 8023289C 0022F7DC  48 00 00 0C */	b lbl_802328A8
lbl_802328A0:
/* 802328A0 0022F7E0  38 00 00 0F */	li r0, 0xf
/* 802328A4 0022F7E4  98 01 01 0E */	stb r0, 0x10e(r1)
lbl_802328A8:
/* 802328A8 0022F7E8  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 802328AC 0022F7EC  38 60 00 00 */	li r3, 0
/* 802328B0 0022F7F0  98 61 01 0F */	stb r3, 0x10f(r1)
/* 802328B4 0022F7F4  28 00 00 00 */	cmplwi r0, 0
/* 802328B8 0022F7F8  40 82 00 18 */	bne lbl_802328D0
/* 802328BC 0022F7FC  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802328C0 0022F800  38 BE 00 28 */	addi r5, r30, 0x28
/* 802328C4 0022F804  38 80 01 D3 */	li r4, 0x1d3
/* 802328C8 0022F808  4C C6 31 82 */	crclr 6
/* 802328CC 0022F80C  4B DF 7D 75 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802328D0:
/* 802328D0 0022F810  80 6D 98 80 */	lwz r3, spSceneMgr__8PSSystem@sda21(r13)
/* 802328D4 0022F814  38 81 01 08 */	addi r4, r1, 0x108
/* 802328D8 0022F818  81 83 00 00 */	lwz r12, 0(r3)
/* 802328DC 0022F81C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802328E0 0022F820  7D 89 03 A6 */	mtctr r12
/* 802328E4 0022F824  4E 80 04 21 */	bctrl 
/* 802328E8 0022F828  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 802328EC 0022F82C  28 00 00 00 */	cmplwi r0, 0
/* 802328F0 0022F830  40 82 00 18 */	bne lbl_80232908
/* 802328F4 0022F834  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802328F8 0022F838  38 BE 00 28 */	addi r5, r30, 0x28
/* 802328FC 0022F83C  38 80 01 D3 */	li r4, 0x1d3
/* 80232900 0022F840  4C C6 31 82 */	crclr 6
/* 80232904 0022F844  4B DF 7D 3D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80232908:
/* 80232908 0022F848  83 AD 98 80 */	lwz r29, spSceneMgr__8PSSystem@sda21(r13)
/* 8023290C 0022F84C  80 1D 00 04 */	lwz r0, 4(r29)
/* 80232910 0022F850  28 00 00 00 */	cmplwi r0, 0
/* 80232914 0022F854  40 82 00 18 */	bne lbl_8023292C
/* 80232918 0022F858  38 7E 00 34 */	addi r3, r30, 0x34
/* 8023291C 0022F85C  38 BE 00 28 */	addi r5, r30, 0x28
/* 80232920 0022F860  38 80 00 C7 */	li r4, 0xc7
/* 80232924 0022F864  4C C6 31 82 */	crclr 6
/* 80232928 0022F868  4B DF 7D 19 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8023292C:
/* 8023292C 0022F86C  80 7D 00 04 */	lwz r3, 4(r29)
/* 80232930 0022F870  80 63 00 04 */	lwz r3, 4(r3)
/* 80232934 0022F874  81 83 00 00 */	lwz r12, 0(r3)
/* 80232938 0022F878  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8023293C 0022F87C  7D 89 03 A6 */	mtctr r12
/* 80232940 0022F880  4E 80 04 21 */	bctrl 
/* 80232944 0022F884  7F E3 FB 78 */	mr r3, r31
/* 80232948 0022F888  81 9F 00 00 */	lwz r12, 0(r31)
/* 8023294C 0022F88C  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 80232950 0022F890  7D 89 03 A6 */	mtctr r12
/* 80232954 0022F894  4E 80 04 21 */	bctrl 
/* 80232958 0022F898  88 7F 00 10 */	lbz r3, 0x10(r31)
/* 8023295C 0022F89C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80232960 0022F8A0  40 82 00 A8 */	bne lbl_80232A08
/* 80232964 0022F8A4  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80232968 0022F8A8  40 82 00 54 */	bne lbl_802329BC
/* 8023296C 0022F8AC  4B FF D8 BD */	bl account_today__Q24Game8BirthMgrFv
/* 80232970 0022F8B0  4B FF E1 F9 */	bl account_today__Q24Game8DeathMgrFv
/* 80232974 0022F8B4  80 8D 93 E8 */	lwz r4, gameSystem__4Game@sda21(r13)
/* 80232978 0022F8B8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 8023297C 0022F8BC  80 84 00 40 */	lwz r4, 0x40(r4)
/* 80232980 0022F8C0  83 A4 02 18 */	lwz r29, 0x218(r4)
/* 80232984 0022F8C4  48 1F 05 AD */	bl getPlayCommonData__6SystemFv
/* 80232988 0022F8C8  7F A4 EB 78 */	mr r4, r29
/* 8023298C 0022F8CC  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 80232990 0022F8D0  38 C1 00 88 */	addi r6, r1, 0x88
/* 80232994 0022F8D4  48 00 1C 29 */	bl entryHighscores_clear__Q24Game14PlayCommonDataFiPiPi
/* 80232998 0022F8D8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 8023299C 0022F8DC  48 1F 05 95 */	bl getPlayCommonData__6SystemFv
/* 802329A0 0022F8E0  7C 64 1B 78 */	mr r4, r3
/* 802329A4 0022F8E4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 802329A8 0022F8E8  80 A4 00 04 */	lwz r5, 4(r4)
/* 802329AC 0022F8EC  38 81 00 88 */	addi r4, r1, 0x88
/* 802329B0 0022F8F0  48 1D C3 59 */	bl createDispMember__Q32kh6Screen16SceneFinalResultFPCiPCiPPQ24Game9Highscore
/* 802329B4 0022F8F4  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 802329B8 0022F8F8  48 00 00 50 */	b lbl_80232A08
lbl_802329BC:
/* 802329BC 0022F8FC  4B FF D8 6D */	bl account_today__Q24Game8BirthMgrFv
/* 802329C0 0022F900  4B FF E1 A9 */	bl account_today__Q24Game8DeathMgrFv
/* 802329C4 0022F904  80 8D 93 E8 */	lwz r4, gameSystem__4Game@sda21(r13)
/* 802329C8 0022F908  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 802329CC 0022F90C  80 84 00 40 */	lwz r4, 0x40(r4)
/* 802329D0 0022F910  83 A4 02 18 */	lwz r29, 0x218(r4)
/* 802329D4 0022F914  48 1F 05 5D */	bl getPlayCommonData__6SystemFv
/* 802329D8 0022F918  7F A4 EB 78 */	mr r4, r29
/* 802329DC 0022F91C  38 A1 00 48 */	addi r5, r1, 0x48
/* 802329E0 0022F920  38 C1 00 08 */	addi r6, r1, 8
/* 802329E4 0022F924  48 00 1C 11 */	bl entryHighscores_complete__Q24Game14PlayCommonDataFiPiPi
/* 802329E8 0022F928  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 802329EC 0022F92C  48 1F 05 45 */	bl getPlayCommonData__6SystemFv
/* 802329F0 0022F930  7C 64 1B 78 */	mr r4, r3
/* 802329F4 0022F934  38 61 00 48 */	addi r3, r1, 0x48
/* 802329F8 0022F938  80 A4 00 08 */	lwz r5, 8(r4)
/* 802329FC 0022F93C  38 81 00 08 */	addi r4, r1, 8
/* 80232A00 0022F940  48 1D C3 09 */	bl createDispMember__Q32kh6Screen16SceneFinalResultFPCiPCiPPQ24Game9Highscore
/* 80232A04 0022F944  90 7F 00 2C */	stw r3, 0x2c(r31)
lbl_80232A08:
/* 80232A08 0022F948  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80232A0C 0022F94C  83 E1 01 4C */	lwz r31, 0x14c(r1)
/* 80232A10 0022F950  83 C1 01 48 */	lwz r30, 0x148(r1)
/* 80232A14 0022F954  83 A1 01 44 */	lwz r29, 0x144(r1)
/* 80232A18 0022F958  7C 08 03 A6 */	mtlr r0
/* 80232A1C 0022F95C  38 21 01 50 */	addi r1, r1, 0x150
/* 80232A20 0022F960  4E 80 00 20 */	blr 

.global do_dvdload__Q34Game10SingleGame11EndingStateFv
do_dvdload__Q34Game10SingleGame11EndingStateFv:
/* 80232A24 0022F964  4E 80 00 20 */	blr 

.if version == 1
.global exec__Q34Game10SingleGame11EndingStateFPQ24Game17SingleGameSection
exec__Q34Game10SingleGame11EndingStateFPQ24Game17SingleGameSection:
/* 80232A28 0022F968  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80232A2C 0022F96C  7C 08 02 A6 */	mflr r0
/* 80232A30 0022F970  90 01 00 84 */	stw r0, 0x84(r1)
/* 80232A34 0022F974  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80232A38 0022F978  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80232A3C 0022F97C  7C 9E 23 78 */	mr r30, r4
/* 80232A40 0022F980  93 A1 00 74 */	stw r29, 0x74(r1)
/* 80232A44 0022F984  7C 7D 1B 78 */	mr r29, r3
/* 80232A48 0022F988  3C 60 80 48 */	lis r3, lbl_804839B0@ha
/* 80232A4C 0022F98C  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80232A50 0022F990  3B E3 39 B0 */	addi r31, r3, lbl_804839B0@l
/* 80232A54 0022F994  28 00 00 00 */	cmplwi r0, 0
/* 80232A58 0022F998  40 82 00 10 */	bne lbl_80232A68
/* 80232A5C 0022F99C  88 1D 00 11 */	lbz r0, 0x11(r29)
/* 80232A60 0022F9A0  28 00 00 00 */	cmplwi r0, 0
/* 80232A64 0022F9A4  40 82 07 F8 */	bne lbl_8023325C
lbl_80232A68:
/* 80232A68 0022F9A8  7F C3 F3 78 */	mr r3, r30
/* 80232A6C 0022F9AC  4B F3 25 3D */	bl doUpdate__Q24Game14BaseHIOSectionFv
/* 80232A70 0022F9B0  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232A74 0022F9B4  48 1C 95 B9 */	bl update__Q26Screen9Game2DMgrFv
/* 80232A78 0022F9B8  88 1D 00 11 */	lbz r0, 0x11(r29)
/* 80232A7C 0022F9BC  28 00 00 0A */	cmplwi r0, 0xa
/* 80232A80 0022F9C0  41 81 07 DC */	bgt lbl_8023325C
/* 80232A84 0022F9C4  3C 60 80 4C */	lis r3, lbl_804C1388@ha
/* 80232A88 0022F9C8  54 00 10 3A */	slwi r0, r0, 2
/* 80232A8C 0022F9CC  38 63 13 88 */	addi r3, r3, lbl_804C1388@l
/* 80232A90 0022F9D0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80232A94 0022F9D4  7C 09 03 A6 */	mtctr r0
/* 80232A98 0022F9D8  4E 80 04 20 */	bctr 
.global lbl_80232A9C
lbl_80232A9C:
/* 80232A9C 0022F9DC  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 80232AA0 0022F9E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80232AA4 0022F9E4  40 82 00 0C */	bne lbl_80232AB0
/* 80232AA8 0022F9E8  7F C3 F3 78 */	mr r3, r30
/* 80232AAC 0022F9EC  4B F1 D2 F9 */	bl clearHeap__Q24Game15BaseGameSectionFv
lbl_80232AB0:
/* 80232AB0 0022F9F0  80 0D 88 2C */	lwz r0, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80232AB4 0022F9F4  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80232AB8 0022F9F8  83 FD 00 18 */	lwz r31, 0x18(r29)
/* 80232ABC 0022F9FC  7F E3 FB 78 */	mr r3, r31
/* 80232AC0 0022FA00  4B DF 0C F5 */	bl getFreeSize__7JKRHeapFv
/* 80232AC4 0022FA04  7F E4 FB 78 */	mr r4, r31
/* 80232AC8 0022FA08  38 A0 00 01 */	li r5, 1
/* 80232ACC 0022FA0C  4B DE D3 FD */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 80232AD0 0022FA10  90 7D 00 14 */	stw r3, 0x14(r29)
/* 80232AD4 0022FA14  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80232AD8 0022FA18  4B DF 0A CD */	bl becomeCurrentHeap__7JKRHeapFv
/* 80232ADC 0022FA1C  38 60 00 EC */	li r3, 0xec
/* 80232AE0 0022FA20  4B DF 13 C5 */	bl __nw__FUl
/* 80232AE4 0022FA24  7C 60 1B 79 */	or. r0, r3, r3
/* 80232AE8 0022FA28  41 82 00 0C */	beq lbl_80232AF4
/* 80232AEC 0022FA2C  48 21 D3 05 */	bl __ct__Q24Game9THPPlayerFv
/* 80232AF0 0022FA30  7C 60 1B 78 */	mr r0, r3
lbl_80232AF4:
/* 80232AF4 0022FA34  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 80232AF8 0022FA38  38 80 00 00 */	li r4, 0
/* 80232AFC 0022FA3C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232B00 0022FA40  48 21 D8 C5 */	bl init__Q24Game9THPPlayerFP7JKRHeap
/* 80232B04 0022FA44  38 00 00 01 */	li r0, 1
/* 80232B08 0022FA48  38 9E 01 B8 */	addi r4, r30, 0x1dc
/* 80232B0C 0022FA4C  98 1D 00 11 */	stb r0, 0x11(r29)
/* 80232B10 0022FA50  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80232B14 0022FA54  80 BD 00 24 */	lwz r5, 0x24(r29)
/* 80232B18 0022FA58  48 1F 04 21 */	bl dvdLoadUseCallBack__6SystemFP16DvdThreadCommandP9IDelegate
/* 80232B1C 0022FA5C  48 00 07 40 */	b lbl_8023325C
.global lbl_80232B20
lbl_80232B20:
/* 80232B20 0022FA60  80 1E 01 D0 */	lwz r0, 0x1f4(r30)
/* 80232B24 0022FA64  2C 00 00 02 */	cmpwi r0, 2
/* 80232B28 0022FA68  40 82 07 34 */	bne lbl_8023325C
/* 80232B2C 0022FA6C  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 80232B30 0022FA70  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80232B34 0022FA74  41 82 00 9C */	beq lbl_80232BD0
/* 80232B38 0022FA78  38 00 00 06 */	li r0, 6
/* 80232B3C 0022FA7C  3C 60 80 4B */	lis r3, __vt__Q32og6Screen14DispMemberBase@ha
/* 80232B40 0022FA80  98 1D 00 11 */	stb r0, 0x11(r29)
/* 80232B44 0022FA84  38 A0 00 00 */	li r5, 0
/* 80232B48 0022FA88  38 03 11 48 */	addi r0, r3, __vt__Q32og6Screen14DispMemberBase@l
/* 80232B4C 0022FA8C  3C 60 80 4C */	lis r3, __vt__Q32og6Screen22DispMemberFinalMessage@ha
/* 80232B50 0022FA90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80232B54 0022FA94  38 03 13 B4 */	addi r0, r3, __vt__Q32og6Screen22DispMemberFinalMessage@l
/* 80232B58 0022FA98  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232B5C 0022FA9C  38 81 00 14 */	addi r4, r1, 0x14
/* 80232B60 0022FAA0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80232B64 0022FAA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80232B68 0022FAA8  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80232B6C 0022FAAC  48 1C BC 3D */	bl open_FinalMessage__Q26Screen9Game2DMgrFRQ32og6Screen22DispMemberFinalMessage
/* 80232B70 0022FAB0  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80232B74 0022FAB4  28 00 00 00 */	cmplwi r0, 0
/* 80232B78 0022FAB8  40 82 00 18 */	bne lbl_80232B90
/* 80232B7C 0022FABC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80232B80 0022FAC0  38 BF 00 28 */	addi r5, r31, 0x28
/* 80232B84 0022FAC4  38 80 01 D3 */	li r4, 0x1d3
/* 80232B88 0022FAC8  4C C6 31 82 */	crclr 6
/* 80232B8C 0022FACC  4B DF 7A B5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80232B90:
/* 80232B90 0022FAD0  83 AD 98 80 */	lwz r29, spSceneMgr__8PSSystem@sda21(r13)
/* 80232B94 0022FAD4  80 1D 00 04 */	lwz r0, 4(r29)
/* 80232B98 0022FAD8  28 00 00 00 */	cmplwi r0, 0
/* 80232B9C 0022FADC  40 82 00 18 */	bne lbl_80232BB4
/* 80232BA0 0022FAE0  38 7F 00 34 */	addi r3, r31, 0x34
/* 80232BA4 0022FAE4  38 BF 00 28 */	addi r5, r31, 0x28
/* 80232BA8 0022FAE8  38 80 00 C7 */	li r4, 0xc7
/* 80232BAC 0022FAEC  4C C6 31 82 */	crclr 6
/* 80232BB0 0022FAF0  4B DF 7A 91 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80232BB4:
/* 80232BB4 0022FAF4  80 7D 00 04 */	lwz r3, 4(r29)
/* 80232BB8 0022FAF8  80 63 00 04 */	lwz r3, 4(r3)
/* 80232BBC 0022FAFC  81 83 00 00 */	lwz r12, 0(r3)
/* 80232BC0 0022FB00  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80232BC4 0022FB04  7D 89 03 A6 */	mtctr r12
/* 80232BC8 0022FB08  4E 80 04 21 */	bctrl 
/* 80232BCC 0022FB0C  48 00 06 90 */	b lbl_8023325C
lbl_80232BD0:
/* 80232BD0 0022FB10  38 00 00 02 */	li r0, 2
/* 80232BD4 0022FB14  98 1D 00 11 */	stb r0, 0x11(r29)
/* 80232BD8 0022FB18  48 00 06 84 */	b lbl_8023325C
.global lbl_80232BDC
lbl_80232BDC:
/* 80232BDC 0022FB1C  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 80232BE0 0022FB20  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80232BE4 0022FB24  41 82 00 24 */	beq lbl_80232C08
/* 80232BE8 0022FB28  38 60 00 08 */	li r3, 8
/* 80232BEC 0022FB2C  38 00 00 01 */	li r0, 1
/* 80232BF0 0022FB30  98 7D 00 11 */	stb r3, 0x11(r29)
/* 80232BF4 0022FB34  38 80 00 03 */	li r4, 3
/* 80232BF8 0022FB38  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232BFC 0022FB3C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C00 0022FB40  48 21 D3 A1 */	bl load__Q24Game9THPPlayerFQ34Game9THPPlayer11EMovieIndex
/* 80232C04 0022FB44  48 00 06 58 */	b lbl_8023325C
lbl_80232C08:
/* 80232C08 0022FB48  38 60 00 03 */	li r3, 3
/* 80232C0C 0022FB4C  38 00 00 01 */	li r0, 1
/* 80232C10 0022FB50  98 7D 00 11 */	stb r3, 0x11(r29)
/* 80232C14 0022FB54  38 80 00 02 */	li r4, 2
/* 80232C18 0022FB58  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232C1C 0022FB5C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C20 0022FB60  48 21 D3 81 */	bl load__Q24Game9THPPlayerFQ34Game9THPPlayer11EMovieIndex
/* 80232C24 0022FB64  48 00 06 38 */	b lbl_8023325C
.global lbl_80232C28
lbl_80232C28:
/* 80232C28 0022FB68  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C2C 0022FB6C  81 83 00 00 */	lwz r12, 0(r3)
/* 80232C30 0022FB70  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80232C34 0022FB74  7D 89 03 A6 */	mtctr r12
/* 80232C38 0022FB78  4E 80 04 21 */	bctrl 
/* 80232C3C 0022FB7C  88 1D 00 20 */	lbz r0, 0x20(r29)
/* 80232C40 0022FB80  28 00 00 00 */	cmplwi r0, 0
/* 80232C44 0022FB84  41 82 00 28 */	beq lbl_80232C6C
/* 80232C48 0022FB88  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C4C 0022FB8C  48 21 DB ED */	bl isFinishLoading__Q24Game9THPPlayerFv
/* 80232C50 0022FB90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232C54 0022FB94  41 82 06 08 */	beq lbl_8023325C
/* 80232C58 0022FB98  38 00 00 00 */	li r0, 0
/* 80232C5C 0022FB9C  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232C60 0022FBA0  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C64 0022FBA4  48 21 D8 21 */	bl play__Q24Game9THPPlayerFv
/* 80232C68 0022FBA8  48 00 05 F4 */	b lbl_8023325C
lbl_80232C6C:
/* 80232C6C 0022FBAC  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C70 0022FBB0  48 21 DC 25 */	bl isFinishPlaying__Q24Game9THPPlayerFv
/* 80232C74 0022FBB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232C78 0022FBB8  41 82 05 E4 */	beq lbl_8023325C
/* 80232C7C 0022FBBC  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C80 0022FBC0  48 21 D8 DD */	bl stop__Q24Game9THPPlayerFv
/* 80232C84 0022FBC4  38 60 00 04 */	li r3, 4
/* 80232C88 0022FBC8  38 00 00 01 */	li r0, 1
/* 80232C8C 0022FBCC  98 7D 00 11 */	stb r3, 0x11(r29)
/* 80232C90 0022FBD0  38 80 00 04 */	li r4, 4
/* 80232C94 0022FBD4  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232C98 0022FBD8  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C9C 0022FBDC  48 21 D3 05 */	bl load__Q24Game9THPPlayerFQ34Game9THPPlayer11EMovieIndex
/* 80232CA0 0022FBE0  48 00 05 BC */	b lbl_8023325C
.global lbl_80232CA4
lbl_80232CA4:
/* 80232CA4 0022FBE4  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232CA8 0022FBE8  81 83 00 00 */	lwz r12, 0(r3)
/* 80232CAC 0022FBEC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80232CB0 0022FBF0  7D 89 03 A6 */	mtctr r12
/* 80232CB4 0022FBF4  4E 80 04 21 */	bctrl 
/* 80232CB8 0022FBF8  88 1D 00 20 */	lbz r0, 0x20(r29)
/* 80232CBC 0022FBFC  28 00 00 00 */	cmplwi r0, 0
/* 80232CC0 0022FC00  41 82 00 28 */	beq lbl_80232CE8
/* 80232CC4 0022FC04  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232CC8 0022FC08  48 21 DB 71 */	bl isFinishLoading__Q24Game9THPPlayerFv
/* 80232CCC 0022FC0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232CD0 0022FC10  41 82 05 8C */	beq lbl_8023325C
/* 80232CD4 0022FC14  38 00 00 00 */	li r0, 0
/* 80232CD8 0022FC18  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232CDC 0022FC1C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232CE0 0022FC20  48 21 D7 A5 */	bl play__Q24Game9THPPlayerFv
/* 80232CE4 0022FC24  48 00 05 78 */	b lbl_8023325C
lbl_80232CE8:
/* 80232CE8 0022FC28  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232CEC 0022FC2C  48 21 DB A9 */	bl isFinishPlaying__Q24Game9THPPlayerFv
/* 80232CF0 0022FC30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232CF4 0022FC34  41 82 05 68 */	beq lbl_8023325C
/* 80232CF8 0022FC38  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232CFC 0022FC3C  48 21 D8 61 */	bl stop__Q24Game9THPPlayerFv
/* 80232D00 0022FC40  38 00 00 05 */	li r0, 5
/* 80232D04 0022FC44  38 61 00 50 */	addi r3, r1, 0x50
/* 80232D08 0022FC48  98 1D 00 11 */	stb r0, 0x11(r29)
/* 80232D0C 0022FC4C  38 A0 00 00 */	li r5, 0
/* 80232D10 0022FC50  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 80232D14 0022FC54  80 DD 00 14 */	lwz r6, 0x14(r29)
/* 80232D18 0022FC58  48 1D 94 D1 */	bl __ct__Q32kh6Screen15DispFinalResultFPQ32kh6Screen15TotalResultDataQ42kh6Screen15DispFinalResult10ResultTypeP7JKRHeap
/* 80232D1C 0022FC5C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232D20 0022FC60  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 80232D24 0022FC64  48 1C 93 55 */	bl setGamePad__Q26Screen9Game2DMgrFP10Controller
/* 80232D28 0022FC68  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232D2C 0022FC6C  38 81 00 50 */	addi r4, r1, 0x50
/* 80232D30 0022FC70  48 1C B4 A9 */	bl open_FinalResult__Q26Screen9Game2DMgrFRQ32kh6Screen15DispFinalResult
/* 80232D34 0022FC74  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80232D38 0022FC78  28 00 00 00 */	cmplwi r0, 0
/* 80232D3C 0022FC7C  40 82 00 18 */	bne lbl_80232D54
/* 80232D40 0022FC80  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80232D44 0022FC84  38 BF 00 28 */	addi r5, r31, 0x28
/* 80232D48 0022FC88  38 80 01 D3 */	li r4, 0x1d3
/* 80232D4C 0022FC8C  4C C6 31 82 */	crclr 6
/* 80232D50 0022FC90  4B DF 78 F1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80232D54:
/* 80232D54 0022FC94  83 AD 98 80 */	lwz r29, spSceneMgr__8PSSystem@sda21(r13)
/* 80232D58 0022FC98  80 1D 00 04 */	lwz r0, 4(r29)
/* 80232D5C 0022FC9C  28 00 00 00 */	cmplwi r0, 0
/* 80232D60 0022FCA0  40 82 00 18 */	bne lbl_80232D78
/* 80232D64 0022FCA4  38 7F 00 34 */	addi r3, r31, 0x34
/* 80232D68 0022FCA8  38 BF 00 28 */	addi r5, r31, 0x28
/* 80232D6C 0022FCAC  38 80 00 C7 */	li r4, 0xc7
/* 80232D70 0022FCB0  4C C6 31 82 */	crclr 6
/* 80232D74 0022FCB4  4B DF 78 CD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80232D78:
/* 80232D78 0022FCB8  80 7D 00 04 */	lwz r3, 4(r29)
/* 80232D7C 0022FCBC  80 63 00 04 */	lwz r3, 4(r3)
/* 80232D80 0022FCC0  81 83 00 00 */	lwz r12, 0(r3)
/* 80232D84 0022FCC4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80232D88 0022FCC8  7D 89 03 A6 */	mtctr r12
/* 80232D8C 0022FCCC  4E 80 04 21 */	bctrl 
/* 80232D90 0022FCD0  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80232D94 0022FCD4  4B FB 46 E1 */	bl clearCurrentCave__Q24Game8PlayDataFv
/* 80232D98 0022FCD8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80232D9C 0022FCDC  38 00 00 01 */	li r0, 1
/* 80232DA0 0022FCE0  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80232DA4 0022FCE4  98 03 00 42 */	stb r0, 0x42(r3)
/* 80232DA8 0022FCE8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80232DAC 0022FCEC  48 1F 01 85 */	bl getPlayCommonData__6SystemFv
/* 80232DB0 0022FCF0  88 03 00 00 */	lbz r0, 0(r3)
/* 80232DB4 0022FCF4  38 80 00 02 */	li r4, 2
/* 80232DB8 0022FCF8  60 00 00 01 */	ori r0, r0, 1
/* 80232DBC 0022FCFC  98 03 00 00 */	stb r0, 0(r3)
/* 80232DC0 0022FD00  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80232DC4 0022FD04  4B FB 66 BD */	bl courseOpen__Q24Game8PlayDataFi
/* 80232DC8 0022FD08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232DCC 0022FD0C  41 82 00 10 */	beq lbl_80232DDC
/* 80232DD0 0022FD10  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80232DD4 0022FD14  38 80 00 03 */	li r4, 3
/* 80232DD8 0022FD18  4B FB 65 91 */	bl openCourse__Q24Game8PlayDataFi
lbl_80232DDC:
/* 80232DDC 0022FD1C  80 AD 94 90 */	lwz r5, playData__4Game@sda21(r13)
/* 80232DE0 0022FD20  38 60 00 04 */	li r3, 4
/* 80232DE4 0022FD24  38 00 00 00 */	li r0, 0
/* 80232DE8 0022FD28  88 85 00 2F */	lbz r4, 0x2f(r5)
/* 80232DEC 0022FD2C  60 84 00 01 */	ori r4, r4, 1
/* 80232DF0 0022FD30  98 85 00 2F */	stb r4, 0x2f(r5)
/* 80232DF4 0022FD34  80 8D 94 90 */	lwz r4, playData__4Game@sda21(r13)
/* 80232DF8 0022FD38  98 64 00 19 */	stb r3, 0x19(r4)
/* 80232DFC 0022FD3C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80232E00 0022FD40  48 00 04 5C */	b lbl_8023325C
.global lbl_80232E04
lbl_80232E04:
/* 80232E04 0022FD44  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 80232E08 0022FD48  48 18 67 A9 */	bl update__14TParticle2dMgrFv
/* 80232E0C 0022FD4C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232E10 0022FD50  48 1C B4 75 */	bl check_FinalResult__Q26Screen9Game2DMgrCFv
/* 80232E14 0022FD54  2C 03 00 00 */	cmpwi r3, 0
/* 80232E18 0022FD58  41 82 04 44 */	beq lbl_8023325C
/* 80232E1C 0022FD5C  38 00 00 06 */	li r0, 6
/* 80232E20 0022FD60  3C 60 80 4B */	lis r3, __vt__Q32og6Screen14DispMemberBase@ha
/* 80232E24 0022FD64  98 1D 00 11 */	stb r0, 0x11(r29)
/* 80232E28 0022FD68  38 A0 00 00 */	li r5, 0
/* 80232E2C 0022FD6C  38 03 11 48 */	addi r0, r3, __vt__Q32og6Screen14DispMemberBase@l
/* 80232E30 0022FD70  3C 60 80 4C */	lis r3, __vt__Q32og6Screen22DispMemberFinalMessage@ha
/* 80232E34 0022FD74  90 01 00 08 */	stw r0, 8(r1)
/* 80232E38 0022FD78  38 03 13 B4 */	addi r0, r3, __vt__Q32og6Screen22DispMemberFinalMessage@l
/* 80232E3C 0022FD7C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232E40 0022FD80  38 81 00 08 */	addi r4, r1, 8
/* 80232E44 0022FD84  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80232E48 0022FD88  90 01 00 08 */	stw r0, 8(r1)
/* 80232E4C 0022FD8C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80232E50 0022FD90  48 1C B9 59 */	bl open_FinalMessage__Q26Screen9Game2DMgrFRQ32og6Screen22DispMemberFinalMessage
/* 80232E54 0022FD94  48 00 04 08 */	b lbl_8023325C
.global lbl_80232E58
lbl_80232E58:
/* 80232E58 0022FD98  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 80232E5C 0022FD9C  48 18 67 55 */	bl update__14TParticle2dMgrFv
/* 80232E60 0022FDA0  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232E64 0022FDA4  48 1C B9 ED */	bl check_FinalMessage__Q26Screen9Game2DMgrCFv
/* 80232E68 0022FDA8  2C 03 00 02 */	cmpwi r3, 2
/* 80232E6C 0022FDAC  41 82 00 AC */	beq lbl_80232F18
/* 80232E70 0022FDB0  40 80 03 EC */	bge lbl_8023325C
/* 80232E74 0022FDB4  2C 03 00 01 */	cmpwi r3, 1
/* 80232E78 0022FDB8  40 80 00 08 */	bge lbl_80232E80
/* 80232E7C 0022FDBC  48 00 03 E0 */	b lbl_8023325C
lbl_80232E80:
/* 80232E80 0022FDC0  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80232E84 0022FDC4  28 00 00 00 */	cmplwi r0, 0
/* 80232E88 0022FDC8  40 82 00 18 */	bne lbl_80232EA0
/* 80232E8C 0022FDCC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80232E90 0022FDD0  38 BF 00 28 */	addi r5, r31, 0x28
/* 80232E94 0022FDD4  38 80 01 D3 */	li r4, 0x1d3
/* 80232E98 0022FDD8  4C C6 31 82 */	crclr 6
/* 80232E9C 0022FDDC  4B DF 77 A5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80232EA0:
/* 80232EA0 0022FDE0  83 CD 98 80 */	lwz r30, spSceneMgr__8PSSystem@sda21(r13)
/* 80232EA4 0022FDE4  80 1E 00 04 */	lwz r0, 4(r30)
/* 80232EA8 0022FDE8  28 00 00 00 */	cmplwi r0, 0
/* 80232EAC 0022FDEC  40 82 00 18 */	bne lbl_80232EC4
/* 80232EB0 0022FDF0  38 7F 00 34 */	addi r3, r31, 0x34
/* 80232EB4 0022FDF4  38 BF 00 28 */	addi r5, r31, 0x28
/* 80232EB8 0022FDF8  38 80 00 C7 */	li r4, 0xc7
/* 80232EBC 0022FDFC  4C C6 31 82 */	crclr 6
/* 80232EC0 0022FE00  4B DF 77 81 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80232EC4:
/* 80232EC4 0022FE04  80 7E 00 04 */	lwz r3, 4(r30)
/* 80232EC8 0022FE08  38 80 00 1E */	li r4, 0x1e
/* 80232ECC 0022FE0C  80 63 00 04 */	lwz r3, 4(r3)
/* 80232ED0 0022FE10  81 83 00 00 */	lwz r12, 0(r3)
/* 80232ED4 0022FE14  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80232ED8 0022FE18  7D 89 03 A6 */	mtctr r12
/* 80232EDC 0022FE1C  4E 80 04 21 */	bctrl 
/* 80232EE0 0022FE20  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232EE4 0022FE24  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80232EE8 0022FE28  81 83 00 00 */	lwz r12, 0(r3)
/* 80232EEC 0022FE2C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80232EF0 0022FE30  7D 89 03 A6 */	mtctr r12
/* 80232EF4 0022FE34  4E 80 04 21 */	bctrl 
/* 80232EF8 0022FE38  38 60 00 07 */	li r3, 7
/* 80232EFC 0022FE3C  38 00 00 01 */	li r0, 1
/* 80232F00 0022FE40  98 7D 00 11 */	stb r3, 0x11(r29)
/* 80232F04 0022FE44  38 80 00 01 */	li r4, 1
/* 80232F08 0022FE48  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232F0C 0022FE4C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232F10 0022FE50  48 21 D0 91 */	bl load__Q24Game9THPPlayerFQ34Game9THPPlayer11EMovieIndex
/* 80232F14 0022FE54  48 00 03 48 */	b lbl_8023325C
lbl_80232F18:
/* 80232F18 0022FE58  7F C3 F3 78 */	mr r3, r30
/* 80232F1C 0022FE5C  4B F1 FC 39 */	bl flow_goto_title__Q24Game17SingleGameSectionFv
/* 80232F20 0022FE60  48 00 03 3C */	b lbl_8023325C
.global lbl_80232F24
lbl_80232F24:
/* 80232F24 0022FE64  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232F28 0022FE68  81 83 00 00 */	lwz r12, 0(r3)
/* 80232F2C 0022FE6C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80232F30 0022FE70  7D 89 03 A6 */	mtctr r12
/* 80232F34 0022FE74  4E 80 04 21 */	bctrl 
/* 80232F38 0022FE78  88 1D 00 20 */	lbz r0, 0x20(r29)
/* 80232F3C 0022FE7C  28 00 00 00 */	cmplwi r0, 0
/* 80232F40 0022FE80  41 82 00 28 */	beq lbl_80232F68
/* 80232F44 0022FE84  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232F48 0022FE88  48 21 D8 F1 */	bl isFinishLoading__Q24Game9THPPlayerFv
/* 80232F4C 0022FE8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232F50 0022FE90  41 82 03 0C */	beq lbl_8023325C
/* 80232F54 0022FE94  38 00 00 00 */	li r0, 0
/* 80232F58 0022FE98  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232F5C 0022FE9C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232F60 0022FEA0  48 21 D5 25 */	bl play__Q24Game9THPPlayerFv
/* 80232F64 0022FEA4  48 00 02 F8 */	b lbl_8023325C
lbl_80232F68:
/* 80232F68 0022FEA8  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232F6C 0022FEAC  48 21 D9 29 */	bl isFinishPlaying__Q24Game9THPPlayerFv
/* 80232F70 0022FEB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232F74 0022FEB4  41 82 02 E8 */	beq lbl_8023325C
/* 80232F78 0022FEB8  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232F7C 0022FEBC  48 21 D5 E1 */	bl stop__Q24Game9THPPlayerFv
/* 80232F80 0022FEC0  7F A3 EB 78 */	mr r3, r29
/* 80232F84 0022FEC4  7F C4 F3 78 */	mr r4, r30
/* 80232F88 0022FEC8  81 9D 00 00 */	lwz r12, 0(r29)
/* 80232F8C 0022FECC  38 A0 00 01 */	li r5, 1
/* 80232F90 0022FED0  38 C0 00 00 */	li r6, 0
/* 80232F94 0022FED4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80232F98 0022FED8  7D 89 03 A6 */	mtctr r12
/* 80232F9C 0022FEDC  4E 80 04 21 */	bctrl 
/* 80232FA0 0022FEE0  48 00 02 BC */	b lbl_8023325C
.global lbl_80232FA4
lbl_80232FA4:
/* 80232FA4 0022FEE4  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232FA8 0022FEE8  81 83 00 00 */	lwz r12, 0(r3)
/* 80232FAC 0022FEEC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80232FB0 0022FEF0  7D 89 03 A6 */	mtctr r12
/* 80232FB4 0022FEF4  4E 80 04 21 */	bctrl 
/* 80232FB8 0022FEF8  88 1D 00 20 */	lbz r0, 0x20(r29)
/* 80232FBC 0022FEFC  28 00 00 00 */	cmplwi r0, 0
/* 80232FC0 0022FF00  41 82 00 28 */	beq lbl_80232FE8
/* 80232FC4 0022FF04  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232FC8 0022FF08  48 21 D8 71 */	bl isFinishLoading__Q24Game9THPPlayerFv
/* 80232FCC 0022FF0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232FD0 0022FF10  41 82 02 8C */	beq lbl_8023325C
/* 80232FD4 0022FF14  38 00 00 00 */	li r0, 0
/* 80232FD8 0022FF18  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232FDC 0022FF1C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232FE0 0022FF20  48 21 D4 A5 */	bl play__Q24Game9THPPlayerFv
/* 80232FE4 0022FF24  48 00 02 78 */	b lbl_8023325C
lbl_80232FE8:
/* 80232FE8 0022FF28  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232FEC 0022FF2C  48 21 D8 A9 */	bl isFinishPlaying__Q24Game9THPPlayerFv
/* 80232FF0 0022FF30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232FF4 0022FF34  41 82 02 68 */	beq lbl_8023325C
/* 80232FF8 0022FF38  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232FFC 0022FF3C  48 21 D5 61 */	bl stop__Q24Game9THPPlayerFv
/* 80233000 0022FF40  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 80233004 0022FF44  38 61 00 38 */	addi r3, r1, 0x38
/* 80233008 0022FF48  80 DD 00 14 */	lwz r6, 0x14(r29)
/* 8023300C 0022FF4C  38 A0 00 01 */	li r5, 1
/* 80233010 0022FF50  48 1D 91 D9 */	bl __ct__Q32kh6Screen15DispFinalResultFPQ32kh6Screen15TotalResultDataQ42kh6Screen15DispFinalResult10ResultTypeP7JKRHeap
/* 80233014 0022FF54  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80233018 0022FF58  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 8023301C 0022FF5C  48 1C 90 5D */	bl setGamePad__Q26Screen9Game2DMgrFP10Controller
/* 80233020 0022FF60  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80233024 0022FF64  38 81 00 38 */	addi r4, r1, 0x38
/* 80233028 0022FF68  48 1C B1 B1 */	bl open_FinalResult__Q26Screen9Game2DMgrFRQ32kh6Screen15DispFinalResult
/* 8023302C 0022FF6C  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80233030 0022FF70  28 00 00 00 */	cmplwi r0, 0
/* 80233034 0022FF74  40 82 00 18 */	bne lbl_8023304C
/* 80233038 0022FF78  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8023303C 0022FF7C  38 BF 00 28 */	addi r5, r31, 0x28
/* 80233040 0022FF80  38 80 01 D3 */	li r4, 0x1d3
/* 80233044 0022FF84  4C C6 31 82 */	crclr 6
/* 80233048 0022FF88  4B DF 75 F9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8023304C:
/* 8023304C 0022FF8C  83 CD 98 80 */	lwz r30, spSceneMgr__8PSSystem@sda21(r13)
/* 80233050 0022FF90  80 1E 00 04 */	lwz r0, 4(r30)
/* 80233054 0022FF94  28 00 00 00 */	cmplwi r0, 0
/* 80233058 0022FF98  40 82 00 18 */	bne lbl_80233070
/* 8023305C 0022FF9C  38 7F 00 34 */	addi r3, r31, 0x34
/* 80233060 0022FFA0  38 BF 00 28 */	addi r5, r31, 0x28
/* 80233064 0022FFA4  38 80 00 C7 */	li r4, 0xc7
/* 80233068 0022FFA8  4C C6 31 82 */	crclr 6
/* 8023306C 0022FFAC  4B DF 75 D5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80233070:
/* 80233070 0022FFB0  80 7E 00 04 */	lwz r3, 4(r30)
/* 80233074 0022FFB4  80 63 00 04 */	lwz r3, 4(r3)
/* 80233078 0022FFB8  81 83 00 00 */	lwz r12, 0(r3)
/* 8023307C 0022FFBC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80233080 0022FFC0  7D 89 03 A6 */	mtctr r12
/* 80233084 0022FFC4  4E 80 04 21 */	bctrl 
/* 80233088 0022FFC8  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 8023308C 0022FFCC  4B FB 43 E9 */	bl clearCurrentCave__Q24Game8PlayDataFv
/* 80233090 0022FFD0  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80233094 0022FFD4  38 00 00 01 */	li r0, 1
/* 80233098 0022FFD8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8023309C 0022FFDC  98 03 00 42 */	stb r0, 0x42(r3)
/* 802330A0 0022FFE0  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 802330A4 0022FFE4  48 1E FE 8D */	bl getPlayCommonData__6SystemFv
/* 802330A8 0022FFE8  88 C3 00 00 */	lbz r6, 0(r3)
/* 802330AC 0022FFEC  38 A0 00 0A */	li r5, 0xa
/* 802330B0 0022FFF0  38 80 00 01 */	li r4, 1
/* 802330B4 0022FFF4  38 00 00 00 */	li r0, 0
/* 802330B8 0022FFF8  60 C6 00 02 */	ori r6, r6, 2
/* 802330BC 0022FFFC  98 C3 00 00 */	stb r6, 0(r3)
/* 802330C0 00230000  80 CD 94 90 */	lwz r6, playData__4Game@sda21(r13)
/* 802330C4 00230004  88 66 00 2F */	lbz r3, 0x2f(r6)
/* 802330C8 00230008  60 63 00 02 */	ori r3, r3, 2
/* 802330CC 0023000C  98 66 00 2F */	stb r3, 0x2f(r6)
/* 802330D0 00230010  98 BD 00 11 */	stb r5, 0x11(r29)
/* 802330D4 00230014  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 802330D8 00230018  98 83 00 19 */	stb r4, 0x19(r3)
/* 802330DC 0023001C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802330E0 00230020  48 00 01 7C */	b lbl_8023325C
.global lbl_802330E4
lbl_802330E4:
/* 802330E4 00230024  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 802330E8 00230028  81 83 00 00 */	lwz r12, 0(r3)
/* 802330EC 0023002C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802330F0 00230030  7D 89 03 A6 */	mtctr r12
/* 802330F4 00230034  4E 80 04 21 */	bctrl 
/* 802330F8 00230038  88 1D 00 20 */	lbz r0, 0x20(r29)
/* 802330FC 0023003C  28 00 00 00 */	cmplwi r0, 0
/* 80233100 00230040  41 82 00 28 */	beq lbl_80233128
/* 80233104 00230044  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80233108 00230048  48 21 D7 31 */	bl isFinishLoading__Q24Game9THPPlayerFv
/* 8023310C 0023004C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80233110 00230050  41 82 01 4C */	beq lbl_8023325C
/* 80233114 00230054  38 00 00 00 */	li r0, 0
/* 80233118 00230058  98 1D 00 20 */	stb r0, 0x20(r29)
/* 8023311C 0023005C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80233120 00230060  48 21 D3 65 */	bl play__Q24Game9THPPlayerFv
/* 80233124 00230064  48 00 01 38 */	b lbl_8023325C
lbl_80233128:
/* 80233128 00230068  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8023312C 0023006C  48 21 D7 69 */	bl isFinishPlaying__Q24Game9THPPlayerFv
/* 80233130 00230070  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80233134 00230074  41 82 01 28 */	beq lbl_8023325C
/* 80233138 00230078  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8023313C 0023007C  48 21 D4 21 */	bl stop__Q24Game9THPPlayerFv
/* 80233140 00230080  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 80233144 00230084  38 61 00 20 */	addi r3, r1, 0x20
/* 80233148 00230088  80 DD 00 14 */	lwz r6, 0x14(r29)
/* 8023314C 0023008C  38 A0 00 01 */	li r5, 1
/* 80233150 00230090  48 1D 90 99 */	bl __ct__Q32kh6Screen15DispFinalResultFPQ32kh6Screen15TotalResultDataQ42kh6Screen15DispFinalResult10ResultTypeP7JKRHeap
/* 80233154 00230094  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80233158 00230098  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 8023315C 0023009C  48 1C 8F 1D */	bl setGamePad__Q26Screen9Game2DMgrFP10Controller
/* 80233160 002300A0  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80233164 002300A4  38 81 00 20 */	addi r4, r1, 0x20
/* 80233168 002300A8  48 1C B0 71 */	bl open_FinalResult__Q26Screen9Game2DMgrFRQ32kh6Screen15DispFinalResult
/* 8023316C 002300AC  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80233170 002300B0  28 00 00 00 */	cmplwi r0, 0
/* 80233174 002300B4  40 82 00 18 */	bne lbl_8023318C
/* 80233178 002300B8  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8023317C 002300BC  38 BF 00 28 */	addi r5, r31, 0x28
/* 80233180 002300C0  38 80 01 D3 */	li r4, 0x1d3
/* 80233184 002300C4  4C C6 31 82 */	crclr 6
/* 80233188 002300C8  4B DF 74 B9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8023318C:
/* 8023318C 002300CC  83 CD 98 80 */	lwz r30, spSceneMgr__8PSSystem@sda21(r13)
/* 80233190 002300D0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80233194 002300D4  28 00 00 00 */	cmplwi r0, 0
/* 80233198 002300D8  40 82 00 18 */	bne lbl_802331B0
/* 8023319C 002300DC  38 7F 00 34 */	addi r3, r31, 0x34
/* 802331A0 002300E0  38 BF 00 28 */	addi r5, r31, 0x28
/* 802331A4 002300E4  38 80 00 C7 */	li r4, 0xc7
/* 802331A8 002300E8  4C C6 31 82 */	crclr 6
/* 802331AC 002300EC  4B DF 74 95 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802331B0:
/* 802331B0 002300F0  80 7E 00 04 */	lwz r3, 4(r30)
/* 802331B4 002300F4  80 63 00 04 */	lwz r3, 4(r3)
/* 802331B8 002300F8  81 83 00 00 */	lwz r12, 0(r3)
/* 802331BC 002300FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802331C0 00230100  7D 89 03 A6 */	mtctr r12
/* 802331C4 00230104  4E 80 04 21 */	bctrl 
/* 802331C8 00230108  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 802331CC 0023010C  4B FB 42 A9 */	bl clearCurrentCave__Q24Game8PlayDataFv
/* 802331D0 00230110  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 802331D4 00230114  38 00 00 01 */	li r0, 1
/* 802331D8 00230118  80 63 00 60 */	lwz r3, 0x60(r3)
/* 802331DC 0023011C  98 03 00 42 */	stb r0, 0x42(r3)
/* 802331E0 00230120  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 802331E4 00230124  48 1E FD 4D */	bl getPlayCommonData__6SystemFv
/* 802331E8 00230128  88 C3 00 00 */	lbz r6, 0(r3)
/* 802331EC 0023012C  38 A0 00 0A */	li r5, 0xa
/* 802331F0 00230130  38 80 00 01 */	li r4, 1
/* 802331F4 00230134  38 00 00 00 */	li r0, 0
/* 802331F8 00230138  60 C6 00 02 */	ori r6, r6, 2
/* 802331FC 0023013C  98 C3 00 00 */	stb r6, 0(r3)
/* 80233200 00230140  80 CD 94 90 */	lwz r6, playData__4Game@sda21(r13)
/* 80233204 00230144  88 66 00 2F */	lbz r3, 0x2f(r6)
/* 80233208 00230148  60 63 00 02 */	ori r3, r3, 2
/* 8023320C 0023014C  98 66 00 2F */	stb r3, 0x2f(r6)
/* 80233210 00230150  98 BD 00 11 */	stb r5, 0x11(r29)
/* 80233214 00230154  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80233218 00230158  98 83 00 19 */	stb r4, 0x19(r3)
/* 8023321C 0023015C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80233220 00230160  48 00 00 3C */	b lbl_8023325C
.global lbl_80233224
lbl_80233224:
/* 80233224 00230164  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 80233228 00230168  48 18 63 89 */	bl update__14TParticle2dMgrFv
/* 8023322C 0023016C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80233230 00230170  48 1C B0 55 */	bl check_FinalResult__Q26Screen9Game2DMgrCFv
/* 80233234 00230174  2C 03 00 00 */	cmpwi r3, 0
/* 80233238 00230178  41 82 00 24 */	beq lbl_8023325C
/* 8023323C 0023017C  7F A3 EB 78 */	mr r3, r29
/* 80233240 00230180  7F C4 F3 78 */	mr r4, r30
/* 80233244 00230184  81 9D 00 00 */	lwz r12, 0(r29)
/* 80233248 00230188  38 A0 00 01 */	li r5, 1
/* 8023324C 0023018C  38 C0 00 00 */	li r6, 0
/* 80233250 00230190  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80233254 00230194  7D 89 03 A6 */	mtctr r12
/* 80233258 00230198  4E 80 04 21 */	bctrl 
lbl_8023325C:
/* 8023325C 0023019C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80233260 002301A0  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80233264 002301A4  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80233268 002301A8  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 8023326C 002301AC  7C 08 03 A6 */	mtlr r0
/* 80233270 002301B0  38 21 00 80 */	addi r1, r1, 0x80
/* 80233274 002301B4  4E 80 00 20 */	blr 
.else
.global exec__Q34Game10SingleGame11EndingStateFPQ24Game17SingleGameSection
exec__Q34Game10SingleGame11EndingStateFPQ24Game17SingleGameSection:
/* 80232A28 0022F968  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80232A2C 0022F96C  7C 08 02 A6 */	mflr r0
/* 80232A30 0022F970  90 01 00 84 */	stw r0, 0x84(r1)
/* 80232A34 0022F974  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80232A38 0022F978  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80232A3C 0022F97C  7C 9E 23 78 */	mr r30, r4
/* 80232A40 0022F980  93 A1 00 74 */	stw r29, 0x74(r1)
/* 80232A44 0022F984  7C 7D 1B 78 */	mr r29, r3
/* 80232A48 0022F988  3C 60 80 48 */	lis r3, lbl_804839B0@ha
/* 80232A4C 0022F98C  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80232A50 0022F990  3B E3 39 B0 */	addi r31, r3, lbl_804839B0@l
/* 80232A54 0022F994  28 00 00 00 */	cmplwi r0, 0
/* 80232A58 0022F998  40 82 00 10 */	bne lbl_80232A68
/* 80232A5C 0022F99C  88 1D 00 11 */	lbz r0, 0x11(r29)
/* 80232A60 0022F9A0  28 00 00 00 */	cmplwi r0, 0
/* 80232A64 0022F9A4  40 82 07 F8 */	bne lbl_8023325C
lbl_80232A68:
/* 80232A68 0022F9A8  7F C3 F3 78 */	mr r3, r30
/* 80232A6C 0022F9AC  4B F3 25 3D */	bl doUpdate__Q24Game14BaseHIOSectionFv
/* 80232A70 0022F9B0  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232A74 0022F9B4  48 1C 95 B9 */	bl update__Q26Screen9Game2DMgrFv
/* 80232A78 0022F9B8  88 1D 00 11 */	lbz r0, 0x11(r29)
/* 80232A7C 0022F9BC  28 00 00 0A */	cmplwi r0, 0xa
/* 80232A80 0022F9C0  41 81 07 DC */	bgt lbl_8023325C
/* 80232A84 0022F9C4  3C 60 80 4C */	lis r3, lbl_804C1388@ha
/* 80232A88 0022F9C8  54 00 10 3A */	slwi r0, r0, 2
/* 80232A8C 0022F9CC  38 63 13 88 */	addi r3, r3, lbl_804C1388@l
/* 80232A90 0022F9D0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80232A94 0022F9D4  7C 09 03 A6 */	mtctr r0
/* 80232A98 0022F9D8  4E 80 04 20 */	bctr 
.global lbl_80232A9C
lbl_80232A9C:
/* 80232A9C 0022F9DC  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 80232AA0 0022F9E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80232AA4 0022F9E4  40 82 00 0C */	bne lbl_80232AB0
/* 80232AA8 0022F9E8  7F C3 F3 78 */	mr r3, r30
/* 80232AAC 0022F9EC  4B F1 D2 F9 */	bl clearHeap__Q24Game15BaseGameSectionFv
lbl_80232AB0:
/* 80232AB0 0022F9F0  80 0D 88 2C */	lwz r0, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80232AB4 0022F9F4  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80232AB8 0022F9F8  83 FD 00 18 */	lwz r31, 0x18(r29)
/* 80232ABC 0022F9FC  7F E3 FB 78 */	mr r3, r31
/* 80232AC0 0022FA00  4B DF 0C F5 */	bl getFreeSize__7JKRHeapFv
/* 80232AC4 0022FA04  7F E4 FB 78 */	mr r4, r31
/* 80232AC8 0022FA08  38 A0 00 01 */	li r5, 1
/* 80232ACC 0022FA0C  4B DE D3 FD */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 80232AD0 0022FA10  90 7D 00 14 */	stw r3, 0x14(r29)
/* 80232AD4 0022FA14  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80232AD8 0022FA18  4B DF 0A CD */	bl becomeCurrentHeap__7JKRHeapFv
/* 80232ADC 0022FA1C  38 60 00 EC */	li r3, 0xec
/* 80232AE0 0022FA20  4B DF 13 C5 */	bl __nw__FUl
/* 80232AE4 0022FA24  7C 60 1B 79 */	or. r0, r3, r3
/* 80232AE8 0022FA28  41 82 00 0C */	beq lbl_80232AF4
/* 80232AEC 0022FA2C  48 21 D3 05 */	bl __ct__Q24Game9THPPlayerFv
/* 80232AF0 0022FA30  7C 60 1B 78 */	mr r0, r3
lbl_80232AF4:
/* 80232AF4 0022FA34  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 80232AF8 0022FA38  38 80 00 00 */	li r4, 0
/* 80232AFC 0022FA3C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232B00 0022FA40  48 21 D8 C5 */	bl init__Q24Game9THPPlayerFP7JKRHeap
/* 80232B04 0022FA44  38 00 00 01 */	li r0, 1
/* 80232B08 0022FA48  38 9E 01 B8 */	addi r4, r30, 0x1b8
/* 80232B0C 0022FA4C  98 1D 00 11 */	stb r0, 0x11(r29)
/* 80232B10 0022FA50  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80232B14 0022FA54  80 BD 00 24 */	lwz r5, 0x24(r29)
/* 80232B18 0022FA58  48 1F 04 21 */	bl dvdLoadUseCallBack__6SystemFP16DvdThreadCommandP9IDelegate
/* 80232B1C 0022FA5C  48 00 07 40 */	b lbl_8023325C
.global lbl_80232B20
lbl_80232B20:
/* 80232B20 0022FA60  80 1E 01 D0 */	lwz r0, 0x1d0(r30)
/* 80232B24 0022FA64  2C 00 00 02 */	cmpwi r0, 2
/* 80232B28 0022FA68  40 82 07 34 */	bne lbl_8023325C
/* 80232B2C 0022FA6C  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 80232B30 0022FA70  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80232B34 0022FA74  41 82 00 9C */	beq lbl_80232BD0
/* 80232B38 0022FA78  38 00 00 06 */	li r0, 6
/* 80232B3C 0022FA7C  3C 60 80 4B */	lis r3, __vt__Q32og6Screen14DispMemberBase@ha
/* 80232B40 0022FA80  98 1D 00 11 */	stb r0, 0x11(r29)
/* 80232B44 0022FA84  38 A0 00 00 */	li r5, 0
/* 80232B48 0022FA88  38 03 11 48 */	addi r0, r3, __vt__Q32og6Screen14DispMemberBase@l
/* 80232B4C 0022FA8C  3C 60 80 4C */	lis r3, __vt__Q32og6Screen22DispMemberFinalMessage@ha
/* 80232B50 0022FA90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80232B54 0022FA94  38 03 13 B4 */	addi r0, r3, __vt__Q32og6Screen22DispMemberFinalMessage@l
/* 80232B58 0022FA98  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232B5C 0022FA9C  38 81 00 14 */	addi r4, r1, 0x14
/* 80232B60 0022FAA0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80232B64 0022FAA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80232B68 0022FAA8  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80232B6C 0022FAAC  48 1C BC 3D */	bl open_FinalMessage__Q26Screen9Game2DMgrFRQ32og6Screen22DispMemberFinalMessage
/* 80232B70 0022FAB0  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80232B74 0022FAB4  28 00 00 00 */	cmplwi r0, 0
/* 80232B78 0022FAB8  40 82 00 18 */	bne lbl_80232B90
/* 80232B7C 0022FABC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80232B80 0022FAC0  38 BF 00 28 */	addi r5, r31, 0x28
/* 80232B84 0022FAC4  38 80 01 D3 */	li r4, 0x1d3
/* 80232B88 0022FAC8  4C C6 31 82 */	crclr 6
/* 80232B8C 0022FACC  4B DF 7A B5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80232B90:
/* 80232B90 0022FAD0  83 AD 98 80 */	lwz r29, spSceneMgr__8PSSystem@sda21(r13)
/* 80232B94 0022FAD4  80 1D 00 04 */	lwz r0, 4(r29)
/* 80232B98 0022FAD8  28 00 00 00 */	cmplwi r0, 0
/* 80232B9C 0022FADC  40 82 00 18 */	bne lbl_80232BB4
/* 80232BA0 0022FAE0  38 7F 00 34 */	addi r3, r31, 0x34
/* 80232BA4 0022FAE4  38 BF 00 28 */	addi r5, r31, 0x28
/* 80232BA8 0022FAE8  38 80 00 C7 */	li r4, 0xc7
/* 80232BAC 0022FAEC  4C C6 31 82 */	crclr 6
/* 80232BB0 0022FAF0  4B DF 7A 91 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80232BB4:
/* 80232BB4 0022FAF4  80 7D 00 04 */	lwz r3, 4(r29)
/* 80232BB8 0022FAF8  80 63 00 04 */	lwz r3, 4(r3)
/* 80232BBC 0022FAFC  81 83 00 00 */	lwz r12, 0(r3)
/* 80232BC0 0022FB00  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80232BC4 0022FB04  7D 89 03 A6 */	mtctr r12
/* 80232BC8 0022FB08  4E 80 04 21 */	bctrl 
/* 80232BCC 0022FB0C  48 00 06 90 */	b lbl_8023325C
lbl_80232BD0:
/* 80232BD0 0022FB10  38 00 00 02 */	li r0, 2
/* 80232BD4 0022FB14  98 1D 00 11 */	stb r0, 0x11(r29)
/* 80232BD8 0022FB18  48 00 06 84 */	b lbl_8023325C
.global lbl_80232BDC
lbl_80232BDC:
/* 80232BDC 0022FB1C  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 80232BE0 0022FB20  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80232BE4 0022FB24  41 82 00 24 */	beq lbl_80232C08
/* 80232BE8 0022FB28  38 60 00 08 */	li r3, 8
/* 80232BEC 0022FB2C  38 00 00 01 */	li r0, 1
/* 80232BF0 0022FB30  98 7D 00 11 */	stb r3, 0x11(r29)
/* 80232BF4 0022FB34  38 80 00 03 */	li r4, 3
/* 80232BF8 0022FB38  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232BFC 0022FB3C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C00 0022FB40  48 21 D3 A1 */	bl load__Q24Game9THPPlayerFQ34Game9THPPlayer11EMovieIndex
/* 80232C04 0022FB44  48 00 06 58 */	b lbl_8023325C
lbl_80232C08:
/* 80232C08 0022FB48  38 60 00 03 */	li r3, 3
/* 80232C0C 0022FB4C  38 00 00 01 */	li r0, 1
/* 80232C10 0022FB50  98 7D 00 11 */	stb r3, 0x11(r29)
/* 80232C14 0022FB54  38 80 00 02 */	li r4, 2
/* 80232C18 0022FB58  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232C1C 0022FB5C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C20 0022FB60  48 21 D3 81 */	bl load__Q24Game9THPPlayerFQ34Game9THPPlayer11EMovieIndex
/* 80232C24 0022FB64  48 00 06 38 */	b lbl_8023325C
.global lbl_80232C28
lbl_80232C28:
/* 80232C28 0022FB68  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C2C 0022FB6C  81 83 00 00 */	lwz r12, 0(r3)
/* 80232C30 0022FB70  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80232C34 0022FB74  7D 89 03 A6 */	mtctr r12
/* 80232C38 0022FB78  4E 80 04 21 */	bctrl 
/* 80232C3C 0022FB7C  88 1D 00 20 */	lbz r0, 0x20(r29)
/* 80232C40 0022FB80  28 00 00 00 */	cmplwi r0, 0
/* 80232C44 0022FB84  41 82 00 28 */	beq lbl_80232C6C
/* 80232C48 0022FB88  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C4C 0022FB8C  48 21 DB ED */	bl isFinishLoading__Q24Game9THPPlayerFv
/* 80232C50 0022FB90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232C54 0022FB94  41 82 06 08 */	beq lbl_8023325C
/* 80232C58 0022FB98  38 00 00 00 */	li r0, 0
/* 80232C5C 0022FB9C  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232C60 0022FBA0  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C64 0022FBA4  48 21 D8 21 */	bl play__Q24Game9THPPlayerFv
/* 80232C68 0022FBA8  48 00 05 F4 */	b lbl_8023325C
lbl_80232C6C:
/* 80232C6C 0022FBAC  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C70 0022FBB0  48 21 DC 25 */	bl isFinishPlaying__Q24Game9THPPlayerFv
/* 80232C74 0022FBB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232C78 0022FBB8  41 82 05 E4 */	beq lbl_8023325C
/* 80232C7C 0022FBBC  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C80 0022FBC0  48 21 D8 DD */	bl stop__Q24Game9THPPlayerFv
/* 80232C84 0022FBC4  38 60 00 04 */	li r3, 4
/* 80232C88 0022FBC8  38 00 00 01 */	li r0, 1
/* 80232C8C 0022FBCC  98 7D 00 11 */	stb r3, 0x11(r29)
/* 80232C90 0022FBD0  38 80 00 04 */	li r4, 4
/* 80232C94 0022FBD4  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232C98 0022FBD8  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232C9C 0022FBDC  48 21 D3 05 */	bl load__Q24Game9THPPlayerFQ34Game9THPPlayer11EMovieIndex
/* 80232CA0 0022FBE0  48 00 05 BC */	b lbl_8023325C
.global lbl_80232CA4
lbl_80232CA4:
/* 80232CA4 0022FBE4  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232CA8 0022FBE8  81 83 00 00 */	lwz r12, 0(r3)
/* 80232CAC 0022FBEC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80232CB0 0022FBF0  7D 89 03 A6 */	mtctr r12
/* 80232CB4 0022FBF4  4E 80 04 21 */	bctrl 
/* 80232CB8 0022FBF8  88 1D 00 20 */	lbz r0, 0x20(r29)
/* 80232CBC 0022FBFC  28 00 00 00 */	cmplwi r0, 0
/* 80232CC0 0022FC00  41 82 00 28 */	beq lbl_80232CE8
/* 80232CC4 0022FC04  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232CC8 0022FC08  48 21 DB 71 */	bl isFinishLoading__Q24Game9THPPlayerFv
/* 80232CCC 0022FC0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232CD0 0022FC10  41 82 05 8C */	beq lbl_8023325C
/* 80232CD4 0022FC14  38 00 00 00 */	li r0, 0
/* 80232CD8 0022FC18  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232CDC 0022FC1C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232CE0 0022FC20  48 21 D7 A5 */	bl play__Q24Game9THPPlayerFv
/* 80232CE4 0022FC24  48 00 05 78 */	b lbl_8023325C
lbl_80232CE8:
/* 80232CE8 0022FC28  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232CEC 0022FC2C  48 21 DB A9 */	bl isFinishPlaying__Q24Game9THPPlayerFv
/* 80232CF0 0022FC30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232CF4 0022FC34  41 82 05 68 */	beq lbl_8023325C
/* 80232CF8 0022FC38  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232CFC 0022FC3C  48 21 D8 61 */	bl stop__Q24Game9THPPlayerFv
/* 80232D00 0022FC40  38 00 00 05 */	li r0, 5
/* 80232D04 0022FC44  38 61 00 50 */	addi r3, r1, 0x50
/* 80232D08 0022FC48  98 1D 00 11 */	stb r0, 0x11(r29)
/* 80232D0C 0022FC4C  38 A0 00 00 */	li r5, 0
/* 80232D10 0022FC50  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 80232D14 0022FC54  80 DD 00 14 */	lwz r6, 0x14(r29)
/* 80232D18 0022FC58  48 1D 94 D1 */	bl __ct__Q32kh6Screen15DispFinalResultFPQ32kh6Screen15TotalResultDataQ42kh6Screen15DispFinalResult10ResultTypeP7JKRHeap
/* 80232D1C 0022FC5C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232D20 0022FC60  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 80232D24 0022FC64  48 1C 93 55 */	bl setGamePad__Q26Screen9Game2DMgrFP10Controller
/* 80232D28 0022FC68  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232D2C 0022FC6C  38 81 00 50 */	addi r4, r1, 0x50
/* 80232D30 0022FC70  48 1C B4 A9 */	bl open_FinalResult__Q26Screen9Game2DMgrFRQ32kh6Screen15DispFinalResult
/* 80232D34 0022FC74  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80232D38 0022FC78  28 00 00 00 */	cmplwi r0, 0
/* 80232D3C 0022FC7C  40 82 00 18 */	bne lbl_80232D54
/* 80232D40 0022FC80  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80232D44 0022FC84  38 BF 00 28 */	addi r5, r31, 0x28
/* 80232D48 0022FC88  38 80 01 D3 */	li r4, 0x1d3
/* 80232D4C 0022FC8C  4C C6 31 82 */	crclr 6
/* 80232D50 0022FC90  4B DF 78 F1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80232D54:
/* 80232D54 0022FC94  83 AD 98 80 */	lwz r29, spSceneMgr__8PSSystem@sda21(r13)
/* 80232D58 0022FC98  80 1D 00 04 */	lwz r0, 4(r29)
/* 80232D5C 0022FC9C  28 00 00 00 */	cmplwi r0, 0
/* 80232D60 0022FCA0  40 82 00 18 */	bne lbl_80232D78
/* 80232D64 0022FCA4  38 7F 00 34 */	addi r3, r31, 0x34
/* 80232D68 0022FCA8  38 BF 00 28 */	addi r5, r31, 0x28
/* 80232D6C 0022FCAC  38 80 00 C7 */	li r4, 0xc7
/* 80232D70 0022FCB0  4C C6 31 82 */	crclr 6
/* 80232D74 0022FCB4  4B DF 78 CD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80232D78:
/* 80232D78 0022FCB8  80 7D 00 04 */	lwz r3, 4(r29)
/* 80232D7C 0022FCBC  80 63 00 04 */	lwz r3, 4(r3)
/* 80232D80 0022FCC0  81 83 00 00 */	lwz r12, 0(r3)
/* 80232D84 0022FCC4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80232D88 0022FCC8  7D 89 03 A6 */	mtctr r12
/* 80232D8C 0022FCCC  4E 80 04 21 */	bctrl 
/* 80232D90 0022FCD0  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80232D94 0022FCD4  4B FB 46 E1 */	bl clearCurrentCave__Q24Game8PlayDataFv
/* 80232D98 0022FCD8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80232D9C 0022FCDC  38 00 00 01 */	li r0, 1
/* 80232DA0 0022FCE0  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80232DA4 0022FCE4  98 03 00 42 */	stb r0, 0x42(r3)
/* 80232DA8 0022FCE8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80232DAC 0022FCEC  48 1F 01 85 */	bl getPlayCommonData__6SystemFv
/* 80232DB0 0022FCF0  88 03 00 00 */	lbz r0, 0(r3)
/* 80232DB4 0022FCF4  38 80 00 02 */	li r4, 2
/* 80232DB8 0022FCF8  60 00 00 01 */	ori r0, r0, 1
/* 80232DBC 0022FCFC  98 03 00 00 */	stb r0, 0(r3)
/* 80232DC0 0022FD00  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80232DC4 0022FD04  4B FB 66 BD */	bl courseOpen__Q24Game8PlayDataFi
/* 80232DC8 0022FD08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232DCC 0022FD0C  41 82 00 10 */	beq lbl_80232DDC
/* 80232DD0 0022FD10  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80232DD4 0022FD14  38 80 00 03 */	li r4, 3
/* 80232DD8 0022FD18  4B FB 65 91 */	bl openCourse__Q24Game8PlayDataFi
lbl_80232DDC:
/* 80232DDC 0022FD1C  80 AD 94 90 */	lwz r5, playData__4Game@sda21(r13)
/* 80232DE0 0022FD20  38 60 00 04 */	li r3, 4
/* 80232DE4 0022FD24  38 00 00 00 */	li r0, 0
/* 80232DE8 0022FD28  88 85 00 2F */	lbz r4, 0x2f(r5)
/* 80232DEC 0022FD2C  60 84 00 01 */	ori r4, r4, 1
/* 80232DF0 0022FD30  98 85 00 2F */	stb r4, 0x2f(r5)
/* 80232DF4 0022FD34  80 8D 94 90 */	lwz r4, playData__4Game@sda21(r13)
/* 80232DF8 0022FD38  98 64 00 19 */	stb r3, 0x19(r4)
/* 80232DFC 0022FD3C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80232E00 0022FD40  48 00 04 5C */	b lbl_8023325C
.global lbl_80232E04
lbl_80232E04:
/* 80232E04 0022FD44  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 80232E08 0022FD48  48 18 67 A9 */	bl update__14TParticle2dMgrFv
/* 80232E0C 0022FD4C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232E10 0022FD50  48 1C B4 75 */	bl check_FinalResult__Q26Screen9Game2DMgrCFv
/* 80232E14 0022FD54  2C 03 00 00 */	cmpwi r3, 0
/* 80232E18 0022FD58  41 82 04 44 */	beq lbl_8023325C
/* 80232E1C 0022FD5C  38 00 00 06 */	li r0, 6
/* 80232E20 0022FD60  3C 60 80 4B */	lis r3, __vt__Q32og6Screen14DispMemberBase@ha
/* 80232E24 0022FD64  98 1D 00 11 */	stb r0, 0x11(r29)
/* 80232E28 0022FD68  38 A0 00 00 */	li r5, 0
/* 80232E2C 0022FD6C  38 03 11 48 */	addi r0, r3, __vt__Q32og6Screen14DispMemberBase@l
/* 80232E30 0022FD70  3C 60 80 4C */	lis r3, __vt__Q32og6Screen22DispMemberFinalMessage@ha
/* 80232E34 0022FD74  90 01 00 08 */	stw r0, 8(r1)
/* 80232E38 0022FD78  38 03 13 B4 */	addi r0, r3, __vt__Q32og6Screen22DispMemberFinalMessage@l
/* 80232E3C 0022FD7C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232E40 0022FD80  38 81 00 08 */	addi r4, r1, 8
/* 80232E44 0022FD84  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80232E48 0022FD88  90 01 00 08 */	stw r0, 8(r1)
/* 80232E4C 0022FD8C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80232E50 0022FD90  48 1C B9 59 */	bl open_FinalMessage__Q26Screen9Game2DMgrFRQ32og6Screen22DispMemberFinalMessage
/* 80232E54 0022FD94  48 00 04 08 */	b lbl_8023325C
.global lbl_80232E58
lbl_80232E58:
/* 80232E58 0022FD98  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 80232E5C 0022FD9C  48 18 67 55 */	bl update__14TParticle2dMgrFv
/* 80232E60 0022FDA0  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232E64 0022FDA4  48 1C B9 ED */	bl check_FinalMessage__Q26Screen9Game2DMgrCFv
/* 80232E68 0022FDA8  2C 03 00 02 */	cmpwi r3, 2
/* 80232E6C 0022FDAC  41 82 00 AC */	beq lbl_80232F18
/* 80232E70 0022FDB0  40 80 03 EC */	bge lbl_8023325C
/* 80232E74 0022FDB4  2C 03 00 01 */	cmpwi r3, 1
/* 80232E78 0022FDB8  40 80 00 08 */	bge lbl_80232E80
/* 80232E7C 0022FDBC  48 00 03 E0 */	b lbl_8023325C
lbl_80232E80:
/* 80232E80 0022FDC0  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80232E84 0022FDC4  28 00 00 00 */	cmplwi r0, 0
/* 80232E88 0022FDC8  40 82 00 18 */	bne lbl_80232EA0
/* 80232E8C 0022FDCC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80232E90 0022FDD0  38 BF 00 28 */	addi r5, r31, 0x28
/* 80232E94 0022FDD4  38 80 01 D3 */	li r4, 0x1d3
/* 80232E98 0022FDD8  4C C6 31 82 */	crclr 6
/* 80232E9C 0022FDDC  4B DF 77 A5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80232EA0:
/* 80232EA0 0022FDE0  83 CD 98 80 */	lwz r30, spSceneMgr__8PSSystem@sda21(r13)
/* 80232EA4 0022FDE4  80 1E 00 04 */	lwz r0, 4(r30)
/* 80232EA8 0022FDE8  28 00 00 00 */	cmplwi r0, 0
/* 80232EAC 0022FDEC  40 82 00 18 */	bne lbl_80232EC4
/* 80232EB0 0022FDF0  38 7F 00 34 */	addi r3, r31, 0x34
/* 80232EB4 0022FDF4  38 BF 00 28 */	addi r5, r31, 0x28
/* 80232EB8 0022FDF8  38 80 00 C7 */	li r4, 0xc7
/* 80232EBC 0022FDFC  4C C6 31 82 */	crclr 6
/* 80232EC0 0022FE00  4B DF 77 81 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80232EC4:
/* 80232EC4 0022FE04  80 7E 00 04 */	lwz r3, 4(r30)
/* 80232EC8 0022FE08  38 80 00 1E */	li r4, 0x1e
/* 80232ECC 0022FE0C  80 63 00 04 */	lwz r3, 4(r3)
/* 80232ED0 0022FE10  81 83 00 00 */	lwz r12, 0(r3)
/* 80232ED4 0022FE14  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80232ED8 0022FE18  7D 89 03 A6 */	mtctr r12
/* 80232EDC 0022FE1C  4E 80 04 21 */	bctrl 
/* 80232EE0 0022FE20  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80232EE4 0022FE24  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80232EE8 0022FE28  81 83 00 00 */	lwz r12, 0(r3)
/* 80232EEC 0022FE2C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80232EF0 0022FE30  7D 89 03 A6 */	mtctr r12
/* 80232EF4 0022FE34  4E 80 04 21 */	bctrl 
/* 80232EF8 0022FE38  38 60 00 07 */	li r3, 7
/* 80232EFC 0022FE3C  38 00 00 01 */	li r0, 1
/* 80232F00 0022FE40  98 7D 00 11 */	stb r3, 0x11(r29)
/* 80232F04 0022FE44  38 80 00 01 */	li r4, 1
/* 80232F08 0022FE48  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232F0C 0022FE4C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232F10 0022FE50  48 21 D0 91 */	bl load__Q24Game9THPPlayerFQ34Game9THPPlayer11EMovieIndex
/* 80232F14 0022FE54  48 00 03 48 */	b lbl_8023325C
lbl_80232F18:
/* 80232F18 0022FE58  7F C3 F3 78 */	mr r3, r30
/* 80232F1C 0022FE5C  4B F1 FC 39 */	bl flow_goto_title__Q24Game17SingleGameSectionFv
/* 80232F20 0022FE60  48 00 03 3C */	b lbl_8023325C
.global lbl_80232F24
lbl_80232F24:
/* 80232F24 0022FE64  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232F28 0022FE68  81 83 00 00 */	lwz r12, 0(r3)
/* 80232F2C 0022FE6C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80232F30 0022FE70  7D 89 03 A6 */	mtctr r12
/* 80232F34 0022FE74  4E 80 04 21 */	bctrl 
/* 80232F38 0022FE78  88 1D 00 20 */	lbz r0, 0x20(r29)
/* 80232F3C 0022FE7C  28 00 00 00 */	cmplwi r0, 0
/* 80232F40 0022FE80  41 82 00 28 */	beq lbl_80232F68
/* 80232F44 0022FE84  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232F48 0022FE88  48 21 D8 F1 */	bl isFinishLoading__Q24Game9THPPlayerFv
/* 80232F4C 0022FE8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232F50 0022FE90  41 82 03 0C */	beq lbl_8023325C
/* 80232F54 0022FE94  38 00 00 00 */	li r0, 0
/* 80232F58 0022FE98  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232F5C 0022FE9C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232F60 0022FEA0  48 21 D5 25 */	bl play__Q24Game9THPPlayerFv
/* 80232F64 0022FEA4  48 00 02 F8 */	b lbl_8023325C
lbl_80232F68:
/* 80232F68 0022FEA8  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232F6C 0022FEAC  48 21 D9 29 */	bl isFinishPlaying__Q24Game9THPPlayerFv
/* 80232F70 0022FEB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232F74 0022FEB4  41 82 02 E8 */	beq lbl_8023325C
/* 80232F78 0022FEB8  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232F7C 0022FEBC  48 21 D5 E1 */	bl stop__Q24Game9THPPlayerFv
/* 80232F80 0022FEC0  7F A3 EB 78 */	mr r3, r29
/* 80232F84 0022FEC4  7F C4 F3 78 */	mr r4, r30
/* 80232F88 0022FEC8  81 9D 00 00 */	lwz r12, 0(r29)
/* 80232F8C 0022FECC  38 A0 00 01 */	li r5, 1
/* 80232F90 0022FED0  38 C0 00 00 */	li r6, 0
/* 80232F94 0022FED4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80232F98 0022FED8  7D 89 03 A6 */	mtctr r12
/* 80232F9C 0022FEDC  4E 80 04 21 */	bctrl 
/* 80232FA0 0022FEE0  48 00 02 BC */	b lbl_8023325C
.global lbl_80232FA4
lbl_80232FA4:
/* 80232FA4 0022FEE4  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232FA8 0022FEE8  81 83 00 00 */	lwz r12, 0(r3)
/* 80232FAC 0022FEEC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80232FB0 0022FEF0  7D 89 03 A6 */	mtctr r12
/* 80232FB4 0022FEF4  4E 80 04 21 */	bctrl 
/* 80232FB8 0022FEF8  88 1D 00 20 */	lbz r0, 0x20(r29)
/* 80232FBC 0022FEFC  28 00 00 00 */	cmplwi r0, 0
/* 80232FC0 0022FF00  41 82 00 28 */	beq lbl_80232FE8
/* 80232FC4 0022FF04  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232FC8 0022FF08  48 21 D8 71 */	bl isFinishLoading__Q24Game9THPPlayerFv
/* 80232FCC 0022FF0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232FD0 0022FF10  41 82 02 8C */	beq lbl_8023325C
/* 80232FD4 0022FF14  38 00 00 00 */	li r0, 0
/* 80232FD8 0022FF18  98 1D 00 20 */	stb r0, 0x20(r29)
/* 80232FDC 0022FF1C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232FE0 0022FF20  48 21 D4 A5 */	bl play__Q24Game9THPPlayerFv
/* 80232FE4 0022FF24  48 00 02 78 */	b lbl_8023325C
lbl_80232FE8:
/* 80232FE8 0022FF28  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232FEC 0022FF2C  48 21 D8 A9 */	bl isFinishPlaying__Q24Game9THPPlayerFv
/* 80232FF0 0022FF30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80232FF4 0022FF34  41 82 02 68 */	beq lbl_8023325C
/* 80232FF8 0022FF38  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80232FFC 0022FF3C  48 21 D5 61 */	bl stop__Q24Game9THPPlayerFv
/* 80233000 0022FF40  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 80233004 0022FF44  38 61 00 38 */	addi r3, r1, 0x38
/* 80233008 0022FF48  80 DD 00 14 */	lwz r6, 0x14(r29)
/* 8023300C 0022FF4C  38 A0 00 01 */	li r5, 1
/* 80233010 0022FF50  48 1D 91 D9 */	bl __ct__Q32kh6Screen15DispFinalResultFPQ32kh6Screen15TotalResultDataQ42kh6Screen15DispFinalResult10ResultTypeP7JKRHeap
/* 80233014 0022FF54  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80233018 0022FF58  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 8023301C 0022FF5C  48 1C 90 5D */	bl setGamePad__Q26Screen9Game2DMgrFP10Controller
/* 80233020 0022FF60  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80233024 0022FF64  38 81 00 38 */	addi r4, r1, 0x38
/* 80233028 0022FF68  48 1C B1 B1 */	bl open_FinalResult__Q26Screen9Game2DMgrFRQ32kh6Screen15DispFinalResult
/* 8023302C 0022FF6C  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80233030 0022FF70  28 00 00 00 */	cmplwi r0, 0
/* 80233034 0022FF74  40 82 00 18 */	bne lbl_8023304C
/* 80233038 0022FF78  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8023303C 0022FF7C  38 BF 00 28 */	addi r5, r31, 0x28
/* 80233040 0022FF80  38 80 01 D3 */	li r4, 0x1d3
/* 80233044 0022FF84  4C C6 31 82 */	crclr 6
/* 80233048 0022FF88  4B DF 75 F9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8023304C:
/* 8023304C 0022FF8C  83 CD 98 80 */	lwz r30, spSceneMgr__8PSSystem@sda21(r13)
/* 80233050 0022FF90  80 1E 00 04 */	lwz r0, 4(r30)
/* 80233054 0022FF94  28 00 00 00 */	cmplwi r0, 0
/* 80233058 0022FF98  40 82 00 18 */	bne lbl_80233070
/* 8023305C 0022FF9C  38 7F 00 34 */	addi r3, r31, 0x34
/* 80233060 0022FFA0  38 BF 00 28 */	addi r5, r31, 0x28
/* 80233064 0022FFA4  38 80 00 C7 */	li r4, 0xc7
/* 80233068 0022FFA8  4C C6 31 82 */	crclr 6
/* 8023306C 0022FFAC  4B DF 75 D5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80233070:
/* 80233070 0022FFB0  80 7E 00 04 */	lwz r3, 4(r30)
/* 80233074 0022FFB4  80 63 00 04 */	lwz r3, 4(r3)
/* 80233078 0022FFB8  81 83 00 00 */	lwz r12, 0(r3)
/* 8023307C 0022FFBC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80233080 0022FFC0  7D 89 03 A6 */	mtctr r12
/* 80233084 0022FFC4  4E 80 04 21 */	bctrl 
/* 80233088 0022FFC8  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 8023308C 0022FFCC  4B FB 43 E9 */	bl clearCurrentCave__Q24Game8PlayDataFv
/* 80233090 0022FFD0  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80233094 0022FFD4  38 00 00 01 */	li r0, 1
/* 80233098 0022FFD8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8023309C 0022FFDC  98 03 00 42 */	stb r0, 0x42(r3)
/* 802330A0 0022FFE0  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 802330A4 0022FFE4  48 1E FE 8D */	bl getPlayCommonData__6SystemFv
/* 802330A8 0022FFE8  88 C3 00 00 */	lbz r6, 0(r3)
/* 802330AC 0022FFEC  38 A0 00 0A */	li r5, 0xa
/* 802330B0 0022FFF0  38 80 00 01 */	li r4, 1
/* 802330B4 0022FFF4  38 00 00 00 */	li r0, 0
/* 802330B8 0022FFF8  60 C6 00 02 */	ori r6, r6, 2
/* 802330BC 0022FFFC  98 C3 00 00 */	stb r6, 0(r3)
/* 802330C0 00230000  80 CD 94 90 */	lwz r6, playData__4Game@sda21(r13)
/* 802330C4 00230004  88 66 00 2F */	lbz r3, 0x2f(r6)
/* 802330C8 00230008  60 63 00 02 */	ori r3, r3, 2
/* 802330CC 0023000C  98 66 00 2F */	stb r3, 0x2f(r6)
/* 802330D0 00230010  98 BD 00 11 */	stb r5, 0x11(r29)
/* 802330D4 00230014  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 802330D8 00230018  98 83 00 19 */	stb r4, 0x19(r3)
/* 802330DC 0023001C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802330E0 00230020  48 00 01 7C */	b lbl_8023325C
.global lbl_802330E4
lbl_802330E4:
/* 802330E4 00230024  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 802330E8 00230028  81 83 00 00 */	lwz r12, 0(r3)
/* 802330EC 0023002C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802330F0 00230030  7D 89 03 A6 */	mtctr r12
/* 802330F4 00230034  4E 80 04 21 */	bctrl 
/* 802330F8 00230038  88 1D 00 20 */	lbz r0, 0x20(r29)
/* 802330FC 0023003C  28 00 00 00 */	cmplwi r0, 0
/* 80233100 00230040  41 82 00 28 */	beq lbl_80233128
/* 80233104 00230044  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80233108 00230048  48 21 D7 31 */	bl isFinishLoading__Q24Game9THPPlayerFv
/* 8023310C 0023004C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80233110 00230050  41 82 01 4C */	beq lbl_8023325C
/* 80233114 00230054  38 00 00 00 */	li r0, 0
/* 80233118 00230058  98 1D 00 20 */	stb r0, 0x20(r29)
/* 8023311C 0023005C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80233120 00230060  48 21 D3 65 */	bl play__Q24Game9THPPlayerFv
/* 80233124 00230064  48 00 01 38 */	b lbl_8023325C
lbl_80233128:
/* 80233128 00230068  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8023312C 0023006C  48 21 D7 69 */	bl isFinishPlaying__Q24Game9THPPlayerFv
/* 80233130 00230070  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80233134 00230074  41 82 01 28 */	beq lbl_8023325C
/* 80233138 00230078  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8023313C 0023007C  48 21 D4 21 */	bl stop__Q24Game9THPPlayerFv
/* 80233140 00230080  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 80233144 00230084  38 61 00 20 */	addi r3, r1, 0x20
/* 80233148 00230088  80 DD 00 14 */	lwz r6, 0x14(r29)
/* 8023314C 0023008C  38 A0 00 01 */	li r5, 1
/* 80233150 00230090  48 1D 90 99 */	bl __ct__Q32kh6Screen15DispFinalResultFPQ32kh6Screen15TotalResultDataQ42kh6Screen15DispFinalResult10ResultTypeP7JKRHeap
/* 80233154 00230094  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80233158 00230098  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 8023315C 0023009C  48 1C 8F 1D */	bl setGamePad__Q26Screen9Game2DMgrFP10Controller
/* 80233160 002300A0  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80233164 002300A4  38 81 00 20 */	addi r4, r1, 0x20
/* 80233168 002300A8  48 1C B0 71 */	bl open_FinalResult__Q26Screen9Game2DMgrFRQ32kh6Screen15DispFinalResult
/* 8023316C 002300AC  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80233170 002300B0  28 00 00 00 */	cmplwi r0, 0
/* 80233174 002300B4  40 82 00 18 */	bne lbl_8023318C
/* 80233178 002300B8  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8023317C 002300BC  38 BF 00 28 */	addi r5, r31, 0x28
/* 80233180 002300C0  38 80 01 D3 */	li r4, 0x1d3
/* 80233184 002300C4  4C C6 31 82 */	crclr 6
/* 80233188 002300C8  4B DF 74 B9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8023318C:
/* 8023318C 002300CC  83 CD 98 80 */	lwz r30, spSceneMgr__8PSSystem@sda21(r13)
/* 80233190 002300D0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80233194 002300D4  28 00 00 00 */	cmplwi r0, 0
/* 80233198 002300D8  40 82 00 18 */	bne lbl_802331B0
/* 8023319C 002300DC  38 7F 00 34 */	addi r3, r31, 0x34
/* 802331A0 002300E0  38 BF 00 28 */	addi r5, r31, 0x28
/* 802331A4 002300E4  38 80 00 C7 */	li r4, 0xc7
/* 802331A8 002300E8  4C C6 31 82 */	crclr 6
/* 802331AC 002300EC  4B DF 74 95 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802331B0:
/* 802331B0 002300F0  80 7E 00 04 */	lwz r3, 4(r30)
/* 802331B4 002300F4  80 63 00 04 */	lwz r3, 4(r3)
/* 802331B8 002300F8  81 83 00 00 */	lwz r12, 0(r3)
/* 802331BC 002300FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802331C0 00230100  7D 89 03 A6 */	mtctr r12
/* 802331C4 00230104  4E 80 04 21 */	bctrl 
/* 802331C8 00230108  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 802331CC 0023010C  4B FB 42 A9 */	bl clearCurrentCave__Q24Game8PlayDataFv
/* 802331D0 00230110  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 802331D4 00230114  38 00 00 01 */	li r0, 1
/* 802331D8 00230118  80 63 00 60 */	lwz r3, 0x60(r3)
/* 802331DC 0023011C  98 03 00 42 */	stb r0, 0x42(r3)
/* 802331E0 00230120  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 802331E4 00230124  48 1E FD 4D */	bl getPlayCommonData__6SystemFv
/* 802331E8 00230128  88 C3 00 00 */	lbz r6, 0(r3)
/* 802331EC 0023012C  38 A0 00 0A */	li r5, 0xa
/* 802331F0 00230130  38 80 00 01 */	li r4, 1
/* 802331F4 00230134  38 00 00 00 */	li r0, 0
/* 802331F8 00230138  60 C6 00 02 */	ori r6, r6, 2
/* 802331FC 0023013C  98 C3 00 00 */	stb r6, 0(r3)
/* 80233200 00230140  80 CD 94 90 */	lwz r6, playData__4Game@sda21(r13)
/* 80233204 00230144  88 66 00 2F */	lbz r3, 0x2f(r6)
/* 80233208 00230148  60 63 00 02 */	ori r3, r3, 2
/* 8023320C 0023014C  98 66 00 2F */	stb r3, 0x2f(r6)
/* 80233210 00230150  98 BD 00 11 */	stb r5, 0x11(r29)
/* 80233214 00230154  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80233218 00230158  98 83 00 19 */	stb r4, 0x19(r3)
/* 8023321C 0023015C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80233220 00230160  48 00 00 3C */	b lbl_8023325C
.global lbl_80233224
lbl_80233224:
/* 80233224 00230164  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 80233228 00230168  48 18 63 89 */	bl update__14TParticle2dMgrFv
/* 8023322C 0023016C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80233230 00230170  48 1C B0 55 */	bl check_FinalResult__Q26Screen9Game2DMgrCFv
/* 80233234 00230174  2C 03 00 00 */	cmpwi r3, 0
/* 80233238 00230178  41 82 00 24 */	beq lbl_8023325C
/* 8023323C 0023017C  7F A3 EB 78 */	mr r3, r29
/* 80233240 00230180  7F C4 F3 78 */	mr r4, r30
/* 80233244 00230184  81 9D 00 00 */	lwz r12, 0(r29)
/* 80233248 00230188  38 A0 00 01 */	li r5, 1
/* 8023324C 0023018C  38 C0 00 00 */	li r6, 0
/* 80233250 00230190  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80233254 00230194  7D 89 03 A6 */	mtctr r12
/* 80233258 00230198  4E 80 04 21 */	bctrl 
lbl_8023325C:
/* 8023325C 0023019C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80233260 002301A0  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80233264 002301A4  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80233268 002301A8  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 8023326C 002301AC  7C 08 03 A6 */	mtlr r0
/* 80233270 002301B0  38 21 00 80 */	addi r1, r1, 0x80
/* 80233274 002301B4  4E 80 00 20 */	blr 
.endif

.global draw__Q34Game10SingleGame11EndingStateFPQ24Game17SingleGameSectionR8Graphics
draw__Q34Game10SingleGame11EndingStateFPQ24Game17SingleGameSectionR8Graphics:
/* 80233278 002301B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023327C 002301BC  7C 08 02 A6 */	mflr r0
/* 80233280 002301C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80233284 002301C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80233288 002301C8  7C BF 2B 78 */	mr r31, r5
/* 8023328C 002301CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80233290 002301D0  7C 9E 23 78 */	mr r30, r4
/* 80233294 002301D4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80233298 002301D8  28 00 00 00 */	cmplwi r0, 0
/* 8023329C 002301DC  41 82 00 98 */	beq lbl_80233334
/* 802332A0 002301E0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802332A4 002301E4  28 03 00 00 */	cmplwi r3, 0
/* 802332A8 002301E8  41 82 00 18 */	beq lbl_802332C0
/* 802332AC 002301EC  81 83 00 00 */	lwz r12, 0(r3)
/* 802332B0 002301F0  7F E4 FB 78 */	mr r4, r31
/* 802332B4 002301F4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802332B8 002301F8  7D 89 03 A6 */	mtctr r12
/* 802332BC 002301FC  4E 80 04 21 */	bctrl 
lbl_802332C0:
/* 802332C0 00230200  38 7F 01 90 */	addi r3, r31, 0x190
/* 802332C4 00230204  81 9F 01 90 */	lwz r12, 0x190(r31)
/* 802332C8 00230208  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802332CC 0023020C  7D 89 03 A6 */	mtctr r12
/* 802332D0 00230210  4E 80 04 21 */	bctrl 
/* 802332D4 00230214  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 802332D8 00230218  38 80 00 01 */	li r4, 1
/* 802332DC 0023021C  38 A0 00 00 */	li r5, 0
/* 802332E0 00230220  48 18 62 F5 */	bl draw__14TParticle2dMgrFUcUs
/* 802332E4 00230224  38 7F 00 BC */	addi r3, r31, 0xbc
/* 802332E8 00230228  81 9F 00 BC */	lwz r12, 0xbc(r31)
/* 802332EC 0023022C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802332F0 00230230  7D 89 03 A6 */	mtctr r12
/* 802332F4 00230234  4E 80 04 21 */	bctrl 
/* 802332F8 00230238  7F C3 F3 78 */	mr r3, r30
/* 802332FC 0023023C  7F E4 FB 78 */	mr r4, r31
/* 80233300 00230240  81 9E 00 00 */	lwz r12, 0(r30)
/* 80233304 00230244  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80233308 00230248  7D 89 03 A6 */	mtctr r12
/* 8023330C 0023024C  4E 80 04 21 */	bctrl 
/* 80233310 00230250  38 7F 01 90 */	addi r3, r31, 0x190
/* 80233314 00230254  81 9F 01 90 */	lwz r12, 0x190(r31)
/* 80233318 00230258  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8023331C 0023025C  7D 89 03 A6 */	mtctr r12
/* 80233320 00230260  4E 80 04 21 */	bctrl 
/* 80233324 00230264  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 80233328 00230268  38 80 00 00 */	li r4, 0
/* 8023332C 0023026C  38 A0 00 00 */	li r5, 0
/* 80233330 00230270  48 18 62 A5 */	bl draw__14TParticle2dMgrFUcUs
lbl_80233334:
/* 80233334 00230274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80233338 00230278  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023333C 0023027C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80233340 00230280  7C 08 03 A6 */	mtlr r0
/* 80233344 00230284  38 21 00 10 */	addi r1, r1, 0x10
/* 80233348 00230288  4E 80 00 20 */	blr 

.global cleanup__Q34Game10SingleGame11EndingStateFPQ24Game17SingleGameSection
cleanup__Q34Game10SingleGame11EndingStateFPQ24Game17SingleGameSection:
/* 8023334C 0023028C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80233350 00230290  7C 08 02 A6 */	mflr r0
/* 80233354 00230294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80233358 00230298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023335C 0023029C  93 C1 00 08 */	stw r30, 8(r1)
/* 80233360 002302A0  7C 7E 1B 78 */	mr r30, r3
/* 80233364 002302A4  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80233368 002302A8  28 00 00 00 */	cmplwi r0, 0
/* 8023336C 002302AC  40 82 00 20 */	bne lbl_8023338C
/* 80233370 002302B0  3C 60 80 48 */	lis r3, lbl_804839CC@ha
/* 80233374 002302B4  3C A0 80 48 */	lis r5, lbl_804839D8@ha
/* 80233378 002302B8  38 63 39 CC */	addi r3, r3, lbl_804839CC@l
/* 8023337C 002302BC  38 80 01 D3 */	li r4, 0x1d3
/* 80233380 002302C0  38 A5 39 D8 */	addi r5, r5, lbl_804839D8@l
/* 80233384 002302C4  4C C6 31 82 */	crclr 6
/* 80233388 002302C8  4B DF 72 B9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8023338C:
/* 8023338C 002302CC  83 ED 98 80 */	lwz r31, spSceneMgr__8PSSystem@sda21(r13)
/* 80233390 002302D0  28 1F 00 00 */	cmplwi r31, 0
/* 80233394 002302D4  40 82 00 20 */	bne lbl_802333B4
/* 80233398 002302D8  3C 60 80 48 */	lis r3, lbl_804839CC@ha
/* 8023339C 002302DC  3C A0 80 48 */	lis r5, lbl_804839D8@ha
/* 802333A0 002302E0  38 63 39 CC */	addi r3, r3, lbl_804839CC@l
/* 802333A4 002302E4  38 80 01 DC */	li r4, 0x1dc
/* 802333A8 002302E8  38 A5 39 D8 */	addi r5, r5, lbl_804839D8@l
/* 802333AC 002302EC  4C C6 31 82 */	crclr 6
/* 802333B0 002302F0  4B DF 72 91 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802333B4:
/* 802333B4 002302F4  7F E3 FB 78 */	mr r3, r31
/* 802333B8 002302F8  48 10 EE 29 */	bl deleteCurrentScene__Q28PSSystem8SceneMgrFv
/* 802333BC 002302FC  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802333C0 00230300  28 03 00 00 */	cmplwi r3, 0
/* 802333C4 00230304  41 82 00 08 */	beq lbl_802333CC
/* 802333C8 00230308  48 21 D1 95 */	bl stop__Q24Game9THPPlayerFv
lbl_802333CC:
/* 802333CC 0023030C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 802333D0 00230310  4B DF 03 61 */	bl freeAll__7JKRHeapFv
/* 802333D4 00230314  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 802333D8 00230318  4B DF 01 DD */	bl destroy__7JKRHeapFv
/* 802333DC 0023031C  38 00 00 00 */	li r0, 0
/* 802333E0 00230320  90 1E 00 14 */	stw r0, 0x14(r30)
/* 802333E4 00230324  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 802333E8 00230328  4B DF 01 BD */	bl becomeCurrentHeap__7JKRHeapFv
/* 802333EC 0023032C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802333F0 00230330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802333F4 00230334  83 C1 00 08 */	lwz r30, 8(r1)
/* 802333F8 00230338  7C 08 03 A6 */	mtlr r0
/* 802333FC 0023033C  38 21 00 10 */	addi r1, r1, 0x10
/* 80233400 00230340  4E 80 00 20 */	blr 

.global getSize__Q32og6Screen22DispMemberFinalMessageFv
getSize__Q32og6Screen22DispMemberFinalMessageFv:
/* 80233404 00230344  38 60 00 0C */	li r3, 0xc
/* 80233408 00230348  4E 80 00 20 */	blr 

.global getOwnerID__Q32og6Screen22DispMemberFinalMessageFv
getOwnerID__Q32og6Screen22DispMemberFinalMessageFv:
/* 8023340C 0023034C  3C 60 00 4F */	lis r3, 0x004F4741@ha
/* 80233410 00230350  38 63 47 41 */	addi r3, r3, 0x004F4741@l
/* 80233414 00230354  4E 80 00 20 */	blr 

.global getMemberID__Q32og6Screen22DispMemberFinalMessageFv
getMemberID__Q32og6Screen22DispMemberFinalMessageFv:
/* 80233418 00230358  3C 80 4C 4D */	lis r4, 0x4C4D5347@ha
/* 8023341C 0023035C  3C 60 46 49 */	lis r3, 0x46494E41@ha
/* 80233420 00230360  38 84 53 47 */	addi r4, r4, 0x4C4D5347@l
/* 80233424 00230364  38 63 4E 41 */	addi r3, r3, 0x46494E41@l
/* 80233428 00230368  4E 80 00 20 */	blr 

.global "invoke__42Delegate<Q34Game10SingleGame11EndingState>Fv"
"invoke__42Delegate<Q34Game10SingleGame11EndingState>Fv":
/* 8023342C 0023036C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80233430 00230370  7C 08 02 A6 */	mflr r0
/* 80233434 00230374  7C 64 1B 78 */	mr r4, r3
/* 80233438 00230378  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023343C 0023037C  39 84 00 08 */	addi r12, r4, 8
/* 80233440 00230380  80 63 00 04 */	lwz r3, 4(r3)
/* 80233444 00230384  4B E8 E6 E1 */	bl __ptmf_scall
/* 80233448 00230388  60 00 00 00 */	nop 
/* 8023344C 0023038C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80233450 00230390  7C 08 03 A6 */	mtlr r0
/* 80233454 00230394  38 21 00 10 */	addi r1, r1, 0x10
/* 80233458 00230398  4E 80 00 20 */	blr 

.global __sinit_singleGS_Ending_cpp
__sinit_singleGS_Ending_cpp:
/* 8023345C 0023039C  3C 80 80 51 */	lis r4, __float_nan@ha
/* 80233460 002303A0  38 00 FF FF */	li r0, -1
/* 80233464 002303A4  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 80233468 002303A8  3C 60 80 4C */	lis r3, lbl_804C1370@ha
/* 8023346C 002303AC  90 0D 96 20 */	stw r0, lbl_80515CA0@sda21(r13)
/* 80233470 002303B0  D4 03 13 70 */	stfsu f0, lbl_804C1370@l(r3)
/* 80233474 002303B4  D0 0D 96 24 */	stfs f0, lbl_80515CA4@sda21(r13)
/* 80233478 002303B8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8023347C 002303BC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80233480 002303C0  4E 80 00 20 */	blr 
