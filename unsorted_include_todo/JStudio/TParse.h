#ifndef _JSTUDIO_TPARSE_H
#define _JSTUDIO_TPARSE_H

/*
    __vt__Q27JStudio6TParse:
    .4byte 0
    .4byte 0
    .4byte __dt__Q27JStudio6TParseFv
    .4byte parseHeader_next__Q37JStudio3stb6TParseFPPCvPUlUl
    .4byte parseBlock_next__Q37JStudio3stb6TParseFPPCvPUlUl
    .4byte parseHeader__Q27JStudio6TParseFRCQ47JStudio3stb4data14TParse_THeaderUl
    .4byte parseBlock_block__Q27JStudio6TParseFRCQ47JStudio3stb4data13TParse_TBlockUl
    .4byte parseBlock_object__Q37JStudio3stb6TParseFRCQ47JStudio3stb4data20TParse_TBlock_objectUl
*/

namespace JStudio {
namespace stb {
struct TParse {
	virtual ~TParse();                                                                // _08
	virtual void parseHeader_next(const void**, unsigned long*, unsigned long);       // _0C
	virtual void parseBlock_next(const void**, unsigned long*, unsigned long);        // _10
	virtual void parseHeader(const stb::data::TParse_THeader&, unsigned long);        // _14
	virtual void parseBlock_block(const stb::data::TParse_TBlock&, unsigned long);    // _18
	virtual void parseBlock_object(const data::TParse_TBlock_object&, unsigned long); // _1C
};
} // namespace stb
} // namespace JStudio

namespace JStudio {
struct TParse : public TParse {
	virtual ~TParse();                                                             // _08
	virtual void parseHeader(const stb::data::TParse_THeader&, unsigned long);     // _14
	virtual void parseBlock_block(const stb::data::TParse_TBlock&, unsigned long); // _18

	TParse(JStudio::TControl*);
	void parseBlock_block_fvb_(const JStudio::stb::data::TParse_TBlock&, unsigned long);
};
} // namespace JStudio

#endif
