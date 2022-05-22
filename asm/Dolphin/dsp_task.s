.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
lbl_804A79B8:
	.asciz "DSP is booting task: 0x%08X\n"
.balign 4
lbl_804A79D8:
	.asciz "__DSP_boot_task()  : IRAM MMEM ADDR: 0x%08X\n"
.balign 4
lbl_804A7A08:
	.asciz "__DSP_boot_task()  : IRAM DSP ADDR : 0x%08X\n"
.balign 4
lbl_804A7A38:
	.asciz "__DSP_boot_task()  : IRAM LENGTH   : 0x%08X\n"
.balign 4
lbl_804A7A68:
	.asciz "__DSP_boot_task()  : DRAM MMEM ADDR: 0x%08X\n"
.balign 4
lbl_804A7A98:
	.asciz "__DSP_boot_task()  : Start Vector  : 0x%08X\n"
.balign 4
lbl_804A7AC8:
	.asciz "__DSP_add_task() : Added task    : 0x%08X\n"

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.global __DSP_tmp_task
__DSP_tmp_task:
	.skip 0x4
.global __DSP_last_task
__DSP_last_task:
	.skip 0x4
.global __DSP_first_task
__DSP_first_task:
	.skip 0x4
.global __DSP_curr_task
__DSP_curr_task:
	.skip 0x4

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __DSP_exec_task
__DSP_exec_task:
/* 800DAE50 000D7D90  7C 08 02 A6 */	mflr r0
/* 800DAE54 000D7D94  90 01 00 04 */	stw r0, 4(r1)
/* 800DAE58 000D7D98  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800DAE5C 000D7D9C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800DAE60 000D7DA0  3B E4 00 00 */	addi r31, r4, 0
/* 800DAE64 000D7DA4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800DAE68 000D7DA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 800DAE6C 000D7DAC  41 82 00 44 */	beq lbl_800DAEB0
/* 800DAE70 000D7DB0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 800DAE74 000D7DB4  4B FF FE 75 */	bl DSPSendMailToDSP
lbl_800DAE78:
/* 800DAE78 000D7DB8  4B FF FE 39 */	bl DSPCheckMailToDSP
/* 800DAE7C 000D7DBC  28 03 00 00 */	cmplwi r3, 0
/* 800DAE80 000D7DC0  40 82 FF F8 */	bne lbl_800DAE78
/* 800DAE84 000D7DC4  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 800DAE88 000D7DC8  4B FF FE 61 */	bl DSPSendMailToDSP
lbl_800DAE8C:
/* 800DAE8C 000D7DCC  4B FF FE 25 */	bl DSPCheckMailToDSP
/* 800DAE90 000D7DD0  28 03 00 00 */	cmplwi r3, 0
/* 800DAE94 000D7DD4  40 82 FF F8 */	bne lbl_800DAE8C
/* 800DAE98 000D7DD8  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 800DAE9C 000D7DDC  4B FF FE 4D */	bl DSPSendMailToDSP
lbl_800DAEA0:
/* 800DAEA0 000D7DE0  4B FF FE 11 */	bl DSPCheckMailToDSP
/* 800DAEA4 000D7DE4  28 03 00 00 */	cmplwi r3, 0
/* 800DAEA8 000D7DE8  40 82 FF F8 */	bne lbl_800DAEA0
/* 800DAEAC 000D7DEC  48 00 00 40 */	b lbl_800DAEEC
lbl_800DAEB0:
/* 800DAEB0 000D7DF0  38 60 00 00 */	li r3, 0
/* 800DAEB4 000D7DF4  4B FF FE 35 */	bl DSPSendMailToDSP
lbl_800DAEB8:
/* 800DAEB8 000D7DF8  4B FF FD F9 */	bl DSPCheckMailToDSP
/* 800DAEBC 000D7DFC  28 03 00 00 */	cmplwi r3, 0
/* 800DAEC0 000D7E00  40 82 FF F8 */	bne lbl_800DAEB8
/* 800DAEC4 000D7E04  38 60 00 00 */	li r3, 0
/* 800DAEC8 000D7E08  4B FF FE 21 */	bl DSPSendMailToDSP
lbl_800DAECC:
/* 800DAECC 000D7E0C  4B FF FD E5 */	bl DSPCheckMailToDSP
/* 800DAED0 000D7E10  28 03 00 00 */	cmplwi r3, 0
/* 800DAED4 000D7E14  40 82 FF F8 */	bne lbl_800DAECC
/* 800DAED8 000D7E18  38 60 00 00 */	li r3, 0
/* 800DAEDC 000D7E1C  4B FF FE 0D */	bl DSPSendMailToDSP
lbl_800DAEE0:
/* 800DAEE0 000D7E20  4B FF FD D1 */	bl DSPCheckMailToDSP
/* 800DAEE4 000D7E24  28 03 00 00 */	cmplwi r3, 0
/* 800DAEE8 000D7E28  40 82 FF F8 */	bne lbl_800DAEE0
lbl_800DAEEC:
/* 800DAEEC 000D7E2C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 800DAEF0 000D7E30  4B FF FD F9 */	bl DSPSendMailToDSP
lbl_800DAEF4:
/* 800DAEF4 000D7E34  4B FF FD BD */	bl DSPCheckMailToDSP
/* 800DAEF8 000D7E38  28 03 00 00 */	cmplwi r3, 0
/* 800DAEFC 000D7E3C  40 82 FF F8 */	bne lbl_800DAEF4
/* 800DAF00 000D7E40  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 800DAF04 000D7E44  4B FF FD E5 */	bl DSPSendMailToDSP
lbl_800DAF08:
/* 800DAF08 000D7E48  4B FF FD A9 */	bl DSPCheckMailToDSP
/* 800DAF0C 000D7E4C  28 03 00 00 */	cmplwi r3, 0
/* 800DAF10 000D7E50  40 82 FF F8 */	bne lbl_800DAF08
/* 800DAF14 000D7E54  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800DAF18 000D7E58  4B FF FD D1 */	bl DSPSendMailToDSP
lbl_800DAF1C:
/* 800DAF1C 000D7E5C  4B FF FD 95 */	bl DSPCheckMailToDSP
/* 800DAF20 000D7E60  28 03 00 00 */	cmplwi r3, 0
/* 800DAF24 000D7E64  40 82 FF F8 */	bne lbl_800DAF1C
/* 800DAF28 000D7E68  80 1F 00 00 */	lwz r0, 0(r31)
/* 800DAF2C 000D7E6C  28 00 00 00 */	cmplwi r0, 0
/* 800DAF30 000D7E70  40 82 00 58 */	bne lbl_800DAF88
/* 800DAF34 000D7E74  A0 7F 00 24 */	lhz r3, 0x24(r31)
/* 800DAF38 000D7E78  4B FF FD B1 */	bl DSPSendMailToDSP
lbl_800DAF3C:
/* 800DAF3C 000D7E7C  4B FF FD 75 */	bl DSPCheckMailToDSP
/* 800DAF40 000D7E80  28 03 00 00 */	cmplwi r3, 0
/* 800DAF44 000D7E84  40 82 FF F8 */	bne lbl_800DAF3C
/* 800DAF48 000D7E88  38 60 00 00 */	li r3, 0
/* 800DAF4C 000D7E8C  4B FF FD 9D */	bl DSPSendMailToDSP
lbl_800DAF50:
/* 800DAF50 000D7E90  4B FF FD 61 */	bl DSPCheckMailToDSP
/* 800DAF54 000D7E94  28 03 00 00 */	cmplwi r3, 0
/* 800DAF58 000D7E98  40 82 FF F8 */	bne lbl_800DAF50
/* 800DAF5C 000D7E9C  38 60 00 00 */	li r3, 0
/* 800DAF60 000D7EA0  4B FF FD 89 */	bl DSPSendMailToDSP
lbl_800DAF64:
/* 800DAF64 000D7EA4  4B FF FD 4D */	bl DSPCheckMailToDSP
/* 800DAF68 000D7EA8  28 03 00 00 */	cmplwi r3, 0
/* 800DAF6C 000D7EAC  40 82 FF F8 */	bne lbl_800DAF64
/* 800DAF70 000D7EB0  38 60 00 00 */	li r3, 0
/* 800DAF74 000D7EB4  4B FF FD 75 */	bl DSPSendMailToDSP
lbl_800DAF78:
/* 800DAF78 000D7EB8  4B FF FD 39 */	bl DSPCheckMailToDSP
/* 800DAF7C 000D7EBC  28 03 00 00 */	cmplwi r3, 0
/* 800DAF80 000D7EC0  40 82 FF F8 */	bne lbl_800DAF78
/* 800DAF84 000D7EC4  48 00 00 54 */	b lbl_800DAFD8
lbl_800DAF88:
/* 800DAF88 000D7EC8  A0 7F 00 26 */	lhz r3, 0x26(r31)
/* 800DAF8C 000D7ECC  4B FF FD 5D */	bl DSPSendMailToDSP
lbl_800DAF90:
/* 800DAF90 000D7ED0  4B FF FD 21 */	bl DSPCheckMailToDSP
/* 800DAF94 000D7ED4  28 03 00 00 */	cmplwi r3, 0
/* 800DAF98 000D7ED8  40 82 FF F8 */	bne lbl_800DAF90
/* 800DAF9C 000D7EDC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 800DAFA0 000D7EE0  4B FF FD 49 */	bl DSPSendMailToDSP
lbl_800DAFA4:
/* 800DAFA4 000D7EE4  4B FF FD 0D */	bl DSPCheckMailToDSP
/* 800DAFA8 000D7EE8  28 03 00 00 */	cmplwi r3, 0
/* 800DAFAC 000D7EEC  40 82 FF F8 */	bne lbl_800DAFA4
/* 800DAFB0 000D7EF0  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 800DAFB4 000D7EF4  4B FF FD 35 */	bl DSPSendMailToDSP
lbl_800DAFB8:
/* 800DAFB8 000D7EF8  4B FF FC F9 */	bl DSPCheckMailToDSP
/* 800DAFBC 000D7EFC  28 03 00 00 */	cmplwi r3, 0
/* 800DAFC0 000D7F00  40 82 FF F8 */	bne lbl_800DAFB8
/* 800DAFC4 000D7F04  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 800DAFC8 000D7F08  4B FF FD 21 */	bl DSPSendMailToDSP
lbl_800DAFCC:
/* 800DAFCC 000D7F0C  4B FF FC E5 */	bl DSPCheckMailToDSP
/* 800DAFD0 000D7F10  28 03 00 00 */	cmplwi r3, 0
/* 800DAFD4 000D7F14  40 82 FF F8 */	bne lbl_800DAFCC
lbl_800DAFD8:
/* 800DAFD8 000D7F18  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800DAFDC 000D7F1C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800DAFE0 000D7F20  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800DAFE4 000D7F24  38 21 00 18 */	addi r1, r1, 0x18
/* 800DAFE8 000D7F28  7C 08 03 A6 */	mtlr r0
/* 800DAFEC 000D7F2C  4E 80 00 20 */	blr 

.global __DSP_boot_task
__DSP_boot_task:
/* 800DAFF0 000D7F30  7C 08 02 A6 */	mflr r0
/* 800DAFF4 000D7F34  3C 80 80 4A */	lis r4, lbl_804A79B8@ha
/* 800DAFF8 000D7F38  90 01 00 04 */	stw r0, 4(r1)
/* 800DAFFC 000D7F3C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800DB000 000D7F40  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800DB004 000D7F44  3B E4 79 B8 */	addi r31, r4, lbl_804A79B8@l
/* 800DB008 000D7F48  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800DB00C 000D7F4C  3B C3 00 00 */	addi r30, r3, 0
lbl_800DB010:
/* 800DB010 000D7F50  4B FF FC B1 */	bl DSPCheckMailFromDSP
/* 800DB014 000D7F54  28 03 00 00 */	cmplwi r3, 0
/* 800DB018 000D7F58  41 82 FF F8 */	beq lbl_800DB010
/* 800DB01C 000D7F5C  4B FF FC B5 */	bl DSPReadMailFromDSP
/* 800DB020 000D7F60  90 61 00 0C */	stw r3, 0xc(r1)
/* 800DB024 000D7F64  3C 60 80 F4 */	lis r3, 0x80F3A001@ha
/* 800DB028 000D7F68  38 63 A0 01 */	addi r3, r3, 0x80F3A001@l
/* 800DB02C 000D7F6C  4B FF FC BD */	bl DSPSendMailToDSP
lbl_800DB030:
/* 800DB030 000D7F70  4B FF FC 81 */	bl DSPCheckMailToDSP
/* 800DB034 000D7F74  28 03 00 00 */	cmplwi r3, 0
/* 800DB038 000D7F78  40 82 FF F8 */	bne lbl_800DB030
/* 800DB03C 000D7F7C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 800DB040 000D7F80  4B FF FC A9 */	bl DSPSendMailToDSP
lbl_800DB044:
/* 800DB044 000D7F84  4B FF FC 6D */	bl DSPCheckMailToDSP
/* 800DB048 000D7F88  28 03 00 00 */	cmplwi r3, 0
/* 800DB04C 000D7F8C  40 82 FF F8 */	bne lbl_800DB044
/* 800DB050 000D7F90  3C 60 80 F4 */	lis r3, 0x80F3C002@ha
/* 800DB054 000D7F94  38 63 C0 02 */	addi r3, r3, 0x80F3C002@l
/* 800DB058 000D7F98  4B FF FC 91 */	bl DSPSendMailToDSP
lbl_800DB05C:
/* 800DB05C 000D7F9C  4B FF FC 55 */	bl DSPCheckMailToDSP
/* 800DB060 000D7FA0  28 03 00 00 */	cmplwi r3, 0
/* 800DB064 000D7FA4  40 82 FF F8 */	bne lbl_800DB05C
/* 800DB068 000D7FA8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 800DB06C 000D7FAC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 800DB070 000D7FB0  4B FF FC 79 */	bl DSPSendMailToDSP
lbl_800DB074:
/* 800DB074 000D7FB4  4B FF FC 3D */	bl DSPCheckMailToDSP
/* 800DB078 000D7FB8  28 03 00 00 */	cmplwi r3, 0
/* 800DB07C 000D7FBC  40 82 FF F8 */	bne lbl_800DB074
/* 800DB080 000D7FC0  3C 60 80 F4 */	lis r3, 0x80F3A002@ha
/* 800DB084 000D7FC4  38 63 A0 02 */	addi r3, r3, 0x80F3A002@l
/* 800DB088 000D7FC8  4B FF FC 61 */	bl DSPSendMailToDSP
lbl_800DB08C:
/* 800DB08C 000D7FCC  4B FF FC 25 */	bl DSPCheckMailToDSP
/* 800DB090 000D7FD0  28 03 00 00 */	cmplwi r3, 0
/* 800DB094 000D7FD4  40 82 FF F8 */	bne lbl_800DB08C
/* 800DB098 000D7FD8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 800DB09C 000D7FDC  4B FF FC 4D */	bl DSPSendMailToDSP
lbl_800DB0A0:
/* 800DB0A0 000D7FE0  4B FF FC 11 */	bl DSPCheckMailToDSP
/* 800DB0A4 000D7FE4  28 03 00 00 */	cmplwi r3, 0
/* 800DB0A8 000D7FE8  40 82 FF F8 */	bne lbl_800DB0A0
/* 800DB0AC 000D7FEC  3C 60 80 F4 */	lis r3, 0x80F3B002@ha
/* 800DB0B0 000D7FF0  38 63 B0 02 */	addi r3, r3, 0x80F3B002@l
/* 800DB0B4 000D7FF4  4B FF FC 35 */	bl DSPSendMailToDSP
lbl_800DB0B8:
/* 800DB0B8 000D7FF8  4B FF FB F9 */	bl DSPCheckMailToDSP
/* 800DB0BC 000D7FFC  28 03 00 00 */	cmplwi r3, 0
/* 800DB0C0 000D8000  40 82 FF F8 */	bne lbl_800DB0B8
/* 800DB0C4 000D8004  38 60 00 00 */	li r3, 0
/* 800DB0C8 000D8008  4B FF FC 21 */	bl DSPSendMailToDSP
lbl_800DB0CC:
/* 800DB0CC 000D800C  4B FF FB E5 */	bl DSPCheckMailToDSP
/* 800DB0D0 000D8010  28 03 00 00 */	cmplwi r3, 0
/* 800DB0D4 000D8014  40 82 FF F8 */	bne lbl_800DB0CC
/* 800DB0D8 000D8018  3C 60 80 F4 */	lis r3, 0x80F3D001@ha
/* 800DB0DC 000D801C  38 63 D0 01 */	addi r3, r3, 0x80F3D001@l
/* 800DB0E0 000D8020  4B FF FC 09 */	bl DSPSendMailToDSP
lbl_800DB0E4:
/* 800DB0E4 000D8024  4B FF FB CD */	bl DSPCheckMailToDSP
/* 800DB0E8 000D8028  28 03 00 00 */	cmplwi r3, 0
/* 800DB0EC 000D802C  40 82 FF F8 */	bne lbl_800DB0E4
/* 800DB0F0 000D8030  A0 7E 00 24 */	lhz r3, 0x24(r30)
/* 800DB0F4 000D8034  4B FF FB F5 */	bl DSPSendMailToDSP
lbl_800DB0F8:
/* 800DB0F8 000D8038  4B FF FB B9 */	bl DSPCheckMailToDSP
/* 800DB0FC 000D803C  28 03 00 00 */	cmplwi r3, 0
/* 800DB100 000D8040  40 82 FF F8 */	bne lbl_800DB0F8
/* 800DB104 000D8044  38 7F 00 00 */	addi r3, r31, 0
/* 800DB108 000D8048  4C C6 31 82 */	crclr 6
/* 800DB10C 000D804C  38 9E 00 00 */	addi r4, r30, 0
/* 800DB110 000D8050  4B FF FC F1 */	bl __DSP_debug_printf
/* 800DB114 000D8054  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 800DB118 000D8058  38 7F 00 20 */	addi r3, r31, 0x20
/* 800DB11C 000D805C  4C C6 31 82 */	crclr 6
/* 800DB120 000D8060  4B FF FC E1 */	bl __DSP_debug_printf
/* 800DB124 000D8064  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 800DB128 000D8068  38 7F 00 50 */	addi r3, r31, 0x50
/* 800DB12C 000D806C  4C C6 31 82 */	crclr 6
/* 800DB130 000D8070  4B FF FC D1 */	bl __DSP_debug_printf
/* 800DB134 000D8074  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 800DB138 000D8078  38 7F 00 80 */	addi r3, r31, 0x80
/* 800DB13C 000D807C  4C C6 31 82 */	crclr 6
/* 800DB140 000D8080  4B FF FC C1 */	bl __DSP_debug_printf
/* 800DB144 000D8084  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 800DB148 000D8088  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 800DB14C 000D808C  4C C6 31 82 */	crclr 6
/* 800DB150 000D8090  4B FF FC B1 */	bl __DSP_debug_printf
/* 800DB154 000D8094  A0 9E 00 24 */	lhz r4, 0x24(r30)
/* 800DB158 000D8098  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 800DB15C 000D809C  4C C6 31 82 */	crclr 6
/* 800DB160 000D80A0  4B FF FC A1 */	bl __DSP_debug_printf
/* 800DB164 000D80A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800DB168 000D80A8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800DB16C 000D80AC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800DB170 000D80B0  38 21 00 18 */	addi r1, r1, 0x18
/* 800DB174 000D80B4  7C 08 03 A6 */	mtlr r0
/* 800DB178 000D80B8  4E 80 00 20 */	blr 

.global __DSP_insert_task
__DSP_insert_task:
/* 800DB17C 000D80BC  80 0D 8D C0 */	lwz r0, __DSP_first_task@sda21(r13)
/* 800DB180 000D80C0  28 00 00 00 */	cmplwi r0, 0
/* 800DB184 000D80C4  40 82 00 20 */	bne lbl_800DB1A4
/* 800DB188 000D80C8  90 6D 8D C4 */	stw r3, __DSP_curr_task@sda21(r13)
/* 800DB18C 000D80CC  38 00 00 00 */	li r0, 0
/* 800DB190 000D80D0  90 6D 8D BC */	stw r3, __DSP_last_task@sda21(r13)
/* 800DB194 000D80D4  90 6D 8D C0 */	stw r3, __DSP_first_task@sda21(r13)
/* 800DB198 000D80D8  90 03 00 3C */	stw r0, 0x3c(r3)
/* 800DB19C 000D80DC  90 03 00 38 */	stw r0, 0x38(r3)
/* 800DB1A0 000D80E0  4E 80 00 20 */	blr 
lbl_800DB1A4:
/* 800DB1A4 000D80E4  7C 05 03 78 */	mr r5, r0
/* 800DB1A8 000D80E8  48 00 00 44 */	b lbl_800DB1EC
lbl_800DB1AC:
/* 800DB1AC 000D80EC  80 83 00 04 */	lwz r4, 4(r3)
/* 800DB1B0 000D80F0  80 05 00 04 */	lwz r0, 4(r5)
/* 800DB1B4 000D80F4  7C 04 00 40 */	cmplw r4, r0
/* 800DB1B8 000D80F8  40 80 00 30 */	bge lbl_800DB1E8
/* 800DB1BC 000D80FC  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 800DB1C0 000D8100  90 03 00 3C */	stw r0, 0x3c(r3)
/* 800DB1C4 000D8104  90 65 00 3C */	stw r3, 0x3c(r5)
/* 800DB1C8 000D8108  90 A3 00 38 */	stw r5, 0x38(r3)
/* 800DB1CC 000D810C  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 800DB1D0 000D8110  28 04 00 00 */	cmplwi r4, 0
/* 800DB1D4 000D8114  40 82 00 0C */	bne lbl_800DB1E0
/* 800DB1D8 000D8118  90 6D 8D C0 */	stw r3, __DSP_first_task@sda21(r13)
/* 800DB1DC 000D811C  48 00 00 18 */	b lbl_800DB1F4
lbl_800DB1E0:
/* 800DB1E0 000D8120  90 64 00 38 */	stw r3, 0x38(r4)
/* 800DB1E4 000D8124  48 00 00 10 */	b lbl_800DB1F4
lbl_800DB1E8:
/* 800DB1E8 000D8128  80 A5 00 38 */	lwz r5, 0x38(r5)
lbl_800DB1EC:
/* 800DB1EC 000D812C  28 05 00 00 */	cmplwi r5, 0
/* 800DB1F0 000D8130  40 82 FF BC */	bne lbl_800DB1AC
lbl_800DB1F4:
/* 800DB1F4 000D8134  28 05 00 00 */	cmplwi r5, 0
/* 800DB1F8 000D8138  4C 82 00 20 */	bnelr 
/* 800DB1FC 000D813C  80 8D 8D BC */	lwz r4, __DSP_last_task@sda21(r13)
/* 800DB200 000D8140  38 00 00 00 */	li r0, 0
/* 800DB204 000D8144  90 64 00 38 */	stw r3, 0x38(r4)
/* 800DB208 000D8148  90 03 00 38 */	stw r0, 0x38(r3)
/* 800DB20C 000D814C  80 0D 8D BC */	lwz r0, __DSP_last_task@sda21(r13)
/* 800DB210 000D8150  90 03 00 3C */	stw r0, 0x3c(r3)
/* 800DB214 000D8154  90 6D 8D BC */	stw r3, __DSP_last_task@sda21(r13)
/* 800DB218 000D8158  4E 80 00 20 */	blr 

.global __DSP_remove_task
__DSP_remove_task:
/* 800DB21C 000D815C  38 80 00 00 */	li r4, 0
/* 800DB220 000D8160  90 83 00 08 */	stw r4, 8(r3)
/* 800DB224 000D8164  38 00 00 03 */	li r0, 3
/* 800DB228 000D8168  90 03 00 00 */	stw r0, 0(r3)
/* 800DB22C 000D816C  80 0D 8D C0 */	lwz r0, __DSP_first_task@sda21(r13)
/* 800DB230 000D8170  7C 00 18 40 */	cmplw r0, r3
/* 800DB234 000D8174  40 82 00 30 */	bne lbl_800DB264
/* 800DB238 000D8178  80 03 00 38 */	lwz r0, 0x38(r3)
/* 800DB23C 000D817C  28 00 00 00 */	cmplwi r0, 0
/* 800DB240 000D8180  41 82 00 14 */	beq lbl_800DB254
/* 800DB244 000D8184  90 0D 8D C0 */	stw r0, __DSP_first_task@sda21(r13)
/* 800DB248 000D8188  80 63 00 38 */	lwz r3, 0x38(r3)
/* 800DB24C 000D818C  90 83 00 3C */	stw r4, 0x3c(r3)
/* 800DB250 000D8190  4E 80 00 20 */	blr 
lbl_800DB254:
/* 800DB254 000D8194  90 8D 8D C4 */	stw r4, __DSP_curr_task@sda21(r13)
/* 800DB258 000D8198  90 8D 8D BC */	stw r4, __DSP_last_task@sda21(r13)
/* 800DB25C 000D819C  90 8D 8D C0 */	stw r4, __DSP_first_task@sda21(r13)
/* 800DB260 000D81A0  4E 80 00 20 */	blr 
lbl_800DB264:
/* 800DB264 000D81A4  80 0D 8D BC */	lwz r0, __DSP_last_task@sda21(r13)
/* 800DB268 000D81A8  7C 00 18 40 */	cmplw r0, r3
/* 800DB26C 000D81AC  40 82 00 20 */	bne lbl_800DB28C
/* 800DB270 000D81B0  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 800DB274 000D81B4  90 0D 8D BC */	stw r0, __DSP_last_task@sda21(r13)
/* 800DB278 000D81B8  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 800DB27C 000D81BC  90 83 00 38 */	stw r4, 0x38(r3)
/* 800DB280 000D81C0  80 0D 8D C0 */	lwz r0, __DSP_first_task@sda21(r13)
/* 800DB284 000D81C4  90 0D 8D C4 */	stw r0, __DSP_curr_task@sda21(r13)
/* 800DB288 000D81C8  4E 80 00 20 */	blr 
lbl_800DB28C:
/* 800DB28C 000D81CC  80 03 00 38 */	lwz r0, 0x38(r3)
/* 800DB290 000D81D0  90 0D 8D C4 */	stw r0, __DSP_curr_task@sda21(r13)
/* 800DB294 000D81D4  80 03 00 38 */	lwz r0, 0x38(r3)
/* 800DB298 000D81D8  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 800DB29C 000D81DC  90 04 00 38 */	stw r0, 0x38(r4)
/* 800DB2A0 000D81E0  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 800DB2A4 000D81E4  80 63 00 38 */	lwz r3, 0x38(r3)
/* 800DB2A8 000D81E8  90 03 00 3C */	stw r0, 0x3c(r3)
/* 800DB2AC 000D81EC  4E 80 00 20 */	blr 
