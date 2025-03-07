.include "macros.inc"
.section .bss  # 0x804EFC20 - 0x8051467C
.lcomm sMutex, 0x18, 4

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
sBuffer:
	.skip 0x4
sLineMax:
	.skip 0x4
sLineCount:
	.skip 0x4
sTop:
	.skip 0x4

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global JASReport__FPCce
JASReport__FPCce:
/* 800A786C 000A47AC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800A7870 000A47B0  7C 08 02 A6 */	mflr r0
/* 800A7874 000A47B4  90 01 00 84 */	stw r0, 0x84(r1)
/* 800A7878 000A47B8  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 800A787C 000A47BC  7C 7F 1B 78 */	mr r31, r3
/* 800A7880 000A47C0  40 86 00 24 */	bne cr1, lbl_800A78A4
/* 800A7884 000A47C4  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 800A7888 000A47C8  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 800A788C 000A47CC  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 800A7890 000A47D0  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 800A7894 000A47D4  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 800A7898 000A47D8  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 800A789C 000A47DC  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 800A78A0 000A47E0  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_800A78A4:
/* 800A78A4 000A47E4  80 0D 8A D0 */	lwz r0, sBuffer@sda21(r13)
/* 800A78A8 000A47E8  90 61 00 08 */	stw r3, 8(r1)
/* 800A78AC 000A47EC  28 00 00 00 */	cmplwi r0, 0
/* 800A78B0 000A47F0  90 81 00 0C */	stw r4, 0xc(r1)
/* 800A78B4 000A47F4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800A78B8 000A47F8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 800A78BC 000A47FC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 800A78C0 000A4800  91 01 00 1C */	stw r8, 0x1c(r1)
/* 800A78C4 000A4804  91 21 00 20 */	stw r9, 0x20(r1)
/* 800A78C8 000A4808  91 41 00 24 */	stw r10, 0x24(r1)
/* 800A78CC 000A480C  41 82 00 88 */	beq lbl_800A7954
/* 800A78D0 000A4810  3C 60 80 4F */	lis r3, sMutex@ha
/* 800A78D4 000A4814  38 81 00 88 */	addi r4, r1, 0x88
/* 800A78D8 000A4818  38 63 07 50 */	addi r3, r3, sMutex@l
/* 800A78DC 000A481C  38 01 00 08 */	addi r0, r1, 8
/* 800A78E0 000A4820  3C A0 01 00 */	lis r5, 0x100
/* 800A78E4 000A4824  90 81 00 70 */	stw r4, 0x70(r1)
/* 800A78E8 000A4828  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 800A78EC 000A482C  90 01 00 74 */	stw r0, 0x74(r1)
/* 800A78F0 000A4830  90 61 00 68 */	stw r3, 0x68(r1)
/* 800A78F4 000A4834  48 04 82 75 */	bl OSLockMutex
/* 800A78F8 000A4838  80 0D 8A DC */	lwz r0, sTop@sda21(r13)
/* 800A78FC 000A483C  7F E5 FB 78 */	mr r5, r31
/* 800A7900 000A4840  80 6D 8A D0 */	lwz r3, sBuffer@sda21(r13)
/* 800A7904 000A4844  38 C1 00 6C */	addi r6, r1, 0x6c
/* 800A7908 000A4848  54 00 30 32 */	slwi r0, r0, 6
/* 800A790C 000A484C  38 80 00 40 */	li r4, 0x40
/* 800A7910 000A4850  7C 63 02 14 */	add r3, r3, r0
/* 800A7914 000A4854  48 01 FD 51 */	bl vsnprintf
/* 800A7918 000A4858  80 6D 8A DC */	lwz r3, sTop@sda21(r13)
/* 800A791C 000A485C  80 8D 8A D4 */	lwz r4, sLineMax@sda21(r13)
/* 800A7920 000A4860  38 03 00 01 */	addi r0, r3, 1
/* 800A7924 000A4864  7C 00 20 00 */	cmpw r0, r4
/* 800A7928 000A4868  90 0D 8A DC */	stw r0, sTop@sda21(r13)
/* 800A792C 000A486C  41 80 00 0C */	blt lbl_800A7938
/* 800A7930 000A4870  38 00 00 00 */	li r0, 0
/* 800A7934 000A4874  90 0D 8A DC */	stw r0, sTop@sda21(r13)
lbl_800A7938:
/* 800A7938 000A4878  80 6D 8A D8 */	lwz r3, sLineCount@sda21(r13)
/* 800A793C 000A487C  7C 03 20 00 */	cmpw r3, r4
/* 800A7940 000A4880  40 80 00 0C */	bge lbl_800A794C
/* 800A7944 000A4884  38 03 00 01 */	addi r0, r3, 1
/* 800A7948 000A4888  90 0D 8A D8 */	stw r0, sLineCount@sda21(r13)
lbl_800A794C:
/* 800A794C 000A488C  80 61 00 68 */	lwz r3, 0x68(r1)
/* 800A7950 000A4890  48 04 82 F5 */	bl OSUnlockMutex
lbl_800A7954:
/* 800A7954 000A4894  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800A7958 000A4898  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 800A795C 000A489C  7C 08 03 A6 */	mtlr r0
/* 800A7960 000A48A0  38 21 00 80 */	addi r1, r1, 0x80
/* 800A7964 000A48A4  4E 80 00 20 */	blr 
