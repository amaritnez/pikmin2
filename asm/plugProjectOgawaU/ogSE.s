.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.global lbl_8048E030
lbl_8048E030:
	.asciz "PSGame.h"
	.skip 3
	.asciz "P2Assert"
	.skip 3
	.asciz "PSScene.h"
	.skip 2
	.asciz "get sound scene at\ninvalid timming\n"

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.global ogSound__2og
ogSound__2og:
	.skip 0x8

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global setSE__Q22og5SoundFUl
setSE__Q22og5SoundFUl:
/* 8030C9B0 003098F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030C9B4 003098F4  7C 08 02 A6 */	mflr r0
/* 8030C9B8 003098F8  38 A0 00 00 */	li r5, 0
/* 8030C9BC 003098FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030C9C0 00309900  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030C9C4 00309904  48 02 BC 6D */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030C9C8 00309908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030C9CC 0030990C  7C 08 03 A6 */	mtlr r0
/* 8030C9D0 00309910  38 21 00 10 */	addi r1, r1, 0x10
/* 8030C9D4 00309914  4E 80 00 20 */	blr 

.global setLifeDanger__Q22og5SoundFv
setLifeDanger__Q22og5SoundFv:
/* 8030C9D8 00309918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030C9DC 0030991C  7C 08 02 A6 */	mflr r0
/* 8030C9E0 00309920  38 80 18 19 */	li r4, 0x1819
/* 8030C9E4 00309924  38 A0 00 00 */	li r5, 0
/* 8030C9E8 00309928  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030C9EC 0030992C  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030C9F0 00309930  48 02 BC 41 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030C9F4 00309934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030C9F8 00309938  7C 08 03 A6 */	mtlr r0
/* 8030C9FC 0030993C  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CA00 00309940  4E 80 00 20 */	blr 

.global setChimeNoon__Q22og5SoundFv
setChimeNoon__Q22og5SoundFv:
/* 8030CA04 00309944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CA08 00309948  7C 08 02 A6 */	mflr r0
/* 8030CA0C 0030994C  3C 80 80 49 */	lis r4, lbl_8048E030@ha
/* 8030CA10 00309950  38 A0 00 00 */	li r5, 0
/* 8030CA14 00309954  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CA18 00309958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030CA1C 0030995C  3B E4 E0 30 */	addi r31, r4, lbl_8048E030@l
/* 8030CA20 00309960  38 80 18 16 */	li r4, 0x1816
/* 8030CA24 00309964  93 C1 00 08 */	stw r30, 8(r1)
/* 8030CA28 00309968  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CA2C 0030996C  48 02 BC 05 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CA30 00309970  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 8030CA34 00309974  28 00 00 00 */	cmplwi r0, 0
/* 8030CA38 00309978  40 82 00 18 */	bne lbl_8030CA50
/* 8030CA3C 0030997C  38 7F 00 00 */	addi r3, r31, 0
/* 8030CA40 00309980  38 BF 00 0C */	addi r5, r31, 0xc
/* 8030CA44 00309984  38 80 01 D3 */	li r4, 0x1d3
/* 8030CA48 00309988  4C C6 31 82 */	crclr 6
/* 8030CA4C 0030998C  4B D1 DB F5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030CA50:
/* 8030CA50 00309990  83 CD 98 80 */	lwz r30, spSceneMgr__8PSSystem@sda21(r13)
/* 8030CA54 00309994  28 1E 00 00 */	cmplwi r30, 0
/* 8030CA58 00309998  40 82 00 18 */	bne lbl_8030CA70
/* 8030CA5C 0030999C  38 7F 00 00 */	addi r3, r31, 0
/* 8030CA60 003099A0  38 BF 00 0C */	addi r5, r31, 0xc
/* 8030CA64 003099A4  38 80 01 DC */	li r4, 0x1dc
/* 8030CA68 003099A8  4C C6 31 82 */	crclr 6
/* 8030CA6C 003099AC  4B D1 DB D5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030CA70:
/* 8030CA70 003099B0  80 1E 00 04 */	lwz r0, 4(r30)
/* 8030CA74 003099B4  28 00 00 00 */	cmplwi r0, 0
/* 8030CA78 003099B8  40 82 00 18 */	bne lbl_8030CA90
/* 8030CA7C 003099BC  38 7F 00 18 */	addi r3, r31, 0x18
/* 8030CA80 003099C0  38 BF 00 0C */	addi r5, r31, 0xc
/* 8030CA84 003099C4  38 80 00 CF */	li r4, 0xcf
/* 8030CA88 003099C8  4C C6 31 82 */	crclr 6
/* 8030CA8C 003099CC  4B D1 DB B5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030CA90:
/* 8030CA90 003099D0  80 7E 00 04 */	lwz r3, 4(r30)
/* 8030CA94 003099D4  83 C3 00 04 */	lwz r30, 4(r3)
/* 8030CA98 003099D8  28 1E 00 00 */	cmplwi r30, 0
/* 8030CA9C 003099DC  40 82 00 18 */	bne lbl_8030CAB4
/* 8030CAA0 003099E0  38 7F 00 18 */	addi r3, r31, 0x18
/* 8030CAA4 003099E4  38 BF 00 24 */	addi r5, r31, 0x24
/* 8030CAA8 003099E8  38 80 00 D1 */	li r4, 0xd1
/* 8030CAAC 003099EC  4C C6 31 82 */	crclr 6
/* 8030CAB0 003099F0  4B D1 DB 91 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030CAB4:
/* 8030CAB4 003099F4  7F C3 F3 78 */	mr r3, r30
/* 8030CAB8 003099F8  81 9E 00 00 */	lwz r12, 0(r30)
/* 8030CABC 003099FC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8030CAC0 00309A00  7D 89 03 A6 */	mtctr r12
/* 8030CAC4 00309A04  4E 80 04 21 */	bctrl 
/* 8030CAC8 00309A08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8030CACC 00309A0C  41 82 00 08 */	beq lbl_8030CAD4
/* 8030CAD0 00309A10  48 00 00 08 */	b lbl_8030CAD8
lbl_8030CAD4:
/* 8030CAD4 00309A14  3B C0 00 00 */	li r30, 0
lbl_8030CAD8:
/* 8030CAD8 00309A18  7F C3 F3 78 */	mr r3, r30
/* 8030CADC 00309A1C  48 15 D3 69 */	bl changeEnvSE_Noon__Q23PSM12Scene_GroundFv
/* 8030CAE0 00309A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CAE4 00309A24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030CAE8 00309A28  83 C1 00 08 */	lwz r30, 8(r1)
/* 8030CAEC 00309A2C  7C 08 03 A6 */	mtlr r0
/* 8030CAF0 00309A30  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CAF4 00309A34  4E 80 00 20 */	blr 

.global setChime__Q22og5SoundFv
setChime__Q22og5SoundFv:
/* 8030CAF8 00309A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CAFC 00309A3C  7C 08 02 A6 */	mflr r0
/* 8030CB00 00309A40  38 80 18 15 */	li r4, 0x1815
/* 8030CB04 00309A44  38 A0 00 00 */	li r5, 0
/* 8030CB08 00309A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CB0C 00309A4C  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CB10 00309A50  48 02 BB 21 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CB14 00309A54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CB18 00309A58  7C 08 03 A6 */	mtlr r0
/* 8030CB1C 00309A5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CB20 00309A60  4E 80 00 20 */	blr 

.global setDecide__Q22og5SoundFv
setDecide__Q22og5SoundFv:
/* 8030CB24 00309A64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CB28 00309A68  7C 08 02 A6 */	mflr r0
/* 8030CB2C 00309A6C  38 80 18 00 */	li r4, 0x1800
/* 8030CB30 00309A70  38 A0 00 00 */	li r5, 0
/* 8030CB34 00309A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CB38 00309A78  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CB3C 00309A7C  48 02 BA F5 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CB40 00309A80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CB44 00309A84  7C 08 03 A6 */	mtlr r0
/* 8030CB48 00309A88  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CB4C 00309A8C  4E 80 00 20 */	blr 

.global setCancel__Q22og5SoundFv
setCancel__Q22og5SoundFv:
/* 8030CB50 00309A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CB54 00309A94  7C 08 02 A6 */	mflr r0
/* 8030CB58 00309A98  38 80 18 01 */	li r4, 0x1801
/* 8030CB5C 00309A9C  38 A0 00 00 */	li r5, 0
/* 8030CB60 00309AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CB64 00309AA4  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CB68 00309AA8  48 02 BA C9 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CB6C 00309AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CB70 00309AB0  7C 08 03 A6 */	mtlr r0
/* 8030CB74 00309AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CB78 00309AB8  4E 80 00 20 */	blr 

.global setCursor__Q22og5SoundFv
setCursor__Q22og5SoundFv:
/* 8030CB7C 00309ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CB80 00309AC0  7C 08 02 A6 */	mflr r0
/* 8030CB84 00309AC4  38 80 18 02 */	li r4, 0x1802
/* 8030CB88 00309AC8  38 A0 00 00 */	li r5, 0
/* 8030CB8C 00309ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CB90 00309AD0  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CB94 00309AD4  48 02 BA 9D */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CB98 00309AD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CB9C 00309ADC  7C 08 03 A6 */	mtlr r0
/* 8030CBA0 00309AE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CBA4 00309AE4  4E 80 00 20 */	blr 

.global setOpen__Q22og5SoundFv
setOpen__Q22og5SoundFv:
/* 8030CBA8 00309AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CBAC 00309AEC  7C 08 02 A6 */	mflr r0
/* 8030CBB0 00309AF0  38 80 18 03 */	li r4, 0x1803
/* 8030CBB4 00309AF4  38 A0 00 00 */	li r5, 0
/* 8030CBB8 00309AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CBBC 00309AFC  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CBC0 00309B00  48 02 BA 71 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CBC4 00309B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CBC8 00309B08  7C 08 03 A6 */	mtlr r0
/* 8030CBCC 00309B0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CBD0 00309B10  4E 80 00 20 */	blr 

.global setClose__Q22og5SoundFv
setClose__Q22og5SoundFv:
/* 8030CBD4 00309B14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CBD8 00309B18  7C 08 02 A6 */	mflr r0
/* 8030CBDC 00309B1C  38 80 18 04 */	li r4, 0x1804
/* 8030CBE0 00309B20  38 A0 00 00 */	li r5, 0
/* 8030CBE4 00309B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CBE8 00309B28  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CBEC 00309B2C  48 02 BA 45 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CBF0 00309B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CBF4 00309B34  7C 08 03 A6 */	mtlr r0
/* 8030CBF8 00309B38  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CBFC 00309B3C  4E 80 00 20 */	blr 

.global setPlusMinus__Q22og5SoundFb
setPlusMinus__Q22og5SoundFb:
/* 8030CC00 00309B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CC04 00309B44  7C 08 02 A6 */	mflr r0
/* 8030CC08 00309B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CC0C 00309B4C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8030CC10 00309B50  41 82 00 18 */	beq lbl_8030CC28
/* 8030CC14 00309B54  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CC18 00309B58  38 80 10 20 */	li r4, 0x1020
/* 8030CC1C 00309B5C  38 A0 00 00 */	li r5, 0
/* 8030CC20 00309B60  48 02 BA 11 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CC24 00309B64  48 00 00 14 */	b lbl_8030CC38
lbl_8030CC28:
/* 8030CC28 00309B68  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CC2C 00309B6C  38 80 18 06 */	li r4, 0x1806
/* 8030CC30 00309B70  38 A0 00 00 */	li r5, 0
/* 8030CC34 00309B74  48 02 B9 FD */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
lbl_8030CC38:
/* 8030CC38 00309B78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CC3C 00309B7C  7C 08 03 A6 */	mtlr r0
/* 8030CC40 00309B80  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CC44 00309B84  4E 80 00 20 */	blr 

.global setSMenuLR__Q22og5SoundFv
setSMenuLR__Q22og5SoundFv:
/* 8030CC48 00309B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CC4C 00309B8C  7C 08 02 A6 */	mflr r0
/* 8030CC50 00309B90  38 80 18 06 */	li r4, 0x1806
/* 8030CC54 00309B94  38 A0 00 00 */	li r5, 0
/* 8030CC58 00309B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CC5C 00309B9C  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CC60 00309BA0  48 02 B9 D1 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CC64 00309BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CC68 00309BA8  7C 08 03 A6 */	mtlr r0
/* 8030CC6C 00309BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CC70 00309BB0  4E 80 00 20 */	blr 

.global setError__Q22og5SoundFv
setError__Q22og5SoundFv:
/* 8030CC74 00309BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CC78 00309BB8  7C 08 02 A6 */	mflr r0
/* 8030CC7C 00309BBC  38 80 18 07 */	li r4, 0x1807
/* 8030CC80 00309BC0  38 A0 00 00 */	li r5, 0
/* 8030CC84 00309BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CC88 00309BC8  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CC8C 00309BCC  48 02 B9 A5 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CC90 00309BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CC94 00309BD4  7C 08 03 A6 */	mtlr r0
/* 8030CC98 00309BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CC9C 00309BDC  4E 80 00 20 */	blr 

.global setZoomIn__Q22og5SoundFv
setZoomIn__Q22og5SoundFv:
/* 8030CCA0 00309BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CCA4 00309BE4  7C 08 02 A6 */	mflr r0
/* 8030CCA8 00309BE8  38 80 10 08 */	li r4, 0x1008
/* 8030CCAC 00309BEC  38 A0 00 00 */	li r5, 0
/* 8030CCB0 00309BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CCB4 00309BF4  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CCB8 00309BF8  48 02 B9 79 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CCBC 00309BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CCC0 00309C00  7C 08 03 A6 */	mtlr r0
/* 8030CCC4 00309C04  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CCC8 00309C08  4E 80 00 20 */	blr 

.global setZoomOut__Q22og5SoundFv
setZoomOut__Q22og5SoundFv:
/* 8030CCCC 00309C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CCD0 00309C10  7C 08 02 A6 */	mflr r0
/* 8030CCD4 00309C14  38 80 10 09 */	li r4, 0x1009
/* 8030CCD8 00309C18  38 A0 00 00 */	li r5, 0
/* 8030CCDC 00309C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CCE0 00309C20  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CCE4 00309C24  48 02 B9 4D */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CCE8 00309C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CCEC 00309C2C  7C 08 03 A6 */	mtlr r0
/* 8030CCF0 00309C30  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CCF4 00309C34  4E 80 00 20 */	blr 

.global setScroll__Q22og5SoundFv
setScroll__Q22og5SoundFv:
/* 8030CCF8 00309C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CCFC 00309C3C  7C 08 02 A6 */	mflr r0
/* 8030CD00 00309C40  38 80 10 0A */	li r4, 0x100a
/* 8030CD04 00309C44  38 A0 00 00 */	li r5, 0
/* 8030CD08 00309C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CD0C 00309C4C  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CD10 00309C50  48 02 B9 21 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CD14 00309C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CD18 00309C58  7C 08 03 A6 */	mtlr r0
/* 8030CD1C 00309C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CD20 00309C60  4E 80 00 20 */	blr 

.global setOpenDoukutu__Q22og5SoundFv
setOpenDoukutu__Q22og5SoundFv:
/* 8030CD24 00309C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CD28 00309C68  7C 08 02 A6 */	mflr r0
/* 8030CD2C 00309C6C  38 80 18 11 */	li r4, 0x1811
/* 8030CD30 00309C70  38 A0 00 00 */	li r5, 0
/* 8030CD34 00309C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CD38 00309C78  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CD3C 00309C7C  48 02 B8 F5 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CD40 00309C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CD44 00309C84  7C 08 03 A6 */	mtlr r0
/* 8030CD48 00309C88  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CD4C 00309C8C  4E 80 00 20 */	blr 

.global setSaveCave__Q22og5SoundFv
setSaveCave__Q22og5SoundFv:
/* 8030CD50 00309C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CD54 00309C94  7C 08 02 A6 */	mflr r0
/* 8030CD58 00309C98  38 80 40 06 */	li r4, 0x4006
/* 8030CD5C 00309C9C  38 A0 00 00 */	li r5, 0
/* 8030CD60 00309CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CD64 00309CA4  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CD68 00309CA8  48 02 B8 C9 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CD6C 00309CAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CD70 00309CB0  7C 08 03 A6 */	mtlr r0
/* 8030CD74 00309CB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CD78 00309CB8  4E 80 00 20 */	blr 

.global setOpenWMapMenu__Q22og5SoundFv
setOpenWMapMenu__Q22og5SoundFv:
/* 8030CD7C 00309CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CD80 00309CC0  7C 08 02 A6 */	mflr r0
/* 8030CD84 00309CC4  38 80 18 11 */	li r4, 0x1811
/* 8030CD88 00309CC8  38 A0 00 00 */	li r5, 0
/* 8030CD8C 00309CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CD90 00309CD0  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CD94 00309CD4  48 02 B8 9D */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CD98 00309CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CD9C 00309CDC  7C 08 03 A6 */	mtlr r0
/* 8030CDA0 00309CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CDA4 00309CE4  4E 80 00 20 */	blr 

.global setOpenTotalPoko__Q22og5SoundFv
setOpenTotalPoko__Q22og5SoundFv:
/* 8030CDA8 00309CE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CDAC 00309CEC  7C 08 02 A6 */	mflr r0
/* 8030CDB0 00309CF0  38 80 18 13 */	li r4, 0x1813
/* 8030CDB4 00309CF4  38 A0 00 00 */	li r5, 0
/* 8030CDB8 00309CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CDBC 00309CFC  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CDC0 00309D00  48 02 B8 71 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CDC4 00309D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CDC8 00309D08  7C 08 03 A6 */	mtlr r0
/* 8030CDCC 00309D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CDD0 00309D10  4E 80 00 20 */	blr 

.global setCloseTotalPoko__Q22og5SoundFv
setCloseTotalPoko__Q22og5SoundFv:
/* 8030CDD4 00309D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CDD8 00309D18  7C 08 02 A6 */	mflr r0
/* 8030CDDC 00309D1C  38 80 18 1D */	li r4, 0x181d
/* 8030CDE0 00309D20  38 A0 00 00 */	li r5, 0
/* 8030CDE4 00309D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CDE8 00309D28  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CDEC 00309D2C  48 02 B8 45 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CDF0 00309D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CDF4 00309D34  7C 08 03 A6 */	mtlr r0
/* 8030CDF8 00309D38  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CDFC 00309D3C  4E 80 00 20 */	blr 

.global setPlusTotalPoko__Q22og5SoundFv
setPlusTotalPoko__Q22og5SoundFv:
/* 8030CE00 00309D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CE04 00309D44  7C 08 02 A6 */	mflr r0
/* 8030CE08 00309D48  38 80 18 14 */	li r4, 0x1814
/* 8030CE0C 00309D4C  38 A0 00 00 */	li r5, 0
/* 8030CE10 00309D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CE14 00309D54  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CE18 00309D58  48 02 B8 19 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CE1C 00309D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CE20 00309D60  7C 08 03 A6 */	mtlr r0
/* 8030CE24 00309D64  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CE28 00309D68  4E 80 00 20 */	blr 

.global setOpenFinalMsg__Q22og5SoundFv
setOpenFinalMsg__Q22og5SoundFv:
/* 8030CE2C 00309D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CE30 00309D70  7C 08 02 A6 */	mflr r0
/* 8030CE34 00309D74  38 80 18 11 */	li r4, 0x1811
/* 8030CE38 00309D78  38 A0 00 00 */	li r5, 0
/* 8030CE3C 00309D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CE40 00309D80  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CE44 00309D84  48 02 B7 ED */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CE48 00309D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CE4C 00309D8C  7C 08 03 A6 */	mtlr r0
/* 8030CE50 00309D90  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CE54 00309D94  4E 80 00 20 */	blr 

.global setSprayAdd__Q22og5SoundFv
setSprayAdd__Q22og5SoundFv:
/* 8030CE58 00309D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CE5C 00309D9C  7C 08 02 A6 */	mflr r0
/* 8030CE60 00309DA0  38 80 18 32 */	li r4, 0x1832
/* 8030CE64 00309DA4  38 A0 00 00 */	li r5, 0
/* 8030CE68 00309DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CE6C 00309DAC  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CE70 00309DB0  48 02 B7 C1 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CE74 00309DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CE78 00309DB8  7C 08 03 A6 */	mtlr r0
/* 8030CE7C 00309DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CE80 00309DC0  4E 80 00 20 */	blr 

.global setTimeCarry__Q22og5SoundFv
setTimeCarry__Q22og5SoundFv:
/* 8030CE84 00309DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CE88 00309DC8  7C 08 02 A6 */	mflr r0
/* 8030CE8C 00309DCC  38 80 18 29 */	li r4, 0x1829
/* 8030CE90 00309DD0  38 A0 00 00 */	li r5, 0
/* 8030CE94 00309DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CE98 00309DD8  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CE9C 00309DDC  48 02 B7 95 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CEA0 00309DE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CEA4 00309DE4  7C 08 03 A6 */	mtlr r0
/* 8030CEA8 00309DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CEAC 00309DEC  4E 80 00 20 */	blr 

.global setGetSensor__Q22og5SoundFv
setGetSensor__Q22og5SoundFv:
/* 8030CEB0 00309DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CEB4 00309DF4  7C 08 02 A6 */	mflr r0
/* 8030CEB8 00309DF8  38 80 18 7E */	li r4, 0x187e
/* 8030CEBC 00309DFC  38 A0 00 00 */	li r5, 0
/* 8030CEC0 00309E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CEC4 00309E04  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CEC8 00309E08  48 02 B7 69 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CECC 00309E0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CED0 00309E10  7C 08 03 A6 */	mtlr r0
/* 8030CED4 00309E14  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CED8 00309E18  4E 80 00 20 */	blr 

.global setFloorComplete__Q22og5SoundFv
setFloorComplete__Q22og5SoundFv:
/* 8030CEDC 00309E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CEE0 00309E20  7C 08 02 A6 */	mflr r0
/* 8030CEE4 00309E24  38 80 18 86 */	li r4, 0x1886
/* 8030CEE8 00309E28  38 A0 00 00 */	li r5, 0
/* 8030CEEC 00309E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CEF0 00309E30  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CEF4 00309E34  48 02 B7 3D */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CEF8 00309E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CEFC 00309E3C  7C 08 03 A6 */	mtlr r0
/* 8030CF00 00309E40  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CF04 00309E44  4E 80 00 20 */	blr 

.global setGraySensor__Q22og5SoundFv
setGraySensor__Q22og5SoundFv:
/* 8030CF08 00309E48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CF0C 00309E4C  7C 08 02 A6 */	mflr r0
/* 8030CF10 00309E50  38 80 18 81 */	li r4, 0x1881
/* 8030CF14 00309E54  38 A0 00 00 */	li r5, 0
/* 8030CF18 00309E58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CF1C 00309E5C  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CF20 00309E60  48 02 B7 11 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CF24 00309E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CF28 00309E68  7C 08 03 A6 */	mtlr r0
/* 8030CF2C 00309E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CF30 00309E70  4E 80 00 20 */	blr 

.global setGetSpray__Q22og5SoundFv
setGetSpray__Q22og5SoundFv:
/* 8030CF34 00309E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CF38 00309E78  7C 08 02 A6 */	mflr r0
/* 8030CF3C 00309E7C  38 80 18 80 */	li r4, 0x1880
/* 8030CF40 00309E80  38 A0 00 00 */	li r5, 0
/* 8030CF44 00309E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CF48 00309E88  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CF4C 00309E8C  48 02 B6 E5 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CF50 00309E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CF54 00309E94  7C 08 03 A6 */	mtlr r0
/* 8030CF58 00309E98  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CF5C 00309E9C  4E 80 00 20 */	blr 

.global setKanteiExit__Q22og5SoundFv
setKanteiExit__Q22og5SoundFv:
/* 8030CF60 00309EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CF64 00309EA4  7C 08 02 A6 */	mflr r0
/* 8030CF68 00309EA8  38 80 18 92 */	li r4, 0x1892
/* 8030CF6C 00309EAC  38 A0 00 00 */	li r5, 0
/* 8030CF70 00309EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CF74 00309EB4  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CF78 00309EB8  48 02 B6 B9 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CF7C 00309EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CF80 00309EC0  7C 08 03 A6 */	mtlr r0
/* 8030CF84 00309EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CF88 00309EC8  4E 80 00 20 */	blr 

.global setFloorTitle__Q22og5SoundFv
setFloorTitle__Q22og5SoundFv:
/* 8030CF8C 00309ECC  4E 80 00 20 */	blr 

.global setVsTitle__Q22og5SoundFv
setVsTitle__Q22og5SoundFv:
/* 8030CF90 00309ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CF94 00309ED4  7C 08 02 A6 */	mflr r0
/* 8030CF98 00309ED8  38 80 10 8B */	li r4, 0x108b
/* 8030CF9C 00309EDC  38 A0 00 00 */	li r5, 0
/* 8030CFA0 00309EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CFA4 00309EE4  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CFA8 00309EE8  48 02 B6 89 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CFAC 00309EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CFB0 00309EF0  7C 08 03 A6 */	mtlr r0
/* 8030CFB4 00309EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CFB8 00309EF8  4E 80 00 20 */	blr 

.global setBdamaGet__Q22og5SoundFv
setBdamaGet__Q22og5SoundFv:
/* 8030CFBC 00309EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CFC0 00309F00  7C 08 02 A6 */	mflr r0
/* 8030CFC4 00309F04  38 80 18 89 */	li r4, 0x1889
/* 8030CFC8 00309F08  38 A0 00 00 */	li r5, 0
/* 8030CFCC 00309F0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CFD0 00309F10  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030CFD4 00309F14  48 02 B6 5D */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030CFD8 00309F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CFDC 00309F1C  7C 08 03 A6 */	mtlr r0
/* 8030CFE0 00309F20  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CFE4 00309F24  4E 80 00 20 */	blr 

.global setNaviChange__Q22og5SoundFi
setNaviChange__Q22og5SoundFi:
/* 8030CFE8 00309F28  4E 80 00 20 */	blr 

.global setVsWin1P__Q22og5SoundFv
setVsWin1P__Q22og5SoundFv:
/* 8030CFEC 00309F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CFF0 00309F30  7C 08 02 A6 */	mflr r0
/* 8030CFF4 00309F34  3C 60 C0 01 */	lis r3, 0xC0011043@ha
/* 8030CFF8 00309F38  3C 80 80 49 */	lis r4, lbl_8048E030@ha
/* 8030CFFC 00309F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030D000 00309F40  38 63 10 43 */	addi r3, r3, 0xC0011043@l
/* 8030D004 00309F44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030D008 00309F48  3B E4 E0 30 */	addi r31, r4, lbl_8048E030@l
/* 8030D00C 00309F4C  93 C1 00 08 */	stw r30, 8(r1)
/* 8030D010 00309F50  48 15 E7 61 */	bl PSStart2DStream__FUl
/* 8030D014 00309F54  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 8030D018 00309F58  28 00 00 00 */	cmplwi r0, 0
/* 8030D01C 00309F5C  40 82 00 18 */	bne lbl_8030D034
/* 8030D020 00309F60  38 7F 00 00 */	addi r3, r31, 0
/* 8030D024 00309F64  38 BF 00 0C */	addi r5, r31, 0xc
/* 8030D028 00309F68  38 80 01 D3 */	li r4, 0x1d3
/* 8030D02C 00309F6C  4C C6 31 82 */	crclr 6
/* 8030D030 00309F70  4B D1 D6 11 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030D034:
/* 8030D034 00309F74  83 CD 98 80 */	lwz r30, spSceneMgr__8PSSystem@sda21(r13)
/* 8030D038 00309F78  28 1E 00 00 */	cmplwi r30, 0
/* 8030D03C 00309F7C  40 82 00 18 */	bne lbl_8030D054
/* 8030D040 00309F80  38 7F 00 00 */	addi r3, r31, 0
/* 8030D044 00309F84  38 BF 00 0C */	addi r5, r31, 0xc
/* 8030D048 00309F88  38 80 01 DC */	li r4, 0x1dc
/* 8030D04C 00309F8C  4C C6 31 82 */	crclr 6
/* 8030D050 00309F90  4B D1 D5 F1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030D054:
/* 8030D054 00309F94  80 1E 00 04 */	lwz r0, 4(r30)
/* 8030D058 00309F98  28 00 00 00 */	cmplwi r0, 0
/* 8030D05C 00309F9C  40 82 00 18 */	bne lbl_8030D074
/* 8030D060 00309FA0  38 7F 00 18 */	addi r3, r31, 0x18
/* 8030D064 00309FA4  38 BF 00 0C */	addi r5, r31, 0xc
/* 8030D068 00309FA8  38 80 00 CF */	li r4, 0xcf
/* 8030D06C 00309FAC  4C C6 31 82 */	crclr 6
/* 8030D070 00309FB0  4B D1 D5 D1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030D074:
/* 8030D074 00309FB4  80 7E 00 04 */	lwz r3, 4(r30)
/* 8030D078 00309FB8  83 C3 00 04 */	lwz r30, 4(r3)
/* 8030D07C 00309FBC  28 1E 00 00 */	cmplwi r30, 0
/* 8030D080 00309FC0  40 82 00 18 */	bne lbl_8030D098
/* 8030D084 00309FC4  38 7F 00 18 */	addi r3, r31, 0x18
/* 8030D088 00309FC8  38 BF 00 24 */	addi r5, r31, 0x24
/* 8030D08C 00309FCC  38 80 00 D1 */	li r4, 0xd1
/* 8030D090 00309FD0  4C C6 31 82 */	crclr 6
/* 8030D094 00309FD4  4B D1 D5 AD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030D098:
/* 8030D098 00309FD8  7F C3 F3 78 */	mr r3, r30
/* 8030D09C 00309FDC  38 80 00 02 */	li r4, 2
/* 8030D0A0 00309FE0  81 9E 00 00 */	lwz r12, 0(r30)
/* 8030D0A4 00309FE4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8030D0A8 00309FE8  7D 89 03 A6 */	mtctr r12
/* 8030D0AC 00309FEC  4E 80 04 21 */	bctrl 
/* 8030D0B0 00309FF0  48 15 EE 39 */	bl PSMuteSE_on2D__Fv
/* 8030D0B4 00309FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030D0B8 00309FF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030D0BC 00309FFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8030D0C0 0030A000  7C 08 03 A6 */	mtlr r0
/* 8030D0C4 0030A004  38 21 00 10 */	addi r1, r1, 0x10
/* 8030D0C8 0030A008  4E 80 00 20 */	blr 

.global setVsWin2P__Q22og5SoundFv
setVsWin2P__Q22og5SoundFv:
/* 8030D0CC 0030A00C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030D0D0 0030A010  7C 08 02 A6 */	mflr r0
/* 8030D0D4 0030A014  3C 60 C0 01 */	lis r3, 0xC0011044@ha
/* 8030D0D8 0030A018  3C 80 80 49 */	lis r4, lbl_8048E030@ha
/* 8030D0DC 0030A01C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030D0E0 0030A020  38 63 10 44 */	addi r3, r3, 0xC0011044@l
/* 8030D0E4 0030A024  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030D0E8 0030A028  3B E4 E0 30 */	addi r31, r4, lbl_8048E030@l
/* 8030D0EC 0030A02C  93 C1 00 08 */	stw r30, 8(r1)
/* 8030D0F0 0030A030  48 15 E6 81 */	bl PSStart2DStream__FUl
/* 8030D0F4 0030A034  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 8030D0F8 0030A038  28 00 00 00 */	cmplwi r0, 0
/* 8030D0FC 0030A03C  40 82 00 18 */	bne lbl_8030D114
/* 8030D100 0030A040  38 7F 00 00 */	addi r3, r31, 0
/* 8030D104 0030A044  38 BF 00 0C */	addi r5, r31, 0xc
/* 8030D108 0030A048  38 80 01 D3 */	li r4, 0x1d3
/* 8030D10C 0030A04C  4C C6 31 82 */	crclr 6
/* 8030D110 0030A050  4B D1 D5 31 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030D114:
/* 8030D114 0030A054  83 CD 98 80 */	lwz r30, spSceneMgr__8PSSystem@sda21(r13)
/* 8030D118 0030A058  28 1E 00 00 */	cmplwi r30, 0
/* 8030D11C 0030A05C  40 82 00 18 */	bne lbl_8030D134
/* 8030D120 0030A060  38 7F 00 00 */	addi r3, r31, 0
/* 8030D124 0030A064  38 BF 00 0C */	addi r5, r31, 0xc
/* 8030D128 0030A068  38 80 01 DC */	li r4, 0x1dc
/* 8030D12C 0030A06C  4C C6 31 82 */	crclr 6
/* 8030D130 0030A070  4B D1 D5 11 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030D134:
/* 8030D134 0030A074  80 1E 00 04 */	lwz r0, 4(r30)
/* 8030D138 0030A078  28 00 00 00 */	cmplwi r0, 0
/* 8030D13C 0030A07C  40 82 00 18 */	bne lbl_8030D154
/* 8030D140 0030A080  38 7F 00 18 */	addi r3, r31, 0x18
/* 8030D144 0030A084  38 BF 00 0C */	addi r5, r31, 0xc
/* 8030D148 0030A088  38 80 00 CF */	li r4, 0xcf
/* 8030D14C 0030A08C  4C C6 31 82 */	crclr 6
/* 8030D150 0030A090  4B D1 D4 F1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030D154:
/* 8030D154 0030A094  80 7E 00 04 */	lwz r3, 4(r30)
/* 8030D158 0030A098  83 C3 00 04 */	lwz r30, 4(r3)
/* 8030D15C 0030A09C  28 1E 00 00 */	cmplwi r30, 0
/* 8030D160 0030A0A0  40 82 00 18 */	bne lbl_8030D178
/* 8030D164 0030A0A4  38 7F 00 18 */	addi r3, r31, 0x18
/* 8030D168 0030A0A8  38 BF 00 24 */	addi r5, r31, 0x24
/* 8030D16C 0030A0AC  38 80 00 D1 */	li r4, 0xd1
/* 8030D170 0030A0B0  4C C6 31 82 */	crclr 6
/* 8030D174 0030A0B4  4B D1 D4 CD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030D178:
/* 8030D178 0030A0B8  7F C3 F3 78 */	mr r3, r30
/* 8030D17C 0030A0BC  38 80 00 02 */	li r4, 2
/* 8030D180 0030A0C0  81 9E 00 00 */	lwz r12, 0(r30)
/* 8030D184 0030A0C4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8030D188 0030A0C8  7D 89 03 A6 */	mtctr r12
/* 8030D18C 0030A0CC  4E 80 04 21 */	bctrl 
/* 8030D190 0030A0D0  48 15 ED 59 */	bl PSMuteSE_on2D__Fv
/* 8030D194 0030A0D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030D198 0030A0D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030D19C 0030A0DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8030D1A0 0030A0E0  7C 08 03 A6 */	mtlr r0
/* 8030D1A4 0030A0E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8030D1A8 0030A0E8  4E 80 00 20 */	blr 

.global setVsDraw__Q22og5SoundFv
setVsDraw__Q22og5SoundFv:
/* 8030D1AC 0030A0EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030D1B0 0030A0F0  7C 08 02 A6 */	mflr r0
/* 8030D1B4 0030A0F4  3C 60 C0 01 */	lis r3, 0xC0011045@ha
/* 8030D1B8 0030A0F8  3C 80 80 49 */	lis r4, lbl_8048E030@ha
/* 8030D1BC 0030A0FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030D1C0 0030A100  38 63 10 45 */	addi r3, r3, 0xC0011045@l
/* 8030D1C4 0030A104  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030D1C8 0030A108  3B E4 E0 30 */	addi r31, r4, lbl_8048E030@l
/* 8030D1CC 0030A10C  93 C1 00 08 */	stw r30, 8(r1)
/* 8030D1D0 0030A110  48 15 E5 A1 */	bl PSStart2DStream__FUl
/* 8030D1D4 0030A114  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 8030D1D8 0030A118  28 00 00 00 */	cmplwi r0, 0
/* 8030D1DC 0030A11C  40 82 00 18 */	bne lbl_8030D1F4
/* 8030D1E0 0030A120  38 7F 00 00 */	addi r3, r31, 0
/* 8030D1E4 0030A124  38 BF 00 0C */	addi r5, r31, 0xc
/* 8030D1E8 0030A128  38 80 01 D3 */	li r4, 0x1d3
/* 8030D1EC 0030A12C  4C C6 31 82 */	crclr 6
/* 8030D1F0 0030A130  4B D1 D4 51 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030D1F4:
/* 8030D1F4 0030A134  83 CD 98 80 */	lwz r30, spSceneMgr__8PSSystem@sda21(r13)
/* 8030D1F8 0030A138  28 1E 00 00 */	cmplwi r30, 0
/* 8030D1FC 0030A13C  40 82 00 18 */	bne lbl_8030D214
/* 8030D200 0030A140  38 7F 00 00 */	addi r3, r31, 0
/* 8030D204 0030A144  38 BF 00 0C */	addi r5, r31, 0xc
/* 8030D208 0030A148  38 80 01 DC */	li r4, 0x1dc
/* 8030D20C 0030A14C  4C C6 31 82 */	crclr 6
/* 8030D210 0030A150  4B D1 D4 31 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030D214:
/* 8030D214 0030A154  80 1E 00 04 */	lwz r0, 4(r30)
/* 8030D218 0030A158  28 00 00 00 */	cmplwi r0, 0
/* 8030D21C 0030A15C  40 82 00 18 */	bne lbl_8030D234
/* 8030D220 0030A160  38 7F 00 18 */	addi r3, r31, 0x18
/* 8030D224 0030A164  38 BF 00 0C */	addi r5, r31, 0xc
/* 8030D228 0030A168  38 80 00 CF */	li r4, 0xcf
/* 8030D22C 0030A16C  4C C6 31 82 */	crclr 6
/* 8030D230 0030A170  4B D1 D4 11 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030D234:
/* 8030D234 0030A174  80 7E 00 04 */	lwz r3, 4(r30)
/* 8030D238 0030A178  83 C3 00 04 */	lwz r30, 4(r3)
/* 8030D23C 0030A17C  28 1E 00 00 */	cmplwi r30, 0
/* 8030D240 0030A180  40 82 00 18 */	bne lbl_8030D258
/* 8030D244 0030A184  38 7F 00 18 */	addi r3, r31, 0x18
/* 8030D248 0030A188  38 BF 00 24 */	addi r5, r31, 0x24
/* 8030D24C 0030A18C  38 80 00 D1 */	li r4, 0xd1
/* 8030D250 0030A190  4C C6 31 82 */	crclr 6
/* 8030D254 0030A194  4B D1 D3 ED */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8030D258:
/* 8030D258 0030A198  7F C3 F3 78 */	mr r3, r30
/* 8030D25C 0030A19C  38 80 00 02 */	li r4, 2
/* 8030D260 0030A1A0  81 9E 00 00 */	lwz r12, 0(r30)
/* 8030D264 0030A1A4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8030D268 0030A1A8  7D 89 03 A6 */	mtctr r12
/* 8030D26C 0030A1AC  4E 80 04 21 */	bctrl 
/* 8030D270 0030A1B0  48 15 EC 79 */	bl PSMuteSE_on2D__Fv
/* 8030D274 0030A1B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030D278 0030A1B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030D27C 0030A1BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8030D280 0030A1C0  7C 08 03 A6 */	mtlr r0
/* 8030D284 0030A1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8030D288 0030A1C8  4E 80 00 20 */	blr 

.global setWarning__Q22og5SoundFv
setWarning__Q22og5SoundFv:
/* 8030D28C 0030A1CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030D290 0030A1D0  7C 08 02 A6 */	mflr r0
/* 8030D294 0030A1D4  38 80 18 93 */	li r4, 0x1893
/* 8030D298 0030A1D8  38 A0 00 00 */	li r5, 0
/* 8030D29C 0030A1DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030D2A0 0030A1E0  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8030D2A4 0030A1E4  48 02 B3 8D */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 8030D2A8 0030A1E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030D2AC 0030A1EC  7C 08 03 A6 */	mtlr r0
/* 8030D2B0 0030A1F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8030D2B4 0030A1F4  4E 80 00 20 */	blr 
