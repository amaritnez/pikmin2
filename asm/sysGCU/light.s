.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
	.4byte __sinit_light_cpp

.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
lbl_80499EF8: # Shift-JIS
	.4byte 0x83418393
	.4byte 0x83728347
	.4byte 0x83938367
	.4byte 0x83898343
	.4byte 0x83670000

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
govNAN___Q24Game5P2JST:
	.float 0.0
	.float 0.0
	.float 0.0
.global __vt__8LightMgr
__vt__8LightMgr:
	.4byte 0
	.4byte 0
	.4byte __dt__8LightMgrFv
	.4byte getChildCount__5CNodeFv
	.4byte update__8LightMgrFv
	.4byte set__8LightMgrFR8Graphics
	.4byte set__8LightMgrFR7Matrixf
	.4byte drawDebugInfo__8LightMgrFR8Graphics
.global __vt__8LightObj
__vt__8LightObj:
	.4byte 0
	.4byte 0
	.4byte __dt__8LightObjFv
	.4byte getChildCount__5CNodeFv
	.4byte update__8LightObjFv
	.4byte set__8LightObjFR7Matrixf
	.4byte drawPos__8LightObjFR8Graphics
	.4byte drawPos__8LightObjFR8GraphicsR7Matrixf
	.4byte drawPos__8LightObjFR8GraphicsR6Camera

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
gu32NAN___Q24Game5P2JST:
	.skip 0x4
gfNAN___Q24Game5P2JST:
	.skip 0x4

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
lbl_805205A8:
	.float 0.0
lbl_805205AC:
	.float 1000.0
lbl_805205B0:
	.float -1.0
lbl_805205B4:
	.float 1.0
lbl_805205B8:
	.float 60.0
lbl_805205BC:
	.float 16.0
lbl_805205C0:
	.float 30.0
lbl_805205C4:
	.float 255.0
lbl_805205C8:
	.float 0.5
.balign 8
lbl_805205D0:
	.4byte 0x43300000
	.4byte 0x00000000
lbl_805205D8:
	.float 10.0
.balign 4
lbl_805205DC: # Shift-JIS
	.4byte 0x83898343
	.4byte 0x83670000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__8LightObjFPc10_GXLightID14ELightTypeFlagQ28JUtility6TColor
__ct__8LightObjFPc10_GXLightID14ELightTypeFlagQ28JUtility6TColor:
/* 8042B46C 004283AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042B470 004283B0  7C 08 02 A6 */	mflr r0
/* 8042B474 004283B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042B478 004283B8  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8042B47C 004283BC  7C 7B 1B 78 */	mr r27, r3
/* 8042B480 004283C0  7C 9C 23 78 */	mr r28, r4
/* 8042B484 004283C4  7C BD 2B 78 */	mr r29, r5
/* 8042B488 004283C8  7C DE 33 78 */	mr r30, r6
/* 8042B48C 004283CC  7C FF 3B 78 */	mr r31, r7
/* 8042B490 004283D0  4B FE 5F 01 */	bl __ct__5CNodeFv
/* 8042B494 004283D4  3C 60 80 4F */	lis r3, __vt__8LightObj@ha
/* 8042B498 004283D8  C0 C2 22 48 */	lfs f6, lbl_805205A8@sda21(r2)
/* 8042B49C 004283DC  38 03 BE B4 */	addi r0, r3, __vt__8LightObj@l
/* 8042B4A0 004283E0  C0 A2 22 4C */	lfs f5, lbl_805205AC@sda21(r2)
/* 8042B4A4 004283E4  90 1B 00 00 */	stw r0, 0(r27)
/* 8042B4A8 004283E8  38 A0 00 01 */	li r5, 1
/* 8042B4AC 004283EC  C0 82 22 50 */	lfs f4, lbl_805205B0@sda21(r2)
/* 8042B4B0 004283F0  38 80 00 03 */	li r4, 3
/* 8042B4B4 004283F4  9B BB 00 18 */	stb r29, 0x18(r27)
/* 8042B4B8 004283F8  38 00 00 00 */	li r0, 0
/* 8042B4BC 004283FC  80 DF 00 00 */	lwz r6, 0(r31)
/* 8042B4C0 00428400  7F 63 DB 78 */	mr r3, r27
/* 8042B4C4 00428404  9B DB 00 19 */	stb r30, 0x19(r27)
/* 8042B4C8 00428408  C0 62 22 54 */	lfs f3, lbl_805205B4@sda21(r2)
/* 8042B4CC 0042840C  D0 DB 00 1C */	stfs f6, 0x1c(r27)
/* 8042B4D0 00428410  C0 42 22 58 */	lfs f2, lbl_805205B8@sda21(r2)
/* 8042B4D4 00428414  D0 BB 00 20 */	stfs f5, 0x20(r27)
/* 8042B4D8 00428418  C0 22 22 5C */	lfs f1, lbl_805205BC@sda21(r2)
/* 8042B4DC 0042841C  D0 DB 00 24 */	stfs f6, 0x24(r27)
/* 8042B4E0 00428420  C0 02 22 60 */	lfs f0, lbl_805205C0@sda21(r2)
/* 8042B4E4 00428424  D0 DB 00 28 */	stfs f6, 0x28(r27)
/* 8042B4E8 00428428  D0 9B 00 2C */	stfs f4, 0x2c(r27)
/* 8042B4EC 0042842C  D0 DB 00 30 */	stfs f6, 0x30(r27)
/* 8042B4F0 00428430  90 DB 00 34 */	stw r6, 0x34(r27)
/* 8042B4F4 00428434  D0 7B 00 38 */	stfs f3, 0x38(r27)
/* 8042B4F8 00428438  D0 BB 00 3C */	stfs f5, 0x3c(r27)
/* 8042B4FC 0042843C  D0 7B 00 40 */	stfs f3, 0x40(r27)
/* 8042B500 00428440  D0 5B 00 44 */	stfs f2, 0x44(r27)
/* 8042B504 00428444  98 BB 00 48 */	stb r5, 0x48(r27)
/* 8042B508 00428448  98 9B 00 49 */	stb r4, 0x49(r27)
/* 8042B50C 0042844C  D0 3B 00 4C */	stfs f1, 0x4c(r27)
/* 8042B510 00428450  D0 1B 00 50 */	stfs f0, 0x50(r27)
/* 8042B514 00428454  98 1B 00 54 */	stb r0, 0x54(r27)
/* 8042B518 00428458  93 9B 00 14 */	stw r28, 0x14(r27)
/* 8042B51C 0042845C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8042B520 00428460  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042B524 00428464  7C 08 03 A6 */	mtlr r0
/* 8042B528 00428468  38 21 00 20 */	addi r1, r1, 0x20
/* 8042B52C 0042846C  4E 80 00 20 */	blr 

.global set__8LightObjFR7Matrixf
set__8LightObjFR7Matrixf:
/* 8042B530 00428470  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8042B534 00428474  7C 08 02 A6 */	mflr r0
/* 8042B538 00428478  38 A0 FF FF */	li r5, -1
/* 8042B53C 0042847C  C8 62 22 70 */	lfd f3, lbl_805205D0@sda21(r2)
/* 8042B540 00428480  90 01 01 44 */	stw r0, 0x144(r1)
/* 8042B544 00428484  3C 00 43 30 */	lis r0, 0x4330
/* 8042B548 00428488  C0 02 22 64 */	lfs f0, lbl_805205C4@sda21(r2)
/* 8042B54C 0042848C  93 E1 01 3C */	stw r31, 0x13c(r1)
/* 8042B550 00428490  7C 9F 23 78 */	mr r31, r4
/* 8042B554 00428494  93 C1 01 38 */	stw r30, 0x138(r1)
/* 8042B558 00428498  7C 7E 1B 78 */	mr r30, r3
/* 8042B55C 0042849C  88 63 00 34 */	lbz r3, 0x34(r3)
/* 8042B560 004284A0  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 8042B564 004284A4  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8042B568 004284A8  90 61 00 F4 */	stw r3, 0xf4(r1)
/* 8042B56C 004284AC  C8 41 00 F0 */	lfd f2, 0xf0(r1)
/* 8042B570 004284B0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8042B574 004284B4  EC 42 18 28 */	fsubs f2, f2, f3
/* 8042B578 004284B8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8042B57C 004284BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042B580 004284C0  40 81 00 08 */	ble lbl_8042B588
/* 8042B584 004284C4  FC 20 00 90 */	fmr f1, f0
lbl_8042B588:
/* 8042B588 004284C8  88 7E 00 35 */	lbz r3, 0x35(r30)
/* 8042B58C 004284CC  3C 00 43 30 */	lis r0, 0x4330
/* 8042B590 004284D0  FC 60 08 1E */	fctiwz f3, f1
/* 8042B594 004284D4  90 01 01 00 */	stw r0, 0x100(r1)
/* 8042B598 004284D8  C8 42 22 70 */	lfd f2, lbl_805205D0@sda21(r2)
/* 8042B59C 004284DC  90 61 01 04 */	stw r3, 0x104(r1)
/* 8042B5A0 004284E0  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8042B5A4 004284E4  C8 01 01 00 */	lfd f0, 0x100(r1)
/* 8042B5A8 004284E8  D8 61 00 F8 */	stfd f3, 0xf8(r1)
/* 8042B5AC 004284EC  EC 40 10 28 */	fsubs f2, f0, f2
/* 8042B5B0 004284F0  C0 02 22 64 */	lfs f0, lbl_805205C4@sda21(r2)
/* 8042B5B4 004284F4  80 01 00 FC */	lwz r0, 0xfc(r1)
/* 8042B5B8 004284F8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8042B5BC 004284FC  98 01 00 0C */	stb r0, 0xc(r1)
/* 8042B5C0 00428500  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042B5C4 00428504  40 81 00 08 */	ble lbl_8042B5CC
/* 8042B5C8 00428508  FC 20 00 90 */	fmr f1, f0
lbl_8042B5CC:
/* 8042B5CC 0042850C  88 7E 00 36 */	lbz r3, 0x36(r30)
/* 8042B5D0 00428510  3C 00 43 30 */	lis r0, 0x4330
/* 8042B5D4 00428514  FC 60 08 1E */	fctiwz f3, f1
/* 8042B5D8 00428518  90 01 01 10 */	stw r0, 0x110(r1)
/* 8042B5DC 0042851C  C8 42 22 70 */	lfd f2, lbl_805205D0@sda21(r2)
/* 8042B5E0 00428520  90 61 01 14 */	stw r3, 0x114(r1)
/* 8042B5E4 00428524  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8042B5E8 00428528  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 8042B5EC 0042852C  D8 61 01 08 */	stfd f3, 0x108(r1)
/* 8042B5F0 00428530  EC 40 10 28 */	fsubs f2, f0, f2
/* 8042B5F4 00428534  C0 02 22 64 */	lfs f0, lbl_805205C4@sda21(r2)
/* 8042B5F8 00428538  80 01 01 0C */	lwz r0, 0x10c(r1)
/* 8042B5FC 0042853C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8042B600 00428540  98 01 00 0D */	stb r0, 0xd(r1)
/* 8042B604 00428544  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042B608 00428548  40 81 00 08 */	ble lbl_8042B610
/* 8042B60C 0042854C  FC 20 00 90 */	fmr f1, f0
lbl_8042B610:
/* 8042B610 00428550  88 7E 00 37 */	lbz r3, 0x37(r30)
/* 8042B614 00428554  3C 00 43 30 */	lis r0, 0x4330
/* 8042B618 00428558  FC 60 08 1E */	fctiwz f3, f1
/* 8042B61C 0042855C  90 01 01 20 */	stw r0, 0x120(r1)
/* 8042B620 00428560  C8 42 22 70 */	lfd f2, lbl_805205D0@sda21(r2)
/* 8042B624 00428564  90 61 01 24 */	stw r3, 0x124(r1)
/* 8042B628 00428568  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8042B62C 0042856C  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 8042B630 00428570  D8 61 01 18 */	stfd f3, 0x118(r1)
/* 8042B634 00428574  EC 40 10 28 */	fsubs f2, f0, f2
/* 8042B638 00428578  C0 02 22 64 */	lfs f0, lbl_805205C4@sda21(r2)
/* 8042B63C 0042857C  80 01 01 1C */	lwz r0, 0x11c(r1)
/* 8042B640 00428580  EC 22 00 72 */	fmuls f1, f2, f1
/* 8042B644 00428584  98 01 00 0E */	stb r0, 0xe(r1)
/* 8042B648 00428588  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042B64C 0042858C  40 81 00 08 */	ble lbl_8042B654
/* 8042B650 00428590  FC 20 00 90 */	fmr f1, f0
lbl_8042B654:
/* 8042B654 00428594  FC 00 08 1E */	fctiwz f0, f1
/* 8042B658 00428598  38 61 00 AC */	addi r3, r1, 0xac
/* 8042B65C 0042859C  38 81 00 08 */	addi r4, r1, 8
/* 8042B660 004285A0  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 8042B664 004285A4  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 8042B668 004285A8  98 01 00 0F */	stb r0, 0xf(r1)
/* 8042B66C 004285AC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8042B670 004285B0  90 01 00 08 */	stw r0, 8(r1)
/* 8042B674 004285B4  4B CB B5 89 */	bl GXInitLightColor
/* 8042B678 004285B8  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 8042B67C 004285BC  2C 00 00 03 */	cmpwi r0, 3
/* 8042B680 004285C0  41 82 01 68 */	beq lbl_8042B7E8
/* 8042B684 004285C4  40 80 00 14 */	bge lbl_8042B698
/* 8042B688 004285C8  2C 00 00 01 */	cmpwi r0, 1
/* 8042B68C 004285CC  41 82 00 18 */	beq lbl_8042B6A4
/* 8042B690 004285D0  40 80 00 48 */	bge lbl_8042B6D8
/* 8042B694 004285D4  48 00 01 54 */	b lbl_8042B7E8
lbl_8042B698:
/* 8042B698 004285D8  2C 00 00 05 */	cmpwi r0, 5
/* 8042B69C 004285DC  40 80 01 4C */	bge lbl_8042B7E8
/* 8042B6A0 004285E0  48 00 00 D8 */	b lbl_8042B778
lbl_8042B6A4:
/* 8042B6A4 004285E4  7F E3 FB 78 */	mr r3, r31
/* 8042B6A8 004285E8  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8042B6AC 004285EC  38 A1 00 34 */	addi r5, r1, 0x34
/* 8042B6B0 004285F0  4B CB F5 29 */	bl PSMTXMultVec
/* 8042B6B4 004285F4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8042B6B8 004285F8  38 61 00 AC */	addi r3, r1, 0xac
/* 8042B6BC 004285FC  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8042B6C0 00428600  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 8042B6C4 00428604  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8042B6C8 00428608  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8042B6CC 0042860C  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8042B6D0 00428610  4B CB B4 1D */	bl GXInitLightPos
/* 8042B6D4 00428614  48 00 01 14 */	b lbl_8042B7E8
lbl_8042B6D8:
/* 8042B6D8 00428618  7F E3 FB 78 */	mr r3, r31
/* 8042B6DC 0042861C  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8042B6E0 00428620  38 A1 00 28 */	addi r5, r1, 0x28
/* 8042B6E4 00428624  4B CB F4 F5 */	bl PSMTXMultVec
/* 8042B6E8 00428628  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8042B6EC 0042862C  38 61 00 AC */	addi r3, r1, 0xac
/* 8042B6F0 00428630  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8042B6F4 00428634  C0 61 00 30 */	lfs f3, 0x30(r1)
/* 8042B6F8 00428638  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8042B6FC 0042863C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8042B700 00428640  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8042B704 00428644  4B CB B3 E9 */	bl GXInitLightPos
/* 8042B708 00428648  7F E3 FB 78 */	mr r3, r31
/* 8042B70C 0042864C  38 81 00 7C */	addi r4, r1, 0x7c
/* 8042B710 00428650  4B CB ED 0D */	bl PSMTXInverse
/* 8042B714 00428654  38 61 00 7C */	addi r3, r1, 0x7c
/* 8042B718 00428658  38 81 00 4C */	addi r4, r1, 0x4c
/* 8042B71C 0042865C  4B CB EC B1 */	bl PSMTXTranspose
/* 8042B720 00428660  38 61 00 4C */	addi r3, r1, 0x4c
/* 8042B724 00428664  38 9E 00 28 */	addi r4, r30, 0x28
/* 8042B728 00428668  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8042B72C 0042866C  4B CB F4 AD */	bl PSMTXMultVec
/* 8042B730 00428670  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8042B734 00428674  38 61 00 AC */	addi r3, r1, 0xac
/* 8042B738 00428678  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8042B73C 0042867C  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8042B740 00428680  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8042B744 00428684  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8042B748 00428688  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8042B74C 0042868C  4B CB B3 B1 */	bl GXInitLightDir
/* 8042B750 00428690  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8042B754 00428694  38 61 00 AC */	addi r3, r1, 0xac
/* 8042B758 00428698  88 9E 00 49 */	lbz r4, 0x49(r30)
/* 8042B75C 0042869C  4B CB B1 31 */	bl GXInitLightSpot
/* 8042B760 004286A0  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 8042B764 004286A4  38 61 00 AC */	addi r3, r1, 0xac
/* 8042B768 004286A8  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 8042B76C 004286AC  88 9E 00 48 */	lbz r4, 0x48(r30)
/* 8042B770 004286B0  4B CB B2 AD */	bl GXInitLightDistAttn
/* 8042B774 004286B4  48 00 00 74 */	b lbl_8042B7E8
lbl_8042B778:
/* 8042B778 004286B8  7F E3 FB 78 */	mr r3, r31
/* 8042B77C 004286BC  38 81 00 7C */	addi r4, r1, 0x7c
/* 8042B780 004286C0  4B CB EC 9D */	bl PSMTXInverse
/* 8042B784 004286C4  38 61 00 7C */	addi r3, r1, 0x7c
/* 8042B788 004286C8  38 81 00 4C */	addi r4, r1, 0x4c
/* 8042B78C 004286CC  4B CB EC 41 */	bl PSMTXTranspose
/* 8042B790 004286D0  38 61 00 4C */	addi r3, r1, 0x4c
/* 8042B794 004286D4  38 9E 00 28 */	addi r4, r30, 0x28
/* 8042B798 004286D8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8042B79C 004286DC  4B CB F4 3D */	bl PSMTXMultVec
/* 8042B7A0 004286E0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8042B7A4 004286E4  38 61 00 AC */	addi r3, r1, 0xac
/* 8042B7A8 004286E8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8042B7AC 004286EC  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 8042B7B0 004286F0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8042B7B4 004286F4  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8042B7B8 004286F8  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8042B7BC 004286FC  4B CB B3 5D */	bl GXInitSpecularDir
/* 8042B7C0 00428700  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 8042B7C4 00428704  38 61 00 AC */	addi r3, r1, 0xac
/* 8042B7C8 00428708  C0 02 22 68 */	lfs f0, lbl_805205C8@sda21(r2)
/* 8042B7CC 0042870C  C0 22 22 48 */	lfs f1, lbl_805205A8@sda21(r2)
/* 8042B7D0 00428710  EC 82 00 32 */	fmuls f4, f2, f0
/* 8042B7D4 00428714  C0 62 22 54 */	lfs f3, lbl_805205B4@sda21(r2)
/* 8042B7D8 00428718  FC 40 08 90 */	fmr f2, f1
/* 8042B7DC 0042871C  FC A0 08 90 */	fmr f5, f1
/* 8042B7E0 00428720  EC C3 20 28 */	fsubs f6, f3, f4
/* 8042B7E4 00428724  4B CB B0 8D */	bl GXInitLightAttn
lbl_8042B7E8:
/* 8042B7E8 00428728  88 9E 00 18 */	lbz r4, 0x18(r30)
/* 8042B7EC 0042872C  38 61 00 AC */	addi r3, r1, 0xac
/* 8042B7F0 00428730  4B CB B4 19 */	bl GXLoadLightObjImm
/* 8042B7F4 00428734  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8042B7F8 00428738  83 E1 01 3C */	lwz r31, 0x13c(r1)
/* 8042B7FC 0042873C  83 C1 01 38 */	lwz r30, 0x138(r1)
/* 8042B800 00428740  7C 08 03 A6 */	mtlr r0
/* 8042B804 00428744  38 21 01 40 */	addi r1, r1, 0x140
/* 8042B808 00428748  4E 80 00 20 */	blr 

.global drawPos__8LightObjFR8Graphics
drawPos__8LightObjFR8Graphics:
/* 8042B80C 0042874C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042B810 00428750  7C 08 02 A6 */	mflr r0
/* 8042B814 00428754  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042B818 00428758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042B81C 0042875C  7C 9F 23 78 */	mr r31, r4
/* 8042B820 00428760  93 C1 00 08 */	stw r30, 8(r1)
/* 8042B824 00428764  7C 7E 1B 78 */	mr r30, r3
/* 8042B828 00428768  80 64 02 5C */	lwz r3, 0x25c(r4)
/* 8042B82C 0042876C  38 80 00 00 */	li r4, 0
/* 8042B830 00428770  4B FF 99 2D */	bl getMatrix__8ViewportFb
/* 8042B834 00428774  81 9E 00 00 */	lwz r12, 0(r30)
/* 8042B838 00428778  7C 65 1B 78 */	mr r5, r3
/* 8042B83C 0042877C  7F C3 F3 78 */	mr r3, r30
/* 8042B840 00428780  7F E4 FB 78 */	mr r4, r31
/* 8042B844 00428784  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8042B848 00428788  7D 89 03 A6 */	mtctr r12
/* 8042B84C 0042878C  4E 80 04 21 */	bctrl 
/* 8042B850 00428790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042B854 00428794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042B858 00428798  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042B85C 0042879C  7C 08 03 A6 */	mtlr r0
/* 8042B860 004287A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8042B864 004287A4  4E 80 00 20 */	blr 

.global drawPos__8LightObjFR8GraphicsR6Camera
drawPos__8LightObjFR8GraphicsR6Camera:
/* 8042B868 004287A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042B86C 004287AC  7C 08 02 A6 */	mflr r0
/* 8042B870 004287B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042B874 004287B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042B878 004287B8  7C BF 2B 78 */	mr r31, r5
/* 8042B87C 004287BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8042B880 004287C0  7C 9E 23 78 */	mr r30, r4
/* 8042B884 004287C4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8042B888 004287C8  7C 7D 1B 78 */	mr r29, r3
/* 8042B88C 004287CC  7F E3 FB 78 */	mr r3, r31
/* 8042B890 004287D0  4B FE F4 B5 */	bl setProjection__6CameraFv
/* 8042B894 004287D4  7F E3 FB 78 */	mr r3, r31
/* 8042B898 004287D8  38 80 00 00 */	li r4, 0
/* 8042B89C 004287DC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8042B8A0 004287E0  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8042B8A4 004287E4  7D 89 03 A6 */	mtctr r12
/* 8042B8A8 004287E8  4E 80 04 21 */	bctrl 
/* 8042B8AC 004287EC  81 9D 00 00 */	lwz r12, 0(r29)
/* 8042B8B0 004287F0  7C 65 1B 78 */	mr r5, r3
/* 8042B8B4 004287F4  7F A3 EB 78 */	mr r3, r29
/* 8042B8B8 004287F8  7F C4 F3 78 */	mr r4, r30
/* 8042B8BC 004287FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8042B8C0 00428800  7D 89 03 A6 */	mtctr r12
/* 8042B8C4 00428804  4E 80 04 21 */	bctrl 
/* 8042B8C8 00428808  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042B8CC 0042880C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042B8D0 00428810  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8042B8D4 00428814  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8042B8D8 00428818  7C 08 03 A6 */	mtlr r0
/* 8042B8DC 0042881C  38 21 00 20 */	addi r1, r1, 0x20
/* 8042B8E0 00428820  4E 80 00 20 */	blr 

.global drawPos__8LightObjFR8GraphicsR7Matrixf
drawPos__8LightObjFR8GraphicsR7Matrixf:
/* 8042B8E4 00428824  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8042B8E8 00428828  7C 08 02 A6 */	mflr r0
/* 8042B8EC 0042882C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8042B8F0 00428830  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8042B8F4 00428834  7C 9F 23 78 */	mr r31, r4
/* 8042B8F8 00428838  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8042B8FC 0042883C  7C 7E 1B 78 */	mr r30, r3
/* 8042B900 00428840  88 03 00 54 */	lbz r0, 0x54(r3)
/* 8042B904 00428844  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8042B908 00428848  41 82 01 6C */	beq lbl_8042BA74
/* 8042B90C 0042884C  7F E3 FB 78 */	mr r3, r31
/* 8042B910 00428850  7C A4 2B 78 */	mr r4, r5
/* 8042B914 00428854  4B FF 9F 09 */	bl initPrimDraw__8GraphicsFP7Matrixf
/* 8042B918 00428858  38 61 00 14 */	addi r3, r1, 0x14
/* 8042B91C 0042885C  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8042B920 00428860  4B FF CF 21 */	bl "makeT__7MatrixfFR10Vector3<f>"
/* 8042B924 00428864  88 BE 00 37 */	lbz r5, 0x37(r30)
/* 8042B928 00428868  88 9E 00 36 */	lbz r4, 0x36(r30)
/* 8042B92C 0042886C  88 7E 00 35 */	lbz r3, 0x35(r30)
/* 8042B930 00428870  88 1E 00 34 */	lbz r0, 0x34(r30)
/* 8042B934 00428874  98 1F 00 84 */	stb r0, 0x84(r31)
/* 8042B938 00428878  98 7F 00 85 */	stb r3, 0x85(r31)
/* 8042B93C 0042887C  98 9F 00 86 */	stb r4, 0x86(r31)
/* 8042B940 00428880  98 BF 00 87 */	stb r5, 0x87(r31)
/* 8042B944 00428884  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 8042B948 00428888  2C 00 00 03 */	cmpwi r0, 3
/* 8042B94C 0042888C  41 82 01 28 */	beq lbl_8042BA74
/* 8042B950 00428890  40 80 00 14 */	bge lbl_8042B964
/* 8042B954 00428894  2C 00 00 01 */	cmpwi r0, 1
/* 8042B958 00428898  41 82 00 F4 */	beq lbl_8042BA4C
/* 8042B95C 0042889C  40 80 00 7C */	bge lbl_8042B9D8
/* 8042B960 004288A0  48 00 01 14 */	b lbl_8042BA74
lbl_8042B964:
/* 8042B964 004288A4  2C 00 00 05 */	cmpwi r0, 5
/* 8042B968 004288A8  40 80 01 0C */	bge lbl_8042BA74
/* 8042B96C 004288AC  C0 22 22 78 */	lfs f1, lbl_805205D8@sda21(r2)
/* 8042B970 004288B0  7F E3 FB 78 */	mr r3, r31
/* 8042B974 004288B4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8042B978 004288B8  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8042B97C 004288BC  C0 9E 00 28 */	lfs f4, 0x28(r30)
/* 8042B980 004288C0  38 A1 00 08 */	addi r5, r1, 8
/* 8042B984 004288C4  EC 61 00 32 */	fmuls f3, f1, f0
/* 8042B988 004288C8  C0 BE 00 2C */	lfs f5, 0x2c(r30)
/* 8042B98C 004288CC  C0 DE 00 30 */	lfs f6, 0x30(r30)
/* 8042B990 004288D0  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8042B994 004288D4  EC C6 00 F2 */	fmuls f6, f6, f3
/* 8042B998 004288D8  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8042B99C 004288DC  EC A5 00 F2 */	fmuls f5, f5, f3
/* 8042B9A0 004288E0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8042B9A4 004288E4  EC 84 00 F2 */	fmuls f4, f4, f3
/* 8042B9A8 004288E8  EC 42 30 2A */	fadds f2, f2, f6
/* 8042B9AC 004288EC  EC 21 28 2A */	fadds f1, f1, f5
/* 8042B9B0 004288F0  EC 00 20 2A */	fadds f0, f0, f4
/* 8042B9B4 004288F4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8042B9B8 004288F8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8042B9BC 004288FC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8042B9C0 00428900  4B FF A0 29 */	bl "drawLine__8GraphicsFR10Vector3<f>R10Vector3<f>"
/* 8042B9C4 00428904  C0 22 22 78 */	lfs f1, lbl_805205D8@sda21(r2)
/* 8042B9C8 00428908  7F E3 FB 78 */	mr r3, r31
/* 8042B9CC 0042890C  38 81 00 14 */	addi r4, r1, 0x14
/* 8042B9D0 00428910  4B FF A6 75 */	bl drawSphere__8GraphicsFfP7Matrixf
/* 8042B9D4 00428914  48 00 00 A0 */	b lbl_8042BA74
lbl_8042B9D8:
/* 8042B9D8 00428918  C0 22 22 78 */	lfs f1, lbl_805205D8@sda21(r2)
/* 8042B9DC 0042891C  7F E3 FB 78 */	mr r3, r31
/* 8042B9E0 00428920  38 81 00 14 */	addi r4, r1, 0x14
/* 8042B9E4 00428924  4B FF A6 61 */	bl drawSphere__8GraphicsFfP7Matrixf
/* 8042B9E8 00428928  C0 22 22 78 */	lfs f1, lbl_805205D8@sda21(r2)
/* 8042B9EC 0042892C  7F E3 FB 78 */	mr r3, r31
/* 8042B9F0 00428930  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8042B9F4 00428934  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8042B9F8 00428938  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 8042B9FC 0042893C  38 A1 00 08 */	addi r5, r1, 8
/* 8042BA00 00428940  EC 21 00 32 */	fmuls f1, f1, f0
/* 8042BA04 00428944  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 8042BA08 00428948  C0 BE 00 30 */	lfs f5, 0x30(r30)
/* 8042BA0C 0042894C  38 C0 00 10 */	li r6, 0x10
/* 8042BA10 00428950  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8042BA14 00428954  EC A5 00 72 */	fmuls f5, f5, f1
/* 8042BA18 00428958  EC 63 00 72 */	fmuls f3, f3, f1
/* 8042BA1C 0042895C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8042BA20 00428960  EC 84 00 72 */	fmuls f4, f4, f1
/* 8042BA24 00428964  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8042BA28 00428968  EC 42 28 2A */	fadds f2, f2, f5
/* 8042BA2C 0042896C  EC 00 18 2A */	fadds f0, f0, f3
/* 8042BA30 00428970  EC 21 20 2A */	fadds f1, f1, f4
/* 8042BA34 00428974  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8042BA38 00428978  D0 01 00 08 */	stfs f0, 8(r1)
/* 8042BA3C 0042897C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8042BA40 00428980  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8042BA44 00428984  4B FF B2 75 */	bl "drawCone__8GraphicsFR10Vector3<f>R10Vector3<f>fi"
/* 8042BA48 00428988  48 00 00 2C */	b lbl_8042BA74
lbl_8042BA4C:
/* 8042BA4C 0042898C  C0 22 22 78 */	lfs f1, lbl_805205D8@sda21(r2)
/* 8042BA50 00428990  7F E3 FB 78 */	mr r3, r31
/* 8042BA54 00428994  38 81 00 14 */	addi r4, r1, 0x14
/* 8042BA58 00428998  4B FF A5 ED */	bl drawSphere__8GraphicsFfP7Matrixf
/* 8042BA5C 0042899C  C0 22 22 78 */	lfs f1, lbl_805205D8@sda21(r2)
/* 8042BA60 004289A0  7F E3 FB 78 */	mr r3, r31
/* 8042BA64 004289A4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8042BA68 004289A8  38 81 00 14 */	addi r4, r1, 0x14
/* 8042BA6C 004289AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8042BA70 004289B0  4B FF A5 D5 */	bl drawSphere__8GraphicsFfP7Matrixf
lbl_8042BA74:
/* 8042BA74 004289B4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8042BA78 004289B8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8042BA7C 004289BC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8042BA80 004289C0  7C 08 03 A6 */	mtlr r0
/* 8042BA84 004289C4  38 21 00 50 */	addi r1, r1, 0x50
/* 8042BA88 004289C8  4E 80 00 20 */	blr 

.global __ct__8LightMgrFPc
__ct__8LightMgrFPc:
/* 8042BA8C 004289CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042BA90 004289D0  7C 08 02 A6 */	mflr r0
/* 8042BA94 004289D4  3C A0 80 4F */	lis r5, __vt__5CNode@ha
/* 8042BA98 004289D8  3C E0 80 4F */	lis r7, __vt__8LightMgr@ha
/* 8042BA9C 004289DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042BAA0 004289E0  39 65 B5 28 */	addi r11, r5, __vt__5CNode@l
/* 8042BAA4 004289E4  3C C0 80 4A */	lis r6, lbl_80499EF8@ha
/* 8042BAA8 004289E8  39 40 00 00 */	li r10, 0
/* 8042BAAC 004289EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042BAB0 004289F0  39 06 9E F8 */	addi r8, r6, lbl_80499EF8@l
/* 8042BAB4 004289F4  7C 7F 1B 78 */	mr r31, r3
/* 8042BAB8 004289F8  39 27 BE 94 */	addi r9, r7, __vt__8LightMgr@l
/* 8042BABC 004289FC  91 63 00 00 */	stw r11, 0(r3)
/* 8042BAC0 00428A00  3C A0 80 4B */	lis r5, __vt__15AmbientLightObj@ha
/* 8042BAC4 00428A04  38 E5 C4 60 */	addi r7, r5, __vt__15AmbientLightObj@l
/* 8042BAC8 00428A08  38 C0 00 80 */	li r6, 0x80
/* 8042BACC 00428A0C  91 43 00 10 */	stw r10, 0x10(r3)
/* 8042BAD0 00428A10  38 A0 00 FF */	li r5, 0xff
/* 8042BAD4 00428A14  38 02 22 7C */	addi r0, r2, lbl_805205DC@sda21
/* 8042BAD8 00428A18  39 9F 00 18 */	addi r12, r31, 0x18
/* 8042BADC 00428A1C  91 43 00 0C */	stw r10, 0xc(r3)
/* 8042BAE0 00428A20  91 43 00 08 */	stw r10, 8(r3)
/* 8042BAE4 00428A24  91 43 00 04 */	stw r10, 4(r3)
/* 8042BAE8 00428A28  90 83 00 14 */	stw r4, 0x14(r3)
/* 8042BAEC 00428A2C  7D 84 63 78 */	mr r4, r12
/* 8042BAF0 00428A30  91 23 00 00 */	stw r9, 0(r3)
/* 8042BAF4 00428A34  91 63 00 18 */	stw r11, 0x18(r3)
/* 8042BAF8 00428A38  91 43 00 28 */	stw r10, 0x28(r3)
/* 8042BAFC 00428A3C  91 43 00 24 */	stw r10, 0x24(r3)
/* 8042BB00 00428A40  91 43 00 20 */	stw r10, 0x20(r3)
/* 8042BB04 00428A44  91 43 00 1C */	stw r10, 0x1c(r3)
/* 8042BB08 00428A48  91 03 00 2C */	stw r8, 0x2c(r3)
/* 8042BB0C 00428A4C  90 E3 00 18 */	stw r7, 0x18(r3)
/* 8042BB10 00428A50  98 C3 00 30 */	stb r6, 0x30(r3)
/* 8042BB14 00428A54  98 C3 00 31 */	stb r6, 0x31(r3)
/* 8042BB18 00428A58  98 C3 00 32 */	stb r6, 0x32(r3)
/* 8042BB1C 00428A5C  98 A3 00 33 */	stb r5, 0x33(r3)
/* 8042BB20 00428A60  91 63 00 34 */	stw r11, 0x34(r3)
/* 8042BB24 00428A64  91 43 00 44 */	stw r10, 0x44(r3)
/* 8042BB28 00428A68  91 43 00 40 */	stw r10, 0x40(r3)
/* 8042BB2C 00428A6C  91 43 00 3C */	stw r10, 0x3c(r3)
/* 8042BB30 00428A70  91 43 00 38 */	stw r10, 0x38(r3)
/* 8042BB34 00428A74  90 03 00 48 */	stw r0, 0x48(r3)
/* 8042BB38 00428A78  91 43 00 4C */	stw r10, 0x4c(r3)
/* 8042BB3C 00428A7C  4B FE 58 CD */	bl add__5CNodeFP5CNode
/* 8042BB40 00428A80  7F E3 FB 78 */	mr r3, r31
/* 8042BB44 00428A84  38 9F 00 34 */	addi r4, r31, 0x34
/* 8042BB48 00428A88  4B FE 58 C1 */	bl add__5CNodeFP5CNode
/* 8042BB4C 00428A8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042BB50 00428A90  7F E3 FB 78 */	mr r3, r31
/* 8042BB54 00428A94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042BB58 00428A98  7C 08 03 A6 */	mtlr r0
/* 8042BB5C 00428A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042BB60 00428AA0  4E 80 00 20 */	blr 

.global registLightObj__8LightMgrFP8LightObj
registLightObj__8LightMgrFP8LightObj:
/* 8042BB64 00428AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042BB68 00428AA8  7C 08 02 A6 */	mflr r0
/* 8042BB6C 00428AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042BB70 00428AB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042BB74 00428AB4  7C 7F 1B 78 */	mr r31, r3
/* 8042BB78 00428AB8  38 7F 00 34 */	addi r3, r31, 0x34
/* 8042BB7C 00428ABC  4B FE 58 8D */	bl add__5CNodeFP5CNode
/* 8042BB80 00428AC0  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8042BB84 00428AC4  38 03 00 01 */	addi r0, r3, 1
/* 8042BB88 00428AC8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8042BB8C 00428ACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042BB90 00428AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042BB94 00428AD4  7C 08 03 A6 */	mtlr r0
/* 8042BB98 00428AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8042BB9C 00428ADC  4E 80 00 20 */	blr 

.global set__8LightMgrFR8Graphics
set__8LightMgrFR8Graphics:
/* 8042BBA0 00428AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042BBA4 00428AE4  7C 08 02 A6 */	mflr r0
/* 8042BBA8 00428AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042BBAC 00428AEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042BBB0 00428AF0  7C 7F 1B 78 */	mr r31, r3
/* 8042BBB4 00428AF4  80 64 02 5C */	lwz r3, 0x25c(r4)
/* 8042BBB8 00428AF8  38 80 00 01 */	li r4, 1
/* 8042BBBC 00428AFC  4B FF 95 A1 */	bl getMatrix__8ViewportFb
/* 8042BBC0 00428B00  81 9F 00 00 */	lwz r12, 0(r31)
/* 8042BBC4 00428B04  7C 60 1B 78 */	mr r0, r3
/* 8042BBC8 00428B08  7F E3 FB 78 */	mr r3, r31
/* 8042BBCC 00428B0C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8042BBD0 00428B10  7C 04 03 78 */	mr r4, r0
/* 8042BBD4 00428B14  7D 89 03 A6 */	mtctr r12
/* 8042BBD8 00428B18  4E 80 04 21 */	bctrl 
/* 8042BBDC 00428B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042BBE0 00428B20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042BBE4 00428B24  7C 08 03 A6 */	mtlr r0
/* 8042BBE8 00428B28  38 21 00 10 */	addi r1, r1, 0x10
/* 8042BBEC 00428B2C  4E 80 00 20 */	blr 

.global set__8LightMgrFR7Matrixf
set__8LightMgrFR7Matrixf:
/* 8042BBF0 00428B30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042BBF4 00428B34  7C 08 02 A6 */	mflr r0
/* 8042BBF8 00428B38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042BBFC 00428B3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042BC00 00428B40  7C 7F 1B 78 */	mr r31, r3
/* 8042BC04 00428B44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8042BC08 00428B48  7C 9E 23 78 */	mr r30, r4
/* 8042BC0C 00428B4C  38 81 00 0C */	addi r4, r1, 0xc
/* 8042BC10 00428B50  88 E3 00 30 */	lbz r7, 0x30(r3)
/* 8042BC14 00428B54  88 C3 00 31 */	lbz r6, 0x31(r3)
/* 8042BC18 00428B58  38 60 00 04 */	li r3, 4
/* 8042BC1C 00428B5C  88 BF 00 32 */	lbz r5, 0x32(r31)
/* 8042BC20 00428B60  88 1F 00 33 */	lbz r0, 0x33(r31)
/* 8042BC24 00428B64  98 E1 00 08 */	stb r7, 8(r1)
/* 8042BC28 00428B68  98 C1 00 09 */	stb r6, 9(r1)
/* 8042BC2C 00428B6C  98 A1 00 0A */	stb r5, 0xa(r1)
/* 8042BC30 00428B70  98 01 00 0B */	stb r0, 0xb(r1)
/* 8042BC34 00428B74  80 01 00 08 */	lwz r0, 8(r1)
/* 8042BC38 00428B78  90 01 00 0C */	stw r0, 0xc(r1)
/* 8042BC3C 00428B7C  4B CB B0 49 */	bl GXSetChanAmbColor
/* 8042BC40 00428B80  83 FF 00 44 */	lwz r31, 0x44(r31)
/* 8042BC44 00428B84  48 00 00 20 */	b lbl_8042BC64
lbl_8042BC48:
/* 8042BC48 00428B88  7F E3 FB 78 */	mr r3, r31
/* 8042BC4C 00428B8C  7F C4 F3 78 */	mr r4, r30
/* 8042BC50 00428B90  81 9F 00 00 */	lwz r12, 0(r31)
/* 8042BC54 00428B94  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8042BC58 00428B98  7D 89 03 A6 */	mtctr r12
/* 8042BC5C 00428B9C  4E 80 04 21 */	bctrl 
/* 8042BC60 00428BA0  83 FF 00 04 */	lwz r31, 4(r31)
lbl_8042BC64:
/* 8042BC64 00428BA4  28 1F 00 00 */	cmplwi r31, 0
/* 8042BC68 00428BA8  40 82 FF E0 */	bne lbl_8042BC48
/* 8042BC6C 00428BAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042BC70 00428BB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042BC74 00428BB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8042BC78 00428BB8  7C 08 03 A6 */	mtlr r0
/* 8042BC7C 00428BBC  38 21 00 20 */	addi r1, r1, 0x20
/* 8042BC80 00428BC0  4E 80 00 20 */	blr 

.global drawDebugInfo__8LightMgrFR8Graphics
drawDebugInfo__8LightMgrFR8Graphics:
/* 8042BC84 00428BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042BC88 00428BC8  7C 08 02 A6 */	mflr r0
/* 8042BC8C 00428BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042BC90 00428BD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042BC94 00428BD4  93 C1 00 08 */	stw r30, 8(r1)
/* 8042BC98 00428BD8  7C 9E 23 78 */	mr r30, r4
/* 8042BC9C 00428BDC  83 E3 00 44 */	lwz r31, 0x44(r3)
/* 8042BCA0 00428BE0  48 00 00 20 */	b lbl_8042BCC0
lbl_8042BCA4:
/* 8042BCA4 00428BE4  7F E3 FB 78 */	mr r3, r31
/* 8042BCA8 00428BE8  7F C4 F3 78 */	mr r4, r30
/* 8042BCAC 00428BEC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8042BCB0 00428BF0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8042BCB4 00428BF4  7D 89 03 A6 */	mtctr r12
/* 8042BCB8 00428BF8  4E 80 04 21 */	bctrl 
/* 8042BCBC 00428BFC  83 FF 00 04 */	lwz r31, 4(r31)
lbl_8042BCC0:
/* 8042BCC0 00428C00  28 1F 00 00 */	cmplwi r31, 0
/* 8042BCC4 00428C04  40 82 FF E0 */	bne lbl_8042BCA4
/* 8042BCC8 00428C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042BCCC 00428C0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042BCD0 00428C10  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042BCD4 00428C14  7C 08 03 A6 */	mtlr r0
/* 8042BCD8 00428C18  38 21 00 10 */	addi r1, r1, 0x10
/* 8042BCDC 00428C1C  4E 80 00 20 */	blr 

.global update__8LightMgrFv
update__8LightMgrFv:
/* 8042BCE0 00428C20  4E 80 00 20 */	blr 

__sinit_light_cpp: # static initializer
/* 8042BCE4 00428C24  3C 80 80 51 */	lis r4, __float_nan@ha
/* 8042BCE8 00428C28  38 00 FF FF */	li r0, -1
/* 8042BCEC 00428C2C  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 8042BCF0 00428C30  3C 60 80 4F */	lis r3, govNAN___Q24Game5P2JST@ha
/* 8042BCF4 00428C34  90 0D 9B 38 */	stw r0, gu32NAN___Q24Game5P2JST@sda21(r13)
/* 8042BCF8 00428C38  D4 03 BE 88 */	stfsu f0, govNAN___Q24Game5P2JST@l(r3)
/* 8042BCFC 00428C3C  D0 0D 9B 3C */	stfs f0, gfNAN___Q24Game5P2JST@sda21(r13)
/* 8042BD00 00428C40  D0 03 00 04 */	stfs f0, 4(r3)
/* 8042BD04 00428C44  D0 03 00 08 */	stfs f0, 8(r3)
/* 8042BD08 00428C48  4E 80 00 20 */	blr 
