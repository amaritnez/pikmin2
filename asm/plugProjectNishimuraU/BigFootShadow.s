.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
lbl_8048B640:
	.asciz "246-BigFootShadow"
.balign 4
lbl_8048B654:
	.asciz "rhand1jnt"
.balign 4
lbl_8048B660:
	.asciz "rhand2jnt"
.balign 4
lbl_8048B66C:
	.asciz "rhand3jnt"
.balign 4
lbl_8048B678:
	.asciz "lhand1jnt"
.balign 4
lbl_8048B684:
	.asciz "lhand2jnt"
.balign 4
lbl_8048B690:
	.asciz "lhand3jnt"
.balign 4
lbl_8048B69C:
	.asciz "rfoot1jnt"
.balign 4
lbl_8048B6A8:
	.asciz "rfoot2jnt"
.balign 4
lbl_8048B6B4:
	.asciz "rfoot3jnt"
.balign 4
lbl_8048B6C0:
	.asciz "lfoot1jnt"
.balign 4
lbl_8048B6CC:
	.asciz "lfoot2jnt"
.balign 4
lbl_8048B6D8:
	.asciz "lfoot3jnt"

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
lbl_8051C6E8:
	.asciz "kosi"
.balign 4
lbl_8051C6F0:
	.float 0.5
lbl_8051C6F4:
	.float 3.0
lbl_8051C6F8:
	.float 0.0
lbl_8051C6FC:
	.float 1.0
lbl_8051C700:
	.float -75.0
lbl_8051C704:
	.float 2.5
lbl_8051C708:
	.float 40.0
lbl_8051C70C:
	.float 60.0
lbl_8051C710:
	.float -65.0
lbl_8051C714:
	.float 72.5
lbl_8051C718:
	.float -10.0
lbl_8051C71C:
	.float -5.0
lbl_8051C720:
	.float -8.0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q34Game7BigFoot16BigFootShadowMgrFPQ34Game7BigFoot3Obj
__ct__Q34Game7BigFoot16BigFootShadowMgrFPQ34Game7BigFoot3Obj:
/* 802C7810 002C4750  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C7814 002C4754  7C 08 02 A6 */	mflr r0
/* 802C7818 002C4758  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C781C 002C475C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802C7820 002C4760  7C 9B 23 78 */	mr r27, r4
/* 802C7824 002C4764  7C 7C 1B 78 */	mr r28, r3
/* 802C7828 002C4768  93 63 00 04 */	stw r27, 4(r3)
/* 802C782C 002C476C  38 60 00 20 */	li r3, 0x20
/* 802C7830 002C4770  4B D5 C6 75 */	bl __nw__FUl
/* 802C7834 002C4774  7C 60 1B 79 */	or. r0, r3, r3
/* 802C7838 002C4778  41 82 00 10 */	beq lbl_802C7848
/* 802C783C 002C477C  7F 64 DB 78 */	mr r4, r27
/* 802C7840 002C4780  4B F7 9A 3D */	bl __ct__Q24Game19JointShadowRootNodeFPQ24Game8Creature
/* 802C7844 002C4784  7C 60 1B 78 */	mr r0, r3
lbl_802C7848:
/* 802C7848 002C4788  90 1C 00 48 */	stw r0, 0x48(r28)
/* 802C784C 002C478C  38 60 00 24 */	li r3, 0x24
/* 802C7850 002C4790  4B D5 C6 55 */	bl __nw__FUl
/* 802C7854 002C4794  7C 7B 1B 79 */	or. r27, r3, r3
/* 802C7858 002C4798  41 82 00 18 */	beq lbl_802C7870
/* 802C785C 002C479C  38 80 00 02 */	li r4, 2
/* 802C7860 002C47A0  4B F7 9A 7D */	bl __ct__Q24Game15JointShadowNodeFi
/* 802C7864 002C47A4  3C 60 80 4D */	lis r3, __vt__Q24Game16SphereShadowNode@ha
/* 802C7868 002C47A8  38 03 DE D8 */	addi r0, r3, __vt__Q24Game16SphereShadowNode@l
/* 802C786C 002C47AC  90 1B 00 00 */	stw r0, 0(r27)
lbl_802C7870:
/* 802C7870 002C47B0  93 7C 00 4C */	stw r27, 0x4c(r28)
/* 802C7874 002C47B4  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802C7878 002C47B8  80 9C 00 4C */	lwz r4, 0x4c(r28)
/* 802C787C 002C47BC  48 14 9B 8D */	bl add__5CNodeFP5CNode
/* 802C7880 002C47C0  7F 9F E3 78 */	mr r31, r28
/* 802C7884 002C47C4  7F 9E E3 78 */	mr r30, r28
/* 802C7888 002C47C8  3B A0 00 00 */	li r29, 0
lbl_802C788C:
/* 802C788C 002C47CC  38 60 00 28 */	li r3, 0x28
/* 802C7890 002C47D0  4B D5 C6 15 */	bl __nw__FUl
/* 802C7894 002C47D4  7C 7B 1B 79 */	or. r27, r3, r3
/* 802C7898 002C47D8  41 82 00 20 */	beq lbl_802C78B8
/* 802C789C 002C47DC  38 80 00 02 */	li r4, 2
/* 802C78A0 002C47E0  4B F7 9A 3D */	bl __ct__Q24Game15JointShadowNodeFi
/* 802C78A4 002C47E4  3C 60 80 4D */	lis r3, __vt__Q24Game19TubeShadowTransNode@ha
/* 802C78A8 002C47E8  38 00 00 00 */	li r0, 0
/* 802C78AC 002C47EC  38 63 DE C8 */	addi r3, r3, __vt__Q24Game19TubeShadowTransNode@l
/* 802C78B0 002C47F0  90 7B 00 00 */	stw r3, 0(r27)
/* 802C78B4 002C47F4  90 1B 00 24 */	stw r0, 0x24(r27)
lbl_802C78B8:
/* 802C78B8 002C47F8  93 7F 00 50 */	stw r27, 0x50(r31)
/* 802C78BC 002C47FC  38 60 00 28 */	li r3, 0x28
/* 802C78C0 002C4800  4B D5 C5 E5 */	bl __nw__FUl
/* 802C78C4 002C4804  7C 7B 1B 79 */	or. r27, r3, r3
/* 802C78C8 002C4808  41 82 00 20 */	beq lbl_802C78E8
/* 802C78CC 002C480C  38 80 00 02 */	li r4, 2
/* 802C78D0 002C4810  4B F7 9A 0D */	bl __ct__Q24Game15JointShadowNodeFi
/* 802C78D4 002C4814  3C 60 80 4D */	lis r3, __vt__Q24Game17TubeShadowSetNode@ha
/* 802C78D8 002C4818  38 00 00 00 */	li r0, 0
/* 802C78DC 002C481C  38 63 DE B8 */	addi r3, r3, __vt__Q24Game17TubeShadowSetNode@l
/* 802C78E0 002C4820  90 7B 00 00 */	stw r3, 0(r27)
/* 802C78E4 002C4824  90 1B 00 24 */	stw r0, 0x24(r27)
lbl_802C78E8:
/* 802C78E8 002C4828  93 7F 00 60 */	stw r27, 0x60(r31)
/* 802C78EC 002C482C  38 60 00 28 */	li r3, 0x28
/* 802C78F0 002C4830  4B D5 C5 B5 */	bl __nw__FUl
/* 802C78F4 002C4834  7C 7B 1B 79 */	or. r27, r3, r3
/* 802C78F8 002C4838  41 82 00 20 */	beq lbl_802C7918
/* 802C78FC 002C483C  38 80 00 02 */	li r4, 2
/* 802C7900 002C4840  4B F7 99 DD */	bl __ct__Q24Game15JointShadowNodeFi
/* 802C7904 002C4844  3C 60 80 4D */	lis r3, __vt__Q24Game17TubeShadowSetNode@ha
/* 802C7908 002C4848  38 00 00 00 */	li r0, 0
/* 802C790C 002C484C  38 63 DE B8 */	addi r3, r3, __vt__Q24Game17TubeShadowSetNode@l
/* 802C7910 002C4850  90 7B 00 00 */	stw r3, 0(r27)
/* 802C7914 002C4854  90 1B 00 24 */	stw r0, 0x24(r27)
lbl_802C7918:
/* 802C7918 002C4858  93 7F 00 70 */	stw r27, 0x70(r31)
/* 802C791C 002C485C  38 60 00 24 */	li r3, 0x24
/* 802C7920 002C4860  4B D5 C5 85 */	bl __nw__FUl
/* 802C7924 002C4864  7C 7B 1B 79 */	or. r27, r3, r3
/* 802C7928 002C4868  41 82 00 18 */	beq lbl_802C7940
/* 802C792C 002C486C  38 80 00 02 */	li r4, 2
/* 802C7930 002C4870  4B F7 99 AD */	bl __ct__Q24Game15JointShadowNodeFi
/* 802C7934 002C4874  3C 60 80 4D */	lis r3, __vt__Q24Game16SphereShadowNode@ha
/* 802C7938 002C4878  38 03 DE D8 */	addi r0, r3, __vt__Q24Game16SphereShadowNode@l
/* 802C793C 002C487C  90 1B 00 00 */	stw r0, 0(r27)
lbl_802C7940:
/* 802C7940 002C4880  93 7F 00 80 */	stw r27, 0x80(r31)
/* 802C7944 002C4884  38 60 00 24 */	li r3, 0x24
/* 802C7948 002C4888  4B D5 C5 5D */	bl __nw__FUl
/* 802C794C 002C488C  7C 7B 1B 79 */	or. r27, r3, r3
/* 802C7950 002C4890  41 82 00 18 */	beq lbl_802C7968
/* 802C7954 002C4894  38 80 00 02 */	li r4, 2
/* 802C7958 002C4898  4B F7 99 85 */	bl __ct__Q24Game15JointShadowNodeFi
/* 802C795C 002C489C  3C 60 80 4D */	lis r3, __vt__Q24Game16SphereShadowNode@ha
/* 802C7960 002C48A0  38 03 DE D8 */	addi r0, r3, __vt__Q24Game16SphereShadowNode@l
/* 802C7964 002C48A4  90 1B 00 00 */	stw r0, 0(r27)
lbl_802C7968:
/* 802C7968 002C48A8  93 7F 00 90 */	stw r27, 0x90(r31)
/* 802C796C 002C48AC  38 60 00 24 */	li r3, 0x24
/* 802C7970 002C48B0  4B D5 C5 35 */	bl __nw__FUl
/* 802C7974 002C48B4  7C 7B 1B 79 */	or. r27, r3, r3
/* 802C7978 002C48B8  41 82 00 18 */	beq lbl_802C7990
/* 802C797C 002C48BC  38 80 00 02 */	li r4, 2
/* 802C7980 002C48C0  4B F7 99 5D */	bl __ct__Q24Game15JointShadowNodeFi
/* 802C7984 002C48C4  3C 60 80 4D */	lis r3, __vt__Q24Game16SphereShadowNode@ha
/* 802C7988 002C48C8  38 03 DE D8 */	addi r0, r3, __vt__Q24Game16SphereShadowNode@l
/* 802C798C 002C48CC  90 1B 00 00 */	stw r0, 0(r27)
lbl_802C7990:
/* 802C7990 002C48D0  93 7F 00 A0 */	stw r27, 0xa0(r31)
/* 802C7994 002C48D4  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802C7998 002C48D8  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 802C799C 002C48DC  48 14 9A 6D */	bl add__5CNodeFP5CNode
/* 802C79A0 002C48E0  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802C79A4 002C48E4  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 802C79A8 002C48E8  48 14 9A 61 */	bl add__5CNodeFP5CNode
/* 802C79AC 002C48EC  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802C79B0 002C48F0  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 802C79B4 002C48F4  48 14 9A 55 */	bl add__5CNodeFP5CNode
/* 802C79B8 002C48F8  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802C79BC 002C48FC  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 802C79C0 002C4900  48 14 9A 49 */	bl add__5CNodeFP5CNode
/* 802C79C4 002C4904  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802C79C8 002C4908  80 9F 00 90 */	lwz r4, 0x90(r31)
/* 802C79CC 002C490C  48 14 9A 3D */	bl add__5CNodeFP5CNode
/* 802C79D0 002C4910  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802C79D4 002C4914  80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 802C79D8 002C4918  48 14 9A 31 */	bl add__5CNodeFP5CNode
/* 802C79DC 002C491C  38 00 00 00 */	li r0, 0
/* 802C79E0 002C4920  3B BD 00 01 */	addi r29, r29, 1
/* 802C79E4 002C4924  90 1E 00 08 */	stw r0, 8(r30)
/* 802C79E8 002C4928  2C 1D 00 04 */	cmpwi r29, 4
/* 802C79EC 002C492C  3B FF 00 04 */	addi r31, r31, 4
/* 802C79F0 002C4930  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802C79F4 002C4934  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802C79F8 002C4938  90 1E 00 14 */	stw r0, 0x14(r30)
/* 802C79FC 002C493C  3B DE 00 10 */	addi r30, r30, 0x10
/* 802C7A00 002C4940  41 80 FE 8C */	blt lbl_802C788C
/* 802C7A04 002C4944  7F 83 E3 78 */	mr r3, r28
/* 802C7A08 002C4948  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802C7A0C 002C494C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C7A10 002C4950  7C 08 03 A6 */	mtlr r0
/* 802C7A14 002C4954  38 21 00 20 */	addi r1, r1, 0x20
/* 802C7A18 002C4958  4E 80 00 20 */	blr 

.global init__Q34Game7BigFoot16BigFootShadowMgrFv
init__Q34Game7BigFoot16BigFootShadowMgrFv:
/* 802C7A1C 002C495C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C7A20 002C4960  7C 08 02 A6 */	mflr r0
/* 802C7A24 002C4964  3C 80 80 49 */	lis r4, lbl_8048B640@ha
/* 802C7A28 002C4968  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C7A2C 002C496C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C7A30 002C4970  3B E4 B6 40 */	addi r31, r4, lbl_8048B640@l
/* 802C7A34 002C4974  38 82 E3 88 */	addi r4, r2, lbl_8051C6E8@sda21
/* 802C7A38 002C4978  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C7A3C 002C497C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802C7A40 002C4980  7C 7D 1B 78 */	mr r29, r3
/* 802C7A44 002C4984  80 63 00 04 */	lwz r3, 4(r3)
/* 802C7A48 002C4988  83 C3 01 74 */	lwz r30, 0x174(r3)
/* 802C7A4C 002C498C  7F C3 F3 78 */	mr r3, r30
/* 802C7A50 002C4990  48 17 75 95 */	bl getJoint__Q28SysShape5ModelFPc
/* 802C7A54 002C4994  48 16 1E 4D */	bl getWorldMatrix__Q28SysShape5JointFv
/* 802C7A58 002C4998  90 7D 00 00 */	stw r3, 0(r29)
/* 802C7A5C 002C499C  7F C3 F3 78 */	mr r3, r30
/* 802C7A60 002C49A0  38 9F 00 14 */	addi r4, r31, 0x14
/* 802C7A64 002C49A4  48 17 75 81 */	bl getJoint__Q28SysShape5ModelFPc
/* 802C7A68 002C49A8  80 BD 00 50 */	lwz r5, 0x50(r29)
/* 802C7A6C 002C49AC  38 9F 00 20 */	addi r4, r31, 0x20
/* 802C7A70 002C49B0  90 65 00 24 */	stw r3, 0x24(r5)
/* 802C7A74 002C49B4  7F C3 F3 78 */	mr r3, r30
/* 802C7A78 002C49B8  48 17 75 6D */	bl getJoint__Q28SysShape5ModelFPc
/* 802C7A7C 002C49BC  80 BD 00 60 */	lwz r5, 0x60(r29)
/* 802C7A80 002C49C0  38 9F 00 2C */	addi r4, r31, 0x2c
/* 802C7A84 002C49C4  90 65 00 24 */	stw r3, 0x24(r5)
/* 802C7A88 002C49C8  7F C3 F3 78 */	mr r3, r30
/* 802C7A8C 002C49CC  48 17 75 59 */	bl getJoint__Q28SysShape5ModelFPc
/* 802C7A90 002C49D0  80 BD 00 70 */	lwz r5, 0x70(r29)
/* 802C7A94 002C49D4  38 9F 00 38 */	addi r4, r31, 0x38
/* 802C7A98 002C49D8  90 65 00 24 */	stw r3, 0x24(r5)
/* 802C7A9C 002C49DC  7F C3 F3 78 */	mr r3, r30
/* 802C7AA0 002C49E0  48 17 75 45 */	bl getJoint__Q28SysShape5ModelFPc
/* 802C7AA4 002C49E4  80 BD 00 54 */	lwz r5, 0x54(r29)
/* 802C7AA8 002C49E8  38 9F 00 44 */	addi r4, r31, 0x44
/* 802C7AAC 002C49EC  90 65 00 24 */	stw r3, 0x24(r5)
/* 802C7AB0 002C49F0  7F C3 F3 78 */	mr r3, r30
/* 802C7AB4 002C49F4  48 17 75 31 */	bl getJoint__Q28SysShape5ModelFPc
/* 802C7AB8 002C49F8  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 802C7ABC 002C49FC  38 9F 00 50 */	addi r4, r31, 0x50
/* 802C7AC0 002C4A00  90 65 00 24 */	stw r3, 0x24(r5)
/* 802C7AC4 002C4A04  7F C3 F3 78 */	mr r3, r30
/* 802C7AC8 002C4A08  48 17 75 1D */	bl getJoint__Q28SysShape5ModelFPc
/* 802C7ACC 002C4A0C  80 BD 00 74 */	lwz r5, 0x74(r29)
/* 802C7AD0 002C4A10  38 9F 00 5C */	addi r4, r31, 0x5c
/* 802C7AD4 002C4A14  90 65 00 24 */	stw r3, 0x24(r5)
/* 802C7AD8 002C4A18  7F C3 F3 78 */	mr r3, r30
/* 802C7ADC 002C4A1C  48 17 75 09 */	bl getJoint__Q28SysShape5ModelFPc
/* 802C7AE0 002C4A20  80 BD 00 58 */	lwz r5, 0x58(r29)
/* 802C7AE4 002C4A24  38 9F 00 68 */	addi r4, r31, 0x68
/* 802C7AE8 002C4A28  90 65 00 24 */	stw r3, 0x24(r5)
/* 802C7AEC 002C4A2C  7F C3 F3 78 */	mr r3, r30
/* 802C7AF0 002C4A30  48 17 74 F5 */	bl getJoint__Q28SysShape5ModelFPc
/* 802C7AF4 002C4A34  80 BD 00 68 */	lwz r5, 0x68(r29)
/* 802C7AF8 002C4A38  38 9F 00 74 */	addi r4, r31, 0x74
/* 802C7AFC 002C4A3C  90 65 00 24 */	stw r3, 0x24(r5)
/* 802C7B00 002C4A40  7F C3 F3 78 */	mr r3, r30
/* 802C7B04 002C4A44  48 17 74 E1 */	bl getJoint__Q28SysShape5ModelFPc
/* 802C7B08 002C4A48  80 BD 00 78 */	lwz r5, 0x78(r29)
/* 802C7B0C 002C4A4C  38 9F 00 80 */	addi r4, r31, 0x80
/* 802C7B10 002C4A50  90 65 00 24 */	stw r3, 0x24(r5)
/* 802C7B14 002C4A54  7F C3 F3 78 */	mr r3, r30
/* 802C7B18 002C4A58  48 17 74 CD */	bl getJoint__Q28SysShape5ModelFPc
/* 802C7B1C 002C4A5C  80 BD 00 5C */	lwz r5, 0x5c(r29)
/* 802C7B20 002C4A60  38 9F 00 8C */	addi r4, r31, 0x8c
/* 802C7B24 002C4A64  90 65 00 24 */	stw r3, 0x24(r5)
/* 802C7B28 002C4A68  7F C3 F3 78 */	mr r3, r30
/* 802C7B2C 002C4A6C  48 17 74 B9 */	bl getJoint__Q28SysShape5ModelFPc
/* 802C7B30 002C4A70  80 BD 00 6C */	lwz r5, 0x6c(r29)
/* 802C7B34 002C4A74  38 9F 00 98 */	addi r4, r31, 0x98
/* 802C7B38 002C4A78  90 65 00 24 */	stw r3, 0x24(r5)
/* 802C7B3C 002C4A7C  7F C3 F3 78 */	mr r3, r30
/* 802C7B40 002C4A80  48 17 74 A5 */	bl getJoint__Q28SysShape5ModelFPc
/* 802C7B44 002C4A84  80 9D 00 7C */	lwz r4, 0x7c(r29)
/* 802C7B48 002C4A88  90 64 00 24 */	stw r3, 0x24(r4)
/* 802C7B4C 002C4A8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C7B50 002C4A90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C7B54 002C4A94  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C7B58 002C4A98  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802C7B5C 002C4A9C  7C 08 03 A6 */	mtlr r0
/* 802C7B60 002C4AA0  38 21 00 20 */	addi r1, r1, 0x20
/* 802C7B64 002C4AA4  4E 80 00 20 */	blr 

.global "setJointPosPtr__Q34Game7BigFoot16BigFootShadowMgrFiiP10Vector3<f>"
"setJointPosPtr__Q34Game7BigFoot16BigFootShadowMgrFiiP10Vector3<f>":
/* 802C7B68 002C4AA8  54 84 20 36 */	slwi r4, r4, 4
/* 802C7B6C 002C4AAC  54 A0 10 3A */	slwi r0, r5, 2
/* 802C7B70 002C4AB0  7C 63 22 14 */	add r3, r3, r4
/* 802C7B74 002C4AB4  7C 63 02 14 */	add r3, r3, r0
/* 802C7B78 002C4AB8  90 C3 00 08 */	stw r6, 8(r3)
/* 802C7B7C 002C4ABC  4E 80 00 20 */	blr 

.global update__Q34Game7BigFoot16BigFootShadowMgrFv
update__Q34Game7BigFoot16BigFootShadowMgrFv:
/* 802C7B80 002C4AC0  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 802C7B84 002C4AC4  7C 08 02 A6 */	mflr r0
/* 802C7B88 002C4AC8  90 01 01 14 */	stw r0, 0x114(r1)
/* 802C7B8C 002C4ACC  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 802C7B90 002C4AD0  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 802C7B94 002C4AD4  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 802C7B98 002C4AD8  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, qr0
/* 802C7B9C 002C4ADC  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 802C7BA0 002C4AE0  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, qr0
/* 802C7BA4 002C4AE4  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 802C7BA8 002C4AE8  F3 81 00 D8 */	psq_st f28, 216(r1), 0, qr0
/* 802C7BAC 002C4AEC  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 802C7BB0 002C4AF0  F3 61 00 C8 */	psq_st f27, 200(r1), 0, qr0
/* 802C7BB4 002C4AF4  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 802C7BB8 002C4AF8  F3 41 00 B8 */	psq_st f26, 184(r1), 0, qr0
/* 802C7BBC 002C4AFC  DB 21 00 A0 */	stfd f25, 0xa0(r1)
/* 802C7BC0 002C4B00  F3 21 00 A8 */	psq_st f25, 168(r1), 0, qr0
/* 802C7BC4 002C4B04  DB 01 00 90 */	stfd f24, 0x90(r1)
/* 802C7BC8 002C4B08  F3 01 00 98 */	psq_st f24, 152(r1), 0, qr0
/* 802C7BCC 002C4B0C  BF 41 00 78 */	stmw r26, 0x78(r1)
/* 802C7BD0 002C4B10  7C 7A 1B 78 */	mr r26, r3
/* 802C7BD4 002C4B14  38 61 00 08 */	addi r3, r1, 8
/* 802C7BD8 002C4B18  80 9A 00 04 */	lwz r4, 4(r26)
/* 802C7BDC 002C4B1C  48 00 16 79 */	bl getTraceCentrePosition__Q34Game7BigFoot3ObjFv
/* 802C7BE0 002C4B20  C0 62 E3 90 */	lfs f3, lbl_8051C6F0@sda21(r2)
/* 802C7BE4 002C4B24  C0 42 E3 94 */	lfs f2, lbl_8051C6F4@sda21(r2)
/* 802C7BE8 002C4B28  ED 03 00 F2 */	fmuls f8, f3, f3
/* 802C7BEC 002C4B2C  C0 C1 00 08 */	lfs f6, 8(r1)
/* 802C7BF0 002C4B30  EC E2 00 B2 */	fmuls f7, f2, f2
/* 802C7BF4 002C4B34  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 802C7BF8 002C4B38  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 802C7BFC 002C4B3C  C0 22 E3 98 */	lfs f1, lbl_8051C6F8@sda21(r2)
/* 802C7C00 002C4B40  EC 08 38 2A */	fadds f0, f8, f7
/* 802C7C04 002C4B44  D0 C1 00 50 */	stfs f6, 0x50(r1)
/* 802C7C08 002C4B48  D0 A1 00 54 */	stfs f5, 0x54(r1)
/* 802C7C0C 002C4B4C  EC 08 00 2A */	fadds f0, f8, f0
/* 802C7C10 002C4B50  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 802C7C14 002C4B54  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802C7C18 002C4B58  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 802C7C1C 002C4B5C  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 802C7C20 002C4B60  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 802C7C24 002C4B64  40 81 00 20 */	ble lbl_802C7C44
/* 802C7C28 002C4B68  EC 03 38 FA */	fmadds f0, f3, f3, f7
/* 802C7C2C 002C4B6C  EC 68 00 2A */	fadds f3, f8, f0
/* 802C7C30 002C4B70  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 802C7C34 002C4B74  40 81 00 14 */	ble lbl_802C7C48
/* 802C7C38 002C4B78  FC 00 18 34 */	frsqrte f0, f3
/* 802C7C3C 002C4B7C  EC 60 00 F2 */	fmuls f3, f0, f3
/* 802C7C40 002C4B80  48 00 00 08 */	b lbl_802C7C48
lbl_802C7C44:
/* 802C7C44 002C4B84  FC 60 08 90 */	fmr f3, f1
lbl_802C7C48:
/* 802C7C48 002C4B88  C0 02 E3 98 */	lfs f0, lbl_8051C6F8@sda21(r2)
/* 802C7C4C 002C4B8C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802C7C50 002C4B90  40 81 00 30 */	ble lbl_802C7C80
/* 802C7C54 002C4B94  C0 02 E3 9C */	lfs f0, lbl_8051C6FC@sda21(r2)
/* 802C7C58 002C4B98  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 802C7C5C 002C4B9C  EC 60 18 24 */	fdivs f3, f0, f3
/* 802C7C60 002C4BA0  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 802C7C64 002C4BA4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 802C7C68 002C4BA8  EC 42 00 F2 */	fmuls f2, f2, f3
/* 802C7C6C 002C4BAC  EC 21 00 F2 */	fmuls f1, f1, f3
/* 802C7C70 002C4BB0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 802C7C74 002C4BB4  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 802C7C78 002C4BB8  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 802C7C7C 002C4BBC  D0 01 00 64 */	stfs f0, 0x64(r1)
lbl_802C7C80:
/* 802C7C80 002C4BC0  80 7A 00 00 */	lwz r3, 0(r26)
/* 802C7C84 002C4BC4  38 81 00 50 */	addi r4, r1, 0x50
/* 802C7C88 002C4BC8  C0 02 E3 A0 */	lfs f0, lbl_8051C700@sda21(r2)
/* 802C7C8C 002C4BCC  38 A1 00 14 */	addi r5, r1, 0x14
/* 802C7C90 002C4BD0  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 802C7C94 002C4BD4  C0 A3 00 2C */	lfs f5, 0x2c(r3)
/* 802C7C98 002C4BD8  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 802C7C9C 002C4BDC  EC 62 00 2A */	fadds f3, f2, f0
/* 802C7CA0 002C4BE0  C0 22 E3 AC */	lfs f1, lbl_8051C70C@sda21(r2)
/* 802C7CA4 002C4BE4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 802C7CA8 002C4BE8  C0 42 E3 98 */	lfs f2, lbl_8051C6F8@sda21(r2)
/* 802C7CAC 002C4BEC  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 802C7CB0 002C4BF0  C0 02 E3 B0 */	lfs f0, lbl_8051C710@sda21(r2)
/* 802C7CB4 002C4BF4  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 802C7CB8 002C4BF8  C0 82 E3 A4 */	lfs f4, lbl_8051C704@sda21(r2)
/* 802C7CBC 002C4BFC  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 802C7CC0 002C4C00  C0 62 E3 A8 */	lfs f3, lbl_8051C708@sda21(r2)
/* 802C7CC4 002C4C04  80 7A 00 04 */	lwz r3, 4(r26)
/* 802C7CC8 002C4C08  C0 A3 02 D4 */	lfs f5, 0x2d4(r3)
/* 802C7CCC 002C4C0C  EC 21 01 72 */	fmuls f1, f1, f5
/* 802C7CD0 002C4C10  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 802C7CD4 002C4C14  EF 24 01 72 */	fmuls f25, f4, f5
/* 802C7CD8 002C4C18  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 802C7CDC 002C4C1C  EF 03 01 72 */	fmuls f24, f3, f5
/* 802C7CE0 002C4C20  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 802C7CE4 002C4C24  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 802C7CE8 002C4C28  80 7A 00 4C */	lwz r3, 0x4c(r26)
/* 802C7CEC 002C4C2C  48 02 A9 F1 */	bl "makeShadowSRT__Q24Game16SphereShadowNodeFRQ24Game15JointShadowParmR10Vector3<f>"
/* 802C7CF0 002C4C30  C3 42 E3 B4 */	lfs f26, lbl_8051C714@sda21(r2)
/* 802C7CF4 002C4C34  7F 5F D3 78 */	mr r31, r26
/* 802C7CF8 002C4C38  C3 62 E3 B0 */	lfs f27, lbl_8051C710@sda21(r2)
/* 802C7CFC 002C4C3C  7F 5E D3 78 */	mr r30, r26
/* 802C7D00 002C4C40  C3 82 E3 B8 */	lfs f28, lbl_8051C718@sda21(r2)
/* 802C7D04 002C4C44  3B A1 00 2C */	addi r29, r1, 0x2c
/* 802C7D08 002C4C48  C3 A2 E3 98 */	lfs f29, lbl_8051C6F8@sda21(r2)
/* 802C7D0C 002C4C4C  3B 81 00 38 */	addi r28, r1, 0x38
/* 802C7D10 002C4C50  C3 C2 E3 BC */	lfs f30, lbl_8051C71C@sda21(r2)
/* 802C7D14 002C4C54  3B 61 00 44 */	addi r27, r1, 0x44
/* 802C7D18 002C4C58  C3 E2 E3 C0 */	lfs f31, lbl_8051C720@sda21(r2)
/* 802C7D1C 002C4C5C  3B 40 00 00 */	li r26, 0
lbl_802C7D20:
/* 802C7D20 002C4C60  D3 41 00 68 */	stfs f26, 0x68(r1)
/* 802C7D24 002C4C64  7F A6 EB 78 */	mr r6, r29
/* 802C7D28 002C4C68  38 81 00 50 */	addi r4, r1, 0x50
/* 802C7D2C 002C4C6C  38 A1 00 20 */	addi r5, r1, 0x20
/* 802C7D30 002C4C70  D3 61 00 6C */	stfs f27, 0x6c(r1)
/* 802C7D34 002C4C74  D3 21 00 70 */	stfs f25, 0x70(r1)
/* 802C7D38 002C4C78  D3 81 00 74 */	stfs f28, 0x74(r1)
/* 802C7D3C 002C4C7C  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802C7D40 002C4C80  48 02 A3 01 */	bl "makeShadowSRT__Q24Game19TubeShadowTransNodeFRQ24Game15JointShadowParmR10Vector3<f>R10Vector3<f>"
/* 802C7D44 002C4C84  D3 A1 00 68 */	stfs f29, 0x68(r1)
/* 802C7D48 002C4C88  7F A5 EB 78 */	mr r5, r29
/* 802C7D4C 002C4C8C  7F 86 E3 78 */	mr r6, r28
/* 802C7D50 002C4C90  38 81 00 50 */	addi r4, r1, 0x50
/* 802C7D54 002C4C94  D3 A1 00 6C */	stfs f29, 0x6c(r1)
/* 802C7D58 002C4C98  D3 21 00 70 */	stfs f25, 0x70(r1)
/* 802C7D5C 002C4C9C  D3 81 00 74 */	stfs f28, 0x74(r1)
/* 802C7D60 002C4CA0  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 802C7D64 002C4CA4  48 02 A5 55 */	bl "makeShadowSRT__Q24Game17TubeShadowSetNodeFRQ24Game15JointShadowParmR10Vector3<f>R10Vector3<f>"
/* 802C7D68 002C4CA8  D3 C1 00 68 */	stfs f30, 0x68(r1)
/* 802C7D6C 002C4CAC  7F 85 E3 78 */	mr r5, r28
/* 802C7D70 002C4CB0  7F 66 DB 78 */	mr r6, r27
/* 802C7D74 002C4CB4  38 81 00 50 */	addi r4, r1, 0x50
/* 802C7D78 002C4CB8  D3 C1 00 6C */	stfs f30, 0x6c(r1)
/* 802C7D7C 002C4CBC  D3 21 00 70 */	stfs f25, 0x70(r1)
/* 802C7D80 002C4CC0  D3 81 00 74 */	stfs f28, 0x74(r1)
/* 802C7D84 002C4CC4  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802C7D88 002C4CC8  48 02 A5 31 */	bl "makeShadowSRT__Q24Game17TubeShadowSetNodeFRQ24Game15JointShadowParmR10Vector3<f>R10Vector3<f>"
/* 802C7D8C 002C4CCC  D3 A1 00 68 */	stfs f29, 0x68(r1)
/* 802C7D90 002C4CD0  7F A5 EB 78 */	mr r5, r29
/* 802C7D94 002C4CD4  38 81 00 50 */	addi r4, r1, 0x50
/* 802C7D98 002C4CD8  D3 A1 00 6C */	stfs f29, 0x6c(r1)
/* 802C7D9C 002C4CDC  D3 21 00 70 */	stfs f25, 0x70(r1)
/* 802C7DA0 002C4CE0  D3 C1 00 74 */	stfs f30, 0x74(r1)
/* 802C7DA4 002C4CE4  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 802C7DA8 002C4CE8  48 02 A9 35 */	bl "makeShadowSRT__Q24Game16SphereShadowNodeFRQ24Game15JointShadowParmR10Vector3<f>"
/* 802C7DAC 002C4CEC  D3 E1 00 74 */	stfs f31, 0x74(r1)
/* 802C7DB0 002C4CF0  7F 85 E3 78 */	mr r5, r28
/* 802C7DB4 002C4CF4  38 81 00 50 */	addi r4, r1, 0x50
/* 802C7DB8 002C4CF8  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 802C7DBC 002C4CFC  48 02 A9 21 */	bl "makeShadowSRT__Q24Game16SphereShadowNodeFRQ24Game15JointShadowParmR10Vector3<f>"
/* 802C7DC0 002C4D00  D3 01 00 70 */	stfs f24, 0x70(r1)
/* 802C7DC4 002C4D04  7F 65 DB 78 */	mr r5, r27
/* 802C7DC8 002C4D08  38 81 00 50 */	addi r4, r1, 0x50
/* 802C7DCC 002C4D0C  D3 C1 00 74 */	stfs f30, 0x74(r1)
/* 802C7DD0 002C4D10  80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 802C7DD4 002C4D14  48 02 A9 09 */	bl "makeShadowSRT__Q24Game16SphereShadowNodeFRQ24Game15JointShadowParmR10Vector3<f>"
/* 802C7DD8 002C4D18  80 7E 00 08 */	lwz r3, 8(r30)
/* 802C7DDC 002C4D1C  28 03 00 00 */	cmplwi r3, 0
/* 802C7DE0 002C4D20  41 82 00 24 */	beq lbl_802C7E04
/* 802C7DE4 002C4D24  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802C7DE8 002C4D28  D0 03 00 00 */	stfs f0, 0(r3)
/* 802C7DEC 002C4D2C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802C7DF0 002C4D30  80 7E 00 08 */	lwz r3, 8(r30)
/* 802C7DF4 002C4D34  D0 03 00 04 */	stfs f0, 4(r3)
/* 802C7DF8 002C4D38  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 802C7DFC 002C4D3C  80 7E 00 08 */	lwz r3, 8(r30)
/* 802C7E00 002C4D40  D0 03 00 08 */	stfs f0, 8(r3)
lbl_802C7E04:
/* 802C7E04 002C4D44  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802C7E08 002C4D48  28 03 00 00 */	cmplwi r3, 0
/* 802C7E0C 002C4D4C  41 82 00 24 */	beq lbl_802C7E30
/* 802C7E10 002C4D50  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 802C7E14 002C4D54  D0 03 00 00 */	stfs f0, 0(r3)
/* 802C7E18 002C4D58  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 802C7E1C 002C4D5C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802C7E20 002C4D60  D0 03 00 04 */	stfs f0, 4(r3)
/* 802C7E24 002C4D64  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 802C7E28 002C4D68  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802C7E2C 002C4D6C  D0 03 00 08 */	stfs f0, 8(r3)
lbl_802C7E30:
/* 802C7E30 002C4D70  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802C7E34 002C4D74  28 03 00 00 */	cmplwi r3, 0
/* 802C7E38 002C4D78  41 82 00 24 */	beq lbl_802C7E5C
/* 802C7E3C 002C4D7C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 802C7E40 002C4D80  D0 03 00 00 */	stfs f0, 0(r3)
/* 802C7E44 002C4D84  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 802C7E48 002C4D88  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802C7E4C 002C4D8C  D0 03 00 04 */	stfs f0, 4(r3)
/* 802C7E50 002C4D90  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 802C7E54 002C4D94  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802C7E58 002C4D98  D0 03 00 08 */	stfs f0, 8(r3)
lbl_802C7E5C:
/* 802C7E5C 002C4D9C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 802C7E60 002C4DA0  28 03 00 00 */	cmplwi r3, 0
/* 802C7E64 002C4DA4  41 82 00 24 */	beq lbl_802C7E88
/* 802C7E68 002C4DA8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 802C7E6C 002C4DAC  D0 03 00 00 */	stfs f0, 0(r3)
/* 802C7E70 002C4DB0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 802C7E74 002C4DB4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 802C7E78 002C4DB8  D0 03 00 04 */	stfs f0, 4(r3)
/* 802C7E7C 002C4DBC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 802C7E80 002C4DC0  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 802C7E84 002C4DC4  D0 03 00 08 */	stfs f0, 8(r3)
lbl_802C7E88:
/* 802C7E88 002C4DC8  3B 5A 00 01 */	addi r26, r26, 1
/* 802C7E8C 002C4DCC  3B DE 00 10 */	addi r30, r30, 0x10
/* 802C7E90 002C4DD0  2C 1A 00 04 */	cmpwi r26, 4
/* 802C7E94 002C4DD4  3B FF 00 04 */	addi r31, r31, 4
/* 802C7E98 002C4DD8  41 80 FE 88 */	blt lbl_802C7D20
/* 802C7E9C 002C4DDC  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 802C7EA0 002C4DE0  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 802C7EA4 002C4DE4  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, qr0
/* 802C7EA8 002C4DE8  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 802C7EAC 002C4DEC  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, qr0
/* 802C7EB0 002C4DF0  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 802C7EB4 002C4DF4  E3 81 00 D8 */	psq_l f28, 216(r1), 0, qr0
/* 802C7EB8 002C4DF8  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 802C7EBC 002C4DFC  E3 61 00 C8 */	psq_l f27, 200(r1), 0, qr0
/* 802C7EC0 002C4E00  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 802C7EC4 002C4E04  E3 41 00 B8 */	psq_l f26, 184(r1), 0, qr0
/* 802C7EC8 002C4E08  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 802C7ECC 002C4E0C  E3 21 00 A8 */	psq_l f25, 168(r1), 0, qr0
/* 802C7ED0 002C4E10  CB 21 00 A0 */	lfd f25, 0xa0(r1)
/* 802C7ED4 002C4E14  E3 01 00 98 */	psq_l f24, 152(r1), 0, qr0
/* 802C7ED8 002C4E18  CB 01 00 90 */	lfd f24, 0x90(r1)
/* 802C7EDC 002C4E1C  BB 41 00 78 */	lmw r26, 0x78(r1)
/* 802C7EE0 002C4E20  80 01 01 14 */	lwz r0, 0x114(r1)
/* 802C7EE4 002C4E24  7C 08 03 A6 */	mtlr r0
/* 802C7EE8 002C4E28  38 21 01 10 */	addi r1, r1, 0x110
/* 802C7EEC 002C4E2C  4E 80 00 20 */	blr 
