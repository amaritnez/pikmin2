.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.obj lbl_8049D9A8, local
	.asciz "PSMainSide_BossMgr.cpp"
.endobj lbl_8049D9A8
.balign 4
.obj lbl_8049D9C0, local
	.asciz "P2Assert"
.endobj lbl_8049D9C0
.balign 4
.obj lbl_8049D9CC, local
	.asciz "PSGame.h"
.endobj lbl_8049D9CC
.balign 4
.obj lbl_8049D9D8, local
	.asciz "PSScene.h"
.endobj lbl_8049D9D8
.balign 4
.obj lbl_8049D9E4, local
	.asciz "get sound scene at\ninvalid timming\n"
.endobj lbl_8049D9E4

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.obj __vt__Q33PSM12BossBgmFader17TypedProc_MidBoss, global
__vt__Q33PSM12BossBgmFader17TypedProc_MidBoss:
	.4byte 0
	.4byte 0
	.4byte update__Q33PSM12BossBgmFader17TypedProc_MidBossFv
.endobj __vt__Q33PSM12BossBgmFader17TypedProc_MidBoss
.obj __vt__Q33PSM12BossBgmFader9TypedProc, global
	.4byte 0
	.4byte 0
	.4byte update__Q33PSM12BossBgmFader9TypedProcFv
.endobj __vt__Q33PSM12BossBgmFader9TypedProc

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.obj lbl_80520CB8, local
	.float 0.5
.endobj lbl_80520CB8
.obj lbl_80520CBC, local
	.float 1.0E9
.endobj lbl_80520CBC
.obj lbl_80520CC0, local
	.float 0.0
.endobj lbl_80520CC0
.obj lbl_80520CC4, local
	.float 9000000.0
.endobj lbl_80520CC4
.obj lbl_80520CC8, local
	.float 1.0E8
.endobj lbl_80520CC8
.obj lbl_80520CCC, local
	.float 1.0
.endobj lbl_80520CCC
.obj lbl_80520CD0, local
	.float 1000.0
.endobj lbl_80520CD0
.obj lbl_80520CD4, local
	.float 600.0
.endobj lbl_80520CD4
.obj lbl_80520CD8, local
	.float 400.0
.endobj lbl_80520CD8

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn update__Q33PSM12BossBgmFader9TypedProcFv, global
/* 8046C6B8 004695F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8046C6BC 004695FC  7C 08 02 A6 */	mflr r0
/* 8046C6C0 00469600  90 01 00 44 */	stw r0, 0x44(r1)
/* 8046C6C4 00469604  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8046C6C8 00469608  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8046C6CC 0046960C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8046C6D0 00469610  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8046C6D4 00469614  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046C6D8 00469618  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8046C6DC 0046961C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8046C6E0 00469620  7C 7E 1B 78 */	mr r30, r3
/* 8046C6E4 00469624  38 00 00 00 */	li r0, 0
/* 8046C6E8 00469628  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8046C6EC 0046962C  C3 E2 29 5C */	lfs f31, lbl_80520CBC@sda21(r2)
/* 8046C6F0 00469630  90 03 00 28 */	stw r0, 0x28(r3)
/* 8046C6F4 00469634  80 63 00 00 */	lwz r3, 0(r3)
/* 8046C6F8 00469638  48 00 00 2C */	b .L_8046C724
.L_8046C6FC:
/* 8046C6FC 0046963C  80 83 00 00 */	lwz r4, 0(r3)
/* 8046C700 00469640  88 04 00 FC */	lbz r0, 0xfc(r4)
/* 8046C704 00469644  28 00 00 00 */	cmplwi r0, 0
/* 8046C708 00469648  41 82 00 18 */	beq .L_8046C720
/* 8046C70C 0046964C  C0 04 00 E0 */	lfs f0, 0xe0(r4)
/* 8046C710 00469650  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8046C714 00469654  40 80 00 0C */	bge .L_8046C720
/* 8046C718 00469658  FF E0 00 90 */	fmr f31, f0
/* 8046C71C 0046965C  90 9E 00 28 */	stw r4, 0x28(r30)
.L_8046C720:
/* 8046C720 00469660  80 63 00 0C */	lwz r3, 0xc(r3)
.L_8046C724:
/* 8046C724 00469664  28 03 00 00 */	cmplwi r3, 0
/* 8046C728 00469668  40 82 FF D4 */	bne .L_8046C6FC
/* 8046C72C 0046966C  C0 02 29 64 */	lfs f0, lbl_80520CC4@sda21(r2)
/* 8046C730 00469670  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8046C734 00469674  40 81 00 08 */	ble .L_8046C73C
/* 8046C738 00469678  FF E0 08 90 */	fmr f31, f1
.L_8046C73C:
/* 8046C73C 0046967C  C3 C2 29 68 */	lfs f30, lbl_80520CC8@sda21(r2)
/* 8046C740 00469680  3B E0 00 00 */	li r31, 0
/* 8046C744 00469684  83 BE 00 00 */	lwz r29, 0(r30)
/* 8046C748 00469688  48 00 00 48 */	b .L_8046C790
.L_8046C74C:
/* 8046C74C 0046968C  80 7D 00 00 */	lwz r3, 0(r29)
/* 8046C750 00469690  81 83 00 28 */	lwz r12, 0x28(r3)
/* 8046C754 00469694  81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8046C758 00469698  7D 89 03 A6 */	mtctr r12
/* 8046C75C 0046969C  4E 80 04 21 */	bctrl 
/* 8046C760 004696A0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8046C764 004696A4  4B FF 37 B9 */	bl isOnDisappearing__Q23PSM9EnemyBossFv
/* 8046C768 004696A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8046C76C 004696AC  41 82 00 20 */	beq .L_8046C78C
/* 8046C770 004696B0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8046C774 004696B4  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 8046C778 004696B8  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8046C77C 004696BC  4C 40 13 82 */	cror 2, 0, 2
/* 8046C780 004696C0  40 82 00 0C */	bne .L_8046C78C
/* 8046C784 004696C4  FF C0 00 90 */	fmr f30, f0
/* 8046C788 004696C8  7C 7F 1B 78 */	mr r31, r3
.L_8046C78C:
/* 8046C78C 004696CC  83 BD 00 0C */	lwz r29, 0xc(r29)
.L_8046C790:
/* 8046C790 004696D0  28 1D 00 00 */	cmplwi r29, 0
/* 8046C794 004696D4  40 82 FF B8 */	bne .L_8046C74C
/* 8046C798 004696D8  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 8046C79C 004696DC  28 00 00 00 */	cmplwi r0, 0
/* 8046C7A0 004696E0  41 82 00 7C */	beq .L_8046C81C
/* 8046C7A4 004696E4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8046C7A8 004696E8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8046C7AC 004696EC  40 80 00 1C */	bge .L_8046C7C8
/* 8046C7B0 004696F0  38 00 00 00 */	li r0, 0
/* 8046C7B4 004696F4  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8046C7B8 004696F8  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8046C7BC 004696FC  60 00 00 03 */	ori r0, r0, 3
/* 8046C7C0 00469700  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8046C7C4 00469704  48 00 00 60 */	b .L_8046C824
.L_8046C7C8:
/* 8046C7C8 00469708  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8046C7CC 0046970C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8046C7D0 00469710  40 80 00 1C */	bge .L_8046C7EC
/* 8046C7D4 00469714  38 00 00 00 */	li r0, 0
/* 8046C7D8 00469718  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8046C7DC 0046971C  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8046C7E0 00469720  60 00 00 02 */	ori r0, r0, 2
/* 8046C7E4 00469724  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8046C7E8 00469728  48 00 00 3C */	b .L_8046C824
.L_8046C7EC:
/* 8046C7EC 0046972C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8046C7F0 00469730  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8046C7F4 00469734  40 80 00 1C */	bge .L_8046C810
/* 8046C7F8 00469738  38 00 00 00 */	li r0, 0
/* 8046C7FC 0046973C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8046C800 00469740  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8046C804 00469744  60 00 00 01 */	ori r0, r0, 1
/* 8046C808 00469748  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8046C80C 0046974C  48 00 00 18 */	b .L_8046C824
.L_8046C810:
/* 8046C810 00469750  38 00 00 00 */	li r0, 0
/* 8046C814 00469754  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8046C818 00469758  48 00 00 0C */	b .L_8046C824
.L_8046C81C:
/* 8046C81C 0046975C  38 00 00 00 */	li r0, 0
/* 8046C820 00469760  90 1E 00 20 */	stw r0, 0x20(r30)
.L_8046C824:
/* 8046C824 00469764  28 1F 00 00 */	cmplwi r31, 0
/* 8046C828 00469768  41 82 00 38 */	beq .L_8046C860
/* 8046C82C 0046976C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8046C830 00469770  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8046C834 00469774  40 80 00 2C */	bge .L_8046C860
/* 8046C838 00469778  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8046C83C 0046977C  2C 00 00 00 */	cmpwi r0, 0
/* 8046C840 00469780  40 82 00 20 */	bne .L_8046C860
/* 8046C844 00469784  38 00 00 00 */	li r0, 0
/* 8046C848 00469788  FF E0 F0 90 */	fmr f31, f30
/* 8046C84C 0046978C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8046C850 00469790  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8046C854 00469794  60 00 00 04 */	ori r0, r0, 4
/* 8046C858 00469798  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8046C85C 0046979C  93 FE 00 28 */	stw r31, 0x28(r30)
.L_8046C860:
/* 8046C860 004697A0  D3 FE 00 2C */	stfs f31, 0x2c(r30)
/* 8046C864 004697A4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8046C868 004697A8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8046C86C 004697AC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8046C870 004697B0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8046C874 004697B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046C878 004697B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8046C87C 004697BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8046C880 004697C0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8046C884 004697C4  7C 08 03 A6 */	mtlr r0
/* 8046C888 004697C8  38 21 00 40 */	addi r1, r1, 0x40
/* 8046C88C 004697CC  4E 80 00 20 */	blr 
.endfn update__Q33PSM12BossBgmFader9TypedProcFv

.fn update__Q33PSM12BossBgmFader17TypedProc_MidBossFv, global
/* 8046C890 004697D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046C894 004697D4  7C 08 02 A6 */	mflr r0
/* 8046C898 004697D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046C89C 004697DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046C8A0 004697E0  7C 7F 1B 78 */	mr r31, r3
/* 8046C8A4 004697E4  4B FF FE 15 */	bl update__Q33PSM12BossBgmFader9TypedProcFv
/* 8046C8A8 004697E8  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8046C8AC 004697EC  28 03 00 00 */	cmplwi r3, 0
/* 8046C8B0 004697F0  41 82 00 08 */	beq .L_8046C8B8
/* 8046C8B4 004697F4  4B FE BC CD */	bl frameEndWork__Q23PSM15DirectorUpdatorFv
.L_8046C8B8:
/* 8046C8B8 004697F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046C8BC 004697FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046C8C0 00469800  7C 08 03 A6 */	mtlr r0
/* 8046C8C4 00469804  38 21 00 10 */	addi r1, r1, 0x10
/* 8046C8C8 00469808  4E 80 00 20 */	blr 
.endfn update__Q33PSM12BossBgmFader17TypedProc_MidBossFv

.fn __ct__Q33PSM12BossBgmFader3MgrFv, global
/* 8046C8CC 0046980C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046C8D0 00469810  7C 08 02 A6 */	mflr r0
/* 8046C8D4 00469814  3C 80 80 4F */	lis r4, "__vt__Q28PSSystem39SingletonBase<Q33PSM12BossBgmFader3Mgr>"@ha
/* 8046C8D8 00469818  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046C8DC 0046981C  38 04 F4 D0 */	addi r0, r4, "__vt__Q28PSSystem39SingletonBase<Q33PSM12BossBgmFader3Mgr>"@l
/* 8046C8E0 00469820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046C8E4 00469824  7C 7F 1B 78 */	mr r31, r3
/* 8046C8E8 00469828  3C 60 80 4F */	lis r3, __vt__Q33PSM12BossBgmFader3Mgr@ha
/* 8046C8EC 0046982C  93 C1 00 08 */	stw r30, 8(r1)
/* 8046C8F0 00469830  3B DF 00 04 */	addi r30, r31, 4
/* 8046C8F4 00469834  90 1F 00 00 */	stw r0, 0(r31)
/* 8046C8F8 00469838  38 03 F4 DC */	addi r0, r3, __vt__Q33PSM12BossBgmFader3Mgr@l
/* 8046C8FC 0046983C  7F C3 F3 78 */	mr r3, r30
/* 8046C900 00469840  93 ED 91 B0 */	stw r31, "sInstance__Q28PSSystem39SingletonBase<Q33PSM12BossBgmFader3Mgr>"@sda21(r13)
/* 8046C904 00469844  90 1F 00 00 */	stw r0, 0(r31)
/* 8046C908 00469848  4B BB 9F C9 */	bl initiate__10JSUPtrListFv
/* 8046C90C 0046984C  3C 60 80 4F */	lis r3, __vt__Q33PSM12BossBgmFader9TypedProc@ha
/* 8046C910 00469850  C0 42 29 70 */	lfs f2, lbl_80520CD0@sda21(r2)
/* 8046C914 00469854  38 03 F6 E4 */	addi r0, r3, __vt__Q33PSM12BossBgmFader9TypedProc@l
/* 8046C918 00469858  C0 22 29 74 */	lfs f1, lbl_80520CD4@sda21(r2)
/* 8046C91C 0046985C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8046C920 00469860  38 00 00 00 */	li r0, 0
/* 8046C924 00469864  C0 02 29 78 */	lfs f0, lbl_80520CD8@sda21(r2)
/* 8046C928 00469868  D0 5E 00 10 */	stfs f2, 0x10(r30)
/* 8046C92C 0046986C  C0 42 29 58 */	lfs f2, lbl_80520CB8@sda21(r2)
/* 8046C930 00469870  D0 3E 00 14 */	stfs f1, 0x14(r30)
/* 8046C934 00469874  C0 22 29 5C */	lfs f1, lbl_80520CBC@sda21(r2)
/* 8046C938 00469878  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8046C93C 0046987C  C0 02 29 60 */	lfs f0, lbl_80520CC0@sda21(r2)
/* 8046C940 00469880  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 8046C944 00469884  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8046C948 00469888  D0 5E 00 1C */	stfs f2, 0x1c(r30)
/* 8046C94C 0046988C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8046C950 00469890  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8046C954 00469894  90 1E 00 28 */	stw r0, 0x28(r30)
/* 8046C958 00469898  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 8046C95C 0046989C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8046C960 004698A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046C964 004698A4  41 81 00 20 */	bgt .L_8046C984
/* 8046C968 004698A8  3C 60 80 4A */	lis r3, lbl_8049D9A8@ha
/* 8046C96C 004698AC  3C A0 80 4A */	lis r5, lbl_8049D9C0@ha
/* 8046C970 004698B0  38 63 D9 A8 */	addi r3, r3, lbl_8049D9A8@l
/* 8046C974 004698B4  38 80 00 2F */	li r4, 0x2f
/* 8046C978 004698B8  38 A5 D9 C0 */	addi r5, r5, lbl_8049D9C0@l
/* 8046C97C 004698BC  4C C6 31 82 */	crclr 6
/* 8046C980 004698C0  4B BB DC C1 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046C984:
/* 8046C984 004698C4  3C 60 80 4F */	lis r3, __vt__Q33PSM12BossBgmFader17TypedProc_MidBoss@ha
/* 8046C988 004698C8  38 00 00 00 */	li r0, 0
/* 8046C98C 004698CC  38 83 F6 D8 */	addi r4, r3, __vt__Q33PSM12BossBgmFader17TypedProc_MidBoss@l
/* 8046C990 004698D0  7F E3 FB 78 */	mr r3, r31
/* 8046C994 004698D4  90 9E 00 0C */	stw r4, 0xc(r30)
/* 8046C998 004698D8  90 1E 00 30 */	stw r0, 0x30(r30)
/* 8046C99C 004698DC  98 1F 00 38 */	stb r0, 0x38(r31)
/* 8046C9A0 004698E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046C9A4 004698E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046C9A8 004698E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046C9AC 004698EC  7C 08 03 A6 */	mtlr r0
/* 8046C9B0 004698F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8046C9B4 004698F4  4E 80 00 20 */	blr 
.endfn __ct__Q33PSM12BossBgmFader3MgrFv

.fn appendTarget__Q33PSM12BossBgmFader3MgrFP25JSULink<Q23PSM9EnemyBoss>, global
/* 8046C9B8 004698F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046C9BC 004698FC  7C 08 02 A6 */	mflr r0
/* 8046C9C0 00469900  38 63 00 04 */	addi r3, r3, 4
/* 8046C9C4 00469904  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046C9C8 00469908  4B BB 9F 1D */	bl append__10JSUPtrListFP10JSUPtrLink
/* 8046C9CC 0046990C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046C9D0 00469910  7C 08 03 A6 */	mtlr r0
/* 8046C9D4 00469914  38 21 00 10 */	addi r1, r1, 0x10
/* 8046C9D8 00469918  4E 80 00 20 */	blr 
.endfn appendTarget__Q33PSM12BossBgmFader3MgrFP25JSULink<Q23PSM9EnemyBoss>

.fn exec__Q33PSM12BossBgmFader3MgrFv, global
/* 8046C9DC 0046991C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8046C9E0 00469920  7C 08 02 A6 */	mflr r0
/* 8046C9E4 00469924  90 01 00 44 */	stw r0, 0x44(r1)
/* 8046C9E8 00469928  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8046C9EC 0046992C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8046C9F0 00469930  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8046C9F4 00469934  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8046C9F8 00469938  BF 41 00 08 */	stmw r26, 8(r1)
/* 8046C9FC 0046993C  7C 7B 1B 78 */	mr r27, r3
/* 8046CA00 00469940  3C 80 80 4A */	lis r4, lbl_8049D9A8@ha
/* 8046CA04 00469944  38 7B 00 04 */	addi r3, r27, 4
/* 8046CA08 00469948  81 9B 00 10 */	lwz r12, 0x10(r27)
/* 8046CA0C 0046994C  3B E4 D9 A8 */	addi r31, r4, lbl_8049D9A8@l
/* 8046CA10 00469950  81 8C 00 08 */	lwz r12, 8(r12)
/* 8046CA14 00469954  7D 89 03 A6 */	mtctr r12
/* 8046CA18 00469958  4E 80 04 21 */	bctrl 
/* 8046CA1C 0046995C  4B EC B5 21 */	bl PSGetDirectedMainBgmA__Fv
/* 8046CA20 00469960  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8046CA24 00469964  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8046CA28 00469968  7D 89 03 A6 */	mtctr r12
/* 8046CA2C 0046996C  4E 80 04 21 */	bctrl 
/* 8046CA30 00469970  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 8046CA34 00469974  83 C3 00 00 */	lwz r30, 0(r3)
/* 8046CA38 00469978  28 00 00 00 */	cmplwi r0, 0
/* 8046CA3C 0046997C  40 82 00 18 */	bne .L_8046CA54
/* 8046CA40 00469980  38 7F 00 24 */	addi r3, r31, 0x24
/* 8046CA44 00469984  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CA48 00469988  38 80 01 D3 */	li r4, 0x1d3
/* 8046CA4C 0046998C  4C C6 31 82 */	crclr 6
/* 8046CA50 00469990  4B BB DB F1 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CA54:
/* 8046CA54 00469994  83 8D 98 80 */	lwz r28, spSceneMgr__8PSSystem@sda21(r13)
/* 8046CA58 00469998  28 1C 00 00 */	cmplwi r28, 0
/* 8046CA5C 0046999C  40 82 00 18 */	bne .L_8046CA74
/* 8046CA60 004699A0  38 7F 00 24 */	addi r3, r31, 0x24
/* 8046CA64 004699A4  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CA68 004699A8  38 80 01 DC */	li r4, 0x1dc
/* 8046CA6C 004699AC  4C C6 31 82 */	crclr 6
/* 8046CA70 004699B0  4B BB DB D1 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CA74:
/* 8046CA74 004699B4  80 1C 00 04 */	lwz r0, 4(r28)
/* 8046CA78 004699B8  28 00 00 00 */	cmplwi r0, 0
/* 8046CA7C 004699BC  40 82 00 18 */	bne .L_8046CA94
/* 8046CA80 004699C0  38 7F 00 30 */	addi r3, r31, 0x30
/* 8046CA84 004699C4  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CA88 004699C8  38 80 00 C7 */	li r4, 0xc7
/* 8046CA8C 004699CC  4C C6 31 82 */	crclr 6
/* 8046CA90 004699D0  4B BB DB B1 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CA94:
/* 8046CA94 004699D4  80 7C 00 04 */	lwz r3, 4(r28)
/* 8046CA98 004699D8  80 63 00 04 */	lwz r3, 4(r3)
/* 8046CA9C 004699DC  28 03 00 00 */	cmplwi r3, 0
/* 8046CAA0 004699E0  40 82 00 0C */	bne .L_8046CAAC
/* 8046CAA4 004699E4  38 60 00 00 */	li r3, 0
/* 8046CAA8 004699E8  48 00 00 08 */	b .L_8046CAB0
.L_8046CAAC:
/* 8046CAAC 004699EC  4B EC 8B D5 */	bl getMiddleBossBgm__Q26PSGame8PikSceneFv
.L_8046CAB0:
/* 8046CAB0 004699F0  28 03 00 00 */	cmplwi r3, 0
/* 8046CAB4 004699F4  41 82 00 1C */	beq .L_8046CAD0
/* 8046CAB8 004699F8  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8046CABC 004699FC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8046CAC0 00469A00  7D 89 03 A6 */	mtctr r12
/* 8046CAC4 00469A04  4E 80 04 21 */	bctrl 
/* 8046CAC8 00469A08  83 A3 00 00 */	lwz r29, 0(r3)
/* 8046CACC 00469A0C  48 00 00 08 */	b .L_8046CAD4
.L_8046CAD0:
/* 8046CAD0 00469A10  3B A0 00 00 */	li r29, 0
.L_8046CAD4:
/* 8046CAD4 00469A14  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 8046CAD8 00469A18  3B 80 00 00 */	li r28, 0
/* 8046CADC 00469A1C  28 00 00 00 */	cmplwi r0, 0
/* 8046CAE0 00469A20  40 82 00 18 */	bne .L_8046CAF8
/* 8046CAE4 00469A24  38 7F 00 24 */	addi r3, r31, 0x24
/* 8046CAE8 00469A28  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CAEC 00469A2C  38 80 01 D3 */	li r4, 0x1d3
/* 8046CAF0 00469A30  4C C6 31 82 */	crclr 6
/* 8046CAF4 00469A34  4B BB DB 4D */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CAF8:
/* 8046CAF8 00469A38  83 4D 98 80 */	lwz r26, spSceneMgr__8PSSystem@sda21(r13)
/* 8046CAFC 00469A3C  28 1A 00 00 */	cmplwi r26, 0
/* 8046CB00 00469A40  40 82 00 18 */	bne .L_8046CB18
/* 8046CB04 00469A44  38 7F 00 24 */	addi r3, r31, 0x24
/* 8046CB08 00469A48  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CB0C 00469A4C  38 80 01 DC */	li r4, 0x1dc
/* 8046CB10 00469A50  4C C6 31 82 */	crclr 6
/* 8046CB14 00469A54  4B BB DB 2D */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CB18:
/* 8046CB18 00469A58  80 1A 00 04 */	lwz r0, 4(r26)
/* 8046CB1C 00469A5C  28 00 00 00 */	cmplwi r0, 0
/* 8046CB20 00469A60  40 82 00 18 */	bne .L_8046CB38
/* 8046CB24 00469A64  38 7F 00 30 */	addi r3, r31, 0x30
/* 8046CB28 00469A68  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CB2C 00469A6C  38 80 00 CF */	li r4, 0xcf
/* 8046CB30 00469A70  4C C6 31 82 */	crclr 6
/* 8046CB34 00469A74  4B BB DB 0D */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CB38:
/* 8046CB38 00469A78  80 7A 00 04 */	lwz r3, 4(r26)
/* 8046CB3C 00469A7C  83 43 00 04 */	lwz r26, 4(r3)
/* 8046CB40 00469A80  28 1A 00 00 */	cmplwi r26, 0
/* 8046CB44 00469A84  40 82 00 18 */	bne .L_8046CB5C
/* 8046CB48 00469A88  38 7F 00 30 */	addi r3, r31, 0x30
/* 8046CB4C 00469A8C  38 BF 00 3C */	addi r5, r31, 0x3c
/* 8046CB50 00469A90  38 80 00 D1 */	li r4, 0xd1
/* 8046CB54 00469A94  4C C6 31 82 */	crclr 6
/* 8046CB58 00469A98  4B BB DA E9 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CB5C:
/* 8046CB5C 00469A9C  7F 43 D3 78 */	mr r3, r26
/* 8046CB60 00469AA0  81 9A 00 00 */	lwz r12, 0(r26)
/* 8046CB64 00469AA4  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8046CB68 00469AA8  7D 89 03 A6 */	mtctr r12
/* 8046CB6C 00469AAC  4E 80 04 21 */	bctrl 
/* 8046CB70 00469AB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8046CB74 00469AB4  41 82 00 08 */	beq .L_8046CB7C
/* 8046CB78 00469AB8  48 00 00 08 */	b .L_8046CB80
.L_8046CB7C:
/* 8046CB7C 00469ABC  3B 40 00 00 */	li r26, 0
.L_8046CB80:
/* 8046CB80 00469AC0  28 1A 00 00 */	cmplwi r26, 0
/* 8046CB84 00469AC4  41 82 00 D0 */	beq .L_8046CC54
/* 8046CB88 00469AC8  7F 43 D3 78 */	mr r3, r26
/* 8046CB8C 00469ACC  4B FF AB 89 */	bl getSceneInfoA__Q23PSM9SceneBaseFv
/* 8046CB90 00469AD0  88 03 00 06 */	lbz r0, 6(r3)
/* 8046CB94 00469AD4  28 00 00 06 */	cmplwi r0, 6
/* 8046CB98 00469AD8  40 82 00 BC */	bne .L_8046CC54
/* 8046CB9C 00469ADC  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 8046CBA0 00469AE0  28 00 00 00 */	cmplwi r0, 0
/* 8046CBA4 00469AE4  40 82 00 18 */	bne .L_8046CBBC
/* 8046CBA8 00469AE8  38 7F 00 24 */	addi r3, r31, 0x24
/* 8046CBAC 00469AEC  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CBB0 00469AF0  38 80 01 D3 */	li r4, 0x1d3
/* 8046CBB4 00469AF4  4C C6 31 82 */	crclr 6
/* 8046CBB8 00469AF8  4B BB DA 89 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CBBC:
/* 8046CBBC 00469AFC  83 4D 98 80 */	lwz r26, spSceneMgr__8PSSystem@sda21(r13)
/* 8046CBC0 00469B00  28 1A 00 00 */	cmplwi r26, 0
/* 8046CBC4 00469B04  40 82 00 18 */	bne .L_8046CBDC
/* 8046CBC8 00469B08  38 7F 00 24 */	addi r3, r31, 0x24
/* 8046CBCC 00469B0C  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CBD0 00469B10  38 80 01 DC */	li r4, 0x1dc
/* 8046CBD4 00469B14  4C C6 31 82 */	crclr 6
/* 8046CBD8 00469B18  4B BB DA 69 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CBDC:
/* 8046CBDC 00469B1C  80 1A 00 04 */	lwz r0, 4(r26)
/* 8046CBE0 00469B20  28 00 00 00 */	cmplwi r0, 0
/* 8046CBE4 00469B24  40 82 00 18 */	bne .L_8046CBFC
/* 8046CBE8 00469B28  38 7F 00 30 */	addi r3, r31, 0x30
/* 8046CBEC 00469B2C  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CBF0 00469B30  38 80 00 CF */	li r4, 0xcf
/* 8046CBF4 00469B34  4C C6 31 82 */	crclr 6
/* 8046CBF8 00469B38  4B BB DA 49 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CBFC:
/* 8046CBFC 00469B3C  80 7A 00 04 */	lwz r3, 4(r26)
/* 8046CC00 00469B40  83 43 00 04 */	lwz r26, 4(r3)
/* 8046CC04 00469B44  28 1A 00 00 */	cmplwi r26, 0
/* 8046CC08 00469B48  40 82 00 18 */	bne .L_8046CC20
/* 8046CC0C 00469B4C  38 7F 00 30 */	addi r3, r31, 0x30
/* 8046CC10 00469B50  38 BF 00 3C */	addi r5, r31, 0x3c
/* 8046CC14 00469B54  38 80 00 D1 */	li r4, 0xd1
/* 8046CC18 00469B58  4C C6 31 82 */	crclr 6
/* 8046CC1C 00469B5C  4B BB DA 25 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CC20:
/* 8046CC20 00469B60  38 7A 00 10 */	addi r3, r26, 0x10
/* 8046CC24 00469B64  38 80 00 02 */	li r4, 2
/* 8046CC28 00469B68  4B EC 72 75 */	bl getSeq__Q28PSSystem6SeqMgrFUl
/* 8046CC2C 00469B6C  28 03 00 00 */	cmplwi r3, 0
/* 8046CC30 00469B70  41 82 00 1C */	beq .L_8046CC4C
/* 8046CC34 00469B74  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8046CC38 00469B78  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8046CC3C 00469B7C  7D 89 03 A6 */	mtctr r12
/* 8046CC40 00469B80  4E 80 04 21 */	bctrl 
/* 8046CC44 00469B84  80 03 00 00 */	lwz r0, 0(r3)
/* 8046CC48 00469B88  48 00 00 08 */	b .L_8046CC50
.L_8046CC4C:
/* 8046CC4C 00469B8C  38 00 00 00 */	li r0, 0
.L_8046CC50:
/* 8046CC50 00469B90  7C 1C 03 78 */	mr r28, r0
.L_8046CC54:
/* 8046CC54 00469B94  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8046CC58 00469B98  2C 00 00 03 */	cmpwi r0, 3
/* 8046CC5C 00469B9C  40 82 00 34 */	bne .L_8046CC90
/* 8046CC60 00469BA0  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 8046CC64 00469BA4  2C 00 00 03 */	cmpwi r0, 3
/* 8046CC68 00469BA8  41 82 00 54 */	beq .L_8046CCBC
/* 8046CC6C 00469BAC  38 60 00 01 */	li r3, 1
/* 8046CC70 00469BB0  4B FE BA 3D */	bl PSMGetBattleDirector__FUc
/* 8046CC74 00469BB4  28 03 00 00 */	cmplwi r3, 0
/* 8046CC78 00469BB8  41 82 00 44 */	beq .L_8046CCBC
/* 8046CC7C 00469BBC  81 83 00 00 */	lwz r12, 0(r3)
/* 8046CC80 00469BC0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8046CC84 00469BC4  7D 89 03 A6 */	mtctr r12
/* 8046CC88 00469BC8  4E 80 04 21 */	bctrl 
/* 8046CC8C 00469BCC  48 00 00 30 */	b .L_8046CCBC
.L_8046CC90:
/* 8046CC90 00469BD0  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 8046CC94 00469BD4  2C 00 00 03 */	cmpwi r0, 3
/* 8046CC98 00469BD8  40 82 00 24 */	bne .L_8046CCBC
/* 8046CC9C 00469BDC  38 60 00 01 */	li r3, 1
/* 8046CCA0 00469BE0  4B FE BA 0D */	bl PSMGetBattleDirector__FUc
/* 8046CCA4 00469BE4  28 03 00 00 */	cmplwi r3, 0
/* 8046CCA8 00469BE8  41 82 00 14 */	beq .L_8046CCBC
/* 8046CCAC 00469BEC  81 83 00 00 */	lwz r12, 0(r3)
/* 8046CCB0 00469BF0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8046CCB4 00469BF4  7D 89 03 A6 */	mtctr r12
/* 8046CCB8 00469BF8  4E 80 04 21 */	bctrl 
.L_8046CCBC:
/* 8046CCBC 00469BFC  88 1B 00 38 */	lbz r0, 0x38(r27)
/* 8046CCC0 00469C00  28 00 00 00 */	cmplwi r0, 0
/* 8046CCC4 00469C04  40 82 01 7C */	bne .L_8046CE40
/* 8046CCC8 00469C08  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 8046CCCC 00469C0C  2C 03 00 00 */	cmpwi r3, 0
/* 8046CCD0 00469C10  40 82 00 B0 */	bne .L_8046CD80
/* 8046CCD4 00469C14  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 8046CCD8 00469C18  2C 00 00 00 */	cmpwi r0, 0
/* 8046CCDC 00469C1C  41 82 00 A4 */	beq .L_8046CD80
/* 8046CCE0 00469C20  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 8046CCE4 00469C24  28 00 00 00 */	cmplwi r0, 0
/* 8046CCE8 00469C28  40 82 00 18 */	bne .L_8046CD00
/* 8046CCEC 00469C2C  38 7F 00 24 */	addi r3, r31, 0x24
/* 8046CCF0 00469C30  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CCF4 00469C34  38 80 01 D3 */	li r4, 0x1d3
/* 8046CCF8 00469C38  4C C6 31 82 */	crclr 6
/* 8046CCFC 00469C3C  4B BB D9 45 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CD00:
/* 8046CD00 00469C40  83 4D 98 80 */	lwz r26, spSceneMgr__8PSSystem@sda21(r13)
/* 8046CD04 00469C44  28 1A 00 00 */	cmplwi r26, 0
/* 8046CD08 00469C48  40 82 00 18 */	bne .L_8046CD20
/* 8046CD0C 00469C4C  38 7F 00 24 */	addi r3, r31, 0x24
/* 8046CD10 00469C50  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CD14 00469C54  38 80 01 DC */	li r4, 0x1dc
/* 8046CD18 00469C58  4C C6 31 82 */	crclr 6
/* 8046CD1C 00469C5C  4B BB D9 25 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CD20:
/* 8046CD20 00469C60  80 1A 00 04 */	lwz r0, 4(r26)
/* 8046CD24 00469C64  28 00 00 00 */	cmplwi r0, 0
/* 8046CD28 00469C68  40 82 00 18 */	bne .L_8046CD40
/* 8046CD2C 00469C6C  38 7F 00 30 */	addi r3, r31, 0x30
/* 8046CD30 00469C70  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CD34 00469C74  38 80 00 C7 */	li r4, 0xc7
/* 8046CD38 00469C78  4C C6 31 82 */	crclr 6
/* 8046CD3C 00469C7C  4B BB D9 05 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CD40:
/* 8046CD40 00469C80  80 7A 00 04 */	lwz r3, 4(r26)
/* 8046CD44 00469C84  80 63 00 04 */	lwz r3, 4(r3)
/* 8046CD48 00469C88  28 03 00 00 */	cmplwi r3, 0
/* 8046CD4C 00469C8C  40 82 00 0C */	bne .L_8046CD58
/* 8046CD50 00469C90  38 60 00 00 */	li r3, 0
/* 8046CD54 00469C94  48 00 00 08 */	b .L_8046CD5C
.L_8046CD58:
/* 8046CD58 00469C98  4B EC 89 29 */	bl getMiddleBossBgm__Q26PSGame8PikSceneFv
.L_8046CD5C:
/* 8046CD5C 00469C9C  A0 03 01 30 */	lhz r0, 0x130(r3)
/* 8046CD60 00469CA0  28 00 00 00 */	cmplwi r0, 0
/* 8046CD64 00469CA4  41 82 00 DC */	beq .L_8046CE40
/* 8046CD68 00469CA8  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8046CD6C 00469CAC  38 80 00 00 */	li r4, 0
/* 8046CD70 00469CB0  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8046CD74 00469CB4  7D 89 03 A6 */	mtctr r12
/* 8046CD78 00469CB8  4E 80 04 21 */	bctrl 
/* 8046CD7C 00469CBC  48 00 00 C4 */	b .L_8046CE40
.L_8046CD80:
/* 8046CD80 00469CC0  2C 03 00 03 */	cmpwi r3, 3
/* 8046CD84 00469CC4  41 82 00 0C */	beq .L_8046CD90
/* 8046CD88 00469CC8  2C 03 00 02 */	cmpwi r3, 2
/* 8046CD8C 00469CCC  40 82 00 B4 */	bne .L_8046CE40
.L_8046CD90:
/* 8046CD90 00469CD0  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 8046CD94 00469CD4  2C 00 00 01 */	cmpwi r0, 1
/* 8046CD98 00469CD8  41 82 00 0C */	beq .L_8046CDA4
/* 8046CD9C 00469CDC  2C 00 00 00 */	cmpwi r0, 0
/* 8046CDA0 00469CE0  40 82 00 A0 */	bne .L_8046CE40
.L_8046CDA4:
/* 8046CDA4 00469CE4  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 8046CDA8 00469CE8  28 00 00 00 */	cmplwi r0, 0
/* 8046CDAC 00469CEC  40 82 00 18 */	bne .L_8046CDC4
/* 8046CDB0 00469CF0  38 7F 00 24 */	addi r3, r31, 0x24
/* 8046CDB4 00469CF4  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CDB8 00469CF8  38 80 01 D3 */	li r4, 0x1d3
/* 8046CDBC 00469CFC  4C C6 31 82 */	crclr 6
/* 8046CDC0 00469D00  4B BB D8 81 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CDC4:
/* 8046CDC4 00469D04  83 4D 98 80 */	lwz r26, spSceneMgr__8PSSystem@sda21(r13)
/* 8046CDC8 00469D08  28 1A 00 00 */	cmplwi r26, 0
/* 8046CDCC 00469D0C  40 82 00 18 */	bne .L_8046CDE4
/* 8046CDD0 00469D10  38 7F 00 24 */	addi r3, r31, 0x24
/* 8046CDD4 00469D14  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CDD8 00469D18  38 80 01 DC */	li r4, 0x1dc
/* 8046CDDC 00469D1C  4C C6 31 82 */	crclr 6
/* 8046CDE0 00469D20  4B BB D8 61 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CDE4:
/* 8046CDE4 00469D24  80 1A 00 04 */	lwz r0, 4(r26)
/* 8046CDE8 00469D28  28 00 00 00 */	cmplwi r0, 0
/* 8046CDEC 00469D2C  40 82 00 18 */	bne .L_8046CE04
/* 8046CDF0 00469D30  38 7F 00 30 */	addi r3, r31, 0x30
/* 8046CDF4 00469D34  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CDF8 00469D38  38 80 00 C7 */	li r4, 0xc7
/* 8046CDFC 00469D3C  4C C6 31 82 */	crclr 6
/* 8046CE00 00469D40  4B BB D8 41 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CE04:
/* 8046CE04 00469D44  80 7A 00 04 */	lwz r3, 4(r26)
/* 8046CE08 00469D48  80 63 00 04 */	lwz r3, 4(r3)
/* 8046CE0C 00469D4C  28 03 00 00 */	cmplwi r3, 0
/* 8046CE10 00469D50  40 82 00 0C */	bne .L_8046CE1C
/* 8046CE14 00469D54  38 60 00 00 */	li r3, 0
/* 8046CE18 00469D58  48 00 00 08 */	b .L_8046CE20
.L_8046CE1C:
/* 8046CE1C 00469D5C  4B EC 88 65 */	bl getMiddleBossBgm__Q26PSGame8PikSceneFv
.L_8046CE20:
/* 8046CE20 00469D60  A0 03 01 30 */	lhz r0, 0x130(r3)
/* 8046CE24 00469D64  28 00 00 00 */	cmplwi r0, 0
/* 8046CE28 00469D68  40 82 00 18 */	bne .L_8046CE40
/* 8046CE2C 00469D6C  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8046CE30 00469D70  38 80 00 01 */	li r4, 1
/* 8046CE34 00469D74  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8046CE38 00469D78  7D 89 03 A6 */	mtctr r12
/* 8046CE3C 00469D7C  4E 80 04 21 */	bctrl 
.L_8046CE40:
/* 8046CE40 00469D80  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8046CE44 00469D84  2C 00 00 01 */	cmpwi r0, 1
/* 8046CE48 00469D88  41 82 00 9C */	beq .L_8046CEE4
/* 8046CE4C 00469D8C  40 80 00 10 */	bge .L_8046CE5C
/* 8046CE50 00469D90  2C 00 00 00 */	cmpwi r0, 0
/* 8046CE54 00469D94  40 80 01 C8 */	bge .L_8046D01C
/* 8046CE58 00469D98  48 00 02 B8 */	b .L_8046D110
.L_8046CE5C:
/* 8046CE5C 00469D9C  2C 00 00 04 */	cmpwi r0, 4
/* 8046CE60 00469DA0  41 82 02 38 */	beq .L_8046D098
/* 8046CE64 00469DA4  40 80 02 AC */	bge .L_8046D110
/* 8046CE68 00469DA8  28 1E 00 00 */	cmplwi r30, 0
/* 8046CE6C 00469DAC  41 82 00 24 */	beq .L_8046CE90
/* 8046CE70 00469DB0  7F C3 F3 78 */	mr r3, r30
/* 8046CE74 00469DB4  C0 22 29 60 */	lfs f1, lbl_80520CC0@sda21(r2)
/* 8046CE78 00469DB8  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 8046CE7C 00469DBC  38 80 00 28 */	li r4, 0x28
/* 8046CE80 00469DC0  38 A0 00 00 */	li r5, 0
/* 8046CE84 00469DC4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8046CE88 00469DC8  7D 89 03 A6 */	mtctr r12
/* 8046CE8C 00469DCC  4E 80 04 21 */	bctrl 
.L_8046CE90:
/* 8046CE90 00469DD0  28 1C 00 00 */	cmplwi r28, 0
/* 8046CE94 00469DD4  41 82 00 24 */	beq .L_8046CEB8
/* 8046CE98 00469DD8  7F 83 E3 78 */	mr r3, r28
/* 8046CE9C 00469DDC  C0 22 29 60 */	lfs f1, lbl_80520CC0@sda21(r2)
/* 8046CEA0 00469DE0  81 9C 00 10 */	lwz r12, 0x10(r28)
/* 8046CEA4 00469DE4  38 80 00 28 */	li r4, 0x28
/* 8046CEA8 00469DE8  38 A0 00 00 */	li r5, 0
/* 8046CEAC 00469DEC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8046CEB0 00469DF0  7D 89 03 A6 */	mtctr r12
/* 8046CEB4 00469DF4  4E 80 04 21 */	bctrl 
.L_8046CEB8:
/* 8046CEB8 00469DF8  28 1D 00 00 */	cmplwi r29, 0
/* 8046CEBC 00469DFC  41 82 02 54 */	beq .L_8046D110
/* 8046CEC0 00469E00  7F A3 EB 78 */	mr r3, r29
/* 8046CEC4 00469E04  C0 22 29 6C */	lfs f1, lbl_80520CCC@sda21(r2)
/* 8046CEC8 00469E08  81 9D 00 10 */	lwz r12, 0x10(r29)
/* 8046CECC 00469E0C  38 80 00 28 */	li r4, 0x28
/* 8046CED0 00469E10  38 A0 00 00 */	li r5, 0
/* 8046CED4 00469E14  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8046CED8 00469E18  7D 89 03 A6 */	mtctr r12
/* 8046CEDC 00469E1C  4E 80 04 21 */	bctrl 
/* 8046CEE0 00469E20  48 00 02 30 */	b .L_8046D110
.L_8046CEE4:
/* 8046CEE4 00469E24  C0 5B 00 30 */	lfs f2, 0x30(r27)
/* 8046CEE8 00469E28  38 00 00 00 */	li r0, 0
/* 8046CEEC 00469E2C  C0 3B 00 18 */	lfs f1, 0x18(r27)
/* 8046CEF0 00469E30  C0 02 29 60 */	lfs f0, lbl_80520CC0@sda21(r2)
/* 8046CEF4 00469E34  EF E2 08 28 */	fsubs f31, f2, f1
/* 8046CEF8 00469E38  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8046CEFC 00469E3C  4C 41 13 82 */	cror 2, 1, 2
/* 8046CF00 00469E40  40 82 00 18 */	bne .L_8046CF18
/* 8046CF04 00469E44  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 8046CF08 00469E48  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8046CF0C 00469E4C  4C 40 13 82 */	cror 2, 0, 2
/* 8046CF10 00469E50  40 82 00 08 */	bne .L_8046CF18
/* 8046CF14 00469E54  38 00 00 01 */	li r0, 1
.L_8046CF18:
/* 8046CF18 00469E58  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8046CF1C 00469E5C  40 82 00 18 */	bne .L_8046CF34
/* 8046CF20 00469E60  38 7F 00 00 */	addi r3, r31, 0
/* 8046CF24 00469E64  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CF28 00469E68  38 80 00 A7 */	li r4, 0xa7
/* 8046CF2C 00469E6C  4C C6 31 82 */	crclr 6
/* 8046CF30 00469E70  4B BB D7 11 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CF34:
/* 8046CF34 00469E74  C0 42 29 60 */	lfs f2, lbl_80520CC0@sda21(r2)
/* 8046CF38 00469E78  FC 20 F8 90 */	fmr f1, f31
/* 8046CF3C 00469E7C  C0 7B 00 1C */	lfs f3, 0x1c(r27)
/* 8046CF40 00469E80  38 60 00 00 */	li r3, 0
/* 8046CF44 00469E84  FC A0 10 90 */	fmr f5, f2
/* 8046CF48 00469E88  C0 82 29 6C */	lfs f4, lbl_80520CCC@sda21(r2)
/* 8046CF4C 00469E8C  4B C4 D2 F9 */	bl linearTransform__7JALCalcFfffffb
/* 8046CF50 00469E90  FF E0 08 90 */	fmr f31, f1
/* 8046CF54 00469E94  C0 02 29 60 */	lfs f0, lbl_80520CC0@sda21(r2)
/* 8046CF58 00469E98  38 00 00 00 */	li r0, 0
/* 8046CF5C 00469E9C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8046CF60 00469EA0  4C 41 13 82 */	cror 2, 1, 2
/* 8046CF64 00469EA4  40 82 00 18 */	bne .L_8046CF7C
/* 8046CF68 00469EA8  C0 02 29 6C */	lfs f0, lbl_80520CCC@sda21(r2)
/* 8046CF6C 00469EAC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8046CF70 00469EB0  4C 40 13 82 */	cror 2, 0, 2
/* 8046CF74 00469EB4  40 82 00 08 */	bne .L_8046CF7C
/* 8046CF78 00469EB8  38 00 00 01 */	li r0, 1
.L_8046CF7C:
/* 8046CF7C 00469EBC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8046CF80 00469EC0  40 82 00 18 */	bne .L_8046CF98
/* 8046CF84 00469EC4  38 7F 00 00 */	addi r3, r31, 0
/* 8046CF88 00469EC8  38 BF 00 18 */	addi r5, r31, 0x18
/* 8046CF8C 00469ECC  38 80 00 AC */	li r4, 0xac
/* 8046CF90 00469ED0  4C C6 31 82 */	crclr 6
/* 8046CF94 00469ED4  4B BB D6 AD */	bl panic_f__12JUTExceptionFPCciPCce
.L_8046CF98:
/* 8046CF98 00469ED8  C0 02 29 6C */	lfs f0, lbl_80520CCC@sda21(r2)
/* 8046CF9C 00469EDC  28 1E 00 00 */	cmplwi r30, 0
/* 8046CFA0 00469EE0  EF C0 F8 28 */	fsubs f30, f0, f31
/* 8046CFA4 00469EE4  41 82 00 24 */	beq .L_8046CFC8
/* 8046CFA8 00469EE8  7F C3 F3 78 */	mr r3, r30
/* 8046CFAC 00469EEC  FC 20 F0 90 */	fmr f1, f30
/* 8046CFB0 00469EF0  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 8046CFB4 00469EF4  38 80 00 28 */	li r4, 0x28
/* 8046CFB8 00469EF8  38 A0 00 00 */	li r5, 0
/* 8046CFBC 00469EFC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8046CFC0 00469F00  7D 89 03 A6 */	mtctr r12
/* 8046CFC4 00469F04  4E 80 04 21 */	bctrl 
.L_8046CFC8:
/* 8046CFC8 00469F08  28 1C 00 00 */	cmplwi r28, 0
/* 8046CFCC 00469F0C  41 82 00 24 */	beq .L_8046CFF0
/* 8046CFD0 00469F10  7F 83 E3 78 */	mr r3, r28
/* 8046CFD4 00469F14  FC 20 F0 90 */	fmr f1, f30
/* 8046CFD8 00469F18  81 9C 00 10 */	lwz r12, 0x10(r28)
/* 8046CFDC 00469F1C  38 80 00 28 */	li r4, 0x28
/* 8046CFE0 00469F20  38 A0 00 00 */	li r5, 0
/* 8046CFE4 00469F24  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8046CFE8 00469F28  7D 89 03 A6 */	mtctr r12
/* 8046CFEC 00469F2C  4E 80 04 21 */	bctrl 
.L_8046CFF0:
/* 8046CFF0 00469F30  28 1D 00 00 */	cmplwi r29, 0
/* 8046CFF4 00469F34  41 82 01 1C */	beq .L_8046D110
/* 8046CFF8 00469F38  7F A3 EB 78 */	mr r3, r29
/* 8046CFFC 00469F3C  FC 20 F8 90 */	fmr f1, f31
/* 8046D000 00469F40  81 9D 00 10 */	lwz r12, 0x10(r29)
/* 8046D004 00469F44  38 80 00 28 */	li r4, 0x28
/* 8046D008 00469F48  38 A0 00 00 */	li r5, 0
/* 8046D00C 00469F4C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8046D010 00469F50  7D 89 03 A6 */	mtctr r12
/* 8046D014 00469F54  4E 80 04 21 */	bctrl 
/* 8046D018 00469F58  48 00 00 F8 */	b .L_8046D110
.L_8046D01C:
/* 8046D01C 00469F5C  28 1E 00 00 */	cmplwi r30, 0
/* 8046D020 00469F60  41 82 00 24 */	beq .L_8046D044
/* 8046D024 00469F64  7F C3 F3 78 */	mr r3, r30
/* 8046D028 00469F68  C0 22 29 6C */	lfs f1, lbl_80520CCC@sda21(r2)
/* 8046D02C 00469F6C  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 8046D030 00469F70  38 80 00 28 */	li r4, 0x28
/* 8046D034 00469F74  38 A0 00 00 */	li r5, 0
/* 8046D038 00469F78  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8046D03C 00469F7C  7D 89 03 A6 */	mtctr r12
/* 8046D040 00469F80  4E 80 04 21 */	bctrl 
.L_8046D044:
/* 8046D044 00469F84  28 1C 00 00 */	cmplwi r28, 0
/* 8046D048 00469F88  41 82 00 24 */	beq .L_8046D06C
/* 8046D04C 00469F8C  7F 83 E3 78 */	mr r3, r28
/* 8046D050 00469F90  C0 22 29 6C */	lfs f1, lbl_80520CCC@sda21(r2)
/* 8046D054 00469F94  81 9C 00 10 */	lwz r12, 0x10(r28)
/* 8046D058 00469F98  38 80 00 28 */	li r4, 0x28
/* 8046D05C 00469F9C  38 A0 00 00 */	li r5, 0
/* 8046D060 00469FA0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8046D064 00469FA4  7D 89 03 A6 */	mtctr r12
/* 8046D068 00469FA8  4E 80 04 21 */	bctrl 
.L_8046D06C:
/* 8046D06C 00469FAC  28 1D 00 00 */	cmplwi r29, 0
/* 8046D070 00469FB0  41 82 00 A0 */	beq .L_8046D110
/* 8046D074 00469FB4  7F A3 EB 78 */	mr r3, r29
/* 8046D078 00469FB8  C0 22 29 60 */	lfs f1, lbl_80520CC0@sda21(r2)
/* 8046D07C 00469FBC  81 9D 00 10 */	lwz r12, 0x10(r29)
/* 8046D080 00469FC0  38 80 00 28 */	li r4, 0x28
/* 8046D084 00469FC4  38 A0 00 00 */	li r5, 0
/* 8046D088 00469FC8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8046D08C 00469FCC  7D 89 03 A6 */	mtctr r12
/* 8046D090 00469FD0  4E 80 04 21 */	bctrl 
/* 8046D094 00469FD4  48 00 00 7C */	b .L_8046D110
.L_8046D098:
/* 8046D098 00469FD8  28 1E 00 00 */	cmplwi r30, 0
/* 8046D09C 00469FDC  41 82 00 24 */	beq .L_8046D0C0
/* 8046D0A0 00469FE0  7F C3 F3 78 */	mr r3, r30
/* 8046D0A4 00469FE4  C0 22 29 60 */	lfs f1, lbl_80520CC0@sda21(r2)
/* 8046D0A8 00469FE8  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 8046D0AC 00469FEC  38 80 00 28 */	li r4, 0x28
/* 8046D0B0 00469FF0  38 A0 00 00 */	li r5, 0
/* 8046D0B4 00469FF4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8046D0B8 00469FF8  7D 89 03 A6 */	mtctr r12
/* 8046D0BC 00469FFC  4E 80 04 21 */	bctrl 
.L_8046D0C0:
/* 8046D0C0 0046A000  28 1C 00 00 */	cmplwi r28, 0
/* 8046D0C4 0046A004  41 82 00 24 */	beq .L_8046D0E8
/* 8046D0C8 0046A008  7F 83 E3 78 */	mr r3, r28
/* 8046D0CC 0046A00C  C0 22 29 60 */	lfs f1, lbl_80520CC0@sda21(r2)
/* 8046D0D0 0046A010  81 9C 00 10 */	lwz r12, 0x10(r28)
/* 8046D0D4 0046A014  38 80 00 28 */	li r4, 0x28
/* 8046D0D8 0046A018  38 A0 00 00 */	li r5, 0
/* 8046D0DC 0046A01C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8046D0E0 0046A020  7D 89 03 A6 */	mtctr r12
/* 8046D0E4 0046A024  4E 80 04 21 */	bctrl 
.L_8046D0E8:
/* 8046D0E8 0046A028  28 1D 00 00 */	cmplwi r29, 0
/* 8046D0EC 0046A02C  41 82 00 24 */	beq .L_8046D110
/* 8046D0F0 0046A030  7F A3 EB 78 */	mr r3, r29
/* 8046D0F4 0046A034  C0 22 29 60 */	lfs f1, lbl_80520CC0@sda21(r2)
/* 8046D0F8 0046A038  81 9D 00 10 */	lwz r12, 0x10(r29)
/* 8046D0FC 0046A03C  38 80 00 28 */	li r4, 0x28
/* 8046D100 0046A040  38 A0 00 00 */	li r5, 0
/* 8046D104 0046A044  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8046D108 0046A048  7D 89 03 A6 */	mtctr r12
/* 8046D10C 0046A04C  4E 80 04 21 */	bctrl 
.L_8046D110:
/* 8046D110 0046A050  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 8046D114 0046A054  38 00 00 00 */	li r0, 0
/* 8046D118 0046A058  90 7B 00 28 */	stw r3, 0x28(r27)
/* 8046D11C 0046A05C  98 1B 00 38 */	stb r0, 0x38(r27)
/* 8046D120 0046A060  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8046D124 0046A064  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8046D128 0046A068  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8046D12C 0046A06C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8046D130 0046A070  BB 41 00 08 */	lmw r26, 8(r1)
/* 8046D134 0046A074  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8046D138 0046A078  7C 08 03 A6 */	mtlr r0
/* 8046D13C 0046A07C  38 21 00 40 */	addi r1, r1, 0x40
/* 8046D140 0046A080  4E 80 00 20 */	blr 
.endfn exec__Q33PSM12BossBgmFader3MgrFv
