.include "macros.inc"
.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 0x8
.global lbl_80516BD0
lbl_80516BD0:
	.float 1.0
	.4byte 0x00000000
.global lbl_80516BD8
lbl_80516BD8:
	.4byte 0x43300000
	.4byte 0x80000000
.global lbl_80516BE0
lbl_80516BE0:
	.4byte 0x40000000
.global lbl_80516BE4
lbl_80516BE4:
	.4byte 0x437F0000
.global lbl_80516BE8
lbl_80516BE8:
	.float 0.5
.global lbl_80516BEC
lbl_80516BEC:
	.4byte 0x46800000
.global lbl_80516BF0
lbl_80516BF0:
	.4byte 0x00000000
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global JPACalcScaleX__FP18JPAEmitterWorkDataP15JPABaseParticle
JPACalcScaleX__FP18JPAEmitterWorkDataP15JPABaseParticle:
/* 80091030 0008DF70  80 A3 00 04 */	lwz r5, 4(r3)
/* 80091034 0008DF74  C0 63 01 FC */	lfs f3, 0x1fc(r3)
/* 80091038 0008DF78  80 A5 00 20 */	lwz r5, 0x20(r5)
/* 8009103C 0008DF7C  80 65 00 00 */	lwz r3, 0(r5)
/* 80091040 0008DF80  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80091044 0008DF84  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80091048 0008DF88  40 80 00 20 */	bge lbl_80091068
/* 8009104C 0008DF8C  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80091050 0008DF90  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80091054 0008DF94  C0 44 00 68 */	lfs f2, 0x68(r4)
/* 80091058 0008DF98  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 8009105C 0008DF9C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80091060 0008DFA0  D0 04 00 60 */	stfs f0, 0x60(r4)
/* 80091064 0008DFA4  4E 80 00 20 */	blr 
lbl_80091068:
/* 80091068 0008DFA8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8009106C 0008DFAC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80091070 0008DFB0  40 81 00 24 */	ble lbl_80091094
/* 80091074 0008DFB4  EC 23 00 28 */	fsubs f1, f3, f0
/* 80091078 0008DFB8  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 8009107C 0008DFBC  C0 02 88 70 */	lfs f0, lbl_80516BD0@sda21(r2)
/* 80091080 0008DFC0  C0 64 00 68 */	lfs f3, 0x68(r4)
/* 80091084 0008DFC4  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80091088 0008DFC8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8009108C 0008DFCC  D0 04 00 60 */	stfs f0, 0x60(r4)
/* 80091090 0008DFD0  4E 80 00 20 */	blr 
lbl_80091094:
/* 80091094 0008DFD4  C0 04 00 68 */	lfs f0, 0x68(r4)
/* 80091098 0008DFD8  D0 04 00 60 */	stfs f0, 0x60(r4)
/* 8009109C 0008DFDC  4E 80 00 20 */	blr 

.global JPACalcScaleY__FP18JPAEmitterWorkDataP15JPABaseParticle
JPACalcScaleY__FP18JPAEmitterWorkDataP15JPABaseParticle:
/* 800910A0 0008DFE0  80 A3 00 04 */	lwz r5, 4(r3)
/* 800910A4 0008DFE4  C0 63 01 FC */	lfs f3, 0x1fc(r3)
/* 800910A8 0008DFE8  80 A5 00 20 */	lwz r5, 0x20(r5)
/* 800910AC 0008DFEC  80 65 00 00 */	lwz r3, 0(r5)
/* 800910B0 0008DFF0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800910B4 0008DFF4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800910B8 0008DFF8  40 80 00 20 */	bge lbl_800910D8
/* 800910BC 0008DFFC  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 800910C0 0008E000  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800910C4 0008E004  C0 44 00 68 */	lfs f2, 0x68(r4)
/* 800910C8 0008E008  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 800910CC 0008E00C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800910D0 0008E010  D0 04 00 64 */	stfs f0, 0x64(r4)
/* 800910D4 0008E014  4E 80 00 20 */	blr 
lbl_800910D8:
/* 800910D8 0008E018  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800910DC 0008E01C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800910E0 0008E020  40 81 00 24 */	ble lbl_80091104
/* 800910E4 0008E024  EC 23 00 28 */	fsubs f1, f3, f0
/* 800910E8 0008E028  C0 45 00 18 */	lfs f2, 0x18(r5)
/* 800910EC 0008E02C  C0 02 88 70 */	lfs f0, lbl_80516BD0@sda21(r2)
/* 800910F0 0008E030  C0 64 00 68 */	lfs f3, 0x68(r4)
/* 800910F4 0008E034  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 800910F8 0008E038  EC 03 00 32 */	fmuls f0, f3, f0
/* 800910FC 0008E03C  D0 04 00 64 */	stfs f0, 0x64(r4)
/* 80091100 0008E040  4E 80 00 20 */	blr 
lbl_80091104:
/* 80091104 0008E044  C0 04 00 68 */	lfs f0, 0x68(r4)
/* 80091108 0008E048  D0 04 00 64 */	stfs f0, 0x64(r4)
/* 8009110C 0008E04C  4E 80 00 20 */	blr 

.global JPACalcScaleCopy__FP18JPAEmitterWorkDataP15JPABaseParticle
JPACalcScaleCopy__FP18JPAEmitterWorkDataP15JPABaseParticle:
/* 80091110 0008E050  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 80091114 0008E054  D0 04 00 64 */	stfs f0, 0x64(r4)
/* 80091118 0008E058  4E 80 00 20 */	blr 

.global JPACalcScaleAnmNormal__FP18JPAEmitterWorkDataP15JPABaseParticle
JPACalcScaleAnmNormal__FP18JPAEmitterWorkDataP15JPABaseParticle:
/* 8009111C 0008E05C  C0 04 00 84 */	lfs f0, 0x84(r4)
/* 80091120 0008E060  D0 03 01 FC */	stfs f0, 0x1fc(r3)
/* 80091124 0008E064  4E 80 00 20 */	blr 

.global JPACalcScaleAnmRepeatX__FP18JPAEmitterWorkDataP15JPABaseParticle
JPACalcScaleAnmRepeatX__FP18JPAEmitterWorkDataP15JPABaseParticle:
/* 80091128 0008E068  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009112C 0008E06C  3C 00 43 30 */	lis r0, 0x4330
/* 80091130 0008E070  C8 42 88 78 */	lfd f2, lbl_80516BD8@sda21(r2)
/* 80091134 0008E074  80 C3 00 04 */	lwz r6, 4(r3)
/* 80091138 0008E078  A8 A4 00 80 */	lha r5, 0x80(r4)
/* 8009113C 0008E07C  80 86 00 20 */	lwz r4, 0x20(r6)
/* 80091140 0008E080  90 01 00 08 */	stw r0, 8(r1)
/* 80091144 0008E084  80 84 00 00 */	lwz r4, 0(r4)
/* 80091148 0008E088  90 01 00 10 */	stw r0, 0x10(r1)
/* 8009114C 0008E08C  A8 C4 00 28 */	lha r6, 0x28(r4)
/* 80091150 0008E090  7C 85 33 D6 */	divw r4, r5, r6
/* 80091154 0008E094  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80091158 0008E098  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009115C 0008E09C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80091160 0008E0A0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80091164 0008E0A4  7C 04 31 D6 */	mullw r0, r4, r6
/* 80091168 0008E0A8  7C 00 28 50 */	subf r0, r0, r5
/* 8009116C 0008E0AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80091170 0008E0B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80091174 0008E0B4  C8 21 00 08 */	lfd f1, 8(r1)
/* 80091178 0008E0B8  EC 21 10 28 */	fsubs f1, f1, f2
/* 8009117C 0008E0BC  EC 01 00 24 */	fdivs f0, f1, f0
/* 80091180 0008E0C0  D0 03 01 FC */	stfs f0, 0x1fc(r3)
/* 80091184 0008E0C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80091188 0008E0C8  4E 80 00 20 */	blr 

.global JPACalcScaleAnmRepeatY__FP18JPAEmitterWorkDataP15JPABaseParticle
JPACalcScaleAnmRepeatY__FP18JPAEmitterWorkDataP15JPABaseParticle:
/* 8009118C 0008E0CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80091190 0008E0D0  3C 00 43 30 */	lis r0, 0x4330
/* 80091194 0008E0D4  C8 42 88 78 */	lfd f2, lbl_80516BD8@sda21(r2)
/* 80091198 0008E0D8  80 C3 00 04 */	lwz r6, 4(r3)
/* 8009119C 0008E0DC  A8 A4 00 80 */	lha r5, 0x80(r4)
/* 800911A0 0008E0E0  80 86 00 20 */	lwz r4, 0x20(r6)
/* 800911A4 0008E0E4  90 01 00 08 */	stw r0, 8(r1)
/* 800911A8 0008E0E8  80 84 00 00 */	lwz r4, 0(r4)
/* 800911AC 0008E0EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 800911B0 0008E0F0  A8 C4 00 2A */	lha r6, 0x2a(r4)
/* 800911B4 0008E0F4  7C 85 33 D6 */	divw r4, r5, r6
/* 800911B8 0008E0F8  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 800911BC 0008E0FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800911C0 0008E100  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800911C4 0008E104  EC 00 10 28 */	fsubs f0, f0, f2
/* 800911C8 0008E108  7C 04 31 D6 */	mullw r0, r4, r6
/* 800911CC 0008E10C  7C 00 28 50 */	subf r0, r0, r5
/* 800911D0 0008E110  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800911D4 0008E114  90 01 00 0C */	stw r0, 0xc(r1)
/* 800911D8 0008E118  C8 21 00 08 */	lfd f1, 8(r1)
/* 800911DC 0008E11C  EC 21 10 28 */	fsubs f1, f1, f2
/* 800911E0 0008E120  EC 01 00 24 */	fdivs f0, f1, f0
/* 800911E4 0008E124  D0 03 01 FC */	stfs f0, 0x1fc(r3)
/* 800911E8 0008E128  38 21 00 20 */	addi r1, r1, 0x20
/* 800911EC 0008E12C  4E 80 00 20 */	blr 

.global JPACalcScaleAnmReverseX__FP18JPAEmitterWorkDataP15JPABaseParticle
JPACalcScaleAnmReverseX__FP18JPAEmitterWorkDataP15JPABaseParticle:
/* 800911F0 0008E130  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800911F4 0008E134  3C A0 43 30 */	lis r5, 0x4330
/* 800911F8 0008E138  C8 A2 88 78 */	lfd f5, lbl_80516BD8@sda21(r2)
/* 800911FC 0008E13C  80 C3 00 04 */	lwz r6, 4(r3)
/* 80091200 0008E140  A8 E4 00 80 */	lha r7, 0x80(r4)
/* 80091204 0008E144  80 86 00 20 */	lwz r4, 0x20(r6)
/* 80091208 0008E148  90 A1 00 08 */	stw r5, 8(r1)
/* 8009120C 0008E14C  80 84 00 00 */	lwz r4, 0(r4)
/* 80091210 0008E150  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80091214 0008E154  A8 84 00 28 */	lha r4, 0x28(r4)
/* 80091218 0008E158  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8009121C 0008E15C  7C C7 23 D6 */	divw r6, r7, r4
/* 80091220 0008E160  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80091224 0008E164  90 01 00 14 */	stw r0, 0x14(r1)
/* 80091228 0008E168  C0 22 88 80 */	lfs f1, lbl_80516BE0@sda21(r2)
/* 8009122C 0008E16C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80091230 0008E170  EC 60 28 28 */	fsubs f3, f0, f5
/* 80091234 0008E174  7C 86 21 D6 */	mullw r4, r6, r4
/* 80091238 0008E178  54 C0 07 FE */	clrlwi r0, r6, 0x1f
/* 8009123C 0008E17C  C0 02 88 70 */	lfs f0, lbl_80516BD0@sda21(r2)
/* 80091240 0008E180  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80091244 0008E184  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80091248 0008E188  7C 04 38 50 */	subf r0, r4, r7
/* 8009124C 0008E18C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80091250 0008E190  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80091254 0008E194  90 01 00 0C */	stw r0, 0xc(r1)
/* 80091258 0008E198  EC 42 28 28 */	fsubs f2, f2, f5
/* 8009125C 0008E19C  C8 81 00 08 */	lfd f4, 8(r1)
/* 80091260 0008E1A0  EC 84 28 28 */	fsubs f4, f4, f5
/* 80091264 0008E1A4  EC 64 18 24 */	fdivs f3, f4, f3
/* 80091268 0008E1A8  EC 01 00 FC */	fnmsubs f0, f1, f3, f0
/* 8009126C 0008E1AC  EC 02 18 3A */	fmadds f0, f2, f0, f3
/* 80091270 0008E1B0  D0 03 01 FC */	stfs f0, 0x1fc(r3)
/* 80091274 0008E1B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80091278 0008E1B8  4E 80 00 20 */	blr 

.global JPACalcScaleAnmReverseY__FP18JPAEmitterWorkDataP15JPABaseParticle
JPACalcScaleAnmReverseY__FP18JPAEmitterWorkDataP15JPABaseParticle:
/* 8009127C 0008E1BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80091280 0008E1C0  3C A0 43 30 */	lis r5, 0x4330
/* 80091284 0008E1C4  C8 A2 88 78 */	lfd f5, lbl_80516BD8@sda21(r2)
/* 80091288 0008E1C8  80 C3 00 04 */	lwz r6, 4(r3)
/* 8009128C 0008E1CC  A8 E4 00 80 */	lha r7, 0x80(r4)
/* 80091290 0008E1D0  80 86 00 20 */	lwz r4, 0x20(r6)
/* 80091294 0008E1D4  90 A1 00 08 */	stw r5, 8(r1)
/* 80091298 0008E1D8  80 84 00 00 */	lwz r4, 0(r4)
/* 8009129C 0008E1DC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800912A0 0008E1E0  A8 84 00 2A */	lha r4, 0x2a(r4)
/* 800912A4 0008E1E4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 800912A8 0008E1E8  7C C7 23 D6 */	divw r6, r7, r4
/* 800912AC 0008E1EC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 800912B0 0008E1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800912B4 0008E1F4  C0 22 88 80 */	lfs f1, lbl_80516BE0@sda21(r2)
/* 800912B8 0008E1F8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800912BC 0008E1FC  EC 60 28 28 */	fsubs f3, f0, f5
/* 800912C0 0008E200  7C 86 21 D6 */	mullw r4, r6, r4
/* 800912C4 0008E204  54 C0 07 FE */	clrlwi r0, r6, 0x1f
/* 800912C8 0008E208  C0 02 88 70 */	lfs f0, lbl_80516BD0@sda21(r2)
/* 800912CC 0008E20C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800912D0 0008E210  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800912D4 0008E214  7C 04 38 50 */	subf r0, r4, r7
/* 800912D8 0008E218  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800912DC 0008E21C  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 800912E0 0008E220  90 01 00 0C */	stw r0, 0xc(r1)
/* 800912E4 0008E224  EC 42 28 28 */	fsubs f2, f2, f5
/* 800912E8 0008E228  C8 81 00 08 */	lfd f4, 8(r1)
/* 800912EC 0008E22C  EC 84 28 28 */	fsubs f4, f4, f5
/* 800912F0 0008E230  EC 64 18 24 */	fdivs f3, f4, f3
/* 800912F4 0008E234  EC 01 00 FC */	fnmsubs f0, f1, f3, f0
/* 800912F8 0008E238  EC 02 18 3A */	fmadds f0, f2, f0, f3
/* 800912FC 0008E23C  D0 03 01 FC */	stfs f0, 0x1fc(r3)
/* 80091300 0008E240  38 21 00 20 */	addi r1, r1, 0x20
/* 80091304 0008E244  4E 80 00 20 */	blr 

.global JPACalcAlphaAnm__FP18JPAEmitterWorkDataP15JPABaseParticle
JPACalcAlphaAnm__FP18JPAEmitterWorkDataP15JPABaseParticle:
/* 80091308 0008E248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009130C 0008E24C  80 63 00 04 */	lwz r3, 4(r3)
/* 80091310 0008E250  C0 64 00 84 */	lfs f3, 0x84(r4)
/* 80091314 0008E254  80 A3 00 20 */	lwz r5, 0x20(r3)
/* 80091318 0008E258  80 65 00 00 */	lwz r3, 0(r5)
/* 8009131C 0008E25C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80091320 0008E260  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80091324 0008E264  40 80 00 1C */	bge lbl_80091340
/* 80091328 0008E268  C0 25 00 04 */	lfs f1, 4(r5)
/* 8009132C 0008E26C  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80091330 0008E270  C0 42 88 84 */	lfs f2, lbl_80516BE4@sda21(r2)
/* 80091334 0008E274  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 80091338 0008E278  EC 82 00 32 */	fmuls f4, f2, f0
/* 8009133C 0008E27C  48 00 00 38 */	b lbl_80091374
lbl_80091340:
/* 80091340 0008E280  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80091344 0008E284  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80091348 0008E288  40 81 00 20 */	ble lbl_80091368
/* 8009134C 0008E28C  EC 43 00 28 */	fsubs f2, f3, f0
/* 80091350 0008E290  C0 25 00 08 */	lfs f1, 8(r5)
/* 80091354 0008E294  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80091358 0008E298  C0 62 88 84 */	lfs f3, lbl_80516BE4@sda21(r2)
/* 8009135C 0008E29C  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80091360 0008E2A0  EC 83 00 32 */	fmuls f4, f3, f0
/* 80091364 0008E2A4  48 00 00 10 */	b lbl_80091374
lbl_80091368:
/* 80091368 0008E2A8  C0 22 88 84 */	lfs f1, lbl_80516BE4@sda21(r2)
/* 8009136C 0008E2AC  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80091370 0008E2B0  EC 81 00 32 */	fmuls f4, f1, f0
lbl_80091374:
/* 80091374 0008E2B4  F0 81 A0 08 */	psq_st f4, 8(r1), 1, qr2
/* 80091378 0008E2B8  88 01 00 08 */	lbz r0, 8(r1)
/* 8009137C 0008E2BC  98 04 00 96 */	stb r0, 0x96(r4)
/* 80091380 0008E2C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80091384 0008E2C4  4E 80 00 20 */	blr 

.global JPACalcAlphaFlickAnm__FP18JPAEmitterWorkDataP15JPABaseParticle
JPACalcAlphaFlickAnm__FP18JPAEmitterWorkDataP15JPABaseParticle:
/* 80091388 0008E2C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009138C 0008E2CC  80 63 00 04 */	lwz r3, 4(r3)
/* 80091390 0008E2D0  C0 44 00 84 */	lfs f2, 0x84(r4)
/* 80091394 0008E2D4  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80091398 0008E2D8  80 C3 00 00 */	lwz r6, 0(r3)
/* 8009139C 0008E2DC  C0 06 00 2C */	lfs f0, 0x2c(r6)
/* 800913A0 0008E2E0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800913A4 0008E2E4  40 80 00 14 */	bge lbl_800913B8
/* 800913A8 0008E2E8  C0 23 00 04 */	lfs f1, 4(r3)
/* 800913AC 0008E2EC  C0 06 00 34 */	lfs f0, 0x34(r6)
/* 800913B0 0008E2F0  EC E2 00 7A */	fmadds f7, f2, f1, f0
/* 800913B4 0008E2F4  48 00 00 28 */	b lbl_800913DC
lbl_800913B8:
/* 800913B8 0008E2F8  C0 06 00 30 */	lfs f0, 0x30(r6)
/* 800913BC 0008E2FC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800913C0 0008E300  40 81 00 18 */	ble lbl_800913D8
/* 800913C4 0008E304  EC 42 00 28 */	fsubs f2, f2, f0
/* 800913C8 0008E308  C0 23 00 08 */	lfs f1, 8(r3)
/* 800913CC 0008E30C  C0 06 00 38 */	lfs f0, 0x38(r6)
/* 800913D0 0008E310  EC E2 00 7A */	fmadds f7, f2, f1, f0
/* 800913D4 0008E314  48 00 00 08 */	b lbl_800913DC
lbl_800913D8:
/* 800913D8 0008E318  C0 E6 00 38 */	lfs f7, 0x38(r6)
lbl_800913DC:
/* 800913DC 0008E31C  A8 A4 00 80 */	lha r5, 0x80(r4)
/* 800913E0 0008E320  3C 00 43 30 */	lis r0, 0x4330
/* 800913E4 0008E324  90 01 00 10 */	stw r0, 0x10(r1)
/* 800913E8 0008E328  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 800913EC 0008E32C  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 800913F0 0008E330  C8 22 88 78 */	lfd f1, lbl_80516BD8@sda21(r2)
/* 800913F4 0008E334  90 01 00 14 */	stw r0, 0x14(r1)
/* 800913F8 0008E338  38 63 71 A0 */	addi r3, r3, sincosTable___5JMath@l
/* 800913FC 0008E33C  C0 84 00 6C */	lfs f4, 0x6c(r4)
/* 80091400 0008E340  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80091404 0008E344  C0 A2 88 8C */	lfs f5, lbl_80516BEC@sda21(r2)
/* 80091408 0008E348  EC 60 08 28 */	fsubs f3, f0, f1
/* 8009140C 0008E34C  C0 42 88 70 */	lfs f2, lbl_80516BD0@sda21(r2)
/* 80091410 0008E350  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80091414 0008E354  C0 06 00 48 */	lfs f0, 0x48(r6)
/* 80091418 0008E358  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8009141C 0008E35C  C0 82 88 88 */	lfs f4, lbl_80516BE8@sda21(r2)
/* 80091420 0008E360  EC 22 08 28 */	fsubs f1, f2, f1
/* 80091424 0008E364  C0 C2 88 84 */	lfs f6, lbl_80516BE4@sda21(r2)
/* 80091428 0008E368  EC 65 00 F2 */	fmuls f3, f5, f3
/* 8009142C 0008E36C  EC 23 00 72 */	fmuls f1, f3, f1
/* 80091430 0008E370  FC 20 08 1E */	fctiwz f1, f1
/* 80091434 0008E374  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 80091438 0008E378  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8009143C 0008E37C  54 00 F4 B8 */	rlwinm r0, r0, 0x1e, 0x12, 0x1c
/* 80091440 0008E380  7C 23 04 2E */	lfsx f1, r3, r0
/* 80091444 0008E384  EC 21 10 28 */	fsubs f1, f1, f2
/* 80091448 0008E388  EC 01 00 32 */	fmuls f0, f1, f0
/* 8009144C 0008E38C  EC 04 10 3A */	fmadds f0, f4, f0, f2
/* 80091450 0008E390  EC 06 00 32 */	fmuls f0, f6, f0
/* 80091454 0008E394  EC E7 00 32 */	fmuls f7, f7, f0
/* 80091458 0008E398  F0 E1 A0 08 */	psq_st f7, 8(r1), 1, qr2
/* 8009145C 0008E39C  88 01 00 08 */	lbz r0, 8(r1)
/* 80091460 0008E3A0  98 04 00 96 */	stb r0, 0x96(r4)
/* 80091464 0008E3A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80091468 0008E3A8  4E 80 00 20 */	blr 

.global __ct__13JPAExtraShapeFPCUc
__ct__13JPAExtraShapeFPCUc:
/* 8009146C 0008E3AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80091470 0008E3B0  7C 08 02 A6 */	mflr r0
/* 80091474 0008E3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80091478 0008E3B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009147C 0008E3BC  7C 7F 1B 78 */	mr r31, r3
/* 80091480 0008E3C0  90 83 00 00 */	stw r4, 0(r3)
/* 80091484 0008E3C4  48 00 00 1D */	bl init__13JPAExtraShapeFv
/* 80091488 0008E3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009148C 0008E3CC  7F E3 FB 78 */	mr r3, r31
/* 80091490 0008E3D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80091494 0008E3D4  7C 08 03 A6 */	mtlr r0
/* 80091498 0008E3D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009149C 0008E3DC  4E 80 00 20 */	blr 

.global init__13JPAExtraShapeFv
init__13JPAExtraShapeFv:
/* 800914A0 0008E3E0  80 83 00 00 */	lwz r4, 0(r3)
/* 800914A4 0008E3E4  C0 02 88 90 */	lfs f0, lbl_80516BF0@sda21(r2)
/* 800914A8 0008E3E8  C0 44 00 2C */	lfs f2, 0x2c(r4)
/* 800914AC 0008E3EC  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 800914B0 0008E3F0  41 82 00 18 */	beq lbl_800914C8
/* 800914B4 0008E3F4  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 800914B8 0008E3F8  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 800914BC 0008E3FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800914C0 0008E400  EC 00 10 24 */	fdivs f0, f0, f2
/* 800914C4 0008E404  48 00 00 08 */	b lbl_800914CC
lbl_800914C8:
/* 800914C8 0008E408  C0 02 88 70 */	lfs f0, lbl_80516BD0@sda21(r2)
lbl_800914CC:
/* 800914CC 0008E40C  D0 03 00 04 */	stfs f0, 4(r3)
/* 800914D0 0008E410  C0 02 88 70 */	lfs f0, lbl_80516BD0@sda21(r2)
/* 800914D4 0008E414  80 83 00 00 */	lwz r4, 0(r3)
/* 800914D8 0008E418  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 800914DC 0008E41C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 800914E0 0008E420  41 82 00 18 */	beq lbl_800914F8
/* 800914E4 0008E424  C0 44 00 3C */	lfs f2, 0x3c(r4)
/* 800914E8 0008E428  EC 00 08 28 */	fsubs f0, f0, f1
/* 800914EC 0008E42C  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 800914F0 0008E430  EC 22 08 28 */	fsubs f1, f2, f1
/* 800914F4 0008E434  EC 01 00 24 */	fdivs f0, f1, f0
lbl_800914F8:
/* 800914F8 0008E438  D0 03 00 08 */	stfs f0, 8(r3)
/* 800914FC 0008E43C  C0 02 88 90 */	lfs f0, lbl_80516BF0@sda21(r2)
/* 80091500 0008E440  80 83 00 00 */	lwz r4, 0(r3)
/* 80091504 0008E444  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80091508 0008E448  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8009150C 0008E44C  41 82 00 34 */	beq lbl_80091540
/* 80091510 0008E450  C0 42 88 70 */	lfs f2, lbl_80516BD0@sda21(r2)
/* 80091514 0008E454  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80091518 0008E458  EC 02 00 28 */	fsubs f0, f2, f0
/* 8009151C 0008E45C  EC 00 08 24 */	fdivs f0, f0, f1
/* 80091520 0008E460  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80091524 0008E464  80 83 00 00 */	lwz r4, 0(r3)
/* 80091528 0008E468  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 8009152C 0008E46C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80091530 0008E470  EC 22 08 28 */	fsubs f1, f2, f1
/* 80091534 0008E474  EC 01 00 24 */	fdivs f0, f1, f0
/* 80091538 0008E478  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8009153C 0008E47C  48 00 00 10 */	b lbl_8009154C
lbl_80091540:
/* 80091540 0008E480  C0 02 88 70 */	lfs f0, lbl_80516BD0@sda21(r2)
/* 80091544 0008E484  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80091548 0008E488  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_8009154C:
/* 8009154C 0008E48C  80 83 00 00 */	lwz r4, 0(r3)
/* 80091550 0008E490  C0 42 88 70 */	lfs f2, lbl_80516BD0@sda21(r2)
/* 80091554 0008E494  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80091558 0008E498  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 8009155C 0008E49C  41 82 00 38 */	beq lbl_80091594
/* 80091560 0008E4A0  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 80091564 0008E4A4  EC 02 00 28 */	fsubs f0, f2, f0
/* 80091568 0008E4A8  EC 21 10 28 */	fsubs f1, f1, f2
/* 8009156C 0008E4AC  EC 01 00 24 */	fdivs f0, f1, f0
/* 80091570 0008E4B0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80091574 0008E4B4  80 83 00 00 */	lwz r4, 0(r3)
/* 80091578 0008E4B8  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 8009157C 0008E4BC  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80091580 0008E4C0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80091584 0008E4C4  EC 02 00 28 */	fsubs f0, f2, f0
/* 80091588 0008E4C8  EC 01 00 24 */	fdivs f0, f1, f0
/* 8009158C 0008E4CC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80091590 0008E4D0  4E 80 00 20 */	blr 
lbl_80091594:
/* 80091594 0008E4D4  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 80091598 0008E4D8  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 8009159C 0008E4DC  4E 80 00 20 */	blr 
