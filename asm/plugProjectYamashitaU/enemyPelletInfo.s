.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 0x8
.global lbl_8047C1A8
lbl_8047C1A8:
	.asciz "\t\t# %s \r\n"
	.skip 2
	.asciz "Pellet color"
	.skip 3
	.asciz "Pellet size"
	.asciz "Pellet Min"
	.skip 1
	.asciz "Pellet Max"
	.skip 1

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 0x8
.global __vt__Q24Game15EnemyPelletInfo
__vt__Q24Game15EnemyPelletInfo:
	.4byte 0
	.4byte 0
	.4byte write__Q24Game15EnemyPelletInfoFR6Stream
	.4byte read__Q24Game15EnemyPelletInfoFR6Stream

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 0x8
.global lbl_80518120
lbl_80518120:
	.float 0.0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q24Game15EnemyPelletInfoFv
__ct__Q24Game15EnemyPelletInfoFv:
/* 8012E34C 0012B28C  3C 80 80 4B */	lis r4, __vt__Q24Game15EnemyPelletInfo@ha
/* 8012E350 0012B290  38 A0 00 03 */	li r5, 3
/* 8012E354 0012B294  38 04 F8 58 */	addi r0, r4, __vt__Q24Game15EnemyPelletInfo@l
/* 8012E358 0012B298  38 80 00 01 */	li r4, 1
/* 8012E35C 0012B29C  90 03 00 08 */	stw r0, 8(r3)
/* 8012E360 0012B2A0  38 00 00 08 */	li r0, 8
/* 8012E364 0012B2A4  C0 02 9D C0 */	lfs f0, lbl_80518120@sda21(r2)
/* 8012E368 0012B2A8  98 A3 00 00 */	stb r5, 0(r3)
/* 8012E36C 0012B2AC  98 83 00 01 */	stb r4, 1(r3)
/* 8012E370 0012B2B0  98 83 00 02 */	stb r4, 2(r3)
/* 8012E374 0012B2B4  98 03 00 03 */	stb r0, 3(r3)
/* 8012E378 0012B2B8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8012E37C 0012B2BC  4E 80 00 20 */	blr 

.global write__Q24Game15EnemyPelletInfoFR6Stream
write__Q24Game15EnemyPelletInfoFR6Stream:
/* 8012E380 0012B2C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012E384 0012B2C4  7C 08 02 A6 */	mflr r0
/* 8012E388 0012B2C8  3C A0 80 48 */	lis r5, lbl_8047C1A8@ha
/* 8012E38C 0012B2CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012E390 0012B2D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8012E394 0012B2D4  3B E5 C1 A8 */	addi r31, r5, lbl_8047C1A8@l
/* 8012E398 0012B2D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8012E39C 0012B2DC  7C 9E 23 78 */	mr r30, r4
/* 8012E3A0 0012B2E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8012E3A4 0012B2E4  7C 7D 1B 78 */	mr r29, r3
/* 8012E3A8 0012B2E8  7F C3 F3 78 */	mr r3, r30
/* 8012E3AC 0012B2EC  80 84 04 14 */	lwz r4, 0x414(r4)
/* 8012E3B0 0012B2F0  48 2E 60 85 */	bl textWriteTab__6StreamFi
/* 8012E3B4 0012B2F4  88 9D 00 00 */	lbz r4, 0(r29)
/* 8012E3B8 0012B2F8  7F C3 F3 78 */	mr r3, r30
/* 8012E3BC 0012B2FC  48 2E 72 B5 */	bl writeByte__6StreamFUc
/* 8012E3C0 0012B300  7F C3 F3 78 */	mr r3, r30
/* 8012E3C4 0012B304  38 9F 00 00 */	addi r4, r31, 0
/* 8012E3C8 0012B308  38 BF 00 0C */	addi r5, r31, 0xc
/* 8012E3CC 0012B30C  4C C6 31 82 */	crclr 6
/* 8012E3D0 0012B310  48 2E 5E 0D */	bl textWriteText__6StreamFPce
/* 8012E3D4 0012B314  80 9E 04 14 */	lwz r4, 0x414(r30)
/* 8012E3D8 0012B318  7F C3 F3 78 */	mr r3, r30
/* 8012E3DC 0012B31C  48 2E 60 59 */	bl textWriteTab__6StreamFi
/* 8012E3E0 0012B320  88 9D 00 01 */	lbz r4, 1(r29)
/* 8012E3E4 0012B324  7F C3 F3 78 */	mr r3, r30
/* 8012E3E8 0012B328  48 2E 72 89 */	bl writeByte__6StreamFUc
/* 8012E3EC 0012B32C  7F C3 F3 78 */	mr r3, r30
/* 8012E3F0 0012B330  38 9F 00 00 */	addi r4, r31, 0
/* 8012E3F4 0012B334  38 BF 00 1C */	addi r5, r31, 0x1c
/* 8012E3F8 0012B338  4C C6 31 82 */	crclr 6
/* 8012E3FC 0012B33C  48 2E 5D E1 */	bl textWriteText__6StreamFPce
/* 8012E400 0012B340  80 9E 04 14 */	lwz r4, 0x414(r30)
/* 8012E404 0012B344  7F C3 F3 78 */	mr r3, r30
/* 8012E408 0012B348  48 2E 60 2D */	bl textWriteTab__6StreamFi
/* 8012E40C 0012B34C  88 9D 00 02 */	lbz r4, 2(r29)
/* 8012E410 0012B350  7F C3 F3 78 */	mr r3, r30
/* 8012E414 0012B354  48 2E 72 5D */	bl writeByte__6StreamFUc
/* 8012E418 0012B358  7F C3 F3 78 */	mr r3, r30
/* 8012E41C 0012B35C  38 9F 00 00 */	addi r4, r31, 0
/* 8012E420 0012B360  38 BF 00 28 */	addi r5, r31, 0x28
/* 8012E424 0012B364  4C C6 31 82 */	crclr 6
/* 8012E428 0012B368  48 2E 5D B5 */	bl textWriteText__6StreamFPce
/* 8012E42C 0012B36C  80 9E 04 14 */	lwz r4, 0x414(r30)
/* 8012E430 0012B370  7F C3 F3 78 */	mr r3, r30
/* 8012E434 0012B374  48 2E 60 01 */	bl textWriteTab__6StreamFi
/* 8012E438 0012B378  88 9D 00 03 */	lbz r4, 3(r29)
/* 8012E43C 0012B37C  7F C3 F3 78 */	mr r3, r30
/* 8012E440 0012B380  48 2E 72 31 */	bl writeByte__6StreamFUc
/* 8012E444 0012B384  7F C3 F3 78 */	mr r3, r30
/* 8012E448 0012B388  38 9F 00 00 */	addi r4, r31, 0
/* 8012E44C 0012B38C  38 BF 00 34 */	addi r5, r31, 0x34
/* 8012E450 0012B390  4C C6 31 82 */	crclr 6
/* 8012E454 0012B394  48 2E 5D 89 */	bl textWriteText__6StreamFPce
/* 8012E458 0012B398  80 9E 04 14 */	lwz r4, 0x414(r30)
/* 8012E45C 0012B39C  7F C3 F3 78 */	mr r3, r30
/* 8012E460 0012B3A0  48 2E 5F D5 */	bl textWriteTab__6StreamFi
/* 8012E464 0012B3A4  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8012E468 0012B3A8  7F C3 F3 78 */	mr r3, r30
/* 8012E46C 0012B3AC  48 2E 73 DD */	bl writeFloat__6StreamFf
/* 8012E470 0012B3B0  7F C3 F3 78 */	mr r3, r30
/* 8012E474 0012B3B4  38 9F 00 00 */	addi r4, r31, 0
/* 8012E478 0012B3B8  38 BF 00 28 */	addi r5, r31, 0x28
/* 8012E47C 0012B3BC  4C C6 31 82 */	crclr 6
/* 8012E480 0012B3C0  48 2E 5D 5D */	bl textWriteText__6StreamFPce
/* 8012E484 0012B3C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012E488 0012B3C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8012E48C 0012B3CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8012E490 0012B3D0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8012E494 0012B3D4  7C 08 03 A6 */	mtlr r0
/* 8012E498 0012B3D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8012E49C 0012B3DC  4E 80 00 20 */	blr 

.global read__Q24Game15EnemyPelletInfoFR6Stream
read__Q24Game15EnemyPelletInfoFR6Stream:
/* 8012E4A0 0012B3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012E4A4 0012B3E4  7C 08 02 A6 */	mflr r0
/* 8012E4A8 0012B3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012E4AC 0012B3EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012E4B0 0012B3F0  7C 9F 23 78 */	mr r31, r4
/* 8012E4B4 0012B3F4  93 C1 00 08 */	stw r30, 8(r1)
/* 8012E4B8 0012B3F8  7C 7E 1B 78 */	mr r30, r3
/* 8012E4BC 0012B3FC  7F E3 FB 78 */	mr r3, r31
/* 8012E4C0 0012B400  48 2E 5F DD */	bl readByte__6StreamFv
/* 8012E4C4 0012B404  98 7E 00 00 */	stb r3, 0(r30)
/* 8012E4C8 0012B408  7F E3 FB 78 */	mr r3, r31
/* 8012E4CC 0012B40C  48 2E 5F D1 */	bl readByte__6StreamFv
/* 8012E4D0 0012B410  98 7E 00 01 */	stb r3, 1(r30)
/* 8012E4D4 0012B414  7F E3 FB 78 */	mr r3, r31
/* 8012E4D8 0012B418  48 2E 5F C5 */	bl readByte__6StreamFv
/* 8012E4DC 0012B41C  98 7E 00 02 */	stb r3, 2(r30)
/* 8012E4E0 0012B420  7F E3 FB 78 */	mr r3, r31
/* 8012E4E4 0012B424  48 2E 5F B9 */	bl readByte__6StreamFv
/* 8012E4E8 0012B428  98 7E 00 03 */	stb r3, 3(r30)
/* 8012E4EC 0012B42C  7F E3 FB 78 */	mr r3, r31
/* 8012E4F0 0012B430  48 2E 68 BD */	bl readFloat__6StreamFv
/* 8012E4F4 0012B434  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8012E4F8 0012B438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012E4FC 0012B43C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012E500 0012B440  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012E504 0012B444  7C 08 03 A6 */	mtlr r0
/* 8012E508 0012B448  38 21 00 10 */	addi r1, r1, 0x10
/* 8012E50C 0012B44C  4E 80 00 20 */	blr 
