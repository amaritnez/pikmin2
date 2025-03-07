#ifndef _HORIZONALSPLITTER_H
#define _HORIZONALSPLITTER_H

/*
    __vt__17HorizonalSplitter:
    .4byte 0
    .4byte 0
    .4byte split2__17HorizonalSplitterFf
    .4byte split4__8SplitterFff
*/

struct Splitter {
	virtual void split2(float);        // _08
	virtual void split4(float, float); // _0C (weak)
};

struct HorizonalSplitter : public Splitter {
	virtual void split2(float); // _08

	HorizonalSplitter(Graphics*);
};

#endif
