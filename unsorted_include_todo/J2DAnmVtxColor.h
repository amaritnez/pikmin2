#ifndef _J2DANMVTXCOLOR_H
#define _J2DANMVTXCOLOR_H

struct J2DAnmBase {
	virtual void _00() = 0;                          // _00
	virtual void searchUpdateMaterialID(J2DScreen*); // _04

	// _00 VTBL
};

struct J2DAnmVtxColor : public J2DAnmBase {
	virtual ~J2DAnmVtxColor();                       // _00
	virtual void searchUpdateMaterialID(J2DScreen*); // _04
	virtual void getColor(unsigned char, unsigned short,
	                      _GXColor*) const; // _08

	// _00 VTBL
};

#endif
