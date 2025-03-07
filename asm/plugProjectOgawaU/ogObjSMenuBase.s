.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
.4byte __sinit_ogObjSMenuBase_cpp

.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
lbl_8048E658:
	.asciz "ogObjSMenuBase.cpp"
.balign 4
lbl_8048E66C:
	.asciz "s_menu_yajirushi_LR.blo"
.balign 4
lbl_8048E684:
	.asciz "Cancel ERR!\n"
.balign 4
lbl_8048E694:
	.asciz "updateFinish ERR!\n"
.balign 4
lbl_8048E6A8: #Shift-JIS
	.4byte 0x82BE82DF
	.4byte 0x82C582B7
	.4byte 0x0A000000
.balign 4
lbl_8048E6B4:
	.asciz "setYajiName ERR! \n"
.balign 4
lbl_8048E6C8:
	.asciz "FadeIn ERR!\n"
.balign 4
lbl_8048E6D8:
	.asciz "FadeOut ERR!\n"
.balign 4
lbl_8048E6E8:
	.asciz "screenObj.h"
.balign 4
lbl_8048E6F4:
	.asciz "P2Assert"

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__Q32og9newScreen12ObjSMenuBase
__vt__Q32og9newScreen12ObjSMenuBase:
	.4byte 0
	.4byte 0
	.4byte __dt__Q32og9newScreen12ObjSMenuBaseFv
	.4byte getChildCount__5CNodeFv
	.4byte 0
	.4byte 0
	.4byte "@24@__dt__Q32og9newScreen12ObjSMenuBaseFv"
	.4byte update__Q26Screen7ObjBaseFv
	.4byte draw__Q26Screen7ObjBaseFR8Graphics
	.4byte start__Q26Screen7ObjBaseFPCQ26Screen13StartSceneArg
	.4byte end__Q26Screen7ObjBaseFPCQ26Screen11EndSceneArg
	.4byte setOwner__Q26Screen7ObjBaseFPQ26Screen9SceneBase
	.4byte getOwner__Q26Screen7ObjBaseCFv
	.4byte create__Q26Screen7ObjBaseFP10JKRArchive
	.4byte confirmSetScene__Q26Screen7ObjBaseFRQ26Screen11SetSceneArg
	.4byte confirmStartScene__Q26Screen7ObjBaseFPQ26Screen13StartSceneArg
	.4byte confirmEndScene__Q26Screen7ObjBaseFPQ26Screen11EndSceneArg
	.4byte doStart__Q26Screen7ObjBaseFPCQ26Screen13StartSceneArg
	.4byte doEnd__Q26Screen7ObjBaseFPCQ26Screen11EndSceneArg
	.4byte doCreate__Q26Screen7ObjBaseFP10JKRArchive
	.4byte doUpdateFadein__Q32og9newScreen12ObjSMenuBaseFv
	.4byte doUpdateFadeinFinish__Q32og9newScreen12ObjSMenuBaseFv
	.4byte doUpdate__Q32og9newScreen12ObjSMenuBaseFv
	.4byte doUpdateFinish__Q32og9newScreen12ObjSMenuBaseFv
	.4byte doUpdateFadeout__Q26Screen7ObjBaseFv
	.4byte doUpdateFadeoutFinish__Q32og9newScreen12ObjSMenuBaseFv
	.4byte doDraw__Q26Screen7ObjBaseFR8Graphics
	.4byte doConfirmSetScene__Q26Screen7ObjBaseFRQ26Screen11SetSceneArg
	.4byte doConfirmStartScene__Q26Screen7ObjBaseFPQ26Screen13StartSceneArg
	.4byte doConfirmEndScene__Q26Screen7ObjBaseFRPQ26Screen11EndSceneArg
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte loop__Q32og9newScreen12ObjSMenuBaseFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte updateFadeIn__Q32og9newScreen12ObjSMenuBaseFv
	.4byte updateFadeOut__Q32og9newScreen12ObjSMenuBaseFv
	.4byte 0
.global __vt__Q32og9newScreen18StartSceneArgSMenu
__vt__Q32og9newScreen18StartSceneArgSMenu:
	.4byte 0
	.4byte 0
	.4byte getSceneType__Q32og9newScreen18StartSceneArgSMenuCFv
	.4byte "getClassSize__Q26Screen58StartSceneArgTemplate<Q32og9newScreen18StartSceneArgSMenu>Fv"
.global "__vt__Q26Screen58StartSceneArgTemplate<Q32og9newScreen18StartSceneArgSMenu>"
"__vt__Q26Screen58StartSceneArgTemplate<Q32og9newScreen18StartSceneArgSMenu>":
	.4byte 0
	.4byte 0
	.4byte getSceneType__Q26Screen12SceneArgBaseCFv
	.4byte "getClassSize__Q26Screen58StartSceneArgTemplate<Q32og9newScreen18StartSceneArgSMenu>Fv"
.global __vt__Q26Screen13StartSceneArg
__vt__Q26Screen13StartSceneArg:
	.4byte 0
	.4byte 0
	.4byte getSceneType__Q26Screen12SceneArgBaseCFv
	.4byte 0

.section .bss  # 0x804EFC20 - 0x8051467C
# ogObjSMenuBase.cpp
.comm msBaseVal__Q32og9newScreen12ObjSMenuBase, 0x1C, 4

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
angle$3853:
	.skip 0x4
init$3854:
	.skip 0x1

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
lbl_8051D880:
	.float 0.0
lbl_8051D884:
	.float 1.0
lbl_8051D888:
	.float 0.1
lbl_8051D88C:
	.float 0.7
lbl_8051D890:
	.float 0.3
lbl_8051D894:
	.float 800.0
lbl_8051D898:
	.float -800.0
lbl_8051D89C: #tau
	.float 6.2831855
lbl_8051D8A0:
	.float -325.9493
lbl_8051D8A4:
	.float 325.9493
lbl_8051D8A8: #halfpi
	.float 1.5707964
lbl_8051D8AC: #pi
	.float 3.1415927
lbl_8051D8B0: #pi/4
	.float 0.7853982
lbl_8051D8B4: #pi/3
	.float 2.3561945
lbl_8051D8B8: #pi/4 but more precise
	.float 0.78539824
.balign 8
lbl_8051D8C0:
	.4byte 0x43300000
	.4byte 0x00000000
lbl_8051D8C8:
	.float 30.0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q32og9newScreen12ObjSMenuBaseFv
__ct__Q32og9newScreen12ObjSMenuBaseFv:
/* 80316210 00313150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80316214 00313154  7C 08 02 A6 */	mflr r0
/* 80316218 00313158  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031621C 0031315C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80316220 00313160  7C 7F 1B 78 */	mr r31, r3
/* 80316224 00313164  48 13 D8 C5 */	bl __ct__Q26Screen7ObjBaseFv
/* 80316228 00313168  3C 60 80 4E */	lis r3, __vt__Q32og9newScreen12ObjSMenuBase@ha
/* 8031622C 0031316C  C0 22 F5 20 */	lfs f1, lbl_8051D880@sda21(r2)
/* 80316230 00313170  38 63 89 B0 */	addi r3, r3, __vt__Q32og9newScreen12ObjSMenuBase@l
/* 80316234 00313174  38 C0 00 04 */	li r6, 4
/* 80316238 00313178  90 7F 00 00 */	stw r3, 0(r31)
/* 8031623C 0031317C  38 03 00 10 */	addi r0, r3, 0x10
/* 80316240 00313180  38 A0 00 00 */	li r5, 0
/* 80316244 00313184  38 80 00 20 */	li r4, 0x20
/* 80316248 00313188  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8031624C 0031318C  38 00 00 40 */	li r0, 0x40
/* 80316250 00313190  C0 02 F5 24 */	lfs f0, lbl_8051D884@sda21(r2)
/* 80316254 00313194  38 60 00 10 */	li r3, 0x10
/* 80316258 00313198  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 8031625C 0031319C  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 80316260 003131A0  90 DF 00 38 */	stw r6, 0x38(r31)
/* 80316264 003131A4  98 BF 00 48 */	stb r5, 0x48(r31)
/* 80316268 003131A8  D0 3F 00 4C */	stfs f1, 0x4c(r31)
/* 8031626C 003131AC  98 BF 00 50 */	stb r5, 0x50(r31)
/* 80316270 003131B0  90 BF 00 3C */	stw r5, 0x3c(r31)
/* 80316274 003131B4  98 BF 00 74 */	stb r5, 0x74(r31)
/* 80316278 003131B8  98 BF 00 8C */	stb r5, 0x8c(r31)
/* 8031627C 003131BC  D0 3F 00 88 */	stfs f1, 0x88(r31)
/* 80316280 003131C0  90 9F 00 5C */	stw r4, 0x5c(r31)
/* 80316284 003131C4  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80316288 003131C8  90 BF 00 54 */	stw r5, 0x54(r31)
/* 8031628C 003131CC  90 BF 00 94 */	stw r5, 0x94(r31)
/* 80316290 003131D0  90 BF 00 98 */	stw r5, 0x98(r31)
/* 80316294 003131D4  90 BF 00 60 */	stw r5, 0x60(r31)
/* 80316298 003131D8  90 BF 00 64 */	stw r5, 0x64(r31)
/* 8031629C 003131DC  90 BF 00 68 */	stw r5, 0x68(r31)
/* 803162A0 003131E0  90 BF 00 6C */	stw r5, 0x6c(r31)
/* 803162A4 003131E4  90 BF 00 70 */	stw r5, 0x70(r31)
/* 803162A8 003131E8  90 BF 00 9C */	stw r5, 0x9c(r31)
/* 803162AC 003131EC  D0 1F 00 A4 */	stfs f0, 0xa4(r31)
/* 803162B0 003131F0  90 BF 00 A0 */	stw r5, 0xa0(r31)
/* 803162B4 003131F4  4B D0 DB F1 */	bl __nw__FUl
/* 803162B8 003131F8  28 03 00 00 */	cmplwi r3, 0
/* 803162BC 003131FC  41 82 00 24 */	beq lbl_803162E0
/* 803162C0 00313200  C0 22 F5 20 */	lfs f1, lbl_8051D880@sda21(r2)
/* 803162C4 00313204  C0 02 F5 28 */	lfs f0, lbl_8051D888@sda21(r2)
/* 803162C8 00313208  D0 23 00 00 */	stfs f1, 0(r3)
/* 803162CC 0031320C  C0 22 F5 2C */	lfs f1, lbl_8051D88C@sda21(r2)
/* 803162D0 00313210  D0 03 00 04 */	stfs f0, 4(r3)
/* 803162D4 00313214  C0 02 F5 30 */	lfs f0, lbl_8051D890@sda21(r2)
/* 803162D8 00313218  D0 23 00 08 */	stfs f1, 8(r3)
/* 803162DC 0031321C  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_803162E0:
/* 803162E0 00313220  90 7F 00 90 */	stw r3, 0x90(r31)
/* 803162E4 00313224  7F E3 FB 78 */	mr r3, r31
/* 803162E8 00313228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803162EC 0031322C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803162F0 00313230  7C 08 03 A6 */	mtlr r0
/* 803162F4 00313234  38 21 00 10 */	addi r1, r1, 0x10
/* 803162F8 00313238  4E 80 00 20 */	blr 

.global setFinishState__Q32og9newScreen12ObjSMenuBaseFl
setFinishState__Q32og9newScreen12ObjSMenuBaseFl:
/* 803162FC 0031323C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80316300 00313240  7C 08 02 A6 */	mflr r0
/* 80316304 00313244  90 01 00 14 */	stw r0, 0x14(r1)
/* 80316308 00313248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031630C 0031324C  7C 9F 23 78 */	mr r31, r4
/* 80316310 00313250  81 83 00 00 */	lwz r12, 0(r3)
/* 80316314 00313254  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80316318 00313258  7D 89 03 A6 */	mtctr r12
/* 8031631C 0031325C  4E 80 04 21 */	bctrl 
/* 80316320 00313260  93 E3 02 20 */	stw r31, 0x220(r3)
/* 80316324 00313264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80316328 00313268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031632C 0031326C  7C 08 03 A6 */	mtlr r0
/* 80316330 00313270  38 21 00 10 */	addi r1, r1, 0x10
/* 80316334 00313274  4E 80 00 20 */	blr 

.global setSMenuScale__Q32og9newScreen12ObjSMenuBaseFff
setSMenuScale__Q32og9newScreen12ObjSMenuBaseFff:
/* 80316338 00313278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031633C 0031327C  7C 08 02 A6 */	mflr r0
/* 80316340 00313280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80316344 00313284  80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 80316348 00313288  28 03 00 00 */	cmplwi r3, 0
/* 8031634C 0031328C  41 82 00 1C */	beq lbl_80316368
/* 80316350 00313290  D0 23 00 CC */	stfs f1, 0xcc(r3)
/* 80316354 00313294  D0 43 00 D0 */	stfs f2, 0xd0(r3)
/* 80316358 00313298  81 83 00 00 */	lwz r12, 0(r3)
/* 8031635C 0031329C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80316360 003132A0  7D 89 03 A6 */	mtctr r12
/* 80316364 003132A4  4E 80 04 21 */	bctrl 
lbl_80316368:
/* 80316368 003132A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031636C 003132AC  7C 08 03 A6 */	mtlr r0
/* 80316370 003132B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80316374 003132B4  4E 80 00 20 */	blr 

.global doCreateAfter__Q32og9newScreen12ObjSMenuBaseFP10JKRArchivePQ29P2DScreen3Mgr
doCreateAfter__Q32og9newScreen12ObjSMenuBaseFP10JKRArchivePQ29P2DScreen3Mgr:
/* 80316378 003132B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031637C 003132BC  7C 08 02 A6 */	mflr r0
/* 80316380 003132C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80316384 003132C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80316388 003132C8  7C 7F 1B 78 */	mr r31, r3
/* 8031638C 003132CC  3C 60 65 63 */	lis r3, 0x65637431@ha
/* 80316390 003132D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80316394 003132D4  38 C3 74 31 */	addi r6, r3, 0x65637431@l
/* 80316398 003132D8  7C 9E 23 78 */	mr r30, r4
/* 8031639C 003132DC  90 BF 00 9C */	stw r5, 0x9c(r31)
/* 803163A0 003132E0  3C A0 50 65 */	lis r5, 0x50656666@ha
/* 803163A4 003132E4  38 A5 66 66 */	addi r5, r5, 0x50656666@l
/* 803163A8 003132E8  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 803163AC 003132EC  81 83 00 00 */	lwz r12, 0(r3)
/* 803163B0 003132F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 803163B4 003132F4  7D 89 03 A6 */	mtctr r12
/* 803163B8 003132F8  4E 80 04 21 */	bctrl 
/* 803163BC 003132FC  90 7F 00 94 */	stw r3, 0x94(r31)
/* 803163C0 00313300  3C A0 65 63 */	lis r5, 0x65637432@ha
/* 803163C4 00313304  3C 80 50 65 */	lis r4, 0x50656666@ha
/* 803163C8 00313308  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 803163CC 0031330C  38 C5 74 32 */	addi r6, r5, 0x65637432@l
/* 803163D0 00313310  38 A4 66 66 */	addi r5, r4, 0x50656666@l
/* 803163D4 00313314  81 83 00 00 */	lwz r12, 0(r3)
/* 803163D8 00313318  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 803163DC 0031331C  7D 89 03 A6 */	mtctr r12
/* 803163E0 00313320  4E 80 04 21 */	bctrl 
/* 803163E4 00313324  90 7F 00 98 */	stw r3, 0x98(r31)
/* 803163E8 00313328  3C A0 66 65 */	lis r5, 0x66656374@ha
/* 803163EC 0031332C  3C 80 00 50 */	lis r4, 0x00506566@ha
/* 803163F0 00313330  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 803163F4 00313334  38 C5 63 74 */	addi r6, r5, 0x66656374@l
/* 803163F8 00313338  38 A4 65 66 */	addi r5, r4, 0x00506566@l
/* 803163FC 0031333C  4B FE CA B1 */	bl TagSearch__Q22og6ScreenFP9J2DScreenUx
/* 80316400 00313340  90 7F 00 54 */	stw r3, 0x54(r31)
/* 80316404 00313344  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 80316408 00313348  4B FE CF 0D */	bl setAlphaScreen__Q22og6ScreenFP7J2DPane
/* 8031640C 0031334C  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 80316410 00313350  3C 80 73 69 */	lis r4, 0x73697A65@ha
/* 80316414 00313354  38 C4 7A 65 */	addi r6, r4, 0x73697A65@l
/* 80316418 00313358  38 A0 00 4E */	li r5, 0x4e
/* 8031641C 0031335C  81 83 00 00 */	lwz r12, 0(r3)
/* 80316420 00313360  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80316424 00313364  7D 89 03 A6 */	mtctr r12
/* 80316428 00313368  4E 80 04 21 */	bctrl 
/* 8031642C 0031336C  90 7F 00 A0 */	stw r3, 0xa0(r31)
/* 80316430 00313370  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 80316434 00313374  4B FF 39 CD */	bl setCallBackMessage__Q22og6ScreenFPQ29P2DScreen3Mgr
/* 80316438 00313378  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8031643C 0031337C  48 01 40 05 */	bl setFurikoScreen__Q22og6ScreenFPQ29P2DScreen3Mgr
/* 80316440 00313380  38 60 01 48 */	li r3, 0x148
/* 80316444 00313384  4B D0 DA 61 */	bl __nw__FUl
/* 80316448 00313388  7C 60 1B 79 */	or. r0, r3, r3
/* 8031644C 0031338C  41 82 00 0C */	beq lbl_80316458
/* 80316450 00313390  48 11 E9 5D */	bl __ct__Q29P2DScreen10Mgr_tuningFv
/* 80316454 00313394  7C 60 1B 78 */	mr r0, r3
lbl_80316458:
/* 80316458 00313398  90 1F 00 60 */	stw r0, 0x60(r31)
/* 8031645C 0031339C  3C 60 80 49 */	lis r3, lbl_8048E66C@ha
/* 80316460 003133A0  38 83 E6 6C */	addi r4, r3, lbl_8048E66C@l
/* 80316464 003133A4  7F C6 F3 78 */	mr r6, r30
/* 80316468 003133A8  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8031646C 003133AC  3C A0 01 04 */	lis r5, 0x104
/* 80316470 003133B0  4B D2 91 B5 */	bl set__9J2DScreenFPCcUlP10JKRArchive
/* 80316474 003133B4  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80316478 003133B8  4B FE CE 9D */	bl setAlphaScreen__Q22og6ScreenFP7J2DPane
/* 8031647C 003133BC  3C A0 6A 69 */	lis r5, 0x6A695F6C@ha
/* 80316480 003133C0  3C 80 00 4E */	lis r4, 0x004E7961@ha
/* 80316484 003133C4  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80316488 003133C8  38 C5 5F 6C */	addi r6, r5, 0x6A695F6C@l
/* 8031648C 003133CC  38 A4 79 61 */	addi r5, r4, 0x004E7961@l
/* 80316490 003133D0  4B FE CA 1D */	bl TagSearch__Q22og6ScreenFP9J2DScreenUx
/* 80316494 003133D4  90 7F 00 64 */	stw r3, 0x64(r31)
/* 80316498 003133D8  3C 80 6A 69 */	lis r4, 0x6A695F72@ha
/* 8031649C 003133DC  3C 60 00 4E */	lis r3, 0x004E7961@ha
/* 803164A0 003133E0  80 FF 00 64 */	lwz r7, 0x64(r31)
/* 803164A4 003133E4  38 C4 5F 72 */	addi r6, r4, 0x6A695F72@l
/* 803164A8 003133E8  38 A3 79 61 */	addi r5, r3, 0x004E7961@l
/* 803164AC 003133EC  C0 07 00 D4 */	lfs f0, 0xd4(r7)
/* 803164B0 003133F0  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 803164B4 003133F4  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 803164B8 003133F8  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 803164BC 003133FC  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 803164C0 00313400  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 803164C4 00313404  4B FE C9 E9 */	bl TagSearch__Q22og6ScreenFP9J2DScreenUx
/* 803164C8 00313408  90 7F 00 68 */	stw r3, 0x68(r31)
/* 803164CC 0031340C  3C 80 6A 69 */	lis r4, 0x6A695F6C@ha
/* 803164D0 00313410  3C 60 00 54 */	lis r3, 0x00547961@ha
/* 803164D4 00313414  80 FF 00 68 */	lwz r7, 0x68(r31)
/* 803164D8 00313418  38 C4 5F 6C */	addi r6, r4, 0x6A695F6C@l
/* 803164DC 0031341C  38 A3 79 61 */	addi r5, r3, 0x00547961@l
/* 803164E0 00313420  C0 07 00 D4 */	lfs f0, 0xd4(r7)
/* 803164E4 00313424  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 803164E8 00313428  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 803164EC 0031342C  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 803164F0 00313430  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 803164F4 00313434  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 803164F8 00313438  4B FE C9 B5 */	bl TagSearch__Q22og6ScreenFP9J2DScreenUx
/* 803164FC 0031343C  90 7F 00 6C */	stw r3, 0x6c(r31)
/* 80316500 00313440  3C A0 6A 69 */	lis r5, 0x6A695F72@ha
/* 80316504 00313444  3C 80 00 54 */	lis r4, 0x00547961@ha
/* 80316508 00313448  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8031650C 0031344C  38 C5 5F 72 */	addi r6, r5, 0x6A695F72@l
/* 80316510 00313450  38 A4 79 61 */	addi r5, r4, 0x00547961@l
/* 80316514 00313454  4B FE C9 99 */	bl TagSearch__Q22og6ScreenFP9J2DScreenUx
/* 80316518 00313458  90 7F 00 70 */	stw r3, 0x70(r31)
/* 8031651C 0031345C  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80316520 00313460  4B FF 38 E1 */	bl setCallBackMessage__Q22og6ScreenFPQ29P2DScreen3Mgr
/* 80316524 00313464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80316528 00313468  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031652C 0031346C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80316530 00313470  7C 08 03 A6 */	mtlr r0
/* 80316534 00313474  38 21 00 10 */	addi r1, r1, 0x10
/* 80316538 00313478  4E 80 00 20 */	blr 

.global commonUpdateBase__Q32og9newScreen12ObjSMenuBaseFv
commonUpdateBase__Q32og9newScreen12ObjSMenuBaseFv:
/* 8031653C 0031347C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80316540 00313480  7C 08 02 A6 */	mflr r0
/* 80316544 00313484  90 01 00 14 */	stw r0, 0x14(r1)
/* 80316548 00313488  48 00 06 41 */	bl updateYaji__Q32og9newScreen12ObjSMenuBaseFv
/* 8031654C 0031348C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80316550 00313490  7C 08 03 A6 */	mtlr r0
/* 80316554 00313494  38 21 00 10 */	addi r1, r1, 0x10
/* 80316558 00313498  4E 80 00 20 */	blr 

.global doUpdate__Q32og9newScreen12ObjSMenuBaseFv
doUpdate__Q32og9newScreen12ObjSMenuBaseFv:
/* 8031655C 0031349C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80316560 003134A0  7C 08 02 A6 */	mflr r0
/* 80316564 003134A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80316568 003134A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031656C 003134AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80316570 003134B0  3B C0 00 00 */	li r30, 0
/* 80316574 003134B4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80316578 003134B8  93 81 00 10 */	stw r28, 0x10(r1)
/* 8031657C 003134BC  7C 7C 1B 78 */	mr r28, r3
/* 80316580 003134C0  88 03 00 48 */	lbz r0, 0x48(r3)
/* 80316584 003134C4  28 00 00 00 */	cmplwi r0, 0
/* 80316588 003134C8  41 82 00 48 */	beq lbl_803165D0
/* 8031658C 003134CC  80 1C 00 3C */	lwz r0, 0x3c(r28)
/* 80316590 003134D0  2C 00 00 03 */	cmpwi r0, 3
/* 80316594 003134D4  40 82 00 0C */	bne lbl_803165A0
/* 80316598 003134D8  3B C0 00 01 */	li r30, 1
/* 8031659C 003134DC  48 00 00 C8 */	b lbl_80316664
lbl_803165A0:
/* 803165A0 003134E0  2C 00 00 02 */	cmpwi r0, 2
/* 803165A4 003134E4  40 82 00 0C */	bne lbl_803165B0
/* 803165A8 003134E8  3B C0 00 01 */	li r30, 1
/* 803165AC 003134EC  48 00 00 B8 */	b lbl_80316664
lbl_803165B0:
/* 803165B0 003134F0  3C 60 80 49 */	lis r3, lbl_8048E658@ha
/* 803165B4 003134F4  3C A0 80 49 */	lis r5, lbl_8048E684@ha
/* 803165B8 003134F8  38 63 E6 58 */	addi r3, r3, lbl_8048E658@l
/* 803165BC 003134FC  38 80 01 2D */	li r4, 0x12d
/* 803165C0 00313500  38 A5 E6 84 */	addi r5, r5, lbl_8048E684@l
/* 803165C4 00313504  4C C6 31 82 */	crclr 6
/* 803165C8 00313508  4B D1 40 79 */	bl panic_f__12JUTExceptionFPCciPCce
/* 803165CC 0031350C  48 00 00 98 */	b lbl_80316664
lbl_803165D0:
/* 803165D0 00313510  81 83 00 00 */	lwz r12, 0(r3)
/* 803165D4 00313514  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 803165D8 00313518  7D 89 03 A6 */	mtctr r12
/* 803165DC 0031351C  4E 80 04 21 */	bctrl 
/* 803165E0 00313520  83 FC 00 5C */	lwz r31, 0x5c(r28)
/* 803165E4 00313524  7C 7D 1B 78 */	mr r29, r3
/* 803165E8 00313528  48 13 BC 49 */	bl getGamePad__Q26Screen9SceneBaseCFv
/* 803165EC 0031352C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803165F0 00313530  7C 00 F8 39 */	and. r0, r0, r31
/* 803165F4 00313534  41 82 00 14 */	beq lbl_80316608
/* 803165F8 00313538  38 00 00 03 */	li r0, 3
/* 803165FC 0031353C  3B C0 00 01 */	li r30, 1
/* 80316600 00313540  90 1C 00 3C */	stw r0, 0x3c(r28)
/* 80316604 00313544  48 00 00 60 */	b lbl_80316664
lbl_80316608:
/* 80316608 00313548  83 FC 00 58 */	lwz r31, 0x58(r28)
/* 8031660C 0031354C  7F A3 EB 78 */	mr r3, r29
/* 80316610 00313550  48 13 BC 21 */	bl getGamePad__Q26Screen9SceneBaseCFv
/* 80316614 00313554  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80316618 00313558  7C 00 F8 39 */	and. r0, r0, r31
/* 8031661C 0031355C  41 82 00 14 */	beq lbl_80316630
/* 80316620 00313560  38 00 00 02 */	li r0, 2
/* 80316624 00313564  3B C0 00 01 */	li r30, 1
/* 80316628 00313568  90 1C 00 3C */	stw r0, 0x3c(r28)
/* 8031662C 0031356C  48 00 00 38 */	b lbl_80316664
lbl_80316630:
/* 80316630 00313570  7F A3 EB 78 */	mr r3, r29
/* 80316634 00313574  48 13 BB FD */	bl getGamePad__Q26Screen9SceneBaseCFv
/* 80316638 00313578  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8031663C 0031357C  70 00 12 00 */	andi. r0, r0, 0x1200
/* 80316640 00313580  41 82 00 24 */	beq lbl_80316664
/* 80316644 00313584  38 00 00 01 */	li r0, 1
/* 80316648 00313588  7F 83 E3 78 */	mr r3, r28
/* 8031664C 0031358C  90 1C 00 3C */	stw r0, 0x3c(r28)
/* 80316650 00313590  81 9C 00 00 */	lwz r12, 0(r28)
/* 80316654 00313594  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 80316658 00313598  7D 89 03 A6 */	mtctr r12
/* 8031665C 0031359C  4E 80 04 21 */	bctrl 
/* 80316660 003135A0  3B C0 00 01 */	li r30, 1
lbl_80316664:
/* 80316664 003135A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80316668 003135A8  7F C3 F3 78 */	mr r3, r30
/* 8031666C 003135AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80316670 003135B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80316674 003135B4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80316678 003135B8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8031667C 003135BC  7C 08 03 A6 */	mtlr r0
/* 80316680 003135C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80316684 003135C4  4E 80 00 20 */	blr 

.global doUpdateFinish__Q32og9newScreen12ObjSMenuBaseFv
doUpdateFinish__Q32og9newScreen12ObjSMenuBaseFv:
/* 80316688 003135C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031668C 003135CC  7C 08 02 A6 */	mflr r0
/* 80316690 003135D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80316694 003135D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80316698 003135D8  7C 7F 1B 78 */	mr r31, r3
/* 8031669C 003135DC  48 00 04 E1 */	bl stopYaji__Q32og9newScreen12ObjSMenuBaseFv
/* 803166A0 003135E0  C0 02 F5 20 */	lfs f0, lbl_8051D880@sda21(r2)
/* 803166A4 003135E4  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 803166A8 003135E8  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 803166AC 003135EC  2C 00 00 02 */	cmpwi r0, 2
/* 803166B0 003135F0  41 82 00 48 */	beq lbl_803166F8
/* 803166B4 003135F4  40 80 00 14 */	bge lbl_803166C8
/* 803166B8 003135F8  2C 00 00 00 */	cmpwi r0, 0
/* 803166BC 003135FC  41 82 00 54 */	beq lbl_80316710
/* 803166C0 00313600  40 80 00 14 */	bge lbl_803166D4
/* 803166C4 00313604  48 00 00 64 */	b lbl_80316728
lbl_803166C8:
/* 803166C8 00313608  2C 00 00 04 */	cmpwi r0, 4
/* 803166CC 0031360C  40 80 00 5C */	bge lbl_80316728
/* 803166D0 00313610  48 00 00 10 */	b lbl_803166E0
lbl_803166D4:
/* 803166D4 00313614  7F E3 FB 78 */	mr r3, r31
/* 803166D8 00313618  48 00 00 F5 */	bl close_L__Q32og9newScreen12ObjSMenuBaseFv
/* 803166DC 0031361C  48 00 00 68 */	b lbl_80316744
lbl_803166E0:
/* 803166E0 00313620  7F E3 FB 78 */	mr r3, r31
/* 803166E4 00313624  81 9F 00 00 */	lwz r12, 0(r31)
/* 803166E8 00313628  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 803166EC 0031362C  7D 89 03 A6 */	mtctr r12
/* 803166F0 00313630  4E 80 04 21 */	bctrl 
/* 803166F4 00313634  48 00 00 50 */	b lbl_80316744
lbl_803166F8:
/* 803166F8 00313638  7F E3 FB 78 */	mr r3, r31
/* 803166FC 0031363C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80316700 00313640  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 80316704 00313644  7D 89 03 A6 */	mtctr r12
/* 80316708 00313648  4E 80 04 21 */	bctrl 
/* 8031670C 0031364C  48 00 00 38 */	b lbl_80316744
lbl_80316710:
/* 80316710 00313650  7F E3 FB 78 */	mr r3, r31
/* 80316714 00313654  81 9F 00 00 */	lwz r12, 0(r31)
/* 80316718 00313658  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8031671C 0031365C  7D 89 03 A6 */	mtctr r12
/* 80316720 00313660  4E 80 04 21 */	bctrl 
/* 80316724 00313664  48 00 00 20 */	b lbl_80316744
lbl_80316728:
/* 80316728 00313668  3C 60 80 49 */	lis r3, lbl_8048E658@ha
/* 8031672C 0031366C  3C A0 80 49 */	lis r5, lbl_8048E694@ha
/* 80316730 00313670  38 63 E6 58 */	addi r3, r3, lbl_8048E658@l
/* 80316734 00313674  38 80 01 5C */	li r4, 0x15c
/* 80316738 00313678  38 A5 E6 94 */	addi r5, r5, lbl_8048E694@l
/* 8031673C 0031367C  4C C6 31 82 */	crclr 6
/* 80316740 00313680  4B D1 3F 01 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80316744:
/* 80316744 00313684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80316748 00313688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031674C 0031368C  7C 08 03 A6 */	mtlr r0
/* 80316750 00313690  38 21 00 10 */	addi r1, r1, 0x10
/* 80316754 00313694  4E 80 00 20 */	blr 

.global startBackupScene__Q32og9newScreen12ObjSMenuBaseFv
startBackupScene__Q32og9newScreen12ObjSMenuBaseFv:
/* 80316758 00313698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031675C 0031369C  7C 08 02 A6 */	mflr r0
/* 80316760 003136A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80316764 003136A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80316768 003136A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8031676C 003136AC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80316770 003136B0  7D 89 03 A6 */	mtctr r12
/* 80316774 003136B4  4E 80 04 21 */	bctrl 
/* 80316778 003136B8  7C 7F 1B 78 */	mr r31, r3
/* 8031677C 003136BC  48 13 B8 45 */	bl setBackupScene__Q26Screen9SceneBaseFv
/* 80316780 003136C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80316784 003136C4  41 82 00 34 */	beq lbl_803167B8
/* 80316788 003136C8  7F E3 FB 78 */	mr r3, r31
/* 8031678C 003136CC  38 80 00 00 */	li r4, 0
/* 80316790 003136D0  48 13 B7 D1 */	bl startScene__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
/* 80316794 003136D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80316798 003136D8  40 82 00 20 */	bne lbl_803167B8
/* 8031679C 003136DC  3C 60 80 49 */	lis r3, lbl_8048E658@ha
/* 803167A0 003136E0  3C A0 80 49 */	lis r5, lbl_8048E6A8@ha
/* 803167A4 003136E4  38 63 E6 58 */	addi r3, r3, lbl_8048E658@l
/* 803167A8 003136E8  38 80 01 6E */	li r4, 0x16e
/* 803167AC 003136EC  38 A5 E6 A8 */	addi r5, r5, lbl_8048E6A8@l
/* 803167B0 003136F0  4C C6 31 82 */	crclr 6
/* 803167B4 003136F4  4B D1 3E 8D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_803167B8:
/* 803167B8 003136F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803167BC 003136FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803167C0 00313700  7C 08 03 A6 */	mtlr r0
/* 803167C4 00313704  38 21 00 10 */	addi r1, r1, 0x10
/* 803167C8 00313708  4E 80 00 20 */	blr 

.global close_L__Q32og9newScreen12ObjSMenuBaseFv
close_L__Q32og9newScreen12ObjSMenuBaseFv:
/* 803167CC 0031370C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803167D0 00313710  7C 08 02 A6 */	mflr r0
/* 803167D4 00313714  90 01 00 14 */	stw r0, 0x14(r1)
/* 803167D8 00313718  38 00 00 02 */	li r0, 2
/* 803167DC 0031371C  90 03 00 38 */	stw r0, 0x38(r3)
/* 803167E0 00313720  80 6D 97 A8 */	lwz r3, ogSound__2og@sda21(r13)
/* 803167E4 00313724  4B FF 63 F1 */	bl setClose__Q22og5SoundFv
/* 803167E8 00313728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803167EC 0031372C  7C 08 03 A6 */	mtlr r0
/* 803167F0 00313730  38 21 00 10 */	addi r1, r1, 0x10
/* 803167F4 00313734  4E 80 00 20 */	blr 

.global jump_L__Q32og9newScreen12ObjSMenuBaseFRQ26Screen11SetSceneArg
jump_L__Q32og9newScreen12ObjSMenuBaseFRQ26Screen11SetSceneArg:
/* 803167F8 00313738  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803167FC 0031373C  7C 08 02 A6 */	mflr r0
/* 80316800 00313740  90 01 00 24 */	stw r0, 0x24(r1)
/* 80316804 00313744  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80316808 00313748  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8031680C 0031374C  7C 9E 23 78 */	mr r30, r4
/* 80316810 00313750  81 83 00 00 */	lwz r12, 0(r3)
/* 80316814 00313754  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80316818 00313758  7D 89 03 A6 */	mtctr r12
/* 8031681C 0031375C  4E 80 04 21 */	bctrl 
/* 80316820 00313760  38 00 00 00 */	li r0, 0
/* 80316824 00313764  7C 7F 1B 78 */	mr r31, r3
/* 80316828 00313768  98 1E 00 09 */	stb r0, 9(r30)
/* 8031682C 0031376C  7F C4 F3 78 */	mr r4, r30
/* 80316830 00313770  48 13 B7 01 */	bl setScene__Q26Screen9SceneBaseFRQ26Screen11SetSceneArg
/* 80316834 00313774  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80316838 00313778  41 82 00 8C */	beq lbl_803168C4
/* 8031683C 0031377C  3C 80 80 4E */	lis r4, __vt__Q26Screen12SceneArgBase@ha
/* 80316840 00313780  3C 60 80 4E */	lis r3, __vt__Q26Screen13StartSceneArg@ha
/* 80316844 00313784  38 04 84 68 */	addi r0, r4, __vt__Q26Screen12SceneArgBase@l
/* 80316848 00313788  3C 80 80 4E */	lis r4, "__vt__Q26Screen58StartSceneArgTemplate<Q32og9newScreen18StartSceneArgSMenu>"@ha
/* 8031684C 0031378C  90 01 00 08 */	stw r0, 8(r1)
/* 80316850 00313790  38 A3 8A 78 */	addi r5, r3, __vt__Q26Screen13StartSceneArg@l
/* 80316854 00313794  3C 60 80 4E */	lis r3, __vt__Q32og9newScreen18StartSceneArgSMenu@ha
/* 80316858 00313798  38 00 00 01 */	li r0, 1
/* 8031685C 0031379C  90 A1 00 08 */	stw r5, 8(r1)
/* 80316860 003137A0  38 A4 8A 68 */	addi r5, r4, "__vt__Q26Screen58StartSceneArgTemplate<Q32og9newScreen18StartSceneArgSMenu>"@l
/* 80316864 003137A4  38 83 8A 58 */	addi r4, r3, __vt__Q32og9newScreen18StartSceneArgSMenu@l
/* 80316868 003137A8  7F C3 F3 78 */	mr r3, r30
/* 8031686C 003137AC  90 A1 00 08 */	stw r5, 8(r1)
/* 80316870 003137B0  90 81 00 08 */	stw r4, 8(r1)
/* 80316874 003137B4  98 01 00 10 */	stb r0, 0x10(r1)
/* 80316878 003137B8  81 9E 00 00 */	lwz r12, 0(r30)
/* 8031687C 003137BC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80316880 003137C0  7D 89 03 A6 */	mtctr r12
/* 80316884 003137C4  4E 80 04 21 */	bctrl 
/* 80316888 003137C8  38 00 00 00 */	li r0, 0
/* 8031688C 003137CC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80316890 003137D0  7F E3 FB 78 */	mr r3, r31
/* 80316894 003137D4  38 81 00 08 */	addi r4, r1, 8
/* 80316898 003137D8  98 01 00 10 */	stb r0, 0x10(r1)
/* 8031689C 003137DC  48 13 B6 C5 */	bl startScene__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
/* 803168A0 003137E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803168A4 003137E4  40 82 00 20 */	bne lbl_803168C4
/* 803168A8 003137E8  3C 60 80 49 */	lis r3, lbl_8048E658@ha
/* 803168AC 003137EC  3C A0 80 49 */	lis r5, lbl_8048E6A8@ha
/* 803168B0 003137F0  38 63 E6 58 */	addi r3, r3, lbl_8048E658@l
/* 803168B4 003137F4  38 80 01 8A */	li r4, 0x18a
/* 803168B8 003137F8  38 A5 E6 A8 */	addi r5, r5, lbl_8048E6A8@l
/* 803168BC 003137FC  4C C6 31 82 */	crclr 6
/* 803168C0 00313800  4B D1 3D 81 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_803168C4:
/* 803168C4 00313804  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803168C8 00313808  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803168CC 0031380C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803168D0 00313810  7C 08 03 A6 */	mtlr r0
/* 803168D4 00313814  38 21 00 20 */	addi r1, r1, 0x20
/* 803168D8 00313818  4E 80 00 20 */	blr 

.global jump_R__Q32og9newScreen12ObjSMenuBaseFRQ26Screen11SetSceneArg
jump_R__Q32og9newScreen12ObjSMenuBaseFRQ26Screen11SetSceneArg:
/* 803168DC 0031381C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803168E0 00313820  7C 08 02 A6 */	mflr r0
/* 803168E4 00313824  90 01 00 24 */	stw r0, 0x24(r1)
/* 803168E8 00313828  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803168EC 0031382C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803168F0 00313830  7C 9E 23 78 */	mr r30, r4
/* 803168F4 00313834  81 83 00 00 */	lwz r12, 0(r3)
/* 803168F8 00313838  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 803168FC 0031383C  7D 89 03 A6 */	mtctr r12
/* 80316900 00313840  4E 80 04 21 */	bctrl 
/* 80316904 00313844  38 00 00 00 */	li r0, 0
/* 80316908 00313848  7C 7F 1B 78 */	mr r31, r3
/* 8031690C 0031384C  98 1E 00 09 */	stb r0, 9(r30)
/* 80316910 00313850  7F C4 F3 78 */	mr r4, r30
/* 80316914 00313854  48 13 B6 1D */	bl setScene__Q26Screen9SceneBaseFRQ26Screen11SetSceneArg
/* 80316918 00313858  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8031691C 0031385C  41 82 00 8C */	beq lbl_803169A8
/* 80316920 00313860  3C 80 80 4E */	lis r4, __vt__Q26Screen12SceneArgBase@ha
/* 80316924 00313864  3C 60 80 4E */	lis r3, __vt__Q26Screen13StartSceneArg@ha
/* 80316928 00313868  38 04 84 68 */	addi r0, r4, __vt__Q26Screen12SceneArgBase@l
/* 8031692C 0031386C  3C 80 80 4E */	lis r4, "__vt__Q26Screen58StartSceneArgTemplate<Q32og9newScreen18StartSceneArgSMenu>"@ha
/* 80316930 00313870  90 01 00 08 */	stw r0, 8(r1)
/* 80316934 00313874  38 A3 8A 78 */	addi r5, r3, __vt__Q26Screen13StartSceneArg@l
/* 80316938 00313878  3C 60 80 4E */	lis r3, __vt__Q32og9newScreen18StartSceneArgSMenu@ha
/* 8031693C 0031387C  38 00 00 01 */	li r0, 1
/* 80316940 00313880  90 A1 00 08 */	stw r5, 8(r1)
/* 80316944 00313884  38 A4 8A 68 */	addi r5, r4, "__vt__Q26Screen58StartSceneArgTemplate<Q32og9newScreen18StartSceneArgSMenu>"@l
/* 80316948 00313888  38 83 8A 58 */	addi r4, r3, __vt__Q32og9newScreen18StartSceneArgSMenu@l
/* 8031694C 0031388C  7F C3 F3 78 */	mr r3, r30
/* 80316950 00313890  90 A1 00 08 */	stw r5, 8(r1)
/* 80316954 00313894  90 81 00 08 */	stw r4, 8(r1)
/* 80316958 00313898  98 01 00 10 */	stb r0, 0x10(r1)
/* 8031695C 0031389C  81 9E 00 00 */	lwz r12, 0(r30)
/* 80316960 003138A0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80316964 003138A4  7D 89 03 A6 */	mtctr r12
/* 80316968 003138A8  4E 80 04 21 */	bctrl 
/* 8031696C 003138AC  38 00 00 01 */	li r0, 1
/* 80316970 003138B0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80316974 003138B4  7F E3 FB 78 */	mr r3, r31
/* 80316978 003138B8  38 81 00 08 */	addi r4, r1, 8
/* 8031697C 003138BC  98 01 00 10 */	stb r0, 0x10(r1)
/* 80316980 003138C0  48 13 B5 E1 */	bl startScene__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
/* 80316984 003138C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80316988 003138C8  40 82 00 20 */	bne lbl_803169A8
/* 8031698C 003138CC  3C 60 80 49 */	lis r3, lbl_8048E658@ha
/* 80316990 003138D0  3C A0 80 49 */	lis r5, lbl_8048E6A8@ha
/* 80316994 003138D4  38 63 E6 58 */	addi r3, r3, lbl_8048E658@l
/* 80316998 003138D8  38 80 01 8A */	li r4, 0x18a
/* 8031699C 003138DC  38 A5 E6 A8 */	addi r5, r5, lbl_8048E6A8@l
/* 803169A0 003138E0  4C C6 31 82 */	crclr 6
/* 803169A4 003138E4  4B D1 3C 9D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_803169A8:
/* 803169A8 003138E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803169AC 003138EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803169B0 003138F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803169B4 003138F4  7C 08 03 A6 */	mtlr r0
/* 803169B8 003138F8  38 21 00 20 */	addi r1, r1, 0x20
/* 803169BC 003138FC  4E 80 00 20 */	blr 

.global start_LR__Q32og9newScreen12ObjSMenuBaseFPCQ26Screen13StartSceneArg
start_LR__Q32og9newScreen12ObjSMenuBaseFPCQ26Screen13StartSceneArg:
/* 803169C0 00313900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803169C4 00313904  7C 08 02 A6 */	mflr r0
/* 803169C8 00313908  C0 02 F5 20 */	lfs f0, lbl_8051D880@sda21(r2)
/* 803169CC 0031390C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803169D0 00313910  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803169D4 00313914  7C 9F 23 79 */	or. r31, r4, r4
/* 803169D8 00313918  93 C1 00 08 */	stw r30, 8(r1)
/* 803169DC 0031391C  7C 7E 1B 78 */	mr r30, r3
/* 803169E0 00313920  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 803169E4 00313924  41 82 00 F8 */	beq lbl_80316ADC
/* 803169E8 00313928  7F E3 FB 78 */	mr r3, r31
/* 803169EC 0031392C  81 9F 00 00 */	lwz r12, 0(r31)
/* 803169F0 00313930  81 8C 00 08 */	lwz r12, 8(r12)
/* 803169F4 00313934  7D 89 03 A6 */	mtctr r12
/* 803169F8 00313938  4E 80 04 21 */	bctrl 
/* 803169FC 0031393C  2C 03 27 1D */	cmpwi r3, 0x271d
/* 80316A00 00313940  41 82 00 90 */	beq lbl_80316A90
/* 80316A04 00313944  7F E3 FB 78 */	mr r3, r31
/* 80316A08 00313948  81 9F 00 00 */	lwz r12, 0(r31)
/* 80316A0C 0031394C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80316A10 00313950  7D 89 03 A6 */	mtctr r12
/* 80316A14 00313954  4E 80 04 21 */	bctrl 
/* 80316A18 00313958  2C 03 27 1C */	cmpwi r3, 0x271c
/* 80316A1C 0031395C  41 82 00 74 */	beq lbl_80316A90
/* 80316A20 00313960  7F E3 FB 78 */	mr r3, r31
/* 80316A24 00313964  81 9F 00 00 */	lwz r12, 0(r31)
/* 80316A28 00313968  81 8C 00 08 */	lwz r12, 8(r12)
/* 80316A2C 0031396C  7D 89 03 A6 */	mtctr r12
/* 80316A30 00313970  4E 80 04 21 */	bctrl 
/* 80316A34 00313974  2C 03 27 2B */	cmpwi r3, 0x272b
/* 80316A38 00313978  41 82 00 58 */	beq lbl_80316A90
/* 80316A3C 0031397C  7F E3 FB 78 */	mr r3, r31
/* 80316A40 00313980  81 9F 00 00 */	lwz r12, 0(r31)
/* 80316A44 00313984  81 8C 00 08 */	lwz r12, 8(r12)
/* 80316A48 00313988  7D 89 03 A6 */	mtctr r12
/* 80316A4C 0031398C  4E 80 04 21 */	bctrl 
/* 80316A50 00313990  2C 03 27 1A */	cmpwi r3, 0x271a
/* 80316A54 00313994  41 82 00 3C */	beq lbl_80316A90
/* 80316A58 00313998  7F E3 FB 78 */	mr r3, r31
/* 80316A5C 0031399C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80316A60 003139A0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80316A64 003139A4  7D 89 03 A6 */	mtctr r12
/* 80316A68 003139A8  4E 80 04 21 */	bctrl 
/* 80316A6C 003139AC  2C 03 27 1B */	cmpwi r3, 0x271b
/* 80316A70 003139B0  41 82 00 20 */	beq lbl_80316A90
/* 80316A74 003139B4  7F E3 FB 78 */	mr r3, r31
/* 80316A78 003139B8  81 9F 00 00 */	lwz r12, 0(r31)
/* 80316A7C 003139BC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80316A80 003139C0  7D 89 03 A6 */	mtctr r12
/* 80316A84 003139C4  4E 80 04 21 */	bctrl 
/* 80316A88 003139C8  2C 03 27 28 */	cmpwi r3, 0x2728
/* 80316A8C 003139CC  40 82 00 68 */	bne lbl_80316AF4
lbl_80316A90:
/* 80316A90 003139D0  88 1F 00 08 */	lbz r0, 8(r31)
/* 80316A94 003139D4  28 00 00 00 */	cmplwi r0, 0
/* 80316A98 003139D8  41 82 00 24 */	beq lbl_80316ABC
/* 80316A9C 003139DC  C0 02 F5 34 */	lfs f0, lbl_8051D894@sda21(r2)
/* 80316AA0 003139E0  7F C3 F3 78 */	mr r3, r30
/* 80316AA4 003139E4  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 80316AA8 003139E8  81 9E 00 00 */	lwz r12, 0(r30)
/* 80316AAC 003139EC  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 80316AB0 003139F0  7D 89 03 A6 */	mtctr r12
/* 80316AB4 003139F4  4E 80 04 21 */	bctrl 
/* 80316AB8 003139F8  48 00 00 3C */	b lbl_80316AF4
lbl_80316ABC:
/* 80316ABC 003139FC  C0 02 F5 38 */	lfs f0, lbl_8051D898@sda21(r2)
/* 80316AC0 00313A00  7F C3 F3 78 */	mr r3, r30
/* 80316AC4 00313A04  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 80316AC8 00313A08  81 9E 00 00 */	lwz r12, 0(r30)
/* 80316ACC 00313A0C  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 80316AD0 00313A10  7D 89 03 A6 */	mtctr r12
/* 80316AD4 00313A14  4E 80 04 21 */	bctrl 
/* 80316AD8 00313A18  48 00 00 1C */	b lbl_80316AF4
lbl_80316ADC:
/* 80316ADC 00313A1C  C0 02 F5 34 */	lfs f0, lbl_8051D894@sda21(r2)
/* 80316AE0 00313A20  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 80316AE4 00313A24  81 83 00 00 */	lwz r12, 0(r3)
/* 80316AE8 00313A28  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 80316AEC 00313A2C  7D 89 03 A6 */	mtctr r12
/* 80316AF0 00313A30  4E 80 04 21 */	bctrl 
lbl_80316AF4:
/* 80316AF4 00313A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80316AF8 00313A38  38 60 00 01 */	li r3, 1
/* 80316AFC 00313A3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80316B00 00313A40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80316B04 00313A44  7C 08 03 A6 */	mtlr r0
/* 80316B08 00313A48  38 21 00 10 */	addi r1, r1, 0x10
/* 80316B0C 00313A4C  4E 80 00 20 */	blr 

.global setYajiName__Q32og9newScreen12ObjSMenuBaseFUxUxUx
setYajiName__Q32og9newScreen12ObjSMenuBaseFUxUxUx:
/* 80316B10 00313A50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80316B14 00313A54  7C 08 02 A6 */	mflr r0
/* 80316B18 00313A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80316B1C 00313A5C  80 83 00 6C */	lwz r4, 0x6c(r3)
/* 80316B20 00313A60  28 04 00 00 */	cmplwi r4, 0
/* 80316B24 00313A64  41 82 00 28 */	beq lbl_80316B4C
/* 80316B28 00313A68  80 03 00 70 */	lwz r0, 0x70(r3)
/* 80316B2C 00313A6C  28 00 00 00 */	cmplwi r0, 0
/* 80316B30 00313A70  41 82 00 1C */	beq lbl_80316B4C
/* 80316B34 00313A74  90 C4 00 1C */	stw r6, 0x1c(r4)
/* 80316B38 00313A78  90 A4 00 18 */	stw r5, 0x18(r4)
/* 80316B3C 00313A7C  80 63 00 70 */	lwz r3, 0x70(r3)
/* 80316B40 00313A80  91 03 00 1C */	stw r8, 0x1c(r3)
/* 80316B44 00313A84  90 E3 00 18 */	stw r7, 0x18(r3)
/* 80316B48 00313A88  48 00 00 20 */	b lbl_80316B68
lbl_80316B4C:
/* 80316B4C 00313A8C  3C 60 80 49 */	lis r3, lbl_8048E658@ha
/* 80316B50 00313A90  3C A0 80 49 */	lis r5, lbl_8048E6B4@ha
/* 80316B54 00313A94  38 63 E6 58 */	addi r3, r3, lbl_8048E658@l
/* 80316B58 00313A98  38 80 01 E1 */	li r4, 0x1e1
/* 80316B5C 00313A9C  38 A5 E6 B4 */	addi r5, r5, lbl_8048E6B4@l
/* 80316B60 00313AA0  4C C6 31 82 */	crclr 6
/* 80316B64 00313AA4  4B D1 3A DD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80316B68:
/* 80316B68 00313AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80316B6C 00313AAC  7C 08 03 A6 */	mtlr r0
/* 80316B70 00313AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80316B74 00313AB4  4E 80 00 20 */	blr 

.global loop__Q32og9newScreen12ObjSMenuBaseFv
loop__Q32og9newScreen12ObjSMenuBaseFv:
/* 80316B78 00313AB8  4E 80 00 20 */	blr 

.global stopYaji__Q32og9newScreen12ObjSMenuBaseFv
stopYaji__Q32og9newScreen12ObjSMenuBaseFv:
/* 80316B7C 00313ABC  38 00 00 00 */	li r0, 0
/* 80316B80 00313AC0  98 03 00 74 */	stb r0, 0x74(r3)
/* 80316B84 00313AC4  4E 80 00 20 */	blr 

.global updateYaji__Q32og9newScreen12ObjSMenuBaseFv
updateYaji__Q32og9newScreen12ObjSMenuBaseFv:
/* 80316B88 00313AC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80316B8C 00313ACC  7C 08 02 A6 */	mflr r0
/* 80316B90 00313AD0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80316B94 00313AD4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80316B98 00313AD8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80316B9C 00313ADC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80316BA0 00313AE0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 80316BA4 00313AE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80316BA8 00313AE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80316BAC 00313AEC  3C 80 80 51 */	lis r4, msBaseVal__Q32og9newScreen12ObjSMenuBase@ha
/* 80316BB0 00313AF0  C3 E2 F5 20 */	lfs f31, lbl_8051D880@sda21(r2)
/* 80316BB4 00313AF4  3B E4 3C F4 */	addi r31, r4, msBaseVal__Q32og9newScreen12ObjSMenuBase@l
/* 80316BB8 00313AF8  7C 7E 1B 78 */	mr r30, r3
/* 80316BBC 00313AFC  88 1F 00 19 */	lbz r0, 0x19(r31)
/* 80316BC0 00313B00  FF C0 F8 90 */	fmr f30, f31
/* 80316BC4 00313B04  28 00 00 00 */	cmplwi r0, 0
/* 80316BC8 00313B08  41 82 01 08 */	beq lbl_80316CD0
/* 80316BCC 00313B0C  88 0D 97 EC */	lbz r0, init$3854@sda21(r13)
/* 80316BD0 00313B10  7C 00 07 75 */	extsb. r0, r0
/* 80316BD4 00313B14  40 82 00 10 */	bne lbl_80316BE4
/* 80316BD8 00313B18  38 00 00 01 */	li r0, 1
/* 80316BDC 00313B1C  D3 ED 97 E8 */	stfs f31, angle$3853@sda21(r13)
/* 80316BE0 00313B20  98 0D 97 EC */	stb r0, init$3854@sda21(r13)
lbl_80316BE4:
/* 80316BE4 00313B24  3C 60 80 51 */	lis r3, msBaseVal__Q32og9newScreen12ObjSMenuBase@ha
/* 80316BE8 00313B28  C0 4D 97 E8 */	lfs f2, angle$3853@sda21(r13)
/* 80316BEC 00313B2C  38 63 3C F4 */	addi r3, r3, msBaseVal__Q32og9newScreen12ObjSMenuBase@l
/* 80316BF0 00313B30  C0 02 F5 3C */	lfs f0, lbl_8051D89C@sda21(r2)
/* 80316BF4 00313B34  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80316BF8 00313B38  EC 22 08 2A */	fadds f1, f2, f1
/* 80316BFC 00313B3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80316C00 00313B40  D0 2D 97 E8 */	stfs f1, angle$3853@sda21(r13)
/* 80316C04 00313B44  40 81 00 0C */	ble lbl_80316C10
/* 80316C08 00313B48  EC 01 00 28 */	fsubs f0, f1, f0
/* 80316C0C 00313B4C  D0 0D 97 E8 */	stfs f0, angle$3853@sda21(r13)
lbl_80316C10:
/* 80316C10 00313B50  C0 6D 97 E8 */	lfs f3, angle$3853@sda21(r13)
/* 80316C14 00313B54  3C 60 80 51 */	lis r3, msBaseVal__Q32og9newScreen12ObjSMenuBase@ha
/* 80316C18 00313B58  C0 02 F5 20 */	lfs f0, lbl_8051D880@sda21(r2)
/* 80316C1C 00313B5C  38 63 3C F4 */	addi r3, r3, msBaseVal__Q32og9newScreen12ObjSMenuBase@l
/* 80316C20 00313B60  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80316C24 00313B64  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80316C28 00313B68  40 80 00 30 */	bge lbl_80316C58
/* 80316C2C 00313B6C  C0 02 F5 40 */	lfs f0, lbl_8051D8A0@sda21(r2)
/* 80316C30 00313B70  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 80316C34 00313B74  38 63 71 A0 */	addi r3, r3, sincosTable___5JMath@l
/* 80316C38 00313B78  EC 03 00 32 */	fmuls f0, f3, f0
/* 80316C3C 00313B7C  FC 00 00 1E */	fctiwz f0, f0
/* 80316C40 00313B80  D8 01 00 08 */	stfd f0, 8(r1)
/* 80316C44 00313B84  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80316C48 00313B88  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80316C4C 00313B8C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80316C50 00313B90  FC 00 00 50 */	fneg f0, f0
/* 80316C54 00313B94  48 00 00 28 */	b lbl_80316C7C
lbl_80316C58:
/* 80316C58 00313B98  C0 02 F5 44 */	lfs f0, lbl_8051D8A4@sda21(r2)
/* 80316C5C 00313B9C  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 80316C60 00313BA0  38 63 71 A0 */	addi r3, r3, sincosTable___5JMath@l
/* 80316C64 00313BA4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80316C68 00313BA8  FC 00 00 1E */	fctiwz f0, f0
/* 80316C6C 00313BAC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80316C70 00313BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80316C74 00313BB4  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80316C78 00313BB8  7C 03 04 2E */	lfsx f0, r3, r0
lbl_80316C7C:
/* 80316C7C 00313BBC  C0 22 F5 48 */	lfs f1, lbl_8051D8A8@sda21(r2)
/* 80316C80 00313BC0  EF C2 00 32 */	fmuls f30, f2, f0
/* 80316C84 00313BC4  C0 02 F5 20 */	lfs f0, lbl_8051D880@sda21(r2)
/* 80316C88 00313BC8  EC 43 08 28 */	fsubs f2, f3, f1
/* 80316C8C 00313BCC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80316C90 00313BD0  40 81 00 40 */	ble lbl_80316CD0
/* 80316C94 00313BD4  C0 22 F5 4C */	lfs f1, lbl_8051D8AC@sda21(r2)
/* 80316C98 00313BD8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80316C9C 00313BDC  40 80 00 34 */	bge lbl_80316CD0
/* 80316CA0 00313BE0  C0 02 F5 50 */	lfs f0, lbl_8051D8B0@sda21(r2)
/* 80316CA4 00313BE4  C3 E2 F5 24 */	lfs f31, lbl_8051D884@sda21(r2)
/* 80316CA8 00313BE8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80316CAC 00313BEC  40 80 00 0C */	bge lbl_80316CB8
/* 80316CB0 00313BF0  EF E2 00 24 */	fdivs f31, f2, f0
/* 80316CB4 00313BF4  48 00 00 1C */	b lbl_80316CD0
lbl_80316CB8:
/* 80316CB8 00313BF8  C0 02 F5 54 */	lfs f0, lbl_8051D8B4@sda21(r2)
/* 80316CBC 00313BFC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80316CC0 00313C00  40 81 00 10 */	ble lbl_80316CD0
/* 80316CC4 00313C04  EC 21 10 28 */	fsubs f1, f1, f2
/* 80316CC8 00313C08  C0 02 F5 58 */	lfs f0, lbl_8051D8B8@sda21(r2)
/* 80316CCC 00313C0C  EF E1 00 24 */	fdivs f31, f1, f0
lbl_80316CD0:
/* 80316CD0 00313C10  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80316CD4 00313C14  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80316CD8 00313C18  EC 00 F0 2A */	fadds f0, f0, f30
/* 80316CDC 00313C1C  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80316CE0 00313C20  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 80316CE4 00313C24  D0 23 00 D8 */	stfs f1, 0xd8(r3)
/* 80316CE8 00313C28  81 83 00 00 */	lwz r12, 0(r3)
/* 80316CEC 00313C2C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80316CF0 00313C30  7D 89 03 A6 */	mtctr r12
/* 80316CF4 00313C34  4E 80 04 21 */	bctrl 
/* 80316CF8 00313C38  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80316CFC 00313C3C  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 80316D00 00313C40  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80316D04 00313C44  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80316D08 00313C48  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 80316D0C 00313C4C  D0 23 00 D8 */	stfs f1, 0xd8(r3)
/* 80316D10 00313C50  81 83 00 00 */	lwz r12, 0(r3)
/* 80316D14 00313C54  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80316D18 00313C58  7D 89 03 A6 */	mtctr r12
/* 80316D1C 00313C5C  4E 80 04 21 */	bctrl 
/* 80316D20 00313C60  88 1E 00 74 */	lbz r0, 0x74(r30)
/* 80316D24 00313C64  28 00 00 00 */	cmplwi r0, 0
/* 80316D28 00313C68  41 82 00 40 */	beq lbl_80316D68
/* 80316D2C 00313C6C  88 9E 00 8C */	lbz r4, 0x8c(r30)
/* 80316D30 00313C70  28 04 00 FF */	cmplwi r4, 0xff
/* 80316D34 00313C74  40 80 00 50 */	bge lbl_80316D84
/* 80316D38 00313C78  3C 60 92 49 */	lis r3, 0x92492493@ha
/* 80316D3C 00313C7C  20 04 00 FF */	subfic r0, r4, 0xff
/* 80316D40 00313C80  38 63 24 93 */	addi r3, r3, 0x92492493@l
/* 80316D44 00313C84  7C 63 00 96 */	mulhw r3, r3, r0
/* 80316D48 00313C88  7C 03 02 14 */	add r0, r3, r0
/* 80316D4C 00313C8C  7C 00 16 70 */	srawi r0, r0, 2
/* 80316D50 00313C90  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80316D54 00313C94  7C 00 1A 14 */	add r0, r0, r3
/* 80316D58 00313C98  7C 60 22 14 */	add r3, r0, r4
/* 80316D5C 00313C9C  38 03 00 01 */	addi r0, r3, 1
/* 80316D60 00313CA0  98 1E 00 8C */	stb r0, 0x8c(r30)
/* 80316D64 00313CA4  48 00 00 20 */	b lbl_80316D84
lbl_80316D68:
/* 80316D68 00313CA8  88 9E 00 8C */	lbz r4, 0x8c(r30)
/* 80316D6C 00313CAC  28 04 00 00 */	cmplwi r4, 0
/* 80316D70 00313CB0  41 82 00 14 */	beq lbl_80316D84
/* 80316D74 00313CB4  54 83 FE 7E */	rlwinm r3, r4, 0x1f, 0x19, 0x1f
/* 80316D78 00313CB8  38 03 00 01 */	addi r0, r3, 1
/* 80316D7C 00313CBC  7C 00 20 50 */	subf r0, r0, r4
/* 80316D80 00313CC0  98 1E 00 8C */	stb r0, 0x8c(r30)
lbl_80316D84:
/* 80316D84 00313CC4  88 1F 00 19 */	lbz r0, 0x19(r31)
/* 80316D88 00313CC8  28 00 00 00 */	cmplwi r0, 0
/* 80316D8C 00313CCC  41 82 00 34 */	beq lbl_80316DC0
/* 80316D90 00313CD0  88 7E 00 8C */	lbz r3, 0x8c(r30)
/* 80316D94 00313CD4  3C 00 43 30 */	lis r0, 0x4330
/* 80316D98 00313CD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80316D9C 00313CDC  C8 22 F5 60 */	lfd f1, lbl_8051D8C0@sda21(r2)
/* 80316DA0 00313CE0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80316DA4 00313CE4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80316DA8 00313CE8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80316DAC 00313CEC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80316DB0 00313CF0  FC 00 00 1E */	fctiwz f0, f0
/* 80316DB4 00313CF4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80316DB8 00313CF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80316DBC 00313CFC  48 00 00 4C */	b lbl_80316E08
lbl_80316DC0:
/* 80316DC0 00313D00  3C 80 80 51 */	lis r4, msBaseVal__Q32og9newScreen12ObjSMenuBase@ha
/* 80316DC4 00313D04  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 80316DC8 00313D08  38 84 3C F4 */	addi r4, r4, msBaseVal__Q32og9newScreen12ObjSMenuBase@l
/* 80316DCC 00313D0C  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 80316DD0 00313D10  4B FE B0 E9 */	bl setSpeed__Q32og6Screen15ArrowAlphaBlinkFf
/* 80316DD4 00313D14  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 80316DD8 00313D18  4B FE B0 E9 */	bl calc__Q32og6Screen15ArrowAlphaBlinkFv
/* 80316DDC 00313D1C  88 7E 00 8C */	lbz r3, 0x8c(r30)
/* 80316DE0 00313D20  3C 00 43 30 */	lis r0, 0x4330
/* 80316DE4 00313D24  90 01 00 10 */	stw r0, 0x10(r1)
/* 80316DE8 00313D28  C8 42 F5 60 */	lfd f2, lbl_8051D8C0@sda21(r2)
/* 80316DEC 00313D2C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80316DF0 00313D30  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80316DF4 00313D34  EC 00 10 28 */	fsubs f0, f0, f2
/* 80316DF8 00313D38  EC 00 00 72 */	fmuls f0, f0, f1
/* 80316DFC 00313D3C  FC 00 00 1E */	fctiwz f0, f0
/* 80316E00 00313D40  D8 01 00 08 */	stfd f0, 8(r1)
/* 80316E04 00313D44  83 E1 00 0C */	lwz r31, 0xc(r1)
lbl_80316E08:
/* 80316E08 00313D48  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80316E0C 00313D4C  7F E4 FB 78 */	mr r4, r31
/* 80316E10 00313D50  81 83 00 00 */	lwz r12, 0(r3)
/* 80316E14 00313D54  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80316E18 00313D58  7D 89 03 A6 */	mtctr r12
/* 80316E1C 00313D5C  4E 80 04 21 */	bctrl 
/* 80316E20 00313D60  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 80316E24 00313D64  7F E4 FB 78 */	mr r4, r31
/* 80316E28 00313D68  81 83 00 00 */	lwz r12, 0(r3)
/* 80316E2C 00313D6C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80316E30 00313D70  7D 89 03 A6 */	mtctr r12
/* 80316E34 00313D74  4E 80 04 21 */	bctrl 
/* 80316E38 00313D78  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80316E3C 00313D7C  88 9E 00 8C */	lbz r4, 0x8c(r30)
/* 80316E40 00313D80  81 83 00 00 */	lwz r12, 0(r3)
/* 80316E44 00313D84  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80316E48 00313D88  7D 89 03 A6 */	mtctr r12
/* 80316E4C 00313D8C  4E 80 04 21 */	bctrl 
/* 80316E50 00313D90  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80316E54 00313D94  81 83 00 00 */	lwz r12, 0(r3)
/* 80316E58 00313D98  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80316E5C 00313D9C  7D 89 03 A6 */	mtctr r12
/* 80316E60 00313DA0  4E 80 04 21 */	bctrl 
/* 80316E64 00313DA4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80316E68 00313DA8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80316E6C 00313DAC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 80316E70 00313DB0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80316E74 00313DB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80316E78 00313DB8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80316E7C 00313DBC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80316E80 00313DC0  7C 08 03 A6 */	mtlr r0
/* 80316E84 00313DC4  38 21 00 40 */	addi r1, r1, 0x40
/* 80316E88 00313DC8  4E 80 00 20 */	blr 

.global drawYaji__Q32og9newScreen12ObjSMenuBaseFR8Graphics
drawYaji__Q32og9newScreen12ObjSMenuBaseFR8Graphics:
/* 80316E8C 00313DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80316E90 00313DD0  7C 08 02 A6 */	mflr r0
/* 80316E94 00313DD4  38 A4 01 90 */	addi r5, r4, 0x190
/* 80316E98 00313DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80316E9C 00313DDC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80316EA0 00313DE0  81 83 00 00 */	lwz r12, 0(r3)
/* 80316EA4 00313DE4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80316EA8 00313DE8  7D 89 03 A6 */	mtctr r12
/* 80316EAC 00313DEC  4E 80 04 21 */	bctrl 
/* 80316EB0 00313DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80316EB4 00313DF4  7C 08 03 A6 */	mtlr r0
/* 80316EB8 00313DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80316EBC 00313DFC  4E 80 00 20 */	blr 

.global updateFadeIn__Q32og9newScreen12ObjSMenuBaseFv
updateFadeIn__Q32og9newScreen12ObjSMenuBaseFv:
/* 80316EC0 00313E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80316EC4 00313E04  7C 08 02 A6 */	mflr r0
/* 80316EC8 00313E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80316ECC 00313E0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80316ED0 00313E10  3B E0 00 00 */	li r31, 0
/* 80316ED4 00313E14  93 C1 00 08 */	stw r30, 8(r1)
/* 80316ED8 00313E18  7C 7E 1B 78 */	mr r30, r3
/* 80316EDC 00313E1C  48 13 D1 65 */	bl getGamePad__Q26Screen7ObjBaseCFv
/* 80316EE0 00313E20  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80316EE4 00313E24  2C 00 00 01 */	cmpwi r0, 1
/* 80316EE8 00313E28  41 82 00 98 */	beq lbl_80316F80
/* 80316EEC 00313E2C  40 80 00 10 */	bge lbl_80316EFC
/* 80316EF0 00313E30  2C 00 00 00 */	cmpwi r0, 0
/* 80316EF4 00313E34  40 80 00 14 */	bge lbl_80316F08
/* 80316EF8 00313E38  48 00 01 00 */	b lbl_80316FF8
lbl_80316EFC:
/* 80316EFC 00313E3C  2C 00 00 04 */	cmpwi r0, 4
/* 80316F00 00313E40  41 82 01 14 */	beq lbl_80317014
/* 80316F04 00313E44  48 00 00 F4 */	b lbl_80316FF8
lbl_80316F08:
/* 80316F08 00313E48  80 AD 9A EC */	lwz r5, sys@sda21(r13)
/* 80316F0C 00313E4C  3C 80 80 51 */	lis r4, msBaseVal__Q32og9newScreen12ObjSMenuBase@ha
/* 80316F10 00313E50  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80316F14 00313E54  38 84 3C F4 */	addi r4, r4, msBaseVal__Q32og9newScreen12ObjSMenuBase@l
/* 80316F18 00313E58  C0 05 00 54 */	lfs f0, 0x54(r5)
/* 80316F1C 00313E5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80316F20 00313E60  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 80316F24 00313E64  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80316F28 00313E68  C0 04 00 08 */	lfs f0, 8(r4)
/* 80316F2C 00313E6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80316F30 00313E70  40 81 00 0C */	ble lbl_80316F3C
/* 80316F34 00313E74  3B E0 00 01 */	li r31, 1
/* 80316F38 00313E78  48 00 00 24 */	b lbl_80316F5C
lbl_80316F3C:
/* 80316F3C 00313E7C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80316F40 00313E80  80 1E 00 5C */	lwz r0, 0x5c(r30)
/* 80316F44 00313E84  7C 60 00 39 */	and. r0, r3, r0
/* 80316F48 00313E88  41 82 00 14 */	beq lbl_80316F5C
/* 80316F4C 00313E8C  38 60 00 03 */	li r3, 3
/* 80316F50 00313E90  38 00 00 01 */	li r0, 1
/* 80316F54 00313E94  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80316F58 00313E98  98 1E 00 48 */	stb r0, 0x48(r30)
lbl_80316F5C:
/* 80316F5C 00313E9C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80316F60 00313EA0  C0 44 00 08 */	lfs f2, 8(r4)
/* 80316F64 00313EA4  4B FE B7 39 */	bl calcSmooth0to1__Q22og6ScreenFff
/* 80316F68 00313EA8  C0 42 F5 24 */	lfs f2, lbl_8051D884@sda21(r2)
/* 80316F6C 00313EAC  C0 02 F5 34 */	lfs f0, lbl_8051D894@sda21(r2)
/* 80316F70 00313EB0  EC 22 08 28 */	fsubs f1, f2, f1
/* 80316F74 00313EB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80316F78 00313EB8  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 80316F7C 00313EBC  48 00 00 98 */	b lbl_80317014
lbl_80316F80:
/* 80316F80 00313EC0  80 AD 9A EC */	lwz r5, sys@sda21(r13)
/* 80316F84 00313EC4  3C 80 80 51 */	lis r4, msBaseVal__Q32og9newScreen12ObjSMenuBase@ha
/* 80316F88 00313EC8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80316F8C 00313ECC  38 84 3C F4 */	addi r4, r4, msBaseVal__Q32og9newScreen12ObjSMenuBase@l
/* 80316F90 00313ED0  C0 05 00 54 */	lfs f0, 0x54(r5)
/* 80316F94 00313ED4  EC 01 00 2A */	fadds f0, f1, f0
/* 80316F98 00313ED8  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 80316F9C 00313EDC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80316FA0 00313EE0  C0 04 00 08 */	lfs f0, 8(r4)
/* 80316FA4 00313EE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80316FA8 00313EE8  40 81 00 0C */	ble lbl_80316FB4
/* 80316FAC 00313EEC  3B E0 00 01 */	li r31, 1
/* 80316FB0 00313EF0  48 00 00 24 */	b lbl_80316FD4
lbl_80316FB4:
/* 80316FB4 00313EF4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80316FB8 00313EF8  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 80316FBC 00313EFC  7C 60 00 39 */	and. r0, r3, r0
/* 80316FC0 00313F00  41 82 00 14 */	beq lbl_80316FD4
/* 80316FC4 00313F04  38 60 00 02 */	li r3, 2
/* 80316FC8 00313F08  38 00 00 01 */	li r0, 1
/* 80316FCC 00313F0C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80316FD0 00313F10  98 1E 00 48 */	stb r0, 0x48(r30)
lbl_80316FD4:
/* 80316FD4 00313F14  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80316FD8 00313F18  C0 44 00 08 */	lfs f2, 8(r4)
/* 80316FDC 00313F1C  4B FE B6 C1 */	bl calcSmooth0to1__Q22og6ScreenFff
/* 80316FE0 00313F20  C0 42 F5 24 */	lfs f2, lbl_8051D884@sda21(r2)
/* 80316FE4 00313F24  C0 02 F5 38 */	lfs f0, lbl_8051D898@sda21(r2)
/* 80316FE8 00313F28  EC 22 08 28 */	fsubs f1, f2, f1
/* 80316FEC 00313F2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80316FF0 00313F30  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 80316FF4 00313F34  48 00 00 20 */	b lbl_80317014
lbl_80316FF8:
/* 80316FF8 00313F38  3C 60 80 49 */	lis r3, lbl_8048E658@ha
/* 80316FFC 00313F3C  3C A0 80 49 */	lis r5, lbl_8048E6C8@ha
/* 80317000 00313F40  38 63 E6 58 */	addi r3, r3, lbl_8048E658@l
/* 80317004 00313F44  38 80 02 6D */	li r4, 0x26d
/* 80317008 00313F48  38 A5 E6 C8 */	addi r5, r5, lbl_8048E6C8@l
/* 8031700C 00313F4C  4C C6 31 82 */	crclr 6
/* 80317010 00313F50  4B D1 36 31 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80317014:
/* 80317014 00313F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80317018 00313F58  7F E3 FB 78 */	mr r3, r31
/* 8031701C 00313F5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80317020 00313F60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80317024 00313F64  7C 08 03 A6 */	mtlr r0
/* 80317028 00313F68  38 21 00 10 */	addi r1, r1, 0x10
/* 8031702C 00313F6C  4E 80 00 20 */	blr 

.global doUpdateFadein__Q32og9newScreen12ObjSMenuBaseFv
doUpdateFadein__Q32og9newScreen12ObjSMenuBaseFv:
/* 80317030 00313F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80317034 00313F74  7C 08 02 A6 */	mflr r0
/* 80317038 00313F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031703C 00313F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80317040 00313F80  7C 7F 1B 78 */	mr r31, r3
/* 80317044 00313F84  81 83 00 00 */	lwz r12, 0(r3)
/* 80317048 00313F88  81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 8031704C 00313F8C  7D 89 03 A6 */	mtctr r12
/* 80317050 00313F90  4E 80 04 21 */	bctrl 
/* 80317054 00313F94  7F E3 FB 78 */	mr r3, r31
/* 80317058 00313F98  81 9F 00 00 */	lwz r12, 0(r31)
/* 8031705C 00313F9C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80317060 00313FA0  7D 89 03 A6 */	mtctr r12
/* 80317064 00313FA4  4E 80 04 21 */	bctrl 
/* 80317068 00313FA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8031706C 00313FAC  40 82 00 58 */	bne lbl_803170C4
/* 80317070 00313FB0  88 1F 00 48 */	lbz r0, 0x48(r31)
/* 80317074 00313FB4  28 00 00 00 */	cmplwi r0, 0
/* 80317078 00313FB8  41 82 00 4C */	beq lbl_803170C4
/* 8031707C 00313FBC  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80317080 00313FC0  2C 00 00 00 */	cmpwi r0, 0
/* 80317084 00313FC4  40 82 00 20 */	bne lbl_803170A4
/* 80317088 00313FC8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8031708C 00313FCC  C0 02 F5 20 */	lfs f0, lbl_8051D880@sda21(r2)
/* 80317090 00313FD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80317094 00313FD4  4C 40 13 82 */	cror 2, 0, 2
/* 80317098 00313FD8  40 82 00 2C */	bne lbl_803170C4
/* 8031709C 00313FDC  38 60 00 01 */	li r3, 1
/* 803170A0 00313FE0  48 00 00 24 */	b lbl_803170C4
lbl_803170A4:
/* 803170A4 00313FE4  2C 00 00 01 */	cmpwi r0, 1
/* 803170A8 00313FE8  40 82 00 1C */	bne lbl_803170C4
/* 803170AC 00313FEC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 803170B0 00313FF0  C0 02 F5 20 */	lfs f0, lbl_8051D880@sda21(r2)
/* 803170B4 00313FF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803170B8 00313FF8  4C 41 13 82 */	cror 2, 1, 2
/* 803170BC 00313FFC  40 82 00 08 */	bne lbl_803170C4
/* 803170C0 00314000  38 60 00 01 */	li r3, 1
lbl_803170C4:
/* 803170C4 00314004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803170C8 00314008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803170CC 0031400C  7C 08 03 A6 */	mtlr r0
/* 803170D0 00314010  38 21 00 10 */	addi r1, r1, 0x10
/* 803170D4 00314014  4E 80 00 20 */	blr 

.global doUpdateFadeinFinish__Q32og9newScreen12ObjSMenuBaseFv
doUpdateFadeinFinish__Q32og9newScreen12ObjSMenuBaseFv:
/* 803170D8 00314018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803170DC 0031401C  7C 08 02 A6 */	mflr r0
/* 803170E0 00314020  90 01 00 14 */	stw r0, 0x14(r1)
/* 803170E4 00314024  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803170E8 00314028  7C 7F 1B 78 */	mr r31, r3
/* 803170EC 0031402C  88 03 00 48 */	lbz r0, 0x48(r3)
/* 803170F0 00314030  28 00 00 00 */	cmplwi r0, 0
/* 803170F4 00314034  40 82 00 1C */	bne lbl_80317110
/* 803170F8 00314038  38 00 00 01 */	li r0, 1
/* 803170FC 0031403C  98 1F 00 74 */	stb r0, 0x74(r31)
/* 80317100 00314040  81 83 00 00 */	lwz r12, 0(r3)
/* 80317104 00314044  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 80317108 00314048  7D 89 03 A6 */	mtctr r12
/* 8031710C 0031404C  4E 80 04 21 */	bctrl 
lbl_80317110:
/* 80317110 00314050  C0 02 F5 20 */	lfs f0, lbl_8051D880@sda21(r2)
/* 80317114 00314054  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 80317118 00314058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031711C 0031405C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80317120 00314060  7C 08 03 A6 */	mtlr r0
/* 80317124 00314064  38 21 00 10 */	addi r1, r1, 0x10
/* 80317128 00314068  4E 80 00 20 */	blr 

.global updateFadeOut__Q32og9newScreen12ObjSMenuBaseFv
updateFadeOut__Q32og9newScreen12ObjSMenuBaseFv:
/* 8031712C 0031406C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80317130 00314070  7C 08 02 A6 */	mflr r0
/* 80317134 00314074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80317138 00314078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031713C 0031407C  3B E0 00 00 */	li r31, 0
/* 80317140 00314080  93 C1 00 08 */	stw r30, 8(r1)
/* 80317144 00314084  7C 7E 1B 78 */	mr r30, r3
/* 80317148 00314088  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8031714C 0031408C  2C 00 00 03 */	cmpwi r0, 3
/* 80317150 00314090  41 82 00 64 */	beq lbl_803171B4
/* 80317154 00314094  40 80 00 10 */	bge lbl_80317164
/* 80317158 00314098  2C 00 00 02 */	cmpwi r0, 2
/* 8031715C 0031409C  40 80 00 14 */	bge lbl_80317170
/* 80317160 003140A0  48 00 00 98 */	b lbl_803171F8
lbl_80317164:
/* 80317164 003140A4  2C 00 00 05 */	cmpwi r0, 5
/* 80317168 003140A8  40 80 00 90 */	bge lbl_803171F8
/* 8031716C 003140AC  48 00 00 A8 */	b lbl_80317214
lbl_80317170:
/* 80317170 003140B0  80 8D 9A EC */	lwz r4, sys@sda21(r13)
/* 80317174 003140B4  3C 60 80 51 */	lis r3, msBaseVal__Q32og9newScreen12ObjSMenuBase@ha
/* 80317178 003140B8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8031717C 003140BC  38 63 3C F4 */	addi r3, r3, msBaseVal__Q32og9newScreen12ObjSMenuBase@l
/* 80317180 003140C0  C0 04 00 54 */	lfs f0, 0x54(r4)
/* 80317184 003140C4  EC 01 00 2A */	fadds f0, f1, f0
/* 80317188 003140C8  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 8031718C 003140CC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80317190 003140D0  C0 43 00 08 */	lfs f2, 8(r3)
/* 80317194 003140D4  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80317198 003140D8  40 81 00 08 */	ble lbl_803171A0
/* 8031719C 003140DC  3B E0 00 01 */	li r31, 1
lbl_803171A0:
/* 803171A0 003140E0  4B FE B4 FD */	bl calcSmooth0to1__Q22og6ScreenFff
/* 803171A4 003140E4  C0 02 F5 38 */	lfs f0, lbl_8051D898@sda21(r2)
/* 803171A8 003140E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 803171AC 003140EC  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 803171B0 003140F0  48 00 00 64 */	b lbl_80317214
lbl_803171B4:
/* 803171B4 003140F4  80 8D 9A EC */	lwz r4, sys@sda21(r13)
/* 803171B8 003140F8  3C 60 80 51 */	lis r3, msBaseVal__Q32og9newScreen12ObjSMenuBase@ha
/* 803171BC 003140FC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 803171C0 00314100  38 63 3C F4 */	addi r3, r3, msBaseVal__Q32og9newScreen12ObjSMenuBase@l
/* 803171C4 00314104  C0 04 00 54 */	lfs f0, 0x54(r4)
/* 803171C8 00314108  EC 01 00 2A */	fadds f0, f1, f0
/* 803171CC 0031410C  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 803171D0 00314110  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 803171D4 00314114  C0 43 00 08 */	lfs f2, 8(r3)
/* 803171D8 00314118  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 803171DC 0031411C  40 81 00 08 */	ble lbl_803171E4
/* 803171E0 00314120  3B E0 00 01 */	li r31, 1
lbl_803171E4:
/* 803171E4 00314124  4B FE B4 B9 */	bl calcSmooth0to1__Q22og6ScreenFff
/* 803171E8 00314128  C0 02 F5 34 */	lfs f0, lbl_8051D894@sda21(r2)
/* 803171EC 0031412C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803171F0 00314130  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 803171F4 00314134  48 00 00 20 */	b lbl_80317214
lbl_803171F8:
/* 803171F8 00314138  3C 60 80 49 */	lis r3, lbl_8048E658@ha
/* 803171FC 0031413C  3C A0 80 49 */	lis r5, lbl_8048E6D8@ha
/* 80317200 00314140  38 63 E6 58 */	addi r3, r3, lbl_8048E658@l
/* 80317204 00314144  38 80 02 B3 */	li r4, 0x2b3
/* 80317208 00314148  38 A5 E6 D8 */	addi r5, r5, lbl_8048E6D8@l
/* 8031720C 0031414C  4C C6 31 82 */	crclr 6
/* 80317210 00314150  4B D1 34 31 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80317214:
/* 80317214 00314154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80317218 00314158  7F E3 FB 78 */	mr r3, r31
/* 8031721C 0031415C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80317220 00314160  83 C1 00 08 */	lwz r30, 8(r1)
/* 80317224 00314164  7C 08 03 A6 */	mtlr r0
/* 80317228 00314168  38 21 00 10 */	addi r1, r1, 0x10
/* 8031722C 0031416C  4E 80 00 20 */	blr 

.global doUpdateFadeoutFinish__Q32og9newScreen12ObjSMenuBaseFv
doUpdateFadeoutFinish__Q32og9newScreen12ObjSMenuBaseFv:
/* 80317230 00314170  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80317234 00314174  7C 08 02 A6 */	mflr r0
/* 80317238 00314178  3C 80 80 49 */	lis r4, lbl_8048E658@ha
/* 8031723C 0031417C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80317240 00314180  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80317244 00314184  3B E4 E6 58 */	addi r31, r4, lbl_8048E658@l
/* 80317248 00314188  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8031724C 0031418C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80317250 00314190  7C 7D 1B 78 */	mr r29, r3
/* 80317254 00314194  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 80317258 00314198  2C 00 00 02 */	cmpwi r0, 2
/* 8031725C 0031419C  41 82 00 BC */	beq lbl_80317318
/* 80317260 003141A0  40 80 00 14 */	bge lbl_80317274
/* 80317264 003141A4  2C 00 00 00 */	cmpwi r0, 0
/* 80317268 003141A8  41 82 00 E0 */	beq lbl_80317348
/* 8031726C 003141AC  40 80 00 14 */	bge lbl_80317280
/* 80317270 003141B0  48 00 00 F4 */	b lbl_80317364
lbl_80317274:
/* 80317274 003141B4  2C 00 00 04 */	cmpwi r0, 4
/* 80317278 003141B8  40 80 00 EC */	bge lbl_80317364
/* 8031727C 003141BC  48 00 00 6C */	b lbl_803172E8
lbl_80317280:
/* 80317280 003141C0  81 83 00 00 */	lwz r12, 0(r3)
/* 80317284 003141C4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80317288 003141C8  7D 89 03 A6 */	mtctr r12
/* 8031728C 003141CC  4E 80 04 21 */	bctrl 
/* 80317290 003141D0  7C 7E 1B 78 */	mr r30, r3
/* 80317294 003141D4  48 13 AD 2D */	bl setBackupScene__Q26Screen9SceneBaseFv
/* 80317298 003141D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8031729C 003141DC  41 82 00 2C */	beq lbl_803172C8
/* 803172A0 003141E0  7F C3 F3 78 */	mr r3, r30
/* 803172A4 003141E4  38 80 00 00 */	li r4, 0
/* 803172A8 003141E8  48 13 AC B9 */	bl startScene__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
/* 803172AC 003141EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803172B0 003141F0  40 82 00 18 */	bne lbl_803172C8
/* 803172B4 003141F4  38 7F 00 00 */	addi r3, r31, 0
/* 803172B8 003141F8  38 BF 00 50 */	addi r5, r31, 0x50
/* 803172BC 003141FC  38 80 01 6E */	li r4, 0x16e
/* 803172C0 00314200  4C C6 31 82 */	crclr 6
/* 803172C4 00314204  4B D1 33 7D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_803172C8:
/* 803172C8 00314208  7F A3 EB 78 */	mr r3, r29
/* 803172CC 0031420C  81 9D 00 00 */	lwz r12, 0(r29)
/* 803172D0 00314210  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 803172D4 00314214  7D 89 03 A6 */	mtctr r12
/* 803172D8 00314218  4E 80 04 21 */	bctrl 
/* 803172DC 0031421C  38 00 00 02 */	li r0, 2
/* 803172E0 00314220  90 03 02 20 */	stw r0, 0x220(r3)
/* 803172E4 00314224  48 00 00 94 */	b lbl_80317378
lbl_803172E8:
/* 803172E8 00314228  81 83 00 00 */	lwz r12, 0(r3)
/* 803172EC 0031422C  81 8C 00 94 */	lwz r12, 0x94(r12)
/* 803172F0 00314230  7D 89 03 A6 */	mtctr r12
/* 803172F4 00314234  4E 80 04 21 */	bctrl 
/* 803172F8 00314238  7F A3 EB 78 */	mr r3, r29
/* 803172FC 0031423C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80317300 00314240  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80317304 00314244  7D 89 03 A6 */	mtctr r12
/* 80317308 00314248  4E 80 04 21 */	bctrl 
/* 8031730C 0031424C  38 00 00 01 */	li r0, 1
/* 80317310 00314250  90 03 02 20 */	stw r0, 0x220(r3)
/* 80317314 00314254  48 00 00 64 */	b lbl_80317378
lbl_80317318:
/* 80317318 00314258  81 83 00 00 */	lwz r12, 0(r3)
/* 8031731C 0031425C  81 8C 00 98 */	lwz r12, 0x98(r12)
/* 80317320 00314260  7D 89 03 A6 */	mtctr r12
/* 80317324 00314264  4E 80 04 21 */	bctrl 
/* 80317328 00314268  7F A3 EB 78 */	mr r3, r29
/* 8031732C 0031426C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80317330 00314270  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80317334 00314274  7D 89 03 A6 */	mtctr r12
/* 80317338 00314278  4E 80 04 21 */	bctrl 
/* 8031733C 0031427C  38 00 00 01 */	li r0, 1
/* 80317340 00314280  90 03 02 20 */	stw r0, 0x220(r3)
/* 80317344 00314284  48 00 00 34 */	b lbl_80317378
lbl_80317348:
/* 80317348 00314288  81 83 00 00 */	lwz r12, 0(r3)
/* 8031734C 0031428C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80317350 00314290  7D 89 03 A6 */	mtctr r12
/* 80317354 00314294  4E 80 04 21 */	bctrl 
/* 80317358 00314298  38 00 00 01 */	li r0, 1
/* 8031735C 0031429C  90 03 02 20 */	stw r0, 0x220(r3)
/* 80317360 003142A0  48 00 00 18 */	b lbl_80317378
lbl_80317364:
/* 80317364 003142A4  38 7F 00 00 */	addi r3, r31, 0
/* 80317368 003142A8  38 BF 00 3C */	addi r5, r31, 0x3c
/* 8031736C 003142AC  38 80 02 D0 */	li r4, 0x2d0
/* 80317370 003142B0  4C C6 31 82 */	crclr 6
/* 80317374 003142B4  4B D1 32 CD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80317378:
/* 80317378 003142B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031737C 003142BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80317380 003142C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80317384 003142C4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80317388 003142C8  7C 08 03 A6 */	mtlr r0
/* 8031738C 003142CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80317390 003142D0  4E 80 00 20 */	blr 

.global doStart__Q26Screen7ObjBaseFPCQ26Screen13StartSceneArg
doStart__Q26Screen7ObjBaseFPCQ26Screen13StartSceneArg:
/* 80317394 003142D4  38 60 00 01 */	li r3, 1
/* 80317398 003142D8  4E 80 00 20 */	blr 

.global doEnd__Q26Screen7ObjBaseFPCQ26Screen11EndSceneArg
doEnd__Q26Screen7ObjBaseFPCQ26Screen11EndSceneArg:
/* 8031739C 003142DC  38 60 00 01 */	li r3, 1
/* 803173A0 003142E0  4E 80 00 20 */	blr 

.global doCreate__Q26Screen7ObjBaseFP10JKRArchive
doCreate__Q26Screen7ObjBaseFP10JKRArchive:
/* 803173A4 003142E4  4E 80 00 20 */	blr 

.global doUpdateFadeout__Q26Screen7ObjBaseFv
doUpdateFadeout__Q26Screen7ObjBaseFv:
/* 803173A8 003142E8  38 60 00 01 */	li r3, 1
/* 803173AC 003142EC  4E 80 00 20 */	blr 

.global getSceneType__Q32og9newScreen18StartSceneArgSMenuCFv
getSceneType__Q32og9newScreen18StartSceneArgSMenuCFv:
/* 803173B0 003142F0  80 63 00 04 */	lwz r3, 4(r3)
/* 803173B4 003142F4  4E 80 00 20 */	blr 

.global "getClassSize__Q26Screen58StartSceneArgTemplate<Q32og9newScreen18StartSceneArgSMenu>Fv"
"getClassSize__Q26Screen58StartSceneArgTemplate<Q32og9newScreen18StartSceneArgSMenu>Fv":
/* 803173B8 003142F8  38 60 00 0C */	li r3, 0xc
/* 803173BC 003142FC  4E 80 00 20 */	blr 

.global __sinit_ogObjSMenuBase_cpp
__sinit_ogObjSMenuBase_cpp:
/* 803173C0 00314300  3C 60 80 51 */	lis r3, msBaseVal__Q32og9newScreen12ObjSMenuBase@ha
/* 803173C4 00314304  C0 62 F5 24 */	lfs f3, lbl_8051D884@sda21(r2)
/* 803173C8 00314308  38 A3 3C F4 */	addi r5, r3, msBaseVal__Q32og9newScreen12ObjSMenuBase@l
/* 803173CC 0031430C  38 00 00 00 */	li r0, 0
/* 803173D0 00314310  38 60 00 40 */	li r3, 0x40
/* 803173D4 00314314  C0 42 F5 30 */	lfs f2, lbl_8051D890@sda21(r2)
/* 803173D8 00314318  C0 22 F5 68 */	lfs f1, lbl_8051D8C8@sda21(r2)
/* 803173DC 0031431C  38 80 00 FF */	li r4, 0xff
/* 803173E0 00314320  C0 02 F5 28 */	lfs f0, lbl_8051D888@sda21(r2)
/* 803173E4 00314324  D0 65 00 00 */	stfs f3, 0(r5)
/* 803173E8 00314328  D0 65 00 04 */	stfs f3, 4(r5)
/* 803173EC 0031432C  98 85 00 14 */	stb r4, 0x14(r5)
/* 803173F0 00314330  D0 45 00 08 */	stfs f2, 8(r5)
/* 803173F4 00314334  D0 25 00 0C */	stfs f1, 0xc(r5)
/* 803173F8 00314338  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 803173FC 0031433C  98 65 00 15 */	stb r3, 0x15(r5)
/* 80317400 00314340  98 65 00 16 */	stb r3, 0x16(r5)
/* 80317404 00314344  98 05 00 17 */	stb r0, 0x17(r5)
/* 80317408 00314348  98 05 00 18 */	stb r0, 0x18(r5)
/* 8031740C 0031434C  98 05 00 19 */	stb r0, 0x19(r5)
/* 80317410 00314350  4E 80 00 20 */	blr 

.global "@24@__dt__Q32og9newScreen12ObjSMenuBaseFv"
"@24@__dt__Q32og9newScreen12ObjSMenuBaseFv":
/* 80317414 00314354  38 63 FF E8 */	addi r3, r3, -24
/* 80317418 00314358  4B FF 83 EC */	b __dt__Q32og9newScreen12ObjSMenuBaseFv
