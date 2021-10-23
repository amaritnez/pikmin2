.include "macros.inc"
.section .sbss # 0x80514D80 - 0x80516360
.balign 0x8
.global sProbes
sProbes:
	.skip 0x8

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 0x8
.global lbl_80516E68
lbl_80516E68:
	.4byte 0x426FC28F
.global lbl_80516E6C
lbl_80516E6C:
	.4byte 0x3F75C28F
.global lbl_80516E70
lbl_80516E70:
	.float 0.04
	.4byte 0x00000000
.global lbl_80516E78
lbl_80516E78:
	.4byte 0x43300000
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global probeStart__9JASKernelFlPc
probeStart__9JASKernelFlPc:
/* 800A74D4 000A4414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A74D8 000A4418  7C 08 02 A6 */	mflr r0
/* 800A74DC 000A441C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A74E0 000A4420  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A74E4 000A4424  7C 9F 23 78 */	mr r31, r4
/* 800A74E8 000A4428  93 C1 00 08 */	stw r30, 8(r1)
/* 800A74EC 000A442C  80 AD 8A C8 */	lwz r5, sProbes@sda21(r13)
/* 800A74F0 000A4430  28 05 00 00 */	cmplwi r5, 0
/* 800A74F4 000A4434  41 82 00 28 */	beq lbl_800A751C
/* 800A74F8 000A4438  1C 03 01 AC */	mulli r0, r3, 0x1ac
/* 800A74FC 000A443C  7F C5 02 14 */	add r30, r5, r0
/* 800A7500 000A4440  48 04 77 39 */	bl OSDisableInterrupts
/* 800A7504 000A4444  93 FE 00 00 */	stw r31, 0(r30)
/* 800A7508 000A4448  7C 7F 1B 78 */	mr r31, r3
/* 800A750C 000A444C  48 04 B6 85 */	bl OSGetTime
/* 800A7510 000A4450  90 9E 00 04 */	stw r4, 4(r30)
/* 800A7514 000A4454  7F E3 FB 78 */	mr r3, r31
/* 800A7518 000A4458  48 04 77 49 */	bl OSRestoreInterrupts
lbl_800A751C:
/* 800A751C 000A445C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A7520 000A4460  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A7524 000A4464  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A7528 000A4468  7C 08 03 A6 */	mtlr r0
/* 800A752C 000A446C  38 21 00 10 */	addi r1, r1, 0x10
/* 800A7530 000A4470  4E 80 00 20 */	blr 

.global probeFinish__9JASKernelFl
probeFinish__9JASKernelFl:
/* 800A7534 000A4474  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A7538 000A4478  7C 08 02 A6 */	mflr r0
/* 800A753C 000A447C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A7540 000A4480  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A7544 000A4484  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A7548 000A4488  80 8D 8A C8 */	lwz r4, sProbes@sda21(r13)
/* 800A754C 000A448C  28 04 00 00 */	cmplwi r4, 0
/* 800A7550 000A4490  41 82 01 08 */	beq lbl_800A7658
/* 800A7554 000A4494  1C 03 01 AC */	mulli r0, r3, 0x1ac
/* 800A7558 000A4498  7F E4 02 14 */	add r31, r4, r0
/* 800A755C 000A449C  48 04 76 DD */	bl OSDisableInterrupts
/* 800A7560 000A44A0  7C 7E 1B 78 */	mr r30, r3
/* 800A7564 000A44A4  48 04 B6 2D */	bl OSGetTime
/* 800A7568 000A44A8  80 BF 00 04 */	lwz r5, 4(r31)
/* 800A756C 000A44AC  3C 00 43 30 */	lis r0, 0x4330
/* 800A7570 000A44B0  90 01 00 08 */	stw r0, 8(r1)
/* 800A7574 000A44B4  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 800A7578 000A44B8  7C 85 20 50 */	subf r4, r5, r4
/* 800A757C 000A44BC  C8 62 8B 18 */	lfd f3, lbl_80516E78@sda21(r2)
/* 800A7580 000A44C0  90 81 00 0C */	stw r4, 0xc(r1)
/* 800A7584 000A44C4  C0 02 8B 08 */	lfs f0, lbl_80516E68@sda21(r2)
/* 800A7588 000A44C8  C8 21 00 08 */	lfd f1, 8(r1)
/* 800A758C 000A44CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 800A7590 000A44D0  EC 21 18 28 */	fsubs f1, f1, f3
/* 800A7594 000A44D4  D0 3F 00 08 */	stfs f1, 8(r31)
/* 800A7598 000A44D8  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 800A759C 000A44DC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 800A75A0 000A44E0  54 00 F0 BE */	srwi r0, r0, 2
/* 800A75A4 000A44E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A75A8 000A44E8  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800A75AC 000A44EC  EC 21 18 28 */	fsubs f1, f1, f3
/* 800A75B0 000A44F0  EC 01 00 24 */	fdivs f0, f1, f0
/* 800A75B4 000A44F4  EC 02 00 24 */	fdivs f0, f2, f0
/* 800A75B8 000A44F8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 800A75BC 000A44FC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 800A75C0 000A4500  C0 3F 00 08 */	lfs f1, 8(r31)
/* 800A75C4 000A4504  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800A75C8 000A4508  40 80 00 14 */	bge lbl_800A75DC
/* 800A75CC 000A450C  80 1F 01 A8 */	lwz r0, 0x1a8(r31)
/* 800A75D0 000A4510  28 00 00 64 */	cmplwi r0, 0x64
/* 800A75D4 000A4514  40 81 00 08 */	ble lbl_800A75DC
/* 800A75D8 000A4518  D0 3F 00 10 */	stfs f1, 0x10(r31)
lbl_800A75DC:
/* 800A75DC 000A451C  C0 22 8B 10 */	lfs f1, lbl_80516E70@sda21(r2)
/* 800A75E0 000A4520  3C 60 51 EC */	lis r3, 0x51EB851F@ha
/* 800A75E4 000A4524  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800A75E8 000A4528  38 03 85 1F */	addi r0, r3, 0x51EB851F@l
/* 800A75EC 000A452C  C0 42 8B 0C */	lfs f2, lbl_80516E6C@sda21(r2)
/* 800A75F0 000A4530  7F C3 F3 78 */	mr r3, r30
/* 800A75F4 000A4534  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A75F8 000A4538  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 800A75FC 000A453C  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 800A7600 000A4540  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 800A7604 000A4544  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 800A7608 000A4548  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 800A760C 000A454C  7C 00 20 16 */	mulhwu r0, r0, r4
/* 800A7610 000A4550  54 00 D9 7E */	srwi r0, r0, 5
/* 800A7614 000A4554  1C 00 00 64 */	mulli r0, r0, 0x64
/* 800A7618 000A4558  7C 00 20 50 */	subf r0, r0, r4
/* 800A761C 000A455C  54 00 10 3A */	slwi r0, r0, 2
/* 800A7620 000A4560  7C 9F 02 14 */	add r4, r31, r0
/* 800A7624 000A4564  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 800A7628 000A4568  EC 01 00 28 */	fsubs f0, f1, f0
/* 800A762C 000A456C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 800A7630 000A4570  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800A7634 000A4574  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 800A7638 000A4578  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 800A763C 000A457C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800A7640 000A4580  EC 01 00 2A */	fadds f0, f1, f0
/* 800A7644 000A4584  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 800A7648 000A4588  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 800A764C 000A458C  38 04 00 01 */	addi r0, r4, 1
/* 800A7650 000A4590  90 1F 01 A8 */	stw r0, 0x1a8(r31)
/* 800A7654 000A4594  48 04 76 0D */	bl OSRestoreInterrupts
lbl_800A7658:
/* 800A7658 000A4598  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A765C 000A459C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A7660 000A45A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A7664 000A45A4  7C 08 03 A6 */	mtlr r0
/* 800A7668 000A45A8  38 21 00 20 */	addi r1, r1, 0x20
/* 800A766C 000A45AC  4E 80 00 20 */	blr 
