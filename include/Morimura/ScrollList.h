#ifndef _MORIMURA_SCROLLLIST_H
#define _MORIMURA_SCROLLLIST_H

#include "Morimura/Bases.h"

namespace Morimura {
struct TScaleUpCounter;

struct TIndexGroup {
	TIndexGroup();

	void downIndex();
	void upIndex();

	f32 _00;     // _00
	f32 _04;     // _04
	f32 _08;     // _08
	f32 _0C;     // _0C
	f32 _10;     // _10
	f32 _14;     // _14
	f32 _18;     // _18
	f32 _1C;     // _1C
	int _20;     // _20, unknown
	u8 _24;      // _24
	f32 _28;     // _28
	u8 _2C[0x4]; // _2C, unknown
};

struct TIconInfo {
	u8 _00[0x8];                      // _00, unknown
	TScaleUpCounter* mScaleUpCounter; // _08
	J2DPane* _0C;                     // _0C
	J2DPane* _10;                     // _10
	og::Screen::ScaleMgr* mScaleMgr;  // _14
	u8 _18[0x4];                      // _18, unknown
};

struct TIndexPane {
	TIndexPane(P2DScreen::Mgr_tuning* scrn, u64 tag)
	{
		J2DPane* pane = scrn->search(tag);
		_00           = 0;
		mPane         = pane;
		mPane2        = nullptr;
		_0C           = 0;
		_10           = 0;
		_18           = 0.0f;
		mIconInfos    = nullptr;
		_24           = nullptr;
		_1C           = mPane->mOffset.y;
	}

	void setIndex(int);
	int getIndex();

	int _00;                // _00
	J2DPane* mPane;         // _04
	J2DPane* mPane2;        // _08
	int _0C;                // _0C
	int _10;                // _10
	int _14;                // _14
	f32 _18;                // _18
	f32 _1C;                // _1C
	TIconInfo** mIconInfos; // _20, array of ptrs?
	u32 _24;                // _24, TZukanBase* according to ghidra, unsure on that?
};

struct TListScreen : public TScreenBase {
	TListScreen(JKRArchive* arc, int id)
	    : TScreenBase(arc, id)
	{
	}
	virtual void create(const char*, u32); // _08

	// _00     = VTBL
	// _00-_18 = TScreenBase
};

struct TScrollList : public TTestBase {
	TScrollList(char*);

	virtual ~TScrollList() { }                       // _08 (weak)
	virtual bool isListShow(int) { return true; }    // _7C (weak)
	virtual void paneInit()       = 0;               // _80
	virtual void changePaneInfo() = 0;               // _84
	virtual int getIdMax()        = 0;               // _88
	virtual u64 getNameID(int)    = 0;               // _8C
	virtual void getUpdateIndex(int&, bool);         // _90
	virtual void setShortenIndex(int, int, bool) { } // _94 (weak)
	virtual void doUpdateIn() { }                    // _98 (weak)
	virtual void doUpdateOut() { }                   // _9C (weak)
	virtual void changeTextTevBlock(int) { }         // _A0 (weak)
	virtual void updateIndex(bool);                  // _A4
	virtual void setPaneCharacter(int) { }           // _A8 (weak)

	bool updateList();
	void changeIndex();

	// _00     = VTBL1
	// _18     = VTBL2
	// _00-_78 = TTestBase
	JKRArchive* mArchive;        // _78
	TScreenBase* mMainScreen;    // _7C
	Controller* mController;     // _80
	TIndexGroup* mIndexGroup;    // _84
	TIndexPane** mIndexPaneList; // _88, array of ptrs?
	u8 _8C;                      // _8C
	s16 mMaxSelect;              // _8E
	int _90;                     // _90
	int mCurrentSelect;          // _94
	int _98;                     // _98
	int _9C;                     // _9C
	f32 _A0;                     // _A0
	f32 _A4;                     // _A4
	f32 _A8;                     // _A8
	f32 _AC;                     // _AC
	u8 _B0;                      // _B0
};
} // namespace Morimura

#endif
