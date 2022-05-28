#include "types.h"
#include "JSystem/JUT/JUTFont.h"

/*
    Generated from dpostproc

    .section .data, "wa"  # 0x8049E220 - 0x804EFC20
    .global __vt__7JUTFont
    __vt__7JUTFont:
        .4byte 0
        .4byte 0
        .4byte __dt__7JUTFontFv
        .4byte 0
        .4byte setGX__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte getCellWidth__7JUTFontCFv
        .4byte getCellHeight__7JUTFontCFv
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte 0
*/

/*
 * --INFO--
 * Address:	8002D144
 * Size:	00002C
 */
JUTFont::JUTFont()
{
	/*
	lis      r5, __vt__7JUTFont@ha
	li       r4, -1
	addi     r5, r5, __vt__7JUTFont@l
	li       r0, 0
	stw      r5, 0(r3)
	stw      r4, 0xc(r3)
	stw      r4, 0x10(r3)
	stw      r4, 0x14(r3)
	stw      r4, 0x18(r3)
	stb      r0, 4(r3)
	blr
	*/
}

/*
 * --INFO--
 * Address:	8002D170
 * Size:	00004C
 */
void JUTFont::initialize_state()
{
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	li       r0, -1
	addi     r4, r1, 0xc
	stw      r31, 0x1c(r1)
	mr       r31, r3
	stw      r0, 8(r1)
	stw      r0, 0xc(r1)
	bl       setCharColor__7JUTFontFQ28JUtility6TColor
	li       r0, 0
	stb      r0, 5(r31)
	stw      r0, 8(r31)
	stb      r0, 4(r31)
	lwz      r31, 0x1c(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	8002D1BC
 * Size:	000054
 */
void JUTFont::setCharColor(JUtility::TColor)
{
	/*
	lbz      r7, 0(r4)
	lbz      r6, 1(r4)
	stb      r7, 0xc(r3)
	lbz      r5, 2(r4)
	stb      r6, 0xd(r3)
	lbz      r0, 3(r4)
	stb      r5, 0xe(r3)
	stb      r0, 0xf(r3)
	stb      r7, 0x10(r3)
	stb      r6, 0x11(r3)
	stb      r5, 0x12(r3)
	stb      r0, 0x13(r3)
	stb      r7, 0x14(r3)
	stb      r6, 0x15(r3)
	stb      r5, 0x16(r3)
	stb      r0, 0x17(r3)
	stb      r7, 0x18(r3)
	stb      r6, 0x19(r3)
	stb      r5, 0x1a(r3)
	stb      r0, 0x1b(r3)
	blr
	*/
}

/*
 * --INFO--
 * Address:	8002D210
 * Size:	000064
 */
void JUTFont::setGradColor(JUtility::TColor, JUtility::TColor)
{
	/*
	lbz      r10, 0(r4)
	lbz      r0, 1(r4)
	stb      r10, 0xc(r3)
	lbz      r9, 2(r4)
	stb      r0, 0xd(r3)
	lbz      r8, 3(r4)
	stb      r9, 0xe(r3)
	lbz      r7, 0(r5)
	stb      r8, 0xf(r3)
	lbz      r6, 1(r5)
	stb      r10, 0x10(r3)
	lbz      r4, 2(r5)
	stb      r0, 0x11(r3)
	lbz      r0, 3(r5)
	stb      r9, 0x12(r3)
	stb      r8, 0x13(r3)
	stb      r7, 0x14(r3)
	stb      r6, 0x15(r3)
	stb      r4, 0x16(r3)
	stb      r0, 0x17(r3)
	stb      r7, 0x18(r3)
	stb      r6, 0x19(r3)
	stb      r4, 0x1a(r3)
	stb      r0, 0x1b(r3)
	blr
	*/
}

/*
 * --INFO--
 * Address:	8002D274
 * Size:	000118
 */
void JUTFont::drawString_size_scale(float, float, float, float, const char*, u32, bool)
{
	/*
	.loc_0x0:
	  stwu      r1, -0x70(r1)
	  mflr      r0
	  stw       r0, 0x74(r1)
	  stfd      f31, 0x60(r1)
	  psq_st    f31,0x68(r1),0,0
	  stfd      f30, 0x50(r1)
	  psq_st    f30,0x58(r1),0,0
	  stfd      f29, 0x40(r1)
	  psq_st    f29,0x48(r1),0,0
	  stfd      f28, 0x30(r1)
	  psq_st    f28,0x38(r1),0,0
	  stfd      f27, 0x20(r1)
	  psq_st    f27,0x28(r1),0,0
	  stmw      r27, 0xC(r1)
	  fmr       f27, f1
	  mr        r27, r3
	  fmr       f28, f2
	  mr        r28, r4
	  fmr       f29, f3
	  mr        r29, r5
	  fmr       f30, f4
	  mr        r30, r6
	  fmr       f31, f27
	  b         .loc_0xD0

	.loc_0x60:
	  lwz       r12, 0x0(r27)
	  mr        r3, r27
	  lbz       r4, 0x0(r28)
	  lwz       r12, 0x40(r12)
	  mr        r31, r4
	  mtctr     r12
	  bctrl
	  rlwinm.   r0,r3,0,24,31
	  beq-      .loc_0x94
	  lbzu      r0, 0x1(r28)
	  rlwinm    r31,r31,8,0,23
	  subi      r29, r29, 0x1
	  or        r31, r31, r0

	.loc_0x94:
	  mr        r3, r27
	  fmr       f1, f27
	  lwz       r12, 0x0(r27)
	  fmr       f2, f28
	  fmr       f3, f29
	  mr        r4, r31
	  lwz       r12, 0x14(r12)
	  fmr       f4, f30
	  mr        r5, r30
	  mtctr     r12
	  bctrl
	  fadds     f27, f27, f1
	  li        r30, 0x1
	  subi      r29, r29, 0x1
	  addi      r28, r28, 0x1

	.loc_0xD0:
	  cmplwi    r29, 0
	  bne+      .loc_0x60
	  fsubs     f1, f27, f31
	  psq_l     f31,0x68(r1),0,0
	  lfd       f31, 0x60(r1)
	  psq_l     f30,0x58(r1),0,0
	  lfd       f30, 0x50(r1)
	  psq_l     f29,0x48(r1),0,0
	  lfd       f29, 0x40(r1)
	  psq_l     f28,0x38(r1),0,0
	  lfd       f28, 0x30(r1)
	  psq_l     f27,0x28(r1),0,0
	  lfd       f27, 0x20(r1)
	  lmw       r27, 0xC(r1)
	  lwz       r0, 0x74(r1)
	  mtlr      r0
	  addi      r1, r1, 0x70
	  blr
	*/
}

/*
 * --INFO--
 * Address:	8002D38C
 * Size:	000048
 */
JUTFont::~JUTFont()
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r3, r3
	beq      lbl_8002D3BC
	lis      r5, __vt__7JUTFont@ha
	extsh.   r0, r4
	addi     r0, r5, __vt__7JUTFont@l
	stw      r0, 0(r31)
	ble      lbl_8002D3BC
	bl       __dl__FPv

lbl_8002D3BC:
	lwz      r0, 0x14(r1)
	mr       r3, r31
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	8002D3D4
 * Size:	00002C
 */
void JUTFont::setGX(JUtility::TColor, JUtility::TColor)
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0xc(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	8002D400
 * Size:	00002C
 */
u16 JUTFont::getCellWidth() const
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x28(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	8002D42C
 * Size:	00002C
 */
u16 JUTFont::getCellHeight() const
{
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x24(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}
