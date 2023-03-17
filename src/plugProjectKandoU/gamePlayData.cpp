#include "Game/AIConstants.h"
#include "Game/BirthMgr.h"
#include "Game/DeathMgr.h"
#include "Game/Piki.h"
#include "Game/gameGeneratorCache.h"
#include "Game/gamePlayData.h"
#include "Game/gameStages.h"
#include "JSystem/JUtility/JUTException.h"
#include "System.h"
#include "types.h"
#include "Game/Entities/PelletOtakara.h"
#include "Game/Entities/PelletItem.h"
#include "Game/gameStat.h"

/*
 * --INFO--
 * Address:	........
 * Size:	0000E4
 */
void _Print(char* name, ...) { OSReport("PlayData"); }

namespace {
float repay_levs[10] = {
	10.0f, 20.0f, 30.0f, 40.0f, 50.0f, 60.0f, 70.0f, 80.0f, 90.0f, 100.0f,
};
} // namespace

namespace Game {

PlayData* playData;

/*
 * --INFO--
 * Address:	801E5354
 * Size:	000010
 */
KindCounter::KindCounter()
    : mNumKinds(0)
    , mKinds(nullptr)
{
}

/*
 * --INFO--
 * Address:	801E5364
 * Size:	000074
 */
void KindCounter::alloc(int numKinds)
{
	P2ASSERTLINE(299, mKinds == nullptr);
	mNumKinds = numKinds;
	mKinds    = new u8[mNumKinds];
	clear();
}

/*
 * --INFO--
 * Address:	801E53D8
 * Size:	000028
 */
void KindCounter::clear()
{
	for (int i = 0; i < mNumKinds; i++) {
		mKinds[i] = 0;
	}
}

/*
 * --INFO--
 * Address:	........
 * Size:	000088
 */
void KindCounter::copyFrom(KindCounter& other)
{
	P2ASSERTLINE(314, mNumKinds == other.mNumKinds);
	for (int i = 0; i < mNumKinds; i++) {
		mKinds[i] = other.mKinds[i];
	}
}

/*
 * --INFO--
 * Address:	........
 * Size:	000090
 */
void KindCounter::addTo(KindCounter& other)
{
	P2ASSERTLINE(322, mNumKinds == other.mNumKinds);
	for (int i = 0; i < mNumKinds; i++) {
		mKinds[i] += other.mKinds[i];
	}
}

/*
 * cl_
 * --INFO--
 * Address:	801E5400
 * Size:	000078
 */
u8* KindCounter::operator()(int index)
{
	bool isValidIndex = false;
	if (0 <= index && index < mNumKinds) {
		isValidIndex = true;
	}
	P2ASSERTLINE(330, isValidIndex);
	return &mKinds[index];
}

/*
 * --INFO--
 * Address:	........
 * Size:	00018C
 */
PelletCropMemory::PelletCropMemory(int num1, int num2, int num3)
{
	mOtakara.alloc(num1);
	mItem.alloc(num2);
	mCarcass.alloc(num3);
}

/*
 * --INFO--
 * Address:	801E5478
 * Size:	000280
 */
PelletCropMemory* PelletCropMemory::createClone()
{
	PelletCropMemory* clone = new PelletCropMemory(mOtakara.mNumKinds, mItem.mNumKinds, mCarcass.mNumKinds);
	clone->mOtakara.copyFrom(mOtakara);
	clone->mItem.copyFrom(mItem);
	clone->mCarcass.copyFrom(mCarcass);
	return clone;
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stmw     r27, 0xc(r1)
	mr       r28, r3
	li       r3, 0x1c
	bl       __nw__FUl
	or.      r31, r3, r3
	beq      lbl_801E55E4
	lis      r3, __vt__Q24Game16PelletCropMemory@ha
	lhz      r30, 0x14(r28)
	lhz      r29, 0xc(r28)
	addi     r3, r3, __vt__Q24Game16PelletCropMemory@l
	lhz      r27, 4(r28)
	li       r0, 0
	stw      r3, 0(r31)
	sth      r0, 4(r31)
	stw      r0, 8(r31)
	sth      r0, 0xc(r31)
	stw      r0, 0x10(r31)
	sth      r0, 0x14(r31)
	stw      r0, 0x18(r31)
	lwz      r0, 8(r31)
	cmplwi   r0, 0
	beq      lbl_801E54F8
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480E60@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x12b
	addi     r5, r5, lbl_80480E60@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E54F8:
	sth      r27, 4(r31)
	lhz      r3, 4(r31)
	bl       __nwa__FUl
	li       r5, 0
	stw      r3, 8(r31)
	mr       r4, r5
	b        lbl_801E5520

lbl_801E5514:
	lwz      r3, 8(r31)
	stbx     r4, r3, r5
	addi     r5, r5, 1

lbl_801E5520:
	lhz      r0, 4(r31)
	cmpw     r5, r0
	blt      lbl_801E5514
	lwz      r0, 0x10(r31)
	cmplwi   r0, 0
	beq      lbl_801E5554
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480E60@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x12b
	addi     r5, r5, lbl_80480E60@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E5554:
	sth      r29, 0xc(r31)
	lhz      r3, 0xc(r31)
	bl       __nwa__FUl
	li       r5, 0
	stw      r3, 0x10(r31)
	mr       r4, r5
	b        lbl_801E557C

lbl_801E5570:
	lwz      r3, 0x10(r31)
	stbx     r4, r3, r5
	addi     r5, r5, 1

lbl_801E557C:
	lhz      r0, 0xc(r31)
	cmpw     r5, r0
	blt      lbl_801E5570
	lwz      r0, 0x18(r31)
	cmplwi   r0, 0
	beq      lbl_801E55B0
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480E60@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x12b
	addi     r5, r5, lbl_80480E60@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E55B0:
	sth      r30, 0x14(r31)
	lhz      r3, 0x14(r31)
	bl       __nwa__FUl
	li       r5, 0
	stw      r3, 0x18(r31)
	mr       r4, r5
	b        lbl_801E55D8

lbl_801E55CC:
	lwz      r3, 0x18(r31)
	stbx     r4, r3, r5
	addi     r5, r5, 1

lbl_801E55D8:
	lhz      r0, 0x14(r31)
	cmpw     r5, r0
	blt      lbl_801E55CC

lbl_801E55E4:
	lhz      r3, 4(r31)
	lhz      r0, 4(r28)
	cmplw    r3, r0
	beq      lbl_801E5610
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480E60@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x13a
	addi     r5, r5, lbl_80480E60@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E5610:
	li       r5, 0
	b        lbl_801E562C

lbl_801E5618:
	lwz      r4, 8(r28)
	lwz      r3, 8(r31)
	lbzx     r0, r4, r5
	stbx     r0, r3, r5
	addi     r5, r5, 1

lbl_801E562C:
	lhz      r0, 4(r31)
	cmpw     r5, r0
	blt      lbl_801E5618
	lhz      r3, 0xc(r31)
	lhz      r0, 0xc(r28)
	cmplw    r3, r0
	beq      lbl_801E5664
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480E60@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x13a
	addi     r5, r5, lbl_80480E60@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E5664:
	li       r5, 0
	b        lbl_801E5680

lbl_801E566C:
	lwz      r4, 0x10(r28)
	lwz      r3, 0x10(r31)
	lbzx     r0, r4, r5
	stbx     r0, r3, r5
	addi     r5, r5, 1

lbl_801E5680:
	lhz      r0, 0xc(r31)
	cmpw     r5, r0
	blt      lbl_801E566C
	lhz      r3, 0x14(r31)
	lhz      r0, 0x14(r28)
	cmplw    r3, r0
	beq      lbl_801E56B8
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480E60@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x13a
	addi     r5, r5, lbl_80480E60@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E56B8:
	li       r5, 0
	b        lbl_801E56D4

lbl_801E56C0:
	lwz      r4, 0x18(r28)
	lwz      r3, 0x18(r31)
	lbzx     r0, r4, r5
	stbx     r0, r3, r5
	addi     r5, r5, 1

lbl_801E56D4:
	lhz      r0, 0x14(r31)
	cmpw     r5, r0
	blt      lbl_801E56C0
	mr       r3, r31
	lmw      r27, 0xc(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E56F8
 * Size:	000148
 */
void PelletCropMemory::addTo(PelletCropMemory* add)
{
	mOtakara.addTo(add->mOtakara);
	mItem.addTo(add->mItem);
	mCarcass.addTo(add->mCarcass);
}

/*
 * --INFO--
 * Address:	801E5840
 * Size:	000070
 */
void PelletCropMemory::clear()
{
	mOtakara.clear();
	mItem.clear();
	mCarcass.clear();
}

/*
 * --INFO--
 * Address:	........
 * Size:	000288
 */
void PelletCropMemory::obtainPellet(Pellet*) { }

/*
 * --INFO--
 * Address:	801E58B0
 * Size:	000048
 */
int PelletCropMemory::calcEarnKinds() { return mOtakara.getEarnKinds() + mItem.getEarnKinds(); }

/*
 * --INFO--
 * Address:	........
 * Size:	000010
 */
int PelletCropMemory::calcNumKinds() { }

/*
 * --INFO--
 * Address:	........
 * Size:	0000198
 */
PelletFirstMemory::PelletFirstMemory(int p1, int p2, int p3)
    : PelletCropMemory(p1, p2, p3)
{
}

/*
 * --INFO--
 * Address:	801E58F8
 * Size:	0002C8
 */
bool PelletFirstMemory::firstCarryPellet(Pellet* pellet)
{
	if (pellet->getKind() == PELTYPE_TREASURE) {
		int id = pellet->getConfigIndex();

		if (!(*mOtakara(id) & 2)) {
			*mOtakara(id) |= 2;
			pellet->getConfigName();
			return true;
		}

	} else if (pellet->getKind() == PELTYPE_UPGRADE) {
		int id = pellet->getConfigIndex();
		if (!(*mItem(id) & 2)) {
			*mItem(id) |= 2;
			pellet->getConfigName();
			return true;
		}

	} else if (pellet->getKind() == PELTYPE_CARCASS) {
		int id = pellet->getConfigIndex();
		if (!(*mCarcass(id) & 2)) {
			*mCarcass(id) |= 2;
			pellet->getConfigName();
			return true;
		}
	}

	return false;
}

/*
 * --INFO--
 * Address:	801E5BC0
 * Size:	000154
 */
void PelletFirstMemory::obtainPellet(BasePelletMgr* mgr, int id)
{
	if (mgr->getMgrID() == PELTYPE_TREASURE) {
		*mOtakara(id) |= 2;
		mgr->getPelletConfig(id);

	} else if (mgr->getMgrID() == PELTYPE_UPGRADE) {
		*mItem(id) |= 2;
		mgr->getPelletConfig(id);

	} else {
		mgr->getMgrID();
	}
}

/*
 * --INFO--
 * Address:	801E5D14
 * Size:	000154
 */
void PelletFirstMemory::losePellet(Game::BasePelletMgr* mgr, int id)
{
	if (mgr->getMgrID() == PELTYPE_TREASURE) {
		*mOtakara(id) &= ~0x2;
		mgr->getPelletConfig(id);

	} else if (mgr->getMgrID() == PELTYPE_UPGRADE) {
		*mItem(id) &= ~0x2;
		mgr->getPelletConfig(id);

	} else {
		mgr->getMgrID();
	}
}

/*
 * --INFO--
 * Address:	801E5E68
 * Size:	00004C
 */
bool PlayData::isCompletePelletTrigger()
{
	// has payed debt, has not seen all treasures ending before, has all treasures
	if (isStoryFlag(STORY_DebtPaid) && !isStoryFlag(STORY_AllTreasuresCollected) && mZukanStat->completeAll()) {
		return true;
	}

	return false;
}

/*
 * completeAll__Q24Game16PelletCropMemoryFv
 * --INFO--
 * Address:	801E5EB4
 * Size:	000058
 */
bool PelletCropMemory::completeAll()
{
	return (!mOtakara.completeAll()) ? false : mItem.completeAll() > 0; // sure.
}

/*
 * completeAll__Q24Game11KindCounterFv
 * --INFO--
 * Address:	801E5F0C
 * Size:	00003C
 */
bool KindCounter::completeAll()
{
	for (int i = 0; i < mNumKinds; ++i) {
		if (mKinds[i] == 0)
			return false;
	}
	return true;
}

/*
 * --INFO--
 * Address:	801E5F48
 * Size:	00003C
 */
int KindCounter::getEarnKinds()
{
	int earnedKinds = 0;
	for (int i = 0; i < mNumKinds; i++) {
		if (mKinds[i] & KCF_Earned) {
			earnedKinds++;
		}
	}
	return earnedKinds;
}

/*
 * --INFO--
 * Address:	801E5F84
 * Size:	00003C
 */
OlimarData::OlimarData()
{
	mFlags[0] = 0;
	mFlags[1] = 0;
	clear();
}

/*
 * --INFO--
 * Address:	801E5FC0
 * Size:	000010
 */
void OlimarData::clear()
{
	mFlags[0] = 0;
	mFlags[1] = 0;
}

/*
 * --INFO--
 * Address:	801E5FD0
 * Size:	000098
 * Matches!
 */
bool OlimarData::hasItem(int index)
{
	bool isValidIndex = index >= ODII_BruteKnuckles && index < ODII_LAST_NON_EXPLORATION_KIT_ITEM;
	P2ASSERTLINE(588, isValidIndex);
	int data_idx = (index >> 3);
	int rot      = (data_idx << 3);
	int bits     = 1 << (index - rot);
	return (mFlags[1 - data_idx] & bits) != false;
}

/*
 * --INFO--
 * Address:	801E6068
 * Size:	0000CC
 * Matches!
 */
void OlimarData::getItem(int item)
{
	bool validItem = item >= ODII_BruteKnuckles && item < ODII_LAST_NON_EXPLORATION_KIT_ITEM;
	P2ASSERTLINE(601, validItem);

	if (item < 16) {
		int data_idx = (item >> 3);
		mFlags[1 - data_idx] |= 1 << (item - (data_idx << 3));
	}

	switch (item) {
	case ODII_SphericalAtlas:
		playData->openCourse(1);
		return;
	case ODII_GeographicProjection:
		playData->openCourse(2);
		return;
	}
}

/*
 * --INFO--
 * Address:	801E6134
 * Size:	000084
 */
void PlayData::construct()
{
	P2ASSERTLINE(690, playData == nullptr);
	sys->heapStatusStart("playData", nullptr);
	playData = new PlayData();
	sys->heapStatusEnd("playData");
}

/*
 * --INFO--
 * Address:	801E61B8
 * Size:	000854
 */
PlayData::PlayData()
    : mDeadNaviID()
    , mStoryFlags()
{
	mDebtProgressFlags[0] = 0;
	mDebtProgressFlags[1] = 0;

	_1C = 0;

	int stageCount             = stageList->mCourseCount;
	mBitfieldPerCourse         = new u8[stageCount];
	mGroundOtakaraCollected    = new u8[stageCount];
	mGroundOtakaraCollectedOld = new u8[stageCount];

	for (int i = 0; i < stageCount; i++) {
		mGroundOtakaraCollected[i]    = 0;
		mGroundOtakaraCollectedOld[i] = 0;
	}

	mLimitGen = new LimitGen[stageCount];

	for (int i = 0; i < stageCount; i++) {
		LimitGen* gen    = &mLimitGen[i];
		CourseInfo* info = stageList->getCourseInfo(i);
		gen->mNonLoops.create(info->mLimitGenInfo.mCount, nullptr);
		gen->mLoops.create(info->mLoopGenInfo.mCount, nullptr);
	}

	mTekiStatMgr.allocate(102);

	mCaveOtakara    = new CaveOtakara[stageCount];
	mCaveOtakaraOld = new CaveOtakara[stageCount];

	for (int i = 0; i < stageCount; i++) {
		CourseInfo* info;
		CaveOtakara* thisOtakara = &mCaveOtakara[i];
		info                     = stageList->getCourseInfo(i);
		thisOtakara->updateCounts(i, info);

		CaveOtakara* oldOtakara = &mCaveOtakaraOld[i];
		oldOtakara->updateCounts(i, info);
	}

	int treasures = PelletList::Mgr::getCount(PelletList::OTAKARA);
	int items     = PelletList::Mgr::getCount(PelletList::ITEM);
	int carcasses = PelletList::Mgr::getCount(PelletList::CARCASS);

	mZukanStat      = new PelletFirstMemory(treasures, items, carcasses);
	mMainCropMemory = new PelletCropMemory(treasures, items, carcasses);
	mCaveCropMemory = new PelletCropMemory(treasures, items, carcasses);
	mDemoFlags.create(57, nullptr);
	mDemoFlags.reset();
	mFindItemFlags.create(PelletList::Mgr::getCount(PelletList::ITEM), nullptr);
	mFindItemFlags.reset();

	sys->heapStatusStart("generatorCache", nullptr);
	generatorCache = new GeneratorCache;
	sys->heapStatusEnd("generatorCache");
	reset();
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	lis      r4, lbl_80480E40@ha
	stw      r0, 0x34(r1)
	stmw     r24, 0x10(r1)
	mr       r31, r3
	addi     r26, r4, lbl_80480E40@l
	bl       __ct__5CNodeFv
	lis      r3, __vt__Q24Game8PlayData@ha
	li       r0, 0
	addi     r4, r3, __vt__Q24Game8PlayData@l
	addi     r3, r31, 0x30
	stw      r4, 0(r31)
	stb      r0, 0x20(r31)
	stb      r0, 0x2f(r31)
	bl       __ct__8BitFlagsFv
	addi     r3, r31, 0x38
	bl       __ct__8BitFlagsFv
	addi     r3, r31, 0x40
	bl       __ct__Q34Game8TekiStat3MgrFv
	lis      r4, __ct__Q24Game10OlimarDataFv@ha
	addi     r3, r31, 0x48
	addi     r4, r4, __ct__Q24Game10OlimarDataFv@l
	li       r5, 0
	li       r6, 2
	li       r7, 2
	bl       __construct_array
	addi     r3, r31, 0x4c
	bl       __ct__Q24Game12CaveSaveDataFv
	li       r0, 0
	addi     r3, r31, 0xa8
	stb      r0, 0x84(r31)
	stb      r0, 0x85(r31)
	stb      r0, 0x86(r31)
	stb      r0, 0x87(r31)
	stb      r0, 0x88(r31)
	stb      r0, 0x89(r31)
	stb      r0, 0x8a(r31)
	stb      r0, 0x8b(r31)
	stb      r0, 0x8c(r31)
	stb      r0, 0x8d(r31)
	stb      r0, 0x8e(r31)
	stb      r0, 0x8f(r31)
	stb      r0, 0x90(r31)
	stb      r0, 0x91(r31)
	stb      r0, 0x92(r31)
	stb      r0, 0x93(r31)
	bl       __ct__Q24Game13PikiContainerFv
	li       r0, 0
	stb      r0, 0xf0(r31)
	stb      r0, 0xf1(r31)
	stw      r0, 0x1c(r31)
	lwz      r3, stageList__4Game@sda21(r13)
	lhz      r28, 0x100(r3)
	mr       r3, r28
	bl       __nwa__FUl
	stw      r3, 0xd8(r31)
	mr       r3, r28
	bl       __nwa__FUl
	stw      r3, 0xdc(r31)
	mr       r3, r28
	bl       __nwa__FUl
	cmpwi    r28, 0
	stw      r3, 0xf4(r31)
	li       r3, 0
	ble      lbl_801E63B4
	cmpwi    r28, 8
	addi     r4, r28, -8
	ble      lbl_801E6388
	addi     r0, r4, 7
	srwi     r0, r0, 3
	mtctr    r0
	cmpwi    r4, 0
	ble      lbl_801E6388

lbl_801E62E0:
	lwz      r4, 0xdc(r31)
	li       r11, 0
	addi     r10, r3, 1
	addi     r9, r3, 2
	stbx     r11, r4, r3
	addi     r8, r3, 3
	addi     r7, r3, 4
	addi     r6, r3, 5
	lwz      r4, 0xf4(r31)
	addi     r5, r3, 6
	addi     r0, r3, 7
	stbx     r11, r4, r3
	addi     r3, r3, 8
	lwz      r4, 0xdc(r31)
	stbx     r11, r4, r10
	lwz      r4, 0xf4(r31)
	stbx     r11, r4, r10
	lwz      r4, 0xdc(r31)
	stbx     r11, r4, r9
	lwz      r4, 0xf4(r31)
	stbx     r11, r4, r9
	lwz      r4, 0xdc(r31)
	stbx     r11, r4, r8
	lwz      r4, 0xf4(r31)
	stbx     r11, r4, r8
	lwz      r4, 0xdc(r31)
	stbx     r11, r4, r7
	lwz      r4, 0xf4(r31)
	stbx     r11, r4, r7
	lwz      r4, 0xdc(r31)
	stbx     r11, r4, r6
	lwz      r4, 0xf4(r31)
	stbx     r11, r4, r6
	lwz      r4, 0xdc(r31)
	stbx     r11, r4, r5
	lwz      r4, 0xf4(r31)
	stbx     r11, r4, r5
	lwz      r4, 0xdc(r31)
	stbx     r11, r4, r0
	lwz      r4, 0xf4(r31)
	stbx     r11, r4, r0
	bdnz     lbl_801E62E0

lbl_801E6388:
	subf     r0, r3, r28
	li       r5, 0
	mtctr    r0
	cmpw     r3, r28
	bge      lbl_801E63B4

lbl_801E639C:
	lwz      r4, 0xdc(r31)
	stbx     r5, r4, r3
	lwz      r4, 0xf4(r31)
	stbx     r5, r4, r3
	addi     r3, r3, 1
	bdnz     lbl_801E639C

lbl_801E63B4:
	slwi     r3, r28, 4
	addi     r3, r3, 0x10
	bl       __nwa__FUl
	lis      r4, __ct__Q34Game8PlayData8LimitGenFv@ha
	mr       r7, r28
	addi     r4, r4, __ct__Q34Game8PlayData8LimitGenFv@l
	li       r5, 0
	li       r6, 0x10
	bl       __construct_new_array
	stw      r3, 0xe4(r31)
	li       r30, 0
	li       r29, 0
	b        lbl_801E6430

lbl_801E63E8:
	lwz      r0, 0xe4(r31)
	mr       r4, r30
	lwz      r3, stageList__4Game@sda21(r13)
	add      r25, r0, r29
	bl       getCourseInfo__Q24Game6StagesFi
	mr       r27, r3
	mr       r3, r25
	lwz      r0, 0x4c(r27)
	li       r5, 0
	clrlwi   r4, r0, 0x10
	bl       create__8BitFlagsFUsPUc
	lwz      r0, 0x74(r27)
	addi     r3, r25, 8
	li       r5, 0
	clrlwi   r4, r0, 0x10
	bl       create__8BitFlagsFUsPUc
	addi     r29, r29, 0x10
	addi     r30, r30, 1

lbl_801E6430:
	cmpw     r30, r28
	blt      lbl_801E63E8
	addi     r3, r31, 0x40
	li       r4, 0x66
	bl       allocate__Q34Game8TekiStat3MgrFi
	mulli    r3, r28, 0xc
	addi     r27, r3, 0x10
	mr       r3, r27
	bl       __nwa__FUl
	lis      r4, __ct__Q34Game8PlayData11CaveOtakaraFv@ha
	mr       r7, r28
	addi     r4, r4, __ct__Q34Game8PlayData11CaveOtakaraFv@l
	li       r5, 0
	li       r6, 0xc
	bl       __construct_new_array
	stw      r3, 0xe0(r31)
	mr       r3, r27
	bl       __nwa__FUl
	lis      r4, __ct__Q34Game8PlayData11CaveOtakaraFv@ha
	mr       r7, r28
	addi     r4, r4, __ct__Q34Game8PlayData11CaveOtakaraFv@l
	li       r5, 0
	li       r6, 0xc
	bl       __construct_new_array
	stw      r3, 0xf8(r31)
	li       r29, 0
	li       r27, 0
	b        lbl_801E659C

lbl_801E64A0:
	lwz      r0, 0xe0(r31)
	mr       r4, r29
	lwz      r3, stageList__4Game@sda21(r13)
	add      r25, r0, r27
	bl       getCourseInfo__Q24Game6StagesFi
	mr       r24, r3
	bl       getCaveNum__Q24Game10CourseInfoFv
	or.      r30, r3, r3
	ble      lbl_801E6520
	stb      r30, 0(r25)
	bl       __nwa__FUl
	stw      r3, 4(r25)
	slwi     r3, r30, 2
	bl       __nwa__FUl
	stw      r3, 8(r25)
	lbz      r0, 0(r25)
	cmplwi   r0, 0
	beq      lbl_801E6520
	li       r6, 0
	mr       r7, r6
	mr       r5, r6
	mr       r4, r6
	b        lbl_801E6514

lbl_801E64FC:
	lwz      r3, 4(r25)
	stbx     r5, r3, r6
	addi     r6, r6, 1
	lwz      r3, 8(r25)
	stwx     r4, r3, r7
	addi     r7, r7, 4

lbl_801E6514:
	lbz      r0, 0(r25)
	cmpw     r6, r0
	blt      lbl_801E64FC

lbl_801E6520:
	lwz      r0, 0xf8(r31)
	mr       r3, r24
	add      r24, r0, r27
	bl       getCaveNum__Q24Game10CourseInfoFv
	or.      r30, r3, r3
	ble      lbl_801E6594
	stb      r30, 0(r24)
	bl       __nwa__FUl
	stw      r3, 4(r24)
	slwi     r3, r30, 2
	bl       __nwa__FUl
	stw      r3, 8(r24)
	lbz      r0, 0(r24)
	cmplwi   r0, 0
	beq      lbl_801E6594
	li       r6, 0
	mr       r7, r6
	mr       r5, r6
	mr       r4, r6
	b        lbl_801E6588

lbl_801E6570:
	lwz      r3, 4(r24)
	stbx     r5, r3, r6
	addi     r6, r6, 1
	lwz      r3, 8(r24)
	stwx     r4, r3, r7
	addi     r7, r7, 4

lbl_801E6588:
	lbz      r0, 0(r24)
	cmpw     r6, r0
	blt      lbl_801E6570

lbl_801E6594:
	addi     r27, r27, 0xc
	addi     r29, r29, 1

lbl_801E659C:
	cmpw     r29, r28
	blt      lbl_801E64A0
	li       r3, 3
	bl       getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
	mr       r27, r3
	li       r3, 4
	bl       getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
	mr       r28, r3
	li       r3, 1
	bl       getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
	mr       r29, r3
	li       r3, 0x1c
	bl       __nw__FUl
	or.      r30, r3, r3
	beq      lbl_801E6708
	lis      r3, __vt__Q24Game16PelletCropMemory@ha
	li       r0, 0
	addi     r3, r3, __vt__Q24Game16PelletCropMemory@l
	stw      r3, 0(r30)
	sth      r0, 4(r30)
	stw      r0, 8(r30)
	sth      r0, 0xc(r30)
	stw      r0, 0x10(r30)
	sth      r0, 0x14(r30)
	stw      r0, 0x18(r30)
	lwz      r0, 8(r30)
	cmplwi   r0, 0
	beq      lbl_801E6620
	addi     r3, r26, 0xc
	addi     r5, r26, 0x20
	li       r4, 0x12b
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E6620:
	sth      r27, 4(r30)
	lhz      r3, 4(r30)
	bl       __nwa__FUl
	li       r5, 0
	stw      r3, 8(r30)
	mr       r4, r5
	b        lbl_801E6648

lbl_801E663C:
	lwz      r3, 8(r30)
	stbx     r4, r3, r5
	addi     r5, r5, 1

lbl_801E6648:
	lhz      r0, 4(r30)
	cmpw     r5, r0
	blt      lbl_801E663C
	lwz      r0, 0x10(r30)
	cmplwi   r0, 0
	beq      lbl_801E6674
	addi     r3, r26, 0xc
	addi     r5, r26, 0x20
	li       r4, 0x12b
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E6674:
	sth      r28, 0xc(r30)
	lhz      r3, 0xc(r30)
	bl       __nwa__FUl
	li       r5, 0
	stw      r3, 0x10(r30)
	mr       r4, r5
	b        lbl_801E669C

lbl_801E6690:
	lwz      r3, 0x10(r30)
	stbx     r4, r3, r5
	addi     r5, r5, 1

lbl_801E669C:
	lhz      r0, 0xc(r30)
	cmpw     r5, r0
	blt      lbl_801E6690
	lwz      r0, 0x18(r30)
	cmplwi   r0, 0
	beq      lbl_801E66C8
	addi     r3, r26, 0xc
	addi     r5, r26, 0x20
	li       r4, 0x12b
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E66C8:
	sth      r29, 0x14(r30)
	lhz      r3, 0x14(r30)
	bl       __nwa__FUl
	li       r5, 0
	stw      r3, 0x18(r30)
	mr       r4, r5
	b        lbl_801E66F0

lbl_801E66E4:
	lwz      r3, 0x18(r30)
	stbx     r4, r3, r5
	addi     r5, r5, 1

lbl_801E66F0:
	lhz      r0, 0x14(r30)
	cmpw     r5, r0
	blt      lbl_801E66E4
	lis      r3, __vt__Q24Game17PelletFirstMemory@ha
	addi     r0, r3, __vt__Q24Game17PelletFirstMemory@l
	stw      r0, 0(r30)

lbl_801E6708:
	stw      r30, 0xb0(r31)
	li       r3, 0x1c
	bl       __nw__FUl
	or.      r30, r3, r3
	beq      lbl_801E6840
	lis      r3, __vt__Q24Game16PelletCropMemory@ha
	li       r0, 0
	addi     r3, r3, __vt__Q24Game16PelletCropMemory@l
	stw      r3, 0(r30)
	sth      r0, 4(r30)
	stw      r0, 8(r30)
	sth      r0, 0xc(r30)
	stw      r0, 0x10(r30)
	sth      r0, 0x14(r30)
	stw      r0, 0x18(r30)
	lwz      r0, 8(r30)
	cmplwi   r0, 0
	beq      lbl_801E6764
	addi     r3, r26, 0xc
	addi     r5, r26, 0x20
	li       r4, 0x12b
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E6764:
	sth      r27, 4(r30)
	lhz      r3, 4(r30)
	bl       __nwa__FUl
	li       r5, 0
	stw      r3, 8(r30)
	mr       r4, r5
	b        lbl_801E678C

lbl_801E6780:
	lwz      r3, 8(r30)
	stbx     r4, r3, r5
	addi     r5, r5, 1

lbl_801E678C:
	lhz      r0, 4(r30)
	cmpw     r5, r0
	blt      lbl_801E6780
	lwz      r0, 0x10(r30)
	cmplwi   r0, 0
	beq      lbl_801E67B8
	addi     r3, r26, 0xc
	addi     r5, r26, 0x20
	li       r4, 0x12b
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E67B8:
	sth      r28, 0xc(r30)
	lhz      r3, 0xc(r30)
	bl       __nwa__FUl
	li       r5, 0
	stw      r3, 0x10(r30)
	mr       r4, r5
	b        lbl_801E67E0

lbl_801E67D4:
	lwz      r3, 0x10(r30)
	stbx     r4, r3, r5
	addi     r5, r5, 1

lbl_801E67E0:
	lhz      r0, 0xc(r30)
	cmpw     r5, r0
	blt      lbl_801E67D4
	lwz      r0, 0x18(r30)
	cmplwi   r0, 0
	beq      lbl_801E680C
	addi     r3, r26, 0xc
	addi     r5, r26, 0x20
	li       r4, 0x12b
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E680C:
	sth      r29, 0x14(r30)
	lhz      r3, 0x14(r30)
	bl       __nwa__FUl
	li       r5, 0
	stw      r3, 0x18(r30)
	mr       r4, r5
	b        lbl_801E6834

lbl_801E6828:
	lwz      r3, 0x18(r30)
	stbx     r4, r3, r5
	addi     r5, r5, 1

lbl_801E6834:
	lhz      r0, 0x14(r30)
	cmpw     r5, r0
	blt      lbl_801E6828

lbl_801E6840:
	stw      r30, 0xb4(r31)
	li       r3, 0x1c
	bl       __nw__FUl
	or.      r30, r3, r3
	beq      lbl_801E6978
	lis      r3, __vt__Q24Game16PelletCropMemory@ha
	li       r0, 0
	addi     r3, r3, __vt__Q24Game16PelletCropMemory@l
	stw      r3, 0(r30)
	sth      r0, 4(r30)
	stw      r0, 8(r30)
	sth      r0, 0xc(r30)
	stw      r0, 0x10(r30)
	sth      r0, 0x14(r30)
	stw      r0, 0x18(r30)
	lwz      r0, 8(r30)
	cmplwi   r0, 0
	beq      lbl_801E689C
	addi     r3, r26, 0xc
	addi     r5, r26, 0x20
	li       r4, 0x12b
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E689C:
	sth      r27, 4(r30)
	lhz      r3, 4(r30)
	bl       __nwa__FUl
	li       r5, 0
	stw      r3, 8(r30)
	mr       r4, r5
	b        lbl_801E68C4

lbl_801E68B8:
	lwz      r3, 8(r30)
	stbx     r4, r3, r5
	addi     r5, r5, 1

lbl_801E68C4:
	lhz      r0, 4(r30)
	cmpw     r5, r0
	blt      lbl_801E68B8
	lwz      r0, 0x10(r30)
	cmplwi   r0, 0
	beq      lbl_801E68F0
	addi     r3, r26, 0xc
	addi     r5, r26, 0x20
	li       r4, 0x12b
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E68F0:
	sth      r28, 0xc(r30)
	lhz      r3, 0xc(r30)
	bl       __nwa__FUl
	li       r5, 0
	stw      r3, 0x10(r30)
	mr       r4, r5
	b        lbl_801E6918

lbl_801E690C:
	lwz      r3, 0x10(r30)
	stbx     r4, r3, r5
	addi     r5, r5, 1

lbl_801E6918:
	lhz      r0, 0xc(r30)
	cmpw     r5, r0
	blt      lbl_801E690C
	lwz      r0, 0x18(r30)
	cmplwi   r0, 0
	beq      lbl_801E6944
	addi     r3, r26, 0xc
	addi     r5, r26, 0x20
	li       r4, 0x12b
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E6944:
	sth      r29, 0x14(r30)
	lhz      r3, 0x14(r30)
	bl       __nwa__FUl
	li       r5, 0
	stw      r3, 0x18(r30)
	mr       r4, r5
	b        lbl_801E696C

lbl_801E6960:
	lwz      r3, 0x18(r30)
	stbx     r4, r3, r5
	addi     r5, r5, 1

lbl_801E696C:
	lhz      r0, 0x14(r30)
	cmpw     r5, r0
	blt      lbl_801E6960

lbl_801E6978:
	stw      r30, 0xb8(r31)
	addi     r3, r31, 0x30
	li       r4, 0x39
	li       r5, 0
	bl       create__8BitFlagsFUsPUc
	addi     r3, r31, 0x30
	bl       reset__8BitFlagsFv
	li       r3, 4
	bl       getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
	clrlwi   r4, r3, 0x10
	addi     r3, r31, 0x38
	li       r5, 0
	bl       create__8BitFlagsFUsPUc
	addi     r3, r31, 0x38
	bl       reset__8BitFlagsFv
	lwz      r3, sys@sda21(r13)
	addi     r4, r26, 0x38
	li       r5, 0
	bl       heapStatusStart__6SystemFPcP7JKRHeap
	li       r3, 0x140
	bl       __nw__FUl
	or.      r0, r3, r3
	beq      lbl_801E69DC
	bl       __ct__Q24Game14GeneratorCacheFv
	mr       r0, r3

lbl_801E69DC:
	stw      r0, generatorCache__4Game@sda21(r13)
	addi     r4, r26, 0x38
	lwz      r3, sys@sda21(r13)
	bl       heapStatusEnd__6SystemFPc
	mr       r3, r31
	bl       reset__Q24Game8PlayDataFv
	mr       r3, r31
	lmw      r24, 0x10(r1)
	lwz      r0, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E6A58
 * Size:	000068
 */
PlayData::~PlayData() { playData = nullptr; }

/*
 * --INFO--
 * Address:	801E6AC0
 * Size:	0003D0
 */
void PlayData::reset()
{
	mNaviLifeMax[1]       = 0.0f;
	mNaviLifeMax[0]       = 0.0f;
	mDeadNaviID           = 0;
	u64 osTime            = OSGetTime();
	mOsTime               = osTime;
	_18                   = false;
	mLoadType             = 0;
	mStoryFlags           = 0;
	mDebtProgressFlags[0] = 0;
	mDebtProgressFlags[1] = 0;
	for (int i = 0; i <= -1; i++) {
		if (i < 0x10) {
			mDebtProgressFlags[1 - (i >> 3)] |= 1 << (i - (8 * (i >> 3))); // ?????
		}
	}
	generatorCache->clearCache();
	mPokoCount     = 0;
	mCavePokoCount = 0;
	mPokoCountOld  = 0;
	mSprayCount[0] = 0;
	mBerryCount[0] = 0;
	mSprayCount[1] = 0;
	mBerryCount[1] = 0;
	mPikiContainer.clear();
	initCourses(false);
	initLimitGens();
	initCaveOtakaras();
	int courseCount = stageList->mCourseCount;
	mMainCropMemory->clear();
	mCaveCropMemory->clear();
	mZukanStat->clear();
	mTreasureCount = 0;
	for (int i = 0; i < courseCount; i++) {
		mGroundOtakaraCollected[i]    = 0;
		mGroundOtakaraCollectedOld[i] = 0;
	}
	resetContainerFlag();
	mDemoFlags.all_zero();
	mFindItemFlags.all_zero();
	mTekiStatMgr.clear();
	mOlimarData[0].clear();
	mOlimarData[1].clear();
	mCaveSaveData.clear();
	mMailSaveData.clear();
	for (int i = 0; i < 6; i++) {
		mPikminToday[i]     = 0;
		mPikminYesterday[i] = 0;
	}
	DeathMgr::clear();
	BirthMgr::clear();
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	lfs      f0, lbl_805199D0@sda21(r2)
	stw      r0, 0x14(r1)
	li       r0, 0
	stw      r31, 0xc(r1)
	mr       r31, r3
	stfs     f0, 0x28(r3)
	stfs     f0, 0x24(r3)
	stb      r0, 0x20(r3)
	bl       OSGetTime
	stw      r4, 0xd4(r31)
	li       r0, 0
	li       r6, 0
	li       r4, 1
	stw      r3, 0xd0(r31)
	stb      r0, 0x18(r31)
	stb      r0, 0x19(r31)
	stb      r0, 0x2f(r31)
	stb      r0, 0xf0(r31)
	stb      r0, 0xf1(r31)
	b        lbl_801E6B48

lbl_801E6B18:
	cmpwi    r6, 0x10
	bge      lbl_801E6B44
	srawi    r3, r6, 3
	subfic   r0, r3, 1
	add      r5, r31, r0
	slwi     r0, r3, 3
	lbz      r3, 0xf0(r5)
	subf     r0, r0, r6
	slw      r0, r4, r0
	or       r0, r3, r0
	stb      r0, 0xf0(r5)

lbl_801E6B44:
	addi     r6, r6, 1

lbl_801E6B48:
	cmpwi    r6, -1
	ble      lbl_801E6B18
	lwz      r3, generatorCache__4Game@sda21(r13)
	bl       clearCache__Q24Game14GeneratorCacheFv
	li       r0, 0
	addi     r3, r31, 0xa8
	stw      r0, 0xe8(r31)
	stw      r0, 0xec(r31)
	stw      r0, 0xfc(r31)
	stw      r0, 0xc0(r31)
	stw      r0, 0xc8(r31)
	stw      r0, 0xc4(r31)
	stw      r0, 0xcc(r31)
	bl       clear__Q24Game13PikiContainerFv
	mr       r3, r31
	li       r4, 0
	bl       initCourses__Q24Game8PlayDataFb
	mr       r3, r31
	bl       initLimitGens__Q24Game8PlayDataFv
	mr       r3, r31
	bl       initCaveOtakaras__Q24Game8PlayDataFv
	lwz      r3, stageList__4Game@sda21(r13)
	li       r7, 0
	lwz      r6, 0xb4(r31)
	mr       r5, r7
	lhz      r3, 0x100(r3)
	b        lbl_801E6BC0

lbl_801E6BB4:
	lwz      r4, 8(r6)
	stbx     r5, r4, r7
	addi     r7, r7, 1

lbl_801E6BC0:
	lhz      r0, 4(r6)
	cmpw     r7, r0
	blt      lbl_801E6BB4
	li       r7, 0
	mr       r5, r7
	b        lbl_801E6BE4

lbl_801E6BD8:
	lwz      r4, 0x10(r6)
	stbx     r5, r4, r7
	addi     r7, r7, 1

lbl_801E6BE4:
	lhz      r0, 0xc(r6)
	cmpw     r7, r0
	blt      lbl_801E6BD8
	li       r7, 0
	mr       r5, r7
	b        lbl_801E6C08

lbl_801E6BFC:
	lwz      r4, 0x18(r6)
	stbx     r5, r4, r7
	addi     r7, r7, 1

lbl_801E6C08:
	lhz      r0, 0x14(r6)
	cmpw     r7, r0
	blt      lbl_801E6BFC
	li       r7, 0
	lwz      r6, 0xb8(r31)
	mr       r5, r7
	b        lbl_801E6C30

lbl_801E6C24:
	lwz      r4, 8(r6)
	stbx     r5, r4, r7
	addi     r7, r7, 1

lbl_801E6C30:
	lhz      r0, 4(r6)
	cmpw     r7, r0
	blt      lbl_801E6C24
	li       r7, 0
	mr       r5, r7
	b        lbl_801E6C54

lbl_801E6C48:
	lwz      r4, 0x10(r6)
	stbx     r5, r4, r7
	addi     r7, r7, 1

lbl_801E6C54:
	lhz      r0, 0xc(r6)
	cmpw     r7, r0
	blt      lbl_801E6C48
	li       r7, 0
	mr       r5, r7
	b        lbl_801E6C78

lbl_801E6C6C:
	lwz      r4, 0x18(r6)
	stbx     r5, r4, r7
	addi     r7, r7, 1

lbl_801E6C78:
	lhz      r0, 0x14(r6)
	cmpw     r7, r0
	blt      lbl_801E6C6C
	li       r7, 0
	lwz      r6, 0xb0(r31)
	mr       r5, r7
	b        lbl_801E6CA0

lbl_801E6C94:
	lwz      r4, 8(r6)
	stbx     r5, r4, r7
	addi     r7, r7, 1

lbl_801E6CA0:
	lhz      r0, 4(r6)
	cmpw     r7, r0
	blt      lbl_801E6C94
	li       r7, 0
	mr       r5, r7
	b        lbl_801E6CC4

lbl_801E6CB8:
	lwz      r4, 0x10(r6)
	stbx     r5, r4, r7
	addi     r7, r7, 1

lbl_801E6CC4:
	lhz      r0, 0xc(r6)
	cmpw     r7, r0
	blt      lbl_801E6CB8
	li       r7, 0
	mr       r5, r7
	b        lbl_801E6CE8

lbl_801E6CDC:
	lwz      r4, 0x18(r6)
	stbx     r5, r4, r7
	addi     r7, r7, 1

lbl_801E6CE8:
	lhz      r0, 0x14(r6)
	cmpw     r7, r0
	blt      lbl_801E6CDC
	li       r0, 0
	cmpwi    r3, 0
	stw      r0, 0xbc(r31)
	li       r4, 0
	ble      lbl_801E6DFC
	cmpwi    r3, 8
	addi     r5, r3, -8
	ble      lbl_801E6DD0
	addi     r0, r5, 7
	srwi     r0, r0, 3
	mtctr    r0
	cmpwi    r5, 0
	ble      lbl_801E6DD0

lbl_801E6D28:
	lwz      r5, 0xdc(r31)
	li       r12, 0
	addi     r11, r4, 1
	addi     r10, r4, 2
	stbx     r12, r5, r4
	addi     r9, r4, 3
	addi     r8, r4, 4
	addi     r7, r4, 5
	lwz      r5, 0xf4(r31)
	addi     r6, r4, 6
	addi     r0, r4, 7
	stbx     r12, r5, r4
	addi     r4, r4, 8
	lwz      r5, 0xdc(r31)
	stbx     r12, r5, r11
	lwz      r5, 0xf4(r31)
	stbx     r12, r5, r11
	lwz      r5, 0xdc(r31)
	stbx     r12, r5, r10
	lwz      r5, 0xf4(r31)
	stbx     r12, r5, r10
	lwz      r5, 0xdc(r31)
	stbx     r12, r5, r9
	lwz      r5, 0xf4(r31)
	stbx     r12, r5, r9
	lwz      r5, 0xdc(r31)
	stbx     r12, r5, r8
	lwz      r5, 0xf4(r31)
	stbx     r12, r5, r8
	lwz      r5, 0xdc(r31)
	stbx     r12, r5, r7
	lwz      r5, 0xf4(r31)
	stbx     r12, r5, r7
	lwz      r5, 0xdc(r31)
	stbx     r12, r5, r6
	lwz      r5, 0xf4(r31)
	stbx     r12, r5, r6
	lwz      r5, 0xdc(r31)
	stbx     r12, r5, r0
	lwz      r5, 0xf4(r31)
	stbx     r12, r5, r0
	bdnz     lbl_801E6D28

lbl_801E6DD0:
	subf     r0, r4, r3
	li       r5, 0
	mtctr    r0
	cmpw     r4, r3
	bge      lbl_801E6DFC

lbl_801E6DE4:
	lwz      r3, 0xdc(r31)
	stbx     r5, r3, r4
	lwz      r3, 0xf4(r31)
	stbx     r5, r3, r4
	addi     r4, r4, 1
	bdnz     lbl_801E6DE4

lbl_801E6DFC:
	mr       r3, r31
	bl       resetContainerFlag__Q24Game8PlayDataFv
	addi     r3, r31, 0x30
	bl       all_zero__8BitFlagsFv
	addi     r3, r31, 0x38
	bl       all_zero__8BitFlagsFv
	addi     r3, r31, 0x40
	bl       clear__Q34Game8TekiStat3MgrFv
	li       r0, 0
	addi     r3, r31, 0x4c
	stb      r0, 0x48(r31)
	stb      r0, 0x49(r31)
	stb      r0, 0x4a(r31)
	stb      r0, 0x4b(r31)
	bl       clear__Q24Game12CaveSaveDataFv
	addi     r3, r31, 0x84
	bl       clear__Q32kh6Screen12MailSaveDataFv
	li       r0, 0
	stw      r0, 0x118(r31)
	stw      r0, 0x100(r31)
	stw      r0, 0x11c(r31)
	stw      r0, 0x104(r31)
	stw      r0, 0x120(r31)
	stw      r0, 0x108(r31)
	stw      r0, 0x124(r31)
	stw      r0, 0x10c(r31)
	stw      r0, 0x128(r31)
	stw      r0, 0x110(r31)
	stw      r0, 0x12c(r31)
	stw      r0, 0x114(r31)
	bl       clear__Q24Game8DeathMgrFv
	bl       clear__Q24Game8BirthMgrFv
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E6E90
 * Size:	0000C8
 */
void PlayData::setDevelopSetting(bool p1, bool p2)
{
	_18 = p1;
	if (p1) {
		initCourses(true);
		debugSetContainerFlagOn();
		mDemoFlags.all_one();
		mFindItemFlags.all_one();
		mOlimarData[0].mFlags[0] |= 4;
		playData->openCourse(1);
		initCourses(true);
		if (!p2) {
			mDemoFlags.resetFlag(DEMO_Waterwraith_Appears);
			mDemoFlags.resetFlag(DEMO_First_Spicy_Berry);
			mDemoFlags.resetFlag(DEMO_First_Bitter_Berry);
			mDemoFlags.resetFlag(DEMO_First_Spicy_Spray_Made);
			mDemoFlags.resetFlag(DEMO_First_Bitter_Spray_Made);
		}
	}
}

/*
 * --INFO--
 * Address:	801E6F58
 * Size:	0000B4
 */
int PlayData::calcPlayMinutes()
{
	OSCalendarTime calendar1;
	OSCalendarTime calendar2;
	OSCalendarTime calendar3;

	OSTime time = OSGetTime(); // mistake?
	OSTicksToCalendarTime(time, &calendar1);
	OSTicksToCalendarTime(mOsTime, &calendar2);

	OSTime diff = time - mOsTime;
	OSTicksToCalendarTime(diff, &calendar3);

	return (int)(diff / OS_TIMER_CLOCK) / 60;
}

/*
 * --INFO--
 * Address:	801E700C
 * Size:	000014
 */
void PlayData::resetContainerFlag()
{
	mMeetPikminFlags       = 0;
	mHasBootContainerFlags = 0;
	mHasContainerFlags     = 0;
}

/*
 * --INFO--
 * Address:	801E7020
 * Size:	000088
 */
bool PlayData::hasContainer(int pikminColor)
{
	bool isValidIndex = false;
	if (0 <= pikminColor && pikminColor < 5) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1002, isValidIndex);
	return mHasContainerFlags & (1 << pikminColor);
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	li       r0, 0
	stw      r31, 0xc(r1)
	or.      r31, r4, r4
	stw      r30, 8(r1)
	mr       r30, r3
	blt      lbl_801E7050
	cmpwi    r31, 5
	bge      lbl_801E7050
	li       r0, 1

lbl_801E7050:
	clrlwi.  r0, r0, 0x18
	bne      lbl_801E7074
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480E60@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x3ea
	addi     r5, r5, lbl_80480E60@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E7074:
	li       r0, 1
	lbz      r3, 0x2c(r30)
	slw      r0, r0, r31
	and      r3, r3, r0
	neg      r0, r3
	or       r0, r0, r3
	srwi     r3, r0, 0x1f
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E70A8
 * Size:	000030
 */
bool PlayData::hasMetPikmin(int pikminColor)
{
	if (pikminColor == Bulbmin) {
		return true;
	}
	return mMeetPikminFlags & (1 << pikminColor);
}

/*
 * --INFO--
 * Address:	801E70D8
 * Size:	0000A4
 */
bool PlayData::hasBootContainer(int pikminColor)
{
	bool isValidIndex;
	if (pikminColor == White || pikminColor == Purple) {
		return false;
	} else {
		isValidIndex = false;
		if (0 <= pikminColor && pikminColor <= 2) {
			isValidIndex = true;
		}
		P2ASSERTLINE(1018, isValidIndex);
		return mHasBootContainerFlags & (1 << pikminColor);
	}
}

/*
 * --INFO--
 * Address:	801E717C
 * Size:	000080
 */
void PlayData::setContainer(int pikminColor)
{
	bool isValidIndex = false;
	if (0 <= pikminColor && pikminColor < 5) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1024, isValidIndex);
	mHasContainerFlags |= (1 << pikminColor);
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	li       r0, 0
	stw      r31, 0xc(r1)
	or.      r31, r4, r4
	stw      r30, 8(r1)
	mr       r30, r3
	blt      lbl_801E71AC
	cmpwi    r31, 5
	bge      lbl_801E71AC
	li       r0, 1

lbl_801E71AC:
	clrlwi.  r0, r0, 0x18
	bne      lbl_801E71D0
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480E60@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x400
	addi     r5, r5, lbl_80480E60@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E71D0:
	li       r0, 1
	lbz      r3, 0x2c(r30)
	slw      r0, r0, r31
	or       r0, r3, r0
	stb      r0, 0x2c(r30)
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E71FC
 * Size:	000080
 */
void PlayData::setMeetPikmin(int pikminColor)
{
	bool isValidIndex = false;
	if (0 <= pikminColor && pikminColor < 5) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1030, isValidIndex);
	mMeetPikminFlags |= (1 << pikminColor);
}

/*
 * --INFO--
 * Address:	801E727C
 * Size:	000080
 */
void PlayData::setBootContainer(int pikminColor)
{
	bool isValidIndex = false;
	if (0 <= pikminColor && pikminColor <= 2) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1036, isValidIndex);
	mHasBootContainerFlags |= (1 << pikminColor);
}

/*
 * --INFO--
 * Address:	801E72FC
 * Size:	0000A8
 */
void PlayData::debugSetContainerFlagOn()
{
	mHasContainerFlags |= 0x01;
	mHasContainerFlags |= 0x02;
	mHasContainerFlags |= 0x04;
	mHasContainerFlags |= 0x10;
	mHasContainerFlags |= 0x08;
	mHasBootContainerFlags |= 0x01;
	mHasBootContainerFlags |= 0x02;
	mHasBootContainerFlags |= 0x04;
	mMeetPikminFlags |= 0x01;
	mMeetPikminFlags |= 0x02;
	mMeetPikminFlags |= 0x04;
	mMeetPikminFlags |= 0x10;
	mMeetPikminFlags |= 0x08;
	mLoadType = 1;
}

/*
 * --INFO--
 * Address:	801E73A4
 * Size:	00003C
 */
void PlayData::setDemoFlag(int flag)
{
	mDemoFlags.setFlag(flag);
	mDemoFlags.dump();
}

/*
 * --INFO--
 * Address:	801E73E0
 * Size:	000028
 */
bool PlayData::isDemoFlag(int flag) { return mDemoFlags.isFlag(flag); }

/*
 * --INFO--
 * Address:	801E7408
 * Size:	00003C
 */
void PlayData::setFindItemDemoFlag(int flag)
{
	mFindItemFlags.setFlag(flag);
	mFindItemFlags.dump();
}

/*
 * --INFO--
 * Address:	801E7444
 * Size:	000028
 */
bool PlayData::isFindItemDemoFlag(int flag) { return mFindItemFlags.isFlag(flag); }

/*
 * --INFO--
 * Address:	801E746C
 * Size:	000008
 */
void PlayData::setCurrentCourse(int a1)
{
	// Generated from stw r4, 0x50(r3)
	mCaveSaveData.mCourseIdx = a1;
}

/*
 * --INFO--
 * Address:	801E7474
 * Size:	00000C
 */
void PlayData::clearCurrentCave()
{
	// Generated from stb r0, 0x4C(r3)
	mCaveSaveData.mIsInCave = false;
}

/*
 * --INFO--
 * Address:	801E7480
 * Size:	00004C
 */
void PlayData::setCurrentCave(ID32& caveID, int floor)
{
	mCaveSaveData.mCurrentCaveID.setID(caveID.getID());
	mCaveSaveData.mCurrentFloor = floor;
	mCaveSaveData.mIsInCave     = true;
}

/*
 * --INFO--
 * Address:	801E74CC
 * Size:	000010
 */
void PlayData::setCurrentCaveFloor(int floor)
{
	mCaveSaveData.mCurrentFloor = floor;
	mCaveSaveData.mIsInCave     = true;
}

/*
 * --INFO--
 * Address:	801E74DC
 * Size:	000008
 */
int PlayData::getCurrentCourseIndex() { return mCaveSaveData.mCourseIdx; }

/*
 * --INFO--
 * Address:	801E74E4
 * Size:	000038
 */
CourseInfo* PlayData::getCurrentCourse()
{
	if (mCaveSaveData.mCourseIdx != -1) {
		return stageList->getCourseInfo(mCaveSaveData.mCourseIdx);
	}
	return nullptr;
}

/*
 * --INFO--
 * Address:	801E751C
 * Size:	000048
 */
void PlayData::getCurrentCave(ID32& outCaveID, int& outCaveFloor)
{
	outCaveID.setID(mCaveSaveData.mCurrentCaveID.getID());
	outCaveFloor = mCaveSaveData.mCurrentFloor;
}

/*
 * --INFO--
 * Address:	801E7564
 * Size:	000030
 */
bool PlayData::firstCarryPellet(Game::Pellet* pellet)
{
	return mZukanStat->firstCarryPellet(pellet);
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	lwz      r3, 0xb0(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x10(r12)
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
 * Address:	801E7594
 * Size:	000030
 */
void PlayData::obtainPellet(BasePelletMgr* mgr, int p2) { mZukanStat->obtainPellet(mgr, p2); }

/*
 * --INFO--
 * Address:	801E75C4
 * Size:	000030
 */
void PlayData::losePellet(Game::BasePelletMgr* mgr, int p2) { mZukanStat->losePellet(mgr, p2); }

/*
 * --INFO--
 * Address:	801E75F4
 * Size:	000320
 */
void PlayData::obtainPellet_Main(Game::Pellet* pellet)
{
	PelletCropMemory* mem = mMainCropMemory;
	if (pellet->getKind() == PELTYPE_TREASURE) {
		int id = pellet->getConfigIndex();
		(*mem->mOtakara(id))++;
		pellet->getConfigName();
		(*mem->mOtakara(id));

	} else if (pellet->getKind() == PELTYPE_UPGRADE) {
		int id = pellet->getConfigIndex();
		(*mem->mItem(id))++;
		pellet->getConfigName();
		(*mem->mItem(id));

	} else if (pellet->getKind() == PELTYPE_CARCASS) {
		int id = pellet->getConfigIndex();
		(*mem->mCarcass(id))++;
		pellet->getConfigName();
		(*mem->mCarcass(id));
	}

	BasePelletMgr* mgr = 0;
	if (pellet->getKind() == PELTYPE_TREASURE) {
		mgr = PelletOtakara::mgr;
	} else if (pellet->getKind() == PELTYPE_UPGRADE) {
		mgr = PelletItem::mgr;
	}

	if (mgr) {
		mZukanStat->obtainPellet(mgr, pellet->getConfigIndex());
	}
	mPokoCount += pellet->mConfig->mParams.mMoney.mData;
}

/*
 * --INFO--
 * Address:	801E7914
 * Size:	000284
 */
void PlayData::obtainPellet_Cave(Game::Pellet* pellet)
{
	PelletCropMemory* mem = mCaveCropMemory;
	if (pellet->getKind() == PELTYPE_TREASURE) {
		int id = pellet->getConfigIndex();
		(*mem->mOtakara(id))++;
		pellet->getConfigName();
		(*mem->mOtakara(id));

	} else if (pellet->getKind() == PELTYPE_UPGRADE) {
		int id = pellet->getConfigIndex();
		(*mem->mItem(id))++;
		pellet->getConfigName();
		(*mem->mItem(id));

	} else if (pellet->getKind() == PELTYPE_CARCASS) {
		int id = pellet->getConfigIndex();
		(*mem->mCarcass(id))++;
		pellet->getConfigName();
		(*mem->mCarcass(id));
	}
}

/*
 * --INFO--
 * Address:	........
 * Size:	000004
 */
void PlayData::confirmCaveCropMemory() { }

/*
 * --INFO--
 * Address:	........
 * Size:	000150
 */
// bool PlayData::isPelletEverGot(Pellet*) { }

/*
 * --INFO--
 * Address:	801E7B98
 * Size:	000104
 */
bool PlayData::isPelletEverGot(u8 type, u8 id)
{
	if (type == PELTYPE_UPGRADE) {
		int itemID = *mZukanStat->mItem(id);
		return itemID > 0;
	}
	if (type == PELTYPE_TREASURE) { // how tf do i make andc happen?
		int treasureID = *mZukanStat->mOtakara(id);
		return treasureID > 0;
	}
	JUT_PANICLINE(1406, "otakara or item !\n");
}

/*
 * --INFO--
 * Address:	801E7C9C
 * Size:	000128
 */
bool PlayData::isPelletZukanVisible(int id)
{
	PelletConfigList* list = PelletList::Mgr::getConfigList(PelletList::OTAKARA);
	PelletConfig* config   = list->getPelletConfig_ByDictionaryNo(id);
	if (config) {
		int index = config->mParams.mIndex;
		if (IS_FLAG(*mZukanStat->mOtakara(index), 2)) {
			return true;
		}
	} else {
		list   = PelletList::Mgr::getConfigList(PelletList::ITEM);
		config = list->getPelletConfig_ByDictionaryNo(id);
		if (config) {
			int index = config->mParams.mIndex;
			if (IS_FLAG(*mZukanStat->mItem(index), 2)) {
				return true;
			}
		}
	}
	return false;
}

/*
 * --INFO--
 * Address:	801E7DC4
 * Size:	000138
 */
bool PlayData::isPelletZukanWhatsNew(int id)
{
	PelletConfigList* list = PelletList::Mgr::getConfigList(PelletList::OTAKARA);
	PelletConfig* config   = list->getPelletConfig_ByDictionaryNo(id);
	if (config) {
		int index = config->mParams.mIndex;
		u8 kinds  = *mZukanStat->mOtakara(index);
		if (kinds & 2 && !(kinds & 4)) {
			return true;
		}
	} else {
		list   = PelletList::Mgr::getConfigList(PelletList::ITEM);
		config = list->getPelletConfig_ByDictionaryNo(id);
		if (config) {
			int index = config->mParams.mIndex;
			u8 kinds  = *mZukanStat->mItem(index);
			if (kinds & 2 && !(kinds & 4)) {
				return true;
			}
		}
	}
	return false;
}

/*
 * --INFO--
 * Address:	801E7EFC
 * Size:	0001BC
 */
bool PlayData::hasPelletZukanWhatsNew()
{
	PelletFirstMemory* zukanStat = getZukanStat();
	for (int i = 0; i < zukanStat->mOtakara.mNumKinds; i++) {
		u8 kinds = *zukanStat->mOtakara(i);
		if (kinds && !(IS_FLAG(*zukanStat->mOtakara(i), 4)))
			return true;
	}

	PelletFirstMemory* zukanStat2 = getZukanStat();
	for (int i = 0; i < zukanStat2->mItem.mNumKinds; i++) {

		u8 kinds = *zukanStat2->mItem(i);
		if (kinds && !(IS_FLAG(*zukanStat2->mItem(i), 4)))
			return true;
	}
	return false;
}

/*
 * --INFO--
 * Address:	801E80B8
 * Size:	0001A8
 * Note the assert is an inline
 */
void PlayData::setPelletZukanOutOfDateAll()
{
	PelletFirstMemory* zukanStat = getZukanStat();
	for (int i = 0; i < zukanStat->mOtakara.mNumKinds; i++) {
		u8 kinds = *zukanStat->mOtakara(i);
		if (kinds) {
			SET_FLAG(*zukanStat->mOtakara(i), 4);
		}
	}

	PelletFirstMemory* zukanStat2 = getZukanStat();
	for (int i = 0; i < zukanStat2->mItem.mNumKinds; i++) {
		u8 kinds = *zukanStat2->mItem(i);
		if (kinds) {
			SET_FLAG(*zukanStat2->mItem(i), 4);
		}
	}
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000C4
 */
int PlayData::getTekiCarcassMoney(int) { }

/*
 * --INFO--
 * Address:	801E8260
 * Size:	00007C
 */
int PlayData::getGroundOtakaraNum(int id)
{
	bool check = (id >= 0 && id < stageList->mCourseCount);
	P2ASSERTLINE(1543, check);
	return mGroundOtakaraCollected[id];
}

/*
 * --INFO--
 * Address:	801E82DC
 * Size:	000078
 */
int PlayData::getGroundOtakaraMax(int id)
{
	bool check = (id >= 0 && id < stageList->mCourseCount);
	P2ASSERTLINE(1550, check);
	CourseInfo* info = stageList->getCourseInfo(id);
	return info->mGroundOtakaraMax;
}

/*
 * --INFO--
 * Address:	801E8354
 * Size:	000084
 */
void PlayData::incGroundOtakara(int index)
{
	bool isValidIndex = false;
	if (0 <= index && index < stageList->mCourseCount) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1558, isValidIndex);
	mGroundOtakaraCollected[index]++;
}

/*
 * --INFO--
 * Address:	801E83D8
 * Size:	000078
 */
int PlayData::getDopeCount(int sprayIndex)
{
	bool isValidIndex = false;
	if (0 <= sprayIndex && sprayIndex < 2) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1572, isValidIndex);
	return mSprayCount[sprayIndex];
}

/*
 * --INFO--
 * Address:	801E8450
 * Size:	000084
 */
void PlayData::setDopeCount(int sprayIndex, int sprayCount)
{
	bool isValidIndex = false;
	if (0 <= sprayIndex && sprayIndex < 2) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1578, isValidIndex);
	mSprayCount[sprayIndex] = sprayCount;
}

/*
 * --INFO--
 * Address:	801E84D4
 * Size:	000080
 */
void PlayData::incDopeCount(int sprayIndex)
{
	bool isValidIndex = false;
	if (0 <= sprayIndex && sprayIndex < 2) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1584, isValidIndex);
	mSprayCount[sprayIndex]++;
}

/*
 * --INFO--
 * Address:	801E8554
 * Size:	000084
 */
bool PlayData::hasDope(int sprayIndex)
{
	bool isValidIndex = false;
	if (0 <= sprayIndex && sprayIndex < 2) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1590, isValidIndex);
	return (0 < mSprayCount[sprayIndex]);
}

/*
 * --INFO--
 * Address:	801E85D8
 * Size:	000078
 */
int PlayData::getDopeFruitCount(int sprayIndex)
{
	bool isValidIndex = false;
	if (0 <= sprayIndex && sprayIndex < 2) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1596, isValidIndex);
	return mBerryCount[sprayIndex];
}

/*
 * --INFO--
 * Address:	801E8650
 * Size:	0000B4
 */
bool PlayData::addDopeFruit(int sprayIndex)
{
	bool isValidIndex = false;
	if (0 <= sprayIndex && sprayIndex < 2) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1602, isValidIndex);

	mBerryCount[sprayIndex]++;
	if (mBerryCount[sprayIndex] >= _aiConstants->mDopeCount.mData) {
		mBerryCount[sprayIndex] = 0;
		mSprayCount[sprayIndex]++;
		return true;
	} else {
		return false;
	}
}

/*
 * --INFO--
 * Address:	801E8704
 * Size:	0000C4
 */
void PlayData::useDope(int sprayIndex)
{
	bool isValidIndex = false;
	if (0 <= sprayIndex && sprayIndex < 2) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1614, isValidIndex);
	if (hasDope(sprayIndex)) {
		mSprayCount[sprayIndex]--;
	}
}

/*
 * --INFO--
 * Address:	801E87C8
 * Size:	0000DC
 */
bool PlayData::isCaveFirstTime(int courseIndex, ID32& caveID)
{
	CourseInfo* info = stageList->getCourseInfo(courseIndex);
	if (info) {
		CaveOtakara* ota = &mCaveOtakara[courseIndex];
		int id           = info->getCaveIndex_FromID(caveID);
		if (id != -1) {
			if (id >= 0 && id < ota->mCaveCount) {
				return ota->_08[id] == 0;
			}
			return false;
		}
	}
	ID32 caveIDCopy;
	caveIDCopy.setID(caveID.getID());
	JUT_PANICLINE(1645, "no cave info : course(%d):[%s]\n", courseIndex, caveID.getStr());
	return false;
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000CC
 */
bool PlayData::isCaveFirstReturn(int, ID32&) { }

/*
 * --INFO--
 * Address:	801E88A4
 * Size:	0000BC
 */
void PlayData::setCaveVisit(int courseIndex, ID32& caveID)
{
	CourseInfo* info = stageList->getCourseInfo(courseIndex);
	if (info) {
		CaveOtakara* ota = &mCaveOtakara[courseIndex];
		int id           = info->getCaveIndex_FromID(caveID);
		if (id != -1) {
			if (ota->_08[id] == 0) {
				ota->_08[id] = 1;
				return;
			}
			ota->_08[id] = 2;
			return;
		}
	}
	JUT_PANICLINE(1680, "no cave info : course(%d):[%s]\n", courseIndex, caveID.getStr());
}

/*
 * --INFO--
 * Address:	801E8960
 * Size:	0000B8
 */
void PlayData::incCaveOtakara(int courseIndex, ID32& caveID)
{
	CourseInfo* info = stageList->getCourseInfo(courseIndex);
	if (info) {
		CaveOtakara* ota = &mCaveOtakara[courseIndex];
		int id           = info->getCaveIndex_FromID(caveID);
		if (id != -1) {
			bool check;
			if (id >= 0 && id < ota->mCaveCount) {
				ota->mOtakaraCountsOld[id]++;
				check = true;
			} else {
				check = false;
			}

			if (check) {
				info->getOtakaraNum(id);
			}
		}
	}
}

/*
 * --INFO--
 * Address:	801E8A18
 * Size:	0000B8
 */
int PlayData::getOtakaraNum_Course_CaveID(int courseIndex, ID32& caveID)
{
	CourseInfo* info = stageList->getCourseInfo(courseIndex);
	if (info) {
		CaveOtakara* ota = &mCaveOtakara[courseIndex];
		int id           = info->getCaveIndex_FromID(caveID);
		if (id != -1) {
			if (id >= 0 && id < ota->mCaveCount) {
				return (u8)ota->mOtakaraCountsOld[id];
			}
		} else {
			goto mistake; // mistake?
		}
		return -1;
	} else {
		JUT_PANICLINE(1727, "course index error:%d (getOtakaraNum_*)\n", courseIndex);
	}
mistake:
	return -1;
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	mr       r31, r5
	stw      r30, 0x18(r1)
	mr       r30, r4
	stw      r29, 0x14(r1)
	mr       r29, r3
	lwz      r3, stageList__4Game@sda21(r13)
	bl       getCourseInfo__Q24Game6StagesFi
	cmplwi   r3, 0
	beq      lbl_801E8A90
	mulli    r0, r30, 0xc
	lwz      r5, 0xe0(r29)
	mr       r4, r31
	add      r31, r5, r0
	bl       getCaveIndex_FromID__Q24Game10CourseInfoFR4ID32
	cmpwi    r3, -1
	beq      lbl_801E8AB0
	cmpwi    r3, 0
	blt      lbl_801E8A88
	lbz      r0, 0(r31)
	cmpw     r3, r0
	bge      lbl_801E8A88
	lwz      r4, 4(r31)
	lbzx     r3, r4, r3
	b        lbl_801E8AB4

lbl_801E8A88:
	li       r3, -1
	b        lbl_801E8AB4

lbl_801E8A90:
	lis      r3, lbl_80480E4C@ha
	lis      r4, lbl_80480ED0@ha
	addi     r5, r4, lbl_80480ED0@l
	mr       r6, r30
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x6bf
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E8AB0:
	li       r3, -1

lbl_801E8AB4:
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E8AD0
 * Size:	000048
 */
int PlayData::getOtakaraMax_Course_CaveID(int courseIndex, ID32& caveID)
{
	CourseInfo* info = stageList->getCourseInfo(courseIndex);
	if (info) {
		return info->getOtakaraNum(caveID);
	} else {
		return -1;
	}
}

/*
 * --INFO--
 * Address:	801E8B18
 * Size:	0000D4
 */
void PlayData::initCaveOtakaras()
{
	u16 max = stageList->getCourseCount();
	;
	for (int i = 0; i < max; i++) {
		mCaveOtakara[i].clear();
		// CaveOtakara* data = mCaveOtakara;
		// if (data->mCaveCount > 0) {
		// 	for (int j = 0; j < data->mCaveCount; j++) {
		// 		data->mOtakaraCountsOld[j] = 0;
		// 		data->_08[j]               = 0;
		// 	}
		// }
	}

	for (int i = 0; i < max; i++) {
		mCaveOtakaraOld[i].clear();
		// if (data->mCaveCount > 0) {
		// 	for (int j = 0; j < data->mCaveCount; j++) {
		// 		data->mOtakaraCountsOld[j] = 0;
		// 		data->_08[j]               = 0;
		// 	}
		// }
	}
	/*
	lwz      r4, stageList__4Game@sda21(r13)
	li       r10, 0
	mr       r6, r10
	lhz      r8, 0x100(r4)
	mr       r5, r10
	mtctr    r8
	cmpwi    r8, 0
	ble      lbl_801E8B84

lbl_801E8B38:
	lwz      r0, 0xe0(r3)
	add      r11, r0, r10
	lbz      r0, 0(r11)
	cmplwi   r0, 0
	beq      lbl_801E8B7C
	li       r7, 0
	mr       r9, r7
	b        lbl_801E8B70

lbl_801E8B58:
	lwz      r4, 4(r11)
	stbx     r6, r4, r7
	addi     r7, r7, 1
	lwz      r4, 8(r11)
	stwx     r5, r4, r9
	addi     r9, r9, 4

lbl_801E8B70:
	lbz      r0, 0(r11)
	cmpw     r7, r0
	blt      lbl_801E8B58

lbl_801E8B7C:
	addi     r10, r10, 0xc
	bdnz     lbl_801E8B38

lbl_801E8B84:
	li       r9, 0
	mr       r6, r9
	mr       r5, r9
	mtctr    r8
	cmpwi    r8, 0
	blelr

lbl_801E8B9C:
	lwz      r0, 0xf8(r3)
	add      r10, r0, r9
	lbz      r0, 0(r10)
	cmplwi   r0, 0
	beq      lbl_801E8BE0
	li       r7, 0
	mr       r8, r7
	b        lbl_801E8BD4

lbl_801E8BBC:
	lwz      r4, 4(r10)
	stbx     r6, r4, r7
	addi     r7, r7, 1
	lwz      r4, 8(r10)
	stwx     r5, r4, r8
	addi     r8, r8, 4

lbl_801E8BD4:
	lbz      r0, 0(r10)
	cmpw     r7, r0
	blt      lbl_801E8BBC

lbl_801E8BE0:
	addi     r9, r9, 0xc
	bdnz     lbl_801E8B9C
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E8BEC
 * Size:	000060
 */
void PlayData::read_CaveOtakara(Stream& ram)
{
	u16 max = stageList->getCourseCount();
	for (int i = 0; i < max; i++) {
		mCaveOtakara[i].read(ram);
	}
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stmw     r27, 0xc(r1)
	mr       r27, r3
	mr       r28, r4
	li       r29, 0
	li       r30, 0
	lwz      r5, stageList__4Game@sda21(r13)
	lhz      r31, 0x100(r5)
	b        lbl_801E8C30

lbl_801E8C18:
	lwz      r0, 0xe0(r27)
	mr       r4, r28
	add      r3, r0, r30
	bl       read__Q34Game8PlayData11CaveOtakaraFR6Stream
	addi     r30, r30, 0xc
	addi     r29, r29, 1

lbl_801E8C30:
	cmpw     r29, r31
	blt      lbl_801E8C18
	lmw      r27, 0xc(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E8C4C
 * Size:	000078
 */
void PlayData::write_CaveOtakara(Stream& ram)
{
	ram.textBeginGroup("�����A���");
	int max = stageList->mCourseCount;
	for (int i = 0; i < max; i++) {
		mCaveOtakara[i].write(ram);
	}
	ram.textEndGroup();
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	lis      r5, lbl_80480EFC@ha
	stw      r0, 0x24(r1)
	stmw     r27, 0xc(r1)
	mr       r28, r4
	mr       r27, r3
	addi     r4, r5, lbl_80480EFC@l
	mr       r3, r28
	bl       textBeginGroup__6StreamFPc
	lwz      r3, stageList__4Game@sda21(r13)
	li       r29, 0
	li       r30, 0
	lhz      r31, 0x100(r3)
	b        lbl_801E8CA0

lbl_801E8C88:
	lwz      r0, 0xe0(r27)
	mr       r4, r28
	add      r3, r0, r30
	bl       write__Q34Game8PlayData11CaveOtakaraFR6Stream
	addi     r30, r30, 0xc
	addi     r29, r29, 1

lbl_801E8CA0:
	cmpw     r29, r31
	blt      lbl_801E8C88
	mr       r3, r28
	bl       textEndGroup__6StreamFv
	lmw      r27, 0xc(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E8CC4
 * Size:	0000D8
 */
void PlayData::CaveOtakara::write(Stream& output)
{
	output.textWriteTab(output.mTabCount);
	output.writeByte(mCaveCount);
	output.textWriteText("# cave数\r\n");
	for (int i = 0; i < mCaveCount; i++) {
		output.textWriteTab(output.mTabCount);
		output.writeByte(mOtakaraCountsOld[i]);
		output.textWriteText("# 個数\r\n");
		output.textWriteTab(output.mTabCount);
		output.writeByte(_08[i]);
		output.textWriteText("# 状態\r\n");
	}
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	lis      r5, lbl_80480E40@ha
	stw      r0, 0x24(r1)
	stmw     r27, 0xc(r1)
	mr       r28, r4
	mr       r27, r3
	addi     r31, r5, lbl_80480E40@l
	mr       r3, r28
	lwz      r4, 0x414(r4)
	bl       textWriteTab__6StreamFi
	lbz      r4, 0(r27)
	mr       r3, r28
	bl       writeByte__6StreamFUc
	mr       r3, r28
	addi     r4, r31, 0xcc
	crclr    6
	bl       textWriteText__6StreamFPce
	li       r29, 0
	li       r30, 0
	b        lbl_801E8D7C

lbl_801E8D18:
	lwz      r4, 0x414(r28)
	mr       r3, r28
	bl       textWriteTab__6StreamFi
	lwz      r4, 4(r27)
	mr       r3, r28
	lbzx     r4, r4, r29
	bl       writeByte__6StreamFUc
	mr       r3, r28
	addi     r4, r31, 0xd8
	crclr    6
	bl       textWriteText__6StreamFPce
	lwz      r4, 0x414(r28)
	mr       r3, r28
	bl       textWriteTab__6StreamFi
	lwz      r4, 8(r27)
	mr       r3, r28
	lwzx     r0, r4, r30
	clrlwi   r4, r0, 0x18
	bl       writeByte__6StreamFUc
	mr       r3, r28
	addi     r4, r31, 0xe4
	crclr    6
	bl       textWriteText__6StreamFPce
	addi     r30, r30, 4
	addi     r29, r29, 1

lbl_801E8D7C:
	lbz      r0, 0(r27)
	cmpw     r29, r0
	blt      lbl_801E8D18
	lmw      r27, 0xc(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E8D9C
 * Size:	0000C0
 */
void PlayData::CaveOtakara::read(Stream& input)
{
	u8 existingCaveCount = mCaveCount;
	mCaveCount           = input.readByte();
	JUT_ASSERTLINE(1797, existingCaveCount == mCaveCount, "セーブしたときと洞窟�?�数があ�?ません\n");
	for (int i = 0; i < mCaveCount; i++) {
		mOtakaraCountsOld[i] = input.readByte();
		_08[i]               = input.readByte();
	}
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	stw      r30, 0x18(r1)
	stw      r29, 0x14(r1)
	mr       r29, r4
	stw      r28, 0x10(r1)
	mr       r28, r3
	lbz      r31, 0(r3)
	mr       r3, r29
	bl       readByte__6StreamFv
	stb      r3, 0(r28)
	lbz      r0, 0(r28)
	cmplw    r31, r0
	beq      lbl_801E8DF8
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480F30@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x705
	addi     r5, r5, lbl_80480F30@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E8DF8:
	li       r30, 0
	li       r31, 0
	b        lbl_801E8E30

lbl_801E8E04:
	mr       r3, r29
	bl       readByte__6StreamFv
	lwz      r4, 4(r28)
	stbx     r3, r4, r30
	mr       r3, r29
	bl       readByte__6StreamFv
	lwz      r4, 8(r28)
	clrlwi   r0, r3, 0x18
	addi     r30, r30, 1
	stwx     r0, r4, r31
	addi     r31, r31, 4

lbl_801E8E30:
	lbz      r0, 0(r28)
	cmpw     r30, r0
	blt      lbl_801E8E04
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	lwz      r28, 0x10(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E8E5C
 * Size:	000124
 */
int PlayData::getRepayLevel()
{
	f32 prog = (mPokoCount / _aiConstants->mDebt.mData) * 100.0f;
	for (int i = 0; i < 10; i++) {
		if (repay_levs[i] > prog)
			return i - 1;
	}
	/*if (repay_levs[0] > prog)
	    return -1;
	if (repay_levs[1] > prog)
	    return 0;
	if (repay_levs[2] > prog)
	    return 1;
	if (repay_levs[3] > prog)
	    return 2;
	if (repay_levs[4] > prog)
	    return 3;
	if (repay_levs[5] > prog)
	    return 4;
	if (repay_levs[6] > prog)
	    return 5;
	if (repay_levs[7] > prog)
	    return 6;
	if (repay_levs[8] > prog)
	    return 7;
	if (repay_levs[9] > prog)
	    return 8;
	return 9;*/

	/*
	stwu     r1, -0x20(r1)
	lis      r5, 0x4330
	lfd      f3, lbl_805199D8@sda21(r2)
	lwz      r4, _aiConstants__4Game@sda21(r13)
	lwz      r6, 0xe8(r3)
	lis      r3, "repay_levs__26@unnamed@gamePlayData_cpp@"@ha
	lwz      r0, 0x48(r4)
	xoris    r4, r6, 0x8000
	stw      r5, 8(r1)
	xoris    r0, r0, 0x8000
	lfs      f4, lbl_805199D4@sda21(r2)
	stw      r4, 0xc(r1)
	lfd      f0, 8(r1)
	stw      r0, 0x14(r1)
	fsubs    f2, f0, f3
	lfsu     f0, "repay_levs__26@unnamed@gamePlayData_cpp@"@l(r3)
	stw      r5, 0x10(r1)
	lfd      f1, 0x10(r1)
	fsubs    f1, f1, f3
	fdivs    f1, f2, f1
	fmuls    f1, f4, f1
	fcmpo    cr0, f0, f1
	ble      lbl_801E8EC0
	li       r3, -1
	b        lbl_801E8F78

lbl_801E8EC0:
	lfsu     f0, 4(r3)
	fcmpo    cr0, f0, f1
	ble      lbl_801E8ED4
	li       r3, 0
	b        lbl_801E8F78

lbl_801E8ED4:
	lfsu     f0, 4(r3)
	fcmpo    cr0, f0, f1
	ble      lbl_801E8EE8
	li       r3, 1
	b        lbl_801E8F78

lbl_801E8EE8:
	lfsu     f0, 4(r3)
	fcmpo    cr0, f0, f1
	ble      lbl_801E8EFC
	li       r3, 2
	b        lbl_801E8F78

lbl_801E8EFC:
	lfsu     f0, 4(r3)
	fcmpo    cr0, f0, f1
	ble      lbl_801E8F10
	li       r3, 3
	b        lbl_801E8F78

lbl_801E8F10:
	lfsu     f0, 4(r3)
	fcmpo    cr0, f0, f1
	ble      lbl_801E8F24
	li       r3, 4
	b        lbl_801E8F78

lbl_801E8F24:
	lfsu     f0, 4(r3)
	fcmpo    cr0, f0, f1
	ble      lbl_801E8F38
	li       r3, 5
	b        lbl_801E8F78

lbl_801E8F38:
	lfsu     f0, 4(r3)
	fcmpo    cr0, f0, f1
	ble      lbl_801E8F4C
	li       r3, 6
	b        lbl_801E8F78

lbl_801E8F4C:
	lfsu     f0, 4(r3)
	fcmpo    cr0, f0, f1
	ble      lbl_801E8F60
	li       r3, 7
	b        lbl_801E8F78

lbl_801E8F60:
	lfs      f0, 4(r3)
	fcmpo    cr0, f0, f1
	ble      lbl_801E8F74
	li       r3, 8
	b        lbl_801E8F78

lbl_801E8F74:
	li       r3, 9

lbl_801E8F78:
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E8F80
 * Size:	000044
 */
float PlayData::getRepayLevelPercent(int state)
{
	if (state >= 0) {
		return repay_levs[state];
	} else {
		return (float)state;
	}
}

/*
 * --INFO--
 * Address:	801E8FC4
 * Size:	000160
 */
bool PlayData::checkRepayLevelFirstClear()
{
	int id;
	f32 prog = (mPokoCount / _aiConstants->mDebt.mData) * 100.0f;
	for (int i = 0; i < 10; i++) {
		if (repay_levs[i] > prog)
			id = i - 1;
	}
	/*	if (prog < 10.0f)
	        id = -1;
	    else if (prog < 20.0f)
	        id = 0;
	    else if (prog < 30.0f)
	        id = 1;
	    else if (prog < 40.0f)
	        id = 2;
	    else if (prog < 50.0f)
	        id = 3;
	    else if (prog < 60.0f)
	        id = 4;
	    else if (prog < 70.0f)
	        id = 5;
	    else if (prog < 80.0f)
	        id = 6;
	    else if (prog < 90.0f)
	        id = 7;
	    else if (prog < 100.0f)
	        id = 8;
	    else
	        id = 9;*/

	return (mDebtProgressFlags[id] != 0); // this is actually bitwise stuff
	                                      /*
	                                      stwu     r1, -0x20(r1)
	                                      lis      r6, 0x4330
	                                      lfd      f3, lbl_805199D8@sda21(r2)
	                                      lis      r4, "repay_levs__26@unnamed@gamePlayData_cpp@"@ha
	                                      lwz      r5, _aiConstants__4Game@sda21(r13)
	                                      lwz      r7, 0xe8(r3)
	                                      lwz      r0, 0x48(r5)
	                                      xoris    r5, r7, 0x8000
	                                      stw      r6, 8(r1)
	                                      xoris    r0, r0, 0x8000
	                                      lfs      f4, lbl_805199D4@sda21(r2)
	                                      stw      r5, 0xc(r1)
	                                      lfd      f0, 8(r1)
	                                      stw      r0, 0x14(r1)
	                                      fsubs    f2, f0, f3
	                                      lfsu     f0, "repay_levs__26@unnamed@gamePlayData_cpp@"@l(r4)
	                                      stw      r6, 0x10(r1)
	                                      lfd      f1, 0x10(r1)
	                                      fsubs    f1, f1, f3
	                                      fdivs    f1, f2, f1
	                                      fmuls    f1, f4, f1
	                                      fcmpo    cr0, f0, f1
	                                      ble      lbl_801E9028
	                                      li       r6, -1
	                                      b        lbl_801E90E0
	                                  
	                                  lbl_801E9028:
	                                      lfsu     f0, 4(r4)
	                                      fcmpo    cr0, f0, f1
	                                      ble      lbl_801E903C
	                                      li       r6, 0
	                                      b        lbl_801E90E0
	                                  
	                                  lbl_801E903C:
	                                      lfsu     f0, 4(r4)
	                                      fcmpo    cr0, f0, f1
	                                      ble      lbl_801E9050
	                                      li       r6, 1
	                                      b        lbl_801E90E0
	                                  
	                                  lbl_801E9050:
	                                      lfsu     f0, 4(r4)
	                                      fcmpo    cr0, f0, f1
	                                      ble      lbl_801E9064
	                                      li       r6, 2
	                                      b        lbl_801E90E0
	                                  
	                                  lbl_801E9064:
	                                      lfsu     f0, 4(r4)
	                                      fcmpo    cr0, f0, f1
	                                      ble      lbl_801E9078
	                                      li       r6, 3
	                                      b        lbl_801E90E0
	                                  
	                                  lbl_801E9078:
	                                      lfsu     f0, 4(r4)
	                                      fcmpo    cr0, f0, f1
	                                      ble      lbl_801E908C
	                                      li       r6, 4
	                                      b        lbl_801E90E0
	                                  
	                                  lbl_801E908C:
	                                      lfsu     f0, 4(r4)
	                                      fcmpo    cr0, f0, f1
	                                      ble      lbl_801E90A0
	                                      li       r6, 5
	                                      b        lbl_801E90E0
	                                  
	                                  lbl_801E90A0:
	                                      lfsu     f0, 4(r4)
	                                      fcmpo    cr0, f0, f1
	                                      ble      lbl_801E90B4
	                                      li       r6, 6
	                                      b        lbl_801E90E0
	                                  
	                                  lbl_801E90B4:
	                                      lfsu     f0, 4(r4)
	                                      fcmpo    cr0, f0, f1
	                                      ble      lbl_801E90C8
	                                      li       r6, 7
	                                      b        lbl_801E90E0
	                                  
	                                  lbl_801E90C8:
	                                      lfs      f0, 4(r4)
	                                      fcmpo    cr0, f0, f1
	                                      ble      lbl_801E90DC
	                                      li       r6, 8
	                                      b        lbl_801E90E0
	                                  
	                                  lbl_801E90DC:
	                                      li       r6, 9
	                                  
	                                  lbl_801E90E0:
	                                      cmpwi    r6, 0
	                                      blt      lbl_801E9118
	                                      srawi    r4, r6, 3
	                                      li       r5, 1
	                                      subfic   r0, r4, 1
	                                      slwi     r4, r4, 3
	                                      add      r3, r3, r0
	                                      subf     r4, r4, r6
	                                      lbz      r0, 0xf0(r3)
	                                      slw      r3, r5, r4
	                                      and.     r0, r3, r0
	                                      bne      lbl_801E9118
	                                      li       r3, 1
	                                      b        lbl_801E911C
	                                  
	                                  lbl_801E9118:
	                                      li       r3, 0
	                                  
	                                  lbl_801E911C:
	                                      addi     r1, r1, 0x20
	                                      blr
	                                      */
}

/*
 * --INFO--
 * Address:	801E9124
 * Size:	000174
 */
void PlayData::experienceRepayLevelFirstClear()
{
	int id;
	f32 prog = (mPokoCount / _aiConstants->mDebt.mData) * 100.0f;
	for (int i = 0; i < 10; i++) {
		if (repay_levs[i] > prog)
			id = i - 1;
	}
	/*if (prog < 10.0f)
	    id = -1;
	else if (prog < 20.0f)
	    id = 0;
	else if (prog < 30.0f)
	    id = 1;
	else if (prog < 40.0f)
	    id = 2;
	else if (prog < 50.0f)
	    id = 3;
	else if (prog < 60.0f)
	    id = 4;
	else if (prog < 70.0f)
	    id = 5;
	else if (prog < 80.0f)
	    id = 6;
	else if (prog < 90.0f)
	    id = 7;
	else if (prog < 100.0f)
	    id = 8;
	else
	    id = 9;*/

	mDebtProgressFlags[id] |= 2; // this is actually bitwise stuff
	                             /*
	                             stwu     r1, -0x20(r1)
	                             lis      r6, 0x4330
	                             lfd      f3, lbl_805199D8@sda21(r2)
	                             lis      r4, "repay_levs__26@unnamed@gamePlayData_cpp@"@ha
	                             lwz      r5, _aiConstants__4Game@sda21(r13)
	                             lwz      r7, 0xe8(r3)
	                             lwz      r0, 0x48(r5)
	                             xoris    r5, r7, 0x8000
	                             stw      r6, 8(r1)
	                             xoris    r0, r0, 0x8000
	                             lfs      f4, lbl_805199D4@sda21(r2)
	                             stw      r5, 0xc(r1)
	                             lfd      f0, 8(r1)
	                             stw      r0, 0x14(r1)
	                             fsubs    f2, f0, f3
	                             lfsu     f0, "repay_levs__26@unnamed@gamePlayData_cpp@"@l(r4)
	                             stw      r6, 0x10(r1)
	                             lfd      f1, 0x10(r1)
	                             fsubs    f1, f1, f3
	                             fdivs    f1, f2, f1
	                             fmuls    f1, f4, f1
	                             fcmpo    cr0, f0, f1
	                             ble      lbl_801E9188
	                             li       r4, -1
	                             b        lbl_801E9240
	                         
	                         lbl_801E9188:
	                             lfsu     f0, 4(r4)
	                             fcmpo    cr0, f0, f1
	                             ble      lbl_801E919C
	                             li       r4, 0
	                             b        lbl_801E9240
	                         
	                         lbl_801E919C:
	                             lfsu     f0, 4(r4)
	                             fcmpo    cr0, f0, f1
	                             ble      lbl_801E91B0
	                             li       r4, 1
	                             b        lbl_801E9240
	                         
	                         lbl_801E91B0:
	                             lfsu     f0, 4(r4)
	                             fcmpo    cr0, f0, f1
	                             ble      lbl_801E91C4
	                             li       r4, 2
	                             b        lbl_801E9240
	                         
	                         lbl_801E91C4:
	                             lfsu     f0, 4(r4)
	                             fcmpo    cr0, f0, f1
	                             ble      lbl_801E91D8
	                             li       r4, 3
	                             b        lbl_801E9240
	                         
	                         lbl_801E91D8:
	                             lfsu     f0, 4(r4)
	                             fcmpo    cr0, f0, f1
	                             ble      lbl_801E91EC
	                             li       r4, 4
	                             b        lbl_801E9240
	                         
	                         lbl_801E91EC:
	                             lfsu     f0, 4(r4)
	                             fcmpo    cr0, f0, f1
	                             ble      lbl_801E9200
	                             li       r4, 5
	                             b        lbl_801E9240
	                         
	                         lbl_801E9200:
	                             lfsu     f0, 4(r4)
	                             fcmpo    cr0, f0, f1
	                             ble      lbl_801E9214
	                             li       r4, 6
	                             b        lbl_801E9240
	                         
	                         lbl_801E9214:
	                             lfsu     f0, 4(r4)
	                             fcmpo    cr0, f0, f1
	                             ble      lbl_801E9228
	                             li       r4, 7
	                             b        lbl_801E9240
	                         
	                         lbl_801E9228:
	                             lfs      f0, 4(r4)
	                             fcmpo    cr0, f0, f1
	                             ble      lbl_801E923C
	                             li       r4, 8
	                             b        lbl_801E9240
	                         
	                         lbl_801E923C:
	                             li       r4, 9
	                         
	                         lbl_801E9240:
	                             cmpwi    r4, 0
	                             blt      lbl_801E9290
	                             addi     r0, r4, 1
	                             li       r7, 0
	                             li       r4, 1
	                             mtctr    r0
	                             blt      lbl_801E9290
	                         
	                         lbl_801E925C:
	                             cmpwi    r7, 0x10
	                             bge      lbl_801E9288
	                             srawi    r5, r7, 3
	                             subfic   r0, r5, 1
	                             add      r6, r3, r0
	                             slwi     r0, r5, 3
	                             lbz      r5, 0xf0(r6)
	                             subf     r0, r0, r7
	                             slw      r0, r4, r0
	                             or       r0, r5, r0
	                             stb      r0, 0xf0(r6)
	                         
	                         lbl_801E9288:
	                             addi     r7, r7, 1
	                             bdnz     lbl_801E925C
	                         
	                         lbl_801E9290:
	                             addi     r1, r1, 0x20
	                             blr
	                             */
}

/*
 * --INFO--
 * Address:	801E9298
 * Size:	000064
 */
void PlayData::initLimitGens()
{
	u16 courseCount = stageList->mCourseCount;
	for (int i = 0; i < courseCount; i++) {
		LimitGen* limitGen = &mLimitGen[i]; // probably some inline with this as the parameter
		limitGen->mNonLoops.reset();
		limitGen->mLoops.reset();
	}
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stmw     r27, 0xc(r1)
	mr       r27, r3
	li       r29, 0
	li       r30, 0
	lwz      r4, stageList__4Game@sda21(r13)
	lhz      r31, 0x100(r4)
	b        lbl_801E92E0

lbl_801E92C0:
	lwz      r0, 0xe4(r27)
	add      r28, r0, r30
	mr       r3, r28
	bl       reset__8BitFlagsFv
	addi     r3, r28, 8
	bl       reset__8BitFlagsFv
	addi     r30, r30, 0x10
	addi     r29, r29, 1

lbl_801E92E0:
	cmpw     r29, r31
	blt      lbl_801E92C0
	lmw      r27, 0xc(r1)
	lwz      r0, 0x24(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E92FC
 * Size:	00006C
 */
void PlayData::initCourses(bool type)
{
	if (type) {
		for (int i = 0; i < stageList->mCourseCount; i++) {
			mBitfieldPerCourse[i] = 3;
		}
	} else {
		for (int i = 0; i < stageList->mCourseCount; i++) {
			mBitfieldPerCourse[i] = 0;
		}
	}
	mBitfieldPerCourse[0] = 3; // valley of repose always unlocked
	                           /*
	                           clrlwi.  r0, r4, 0x18
	                           beq      lbl_801E9330
	                           li       r6, 0
	                           li       r5, 3
	                           b        lbl_801E931C
	                       
	                       lbl_801E9310:
	                           lwz      r4, 0xd8(r3)
	                           stbx     r5, r4, r6
	                           addi     r6, r6, 1
	                       
	                       lbl_801E931C:
	                           lwz      r4, stageList__4Game@sda21(r13)
	                           lhz      r0, 0x100(r4)
	                           cmpw     r6, r0
	                           blt      lbl_801E9310
	                           blr
	                       
	                       lbl_801E9330:
	                           li       r6, 0
	                           li       r5, 0
	                           b        lbl_801E9348
	                       
	                       lbl_801E933C:
	                           lwz      r4, 0xd8(r3)
	                           stbx     r5, r4, r6
	                           addi     r6, r6, 1
	                       
	                       lbl_801E9348:
	                           lwz      r4, stageList__4Game@sda21(r13)
	                           lhz      r0, 0x100(r4)
	                           cmpw     r6, r0
	                           blt      lbl_801E933C
	                           lwz      r3, 0xd8(r3)
	                           li       r0, 3
	                           stb      r0, 0(r3)
	                           blr
	                           */
}

/*
 * --INFO--
 * Address:	801E9368
 * Size:	000094
 */
void PlayData::openCourse(int index)
{
	bool isValidIndex = false;
	if (0 <= index && index < stageList->mCourseCount) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1905, isValidIndex);
	if (!courseOpen(index)) {
		mBitfieldPerCourse[index] = PDCF_Open;
	}
}

/*
 * --INFO--
 * Address:	801E93FC
 * Size:	000084
 */
void PlayData::visitCourse(int index)
{
	bool isValidIndex = false;
	if (0 <= index && index < stageList->mCourseCount) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1918, isValidIndex);
	mBitfieldPerCourse[index] |= PDCF_Visited;
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r4, r4
	li       r4, 0
	stw      r30, 8(r1)
	mr       r30, r3
	blt      lbl_801E9434
	lwz      r3, stageList__4Game@sda21(r13)
	lhz      r0, 0x100(r3)
	cmpw     r31, r0
	bge      lbl_801E9434
	li       r4, 1

lbl_801E9434:
	clrlwi.  r0, r4, 0x18
	bne      lbl_801E9458
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480E60@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x77e
	addi     r5, r5, lbl_80480E60@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E9458:
	lwz      r3, 0xd8(r30)
	lbzx     r0, r3, r31
	ori      r0, r0, 4
	stbx     r0, r3, r31
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

bool PlayData::closeCourse(int) { }

/*
 * --INFO--
 * Address:	801E9480
 * Size:	000080
 */
bool PlayData::courseOpen(int index)
{
	bool isValidIndex = false;
	if (0 <= index && index < stageList->mCourseCount) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1930, isValidIndex);
	return (mBitfieldPerCourse[index] & PDCF_Open);
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r4, r4
	li       r4, 0
	stw      r30, 8(r1)
	mr       r30, r3
	blt      lbl_801E94B8
	lwz      r3, stageList__4Game@sda21(r13)
	lhz      r0, 0x100(r3)
	cmpw     r31, r0
	bge      lbl_801E94B8
	li       r4, 1

lbl_801E94B8:
	clrlwi.  r0, r4, 0x18
	bne      lbl_801E94DC
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480E60@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x78a
	addi     r5, r5, lbl_80480E60@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E94DC:
	lwz      r3, 0xd8(r30)
	lbzx     r0, r3, r31
	lwz      r31, 0xc(r1)
	clrlwi   r3, r0, 0x1f
	lwz      r0, 0x14(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E9500
 * Size:	0000E4
 */
bool PlayData::courseJustOpen(int index)
{
	bool isValidIndex = false;
	if (0 <= index && index < stageList->mCourseCount) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1936, isValidIndex);

	isValidIndex = false;
	if (0 <= index && index < stageList->mCourseCount) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1930, isValidIndex);

	if (!(mBitfieldPerCourse[index] & PDCF_Open)) {
		return false;
	} else {
		mBitfieldPerCourse[index] |= 2;
		return (mBitfieldPerCourse[index] & PDCF_Unknown2);
	}
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r4, r4
	li       r4, 0
	stw      r30, 8(r1)
	mr       r30, r3
	blt      lbl_801E9538
	lwz      r3, stageList__4Game@sda21(r13)
	lhz      r0, 0x100(r3)
	cmpw     r31, r0
	bge      lbl_801E9538
	li       r4, 1

lbl_801E9538:
	clrlwi.  r0, r4, 0x18
	bne      lbl_801E955C
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480E60@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x790
	addi     r5, r5, lbl_80480E60@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E955C:
	cmpwi    r31, 0
	li       r4, 0
	blt      lbl_801E957C
	lwz      r3, stageList__4Game@sda21(r13)
	lhz      r0, 0x100(r3)
	cmpw     r31, r0
	bge      lbl_801E957C
	li       r4, 1

lbl_801E957C:
	clrlwi.  r0, r4, 0x18
	bne      lbl_801E95A0
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480E60@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x78a
	addi     r5, r5, lbl_80480E60@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E95A0:
	lwz      r4, 0xd8(r30)
	lbzx     r3, r4, r31
	clrlwi.  r0, r3, 0x1f
	bne      lbl_801E95B8
	li       r3, 0
	b        lbl_801E95CC

lbl_801E95B8:
	rlwinm   r0, r3, 0, 0x1e, 0x1e
	ori      r3, r3, 2
	cntlzw   r0, r0
	stbx     r3, r4, r31
	srwi     r3, r0, 5

lbl_801E95CC:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E95E4
 * Size:	0000DC
 */
bool PlayData::courseFirstTime(int index)
{
	bool isValidIndex = false;
	if (0 <= index && index < stageList->mCourseCount) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1955, isValidIndex);

	isValidIndex = false;
	if (0 <= index && index < stageList->mCourseCount) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1930, isValidIndex);

	if (mBitfieldPerCourse[index] & PDCF_Open) {
		return (mBitfieldPerCourse[index] & PDCF_Unknown2) != 0;
	} else {
		return false;
	}
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	stw      r0, 0x14(r1)
	stw      r31, 0xc(r1)
	or.      r31, r4, r4
	li       r4, 0
	stw      r30, 8(r1)
	mr       r30, r3
	blt      lbl_801E961C
	lwz      r3, stageList__4Game@sda21(r13)
	lhz      r0, 0x100(r3)
	cmpw     r31, r0
	bge      lbl_801E961C
	li       r4, 1

lbl_801E961C:
	clrlwi.  r0, r4, 0x18
	bne      lbl_801E9640
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480E60@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x7a3
	addi     r5, r5, lbl_80480E60@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E9640:
	cmpwi    r31, 0
	li       r4, 0
	blt      lbl_801E9660
	lwz      r3, stageList__4Game@sda21(r13)
	lhz      r0, 0x100(r3)
	cmpw     r31, r0
	bge      lbl_801E9660
	li       r4, 1

lbl_801E9660:
	clrlwi.  r0, r4, 0x18
	bne      lbl_801E9684
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480E60@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x78a
	addi     r5, r5, lbl_80480E60@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E9684:
	lwz      r3, 0xd8(r30)
	lbzx     r3, r3, r31
	clrlwi.  r0, r3, 0x1f
	bne      lbl_801E969C
	li       r3, 0
	b        lbl_801E96A8

lbl_801E969C:
	rlwinm   r0, r3, 0, 0x1e, 0x1e
	cntlzw   r0, r0
	srwi     r3, r0, 5

lbl_801E96A8:
	lwz      r0, 0x14(r1)
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E96C0
 * Size:	000080
 */
bool PlayData::courseVisited(int index)
{
	bool isValidIndex = false;
	if (0 <= index && index < stageList->mCourseCount) {
		isValidIndex = true;
	}
	P2ASSERTLINE(1965, isValidIndex);
	return mBitfieldPerCourse[index] & PDCF_Visited;
}

/*
 * --INFO--
 * Address:	801E9740
 * Size:	000084
 */
CaveSaveData::CaveSaveData()
    : mCurrentCaveID()
    , mCavePikis()
    , _30()
{
	mCavePikis.clear();
	mTime      = 0.0f;
	mIsInCave  = false;
	mCourseIdx = -1;
	mCurrentCaveID.setID('none');
	mIsWaterwraithAlive = 1;
	mWaterwraithTimer   = 0.0f;
}

/*
 * --INFO--
 * Address:	801E97C4
 * Size:	000068
 */
void CaveSaveData::clear()
{
	mCavePikis.clear();
	mTime      = 0.0f;
	mIsInCave  = false;
	mCourseIdx = -1;
	mCurrentCaveID.setID('none');
	mIsWaterwraithAlive = 1;
	mWaterwraithTimer   = 0.0f;
}

/*
 * --INFO--
 * Address:	801E982C
 * Size:	000194
 */
bool PlayData::doneWorldMapEffect()
{
	s32 courseCount = stageList->mCourseCount;
	mPokoCountOld   = mPokoCount;
	for (int i = 0; i < courseCount; i++) {
		mGroundOtakaraCollectedOld[i] = mGroundOtakaraCollected[i];
	}

	for (int i = 0; i < courseCount; i++) {
		CaveOtakara* datanew = (CaveOtakara*)mCaveOtakara->mCaveCount + i;
		CaveOtakara* data    = (CaveOtakara*)mCaveOtakaraOld->mCaveCount + i;
		data->mCaveCount     = datanew->mCaveCount;
		// s8 caveCount = data->mCaveCount;
		for (int j = 0; j < datanew->mCaveCount; j++) {
			data->mOtakaraCountsOld[j] = datanew->mOtakaraCountsOld[j];
			data->_08[j]               = datanew->_08[j];
		}
	}
	/*
	stwu     r1, -0x10(r1)
	li       r5, 0
	stw      r31, 0xc(r1)
	stw      r30, 8(r1)
	lwz      r4, stageList__4Game@sda21(r13)
	lwz      r0, 0xe8(r3)
	lhz      r4, 0x100(r4)
	cmpwi    r4, 0
	stw      r0, 0xfc(r3)
	ble      lbl_801E9940
	cmpwi    r4, 8
	addi     r6, r4, -8
	ble      lbl_801E9918
	addi     r0, r6, 7
	srwi     r0, r0, 3
	mtctr    r0
	cmpwi    r6, 0
	ble      lbl_801E9918

lbl_801E9874:
	lwz      r7, 0xdc(r3)
	addi     r31, r5, 1
	lwz      r6, 0xf4(r3)
	addi     r12, r5, 2
	lbzx     r0, r7, r5
	addi     r11, r5, 3
	addi     r10, r5, 4
	addi     r9, r5, 5
	stbx     r0, r6, r5
	addi     r8, r5, 6
	addi     r7, r5, 7
	addi     r5, r5, 8
	lwz      r30, 0xdc(r3)
	lwz      r6, 0xf4(r3)
	lbzx     r0, r30, r31
	stbx     r0, r6, r31
	lwz      r31, 0xdc(r3)
	lwz      r6, 0xf4(r3)
	lbzx     r0, r31, r12
	stbx     r0, r6, r12
	lwz      r12, 0xdc(r3)
	lwz      r6, 0xf4(r3)
	lbzx     r0, r12, r11
	stbx     r0, r6, r11
	lwz      r11, 0xdc(r3)
	lwz      r6, 0xf4(r3)
	lbzx     r0, r11, r10
	stbx     r0, r6, r10
	lwz      r10, 0xdc(r3)
	lwz      r6, 0xf4(r3)
	lbzx     r0, r10, r9
	stbx     r0, r6, r9
	lwz      r9, 0xdc(r3)
	lwz      r6, 0xf4(r3)
	lbzx     r0, r9, r8
	stbx     r0, r6, r8
	lwz      r8, 0xdc(r3)
	lwz      r6, 0xf4(r3)
	lbzx     r0, r8, r7
	stbx     r0, r6, r7
	bdnz     lbl_801E9874

lbl_801E9918:
	subf     r0, r5, r4
	mtctr    r0
	cmpw     r5, r4
	bge      lbl_801E9940

lbl_801E9928:
	lwz      r7, 0xdc(r3)
	lwz      r6, 0xf4(r3)
	lbzx     r0, r7, r5
	stbx     r0, r6, r5
	addi     r5, r5, 1
	bdnz     lbl_801E9928

lbl_801E9940:
	li       r7, 0
	mtctr    r4
	cmpwi    r4, 0
	ble      lbl_801E99B0

lbl_801E9950:
	lwz      r0, 0xe0(r3)
	li       r10, 0
	lwz      r4, 0xf8(r3)
	li       r6, 0
	add      r8, r0, r7
	lbz      r0, 0(r8)
	add      r9, r4, r7
	stb      r0, 0(r9)
	b        lbl_801E999C

lbl_801E9974:
	lwz      r5, 4(r8)
	lwz      r4, 4(r9)
	lbzx     r0, r5, r10
	stbx     r0, r4, r10
	addi     r10, r10, 1
	lwz      r5, 8(r8)
	lwz      r4, 8(r9)
	lwzx     r0, r5, r6
	stwx     r0, r4, r6
	addi     r6, r6, 4

lbl_801E999C:
	lbz      r0, 0(r8)
	cmpw     r10, r0
	blt      lbl_801E9974
	addi     r7, r7, 0xc
	bdnz     lbl_801E9950

lbl_801E99B0:
	lwz      r31, 0xc(r1)
	lwz      r30, 8(r1)
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E99C0
 * Size:	00007C
 */
int PlayData::getGroundOtakaraNum_Old(int index)
{
	bool isValidIndex = false;
	if (0 <= index && index < stageList->mCourseCount) {
		isValidIndex = true;
	}
	P2ASSERTLINE(2040, isValidIndex);
	return mGroundOtakaraCollectedOld[index];
}

/*
 * --INFO--
 * Address:	801E9A3C
 * Size:	0000B8
 */
int PlayData::getOtakaraNum_Course_CaveID_Old(int courseIndex, ID32& caveID)
{
	CourseInfo* info = stageList->getCourseInfo(courseIndex);
	if (info) {
		CaveOtakara* ota = mCaveOtakaraOld;
		int id           = info->getCaveIndex_FromID(caveID);
		if (id != -1) {
			if (id >= 0 && id < ota[courseIndex].mCaveCount) {
				return ota[courseIndex].mOtakaraCountsOld[id];
			}
		}
		return -1;
	} else {
		JUT_PANICLINE(2057, "course index error:%d (getOtakaraNum_*)\n", courseIndex);
	}
	return -1;
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	mr       r31, r5
	stw      r30, 0x18(r1)
	mr       r30, r4
	stw      r29, 0x14(r1)
	mr       r29, r3
	lwz      r3, stageList__4Game@sda21(r13)
	bl       getCourseInfo__Q24Game6StagesFi
	cmplwi   r3, 0
	beq      lbl_801E9AB4
	mulli    r0, r30, 0xc
	lwz      r5, 0xf8(r29)
	mr       r4, r31
	add      r31, r5, r0
	bl       getCaveIndex_FromID__Q24Game10CourseInfoFR4ID32
	cmpwi    r3, -1
	beq      lbl_801E9AD4
	cmpwi    r3, 0
	blt      lbl_801E9AAC
	lbz      r0, 0(r31)
	cmpw     r3, r0
	bge      lbl_801E9AAC
	lwz      r4, 4(r31)
	lbzx     r3, r4, r3
	b        lbl_801E9AD8

lbl_801E9AAC:
	li       r3, -1
	b        lbl_801E9AD8

lbl_801E9AB4:
	lis      r3, lbl_80480E4C@ha
	lis      r4, lbl_80480ED0@ha
	addi     r5, r4, lbl_80480ED0@l
	mr       r6, r30
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x809
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E9AD4:
	li       r3, -1

lbl_801E9AD8:
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E9AF4
 * Size:	000008
 */
int PlayData::getMoney_Old() { return mPokoCountOld; }

/*
 * --INFO--
 * Address:	801E9AFC
 * Size:	0000A4
 */
bool PlayData::isCaveFirstTime_Old(int courseIndex, ID32& caveID)
{
	CourseInfo* info = Game::stageList->getCourseInfo(courseIndex);
	if (info) {
		CaveOtakara* otakara = mCaveOtakaraOld;
		int caveIndex        = info->getCaveIndex_FromID(caveID);
		if (caveIndex != -1) {
			if (0 <= caveIndex && caveIndex < otakara[courseIndex].mCaveCount) {
				return otakara[courseIndex]._08[caveIndex] == 0;
			}
			return false;
		}
	}
	return false;
	/*
	stwu     r1, -0x20(r1)
	mflr     r0
	stw      r0, 0x24(r1)
	stw      r31, 0x1c(r1)
	mr       r31, r5
	stw      r30, 0x18(r1)
	mr       r30, r4
	stw      r29, 0x14(r1)
	mr       r29, r3
	lwz      r3, stageList__4Game@sda21(r13)
	bl       getCourseInfo__Q24Game6StagesFi
	cmplwi   r3, 0
	beq      lbl_801E9B80
	mulli    r0, r30, 0xc
	lwz      r5, 0xf8(r29)
	mr       r4, r31
	add      r31, r5, r0
	bl       getCaveIndex_FromID__Q24Game10CourseInfoFR4ID32
	cmpwi    r3, -1
	beq      lbl_801E9B80
	cmpwi    r3, 0
	blt      lbl_801E9B78
	lbz      r0, 0(r31)
	cmpw     r3, r0
	bge      lbl_801E9B78
	lwz      r4, 8(r31)
	slwi     r0, r3, 2
	lwzx     r0, r4, r0
	cntlzw   r0, r0
	srwi     r3, r0, 5
	b        lbl_801E9B84

lbl_801E9B78:
	li       r3, 0
	b        lbl_801E9B84

lbl_801E9B80:
	li       r3, 0

lbl_801E9B84:
	lwz      r0, 0x24(r1)
	lwz      r31, 0x1c(r1)
	lwz      r30, 0x18(r1)
	lwz      r29, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x20
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E9BA0
 * Size:	0000D4
 */
void PlayData::read_CaveOtakara_Old(Stream& ram)
{
	int max = stageList->mCourseCount;
	for (int i = 0; i < max; i++) {
		CaveOtakara ota = mCaveOtakaraOld[i];
		u8 oldcount     = ota.mCaveCount;
		ota.mCaveCount  = ram.readByte();
		JUT_ASSERTLINE(1797, ota.mCaveCount == oldcount, "�Z�[�u�����Ƃ��Ɠ��A�̐��������܂���\n");

		for (int j = 0; j < ota.mCaveCount; j++) {
			ota.mOtakaraCountsOld[j] = ram.readByte();
			ota._08[j]               = ram.readByte();
		}
	}
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	stmw     r24, 0x10(r1)
	mr       r29, r3
	mr       r30, r4
	li       r31, 0
	li       r25, 0
	lwz      r5, stageList__4Game@sda21(r13)
	lhz      r27, 0x100(r5)
	b        lbl_801E9C58

lbl_801E9BCC:
	lwz      r0, 0xf8(r29)
	mr       r3, r30
	add      r24, r0, r25
	lbz      r28, 0(r24)
	bl       readByte__6StreamFv
	stb      r3, 0(r24)
	lbz      r0, 0(r24)
	cmplw    r28, r0
	beq      lbl_801E9C0C
	lis      r3, lbl_80480E4C@ha
	lis      r5, lbl_80480F30@ha
	addi     r3, r3, lbl_80480E4C@l
	li       r4, 0x705
	addi     r5, r5, lbl_80480F30@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_801E9C0C:
	li       r28, 0
	mr       r26, r28
	b        lbl_801E9C44

lbl_801E9C18:
	mr       r3, r30
	bl       readByte__6StreamFv
	lwz      r4, 4(r24)
	stbx     r3, r4, r28
	mr       r3, r30
	bl       readByte__6StreamFv
	lwz      r4, 8(r24)
	clrlwi   r0, r3, 0x18
	addi     r28, r28, 1
	stwx     r0, r4, r26
	addi     r26, r26, 4

lbl_801E9C44:
	lbz      r0, 0(r24)
	cmpw     r28, r0
	blt      lbl_801E9C18
	addi     r25, r25, 0xc
	addi     r31, r31, 1

lbl_801E9C58:
	cmpw     r31, r27
	blt      lbl_801E9BCC
	lmw      r24, 0x10(r1)
	lwz      r0, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E9C74
 * Size:	000118
 */
void PlayData::write_CaveOtakara_Old(Stream& ram)
{
	ram.textBeginGroup("�����A���(Old)��");
	int max = stageList->mCourseCount;
	for (int i = 0; i < max; i++) {
		CaveOtakara ota = mCaveOtakaraOld[i];
		ram.textWriteTab(ram.mTabCount);
		ram.writeByte(ota.mCaveCount);
		ram.textWriteText("# cave��\r\n");

		for (int j = 0; j < ota.mCaveCount; j++) {
			ram.textWriteTab(ram.mTabCount);
			ram.writeByte(ota.mOtakaraCountsOld[j]);
			ram.textWriteText("# ��\r\n"); // translates to quantity

			ram.textWriteTab(ram.mTabCount);
			ram.writeByte(ota._08[j]);
			ram.textWriteText("# ���\r\n"); // translates to situation
		}
	}
	ram.textEndGroup();
	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	lis      r5, lbl_80480E40@ha
	stw      r0, 0x34(r1)
	stmw     r23, 0xc(r1)
	mr       r24, r4
	addi     r31, r5, lbl_80480E40@l
	mr       r23, r3
	mr       r3, r24
	addi     r4, r31, 0x140
	bl       textBeginGroup__6StreamFPc
	lwz      r3, stageList__4Game@sda21(r13)
	li       r26, 0
	li       r27, 0
	lhz      r29, 0x100(r3)
	b        lbl_801E9D68

lbl_801E9CB4:
	lwz      r0, 0xf8(r23)
	mr       r3, r24
	lwz      r4, 0x414(r24)
	add      r25, r0, r27
	bl       textWriteTab__6StreamFi
	lbz      r4, 0(r25)
	mr       r3, r24
	bl       writeByte__6StreamFUc
	mr       r3, r24
	addi     r4, r31, 0xcc
	crclr    6
	bl       textWriteText__6StreamFPce
	li       r30, 0
	mr       r28, r30
	b        lbl_801E9D54

lbl_801E9CF0:
	lwz      r4, 0x414(r24)
	mr       r3, r24
	bl       textWriteTab__6StreamFi
	lwz      r4, 4(r25)
	mr       r3, r24
	lbzx     r4, r4, r30
	bl       writeByte__6StreamFUc
	mr       r3, r24
	addi     r4, r31, 0xd8
	crclr    6
	bl       textWriteText__6StreamFPce
	lwz      r4, 0x414(r24)
	mr       r3, r24
	bl       textWriteTab__6StreamFi
	lwz      r4, 8(r25)
	mr       r3, r24
	lwzx     r0, r4, r28
	clrlwi   r4, r0, 0x18
	bl       writeByte__6StreamFUc
	mr       r3, r24
	addi     r4, r31, 0xe4
	crclr    6
	bl       textWriteText__6StreamFPce
	addi     r28, r28, 4
	addi     r30, r30, 1

lbl_801E9D54:
	lbz      r0, 0(r25)
	cmpw     r30, r0
	blt      lbl_801E9CF0
	addi     r27, r27, 0xc
	addi     r26, r26, 1

lbl_801E9D68:
	cmpw     r26, r29
	blt      lbl_801E9CB4
	mr       r3, r24
	bl       textEndGroup__6StreamFv
	lmw      r23, 0xc(r1)
	lwz      r0, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E9D8C
 * Size:	000078
 */
int PlayData::getPikminCount_Today(int pikminColor)
{
	bool isValidIndex = false;
	if (0 <= pikminColor && pikminColor < 6) {
		isValidIndex = true;
	}
	P2ASSERTLINE(2114, isValidIndex);
	return mPikminToday[pikminColor];
}

/*
 * --INFO--
 * Address:	801E9E04
 * Size:	000078
 */
int PlayData::getPikminCount_Yesterday(int pikminColor)
{
	bool isValidIndex = false;
	if (0 <= pikminColor && pikminColor < 6) {
		isValidIndex = true;
	}
	P2ASSERTLINE(2121, isValidIndex);
	return mPikminYesterday[pikminColor];
}

/*
 * --INFO--
 * Address:	801E9E7C
 * Size:	000108
 */
void PlayData::setPikminCounts_Today()
{
	BirthMgr::account_today_adjust();
	BirthMgr::account_today();

	GameStat::PikiCounter* cont1 = &GameStat::zikatuPikis;
	GameStat::PikiCounter* cont2 = &GameStat::alivePikis;

	for (int i = 0; i < 6; i++) {
		if (i == 5) {
			int pikiheads = generatorCache->getTotalMePikmins();
			int pikis     = GameStat::alivePikis;
			int pikidiff  = pikis - GameStat::zikatuPikis;
			if (pikidiff < 0)
				pikidiff = 0;
			int pikis3      = mPikiContainer.getTotalSum();
			mPikminToday[i] = pikiheads + pikidiff + pikis3;
		} else {
			int pikiheads = generatorCache->getColorMePikmins(i);
			int pikis     = cont2->mPikiCounts[0] - cont1->mPikiCounts[0];
			if (pikis < 0)
				pikis = 0;
			int pikis3      = mPikiContainer.getColorSum(i);
			mPikminToday[i] = pikiheads + pikis + pikis3;
		}
		cont1 = (GameStat::PikiCounter*)cont1->mPikiCounts;
		cont2 = (GameStat::PikiCounter*)cont2->mPikiCounts;
	}

	/*
	stwu     r1, -0x30(r1)
	mflr     r0
	stw      r0, 0x34(r1)
	stmw     r25, 0x14(r1)
	mr       r27, r3
	bl       account_today_adjust__Q24Game8BirthMgrFv
	bl       account_today__Q24Game8BirthMgrFv
	lis      r4, zikatuPikis__Q24Game8GameStat@ha
	lis      r3, alivePikis__Q24Game8GameStat@ha
	addi     r30, r4, zikatuPikis__Q24Game8GameStat@l
	mr       r31, r27
	addi     r29, r3, alivePikis__Q24Game8GameStat@l
	li       r28, 0

lbl_801E9EB0:
	cmpwi    r28, 5
	bne      lbl_801E9F1C
	lwz      r3, generatorCache__4Game@sda21(r13)
	bl       getTotalMePikmins__Q24Game14GeneratorCacheFv
	lis      r4, alivePikis__Q24Game8GameStat@ha
	mr       r25, r3
	addi     r3, r4, alivePikis__Q24Game8GameStat@l
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	lis      r4, zikatuPikis__Q24Game8GameStat@ha
	mr       r26, r3
	addi     r3, r4, zikatuPikis__Q24Game8GameStat@l
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	subf.    r26, r3, r26
	bge      lbl_801E9F04
	li       r26, 0

lbl_801E9F04:
	addi     r3, r27, 0xa8
	bl       getTotalSum__Q24Game13PikiContainerFv
	add      r0, r26, r3
	add      r0, r25, r0
	stw      r0, 0x118(r31)
	b        lbl_801E9F58

lbl_801E9F1C:
	lwz      r3, generatorCache__4Game@sda21(r13)
	mr       r4, r28
	bl       getColorMePikmins__Q24Game14GeneratorCacheFi
	lwz      r4, 4(r30)
	mr       r26, r3
	lwz      r0, 4(r29)
	subf.    r25, r4, r0
	bge      lbl_801E9F40
	li       r25, 0

lbl_801E9F40:
	mr       r4, r28
	addi     r3, r27, 0xa8
	bl       getColorSum__Q24Game13PikiContainerFi
	add      r0, r25, r3
	add      r0, r26, r0
	stw      r0, 0x118(r31)

lbl_801E9F58:
	addi     r28, r28, 1
	addi     r30, r30, 4
	cmpwi    r28, 6
	addi     r29, r29, 4
	addi     r31, r31, 4
	blt      lbl_801E9EB0
	lmw      r25, 0x14(r1)
	lwz      r0, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x30
	blr
	*/
}

/*
 * --INFO--
 * Address:	801E9F84
 * Size:	000034
 */
void PlayData::setPikminCounts_Yesterday()
{
	for (int i = 0; i < 6; i++) {
		mPikminYesterday[i] = mPikminToday[i];
	}
}
} // namespace Game
